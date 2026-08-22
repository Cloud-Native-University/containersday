#!/usr/bin/env bash
# Publish the current Sessionize schedule to the live site, and prove it landed.
#
# Sessions are fetched at build time, so "the site is stale" always means "no
# build has run since the edit". The poll in .github/workflows/hugo.yaml gets
# there eventually, but GitHub throttles scheduled workflows — 25 to 56 minute
# gaps on the 2026 event day — which is too slow when the schedule is moving
# during the event. This dispatches the build by hand and waits for it.
#
# A manual dispatch bypasses the workflow's digest check and deploys
# unconditionally, so this is safe to run when nothing has changed.
#
# Usage: make sync

set -euo pipefail

REPO='Cloud-Native-University/containersday'
WORKFLOW='Deploy Hugo site to Pages'
AGENDA_URL="${AGENDA_URL:-https://containers.day/agenda/}"
CONFIG="${CONFIG:-hugo.yaml}"

command -v gh >/dev/null || { echo "gh is not installed: https://cli.github.com"; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "gh is not authenticated - run: gh auth login"; exit 1; }

# The event id lives in hugo.yaml, so the feed this verifies against is always
# the feed the build reads.
sessionize_id=$(sed -n "s/^[[:space:]]*sessionizeId:[[:space:]]*'\{0,1\}\([^'#]*\)'\{0,1\}[[:space:]]*$/\1/p" "$CONFIG" | head -1 | tr -d '[:space:]')
[ -n "$sessionize_id" ] || { echo "could not read sessionizeId from $CONFIG"; exit 1; }

started=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
echo "==> Dispatching '$WORKFLOW'"
gh workflow run "$WORKFLOW" --repo "$REPO" --ref main

# The run does not exist the instant the dispatch returns, and older dispatches
# are sitting in the same list, so wait for one created after we asked.
echo "==> Waiting for the run to appear"
run_id=''
for _ in $(seq 1 30); do
    run_id=$(gh run list --repo "$REPO" --workflow "$WORKFLOW" --event workflow_dispatch --limit 1 \
        --json databaseId,createdAt --jq "map(select(.createdAt > \"$started\")) | .[0].databaseId // empty")
    [ -n "$run_id" ] && break
    sleep 2
done
[ -n "$run_id" ] || { echo "the run never showed up - check $WORKFLOW in the Actions tab"; exit 1; }

echo "==> Watching run $run_id"
gh run watch "$run_id" --repo "$REPO" --exit-status

# Pages serves the new deploy a moment after the workflow reports success.
echo "==> Verifying $AGENDA_URL against Sessionize"
sleep 10
feed=$(mktemp) && page=$(mktemp)
trap 'rm -f "$feed" "$page"' EXIT
curl -fsS "https://sessionize.com/api/v2/${sessionize_id}/view/GridSmart" -o "$feed"
curl -fsS -H 'Cache-Control: no-cache' "$AGENDA_URL" -o "$page"

python3 - "$feed" "$page" <<'PY'
import json, re, sys

feed, page = sys.argv[1], sys.argv[2]

# Every session in the grid, service sessions included: they are cards too.
grid = json.load(open(feed))
want = {str(s['id']): (s['startsAt'][11:16], s.get('room') or '', s['title'])
        for day in grid for room in day.get('rooms', []) for s in room.get('sessions', [])}

html = open(page, encoding='utf-8').read()
# Minified output leaves most attributes unquoted, so accept either form.
got = set(re.findall(r'data-session=(?:"([^"]*)"|([^\s>]+))', html))
got = {a or b for a, b in got}

missing = sorted(want.keys() - got)
extra = sorted(got - want.keys())

if not missing and not extra:
    print("    OK - all %d sessions from Sessionize are on the page" % len(want))
    sys.exit(0)

for i in missing:
    print("    MISSING from the site: %s %s - %s" % want[i])
for i in extra:
    print("    ON THE SITE but not in Sessionize: %s" % i)
print("\n    The deploy succeeded but the page does not match the feed. Sessionize")
print("    caches its API for ~4 minutes; if the edit was just made, clear the")
print("    cache on the event's Get Code page and run make sync again.")
sys.exit(1)
PY

echo "==> Live: $AGENDA_URL"
