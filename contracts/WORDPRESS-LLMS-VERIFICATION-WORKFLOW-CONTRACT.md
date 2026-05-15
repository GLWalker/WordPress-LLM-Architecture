# WORDPRESS-LLMS-VERIFICATION-WORKFLOW-CONTRACT.md

## 1. Purpose

This contract defines the rules and workflows for verifying claims, reasoning, and code mutations within the framework. It ensures that the agent's "Acceptance" reports are based on verifiable evidence rather than inference or source inspection alone.

## 2. Verification Levels

Verification effort MUST be proportional to the risk of the task.

### 2.1 Level: None
- **Use Case**: Descriptive responses, standard WordPress examples, or generic information.
- **Requirement**: No specific verification tools required.

### 2.2 Level: Source-Only
- **Use Case**: Verifying the existence of a file, hook, or registration.
- **Requirement**: Must use `view_file`, `grep_search`, or `list_dir`. Memory or inference is NOT verification.

### 2.3 Level: Targeted
- **Use Case**: Verifying a specific behavioral fix or a local logic change.
- **Requirement**: Must verify the specific target behavior (e.g., confirming a CSS class is applied or a hook is registered via code inspection of the call site).

### 2.4 Level: Runtime
- **Use Case**: High-risk mutations or critical system state changes.
- **Requirement**: Must use diagnostic tools or status commands (e.g., `wp_style_is`, `command_status`) to verify live system state.

### 2.5 Level: Full / Manual
- **Use Case**: Refactors, migrations, or broad architectural changes.
- **Requirement**: Requires explicit user confirmation of the end state in the actual environment.

## 3. Required Verification by Execution Mode

The agent MUST apply the following minimum verification tiers:

| Mode | Minimum Verification Tier |
| :--- | :--- |
| **Audit** | **Source-Only**: Traceability of all identified paths. |
| **Surgical Patch** | **Source + Targeted**: Verification of target implementation. |
| **Migration** | **Source + Dependency**: Must verify all call sites and load paths. |
| **Refactor** | **Source + Runtime + Manual**: High-confidence mapping and user approval. |
| **Scaffolding** | **Source-Only**: Verify creation and directory compliance. |

## 4. Prohibitions

- **No Repeated Sweeps**: Agents MUST NOT run redundant grep or validation sweeps without specific cause.
- **No Full Validation without Cause**: Do not run broad project-wide checks for small, targeted edits.
- **No False Runtime Claims**: Agents MUST NOT claim a fix works "at runtime" if they have only verified the source code logic.
- **No Memory Claims**: "I remember this hook exists" is not a valid verification state.

## 5. Failure Handling

If verification fails or cannot be completed:
- **Downgrade Confidence**: Immediately downgrade the claim to **Unverifiable** or **Speculative**.
- **Stop Mutation**: If verifying a patch, the agent MUST NOT proceed with further edits until the gap is addressed.
- **Report the Gap**: Explicitly state what could not be verified (e.g., "Source verified, but runtime status unknown").
- **Request Context**: Ask for specific files or tool access required to close the verification loop.

## 6. Success Definition

"Acceptance Passed" or "Success" MUST NOT be reported unless the required verification level for the current mode has been fully satisfied. 

## 7. Mental Model

> **Verification must match risk.**
> **Inspection is not execution.**

## 8. Related Contracts

- `WORDPRESS-LLMS-EXECUTION-MODE-CONTRACT.md`: Triggers required verification tiers.
- `WORDPRESS-LLMS-CONFIDENCE-CONTRACT.md`: Defines the status of verified claims.

END OF FILE
