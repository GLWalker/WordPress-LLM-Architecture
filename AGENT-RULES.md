# AGENT-RULES.md

Start with `AGENT-ENTRYPOINT.md`.

If `LLM-CONFIG.md` does not exist:

- Create it from `LLM-CONFIG-SAMPLE.md`
- Populate only safe local environment paths
- Do not invent or infer missing environment data

## 1. Source Priority (Strict)

1. Local project code
2. `LLM-CONFIG.md`
3. Local corpus files
4. WordPress core behavior
5. Official WordPress documentation
6. External sources (only if required)

## 2. Task Classification (Required)

Before executing any task, the agent MUST classify it as one of:

- **Project-Specific**: The task involves user plugins, themes, provided codebase files, or references specific project paths, filenames, or architecture.
- **General WordPress**: The task involves generic WordPress functionality not tied to a specific project codebase.

**Decision criteria**:

- Mentions user files, paths, plugins, or themes → **Project-Specific**
- Mentions project architecture, internal structure, or named systems → **Project-Specific**
- Generic WordPress API, hook, pattern, or standards question → **General WordPress**

If classification is uncertain → default to **Project-Specific**.

This classification MUST occur BEFORE any generation or execution.

## 3. Scope and Precedence

- Section 4 (Plugin / Theme Corpus Rules) applies ONLY to **Project-Specific** tasks.
- Section 5 (Execution Mode) applies ONLY to **General WordPress** tasks.
- If a task is classified as **Project-Specific**, the agent MUST NOT invoke Section 5 to override Section 4.
- If a task is classified as **General WordPress**, the agent MAY proceed under Section 5 without requiring project source.

## 4. Plugin / Theme Corpus Rules (Critical)

**Applies to: Project-Specific tasks only.**

- Scan local project before generating plugin/theme output

**If source exists**:

- Generate strictly from actual code
- Do not infer or normalize structure

**If source does NOT exist**:

- Request required files
- Do not generate

**If partial source exists**:

- Generate only verified content
- Clearly label inferred sections

The agent MUST NOT:

- Reconstruct architecture from memory
- Invent systems, services, or structure

## 5. Execution Mode (Mandatory)

**Applies to: General WordPress tasks only.**

When a task is provided:

- You MUST attempt to complete the task using available sources
- You MUST NOT stop early if a safe WordPress-compliant solution exists
- You MUST produce working, reviewable output

Refusal is ONLY allowed when:

- Required source code is missing AND exact mapping is required
- OR the task requires inventing unknown architecture

Otherwise:

- Proceed using the safest valid implementation

## 6. Context Isolation (Critical)

- Only use defined source priority
- Never use prior conversation, memory, or external knowledge
- If not present in sources → treat as unknown
- Do not import external architectures or terminology

## 7. Core Execution Rules

- Prefer WordPress-native patterns
- Do not invent hooks, APIs, file paths, or architecture
- Keep output minimal, explicit, and reviewable
- Separate confirmed facts from assumptions

## 8. Document Generation

Before generating any document, classify as:

- **CONTRACT**
- **LLM SOURCE FILE**
- **HUMAN GUIDE**

Do not proceed without classification.

**Definition of "document"**: A document is a markdown file, contract, or corpus file intended for the `llms-docs/` package. Runtime outputs such as PHP, JavaScript, CSS, or code snippets are NOT documents and are NOT subject to this classification rule.

## 9. Contract Rules

- Binding language only
- No advisory phrasing
- No implementation code
- Do not redefine higher-level behavior

Include file tree ONLY when governing:

- Filesystem
- Loading
- Runtime boundaries

### 9.1 Contract Source Traceability (Critical)

- Every statement MUST be traceable to local code

**MUST NOT**:

- Generalize structure
- Normalize architecture
- "Clean up" filesystem

**Filesystem sections MUST reflect**:

- Actual directories
- Real nesting
- Real organization

If uncertain:

- Omit
- Or mark **INFERRED** (non-binding)

**CONTRACT** = what exists, not what should exist.

## 10. LLM Source File Rules

- Static and machine-readable only
- No system design or runtime flow
- No ingestion or scanning logic
- No toolchain or process descriptions
- No invented terminology

## 11. General Document Rules

- Do not mix **CONTRACT** and **LLM SOURCE** behavior
- Do not introduce undefined architecture terms
- All terminology must originate from project sources

## 12. Context Handling

If required context is missing:

- Request exact files needed
- Do not proceed

If exact mapping depends on unseen files:

- Pause
- Do not guess

## 13. Fallback

Applies only to: General WordPress tasks.

- Provide **STANDARD WORDPRESS EXAMPLE** only when safe
- Clearly label all assumptions
- Never present examples as real structure

## 14. WordPress Rules

### 14.1 REST API

- Register routes on `rest_api_init`
- Always include `permission_callback`
- Use `X-WP-Nonce` for authenticated requests
- Do not claim nonce validation unless implemented

### 14.2 Blocks

- Use only valid core block attributes
- Prefer `core/cover` for background images
- Output valid serialized block HTML
- Do not simulate unsupported behavior

## 15. Examples (Important)

When generating plugin/block examples:

- No `npm`, build tools, or compilation steps
- No `package.json` or tooling
- Assume pre-built assets or focus on structure only

**For CPT content**:

- `sanitize_textarea_field()` → plain text
- `wp_kses_post()` → limited HTML

**Always label**:

- Storage model
- Capability
- File structure assumptions
- Naming conventions

All names are placeholders unless confirmed.

## 16. File Modification Rules

- Never replace full files without full context
- Never assume internal structure

If unknown:

- Provide safe insertion pattern
- Or request file

If partially known:

- May reference file
- May add new files
- May NOT rewrite or assume internals

## 17. Output Discipline

- Lead with the answer
- Keep output concise and structured
- No filler or conversational language
- Prefer partial accuracy over speculation

## 18. Enforcement

If a response would violate:

- Source priority
- Task classification
- Context isolation
- Missing context rules
- File modification rules

→ **STOP** and request required files
