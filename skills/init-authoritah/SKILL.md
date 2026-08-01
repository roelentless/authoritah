---
name: init-authoritah
description: Initialize a responsibility-driven agentic workflow by organizing a repository's people, agents, processes, state, and handoffs into Authoritah domains.
disable-model-invocation: true
---

# Initialize Authoritah

Bootstrap Authoritah around the repository's real work. Read
`$HOME/.local/share/authoritah/skills/authoritah/references/WORKFLOW.md` before proposing a
structure.

## Procedure

1. Read the shared global guidance at `~/.agents/AGENTS.md`, then read the target repository's
   guidance, structure, working state, handoffs, tools, and agent-client configuration. Use the
   stable username and working framing from the global guidance. When the username is absent,
   ask the user for a lowercase slug made of letter and digit groups separated by single
   hyphens; do not infer it. Ask for working framing when it is absent.
2. Define the Authoritah domains that complement the repository's existing workflow, using
   the repository's own vocabulary. Consider its people, local and remote coding agents,
   recurring processes, and external human or programmatic collaborators. Name human domains
   by stable username. Keep existing local and external workflow systems in place.
3. Present the domain map and any proposed connection to or movement of existing state to the
   user before editing. Move or duplicate existing state only with explicit approval.
4. Run `$HOME/.local/share/authoritah/scripts/enable "$(git rev-parse --show-toplevel)" "$HOME"`
   to expose the project-local runtime skill.
5. Scaffold or reconcile `_workflow/`. Create one directory per confirmed domain and give it
   a concise `AGENTS.md` covering purpose, ownership, boundaries, and when agents should
   ignore it. Colocate state created and managed through Authoritah; reference external state
   where it already lives. Keep a person's proposals in that person's domain. Model external
   collaboration with immutable asynchronous request and response handoffs when the repository
   needs local exchanges. Preserve established names such as `worksheet.md`; use `tasks.md` only
   as the default for general tasks when no project vocabulary exists. Keep portable installation
   guidance in that domain's `_SETUP.md`.
6. Add a short domain map to the repository's root guidance while keeping detailed framing
   local. State: "This is an Authoritah-enabled repository. Use the project-local `authoritah`
   skill when working with `_workflow/`."
7. Inspect `$HOME/.local/share/authoritah/examples/tools/` and present relevant deterministic
   workflow tools separately. Install only accepted tools beside their owning domain. Validate
   tool inputs, preserve required file attributes, and maintain narrow agent-client approval
   rules for installed tools.
8. Validate links, executable tools, approval rules, domain boundaries, and connections to
   existing workflow systems. Report the resulting structure and unresolved migrations.
