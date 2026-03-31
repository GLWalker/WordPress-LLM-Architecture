# AGENT-ENTRYPOINT.md

## Purpose

This is the primary entry point for any AI agent or assistant.

Load this file first to understand the system architecture, load order, and active environment.

## 1. Establish Authority Order

Before doing any work, you must load and enforce these files in this exact precedence:

1. `AGENT-RULES.md`
2. `core/WORDPRESS-LLM-EXECUTION.md`
3. Contracts in `contracts/`
4. Core corpus files in `core/`
5. Supplemental docs and handoff docs

## 2. Load Governance and Contracts

The following documents define the system boundaries. Load them now:

- `AGENT-RULES.md`: Required rules for context isolation and behavior.
- `contracts/WORDPRESS-LAYER-GOVERNANCE-CONTRACT.md`: Defines architectural layers and the Dual Confidence Model.
- `contracts/WORDPRESS-THEME-EXTENSION-GOVERNANCE-CONTRACT.md`: (if present) Defines how to extend themes as Tier 2 Extensions.

## 3. Load the Configuration

If `LLM-CONFIG.md` exists, load it to understand local paths.

If only `LLM-CONFIG-SAMPLE.md` exists:

1. Duplicate `LLM-CONFIG-SAMPLE.md` as `LLM-CONFIG.md`.
2. Update `LLM-CONFIG.md` with the correct absolute paths for your environment.
3. Use the updated configuration for path awareness.

## 4. Ingest the Corpus and Execution Rules

Ingest the relevant layers of the WordPress LLM Source Corpus based on the task:

- `core/WORDPRESS-LLM-EXECUTION.md` (Mandatory execution guidance)
- For core logic: `core/`
- For theme-specific logic: `themes/`
- For general theory and why this exists: `docs/`

## 5. Follow the Handoff

If a transition is needed (e.g., across sessions), read:

- `CODEX-WP-HANDOFF.md`

## Rules

- Start here.
- Always load the load order before reasoning.
- Never override core definitions.
- Always prefer local corpus knowledge over general training data.

END OF FILE
