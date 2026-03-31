# TWENTYTWENTYFIVE-PHP-LLM.md

## 1. Purpose

This document represents the execution and registration layer of the Twenty Twenty-Five theme. It defines the PHP-based setup logic, theme supports, and hook-driven registrations that integrate the theme with the WordPress Core lifecycle. It is the primary intelligence source for theme-specific server-side logic and API interactions.

## 2. Scope

- **Included**: Theme setup functions (`after_setup_theme`), enqueued scripts/styles, custom block style registrations (`register_block_style`), and block binding sources (`register_block_bindings_source`) in `functions.php`.
- **Excluded**: WordPress Core functions, block-specific JSON/CSS, and individual template/pattern HTML.

## 3. Core Constructs

- **Symbols**: Theme-level structural identifiers including namespaced theme functions.
- **Events**: Execution triggers occurring through binding with existing WordPress Core hooks.
- **Registrations**: Extension-level declarations including block styles (`checkmark-list`), pattern categories, and block binding sources (`twentytwentyfive/format`).
- **Context**: State origins including the `twentytwentyfive` prefix and the `after_setup_theme`, `init`, and `wp_enqueue_scripts` hook contexts.
- **Patterns**: Fundamental implementation structures including setup logic, enqueuing patterns, and block-level registration structures.

## 4. Structural Identifiers

### Hook Interaction Patterns
- Theme setup logic is bound to the `after_setup_theme` hook for initialization.
- Script and style enqueuing occurs through binding to `wp_enqueue_scripts`.

### Registration Identifiers
- Custom identifiers (e.g., `checkmark-list`, `twentytwentyfive/format`) are registered during the `init` hook to ensure availability.

### Theme Support Identifiers
- Core theme supports (e.g., `post-formats`, `editor-styles`) are enabled through `add_theme_support`.

## 5. Intelligence Record Definitions

### Symbol Record
- `type`: Category identifier (symbol).
- `name`: Full namespaced identifier.
- `category`: Domain identifier (function).
- `description`: Structural purpose definition.
- `signature`: Path identifier.
- `since`: Version of introduction.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Event Record
- `type`: Category identifier (event).
- `name`: Unique hook tag.
- `category`: Hook type (action|filter).
- `trigger`: Execution identifier.
- `description`: Purpose definition.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Registration Record
- `type`: Category identifier (registration).
- `category`: Extension type (Block Style|Binding|Pattern Category).
- `identifier`: Unique slug or identifier.
- `arguments`: Configuration data object.
- `callback`: Target handler identifier.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Pattern Record
- `type`: Category identifier (pattern).
- `name`: Implementation name.
- `description`: Logic definition.
- `required_components`: List of symbols, hooks, or files.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

## 6. Dual Confidence Model

### Extraction Confidence (Reliability)
- **1.0**: Complete structured definition (Official PHP source).
- **0.7**: Partial definition (Inferred from implementation).
- **0.3**: Incomplete or inferred construct.

### Usage Confidence (Safety)
- **1.0**: Public stable API (Standard theme functions).
- **0.5**: Internal or restricted (Experimental functions or bindings).
- **0.1**: Deprecated (Legacy or obsolete theme functions).

## 7. Standard Patterns

### Theme Feature Initialization
- **Definition**: Activating core WordPress features within the theme context.
- **Components**: theme setup function, after_setup_theme.
- **Structure**: Acts as the primary architectural source for activating features like post formats.

### Block Styling Registration
- **Definition**: Extension variations for core blocks via PHP.
- **Components**: theme block style registration function, register_block_style.
- **Structure**: Registered during `init` to make variations available in the block editor.

### Custom Block Bindings Source
- **Definition**: Populating block attributes with dynamic data from namespaced sources.
- **Components**: theme binding registration function, register_block_bindings_source.
- **Structure**: Registers a source slug and callback to provide post format data to blocks.

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses
- **If present**, dynamic bindings relying on global state (`get_post_format()`) without verified fallbacks.
- **If present**, direct asset resolution using `get_parent_theme_file_uri` without existence checks.

### Ambiguous Constructs
- **Unversioned Enqueues**: Enqueuing styles without explicit version strings.
- **Mixed Hook Interaction**: Registering styles and bindings in separate hooks despite `init` being the standard.

## 9. Output Shape

### Symbol Record Structure

```json
{
    "type": "symbol",
    "name": "string",
    "category": "string",
    "description": "string",
    "signature": "string",
    "since": "string",
    "extraction_confidence": 0.0,
    "usage_confidence": 0.0
}
```

### Event Record Structure

```json
{
    "type": "event",
    "name": "string",
    "category": "string",
    "trigger": "string",
    "description": "string",
    "extraction_confidence": 0.0,
    "usage_confidence": 0.0
}
```

### Registration Record Structure

```json
{
    "type": "registration",
    "category": "string",
    "identifier": "string",
    "arguments": {},
    "callback": "string",
    "extraction_confidence": 0.0,
    "usage_confidence": 0.0
}
```

### Pattern Record Structure

```json
{
    "type": "pattern",
    "name": "string",
    "description": "string",
    "required_components": ["string"],
    "extraction_confidence": 0.0,
    "usage_confidence": 0.0
}
```
