# WORDPRESS-LLMS-OVERLAY-CONTRACT.md

## 1. Purpose

This contract defines the rules, scope, inheritance model, and limitations for overlays within the `llms-docs/` governance architecture. Overlays are subordinate extension layers that allow for specialized behavior and execution tuning without redefining governance authority or core corpus behavior.

## 2. Definition of Overlays

An overlay is a subordinate extension layer applied after governance and contracts are loaded. 

### 2.1 Capabilities
Overlays MAY:
- Extend behavior rules for specific use cases.
- Add stricter project-specific rules.
- Add model-specific execution tuning (e.g., verbosity, patch strictness).
- Add environment-specific guidance.
- Add workflow-specific specialization (e.g., audit mode, review mode).
- Add additional execution constraints.

### 2.2 Constraints
Overlays MUST remain subordinate to:
- `AGENT-RULES.md`
- Governance manifests
- Contracts
- Source priority rules
- Context isolation rules

## 3. Overlay Categories

### 3.1 Project Overlay
- **Purpose**: Project-specific rules, architecture guidance, runtime constraints, and repository-specific behavior.
- **Examples**: Plugin overlays, theme overlays, enterprise-specific project rules.

### 3.2 Model Overlay
- **Purpose**: Model-specific execution tuning, verbosity constraints, patch strictness, and mitigation for known model behaviors.
- **Examples**: Codex-specific, Gemini-specific, or Claude-specific overlays.

### 3.3 Environment Overlay
- **Purpose**: Editor/runtime environment specialization, local filesystem guidance, and CI/CD vs. local execution constraints.

### 3.4 Workflow Overlay
- **Purpose**: Specialization for specific modes of operation (e.g., Audit Mode, Surgical Patch Mode, Architecture Review Mode).

## 4. Precedence and Authority

### 4.1 Resolution Order
The load order and authority hierarchy is:
1. **Governance** (Highest)
2. **Contracts**
3. **Core Corpus**
4. **Overlays**
5. **Project Source** (Authoritative Truth)

### 4.2 Authority Limits
- Project source MUST remain a higher authority than overlays.
- Overlays MUST NOT override source hierarchy, context isolation, refusal rules, or contract authority.
- Overlays MAY only narrow behavior, specialize execution, or add additional requirements/constraints.

## 5. Strict Prohibitions

Overlays MUST NOT:
- Redefine governance authority or source hierarchy.
- Replace or override existing contracts.
- Modify or replace core corpus definitions.
- Redefine architectural layers.
- Inject hidden assumptions or bypass refusal/isolation rules.
- Claim knowledge of project structure without valid project source.
- Redefine WordPress core behavior.

### 5.1 Model Overlay Restrictions
Model overlays MUST NOT weaken safety rules, project-first behavior, or anti-fabrication rules.

### 5.2 Project Overlay Restrictions
Project overlays MUST NOT normalize architecture, invent runtime systems, or assume filesystem structures not present in the source.

## 6. Filesystem Guidance

Recommended organizational structure within the `overlays/` directory:
- `overlays/projects/`
- `overlays/models/`
- `overlays/environments/`
- `overlays/workflows/`

This structure is for organization only; the system does not require all directories to be present.

## 7. Enforcement Rules

If an overlay conflicts with governance, contracts, source hierarchy, or context isolation, the overlay MUST be ignored. Governance and contracts always maintain precedence.

## 8. Mental Model

> **Overlays specialize behavior.**
> **They do not redefine truth.**

END OF FILE
