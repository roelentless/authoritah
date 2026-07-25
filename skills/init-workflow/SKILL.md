---
name: init-workflow
description: Assess a Git repository and establish a project-specific `_workflow` system using role-scoped agent guidance, clearly owned working state, asynchronous handoffs, and narrowly allow-listed tools where useful. Use when a user asks to set up, bootstrap, adopt, or port the workflow approach into a repository.
disable-model-invocation: true
---

# Initialize workflow

Apply the workflow model to the repository's real processes. Read `../../WORKFLOW.md` for the
system concepts before proposing a structure.

## Procedure

1. Read `~/.agents/AGENTS.md`. Record the user's stable username and working framing. Ask the
   user for the missing username before continuing when that file does not state it.
2. Read the target repository's root guidance, structure, current planning files, proposals,
   research, handoffs, and existing tools.
3. Identify the distinct people, roles, and recurring processes that need their own context
   or working state.
4. Name every role, process, state file, and concept explicitly and without ambiguity. Name
   each human role by its stable username rather than `owner`, `user`, or `project-manager`.
5. Discuss the proposed `_workflow/` ownership map with the user when it would move existing
   state, replace conventions, or introduce a new process.
6. Create one directory per accepted role or process. Give each a concise `AGENTS.md` that
   explains its purpose, ownership, boundaries, and when agents should ignore it.
7. Keep a person's evolving ideas and requirements as proposals within that person's role.
   Treat proposals as context, not current behavior or accepted implementation contracts.
8. Move or create only the durable state each role genuinely owns. Preserve active work and
   avoid placeholders, duplicated truth, completion history, and generic documentation.
9. Add a deterministic tool only when the repository has a concrete safety or repeatability
   need. Use `../../checkpoint/create` as the reference for safe checkpoint commits. Validate
   tool inputs, keep each tool narrow, and add the matching agent-client allow-rule.
10. Update root agent guidance with a short map to the workflow roles and their authoritative
   files. Keep detailed framing local.
11. Validate links, executable tools, allow-rules, and the resulting ownership boundaries.
   Report the decisions and unresolved migrations.

Never overwrite or mechanically merge an existing `_workflow/`. Setup is contextual work,
not template installation.
