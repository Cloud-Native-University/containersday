#!/usr/bin/env bash
# Event-day Sessionize sync for containers.day.
#
# Sessionize has no webhooks, so the site can only be refreshed by polling and
# rebuilding. The repo's GitHub Actions `schedule` cron nominally runs every 15
# minutes, but GitHub throttles scheduled workflows: on 2026-08-22 the observed
# gaps were 25-56 minutes. This script drives the sync from a real cron instead,
# so the agenda on the wall matches the agenda on the site.
#
# It mirrors the workflow's `check` job: hash the two feeds the site renders and
# only dispatch a build when the digest moved. Unchanged schedule costs one curl.
#
# Retire this cron after the event (crontab -e) or leave it; the date guard below
# makes it a no-op on every other day.

set -uo pipefail

EVENT_DATE='2026-08-22'
REPO='Cloud-Native-University/containersday'
SESSIONIZE_ID='hnm5gsws'   # keep in sync with params.themes.event.sessionizeId
STATE="${HOME}/.cache/containersday-sessionize.digest"
LOG="${HOME}/.cache/containersday-sessionize.log"

log() { printf '%s %s\n' "$(date '+%F %T %z')" "$*" >> "$LOG"; }

[ "$(date '+%F')" = "$EVENT_DATE" ] || exit 0

mkdir -p "$(dirname "$STATE")"

base="https://sessionize.com/api/v2/${SESSIONIZE_ID}/view"
if ! payload=$(curl -fsS --max-time 30 "$base/GridSmart" && curl -fsS --max-time 30 "$base/all"); then
    log "FETCH FAILED - leaving the stored digest alone, will retry next tick"
    exit 1
fi

digest=$(printf '%s' "$payload" | sha256sum | cut -d' ' -f1)
previous=$(cat "$STATE" 2>/dev/null || echo '')

if [ "$digest" = "$previous" ]; then
    log "unchanged ($digest)"
    exit 0
fi

if gh workflow run 'Deploy Hugo site to Pages' --repo "$REPO" --ref main >>"$LOG" 2>&1; then
    # Recorded only after a successful dispatch, so a failed dispatch is retried
    # on the next tick instead of being suppressed by its own digest.
    printf '%s' "$digest" > "$STATE"
    log "CHANGED -> dispatched build ($digest)"
else
    log "DISPATCH FAILED ($digest) - will retry next tick"
    exit 1
fi
