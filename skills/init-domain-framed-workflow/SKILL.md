---
name: init-domain-framed-workflow
description: Establish a project-specific Domain-Framed Agentic Workflow from its people, agents, processes, external collaborators, and working state.
disable-model-invocation: true
---

# Initialize workflow

Apply Domain-Framed Agentic Workflow to the repository's real work. Read
`../../WORKFLOW.md` for the system concepts before proposing a structure.

## Procedure

1. Read `~/.agents/AGENTS.md`, then read the target repository's guidance, structure, working
   state, handoffs, tools, and agent-client configuration. Use the stable username and working
   framing from the global guidance; ask the user when either is absent.
2. Define the repository's domains in its own vocabulary. Consider its people, local and
   remote coding agents, recurring processes, and external human or programmatic
   collaborators. Name human domains by stable username.
3. Present the domain map and any movement of existing state to the user before editing.
4. Scaffold or reconcile `_workflow/`. Create one directory per confirmed domain and give it
   a concise `AGENTS.md` covering purpose, ownership, boundaries, and when agents should
   ignore it. Colocate each domain's active authoritative state. Keep a person's proposals in
   that person's domain. Model external collaboration with immutable asynchronous request and
   response handoffs. Keep portable installation guidance in that domain's `_SETUP.md`.
5. Present deterministic workflow tools separately. Install only accepted tools beside their
   owning domain. `../../tools/checkpoint/` is the optional checkpointing example; follow its
   `_SETUP.md`. Validate tool inputs, preserve required file attributes, and maintain narrow
   agent-client approval rules for installed tools.
6. Add a short domain map to the repository's root guidance while keeping detailed framing
   local.
7. Validate links, executable tools, approval rules, and domain ownership. Report the
   resulting structure and unresolved migrations.
