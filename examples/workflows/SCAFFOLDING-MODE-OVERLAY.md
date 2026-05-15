# SCAFFOLDING-MODE-OVERLAY.md (Example)

## 1. Purpose

This Workflow Overlay specializes agent behavior for Scaffolding Mode, ensuring deterministic generation of new logic and structures from verified manifests.

## 2. Generation Constraints

- **Manifest Dominance**: Every new class, function, or registration MUST resolve to a record in an authorized manifest (e.g., `examples/manifests/PROJECT-X-SYMBOLS.json`).
- **Template Fidelity**: Use only the approved boilerplate defined in `governance/templates/` (if present).
- **Namespacing**: Automatically apply the `ProjectX\Core\` namespace to all new PHP files.

## 3. Specialized Execution Rules

- **Pre-Flight Check**: Before generation, the agent MUST confirm that the target directory role allows the new file type (as per `DIRECTORY-ROLE-CONTRACT.md`).
- **Conflict Handling**: If a file already exists at the target path, the agent MUST NOT overwrite it; it must stop and request instructions.

## 4. Reporting

Scaffolding reports MUST include:
1. **Source Manifest**: Which record triggered the generation.
2. **New Path**: The absolute path of the generated file.
3. **Namespacing**: Confirmation of the applied namespace.

## 5. Mental Model

> **Generation is a mapping, not an invention.**
> **The manifest is the only architect.**

END OF FILE
