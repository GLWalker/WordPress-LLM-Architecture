# WORDPRESS-LAYER-GOVERNANCE-CONTRACT.md

## 1. Purpose

This contract establishes the immutable authority of the WordPress LLM Source Corpus and defines the rules governing all extensions, overlays, and interpretation layers.

It ensures that:

- **Core intelligence** remains deterministic and stable.
- **Extensions** remain non-destructive.
- **Runtime reasoning** remains predictable and verifiable.

---

## 2. Authority Hierarchy

### Tier 0 — Core Corpus (Immutable Law)

- **Files**:
    - `WORDPRESS-LLMS-ARCHITECTURE.md`
    - `WORDPRESS-PHP-LLM.md`
    - `WORDPRESS-JS-LLM.md`
    - `WORDPRESS-JSON-LLM.md`
    - `WORDPRESS-CSS-LLM.md`
    - `WORDPRESS-XML-LLM.md`

**Rules**:

- **MUST NOT** be modified at runtime.
- **MUST NOT** be overridden by any extension.
- Defines the canonical schema and semantics.

---

### Tier 1 — Overlay Layer (User / Workspace State)

**Definition**: Non-destructive, user-specific or workspace-specific augmentations.

**Examples**:

- Notes
- Pins
- Layout preferences
- User-specific enablement flags

**Rules**:

- **MUST NOT** mutate Tier 0 data.
- **MUST** reference Tier 0 identifiers (symbol/event/registration).
- **MAY** be created, updated, or removed at runtime.
- **MUST** be reversible without side effects.

---

### Tier 2 — Extension Layer (Plugins)

**Definition**: New capabilities that introduce additional symbols, events, or registrations.

**Examples**:

- Plugin-provided hooks
- Custom REST endpoints
- Custom CPTs

**Rules**:

- **MUST** declare all additions using the same record schema.
- **MUST NOT** redefine or override Tier 0 constructs.
- **MUST** namespace identifiers to prevent collision.
- **MUST** be removable without corrupting Tier 0 or Tier 1.

---

### Tier 3 — Interpretation Layer (AI / Reasoning Engine)

**Definition**: The dynamic reasoning system that reads and interprets all layers.

**Examples**:

- Vic (assistant intelligence)
- Registry analysis
- Contextual recommendations

**Rules**:

- **MUST** treat Tier 0 as ground truth.
- **MUST NOT** fabricate symbols, events, or registrations.
- **MUST** respect layer boundaries:
    - JSON ≠ execution
    - CSS ≠ events
    - XML ≠ runtime logic
- **MAY** be synthesized insights, but **NOT** mutate data.

---

## 3. Layer Interaction Rules

### 3.1 Non-Destructive Principle

No layer may modify a lower layer.

- Tier 1 cannot modify Tier 0.
- Tier 2 cannot override Tier 0.
- Tier 3 cannot mutate any layer.

---

### 3.2 Reference Integrity

All non-core layers **MUST** reference existing identifiers:

- **Symbols** MUST map to real definitions.
- **Events** MUST map to real hooks.
- **Registrations** MUST map to valid declarations.

If a reference cannot be resolved → it is invalid.

---

### 3.3 Namespace Enforcement

All Tier 2 identifiers **MUST** be namespaced:

- **Format**: `vendor.scope.identifier`
- **Example**:
    - `plugin.analytics.event`

---

### 3.4 Deterministic Resolution Order

When resolving system state:

1. **Tier 0** (Core Corpus)
2. **Tier 2** (Extensions)
3. **Tier 1** (Overlay)
4. **Tier 3** (Interpretation)

---

## 4. Prohibited Behaviors

The following are strict violations:

- Redefining a Core symbol (e.g., overriding `wp_insert_post`).
- Treating JSON as executable logic.
- Creating Events in CSS or JSON layers.
- Injecting runtime logic into XML definitions.
- Using overlays to simulate system-level registrations.
- Fabricating hooks or APIs that do not exist.

---

## 5. Validation Requirements

All ingested or generated data **MUST** pass:

### Structural Validation

- Conforms to record schema (`Symbol`/`Event`/`Registration`/`Pattern`).

### Layer Validation

- Belongs to the correct layer.
- Does not violate layer capabilities.

### Reference Validation

- All references resolve to valid identifiers.

---

## 6. Mutation Rules

### Allowed:

- **Tier 1**: Full CRUD.
- **Tier 2**: Controlled registration/unregistration.
- **Tier 3**: Stateless reasoning.

### Forbidden:

- Any mutation of **Tier 0**.

---

## 7. Snapshot Integrity (Registry System)

All system snapshots **MUST**:

- Be reproducible from source.
- Reflect **Tier 0 + Tier 2 + Tier 1** (in order).
- Exclude interpretation artifacts.

---

## 8. Enforcement Model

Violations **MUST** result in:

- Rejection of data.
- Logging of violation type.
- Optional quarantine of offending extension.

---

## 9. Final Principle

> The **Core Corpus** defines what is true.
> **Extensions** define what is added.
> **Overlays** define what is personalized.
> **Interpretation** defines what is understood.

No layer may become another.

---

**Final Status**:
This contract establishes:

- Immutability
- Separation of concerns
- Deterministic reasoning
