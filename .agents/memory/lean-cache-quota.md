---
name: Lean cache quota
description: A workspace validation constraint affecting fresh Lean 4.12 Mathlib rebuilds.
---

Fresh Lean 4.12 worktrees can exhaust the environment's cache-write quota while
downloading or compiling Mathlib, even when filesystem-level free space is large.

**Why:** The quota is applied to the cache/write layer rather than reported
filesystem capacity, so `df` alone does not predict whether `lake exe cache get`
or a source rebuild can finish.

**How to apply:** Use a persistent Beal worktree and direct
`XDG_CACHE_HOME` to a fresh `/tmp` directory before `lake exe cache get`; this
can avoid a saturated default cache layer. If that still fails, prefer an
existing compatible cache or repository CI. Remove only generated `.lake`
artifacts after failed attempts, then report clearly when validation is blocked.

## Targeted Lake build replay

With a restored but freshly traced dependency cache, a plain targeted `lake
build` can spend longer than the shell time limit replaying every transitive
Mathlib trace even after the target source has compiled.

**Why:** Lake validates the full dependency graph before declaring the target
up to date; this is environmental verification overhead, not a Lean error.

**How to apply:** First run the exact target through `lake --old build` after
restoring the pinned cache, then retain its successful target/audit output.
Use a direct `lake env lean` compile to expose source-level errors promptly.
Do not conflate a trace-replay timeout with a failed theorem elaboration.

When a detached Beal worktree reports changed Mathlib package URLs and removes
its local package checkout, run `lake exe cache get` in that same worktree
before retrying its target build. The root workspace cache does not repair a
separate worktree's `.lake` state.