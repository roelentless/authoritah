# Authoritah — agent guidance

This repository owns Authoritah, the portable way to structure responsibility around coding
agents in a normal development workflow. Read the
[workflow model](skills/authoritah/references/WORKFLOW.md) before changing its structure.
`examples/tools/checkpoint/create` is an optional reference tool for safe local checkpoint
commits. Push only when the user explicitly requests it or the work belongs to an existing
upstream pull request.

Authoritah is the system name. Use `_workflow/` as its installed project directory.
Authoritah layers into a repository's existing development workflow. Preserve existing local
and external systems; connect to them instead of duplicating or replacing them.

Keep the system small and responsibility-driven:

- each domain owns one directory;
- its nearest `AGENTS.md` frames purpose, ownership, boundaries, and judgment;
- durable files hold only state that domain genuinely needs;
- deterministic commands exist only where a repository has a concrete repeatability or
  safety need;
- agent-client approval rules narrowly permit installed workflow tools.

Prefer model judgment. Add procedures, durable state, and deterministic tools only for a
concrete project need.

Use explicit, clear, non-ambiguous names for domains, framing, state, and concepts. Name every
human domain directory by the person's stable username.
