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