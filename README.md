# Domain-Framed Agentic Workflow

A small, portable system for organizing human and agentic work by domain.

Each domain colocates its framing, state, handoffs, and narrow deterministic tools. Domains
can represent people, coding agents, recurring processes, or external human and programmatic
collaborators. Agents load the context for the domain they are working in instead of one
global workflow manual.

Read [WORKFLOW.md](WORKFLOW.md) for the model.

## Initialize a repository

Ask Codex:

```text
Use $init-workflow to initialize the reusable _workflow system in this repository.
```

The skill first inspects the repository, then proposes and creates only the workflow domains,
state, and narrow tools that fit that project. It does not copy a fixed template.

Setup can install [`checkpoint/create`](checkpoint/create) when a repository wants safe,
explicit checkpoint creation. It is an optional example of a narrowly allow-listed workflow
tool.
