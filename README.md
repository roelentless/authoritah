# Workflow

A small, portable workflow system for agent-assisted repositories: Markdown framing and one
safe checkpoint command.

It organizes work around roles and processes rather than one large instruction file. Each
workflow directory explains its own purpose in `AGENTS.md`, owns only the state it needs, and
may expose narrow deterministic tools that can be safely allow-listed.

Read [WORKFLOW.md](WORKFLOW.md) for the model.

## Initialize a repository

Ask Codex:

```text
Use $init-workflow to initialize the reusable _workflow system in this repository.
```

The skill first inspects the repository, then proposes and creates only the workflow roles,
state, and narrow tools that fit that project. It does not copy a fixed template.

[`checkpoint/create`](checkpoint/create) is the reference implementation for repositories
that need safe, explicit checkpoint commits.
