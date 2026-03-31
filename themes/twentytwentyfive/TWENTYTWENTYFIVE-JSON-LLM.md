# TWENTYTWENTYFIVE-JSON-LLM.md

## 1. Purpose

This document represents the declarative configuration layer of the Twenty Twenty-Five theme. It defines the structured data formats used for theme settings and block properties as declarative inputs consumed by WordPress Core. It is the primary intelligence source for `theme.json` configuration.

## 2. Scope

- **Included**: theme.json (Version 3) metadata, global presets (color, font), and block-level configuration.
- **Excluded**: CSS, PHP, and individual template/pattern HTML implementations.

## 3. Core Constructs

- **Symbols**: Structural identifiers including schema version and root configuration keys (settings, styles, blocks).
- **Events**: None. Execution triggers do not occur in the JSON configuration layer.
- **Registrations**: Declarative configuration inputs including theme presets and block-level settings consumed by the Global Styles system.
- **Context**: State origins including the `theme` style origin and theme/user resolution context.
- **Patterns**: Static composition structures including block-level style configuration objects and design token mappings.

## 4. Structural Identifiers

### Identifier Conventions

- Color slugs follow theme-defined preset naming conventions.
- Typography slugs define theme-specific font presets when present.

### Block Configuration

- Settings are defined within namespaced `blocks` objects for core blocks.
- Styles map to specific `blocks` and `elements` hierarchies in the global styles resolution order.

### Design Token Mapping

- `settings.color.palette` defines the primary aesthetic source.
- `settings.typography.fontSizes` defines the fluid typography scale.

## 5. Intelligence Record Definitions

### Symbol Record

- `type`: Category identifier (symbol).
- `name`: Full identifier string.
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
- **Constraint**: Event records are non-instantiated for the JSON layer.

### Registration Record

- `type`: Category identifier (registration).
- `category`: Declarative configuration type.
- `identifier`: Unique slug or name.
- `arguments`: Configuration data object.
- `callback`: Target handler identifier.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Pattern Record

- `type`: Category identifier (pattern).
- `name`: Implementation name.
- `description`: Static configuration layout definition.
- `required_components`: List of symbols, hooks, or files.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

## 6. Dual Confidence Model

### Extraction Confidence (Reliability)

- **1.0**: Complete structured definition (theme.json schema).
- **0.7**: Partial definition (Inferred from implementation).
- **0.3**: Incomplete or inferred construct.

### Usage Confidence (Safety)

- **1.0**: Public stable API (Standard theme.json keys).
- **0.5**: Internal or restricted (Experimental keys).
- **0.1**: Deprecated (Legacy version 1/2 keys).

## 7. Standard Patterns

### CSS Variable Generation

- **Definition**: The mapping of JSON presets to namespaced CSS custom properties.
- **Components**: theme-defined color preset slugs.
- **Structure**: Slugs map to `--wp--preset--color--[slug]` identifiers.

### Fluid Font Presets

- **Definition**: Responsive typography defined through clamp logic.
- **Components**: `small`, `medium`, `large`, `x-large`, `xx-large`.
- **Structure**: Uses `fluid` configuration with `min`/`max` boundaries for scaling.

### Declarative Block Styles

- **Definition**: Static style overrides for core blocks.
- **Components**: block-level style configurations when present.
- **Structure**: Defined in `styles.blocks` to enforce theme-specific aesthetic behavior.

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses

- **If present**, static unit hardcoding instead of responsive `em`/`rem` overrides fluid settings.
- **If present**, missing block metadata in `theme.json` limits core functionality.

### Ambiguous Constructs

- **Version Drift**: Use of legacy schema versions in a Version 3 environment.
- **Redundant Presets**: Redefining Core presets without proper inheritance.

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
