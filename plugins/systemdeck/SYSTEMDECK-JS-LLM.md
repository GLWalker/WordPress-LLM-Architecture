# SYSTEMDECK-JS-LLM.md

## 1. Purpose

This document represents the client-side (JS/React) intelligence manifest for the SystemDeck plugin (Tier 2 Extension). It defines the React component architecture, widget runtimes, and block editor interactions.

## 2. Symbols (Logic & Components)

### Global Namespace
- **type**: symbol
- **name**: `window.systemdeck`
- **category**: core
- **description**: Client-side registry for widget instances and system-wide configuration.
- **extraction_confidence**: 1.0 (Runtime Authority)
- **usage_confidence**: 1.0 (Entrypoint)

### Widget Runtime
- **type**: symbol
- **name**: `SystemDeck.Core.WidgetRuntime`
- **category**: core
- **description**: Base controller responsible for mounting and managing lifecycle for all deck-mounted widgets.
- **extraction_confidence**: 0.7 (Core Framework)
- **usage_confidence**: 0.7 (Internal Framework)

### System Status (Widget)
- **type**: symbol
- **name**: `SystemDeck.Widgets.SystemStatus`
- **category**: widget
- **description**: React entrypoint for the system telemetry dashboard.
- **extraction_confidence**: 1.0 (Feature Symbol)

## 3. Events (Actions & Triggers)

### Interaction Triggers
- **type**: event
- **name**: `sd_widget_mount`
- **category**: action
- **trigger**: Fired when a widget is successfully mounted by the runtime.
- **description**: Hook for additional initialization (e.g., establishing polling).
- **extraction_confidence**: 0.7 (Runtime Hook)

- **type**: event
- **name**: `sd_telem_update`
- **category**: action
- **trigger**: Fired when new telemetry data is received via AJAX/REST.
- **description**: Data-binding trigger for live dashboard components.
- **extraction_confidence**: 0.7 (Feature Hook)

## 4. Registrations (Client-side)

### Block Data
- **type**: registration
- **category**: block
- **identifier**: `systemdeck/widget-placeholder`
- **arguments**: { "name": "systemdeck/widget-placeholder", "title": "SystemDeck Widget" }
- **callback**: `EditComponent.render()`
- **extraction_confidence**: 1.0 (Serialized Identifier)

### Widget Entries
- **type**: registration
- **category**: widget
- **identifier**: `notes`, `player`, `system-status`, `time-monitor`, `vault`.
- **arguments**: { "slug": "string", "icon": "string" }
- **callback**: `app.js::init()`
- **extraction_confidence**: 1.0 (Authoritative)

## 5. Standard Patterns

### Widget Initialization
- Each widget folder [**`widgets/*/`**] contains an `app.js` and `style.css`.
- Widgets utilize a standardized `app.js` entrypoint for mounting.

### Polling Mechanism
- Dashboard widgets frequently utilize `window.setInterval()` for real-time telemetry updates.
- All requests must include the namespaced AJAX action and `X-WP-Nonce` as per `GPT-SETUP.md`.

## 6. Output Discipline

- All React code must strictly adhere to the [**`src/`**] and [**`widgets/`**] implementation.
- Never invent widget slugs or property names; use those explicitly present in the source.
- Follow the **REST API rules** and **Block output rules** defined in `GPT-SETUP.md`.
