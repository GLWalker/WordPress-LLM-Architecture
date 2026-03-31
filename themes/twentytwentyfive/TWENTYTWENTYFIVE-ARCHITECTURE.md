# TWENTYTWENTYFIVE-ARCHITECTURE.md

## 1. Purpose

This document represents the high-level architecture of the Twenty Twenty-Five theme. It defines the structural principles, layer separation, and ingestion hierarchy required for theme-specific intelligence as a Tier 2 Extension Corpus.

## 2. Ingestion Hierarchy

Agents SHOULD ingest the theme extension corpus in the following order:

1. **Manifest (This File)**: To understand theme boundaries.
2. **JSON Intelligence (`TWENTYTWENTYFIVE-JSON-LLM.md`)**: To understand declarative configuration (theme.json).
3. **Template Intelligence (`TWENTYTWENTYFIVE-TEMPLATES-LLM.md`)**: To understand structural layout (HTML).
4. **Composition Intelligence (`TWENTYTWENTYFIVE-PATTERNS-LLM.md`)**: To understand block patterns (PHP/HTML).
5. **Visual Intelligence (`TWENTYTWENTYFIVE-CSS-LLM.md`)**: To understand visual realizations (CSS).
6. **Optional Logic (`TWENTYTWENTYFIVE-PHP-LLM.md`)**: To understand registration and hook overrides.

## 3. Core Constructs

- **Symbols**: namespaced identifiers (`twentytwentyfive_`) and structural layout slugs.
- **Events**: Bound actions/filters to Core hooks.
- **Registrations**: Extension declarations including theme configuration, pattern categories, template parts, and any verified block style registrations consumed by Core.
- **Context**: Visual and structural boundaries provided by the theme.
- **Patterns**: reusable block-based layouts defined by the theme.

## 4. Layer Governance

- **Extension Type**: Tier 2 (Extension Corpus).
- **Precedence**: Tier 0 (Core Corpus) always takes absolute precedence.
- **Constraint**: Theme corpus must extend, not redefine, system behavior.

## 5. Record Schema Enforcement

### Symbol Record
- `type`: Category identifier (symbol).
- `name`: string.
- `category`: Domain identifier (theme|block).

### Event Record
- `type`: Category identifier (event).
- `trigger`: Execution identifier.

### Registration Record
- `type`: Category identifier (registration).
- `category`: Extension declaration type.

### Pattern Record
- `type`: Category identifier (pattern).
- `required_components`: List of symbols, hooks, or files.

## 6. Dual Confidence Model

### Extraction Confidence (Reliability)
- **1.0**: Complete structured definition (Public stable API).
- **0.7**: Partial definition (Inferred from implementation).
- **0.3**: Inferred or incomplete construct.

### Usage Confidence (Safety)
- **1.0**: Public stable API (Standard theme hooks and settings).
- **0.5**: Internal or restricted (Internal system-only logic).
- **0.1**: Deprecated (Legacy or obsolete theme constructs).

## 7. Standard Patterns

### Theme Block Style Registration
- **Definition**: Theme-specific style variations for core blocks.
- **Components**: `register_block_style`, namespaced theme functions.
- **Structure**: Registered during `init` and realized throughnamespaced CSS classes.

### Content-Specific Composition
- **Definition**: Reusable patterns targeted at specific post formats or types.
- **Components**: namespaced pattern slugs and block markup structures.
- **Structure**: Registered as patterns for the block editor.

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses
- **If present**, use of non-namespaced CSS classes for layout logic.
- **If present**, template parts lacking formal `wp:template-part` markup.

### Ambiguous Constructs
- **Manual Overrides**: Hardcoding core settings instead of using global-style variables.
- **Unverified Bindings**: Speculative bindings not explicitly present in the theme source.

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
