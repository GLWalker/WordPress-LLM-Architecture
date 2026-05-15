# Governance Index

## 1. Overview

This index provides a centralized directory of the laws, contracts, and rules governing the `llms-docs` architecture. Use this to quickly locate the authoritative source for any architectural or behavioral question.

## 2. Foundational Law

| Document | Purpose |
| :--- | :--- |
| **AGENT-RULES.md** | Core behavior, source priority, and refusal law. |
| **AGENT-ENTRYPOINT.md** | Bootstrapper and ingestion sequence. |

## 3. Architectural Law

| Document | Purpose |
| :--- | :--- |
| **DIRECTORY-ROLE-CONTRACT.md** | Defines allowed content for each folder. |
| **LAYER-GOVERNANCE-CONTRACT.md** | Tier 0-3 authority and boundary definitions. |
| **LOAD-ORDER-CONTRACT.md** | Deterministic load sequence and override rules. |

## 4. Operational Law

| Document | Purpose |
| :--- | :--- |
| **EXECUTION-MODE-CONTRACT.md** | Governs Audit, Patch, Migration, and Review modes. |
| **VERIFICATION-WORKFLOW-CONTRACT.md** | Defines how to prove success and resolve gaps. |
| **CONFIDENCE-CONTRACT.md** | Certainty levels (Confirmed, Inferred, Assumed). |
| **INGESTION-CONTRACT.md** | Ingestion authority, freshness, and suppression. |
| **RETRIEVAL-AND-REASONING-CONTRACT.md** | Context weighting and conflict arbitration. |
| **CONTEXT-BUDGET-CONTRACT.md** | Minimizing context window pollution. |

## 5. Specialization Law

| Document | Purpose |
| :--- | :--- |
| **OVERLAY-CONTRACT.md** | How to extend behavior without redefining law. |
| **MODEL-OVERLAY-CONTRACT.md** | Adapting to Codex, Gemini, and Claude behaviors. |

## 6. Machine Law

| Document | Purpose |
| :--- | :--- |
| **SCHEMA-CONTRACT.md** | Governing machine-parseable manifests and validation. |

---

## Mental Model Map

- **I want to know how to behave** → `AGENT-RULES.md`
- **I want to know if I can move this file** → `DIRECTORY-ROLE-CONTRACT.md`
- **I want to know how much to verify** → `VERIFICATION-WORKFLOW-CONTRACT.md`
- **I want to know which source wins** → `LOAD-ORDER-CONTRACT.md`

END OF FILE
