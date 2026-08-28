---
name: Release worktree recovery
description: Recovering a missing or stale named Git worktree before pushing a release branch
---

When a named worktree path exists after a session restart, verify it with
`git -C <path> rev-parse --show-toplevel` and inspect its `.git` metadata before
editing or committing. If it resolves to the parent repository or has no
worktree metadata, treat it as a snapshot and clone the exact remote branch
into a fresh workspace path for release work.

**Why:** A stale worktree registration can make a directory look like the
intended branch while Git actually operates on the parent repository’s branch,
which risks committing release documentation to the wrong history.

**How to apply:** Confirm the branch and HEAD from the fresh checkout, perform
the verification there, and push by explicit branch name before any merge or
tag operation.