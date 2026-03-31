# TWENTYTWENTYFIVE-CSS-LLM.md

## 1. Purpose

This document represents the visual representation layer of the Twenty Twenty-Five theme. It defines the CSS realizations derived from the JSON and PHP configuration layers. It is the primary intelligence source for theme-specific styling and visual boundaries.

## 2. Scope

- **Included**: Theme custom properties (CSS variables), block style realizations when present, and enqueued stylesheets.
- **Excluded**: Plugin CSS, WordPress Core-only styles, and third-party library definitions.

## 3. Core Constructs

- **Symbols**: Theme-level structural identifiers including namespaced CSS variables and block-specific selectors.
- **Events**: None. Execution triggers do not occur in the CSS architectural layer.
- **Registrations**: Reflected outputs from theme configuration and any verified block style registrations defined in upstream PHP or JSON layers.
- **Context**: Visual boundaries including the editor frame and frontend site structures.
- **Patterns**: Fundamental implementation structures including namespaced block CSS overrides when present.

## 4. Structural Identifiers

### Identifier Conventions
- Theme custom properties follow the `--wp--preset--*` and `--wp--style--*` naming conventions.
- Registered block styles are identified via namespaced `.is-style-[slug]` CSS classes.

### Layout Realization
- CSS classes determine visual layout behavior derived from theme settings.
- Specificity is managed via the core Global Styles system using `:where()` and `:root` declarations.

### Style Persistence
- Dynamically generated theme CSS may be output through the WordPress Global Styles system.

## 5. Intelligence Record Definitions

### Symbol Record
- `type`: Category identifier (symbol).
- `name`: Full namespaced identifier.
- `category`: Domain identifier (theme|block).
- `description`: Structural purpose definition.
- `signature`: Path identifier.
- `since`: Version of introduction.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Event Record
- `type`: Category identifier (event).
- `name`: string.
- `category`: string.
- `trigger`: string.
- `description`: string.
- `extraction_confidence`: 0.0.
- `usage_confidence`: 0.0.
- **Constraint**: Event records are non-instantiated for the CSS layer.

### Registration Record
- `type`: Category identifier (registration).
- `category`: Reflected declaration type.
- `identifier`: Unique slug or identifier.
- `arguments`: Configuration data object.
- `callback`: Target handler identifier.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Pattern Record
- `type`: Category identifier (pattern).
- `name`: Implementation name.
- `description`: Static design layout definition.
- `required_components`: List of symbols, hooks, or files.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

## 6. Dual Confidence Model

### Extraction Confidence (Reliability)
- **1.0**: Complete structured definition (Identifiers in theme library).
- **0.7**: Partial definition (Inferred from code context).
- **0.3**: Incomplete or inferred construct.

### Usage Confidence (Safety)
- **1.0**: Public stable API (Stable variables and selectors).
- **0.5**: Internal or restricted (Internal system-only selectors).
- **0.1**: Deprecated (Legacy or obsolete selectors).

## 7. Standard Patterns

### Block Style Realization
- **Definition**: Aesthetic enhancements for core blocks via CSS classes.
- **Components**: verified block style selectors when present.
- **Structure**: Registered in PHP and realized through inline or enqueued CSS blocks.

### Global Style Variable Mapping
- **Definition**: The mapping of CSS variables to theme JSON presets.
- **Components**: `--wp--preset--color--[base|contrast|accent-X]`.
- **Structure**: Serves as the primary aesthetic source for the theme's design system.

### Editor/Site Isolation
- **Definition**: Maintaining visual parity between the block editor and frontend.
- **Components**: `assets/css/editor-style.css`.
- **Structure**: Scoped to the editor container using theme-specific selectors.

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses
- **If present**, fixed-unit layout hardcoding instead of theme custom properties.
- **If present**, global `!important` flags overriding core Global Style logic.

### Ambiguous Constructs
- **Broad Selectors**: Targeting generic tags without theme-specific scoping.
- **Manual Variable Fallbacks**: Hardcoding hex values instead of using `var()` for presets.

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
