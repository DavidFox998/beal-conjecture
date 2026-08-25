---
name: Lean cache quota
description: A workspace validation constraint affecting fresh Lean 4.12 Mathlib rebuilds.
---

Fresh Lean 4.12 worktrees can exhaust the environment's cache-write quota while
downloading or compiling Mathlib, even when filesystem-level free space is large.

**Why:** The quota is applied to the cache/write layer rather than reported
filesystem capacity, so `df` alone does not predict whether `lake exe cache get`
or a source rebuild can finish.

**How to apply:** For a first-time Beal worktree, prefer an existing compatible
Lean cache or the repository CI for the full build. Still run source audits and
small core checks locally, and report clearly when the full rebuild is blocked.