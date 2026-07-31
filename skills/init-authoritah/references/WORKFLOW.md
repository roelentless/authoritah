# Authoritah workflow model

## Model

Authoritah organizes development context like modular code. Related instructions, working
state, handoffs, and tools live together in the domain they concern. A domain may represent a
developer, a local or remote coding agent, a recurring development activity, or an external
human or programmatic collaborator involved in repository work.

```text
_workflow/
├── <domain>/
└── <domain>/
```

For example, one repository may organize a human domain and an asynchronous design process:

```text
_workflow/
├── <your-username>/
│   ├── AGENTS.md
│   └── proposals/
└── design-iteration/
    ├── AGENTS.md
    ├── next/
    └── handoffs/
```

Each top-level directory is a domain boundary. Its `AGENTS.md` frames the domain's purpose,
boundaries, working context, and judgment. Related state, handoffs, and deterministic tools
stay inside that domain. The framing should be sufficient for a capable model to reason;
encode a rigid procedure only where mistakes would be costly. Each project creates only the
domains its work requires.

Each domain remains responsible for its development context and working state. When work
moves between domains, the handoff carries the task, context, and constraints the recipient
needs. This keeps each domain focused while allowing work to continue independently.

A portable domain keeps its installation contract in `_SETUP.md`. The setup contract is
agent-neutral and stays beside the framing and resources it installs.

Human domains use stable slug-style usernames made of lowercase letter and digit groups
separated by single hyphens. The `_workflow/<your-username>/AGENTS.md` file carries that
person's working framing. Stable usernames keep repository paths independent of display names.

Precise naming is a core workflow property. Every domain, state file, and concept must say
exactly who or what it belongs to. Name things as the people working in the repository name
them, using the project's own vocabulary. A reader should not need local history to interpret
a name.

## Primitives

### Framing

Use the nearest `AGENTS.md` to describe non-obvious purpose and boundaries. Keep general
repository rules at the root and domain framing inside its domain. Agents load only the
context relevant to their work.

### Working state

Store each fact once in the domain that owns the decision or action it informs. Use the
project's vocabulary for state files. Keep active state and immutable external exchanges;
remove completed working state.

### Deterministic tools

Use a command when safety or repeatability requires less freedom than prose provides. A
command must validate its inputs and have one narrow responsibility. Allow-list that command,
not the unrestricted capability beneath it.

### Asynchronous handoffs

An external human or programmatic collaborator involved in development work receives its own
domain. Work crosses that boundary through immutable request and response handoffs, allowing
both sides to continue asynchronously. Design work is grouped into iterations:

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

Add a domain when related work has distinct context or working state. Give it one clearly
named directory and a concise `AGENTS.md`. Add durable state or tools only when that domain
has a concrete need for them.
