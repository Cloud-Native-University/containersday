# AGENTS.md

This file documents how to maintain the organizers, volunteers, and sponsors content on the Containers Day site. For dev commands, build/deploy details, and general architecture, see `CLAUDE.md`.

After any change below, verify with `make serve` and check both the Spanish page and its `/en/...` counterpart.

## Sessionize sync

Sessions, speakers and the whole agenda are fetched from the Sessionize API at **build time** — nothing about them lives in this repo. Editing the Schedule Builder does not change the published site until a build runs.

**Sessionize has no webhooks.** The API is read-only and pull-based, so polling is the only integration available; anything promising push notifications (see the deleted `webhook-receiver.js` in commit `4616952`) was built against a feature that does not exist.

`.github/workflows/hugo.yaml` polls every 15 minutes. A `check` job hashes the two feeds the site renders — `/view/GridSmart` (agenda) and `/view/all` (speaker pages) — and compares that digest against the payload of the last successful deploy via the Actions cache. Unchanged means no build and no deploy, so the schedule stays cheap.

Expect **15–30 minutes** from edit to live: GitHub's scheduler drifts under load, and Sessionize serves its own ~4 minute cache (`Cache-Control: max-age=240`) on top.

To publish immediately:
- **Actions tab → Deploy Hugo site to Pages → Run workflow**, or `gh workflow run "Deploy Hugo site to Pages"`. Manual runs and pushes bypass the digest check entirely.
- If the edit was *just* made, clear the Sessionize cache first from the event's Get Code page, otherwise the build may fetch the stale cached payload.

The `SESSIONIZE_ID` env var at the top of the workflow must stay in sync with `params.themes.event.sessionizeId` in `hugo.yaml`.

## Contrast rule (applies to every template and stylesheet)

**Light background → dark text. Dark background → light text.** Never leave it to inheritance.

`body` is dark navy (`--bg-dark`) with light text (`rgba(255,255,255,0.8)`), so *any* element that paints a light background must also set its own `color`, or its contents inherit white-on-white. This has already caused two rounds of unreadable text (`.section-container--dimmed`, the agenda `.schedule` section).

Whenever you add a `background`/`background-color`:

- Light surface → set `color: var(--text-dark)` (or `--color-primary-darkest` in legacy theme CSS). Secondary text: `--text-muted` / `#33475b`.
- Dark surface → set `color: var(--text-light)` or white.
- Set the pair **on the container**, not on each child — one declaration covers everything nested inside.
- Watch for `all: unset` in the legacy theme CSS: it resets `color` to `inherit`, so those elements depend entirely on the container being correct.

Target WCAG AA (4.5:1 for body text, 3:1 for large text). The site tokens already satisfy this: `--text-dark #1a2a36` (13.8:1 on white), `--text-muted #64748b` (4.8:1), `--accent #2378b0` (5.0:1). `--accent-light #5dade2` is **only 2.0:1 on white** — decorative use only, never text.

## Organizers

Organizers are **data-driven** — `data/organizers.json` at the repo root, a single list shared by both languages, loaded in templates as `site.Data.organizers`. It's rendered as `.organizer-card` blocks by `themes/event/layouts/miscellaneous/organizers.html` on `/organizers` (and `/en/organizers`).

Each entry:
```json
{
    "id": "<slug>",
    "name": "Full Name",
    "image": "/images/<slug>.jpg",
    "alt": "Optional alt text (defaults to name)",
    "roleKey": "cd_organizer_role_<slug>",
    "hidden": false,
    "socials": [
        { "type": "linkedin", "url": "https://..." }
    ]
}
```
`socials[].type` must be `linkedin` or `instagram` (the only icons/hover styles wired up in the template — see `$socialIcons`/`$socialLabels` in `organizers.html`); add a new type there first if a person uses a different network. `hidden: true` keeps an entry in the list (and its i18n/photo) without rendering it — used to pull someone from the page without deleting their data.

### Add an organizer

