# GPT Setup Guide (ChatGPT, Custom Assistants)

## Overview

When using `llms-docs` with a web-based GPT or custom assistant, the agent relies on the **Corpus Intelligence** and **Remote Verification** layers because it cannot "see" your local project files directly.

## 1. Custom Instructions (The Bootstrap)

Paste this exactly into your **Custom Instructions** or **System Prompt** to activate the governance engine:

```text
Initialize using llms-docs/AGENT-ENTRYPOINT.md.

This environment is governed by a strict WordPress LLM Source Corpus.
1. Follow AGENT-RULES.md for source priority and refusal logic.
2. Use contracts/ for architectural and execution law.
3. Use core/ manifests as the intelligence layer.

Do not guess or fabricate architecture. 
If project context is missing, follow the Refusal Rules. 
Use Confirmed, Inferred, and Assumed labels for all claims.
```

## 2. Managing Knowledge Gaps

Since the GPT cannot scan your local directory, you must "feed" it context manually:

- **The "Context Injection" Pattern**: *"I am providing [filename]. Ingest this as Project Source (Level 4 Authority)."*
- **The "Fallback" Pattern**: If you don't provide a file, the agent will revert to **Standard WordPress Example** mode. It MUST label these as **ASSUMED** logic.

## 3. Remote Core Verification

If you are unsure about a specific WordPress core behavior:

1. **Trigger Verification**: *"Verify the signature of [function_name] against the Remote Core Verification Authority."*
2. **The Agent's Role**: The agent will use its internal knowledge or (if configured) check the `wordpress-develop` repository to confirm the behavior.

## 4. Session Continuity

For long engineering tasks that span multiple chat sessions:

1. **Summarize State**: Before ending a session, ask the agent to: *"Update llms-docs/CODEX-WP-HANDOFF.md with the current architectural state."*
2. **Resume Session**: In the new chat, upload the handoff file and say: *"Ingest CODEX-WP-HANDOFF.md and initialize from AGENT-ENTRYPOINT.md."*

---

## Pro-Tips

- **Confidence Check**: If the agent sounds too certain about your project code, ask: *"What is your confidence level according to WORDPRESS-LLMS-CONFIDENCE-CONTRACT.md?"*
- **Mode Toggle**: Explicitly set the mode: *"Switch to Audit Mode. I want a report on my code quality, not a patch."*

END OF FILE
