# AGENTS.md

This file documents how to maintain the organizers, volunteers, and sponsors content on the Containers Day site. For dev commands, build/deploy details, and general architecture, see `CLAUDE.md`.

After any change below, verify with `make serve` and check both the Spanish page and its `/en/...` counterpart.

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
