# Checkpoint workflow

Use `create <message> <file>...` for coherent checkpoint commits. Pass only exact files.
Never pass directories or globs, and do not stage files first. The command refuses a
pre-populated index so unrelated changes cannot enter the checkpoint.

Keep the command POSIX-compatible and repository-agnostic. Do not overlap checkpoint
creation: the Git index is process-global.
