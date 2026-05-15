# WORDPRESS-LLMS-INGESTION-CONTRACT.md

## 1. Purpose

This contract defines the rules for source ingestion, classification, and weighting within the framework. It ensures that the agent's knowledge layer is constructed according to a deterministic authority hierarchy, preventing stale, ineligible, or low-authority sources from polluting the reasoning context.

## 2. Ingestion Sequence (Deterministic)

Agents MUST ingest sources in the order defined by `contracts/WORDPRESS-LLMS-LOAD-ORDER-CONTRACT.md`. This sequence ensures that behavioral laws are established before intelligence is ingested.

## 3. Ingestion Eligibility

A source is eligible for ingestion ONLY if:
- It resides within the approved directory structure defined in `contracts/WORDPRESS-LLMS-DIRECTORY-ROLE-CONTRACT.md`.
- It matches a supported file type (e.g., `.md`, `.php`, `.js`, `.json`, `.css`, `.xml`).
- It does not violate security or context isolation rules.
- It is not explicitly suppressed by an overlay or governance rule.

## 4. Ingestion Authority and Conflict Handling

### 4.1 Tiered Authority
- **Primary Authority**: Local Project Source (Level 4).
- **Secondary Authority**: Local Corpus Manifests (Level 2).
- **Tertiary Authority**: Remote Verification Authority (Level 3 - Read/Verify Only).

### 4.2 Conflict Resolution
- If two sources of different authority tiers conflict, the source with the HIGHER authority tier MUST be ingested as the ground truth.
- If two sources of the SAME authority tier conflict, the agent MUST pause and request clarification or prioritize the source with the most recent timestamp (Freshness).

## 5. Ingestion Freshness Policy

- **Live Ingestion**: Project source files MUST be ingested directly from the filesystem during the session to ensure absolute freshness.
- **Cache Policy**: Governance and Corpus files MAY be cached for performance, but their integrity MUST be verified against the manifest at the start of each session.
- **Stale Handling**: If a source is found to be out of sync with the manifest or filesystem, it MUST be treated as **Unverifiable** until re-ingested.

## 6. Ingestion Suppression Rules

An eligible source MUST be suppressed (ignored) if:
- It is marked as **DEPRECATED** in the manifest.
- It resides in a directory that has been explicitly excluded via `LLM-CONFIG.md`.
- It contains architectural patterns that violate Level 0/1 governance (e.g., a "Tier 0" plugin).

## 7. Ingestion Fallback Policy

- If a mandatory source (Level 0/1) is missing: **STOP** and request.
- If a secondary source (Level 2 Intelligence) is missing: Fall back to **Remote Verification Authority**.
- If no intelligence source is available: Fall back to **Standard WordPress Example** mode.

## 8. Enforcement

Agents MUST NOT perform "partial ingestion" of mandatory governance files. If the ingestion pipeline is interrupted, the agent's current state MUST be considered invalid until a full re-initialization is completed.

## 9. Mental Model

> **Not all sources are equally ingestible.**
> **Ingestion is a governed process, not a retrieval task.**

## 10. Related Contracts

- `WORDPRESS-LLMS-LOAD-ORDER-CONTRACT.md`: Defines the mandatory ingestion sequence.
- `WORDPRESS-LLMS-RETRIEVAL-AND-REASONING-CONTRACT.md`: Governs how ingested data is weighted.

END OF FILE
