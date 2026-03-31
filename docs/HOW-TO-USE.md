# How To Use

## Overview

This repository defines WordPress as a structured intelligence system. It is not intended to be read linearly like documentation; it is designed to be **applied**—by developers, systems, and AI—as a source of truth and enforcement model.

---

## Core Principle

> **Treat the corpus as law, not guidance.**

Any system interacting with WordPress should follow these three rules:
1. **Do not reinterpret** definitions.
2. **Do not extend** concepts outside their architectural layer.
3. **Do not bypass** the record schema.

Everything you build should either reference the corpus, extend it via namespaced registrations, or validate against it.

---

## 1. Understand the Layers

WordPress is divided into five strict layers. Each layer has defined capabilities and limitations, and must not cross into another layer's responsibility.

| Layer | Role |
| :--- | :--- |
| **PHP** | Execution, lifecycle, and APIs |
| **JS** | Client-side interaction and state |
| **JSON** | Declarative configuration |
| **CSS** | Visual structure |
| **XML** | Data portability and legacy interfaces |

---

## 2. Use the Record Schema

All intelligence in this system is expressed using four record types. Any system interacting with WordPress should extract data into these structures, store them consistently, and validate them against the manifest.

- **Symbol** → What exists
-- **Event** → What executes
-- **Registration** → What is declared
-- **Pattern** → How things are composed

---

## 3. Apply the Governance Contract

All usage must follow the **WordPress Layer Governance Contract**.

### You MUST:
- Treat the **Core Corpus** as immutable.
- Respect strict **layer boundaries**.
- Maintain **reference integrity** for all identifiers.
- Use **namespacing** for all extensions.

### You MUST NOT:
- Override core definitions.
- Invent hooks, APIs, or structures (no fabrications).
- Treat declarative layers (JSON/CSS/XML) as executable logic.
- Persist interpreted (AI-generated) data as system truth.

---

## 4. Working With Extensions

When introducing new functionality (e.g., via a plugin):
- Represent all additions as **Registration** records.
- **Namespace** all identifiers (e.g., `vendor.scope.identifier`).
- Ensure functionality can be removed without side effects to the core.

**Mindset**: *"Am I adding something new?"* (Extension) vs. *"Am I changing core behavior?"* (Prohibited).

---

## 5. Working With Overlays

Overlays represent user or workspace state (e.g., in an application like SystemDeck).

**Use overlays for**:
- Notes and Pins.
- Layout and UI preferences.
- Contextual state.

**Rules**:
- Overlays must reference real core or extension identifiers.
- Overlays must be reversible.
- Overlays must not simulate system-level logic.

---

## 6. Building Systems (Developers)

If you are building tools or applications:
1. **Ingest WordPress**: Extract Symbols, Events, Registrations, and Patterns.
2. **Build a Registry**: Store normalized records and maintain snapshot integrity.
3. **Apply Overlays**: Merge user/workspace state on top of the registry.
4. **Enable Interpretation**: Allow AI or logic to read (but not mutate) the system.

---

## 7. Using With AI Systems

When integrating with LLMs or AI reasoning engines:
- Provide this corpus as the **primary context**.
- Enforce **schema validation** on all AI outputs.
- **Reject** any response that violates layer rules (e.g., an AI suggesting a hook in a JSON file).

AI should operate as an **interpreter**, not a modifier.

---

## 8. Validation Workflow

Any data entering the system must pass a three-tier validation:
- **Structural Validation**: Does it match the Symbol/Event/Registration/Pattern schema?
- **Layer Validation**: Does it exist in the correct architectural layer?
- **Reference Validation**: Does it point to real, resolvable identifiers?

---

## 9. Common Mistakes

- **Category Mismatch**: Treating JSON or CSS as if they containing execution logic.
- **Fabrication**: Storing AI-generated insights or "hallucinated" hooks as system truth.
- **Pollution**: Mixing plugin or theme logic directly into core definitions.
- **Missing Namespaces**: Failing to prefix identifiers in extensions.

---

## 10. Adoption Strategy

Start simple:
1. Use the corpus as a **reference model**.
2. Normalize a **small portion** of your system first.
3. **Validate** all outputs against the schema.
4. Expand coverage **incrementally**.

---

## Final Principle

> **If it cannot be expressed in the schema, it does not belong in the system.**

This repository provides the structure. How you apply it determines whether your system remains a collection of features or becomes a true **intelligence engine**.
