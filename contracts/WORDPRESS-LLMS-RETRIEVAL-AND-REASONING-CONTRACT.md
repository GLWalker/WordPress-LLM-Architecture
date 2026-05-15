# WORDPRESS-LLMS-RETRIEVAL-AND-REASONING-CONTRACT.md

## 1. Purpose

This contract defines the rules for context assembly, retrieval weighting, and reasoning arbitration within the framework. It ensures that the agent's internal reasoning process is governed by architectural authority rather than simple information proximity.

## 2. Retrieval Precedence and Weighting

When assembling reasoning context, the agent MUST apply the following weighting model:

| Source Type | Weight | Role |
| :--- | :--- | :--- |
| **Local Project Source** | **1.0 (Maximum)** | Absolute Truth |
| **Governance & Contracts** | **0.9** | Behavioral Constraints |
| **Local Corpus Manifests** | **0.7** | Intelligence Ground Truth |
| **Remote Core Verification** | **0.5** | Tier 0 Verification Only |
| **Overlays** | **0.4** | Specialization & Guidance |
| **Inferred Context** | **0.2** | Logical Deduction |

## 3. Retrieval Suppression Rules

A retrieved source MUST be suppressed (given 0.0 weight) if:
- It is contradicted by a source with higher weight (Conflict Arbitration).
- It is found to be **Stale** as defined in `contracts/WORDPRESS-LLMS-INGESTION-CONTRACT.md`.
- It violates **Context Isolation** rules defined in `AGENT-RULES.md`.

## 4. Conflict Arbitration

In the event of a conflict between retrieved sources:
1. **Authority Wins**: The source with the higher weight MUST be accepted as the reasoning anchor.
2. **Specificity Wins**: If weights are equal, the source with the highest specificity to the current task (e.g., project-specific vs. generic) wins.
3. **If Resolution Fails**: The agent MUST STOP, report the conflict, and request the authoritative source.

## 5. Reasoning Escalation Rules

Agents MUST escalate retrieval depth when:
- Confidence in the current reasoning context is below **Source-Traceable**.
- The task involves **Migration** or **Refactoring** modes.
- A higher-weighted source is mentioned but not yet retrieved.

## 6. Context-Window Prioritization

If context window limits are reached, the agent MUST prioritize retention in this order:
1. `AGENT-RULES.md` and active **Execution Mode** rules.
2. Verified **Project Source** relevant to the task.
3. Binding **Contracts** governing the current architectural layer.
4. **Corpus Manifests** relevant to the task.
5. *Drop first*: Speculative context, human guides, and low-weight overlays.

## 7. Retrieval Stop Conditions

Retrieval MAY stop only when:
- The reasoning context has reached **Confirmed** confidence for the target mutation.
- OR all eligible sources have been exhausted and the refusal threshold is met.

## 8. Prohibitions

- **Equal-Weight Reasoning**: Treating a human guide (0.3) with the same authority as a Contract (0.9).
- **Silent Conflict Resolution**: Resolving high-authority conflicts without notifying the user.
- **Inference-Dominant Reasoning**: Allowing Inferred Context (0.2) to drive system mutation when Confirmed Source (1.0) is missing.

## 9. Mental Model

> **Not all retrieved context deserves equal reasoning weight.**
> **Context is a governed hierarchy, not a flat collection of data.**

## 10. Related Contracts

- `WORDPRESS-LLMS-CONTEXT-BUDGET-CONTRACT.md`: Governs window-space for reasoning.
- `WORDPRESS-LLMS-INGESTION-CONTRACT.md`: Provides the raw material for retrieval.

END OF FILE
