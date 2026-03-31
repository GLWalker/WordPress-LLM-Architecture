# WORDPRESS-LLM-EXECUTION.md

## 1. Classification

**File Type**: LLM SOURCE FILE

## 2. Purpose

This file defines the deterministic decision process used to interpret WordPress tasks and produce compliant outputs using the corpus.

It governs:

- Task classification
- Source routing
- Execution patterns
- Refusal conditions

This file does not define system design, runtime behavior, or ingestion logic.

## 3. Task Classification

All requests MUST be classified into one of the following:

- `plugin_feature`
- `theme_change`
- `block_editor`
- `data_storage`
- `rest_api`
- `admin_ui`
- `code_modification`
- `unknown`

If classification is not possible:

- Request clarification
- Do not proceed

## 4. Source Routing

After classification, the request MUST be routed to the appropriate corpus file(s):

- **PHP logic** → `WORDPRESS-PHP-LLM.md`
- **JavaScript / block editor** → `WORDPRESS-JS-LLM.md`
- **JSON configuration** → `WORDPRESS-JSON-LLM.md`
- **CSS / styling** → `WORDPRESS-CSS-LLM.md`
- **XML / import/export** → `WORDPRESS-XML-LLM.md`

Multiple sources MAY be used only when required by the task. No additional sources may be introduced.

## 5. Execution Rules

### 5.1 Plugin Feature

- If plugin source exists:
    - Use actual files as authority
    - Do not assume structure beyond provided files
- If plugin source does not exist:
    - Provide a **STANDARD WORDPRESS EXAMPLE**
    - Clearly label all assumptions

Output MUST include:

- File path
- Hook usage
- Minimal implementation
- Sanitization and escaping

### 5.2 Theme Change

- Use WordPress-native theme mechanisms
- Prefer `theme.json` or block-based solutions when applicable
- Do not introduce non-native patterns

### 5.3 Block / Editor

- Use valid block serialization only
- Do not invent block attributes
- Prefer core blocks

### 5.4 Data Storage

Determine storage model explicitly:

- Option
- Post meta
- User meta
- Custom post type
- Custom table

Sanitization MUST match data type:

- Plain text → `sanitize_textarea_field()`
- HTML → `wp_kses_post()`

### 5.5 REST API

- MUST register routes on `rest_api_init`
- MUST include `permission_callback`
- MUST align authentication model with implementation

### 5.6 Admin UI

- Use WordPress-native UI patterns
- Do not rebuild existing admin systems
- Prefer existing screens and components

### 5.7 Code Modification

- Do NOT rewrite entire files
- Provide safe insertion points
- Do NOT assume internal structure

If structure is unknown:

- Request file

## 6. Refusal Rules

The agent MUST refuse when:

- Required source files are missing AND no safe fallback exists
- Request depends on unknown project structure
- Request requires inventing architecture, hooks, or file paths

## 7. Allowed Fallback

A **STANDARD WORDPRESS EXAMPLE** is allowed ONLY when:

- Project-specific source is unavailable
- The answer is clearly labeled as an example
- It is not claimed to reflect the user's actual codebase
- It does not override `AGENT-RULES.md`

Fallback output MUST include:

- Storage model
- Capability
- File structure assumptions
- Naming conventions

Fallback MUST NOT be presented as the user’s actual system.

## 8. Output Requirements

All responses MUST:

- Lead with the solution
- Include exact file placement when known
- Use minimal, reviewable code
- Separate required fixes from improvements
- Avoid unnecessary explanation

## 9. Prohibitions

The agent MUST NOT:

- Invent plugins, systems, or architecture
- Reconstruct code without source
- Merge conflicting sources
- Introduce non-WordPress patterns
- Include build tools or environment setup unless requested

## 10. Enforcement

`AGENT-RULES.md` represents the highest authority in this system. If any instruction in this file conflicts with `AGENT-RULES.md`, the agent MUST follow `AGENT-RULES.md`.

Otherwise, the agent MUST:

- Follow this file for execution and output patterns
- Refuse non-compliant actions
- Request required files or clarification

## 11. Execution Mode (Mandatory)

When a task is provided:

- You MUST attempt to complete the task fully using available sources
- You MUST NOT stop early if a safe, standards-compliant solution is possible
- You MUST NOT default to refusal if a **STANDARD WORDPRESS EXAMPLE** is allowed
- You MUST produce working, reviewable output

Refusal is ONLY allowed when:
- Required source code is missing AND exact mapping is explicitly required
- OR the request would require inventing unknown architecture

Otherwise:
- Proceed with the safest valid implementation

## ✅ Result

This gives your system:

- Deterministic execution
- Consistent outputs
- Safe fallback behavior
- No hallucination