1. Add a square headshot to `static/images/<slug>.jpg`.
2. Append an entry to `data/organizers.json` (see shape above), with a new, unique `roleKey`.
3. Add the matching `roleKey` to **both** `i18n/es.yaml` and `i18n/en.yaml` with the Spanish and English role text.

### Remove an organizer

- To hide them but keep their data (reversible): set `"hidden": true` on their entry.
- To fully delete: remove their entry from `data/organizers.json`, delete the `roleKey` from both `i18n/es.yaml` and `i18n/en.yaml`, and delete the now-unused photo from `static/images/` if it isn't reused elsewhere.

## Sponsors

Sponsors **are** pure data — `data/sponsors.json` at the repo root, a single list shared by both languages, loaded in templates as `site.Data.sponsors`. This drives the `/sponsors` page, the homepage sponsor carousel, and the logo strip at the bottom of `/organizers`.

### Add a sponsor

1. Add the logo file to `assets/logos/` (this is processed by Hugo's asset pipeline via `resources.Get` — **not** `static/logos/`, which is for unprocessed static assets).
2. Append an entry to `data/sponsors.json`:
   ```json
   {
       "logo": "logos/<file>.png",
       "url": "https://sponsor-site-or-social-link/",
       "name": "Sponsor Name",
       "description": "One-line description shown with the logo.",
       "tier": "platinum"
   }
   ```
   `tier` is `platinum` | `gold` | `silver` | `community` and must match a key in `params.themes.event.sponsorTiers` (still in `hugo.yaml` — only the sponsor list itself moved to JSON).
3. `community`-tier sponsors show only on `/sponsors` and in the `/organizers` footer strip. `platinum`/`gold`/`silver` sponsors also appear in the homepage carousel (`partials/sections/our-sponsors.html`).

### Remove a sponsor

Delete its entry from `data/sponsors.json`. Optionally delete the now-unused logo from `assets/logos/` if nothing else references it.

### Initiative partners (related, separate list)

`params.themes.event.initiativePartners` is a separate list for non-sponsor program partners (e.g. funding bodies, academic partners). Same add/remove process as sponsors, but entries only have `logo`, `url`, `name`, and an optional `wide: true` for a wider logo — no `tier` or `description`.

## Volunteers

Unlike organizers and sponsors, there is **no roster stored in the repo**. `/volunteers` (`content/volunteers.md` + `content/en/volunteers.md`, layout `volunteers`) just wraps a hero + intro paragraph around an embedded **Google Form**, rendered by `themes/event/layouts/miscellaneous/volunteers.html`.

The site has no backend or database (static Hugo build on GitHub Pages), so the actual form — fields, options, required/optional flags, and any conditional logic — lives entirely on **Google Forms' side**, not in this repo. The embedded iframe just points at `params.themes.event.volunteersFormUrl` (a `forms.gle` link) in `hugo.yaml`, with `?embedded=true` appended in the template to get Google's frameless embed view. Submissions land in the linked Google Form's Responses tab (and its linked Sheet, if one is attached).

### Edit the form

- **Fields, options, conditional logic**: edit directly at the form's edit URL in Google Forms — there is nothing to change in this repo for question content.
- **Swap in a different Google Form** (or point at a new one): update `volunteersFormUrl` in `hugo.yaml` (`params.themes.event`) to the new form's `forms.gle` (or full `docs.google.com/forms/.../viewform`) URL. No template changes needed.
- **Embed height**: Google's embed has no dynamic-height API like Tally did, so the iframe uses a fixed `height="1200"` in `volunteers.html`. If a new form is noticeably longer/shorter, adjust that value so the form doesn't scroll inside its own box.
- **Menu entry**: `hugo.yaml` → `menus.main` (`identifier: volunteers`) in both the `es` and `en` language blocks.
- **Response notifications**: enable "Get email notifications for new responses" in the form's Responses tab (⋮ menu) in Google Forms — not configured in this repo.

### If you'd rather not depend on Google Forms

Swap the iframe's `src` for a different form service, or replace the whole block with a `mailto:`-based custom HTML form (fields built in this repo, no external dependency, but no dashboard/spreadsheet of applicants either) — see the git history of `volunteers.html` for a previous mailto-based version to start from.
