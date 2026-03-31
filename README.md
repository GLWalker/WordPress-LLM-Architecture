# WordPress LLM Source Corpus

## What This Is

This repository provides a structured WordPress intelligence corpus designed for AI agents and coding assistants. It allows agents to work against WordPress using real architecture, strict boundaries, and source-driven reasoning.

Instead of guessing or generalizing, agents operate against defined structures and verified sources.

**Official Assistant**: [WP Dev Helper (ChatGPT)](https://chatgpt.com/g/g-69c75e49ee148191bbe576260b570fa4-wp-dev-helper)

---

## What This Solves

AI tools commonly:

- Hallucinate hooks, APIs, and file structures
- Invent plugin architecture
- Ignore WordPress standards

This corpus prevents that by enforcing:

- **Source-first reasoning**
- **Strict architectural boundaries**
- **Controlled execution behavior**

---

## How It Works

The system is composed of three layers:

1. **Entry Point** (`AGENT-ENTRYPOINT.md`)
    - Defines how the agent initializes and loads the environment.
2. **Rules Engine** (`AGENT-RULES.md`)
    - Defines behavior, constraints, and execution rules.
3. **Corpus** (`core/`, `contracts/`, `themes/`)
    - Provides structured WordPress knowledge.

---

## Quick Start (Required for GPT / Agent Setup)

When configuring a GPT, AI Skill, or any coding assistant, paste the following into the **Custom Instructions** or **System Prompt**:

> [!TIP]
> **For AI IDEs (Cursor, Windsurf, Cody, etc.)**
> Move the `.agents/` directory from `llms-docs/` to your **Project Root**. This will activate the `/wp-dev-helper` slash command in your editor's chat interface.

```text
Start with AGENT-ENTRYPOINT.md.

This corpus provides a governed, source-aware WordPress development environment for AI agents.

Use AGENT-ENTRYPOINT.md as the loader.
Use AGENT-RULES.md as the governing behavior file.
Use the corpus files as the knowledge layer.

Do not restate, simplify, or replace the referenced files.

Do not generate architecture, structure, or systems not present in the provided sources.

When project files are available, they take priority over the corpus.
If project files are not available, follow the fallback and refusal rules defined in AGENT-RULES.md.
```

---

## Repository Structure

```text
llms-docs/
├── AGENT-ENTRYPOINT.md       # Agent initialization
├── AGENT-RULES.md            # Behavior and enforcement rules
├── CODEX-WP-HANDOFF.md       # Codex-specific guidance
├── LLM-CONFIG-SAMPLE.md      # Environment configuration template
├── README.md                 # Project Overview
├── contracts/                # Governance contracts
├── core/                     # WordPress core corpus
├── themes/                   # Theme-level corpus
└── docs/                     # Supporting documentation
```

---

## Core Principles

- **Source First**: All outputs must resolve to real code or defined corpus structures.
- **No Architecture Invention**: Systems, services, and structures must not be fabricated.
- **Strict Boundaries**: WordPress layers (PHP, JS, config) are enforced.
- **Deterministic Output**: Behavior is governed, not improvised.

---

## What You Get

- Reliable WordPress code generation
- Reduced hallucination and guesswork
- Safer, reviewable outputs
- Consistent architectural decisions

---

## Contributing

To extend this corpus for plugins or themes, follow the guidance in:
`contracts/WORDPRESS-THEME-EXTENSION-GOVERNANCE-CONTRACT.md`

---

## License

GNU General Public License v2.0
