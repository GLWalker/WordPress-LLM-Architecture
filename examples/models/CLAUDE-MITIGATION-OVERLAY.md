# CLAUDE-MITIGATION-OVERLAY.md (Example)

## 1. Purpose

This Model Overlay mitigates the tendency of Claude models to over-normalize valid project-specific patterns to match general standards.

## 2. Behavioral Adjustments

### 2.1 Anti-Normalization Rules
- **No Cleanup for Clarity**: The agent is prohibited from renaming symbols, relocating logic, or "improving" code structure unless a specific functional failure is identified.
- **Idiom Preservation**: If a project uses a non-standard but valid WordPress pattern (e.g., custom wrapper for `wpdb`), the agent MUST use that pattern and MUST NOT suggest "standardizing" it.

### 2.2 Strictness Tuning
- **Proof of Failure**: Before proposing a change to an existing pattern, the agent MUST prove why the current implementation is a failure point according to binding contracts.
- **Refusal**: Refuse all requests for "stylistic refactoring" or "modernization" unless explicitly authorized under **Refactoring Mode**.

## 3. Mandatory Instruction Tokens

When this overlay is active, lead reasoning with:
`[CLAUDE-MITIGATION: Pattern-Preservation Mode Active]`

## 4. Enforcement

- Prioritize **Local Project Source (Level 4)** over any "Best Practice" documentation.
- Maintain the exact DOM order and class naming conventions present in the source.

END OF FILE
