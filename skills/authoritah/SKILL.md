---
name: authoritah
description: Route and manage tasks, follow-ups, handoffs, proposals, and working state in an Authoritah-enabled repository.
metadata:
  internal: true
---

# Manage tasks and workflow with Authoritah

Follow `references/WORKFLOW.md` when interpreting or changing the workflow structure.

Use `_workflow/` for development work managed through Authoritah. Keep existing local and
external workflow systems in place and follow an explicitly named destination.

For work to add, save, or continue, identify the responsible domain from the named person,
agent, or process and the root domain map. Resolve “me” and “my” to the requesting user's
domain. Read that domain's nearest `AGENTS.md` and relevant working state together.

Let the user's wording select the destination: for example, “add a task to my worksheet” uses
that person's `worksheet.md`. Without a named destination, use the domain's established task
state. For an unqualified task with no established destination, create `tasks.md` in the
responsible domain.

Use the repository's vocabulary and existing state files. Use an external or other local system
when the user names it, without copying its state into `_workflow/`. Ask before creating other
durable state when no suitable Authoritah state exists.

Apply the change and report its path.
