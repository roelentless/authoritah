# Workflow system

## Model

The workflow is an open-ended directory of roles and processes inside a repository:

```text
_workflow/
├── <person-or-role>/
└── <recurring-process>/
```

Each directory is an ownership boundary. Its `AGENTS.md` explains why the role exists, what
state belongs there, and when an agent should ignore it. The framing should be sufficient for
a capable model to reason; encode a rigid procedure only where mistakes would be costly.
No particular directory is required.

During setup, read the user's identity and working framing from `~/.agents/AGENTS.md`. Name a
human role after the actual person—for example, `roel/`—rather than using an ambiguous
substitute such as `owner/`, `user/`, or `project-manager/`. The global file should state the
person's name; ask the person when it does not.

Precise naming is a core workflow property. Every role, process, state file, and concept must
say exactly who or what owns it. A reader should not need local history to interpret a name.

## Primitives

### Framing

Use the nearest `AGENTS.md` to describe non-obvious purpose and boundaries. Keep general
repository rules at the root and role-specific rules beside that role. Do not drag every
process into every agent's context.

### Working state

Store each fact once with the role that owns it:

- a person's backlog and evolving proposals may live beneath that person's role;
- confirmed executable work may have a dedicated todo process;
- exploratory evidence may belong to a researcher role;
- unsent and immutable design exchanges may belong to a design-iteration process.

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

An external teammate is another role, not a blocking phase in a state machine. Design work is
grouped into iterations:

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

Add a role only when work has distinct ownership or context that should not be loaded
everywhere. Give it one clearly named directory and a concise `AGENTS.md`. Add durable state
or tools only when that role has a concrete need for them.

Setup begins by discovering the repository's people and processes. Avoid empty ceremony and
universal vocabulary that erases how a project actually works.
