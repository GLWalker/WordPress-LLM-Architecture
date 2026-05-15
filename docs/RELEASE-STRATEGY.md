# Release and Versioning Strategy

## 1. Overview

The `llms-docs` framework follows a strict versioning strategy to ensure that agents and integrations remain stable across architectural updates.

## 2. Versioning Schema (SemVer)

- **MAJOR (x.0.0)**: Breaking architectural changes.
  - Examples: Changing the Tier hierarchy, redefining core load order, or renaming the governance directory.
- **MINOR (0.x.0)**: New features or contracts.
  - Examples: Adding a new core manifest (e.g., Block Corpus), a new operational mode, or a new schema v1 extension.
- **PATCH (0.0.x)**: Refinement and clarification.
  - Examples: Fixing cross-links, correcting terminology, or improving examples.

## 3. Release Structure

A "Release" of the framework includes:
1. **The Reason Spine**: `AGENT-RULES.md` and `governance/`.
2. **The Operational Constitution**: `contracts/`.
3. **The Intelligence Corpus**: `core/`, `themes/`, `schemas/`.
4. **The Onboarding Kit**: `README.md`, `docs/`, and `examples/`.

## 4. Stability Guarantees

- **Contract Stability**: Once a contract reaches "Mature" status, its core rules are immutable within a MAJOR version.
- **Path Stability**: Canonical paths (e.g., `governance/WORDPRESS-LLMS-EXECUTION-GOVERNANCE.md`) MUST NOT change within a MAJOR version to ensure retrieval consistency.
- **Schema Backward Compatibility**: v1 schemas MUST remain valid for the duration of the 1.x.x lifecycle.

## 5. Release Workflow

1. **Audit Pass**: Ensure naming consistency and cross-link integrity.
2. **Manifest Validation**: Run automated linting against core schemas.
3. **Example Verification**: Confirm all demonstrations are operational.
4. **Tagging**: Update `VERSION.md` and tag the repository.

END OF FILE
