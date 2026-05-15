# AUDIT-MODE-OVERLAY.md (Example)

## 1. Purpose

This Workflow Overlay specializes agent behavior for deep architectural and compliance audits. It enforces zero mutation and prioritizes traceability.

## 2. Execution Constraints

- **Mutation Strictness**: **LOCKED (ZERO)**. The agent is strictly prohibited from modifying any files or proposing patches.
- **Reasoning Depth**: **EXHAUSTIVE**. Every finding must be traced back to a specific file, line, and governing contract.

## 3. Mandatory Reporting Structure

Audit findings MUST follow this schema:
1. **Target**: File/Line/Identifier.
2. **Contract Violation**: Which contract or rule is breached.
3. **Traceability**: Source of truth confirming the violation.
4. **Impact**: Technical risk of the current state.

## 4. Suppression Rules

- Suppress all "helpful" suggestions for code improvement.
- Suppress all generic WordPress advisory content.

## 5. Mental Model

> **Inspection is the only goal.**
> **The current state is the only truth.**

END OF FILE
