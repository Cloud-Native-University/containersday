---
title: "Golang & Go Templates"
description: "Expert in Go (Golang) programming language and Go template engines (text/template, html/template) specifically for Hugo development."
---

# Golang & Go Templates Skill

This skill provides the necessary context and best practices for working with the Go programming language and, more specifically, the Go template system used by Hugo.

## Core Go Template Syntax

### Actions and Delimiters
- All template actions are enclosed in `{{ ... }}`.
- Space-trimming: `{{- ... }}` trims leading whitespace, `{{ ... -}}` trims trailing whitespace.

### The Dot (`.`)
- The "dot" represents the current context/data.
- Inside a `range` or `with` block, the context of the dot changes.
- Use `$` to refer to the global context (the root data passed to the template).

### Control Structures
- **Conditionals**:
  ```go-template
  {{ if .Condition }} ... {{ else if .Other }} ... {{ else }} ... {{ end }}
  ```
- **Iteration**:
  ```go-template
  {{ range .Items }} {{ .Property }} {{ end }}
  {{ range $index, $element := .Items }} ... {{ end }}
  ```
- **Scope Rebinding**:
  ```go-template
  {{ with .User }} {{ .Name }} {{ end }}
  ```

## Hugo-Specific Template Features

### i18n and Localization
- Use the `T` function for translations: `{{ T "string_id" }}`.
- Use `i18n` for complex translations with data.

### Partials and Templates
- **Partials**: `{{ partial "filename.html" . }}` - cached or non-cached components.
- **Blocks**: `{{ block "main" . }} Default Content {{ end }}` - used for base templates.

### Functions and Pipes
- Use pipes for transformations: `{{ .Title | upper | markdownify }}`.
- **Common Functions**:
    - `slice`: Create a slice `{{ $s := slice "a" "b" }}`.
    - `dict`: Create a dictionary `{{ $d := dict "key" "value" }}`.
    - `index`: Access array/map elements `{{ index .Map "key" }}`.
    - `default`: Set default values `{{ .Param "color" | default "#fff" }}`.

### Scratch (State Management)
- Use `.Scratch` for persistent variables across template execution:
  ```go-template
  {{ .Scratch.Set "key" "value" }}
  {{ .Scratch.Get "key" }}
  ```

## Best Practices
1. **Maintain Context**: Be careful with the dot when nesting blocks. Prefer assigning the root context to a variable if needed: `{{ $root := . }}`.
2. **Readability**: Use whitespace trimming to keep the output HTML clean without sacrificing template readability.
3. **Logic Placement**: Keep complex logic in partials or shortcodes. Avoid deeply nested logic in base templates.
4. **Safety**: Hugo uses `html/template` which provides context-aware escaping. Use `| safeHTML` or `| safeJS` only when you are absolutely sure the content is safe.

## Debugging Templates
- Use `printf "%#v" .` to inspect the current context.
- Use `{{ warnf "Variable is %s" .Var }}` to log warnings to the Hugo console during build.
- Use `{{ errorf "Critical error" }}` to fail the build with a custom message.

