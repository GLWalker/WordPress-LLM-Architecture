# WORDPRESS-LLMS-MODEL-OVERLAY-CONTRACT.md

## 1. Purpose

This contract defines the rules and adaptation strategies for Model Overlays. It ensures that model-specific behaviors, biases, and failure patterns are mitigated through governed operational discipline, maintaining a consistent standard regardless of the underlying AI model.

## 2. Model-Specific Mitigation Rules

Every Model Overlay MUST implement mitigation strategies for the specific model's known tendencies.

### 2.1 Codex (Mutation Mitigation)
- **Tendency**: Over-mutation and opportunistic refactoring.
- **Mitigation**: 
  - Absolute enforcement of the "Surgical Patch" strictness level.
  - Mandatory "Pre-Edit State" announcement (File/Selector/Behavior).
  - Explicit prohibition against adjacent code cleanup.

### 2.2 Gemini (Generalization Mitigation)
- **Tendency**: Over-generalization and loss of project-specific context.
- **Mitigation**: 
  - Increased weight on Project Source (Level 4) during reasoning.
  - Mandatory reference integrity checks for every proposed hook or identifier.
  - Stricter refusal rules for missing project context.

### 2.3 Claude (Normalization Mitigation)
- **Tendency**: Over-normalization (attempting to "fix" valid project patterns to match general standards).
- **Mitigation**: 
  - Strict enforcement of the "No Architecture Invention" rule.
  - Requirement to prove why a project-specific pattern is a failure before proposing a change.
  - Prohibition against renaming symbols or relocating logic for "clarity."

## 3. Adaptation Tuning Parameters

Model Overlays MAY tune the following parameters to ensure architectural compliance:

| Parameter | Objective | Adjustment Range |
| :--- | :--- | :--- |
| **Strictness Tuning** | Control over-mutation | Low (Advisory) to Absolute (Locked) |
| **Verbosity Tuning** | Control output depth | Concise (Default) to Exhaustive (Audit) |
| **Verification Depth** | Control halluncination | Single-Pass to Recursive Verification |
| **Source Weighting** | Control generalization | Local-First vs. Corpus-First |

## 4. Model Adapters

A Model Adapter is a specialized rule set that "bridges" the model's natural behavior to the framework's governance laws.

- **Mandatory Logic**: Adapters must explicitly reference the current **Execution Mode** (e.g., Audit, Patch).
- **Deterministic Prompting**: Adapters should use consistent instruction tokens to trigger governed behavior (e.g., "SURGICAL PATCH MODE ACTIVE").

## 5. Known Failure-Pattern Mitigation

Overlays MUST include specific logic to block known failure patterns:
- **Identifier Fabrication**: Block any identifier not present in the local project or Tier 0 corpus.
- **Path Drift**: Block any proposed file creation/relocation that violates the `contracts/WORDPRESS-LLMS-DIRECTORY-ROLE-CONTRACT.md`.
- **System Invention**: Block any suggestion of new services, database schemas, or global objects not present in the verified source.

## 6. Authority

Model Overlays are Level 3 layers in the load order. They MAY specialize behavior for a specific model but MUST NOT weaken the safety rules, project-first protections, or anti-fabrication rules defined in `AGENT-RULES.md` and Level 0/1 governance.

## 7. Mental Model

> **Models differ in behavior.**
> **Governance normalizes operational discipline.**

END OF FILE
