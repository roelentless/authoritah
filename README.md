![Authoritah header](assets/886be605-1dfc-417f-b1e3-013d287e4579.jpg)

# Authoritah

A simple, elegant workflow for day-to-day agentic engineering.

It is a generic way of working, without harness tooling.

Reason about that workflow naturally, in terms of the people, responsibilities, boundaries,
and handoffs already present.

With clear prompting, this surprisingly simple structure can yield cleaner, better-organized
agentic development processes.

Authoritah keeps the development context it manages in clearly named directories, called
domains. Each domain holds the local instructions, working state, handoffs, and optional tools
for one part of the workflow, so coding agents load only what is relevant.

It layers into a repository's normal development workflow. Existing issue trackers, client
systems, and other local or external ways of working remain in place; Authoritah can frame how
work connects to them without taking them over.

Read the [workflow model](skills/authoritah/references/WORKFLOW.md).

## Install

From GitHub:

```sh
mkdir -p ~/.local/share
git clone https://github.com/roelentless/authoritah.git ~/.local/share/authoritah
make -C ~/.local/share/authoritah install
```

For local Authoritah development, link the current checkout instead:

```sh
make install
```

Installation uses live links to the Authoritah source in `~/.local/share/authoritah`. The global
initializer and each repository-local runtime skill therefore use the same source; updating that
checkout upgrades every linked installation.

Update a GitHub installation with `make -C ~/.local/share/authoritah update`. This runs a checked
`git pull --ff-only` and refuses a dirty checkout. A local development installation already
follows the current checkout, so it does not pull.

## Initialize a repository

Ask a coding agent:

```text
Use the init-authoritah skill to initialize _workflow in this repository.
```

## License

[Apache License 2.0](LICENSE)
