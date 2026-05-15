# WORDPRESS-LLMS-EXECUTION-MODE-CONTRACT.md

## 1. Purpose

This contract defines the governed operational states (Execution Modes) of the AI agent. It ensures that the agent's reasoning, mutation strictness, and reporting depth are aligned with the specific task type and architectural constraints.

## 2. Core Execution Modes

### 2.1 Surgical Patch Mode (Default)
- **Objective**: Target a specific failure point with the smallest valid change set.
- **Rules**:
  - No refactoring or cleanup.
  - No renaming or relocation.
  - Must state exact files and selectors before editing.
- **Output**: Patch report only.

### 2.2 Audit Mode
- **Objective**: Deep assessment of existing code, structure, or compliance.
- **Rules**:
  - ZERO mutation allowed.
  - Focus on traceability and contract compliance.
  - Identify risks, stale paths, and architectural violations.
- **Output**: Detailed audit report with specific file/line references.

### 2.3 Review Mode
- **Objective**: Evaluate proposed or existing code against WordPress standards and project contracts.
- **Rules**:
  - Advisory only.
  - Suggest improvements without applying them.
  - Focus on performance, security, and pattern alignment.
- **Output**: Review feedback with specific rationale.

### 2.4 Scaffolding Mode
- **Objective**: Generate new files or structures based on deterministic manifests.
- **Rules**:
  - Must follow established templates and naming conventions.
  - Must not modify existing core or governance files.
  - All new identifiers must be namespaced.
- **Output**: New files and structural overview.

### 2.5 Migration Mode
- **Objective**: Controlled relocation or upgrade of logic and structures.
- **Rules**:
  - Must verify all call sites and load paths before moving.
  - Must provide a mapping of old paths to new paths.
  - Must ensure backward compatibility or state deprecation clearly.
- **Output**: Relocation report and path audit.

### 2.6 Refactoring Mode
- **Objective**: Broad structural changes to improve code quality or architecture.
- **Rules**:
  - REQUIRES explicit user authorization for "Refactor".
  - Must provide a before/after architectural impact assessment.
  - Limited to the specified scope.
- **Output**: Structural change report and verification status.

## 3. Mode Transitions

- Agents MUST NOT switch modes without task-based justification.
- If a task requires multiple modes (e.g., Audit then Patch), the agent MUST complete the current mode's requirements before transitioning.
- Transitions to higher-risk modes (Migration, Refactoring) require explicit confirmation.

## 4. Behavior Tuning

| Mode | Mutation Strictness | Reasoning Depth | Reporting Depth |
| :--- | :--- | :--- | :--- |
| **Surgical Patch** | Absolute | Task-Focused | Minimal |
| **Audit** | Locked (Zero) | Exhaustive | High |
| **Review** | Advisory Only | High | Contextual |
| **Scaffolding** | New Files Only | Pattern-Based | Structural |
| **Migration** | Relocation Only | Dependency-Deep | Audit-Level |
| **Refactoring** | Scope-Limited | Architectural | Impact-Focused |

## 5. Prohibitions

- **Mode Drift**: Using Audit mode to slip in "minor improvements."
- **Unauthorized Refactoring**: Performing broad cleanup while in Surgical Patch mode.
- **Silent Migration**: Moving code without a verified path audit.
- **Fabricated Scaffolding**: Inventing structures not defined in the corpus manifests.

## 6. Enforcement

The current Execution Mode is determined by task classification (as defined in `governance/WORDPRESS-LLMS-EXECUTION-GOVERNANCE.md`). If the required mode conflicts with the user's intent or global `AGENT-RULES.md`, the agent MUST prioritize `AGENT-RULES.md` and request clarification.

## 7. Related Contracts

- `WORDPRESS-LLMS-VERIFICATION-WORKFLOW-CONTRACT.md`: Defines required proof per mode.
- `WORDPRESS-LLMS-CONFIDENCE-CONTRACT.md`: Defines certainty labels for mode reporting.

END OF FILE
