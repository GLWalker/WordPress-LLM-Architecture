# WORDPRESS-LLMS-SCHEMA-CONTRACT.md

## 1. Purpose

This contract defines the rules for machine-readable governance through schemas and manifests. It ensures that the framework's knowledge layer is deterministic, validatable, and capable of hybrid human-machine reasoning.

## 2. Schema Hierarchy and Authority

### 2.1 Core Schemas
- **Role**: Define the base record types (Symbol, Event, Registration, Pattern).
- **Authority**: Tier 0. Immutable.
- **Location**: `schemas/core/`

### 2.2 Extension Schemas
- **Role**: Specialize base records for plugins, themes, or custom architectures.
- **Authority**: Tier 2. Must inherit from Core Schemas.
- **Location**: `schemas/extensions/`

### 2.3 Overlay Schemas
- **Role**: Define the structure for workspace-specific data (Notes, Pins, Preferences).
- **Authority**: Subordinate. Must not redefine core record shapes.

## 3. Validation Precedence

Validation MUST occur during the ingestion pipeline as follows:
1. **Structural Validation**: Does the record match the machine-readable schema (e.g., JSON Schema)?
2. **Layer Validation**: Is the record assigned to the correct architectural layer?
3. **Reference Validation**: Do identifiers point to real, resolvable entities?

If a manifest fails structural validation, it MUST be rejected or marked as **Invalid** and excluded from reasoning.

## 4. Manifest Record Roles

Every structured record within a manifest MUST serve one of these roles:
- **Symbol**: Declares what exists (classes, functions, constants).
- **Event**: Declares what executes (hooks, filters, triggers).
- **Registration**: Declares what is declared (assets, routes, settings).
- **Pattern**: Declares how things are composed (templates, block structures).

## 5. Schema Inheritance and Extensibility

- **Strict Inheritance**: Extension schemas MAY add optional fields but MUST NOT remove mandatory fields from core schemas.
- **Namespacing**: Extended attributes MUST be namespaced to prevent collisions with future core schema updates.
- **Record Stability**: Once a record type is established in a core schema, its required signature is immutable.

## 6. Machine-Readable Governance Metadata

Every manifest file SHOULD include a governance metadata block:
```json
{
  "governance": {
    "schema": "core/v1/symbol-schema.json",
    "authority": "Tier 0",
    "tier": 0,
    "last_validated": "2026-05-15"
  }
}
```

## 7. Prohibitions

- **Unstructured Manifests**: Large-scale intelligence must not be persisted in prose-only formats if a schema exists.
- **Schema Bypass**: Agents MUST NOT ignore validation errors when ingesting manifests.
- **Silent Extensions**: Adding new record types or fields without updating/referencing a schema is prohibited.

## 8. Mental Model

> **Governance should be parseable, not merely readable.**
> **Structure is the foundation of reasoning.**

END OF FILE
