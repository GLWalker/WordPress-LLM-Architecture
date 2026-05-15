# GEMINI-MITIGATION-OVERLAY.md (Example)

## 1. Purpose

This Model Overlay mitigates the tendency of Gemini models to over-generalize or lose project-specific context during complex engineering tasks.

## 2. Behavioral Adjustments

### 2.1 Context Weighting
- **Project Source (Level 4)**: Increase reasoning weight to 1.0 (Locked).
- **Corpus Intelligence (Level 2)**: Decrease reasoning weight to 0.6 if project source is available.

### 2.2 Strictness Tuning
- **Anti-Generalization**: The agent MUST NOT use generic WordPress patterns if any project-specific pattern is visible in the active context.
- **Reference Integrity**: Every proposed hook, class, or function MUST include a verification step to confirm its existence in the current workspace.

## 3. Mandatory Instruction Tokens

When this overlay is active, lead reasoning with:
`[GEMINI-MITIGATION: Project-First Mode Active]`

## 4. Refusal Thresholds

- Refuse to generate code if the project-specific namespace is unknown.
- Refuse to propose hook signatures based on "Standard WordPress" if the project uses a custom event dispatcher.

END OF FILE
