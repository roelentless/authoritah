# Domain-Framed Agentic Workflow

## Model

The workflow organizes work like modular code: related concepts live together in the domain
that owns them. A domain may represent a person, a local or remote coding agent, a recurring
process, or an external collaborator.

```text
_workflow/
├── <domain>/
└── <domain>/
```

Each directory is a domain boundary. Its `AGENTS.md` frames the domain's purpose, ownership,
boundaries, and judgment. Related state, handoffs, and deterministic tools stay beside that
framing. The framing should be sufficient for a capable model to reason; encode a rigid
procedure only where mistakes would be costly. Each project creates only the domains its work
requires.

Human domains use stable usernames. For example, `_workflow/roel/` belongs to
`roel`; its `AGENTS.md` carries Roel's working framing. This identity remains stable as teams
grow.

Precise naming is a core workflow property. Every domain, state file, and concept must say
exactly who or what owns it. A reader should not need local history to interpret a name.

## Primitives

### Framing

Use the nearest `AGENTS.md` to describe non-obvious purpose and boundaries. Keep general
repository rules at the root and domain framing inside its domain. Agents load only the
context relevant to their work.

### Working state

Store each fact once in the domain that owns it:

- a person's backlog and evolving proposals may live beneath that username's domain;
- confirmed executable work may have a dedicated todo domain;
- exploratory evidence may belong to a researcher domain;
- unsent and immutable design exchanges may belong to a design-iteration domain.

Delete completed state. Preserve history only when it remains evidence or an immutable
external exchange.

### Deterministic tools

Use a command when safety or repeatability requires less freedom than prose provides. A
command must validate its inputs and have one narrow responsibility. Allow-list that command,
not the unrestricted capability beneath it.

The included [`checkpoint/create`](checkpoint/create) command demonstrates the pattern: it
accepts explicit files, refuses a pre-populated Git index, and can therefore be approved
without allowing arbitrary commits.

### Asynchronous handoffs

An external teammate receives its own domain and exchanges work asynchronously. Design work
is grouped into iterations:

```text
handoffs/iteration-N/
├── request/   immutable package sent out
├── response/  immutable package received back
└── DONE.md    optional reconciliation result
```

New work continues in `next/` while a response is pending. A response may address the
request, introduce independent work, or leave items unresolved. Reconcile it against both
implementation truth and the original request, then return remaining work to `next/`.

## Extending the system

Add a domain when related work has distinct ownership or context. Give it one clearly named
directory and a concise `AGENTS.md`. Add durable state or tools only when that domain has a
concrete need for them.

Setup begins by discovering the repository's people, agents, processes, and external
collaborators. The resulting domains use the project's own precise vocabulary.
