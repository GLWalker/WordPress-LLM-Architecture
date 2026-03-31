# WORDPRESS-JS-LLM.md

## 1. Purpose

This document represents the client-side interaction and state layer of the WordPress core.

## 2. Scope

- **Included**: Block editor APIs, React lifecycle, and data store events (`@wordpress/data`).
- **Excluded**: PHP hooks, CSS styling, and JSON configuration.

## 3. Core Constructs

- **Symbols**: Block types, actions, and selectors.
- **Events**: Store events, block registration lifecycle, and DOM events.
- **Registrations**: Block type declarations.
- **Patterns**: Store interaction and UI lifecycle.

## 4. Rules

- **CLIENT-ONLY**: Does not possède server-side execution triggers.
- State management only: Manages the active state of the block editor.

END OF FILE
