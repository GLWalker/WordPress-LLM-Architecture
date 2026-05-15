# WORDPRESS-LLMS-ARCHITECTURE.md

## 1. Purpose

This document represents the high-level architecture of the WordPress LLM Source Corpus. It defines the structural principles, layer separation, and ingestion hierarchy required for AI agent and reasoning engine consumption.

## 2. Ingestion Hierarchy

Agents SHOULD ingest the corpus in the following order:

1. **Manifest (This File)**: To understand the system boundaries.
2. **PHP Intelligence (`WORDPRESS-PHP-LLM.md`)**: To understand execution and lifecycle.
3. **JSON Configuration (`WORDPRESS-JSON-LLM.md`)**: To understand declarative state.
4. **JavaScript Intelligence (`WORDPRESS-JS-LLM.md`)**: To understand client-side logic.
5. **CSS Visual Representation (`WORDPRESS-CSS-LLM.md`)**: To understand design tokens.
6. **XML Portability (`WORDPRESS-XML-LLM.md`)**: To understand data structures.

## 3. Structural Identifiers (Global)

- **Symbols**: All named identifiers across all layers.
- **Events**: Execution triggers (Hooks/Actions/Filters/Lifecycle).
- **Registrations**: Capability declarations (Post Types/Blocks/Presets).
- **Context**: State origins (Core/Plugin/Theme/User).
- **Patterns**: Fundamental implementation structures.

## 4. Layer Governance

- **Tier 0 (Core)**: Immutable ground truth.
- **Tier 1 (Overlay)**: User/Workspace state.
- **Tier 2 (Extension)**: Plugin/Theme additions.
- **Tier 3 (Interpretation)**: AI and reasoning insights.

## 5. Record Schema Enforcement

All intelligence MUST be expressed using the primary four record types:

### Symbol Record
`{type, name, category, description, signature, since, extraction_confidence, usage_confidence}`

### Event Record
`{type, name, category, trigger, description, extraction_confidence, usage_confidence}`

### Registration Record
`{type, category, identifier, arguments, callback, extraction_confidence, usage_confidence}`

### Pattern Record
`{type, name, description, required_components, extraction_confidence, usage_confidence}`

## 6. Output Shape

Internal records SHOULD be processed as structured JSON before being passed to reasoning layers.

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

END OF FILE
