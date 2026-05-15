# WORDPRESS-LLMS-CONTEXT-BUDGET-CONTRACT.md

## 1. Purpose

This contract defines the rules for context loading discipline, retrieval scope, and active reasoning-window budgeting. It ensures that the agent's context is treated as a constrained operational budget, preventing retrieval bloat, authority dilution, and degraded reasoning performance.

## 2. Core Principle

> **Context is a budget, not a landfill.**
> **The best reasoning context is not the largest context; it is the most authoritative relevant context.**

## 3. Minimal Load Set (Mandatory)

To maintain architectural stability without window pollution, the agent MUST always load this minimal set:
1. `AGENT-ENTRYPOINT.md`
2. `AGENT-RULES.md`
3. Required Governance manifests for the active mode.
4. Required Contracts for the active architectural layer.
5. Task-relevant Corpus manifests only.

## 4. Task-Based Routing Rules

Agents MUST specialize context retrieval based on the task classification:

| Task Type | Required Context Layer |
| :--- | :--- |
| **PHP Task** | PHP Corpus + Execution Contracts |
| **CSS Task** | CSS Corpus + UI/Visual Contracts |
| **JS Task** | JS Corpus + Runtime/API Contracts |
| **Theme Task** | Theme Corpus + Theme Overlays |
| **Audit Task** | Verification + Confidence + Mode Contracts |

## 5. Deferred Loading and Suppression Rules

- **Deferral**: Lower-priority context MUST remain deferred until uncertainty increases, confidence drops, or execution risk escalates.
- **Suppression**: Retrieval MUST be suppressed when sufficient authoritative context exists or additional data would not materially improve confidence.

## 6. Context Retention Hierarchy

If the reasoning window becomes saturated, the agent MUST discard context in this order (lowest priority first):
1. Advisory materials and general examples.
2. Human-readable guides (`docs/`).
3. Low-weight overlays.
4. Non-essential corpus manifests.
5. **DO NOT DISCARD**: Governance, Contracts, or verified Project Source.

## 7. Remote Retrieval Discipline

Remote WordPress core verification MUST:
- Remain on-demand and targeted.
- Be used for verification-only purposes.
- NEVER preload large source trees or recursively scan repositories.
- NEVER replace local project authority in the active context.

## 8. Stop Conditions

Retrieval escalation MUST stop when:
- The confidence threshold for the current mode is satisfied.
- Authoritative source truth is confirmed.
- The mutation path is verified.
- Retrieval begins producing repetitive or low-authority context.

## 9. Failure Handling (Budget Saturation)

If the context budget is exceeded:
- Discard optional advisory material immediately.
- Prioritize narrower, deeper reasoning over broad, shallow retrieval.
- Ensure the "Reasoning Spine" (Governance + Contracts + Project Source) remains intact.

## 10. Prohibitions

- **Recursive Loading**: Automatically loading all governance or contracts without need.
- **Directory Ingestion**: Ingesting entire directories (e.g., all of `themes/` or `core/`) when only one manifest is relevant.
- **Automatic Overlay Loading**: Loading all overlays regardless of task relevance.
- **Authority Displacement**: Allowing advisory context to push out verified truth or architectural law.

## 11. Related Contracts

- `WORDPRESS-LLMS-RETRIEVAL-AND-REASONING-CONTRACT.md`: Governs the prioritization of budgeted context.

END OF FILE
