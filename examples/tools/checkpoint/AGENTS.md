# Checkpoint workflow

Use `create <message> <file>...` for coherent checkpoint commits. Pass only exact files.
Never pass directories or globs, and do not stage files first. The command refuses a
pre-populated index so unrelated changes cannot enter the checkpoint. Pass paths relative to
the repository root.

A checkpoint ends with the local commit. Push only when the user explicitly requests it or the
work belongs to an existing upstream pull request.

Keep the command POSIX-compatible and repository-agnostic. Do not overlap checkpoint
creation: the Git index is process-global.

Keep `_SETUP.md` aligned with the tool's installation contract.
