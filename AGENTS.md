# AGENTS.md

This file documents how to maintain the organizers, volunteers, and sponsors content on the Containers Day site. For dev commands, build/deploy details, and general architecture, see `CLAUDE.md`.

After any change below, verify with `make serve` and check both the Spanish page and its `/en/...` counterpart.

## Organizers

Organizers are **hand-authored HTML cards**, not a data list — there is no array in `hugo.yaml` to edit. Everything lives in `themes/event/layouts/miscellaneous/organizers.html`, one `.organizer-card` block per person, rendered on `/organizers` (and `/en/organizers`).

### Add an organizer

1. Add a square headshot to `static/images/<slug>.jpg`.
2. In `themes/event/layouts/miscellaneous/organizers.html`, duplicate an existing `.organizer-card` block inside `.organizers-grid` and update:
   - `<img src="/images/<slug>.jpg" ... alt="<Full Name>">`
   - the `<h3 class="organizer-name">` text
   - `{{ T "cd_organizer_role_<slug>" }}` — pick a new, unique key
   - the social link `href` (LinkedIn and Instagram have dedicated hover styles; other networks fall back to the default icon style)
3. Add the matching `cd_organizer_role_<slug>` key to **both** `i18n/es.yaml` and `i18n/en.yaml` with the Spanish and English role text.

### Remove an organizer

1. Delete their `.organizer-card` block from `organizers.html`.
2. Delete the `cd_organizer_role_<slug>` key from both `i18n/es.yaml` and `i18n/en.yaml`.
3. Delete the now-unused photo from `static/images/` if it isn't reused elsewhere.

## Sponsors

Sponsors **are** pure data — `params.themes.event.sponsors` in `hugo.yaml`, a single top-level list shared by both languages. This drives the `/sponsors` page, the homepage sponsor carousel, and the logo strip at the bottom of `/organizers`.

### Add a sponsor

1. Add the logo file to `assets/logos/` (this is processed by Hugo's asset pipeline via `resources.Get` — **not** `static/logos/`, which is for unprocessed static assets).
2. Append an entry to `params.themes.event.sponsors`:
   ```yaml
   - logo: "logos/<file>.png"
     url: "https://sponsor-site-or-social-link/"
     name: "Sponsor Name"
     description: "One-line description shown with the logo."
     tier: "platinum" # platinum | gold | silver | community — must match a key in sponsorTiers
   ```
3. `community`-tier sponsors show only on `/sponsors` and in the `/organizers` footer strip. `platinum`/`gold`/`silver` sponsors also appear in the homepage carousel (`partials/sections/our-sponsors.html`).

### Remove a sponsor

Delete its entry from the `sponsors` array. Optionally delete the now-unused logo from `assets/logos/` if nothing else references it.

### Initiative partners (related, separate list)

`params.themes.event.initiativePartners` is a separate list for non-sponsor program partners (e.g. funding bodies, academic partners). Same add/remove process as sponsors, but entries only have `logo`, `url`, `name`, and an optional `wide: true` for a wider logo — no `tier` or `description`.

## Volunteers

Unlike organizers and sponsors, there is **no roster stored in the repo**. `/volunteers` (`content/volunteers.md` + `content/en/volunteers.md`, layout `volunteers`) just wraps a hero + intro paragraph around an embedded **Tally** form, rendered by `themes/event/layouts/miscellaneous/volunteers.html`.

The site has no backend or database (static Hugo build on GitHub Pages), so the actual form — fields, options, required/optional flags, and the conditional logic (e.g. "if you live in the DR, ask about Santiago; otherwise ask which country") — lives entirely on **Tally's side**, not in this repo. The embedded iframe just points at `params.themes.event.volunteersTallyFormId` (a Tally form ID) in `hugo.yaml`. Submissions land in the Tally dashboard for that form, and Tally also emails a copy to `params.themes.event.contactEmail` (`hola@containers.day`) on every submission (configured in the form's Settings → Notifications in Tally).

### Edit the form

- **Fields, options, conditional logic**: edit directly in the Tally dashboard for the form (`https://tally.so/r/<volunteersTallyFormId>`) — there is nothing to change in this repo for question content. Tally's own API (`api.tally.so`, Bearer token auth — see `https://developers.tally.so/api-reference/api-keys`) can also be scripted for bulk edits; the block/question schema is documented via its OpenAPI spec at `https://developers.tally.so/api-reference/openapi.json` (the human-readable docs pages are mostly stubs, the OpenAPI JSON has the real schema).
- **Swap in a different Tally form** (or point at a new one): update `volunteersTallyFormId` in `hugo.yaml` (`params.themes.event`) to the new form's ID. No template changes needed.
- **Embed styling/behavior**: `themes/event/layouts/miscellaneous/volunteers.html` — the iframe uses `alignLeft=1&hideTitle=1&transparentBackground=1&dynamicHeight=1` query params and the `https://tally.so/widgets/embed.js` loader script. See `https://developers.tally.so/widgets/embeds`.
- **Menu entry**: `hugo.yaml` → `menus.main` (`identifier: volunteers`) in both the `es` and `en` language blocks.
- **Notification email**: change the "self email" recipient in the Tally form's Settings → Notifications (or via the API's `settings.selfEmailTo`), not in this repo.

### If you'd rather not depend on Tally

Swap the iframe's `data-tally-src` for a different form service, or replace the whole block with a `mailto:`-based custom HTML form (fields built in this repo, no external dependency, but no dashboard/spreadsheet of applicants either) — see the git history of `volunteers.html` for a previous mailto-based version to start from.
