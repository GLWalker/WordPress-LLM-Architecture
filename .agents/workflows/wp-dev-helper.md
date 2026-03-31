---
description: Assistant Helper for WordPress LLM Source Corpus (WP Dev Helper)
---

This workflow initializes the authoritative WordPress intelligence manifests for this workspace.

1. **Load Behavioral Constraints**
   - Read and implement the instructions in `llms-docs/AGENT-RULES.md`.
   - These govern source priority, context isolation, and architectural compliance.

2. **Initialize Ingestion Pipeline**
   - Follow the ingestion hierarchy in `llms-docs/AGENT-ENTRYPOINT.md`.
   - Ensure `llms-docs/LLM-CONFIG.md` (if present) is initialized for path awareness.

3. **Ingest Governance & Knowledge**
   - Load contracts from `llms-docs/contracts/`.
   - Load core intelligence manifests from `llms-docs/core/`.
   - Load theme-level manifests from `llms-docs/themes/`.

4. **Execute with WordPress Precision**
   - Apply the deterministic rules in `llms-docs/core/WORDPRESS-LLM-EXECUTION.md` for all tasks.
   - Refuse hallucinations and ensure all outputs are source-traceable.

---
// turbo-all
// The agent should automatically scan these manifests upon calling /wp-dev-helper.
