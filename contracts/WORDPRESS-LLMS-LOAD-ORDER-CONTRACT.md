# WORDPRESS-LLMS-LOAD-ORDER-CONTRACT.md

## 1. Purpose

This contract defines the deterministic load sequence, override boundaries, and conflict resolution rules for the WordPress LLM Source Corpus framework. It ensures that all agents initialize with a consistent understanding of authority and specialization.

## 2. Deterministic Load Sequence

To ensure stable reasoning, all agents MUST load the framework layers in this exact sequence:

1. **Governance Layer**
   - `AGENT-RULES.md`
   - Files in `governance/`
2. **Contract Layer**
   - Files in `contracts/`
3. **Intelligence Corpus Layer**
   - Files in `core/`
   - Files in `themes/`
4. **Overlay Layer**
   - Files in `overlays/`
5. **Project Source Layer**
   - Actual files from the user's workspace/repository

## 3. Layer Roles and Authority

| Layer | Role | Authority Level |
| :--- | :--- | :--- |
| **Governance** | Behavior Law | **Level 0 (Highest)** |
| **Contracts** | Architectural Law | **Level 1** |
| **Corpus** | Intelligence Manifests | **Level 2** |
| **Overlays** | Specialization | **Level 3** |
| **Project Source**| Final Authority (Truth) | **Level 4 (Authoritative)** |

### 3.1 Authority Principle
- **Higher Layers (0-1)** define the "Law" (what is possible and allowed).
- **Intelligence (2)** defines "Knowledge" (what WordPress is).
- **Lower Layers (3-4)** specialize "Behavior" and provide "Truth" (what this specific project is).

## 4. Override Boundaries and Conflict Resolution

### 4.1 Upward Specialization
Lower layers MAY specialize behavior defined by higher layers but MUST NOT redefine the underlying law.
- **Example**: An overlay (Level 3) may add a project-specific constraint to a surgical patch rule defined in Governance (Level 0), but it cannot disable surgical patching.

### 4.2 Downward Enforcement
Higher layers MUST maintain absolute precedence in conflicts.
- If a Corpus record (Level 2) contradicts a Contract (Level 1), the Contract prevails.
- If an Overlay (Level 3) contradicts Governance (Level 0), the Overlay MUST be ignored.

### 4.3 Project Source Dominance
While Project Source is Level 4 in the *load* order, it is the supreme authority for *system state*.
- If a Corpus record claims a hook exists but the Project Source shows it is removed/modified, the Project Source is the ground truth.
- HOWEVER, Project Source MUST NOT be used to bypass Governance behavior (e.g., bypassing surgical patch rules).

## 5. Fallback and Missing Layer Handling

### 5.1 Mandatory Layers
If Governance (Level 0) or mandatory Contracts (Level 1) are missing, the agent MUST STOP and request the missing files.

### 5.2 Optional Layers
- If **Overlays** are missing: Proceed with standard governance and corpus behavior.
- If **Project Source** is missing: Revert to "Standard WordPress Example" mode as defined in `governance/WORDPRESS-LLMS-EXECUTION-GOVERNANCE.md`.

## 6. Implementation Rule

Agents MUST NOT skip ingestion steps. Every session must re-verify the load order starting from `AGENT-ENTRYPOINT.md` to ensure that no specialized overlay or local file has modified the core behavioral law of the assistant.

END OF FILE
