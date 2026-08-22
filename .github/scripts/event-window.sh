#!/usr/bin/env bash
# Decide whether this trigger should poll Sessionize.
#
# The workflow carries two schedules: a year-round */15 poll and a dense */5 one
# that only earns its keep while the event is running. A cron expression cannot
# read site config, so the dense schedule fires all year and this script throws
# away the ticks that fall outside the event — which means the event date lives
# in exactly one place, `params.themes.event` in hugo.yaml, next to the dates the
# countdowns and the agenda already read. Move the event there and the dense poll
# window follows on its own.
#
# Reads:  hugo.yaml, plus EVENT_NAME / EVENT_SCHEDULE / DENSE_CRON from the job.
# Writes: `active` (true/false) to GITHUB_OUTPUT, and a line to the run summary.
#
# Fails open: if hugo.yaml cannot be read the tick proceeds and the run is
# annotated. A stale agenda during the event is a worse failure than a wasted
# build, so an unparseable config must never be able to stop the sync.

set -uo pipefail

out="${GITHUB_OUTPUT:-/dev/stdout}"
summary="${GITHUB_STEP_SUMMARY:-/dev/null}"
config="${CONFIG:-hugo.yaml}"

# One scalar out of the event block. The keys are unique in this file, so a
# targeted match beats pulling in a YAML parser for three strings.
cfg() {
    sed -n "s/^[[:space:]]*$1:[[:space:]]*'\{0,1\}\([^'#]*\)'\{0,1\}[[:space:]]*$/\1/p" "$config" \
        | head -1 | tr -d '[:space:]'
}

proceed() {
    echo "active=true" >> "$out"
    [ -n "${1:-}" ] && echo "$1" >> "$summary"
    exit 0
}

if [ ! -r "$config" ]; then
    echo "::warning::$config is not readable - polling anyway"
    proceed "Could not read \`$config\`, polled anyway."
fi

start=$(cfg startDate)
end=$(cfg endDate)
offset=$(cfg utcOffset)

if ! [[ "$start" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ && "$end" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    echo "::warning::could not read startDate/endDate from $config (got '$start'/'$end') - polling anyway"
    proceed "Could not read the event dates from \`$config\`, polled anyway."
fi

# POSIX TZ signs run backwards from ISO 8601 ones: the venue's -04:00 is UTC+4.
if [[ "$offset" =~ ^([+-])([0-9]{2}):([0-9]{2})$ ]]; then
    [ "${BASH_REMATCH[1]}" = "-" ] && flip='+' || flip='-'
    tz="UTC${flip}${BASH_REMATCH[2]}:${BASH_REMATCH[3]}"
else
    echo "::warning::could not read utcOffset from $config (got '$offset') - using UTC"
    tz='UTC'
fi

today=$(TZ="$tz" date +%F)

# ISO dates sort as strings, so no date arithmetic is needed here.
if [[ "$today" < "$start" || "$today" > "$end" ]]; then
    event_day=false
else
    event_day=true
fi

# Everything except an off-event-day dense tick does the work: pushes, manual
# dispatches and the year-round */15 poll are all unconditional.
if [ "${EVENT_NAME:-}" = 'schedule' ] && [ "${EVENT_SCHEDULE:-}" = "${DENSE_CRON:-}" ] && [ "$event_day" = false ]; then
    echo "active=false" >> "$out"
    echo "Event runs $start to $end; it is $today at the venue ($tz). Dense poll skipped." >> "$summary"
    exit 0
fi

if [ "$event_day" = true ]; then
    proceed "Event day ($today, venue $tz). Polling Sessionize."
fi
proceed "Event runs $start to $end; it is $today at the venue ($tz). Polling Sessionize."
