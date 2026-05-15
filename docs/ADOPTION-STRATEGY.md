# Adoption Strategy Guide

## Overview

Adopting a governed AI architecture can feel intimidating. This guide provides a clear, step-by-step path to integrating the `llms-docs` framework into your WordPress development workflow.

## Phase 1: Ingestion (Setting Up)

**Goal**: Establish the base environment.

1. **Clone the Repository**: Place `llms-docs` in your project or a centralized location.
2. **Configure Paths**: Copy `LLM-CONFIG-SAMPLE.md` to `LLM-CONFIG.md` and set your local project paths.
3. **Initialize the Agent**: Provide `AGENT-ENTRYPOINT.md` to your AI assistant to trigger the governed load order.

## Phase 2: Governance (Enforcing Rules)

**Goal**: Stop hallucinations and enforce surgical precision.

1. **Confirm Rules**: Ask the agent to summarize the "Surgical Patch Rules" from `AGENT-RULES.md`.
2. **Set the Mode**: Start with **Audit Mode** to assess your existing code before attempting any mutations.
3. **Verify Constraints**: Ensure the agent acknowledges the **Tier 0-3 Layer Authority** before generating code.

### Phase 3: Specialization (Workflow & Model Tuning)
- Create **Project Overlays** for namespacing and directory roles.
- Create **Model Overlays** (e.g., Claude Mitigation) to counteract specific LLM tendencies.
- Create **Workflow Overlays** for scaffolding or migration tasks.

### Phase 4: Automation (The Engineering Ecosystem)
- **Bootstrap**: Use `tools/setup.sh` to initialize the framework in a new project.
- **Validate**: Use `tools/validate-manifests.js` to ensure your project manifests adhere to the core schemas.
- **Enforce**: Integrate validation into your local dev workflow or CI/CD to prevent architectural drift.

## Minimum Viable Ingestion (MVI) Checkbox

If you can check these four items, you are successfully running a governed architecture:

- [ ] Agent loads `AGENT-ENTRYPOINT.md` first.
- [ ] Agent classifies tasks (Project-Specific vs. General).
- [ ] Agent provides a "Surgical Patch Plan" before editing.
- [ ] Agent explicitly labels confidence (Confirmed vs. Inferred).

## Common Pitfalls

- **Skipping Ingestion**: Loading individual corpus files without the governance laws.
- **Authority Inversion**: Allowing a "helpful" AI suggestion to override a binding project contract.
- **Mode Drift**: Attempting to refactor code while the agent is in Surgical Patch mode.

---

> **Start simple.** 
> You don't need all manifests and overlays on day one. 
> Start with the **Rules** and **Entrypoint**, then expand as your project scales.

END OF FILE
