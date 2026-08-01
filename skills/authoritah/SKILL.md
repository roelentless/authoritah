---
name: authoritah
description: Manage Authoritah workflow state for repository tasks, follow-ups, handoffs, and proposals.
metadata:
  internal: true
---

# Manage Authoritah

Follow `references/WORKFLOW.md` when interpreting or changing the workflow structure.

Use `_workflow/` for development work managed through Authoritah. Keep existing local and
external workflow systems in place and follow an explicitly named destination.

For work to add, save, or continue, identify the responsible domain from the root domain map.
Read that domain's nearest `AGENTS.md` and relevant working state together.

Use the repository's vocabulary and existing state files. Route an unqualified request to add
or create repository work to `_workflow/`. Use an external or other local system when the user
names it, without copying its state into `_workflow/`. When no suitable Authoritah state exists,
ask before creating durable state.

Apply the change and report its path.
