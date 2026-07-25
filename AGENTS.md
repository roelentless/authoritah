# Workflow — agent guidance

This repository owns a portable workflow system for agent-assisted software projects.
Read [WORKFLOW.md](WORKFLOW.md) before changing its structure. `checkpoint/create` is the
only executable shipped by the project.

Keep the system small and role-oriented:

- a workflow role or process owns one directory;
- its nearest `AGENTS.md` frames purpose, boundaries, and judgment;
- durable files hold only state that role genuinely needs;
- deterministic commands exist only where a repository has a concrete repeatability or
  safety need;
- integration-specific allow-rules permit those narrow commands, never unrestricted tools.

Prefer model judgment. Add procedures, durable state, and deterministic tools only for a
concrete project need.

Use explicit, clear, non-ambiguous names for roles, framing, state, and concepts. Name every
human role directory by the person's stable username.
