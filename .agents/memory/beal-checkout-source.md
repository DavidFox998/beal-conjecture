---
name: Beal checkout source
description: How to find the current Beal development when this workspace also contains an older embedded copy.
---

## Rule

The canonical Beal repository is
`https://github.com/DavidFox998/beal-conjecture`. For current B14–B20 work, use
its `beal/main` revision rather than assuming the workspace's embedded
`beal-conjecture/` directory is current.

**Why:** The embedded copy can retain an older module layout while the remote
development has newer B14 and B20 files. Applying changes to the embedded copy
would create a disconnected patch that does not affect the active Beal branch.

**How to apply:** Before editing or building a Beal task, verify that the
configured `beal` remote resolves to the canonical URL and compare the requested
module names with its fetched `main` tree. Use a real Git worktree of that
revision for changes and validation; do not edit the embedded snapshot or
overwrite the unrelated ZeroBeacon workspace root.

## Publishing boundary

The ensemble workspace's Git `main` is not the public
`DavidFox998/beal-conjecture` repository, and directories under `.worktrees`
are ordinary tracked paths here rather than independent Git worktrees.

**Why:** Commits made under a nested source path can appear on the ensemble
branch while being absent from the public Beal repository and its Actions
workflow.

**How to apply:** Clone the configured `beal` remote into a dedicated temporary
checkout, make source changes under its repository-root `lean/` paths, validate
there, push that checkout's `main`, and verify the remote head plus its newly
triggered Actions run.