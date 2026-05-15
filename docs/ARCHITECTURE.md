# Framework Architecture

## Overview

The `llms-docs` system is governed by a multi-layered architecture designed to ensure that AI reasoning remains anchored in behavioral law and project-specific truth.

## The Four Operational Layers

### 1. Governance Layer (`AGENT-RULES.md`, `governance/`)
- **Role**: Defines the "Law" of the system.
- **Authority**: Level 0 (Highest).
- **Function**: Governs agent behavior, task classification, and remote source verification. It is immutable and takes precedence over all other layers.

### 2. Contract Layer (`contracts/`)
- **Role**: Defines the "Constitution".
- **Authority**: Level 1.
- **Function**: Establishes binding operational contracts for directory roles, load order, execution modes, and schema integrity. It defines the "shape" of allowable engineering.

### 3. Intelligence Layer (`core/`, `themes/`, `schemas/`)
- **Role**: Provides "Knowledge".
- **Authority**: Level 2.
- **Function**: Contains structured WordPress manifests and machine-parseable schemas. This is the source of truth for WordPress core and theme architecture.

### 4. Specialization Layer (`overlays/`, `examples/`)
- **Role**: Provides "Tuning".
- **Authority**: Level 3.
- **Function**: Allows for project, model, and workflow-specific specializations. Overlays can refine behavior but cannot redefine the underlying law (Layer 0-1).

## Authority Hierarchy

| Level | Layer | Role | Primary Authority |
| :--- | :--- | :--- | :--- |
| **0** | **Governance** | Behavior Law | Global Rules |
| **1** | **Contracts** | Operational Law | System Contracts |
| **2** | **Corpus** | Intelligence | Manifests |
| **3** | **Overlays** | Specialization | Project Overlays |
| **4** | **Project Source**| Final Truth | Local Files |

---

> **Key Principle**: Higher layers define what is *allowed*; lower layers define what *is*.

END OF FILE
