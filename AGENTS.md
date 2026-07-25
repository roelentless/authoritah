# Domain-Framed Agentic Workflow — agent guidance

This repository owns the portable Domain-Framed Agentic Workflow system. Read
[WORKFLOW.md](WORKFLOW.md) before changing its structure. `checkpoint/create` is an optional
reference tool for safe checkpoint creation.

Keep the system small and domain-oriented:

- each domain owns one directory;
- its nearest `AGENTS.md` frames purpose, ownership, boundaries, and judgment;
- durable files hold only state that domain genuinely needs;
- deterministic commands exist only where a repository has a concrete repeatability or
  safety need;
- integration-specific allow-rules permit those narrow commands, never unrestricted tools.

Prefer model judgment. Add procedures, durable state, and deterministic tools only for a
concrete project need.

Use explicit, clear, non-ambiguous names for domains, framing, state, and concepts. Name every
human domain directory by the person's stable username.
