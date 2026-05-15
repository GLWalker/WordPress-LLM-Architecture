# SYSTEMDECK-OVERLAY.md (Operational Example)

## 1. Purpose

This overlay specializes behavior for the SystemDeck plugin ecosystem, ensuring all new logic follows the established internal architecture.

## 2. Project-Specific Constraints

- **Namespacing**: All new widget logic MUST be namespaced under `SystemDeck\Widgets\`.
- **Directory Roles**: 
  - New Widget classes MUST reside in `src/Widgets/`.
  - Registration logic MUST reside in `core/Assets.php`.
- **Naming**: Widget identifiers must use the `sd-widget-` prefix.

## 3. Specialized Execution Rules

- **Surgical Patch Strictness**: When modifying `core/Assets.php`, the agent MUST verify that the new widget is also registered in the `SYSTEMDECK-WIDGET-SYMBOLS.json` manifest.
- **Verification**: Runtime verification of the `sd-common` style handle is required for all UI-related changes.

## 4. Mental Model

> **SystemDeck widgets are atomic extensions.**
> **The manifest is the source of registration truth.**

END OF FILE
