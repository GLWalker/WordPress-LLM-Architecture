# WORDPRESS-THEME-EXTENSION-GOVERNANCE-CONTRACT.md

## 1. Purpose

This contract establishes the rules for extending the WordPress LLM Source Corpus with theme-specific intelligence. It defines how a theme functions as a **Tier 2 Extension Corpus**, ensuring that theme-level additions remain compatible with Core (Tier 0) while maintaining strict layer isolation.

It ensures that:
- Themes **extend**, but do not **redefine**, WordPress architecture.
- Theme declarations are **namespaced** and **deterministic**.
- Design decisions are decoupled from execution logic.

---

## 2. Authority Hierarchy

### Tier 0 — Core Corpus (Precedence)
Tier 0 files defined in `WORDPRESS-LAYER-GOVERNANCE-CONTRACT.md` take absolute precedence.

### Tier 2 — Theme Extension Corpus
**Definition**: High-priority theme-specific intelligence files.

- **Theme Files**:
  - `{THEME}-ARCHITECTURE.md`
  - `{THEME}-JSON-LLM.md`
  - `{THEME}-CSS-LLM.md`
  - `{THEME}-TEMPLATES-LLM.md`
  - `{THEME}-PATTERNS-LLM.md`
  - `{THEME}-PHP-LLM.md` (Optional)

**Rules**:
- **MUST** represent the theme as a Tier 2 Extension.
- **MUST NOT** redefine Core Symbols, Events, or Registrations.
- **MUST** namespace theme-specific identifiers (e.g., `twentytwentyfive_setup`).

---

## 3. Layer Integrity Rules

### 3.1 JSON Layer (Declarative)
- **Included**: `theme.json` configuration, block presets, and global style metadata.
- **Rules**:
  - **NON-EXECUTABLE**: Must not describe execution logic.
  - **SYMBOLIC**: Defines the theme’s aesthetic and configuration map.

### 3.2 CSS Layer (Visual)
- **Included**: Visual realizations of JSON/PHP configuration.
- **Rules**:
  - **NON-EXECUTABLE**: Must not describe events or logic.
  - **REFLECTIVE**: Must reflect the values defined in the JSON layer.

### 3.3 Templates & Patterns Layer (Composition)
- **Included**: `templates/`, `parts/`, and `patterns/` arrangements.
- **Rules**:
  - **COMPOSITIONAL**: Describes how blocks are arranged, not how they function.
  - **NON-EXECUTABLE**: Template HTML files do not possess execution events.

### 3.4 PHP Layer (Registration & Hook)
- **Included**: `functions.php` and theme logic.
- **Rules**:
  - **REGISTRATIVE**: Primarily used for registering theme supports, block styles, and patterns.
  - **HOOK-CENTRIC**: Must describe logic as children of existing Core Hooks.

---

## 4. Record Schema Enforcement

All theme intelligence must use the standard Record Schema:

- **Symbol**: Theme-specific identifiers (e.g., custom properties, namespaced functions).
- **Event**: Hook-driven execution (Theme functions bound to Core hooks).
- **Registration**: Declarative extensions (Block styles, pattern categories).
- **Pattern**: Structural compositions (Page layouts, reusable fragments).

---

## 5. Reference Integrity

The Theme Corpus **MUST** map to Tier 0:
- **Theme Hooks** MUST bind to **Core Hooks**.
- **Theme CSS Variables** SHOULD map to **Core Global Styles**.
- **Theme Patterns** MUST be composed of **Core Blocks**.

---

## 6. Prohibited Behaviors

- **Fabrication**: Creating speculative symbols or events not explicitly present in the theme source.
- **System Elevation**: elevating a theme-level aesthetic choice to a system-level authority.
- **Runtime Mutation**: Describing the theme as a system that mutates WordPress Core.
- **Speculative Language**: Using "is" instead of "realizes" for non-core constructs.

---

## 7. Dual Confidence Model

All theme records must provide:
- **Extraction Confidence (Reliability)**: 1.0 (Public File) to 0.1 (Legacy/Inferred).
- **Usage Confidence (Safety)**: 1.0 (Stable API) to 0.1 (Experimental/Legacy).

---

## 8. Validation Requirements

Theme corpus files must pass:
- **Structural Validation**: Record conformity.
- **Layer Validation**: Layer boundary compliance.
- **Reference Validation**: Successful mapping to Tier 0 identifiers.

---

## 9. Final Principle

> A **Theme Extension Corpus** is a visual and configuration overlay on top of Core. It provides the **WHAT** (declarative styles) and **HOW** (compositions) while relying entirely on the **System Law** (Tier 0 Core) for the **WHY** (execution).
