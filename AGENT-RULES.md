# AGENT-RULES.md

Start with `AGENT-ENTRYPOINT.md`.

If `LLM-CONFIG.md` does not exist:

- Create it from `LLM-CONFIG-SAMPLE.md`
- Populate only safe local environment paths
- Do not invent or infer missing environment data

## 1. Source Priority (Strict)

1. Local project source
2. `LLM-CONFIG.md`
3. Local corpus files
4. Official remote WordPress core source (if configured)
5. WordPress core behavior
6. Official WordPress documentation
7. External sources (only if required)

## Remote WordPress Core Source Rules

When local WordPress core files are unavailable, the agent MAY verify WordPress core behavior against the configured official remote WordPress core source.

The remote source is:

- read-only
- verification-only
- lower authority than local project source

The remote source MUST NOT be used to infer:

- plugin architecture
- theme architecture
- project structure
- custom hooks
- custom services
- custom runtime systems
- local asset handles
- local file paths

The remote source MAY only be used for WordPress core verification.

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

## 7.1 Surgical Patch Rules

When modifying code, the agent MUST operate as a surgical patch agent unless the user explicitly requests a broader refactor.

Before editing, the agent MUST state:

1. Exact file(s) to be touched.
2. Exact selector, function, hook, region, or behavior to be changed.
3. Exact areas that will not be touched.

The agent MUST NOT begin implementation without a clearly defined task or objective.

If intent is unclear, the agent MUST request clarification before making changes.

Referencing a file, selector, function, hook, or behavior does not imply permission to modify it.

Before editing, the agent MUST locate the exact existing implementation.

The agent MUST NOT edit from assumption.

During editing, the agent MUST:

- Use the smallest valid change set.
- Preserve existing DOM order unless explicitly requested.
- Preserve existing class names unless explicitly requested.
- Preserve existing event contracts.
- Avoid unrelated cleanup.
- Avoid opportunistic refactors.
- Avoid renaming unless explicitly requested.
- Avoid relocating code unless explicitly requested.

If the task requires changing more than requested, the agent MUST stop and request approval.

Before removing or relocating code, the agent MUST verify:

- Load paths.
- Call sites.
- Runtime references.
- Safety of removal or relocation.

The agent MUST NOT assume unused code is safe to remove.

## 7.2 Verification Discipline

The agent MUST match verification effort to change risk.

For small or single-file edits:
- Do not run automatic verification unless necessary.

For medium-risk changes:
- Run at most one targeted check when available.

For large or broad changes:
- Complete the edit pass first.
- Ask before running broad verification.

The agent MUST NOT run repeated sweeps, full project validation, or broad automated checks without cause.

## 7.3 Patch Report Rules

After editing, report only:

- Files changed.
- Exact behavior changed.
- Exact behavior untouched.
- Whether acceptance passed.

The agent MUST NOT summarize unrelated investigation.

The agent MUST NOT use these phrases:

- "I took the opportunity"
- "I also cleaned up"
- "I improved"
- "I optimized"
- "I noticed, so I changed"
- "This should also help"

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


## 19. Native WordPress Media Modal Rules

The agent MUST distinguish between **Forbidden Modal Infrastructure Replacement** and **Allowed Scoped Preview-Surface Augmentation**.

### 19.1 Forbidden Modal Infrastructure Replacement

Replacing native WordPress media modal infrastructure is strictly forbidden. Never replace, overwrite, or hide:

- `.media-frame-content`
- `.edit-attachment-frame`
- `.attachment-media-view`
- `.attachment-info`

Do not treat these components as replaceable canvases. Do not inject full custom layouts into the modal frame.

### 19.2 Scoped Media Preview Augmentation

Scoped augmentation of a rendered media preview surface is allowed when all of the following are true:

- The native WordPress media modal frame remains intact.
- Native modal navigation remains intact.
- Native attachment metadata fields (title, caption, etc.) remain intact.
- Native modal routing and lifecycle remain intact.
- The change is scoped to one attachment type or preview subtype (e.g., audio).
- The change targets only the rendered preview surface for that attachment type.
- The change does not replace the full `.attachment-media-view` or `.attachment-info`.
- The change does not duplicate native WordPress fields.
- The change does not globally dequeue WordPress media scripts or styles.
- The change does not override WordPress media templates or Backbone views unless source inspection proves there is no safer insertion point.

**Allowed examples**:
- Hiding or suppressing only an existing audio preview/player element after render.
- Mounting a custom player inside the existing audio preview area.
- Adding scoped controls inside an existing preview surface.
- Adding attachment-type-specific enhancement UI without changing modal infrastructure.

### 19.3 First-Line Strategy

For WordPress media modal extensions, the first-line strategy MUST be **additive rendered-surface augmentation**.

Agents MUST NOT recommend overriding core WordPress media templates, replacing Backbone views, or globally changing media modal behavior as the first-line strategy. Template or view overrides may only be considered after source inspection proves that no safer rendered-surface insertion point exists.

### 19.4 Prohibitions and Fallbacks

- **Global Dequeue**: Agents MUST NOT recommend globally dequeuing `mediaelement`, `wp-mediaelement`, `media-views`, or related WordPress media assets. Core media assets may only be avoided or bypassed locally by scoped extension logic, not removed globally.
- **Audio Players**: Replacing or suppressing a specific audio preview/player inside the modal is not automatically modal replacement. It is allowed only when the native modal frame, metadata fields, navigation, and lifecycle remain untouched.
- **Task Classification**: A question about the default WordPress Media Library modal is **General WordPress** unless the user provides plugin/theme-specific files, custom modal code, or project-specific architecture.

### 19.5 Fail Conditions

If a request requires replacing native modal infrastructure or full modal content:
- Stop and output exactly: `BLOCKED: Violates native WP media modal integration rules.`

Do not treat scoped preview-surface augmentation as modal replacement when all scoped augmentation rules are satisfied.
