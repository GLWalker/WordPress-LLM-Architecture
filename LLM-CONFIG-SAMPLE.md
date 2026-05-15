# LLM-CONFIG-SAMPLE.md

## Purpose

A template for LLM path awareness and environment calibration.

**Instructions**:
1. Duplicate this as `LLM-CONFIG.md`.
2. Fill in the correct local paths below.
3. This file is safe for assistant use.

---

## Workspace Configuration

### WordPress Root
`/path/to/wordpress/`

### LLM Corpus Path
`/path/to/wordpress/llms-docs/`

---

## Local Path Mapping

- **wp-content**: `/path/to/wordpress/wp-content/`
- **themes**: `/path/to/wordpress/wp-content/themes/`
- **plugins**: `/path/to/wordpress/wp-content/plugins/`
- **mu-plugins**: `/path/to/wordpress/wp-content/mu-plugins/`
- **uploads**: `/path/to/wordpress/wp-content/uploads/`

---

## Active Theme Scope

- **Theme Name**: `twentytwentyfive`
- **Theme LLM Path**: `themes/twentytwentyfive/`

---

## Remote WordPress Core Source

# Remote WordPress core source is:
# - optional
# - read-only
# - verification-only
# - lower authority than local project source

REMOTE_WP_CORE_ENABLED=true

REMOTE_WP_CORE_MODE=verification_only

REMOTE_WP_CORE_REPOSITORY=https://github.com/WordPress/wordpress-develop

REMOTE_WP_CORE_BRANCH=trunk

REMOTE_WP_CORE_RAW_BASE=https://raw.githubusercontent.com/WordPress/wordpress-develop/trunk/

---

## Notes

- This metadata is for path awareness only.
- Do not add secrets or passwords here.
- Always use absolute paths for clarity.

---

## Configuration Strategy

- Load this after `AGENT-ENTRYPOINT.md`.
- Use for local path resolution only.
- Prefer this over general knowledge.

END OF FILE
