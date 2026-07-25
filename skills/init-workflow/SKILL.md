---
name: init-workflow
description: Establish a project-specific Domain-Framed Agentic Workflow from its people, agents, processes, external collaborators, and working state.
disable-model-invocation: true
---

# Initialize workflow

Apply Domain-Framed Agentic Workflow to the repository's real work. Read
`../../WORKFLOW.md` for the system concepts before proposing a structure.

## Procedure

1. Read `~/.agents/AGENTS.md`. Use the stable username and working framing defined there.
   Stop and ask the user when either is missing.
2. Read the target repository's root guidance, structure, current planning files, proposals,
   research, handoffs, and existing tools.
3. Identify the people, local or remote coding agents, recurring processes, and external
   human or programmatic collaborators whose related framing and state form distinct domains.
4. Name every domain, state file, and concept explicitly and without ambiguity. Name each
   human domain directory by its stable username.
5. Discuss the proposed `_workflow/` ownership map with the user when it would move existing
   state, replace conventions, or introduce a new process.
6. Create one directory per accepted domain. Give each a concise `AGENTS.md` that
   explains its purpose, ownership, boundaries, and when agents should ignore it.
7. Keep a person's evolving ideas and requirements as proposals within that person's domain.
   Treat proposals as context, not current behavior or accepted implementation contracts.
8. Move or create only the durable state each domain genuinely owns. Preserve active work and
   keep one authoritative location for each fact.
9. Add a deterministic tool only when the repository has a concrete safety or repeatability
   need. Offer checkpointing as an optional tool. When accepted, install
   `../../checkpoint/create` as `_workflow/checkpoint/create`, preserve its executable bit,
   and add the matching agent-client allow-rule. Validate every tool's inputs and keep its
   responsibility narrow.
10. Update root agent guidance with a short map to the workflow domains and their authoritative
   files. Keep detailed framing local.
11. Validate links, executable tools, allow-rules, and the resulting domain boundaries.
   Report the decisions and unresolved migrations.

When `_workflow/` already exists, stop and propose a contextual migration before editing it.
