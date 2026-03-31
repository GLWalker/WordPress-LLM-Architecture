# TWENTYTWENTYFIVE-TEMPLATES-LLM.md

## 1. Purpose

This document represents the structural composition layer of the Twenty Twenty-Five theme. It defines the template and template part arrangements that determine the theme’s high-level layout. It is the primary intelligence source for routing and block composition within the theme.

## 2. Scope

- **Included**: Theme templates (`templates/*.html`) and template parts (`parts/*.html`) defined within the theme's core structure.
- **Excluded**: PHP-based patterns, CSS-only layouts, and dynamic theme logic.

## 3. Core Constructs

- **Symbols**: Top-level identifiers including template slugs and custom template identifiers.
- **Events**: None. Templates are static block compositions and do not execute triggers.
- **Registrations**: Structural declarations including template part areas (`header`, `footer`) and their metadata in `theme.json`.
- **Context**: Structural state including the template resolution state and the block-based rendering context.
- **Patterns**: Fundamental composition structures including full-page layouts and reusable UI fragments.

## 4. Structural Identifiers

### Template Identifiers

- File-based slugs in the `templates/` directory identify targeted content rendering targets.
- Slugs identify custom templates for post type selection.

### Template Part Identifiers

- Slugs identify unique parts (`header`, `vertical-header`, `sidebar`).
- Area classifications (`header`, `footer`, `uncategorized`) define architectural roles.

### Composition Units

- Block-based HTML arrangements within the template surface define the final site structure.

## 5. Intelligence Record Definitions

### Symbol Record

- `type`: Category identifier (symbol).
- `name`: Full namespaced identifier.
- `category`: Domain identifier (template|part).
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
- **Constraint**: Event records are non-instantiated for the structural layer.

### Registration Record

- `type`: Category identifier (registration).
- `category`: Structural type (Template|Template Part).
- `identifier`: Unique slug or area identifier.
- `arguments`: Configuration data object.
- `callback`: Target handler identifier.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Pattern Record

- `type`: Category identifier (pattern).
- `name`: Implementation name.
- `description`: Static structural layout definition.
- `required_components`: List of symbols, hooks, or files.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

## 6. Dual Confidence Model

### Extraction Confidence (Reliability)

- **1.0**: Complete structured definition (File-based or theme.json metadata).
- **0.7**: Partial definition (Inferred from implementation).
- **0.3**: Inferred or incomplete construct.

### Usage Confidence (Safety)

- **1.0**: Public stable API (Standard theme templates).
- **0.5**: Internal or restricted (Internal system-only parts).
- **0.1**: Deprecated (Legacy or obsolete templates).

## 7. Standard Patterns

### Core Content Routing

- **Definition**: The mapping of content types to theme structural templates.
- **Components**: core template files.
- **Structure**: Serves as the primary architectural source for site rendering.

### Shared UI Fragments

- **Definition**: Reusable components registered as template parts.
- **Components**: template part files.
- **Structure**: May be defined in theme configuration or resolved through file structure.

### Custom Layout Extensions

- **Definition**: Targeted layouts for specific WordPress post types.
- **Components**: custom template identifiers.
- **Structure**: Registered as custom templates for selection within the editor.

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses

- **If present**, template parts included without formal area registration.
- **If present**, malformed block markup or attributes within the template HTML.

### Ambiguous Constructs

- **Unregistered Part Overrides**: Relying on file existence to override core parts without explicit theme-level registration.
- **Implicit Routing**: Custom templates present without registration in `theme.json`.

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
