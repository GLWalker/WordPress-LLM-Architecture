# WordPress LLM Source Corpus

## What This Is

This repository provides a structured WordPress intelligence corpus designed for AI agents and coding assistants. It allows agents to work against WordPress using real architecture, strict boundaries, and source-driven reasoning.

Instead of guessing or generalizing, agents operate against defined structures and verified sources.

**Official Assistant**: [WP Dev Helper (ChatGPT)](https://chatgpt.com/g/g-69c75e49ee148191bbe576260b570fa4-wp-dev-helper)

---

## The Architecture of Governance

This is not a prompt collection; it is a **behaviorally-governed engineering platform**. The framework separates **Model Capability** from **Operational Discipline**, ensuring that the model is never the authority—Governance is the authority.

### Platform Maturity Status

| Domain | Status | Operational Principle |
| :--- | :--- | :--- |
| **Behavioral Law** | **Mature** | The model follows law, not intuition. |
| **Architectural Law** | **Mature** | Layered authority (Tier 0-3) is absolute. |
| **Execution Law** | **Mature** | All mutations are surgically bounded. |
| **Verification Law** | **Mature** | Inspection is not execution; proof is required. |
| **Machine Law** | **Mature** | Knowledge is parseable and validatable. |

---

## Anti-Hallucination Protocol

The framework transforms "AI speculation" into **Traceable Reasoning States**.
- **Confidence is Governed**: All claims are explicitly labeled (**Confirmed**, **Inferred**, **Assumed**).
- **No Architecture Invention**: If a symbol is not in the Project Source or Manifest, it does not exist.
- **Generation is Mapping**: Scaffolding is a deterministic resolution of manifests, not an improvisation.

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

## Quick Start (Required for GPT / Agent Setup)

When configuring a GPT, AI Skill, or any coding assistant, paste the following into the **Custom Instructions** or **System Prompt**:

> [!TIP]
> **For AI IDEs (Cursor, Windsurf, Cody, etc.)**
> Move the `.agents/` directory from `llms-docs/` to your **Project Root**. This will activate the `/wp-dev-helper` slash command in your editor's chat interface.

```text
Start with AGENT-ENTRYPOINT.md.

This corpus provides a governed, source-aware WordPress development environment for AI agents.

Use AGENT-ENTRYPOINT.md as the loader.
Use AGENT-RULES.md as the governing behavior law.
Use the contracts in contracts/ as the architectural law.
Use the manifests in core/ as the intelligence layer.

Do not restate, simplify, or replace the referenced files.
Do not generate architecture, structure, or systems not present in the provided sources.

When project files are available, they take priority over the corpus.
If project files are not available, follow the fallback and refusal rules defined in AGENT-RULES.md.
```

---

## How It Works

The system is governed by a multi-layered architecture that isolates **Behavioral Law** from **Intelligence Corpus**.

1. **Governance & Contracts**: The "Law" and "Constitution" of the assistant.
2. **Intelligence Corpus**: Structured WordPress knowledge and manifests.
3. **Specialization**: Project and model-specific overlays.

> [!NOTE]
> For a detailed breakdown of the layer hierarchy and authority levels, see [Architecture](docs/ARCHITECTURE.md).

---

## Repository Structure

```text
llms-docs/
├── AGENT-ENTRYPOINT.md       # Agent initialization & Load Order
├── AGENT-RULES.md            # Behavioral law & enforcement
├── governance/               # Execution & Remote Source law
├── contracts/                # Architectural & Operational contracts
├── core/                     # WordPress core intelligence (Tier 0)
├── themes/                   # Theme-specific intelligence (Tier 2)
├── overlays/                 # Project & Model-specific specializations
├── schemas/                  # Machine-parseable manifest definitions
├── docs/                     # Human guides & Adoption strategy
└── examples/                 # Sample manifests and overlay templates
```

---

## Operational Readiness

The agent operates in governed **Execution Modes** (Surgical Patch, Audit, Review, etc.) and explicitly labels its **Confidence Levels** (Confirmed, Inferred, Assumed).

For the full list of operational states and binding laws, refer to the:
👉 **[Governance Index](contracts/GOVERNANCE-INDEX.md)**

---

## Core Principles

- **Source First**: All outputs must resolve to real code or defined structures.
- **Confidence is Governed**: Claims are explicitly labeled; inference is transparent.
- **Inspection is not Execution**: Source logic does not prove runtime success.
- **Parseable Governance**: Knowledge is structured for machine-precision reasoning.

---

## What You Get

- **Deterministic Reasoning**: Behavioral law prevents "mode drift."
- **Traceable Engineering**: Every claim is anchored in a verified source.
- **Model-Agnostic Stability**: Discipline is normalized across all LLMs.
- **Risk-Matched Verification**: Proof scales with the danger of the task.

---

## Contributing

To extend this corpus for plugins or themes, follow the guidance in:
`contracts/WORDPRESS-LLMS-THEME-EXTENSION-CONTRACT.md`

---

## License

GNU General Public License v2.0
