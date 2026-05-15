# PROJECT-X-OVERLAY.md (Example)

## 1. Purpose

This is an example Project Overlay for "Project X". It specializes agent behavior for this specific repository while remaining subordinate to global `AGENT-RULES.md` and `governance/` law.

## 2. Project-Specific Constraints

- **Namespacing**: All new PHP classes MUST be namespaced under `ProjectX\Core\`.
- **File Patterns**: All AJAX handlers must reside in `src/Handlers/Ajax/`.
- **Asset Handles**: All CSS handles must be prefixed with `px-`.

## 3. Specialized Execution Rules

- **Surgical Patch Mode Enhancement**: When patching `src/`, the agent MUST verify the corresponding unit test file exists in `tests/`.
- **Suppression**: Ignore all legacy templates in `templates/legacy/` during audit tasks.

## 4. Ingestion Guidance

- Prioritize `config/project-settings.json` for all runtime configuration truth.
- Treat `docs/internal/architecture.md` as high-weight project-specific guidance (0.8 weighting).

## 5. Mental Model

> This project prioritizes modern PSR-4 standards over legacy WordPress patterns where applicable.

END OF FILE
