# IDE Integration Guide (Cursor, Windsurf, Cody)

## Overview

AI-powered IDEs provide the highest precision for governed engineering because they have direct access to your project source. This guide ensures your IDE respects the `llms-docs` governance stack.

## 1. Activation (The `.agents/` Workflow)

The framework includes an `.agents/` directory designed to be moved to your **Project Root**.

1. **Move the Directory**: Copy `llms-docs/.agents/` to the root of your project.
2. **Trigger the Workflow**: In your IDE's chat interface, use the `/wp-dev-helper` command.
3. **Verify Ingestion**: The agent should immediately acknowledge `AGENT-RULES.md` and `AGENT-ENTRYPOINT.md`.

## 2. Maintaining the Load Order

In an IDE, context is often gathered automatically. To ensure governance, follow these discipline rules:

- **Manual Start**: If the agent loses context, re-trigger with: *"Start with llms-docs/AGENT-ENTRYPOINT.md"*.
- **Task Classification**: Before any edit, verify the agent has classified the task as **Project-Specific** or **General WordPress**.
- **Refusal Check**: If the agent attempts to "guess" a file structure, remind it: *"Follow the Refusal Rules in AGENT-RULES.md."*

## 3. Using Overlays in the IDE

Overlays are your primary tool for tuning the IDE's behavior to your specific repository.

1. **Create an Overlay**: Add a file to `llms-docs/overlays/projects/your-project.md`.
2. **Reference the Overlay**: In your `.cursorrules` or equivalent config, add: 
   *"Always load llms-docs/overlays/projects/your-project.md during initialization."*

## 4. Verification Workflow

IDE agents often claim "Acceptance Passed" after a simple file save. Force the **Verification Workflow**:

- *"Perform Targeted Verification as per llms-docs/contracts/WORDPRESS-LLMS-VERIFICATION-WORKFLOW-CONTRACT.md."*
- Ensure the agent proves the fix via code inspection of the call site, not just the modified file.

---

## Pro-Tips for Power Users

- **Context Budgeting**: If the chat context becomes "noisy," use the command: *"Refresh context using the Minimal Load Set (WORDPRESS-LLMS-CONTEXT-BUDGET-CONTRACT.md)."*
- **Audit Mode**: Use the command: *"Enter Audit Mode using AUDIT-MODE-OVERLAY.md. Zero mutations allowed."*

END OF FILE
