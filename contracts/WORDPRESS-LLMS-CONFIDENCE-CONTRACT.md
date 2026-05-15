# WORDPRESS-LLMS-CONFIDENCE-CONTRACT.md

## 1. Purpose

This contract defines the rules for assessing, labeling, and reporting confidence within the framework. It ensures that agents distinguish between verified truth, logical inference, and speculative assumptions, maintaining a hard boundary against hallucination.

## 2. Confidence Taxonomy (Authoritative)

Every piece of information or proposed code MUST be classified into one of these levels:

### 2.1 Confirmed
- **Definition**: Directly traceable to project source or Tier 0 corpus.
- **Requirement**: Must include a file reference and, where applicable, a line number or selector.
- **Status**: Authoritative Truth.

### 2.2 Source-Traceable
- **Definition**: Directly maps to a specific definition, hook, or registration in the provided corpus.
- **Requirement**: Must cite the corpus file.
- **Status**: High Confidence.

### 2.3 Inferred
- **Definition**: Logically deduced from Confirmed or Source-Traceable data.
- **Requirement**: Must state the underlying confirmed data and the logic used for the inference.
- **Status**: Medium Confidence.

### 2.4 Assumed (Placeholder)
- **Definition**: Based on standard WordPress patterns or common project conventions when the specific source is missing.
- **Requirement**: MUST be explicitly labeled as **ASSUMED** or **PLACEHOLDER**.
- **Status**: Low Confidence.

### 2.5 Speculative / Unverifiable
- **Definition**: Hypothetical logic or information that cannot be traced to any provided source.
- **Requirement**: MUST NOT be presented as truth; MUST be labeled as **SPECULATIVE**.
- **Status**: Zero Confidence.

## 3. Required Labeling Behavior

- Agents MUST lead with the confidence level when providing architectural summaries or critical logic.
- If a response contains mixed confidence levels, each section MUST be labeled accordingly.
- Prohibited: Using authoritative language (e.g., "The file contains...") for Inferred or Assumed data.

## 4. Confidence Escalation and Downgrade Rules

### 4.1 Escalation
- To move from **Inferred** to **Confirmed**, the agent MUST locate and read the specific project file.
- To move from **Assumed** to **Source-Traceable**, the agent MUST locate the specific manifest in the corpus.

### 4.2 Downgrade
- If a previously **Confirmed** path is found to be missing during a `list_dir` or `view_file` call, it MUST be immediately downgraded to **Unverifiable**.

## 5. Refusal Thresholds

The agent MUST refuse to proceed and request the required source when:
- The task requires **Confirmed** state but only **Assumed** or **Speculative** data is available.
- The task involves critical system mutation (Migration, Refactoring) and confidence is below **Confirmed**.
- Multiple **Inferred** steps lead to a conclusion without a **Confirmed** anchor point.

## 6. Fallback Behavior

When confidence is below **Confirmed**, the agent MAY provide a **STANDARD WORDPRESS EXAMPLE** as defined in `governance/WORDPRESS-LLMS-EXECUTION-GOVERNANCE.md`, but it MUST NOT claim the example reflects the user's actual project state.

## 7. Enforcement

If an agent's confidence assessment conflicts with the verified project source, the project source always wins. Agents MUST NOT use high-confidence models (Claude/Gemini) to bypass the requirement for source-based verification.

## 8. Mental Model

> **Confidence is governed, not implied.**
> **If it is not traceable, it is not truth.**

## 9. Related Contracts

- `WORDPRESS-LLMS-INGESTION-CONTRACT.md`: Governs the source of truth for confidence.
- `WORDPRESS-LLMS-VERIFICATION-WORKFLOW-CONTRACT.md`: Defines how to escalate confidence levels.

END OF FILE
