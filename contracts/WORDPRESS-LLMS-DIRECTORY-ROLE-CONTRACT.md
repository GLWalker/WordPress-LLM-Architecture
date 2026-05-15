# WORDPRESS-LLMS-DIRECTORY-ROLE-CONTRACT.md

## 1. Purpose

This contract defines the authoritative role and allowed content for each top-level directory within the `llms-docs/` repository. It ensures a strict separation of concerns between agent behavior law (Governance), architectural enforcement (Contracts), and WordPress intelligence (Corpus).

## 2. Directory Roles and Responsibilities

### 2.1 `governance/`
- **Role**: Agent Behavior Law.
- **Allowed Content**: Execution routing, task classification rules, remote source verification logic, and mandatory agent behavioral constraints.
- **Authority**: High. Overrides all files except `AGENT-RULES.md`.

### 2.2 `contracts/`
- **Role**: Architectural Enforcement.
- **Allowed Content**: Binding architectural contracts, layer enforcement (Tier 0-3), filesystem and runtime boundary definitions, and extension rules.
- **Authority**: High. Defines the immutable "laws" of the system structure.

### 2.3 `core/`
- **Role**: WordPress Intelligence Corpus.
- **Allowed Content**: Source-layer knowledge manifests for PHP, JavaScript, JSON, CSS, and XML. Records for Symbols, Events, Registrations, and Patterns.
- **Authority**: Tier 0 Ground Truth.
### 2.4 `themes/`
- **Role**: Theme Extension Corpus.
- **Allowed Content**: Theme-specific Tier 2 intelligence manifests and patterns.
- **Prohibition**: MUST NOT contain global governance or core logic.

### 2.5 `plugins/`
- **Role**: Plugin Extension Corpus.
- **Allowed Content**: Plugin-specific Tier 2 intelligence manifests and patterns.
- **Prohibition**: MUST NOT contain global governance or core logic.

### 2.6 `docs/`
- **Role**: Human Guidance.
- **Allowed Content**: Human-readable guides, adoption strategies, and explanatory documentation.
- **Prohibition**: MUST NOT override governance or contracts unless explicitly marked as a "Binding Guide" (rare).

### 2.6 `config/`
- **Role**: Environment and Source Configuration.
- **Allowed Content**: Environment configuration templates (e.g., `LLM-CONFIG-SAMPLE.md`) and source resolution examples.
- **Prohibition**: MUST NOT contain behavior law.

### 2.7 `remote-sources/`
- **Role**: Remote Source Identity.
- **Allowed Content**: Approved remote source manifests, repository identity metadata, and branch/tag policies.
- **Prohibition**: MUST NOT contain execution logic or imply local project authority.

### 2.8 `overlays/`
- **Role**: Project-Specific Extensions.
- **Allowed Content**: Workspace-specific or model-specific additions (e.g., Notes, Pins).
- **Prohibition**: MUST NOT redefine core manifests; must remain subordinate to global governance.

### 2.10 `tools/`
- **Role**: Automation and Validation.
- **Allowed Content**: Setup scripts, manifest validators, and environment utilities.
- **Prohibition**: MUST NOT contain architectural law.

### 2.11 `examples/`
- **Role**: Operational Reference.
- **Allowed Content**: Sample manifests, walkthroughs, and specialized workflow/model templates.
- **Prohibition**: MUST NOT be used as project source or primary governance.

## 3. Strict Prohibitions

To prevent taxonomic drift, the following rules are immutable:

- **Separation of Law and Knowledge**: `core/` manifests must describe *what WordPress is*, while `governance/` documents describe *how the agent must behave*.
- **Reference Integrity**: `overlays/` and `remote-sources/` must reference real identifiers defined in `core/` or `themes/`.
- **Instruction Isolation**: `contracts/` must remain binding and technical; they must not contain tutorials or conversational guidance.
- **Authority Hierarchy**: `docs/` are advisory; in any conflict, `governance/` or `contracts/` take precedence.

## 4. Enforcement

Any file added to the repository MUST be classified into one of these roles. Files found in incorrect directories (e.g., execution rules in `core/`) must be relocated or treated as invalid during agent ingestion.

END OF FILE
