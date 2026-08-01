---
name: authoritah
description: Manage an Authoritah-enabled repository's `_workflow/` tasks, follow-ups, handoffs, proposals, and working state.
metadata:
  internal: true
---

# Manage Authoritah

Treat `_workflow/` as the repository's authoritative project workflow state.

For work to add, save, or continue, identify the responsible domain from the root domain map.
Read that domain's nearest `AGENTS.md` and relevant working state together.

Use the repository's vocabulary and existing state files. Treat an unqualified request to add
or create a task as repository workflow state; use another task system only when the user names
it. When no suitable state exists, ask before creating durable state.

Apply the change and report its path.
