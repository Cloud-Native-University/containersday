---
title: "HTML5 Semantic Design"
description: "Expert in semantic HTML5 markup, accessibility (A11y), and SEO-friendly document structure."
---

# HTML5 Semantic Design Skill

This skill focuses on creating meaningful, accessible, and well-structured web documents using HTML5.

## Semantic Elements
Use meaningful tags instead of generic `<div>` elements:
- `<header>`: Introductory content or navigational links.
- `<nav>`: Section intended for navigation links.
- `<main>`: The dominant content of the `<body>`. Only one per page.
- `<article>`: Self-contained composition (blog post, news story).
- `<section>`: Generic standalone section of a document.
- `<aside>`: Content indirectly related to the main content (sidebar).
- `<footer>`: Information about the author, copyright, etc.
- `<figure>` and `<figcaption>`: For images, diagrams, or code snippets with captions.

## Accessibility (A11y)
- **ARIA Attributes**: Use `aria-label`, `aria-expanded`, and `role` only when necessary to enhance semantic meaning.
- **Alt Text**: Always provide descriptive `alt` attributes for images. Use `alt=""` for decorative images.
- **Form Labels**: Use `<label for="id">` to associate labels with inputs.
- **Tab Index**: Ensure logical keyboard navigation flow.

## SEO Best Practices
- **Heading Hierarchy**: Use exactly one `<h1>` per page, followed by logical nesting (`<h2>`, `<h3>`, etc.).
- **Meta Tags**: Include `description`, `keywords`, and Open Graph (`og:`) tags for social sharing.
- **Canonical URLs**: Use `<link rel="canonical">` to prevent duplicate content issues.

## Best Practices
1. **Validation**: Ensure markup is W3C compliant.
2. **Lean Markup**: Avoid "div-itis" (excessive nesting of divs).
3. **Data Attributes**: Use `data-*` attributes for passing information to JavaScript without affecting semantics.
4. **Responsive Media**: Use `<picture>` and `srcset` for responsive images.
