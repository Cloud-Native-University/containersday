---
title: "Hugo"
description: "Expert in Hugo (GoHugo) static site generator, specializing in theme development, internationalization, and content architecture."
---

# Hugo Framework Skill

This skill covers the core concepts, directory structure, and advanced features of the Hugo static site generator.

## Directory Structure
- `/content`: Where markdown and other content files live. Organizes the site's URL structure.
- `/layouts`: Site templates (HTML with Go templates).
    - `_default`: Fallback templates (list.html, single.html).
    - `partials`: Reusable template components.
    - `shortcodes`: Custom snippets for use inside markdown.
- `/assets`: Files processed by Hugo Pipes (SASS, JS, Images).
- `/static`: Static files (images, CSS, JS) served directly without processing.
- `/data`: Configuration data (YAML, JSON, TOML) accessible via `.Site.Data`.
- `/i18n`: Translation strings for multi-language sites.

## Content Management
### Front Matter
Hugo supports YAML (`---`), TOML (`+++`), and JSON.
```yaml
title: "Example Page"
date: 2024-04-23
draft: false
tags: ["hugo", "golang"]
```

### Archetypes
Templates for new content: `hugo new sessions/my-new-session.md`.

## Hugo Pipes (Asset Processing)
Process assets in `assets/`:
```go-template
{{ $style := resources.Get "sass/main.scss" | toCSS | minify | fingerprint }}
<link rel="stylesheet" href="{{ $style.Permalink }}">
```

## Internationalization (i18n)
- Configured in `hugo.yaml` under `languages:`.
- Content translated via filenames (`page.en.md`, `page.es.md`) or directory structure.
- Use `{{ T "id" }}` to fetch translations from `/i18n/`.

## Taxonomies
Defined in config:
```yaml
taxonomies:
  category: categories
  tag: tags
  series: series
```

## Useful Commands
- `hugo server -D`: Run dev server with drafts enabled.
- `hugo --gc --minify`: Build for production with garbage collection and minification.
- `hugo new site [name]`: Create a new project.

## Advanced Patterns
- **Base Templates**: Use `baseof.html` and `define "main"` to reduce boilerplate.
- **Image Processing**:
  ```go-template
  {{ $image := resources.Get "images/hero.jpg" }}
  {{ $scaled := $image.Fill "1200x600 Center" }}
  <img src="{{ $scaled.RelPermalink }}">
  ```
- **Related Content**: Use `.Site.RegularPages.Related .` to show similar posts.
