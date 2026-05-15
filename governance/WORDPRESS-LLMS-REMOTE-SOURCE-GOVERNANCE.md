# WORDPRESS-LLMS-REMOTE-SOURCE-GOVERNANCE.md

## 1. Purpose

This document defines the rules and governance for using remote WordPress core sources as a Remote Core Verification Authority when local WordPress core files are unavailable.

## 2. Approved Remote Sources

Approved remote sources are limited to official WordPress development repositories:

- **Repository**: `https://github.com/WordPress/wordpress-develop`
- **Raw Base**: `https://raw.githubusercontent.com/WordPress/wordpress-develop/trunk/`

## 3. Authority Classification

- **Classification**: Remote Core Verification Authority.
- **Precedence**: Lower than local project source and local corpus files.
- **Status**: Read-only and verification-only.

## 4. Allowed Usage (Verification-Only)

Agents MAY use the remote source to verify standard WordPress core behavior, including:

- **Hooks**: Core actions and filters.
- **Functions**: Standard WordPress core functions.
- **Assets**: Core script and style handles.
- **Lifecycle**: Admin and frontend boot sequences.
- **Internals**: Media modal, block editor, and REST API core logic.
- **Templates**: Core WordPress templates and partials.

## 5. Prohibited Usage (Strict)

Agents MUST NOT use the remote source to infer or assume any of the following:

- **Plugin Architecture**: Structure, logic, or hooks provided by plugins.
- **Theme Architecture**: Custom theme structure or logic.
- **Project Structure**: Local file organization or naming conventions.
- **Custom Logic**: Any hooks, services, or REST routes not part of WordPress core.
- **Local Handles**: Asset handles registered by plugins or themes.
- **Runtime Systems**: Local database schemas or custom storage models.

## 6. Verification-Only Rules

- The remote source is used to confirm "how WordPress works," not "how this project works."
- If the remote source conflicts with local project code, the local project code MUST be followed.
- Do not use remote source retrieval to simulate or replace local asset loading.

## 7. Branch and Tag Policy

- By default, the `trunk` branch (or `master`) should be used for verification.
- Specific tags MAY be used if the local WordPress version is known and requires version-specific verification.

## 8. Remote Source Behavior

- All access is stateless and read-only.
- No local caching, indexing, or background synchronization of the remote source is permitted under this governance.
- Remote source data must be treated as transient verification metadata.

## 9. Enforcement

This governance file is subordinate to `AGENT-RULES.md`. Any conflict between this document and `AGENT-RULES.md` must be resolved in favor of `AGENT-RULES.md`.

END OF FILE
