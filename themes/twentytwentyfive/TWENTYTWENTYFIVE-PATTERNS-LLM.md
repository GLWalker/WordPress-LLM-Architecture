# TWENTYTWENTYFIVE-PATTERNS-LLM.md

## 1. Purpose

This document represents the composition layer of the Twenty Twenty-Five theme. It defines the block patterns available within the theme as static block-based arrangements. It is the primary intelligence source for theme-specific UI units and reusable layout compositions.

## 2. Scope

- **Included**: PHP-based block patterns (`patterns/*.php`) and pattern categories registered by the theme.
- **Excluded**: Core block patterns, plugin patterns, and individual template/part HTML files.

## 3. Core Constructs

- **Symbols**: Structural identifiers including theme-namespaced pattern slugs and pattern category identifiers.
- **Events**: None. Patterns are static block compositions and do not execute triggers.
- **Registrations**: Extension-level declarations including pattern categories defined by the theme when present and pattern metadata.
- **Context**: Composition state including pattern availability and resolution within the block editor.
- **Patterns**: Fundamental composition structures representing reusable block-based layouts defined by the theme.

## 4. Structural Identifiers

### Pattern Category Identifiers

- Custom pattern categories define organizational metadata when present.
- Registrations occur via the `register_block_pattern_category` function.

### Pattern Slugs

- Pattern slugs identify individual UI compositions within the theme.
- Naming conventions utilize the `twentytwentyfive/` namespace in block markup.

### Reusable UI Units

- Pattern definitions are identified by the theme-specific slug and the categories in the pattern file metadata.

## 5. Intelligence Record Definitions

### Symbol Record

- `type`: Category identifier (symbol).
- `name`: Full identifier string.
- `category`: Domain identifier (pattern).
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
- **Constraint**: Event records are non-instantiated for the composition layer.

### Registration Record

- `type`: Category identifier (registration).
- `category`: Extension declaration type.
- `identifier`: Unique slug or identifier.
- `arguments`: Configuration data object.
- `callback`: Target handler identifier.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

### Pattern Record

- `type`: Category identifier (pattern).
- `name`: Implementation name.
- `description`: Static pattern layout definition.
- `required_components`: List of symbols, hooks, or files.
- `extraction_confidence`: Reliability score.
- `usage_confidence`: Safety score.

## 6. Dual Confidence Model

### Extraction Confidence (Reliability)

- **1.0**: Complete structured definition (PHP pattern file metadata).
- **0.7**: Partial definition (Inferred from code context).
- **0.3**: Inferred or incomplete construct.

### Usage Confidence (Safety)

- **1.0**: Public stable API (Standard theme patterns).
- **0.5**: Internal or restricted (Hidden or system patterns).
- **0.1**: Deprecated (Legacy or obsolete patterns).

## 7. Standard Patterns

### Pattern Composition Structures

- **Definition**: Static block arrangements defining reusable UI compositions.
- **Components**: Theme-defined pattern slugs and block markup structures.
- **Structure**: Patterns define reusable layouts composed of core blocks and theme styling.

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses

- **If present**, patterns defining complex layouts without aria roles or navigation labels.
- **If present**, large pattern definitions with excessive nested block hierarchies.

### Ambiguous Constructs

- **Uncategorized Patterns**: Patterns lacking proper category identification.
- **Duplicate Naming**: Patterns with similar labels or slugs causing collision in the library.

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
