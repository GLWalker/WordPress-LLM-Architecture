# CODEX-WP-HANDOFF.md

## Purpose

Provides a machine-readable format for summarizing session state during transitions between AI assistants.

> **NOTICE**: This file represents the *prior* session's state. `AGENT-ENTRYPOINT.md` is always the real startup path. Do not skip ingestion steps based on the contents of this handoff document.

## 1. Previous State Summary

- **Architecture**: WordPress LLM Source Corpus (Tier 0 Core + Tier 2 Theme Extension).
- **Core Corpus**: Previously ingested and verified.
- **Theme Extension**: Previously ingested and verified (Twenty Twenty-Five).
- **Governance**: WORDPRESS-LAYER-GOVERNANCE-CONTRACT.md and WORDPRESS-THEME-EXTENSION-GOVERNANCE-CONTRACT.md applied.

## 2. Previous Ingestion Status

- [ ] ARCHITECTURE Manifests
- [ ] PHP Intelligence
- [ ] JS Intelligence
- [ ] JSON Declarative Configuration
- [ ] CSS Visual Representation
- [ ] XML Portability Interface
- [ ] Theme-Specific Architecture
- [ ] Theme-Specific Templates
- [ ] Theme-Specific Patterns

## 3. Environment Metadata

- **LLM Corpus Path**: `llms-docs/` (default)
- **Theme Path**: `themes/twentytwentyfive/`
- **Configuration**: Standard LLM-CONFIG-SAMPLE.md schema.

## 4. Critical Rules Persistent in this Session

- Core is immutable.
- JSON/CSS/XML are non-executable.
- All extensions must be Tier 2.
- All symbols/events/registrations must be namespaced.

## 5. Next Session Directive

> Continue maintaining consistent layer separation. If adding new plugin logic, follow the Extension Governance Contract. If refining themes, use the Theme Extension Governance Contract.

END OF FILE
