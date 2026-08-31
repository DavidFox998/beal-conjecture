---
name: Lean cache quota
description: A workspace validation constraint affecting fresh Lean Mathlib rebuilds.
---

Fresh Lean worktrees can exhaust the environment's cache-write quota while
downloading or compiling Mathlib, even when filesystem-level free space is large.

**Why:** The quota is applied to the cache/write layer rather than reported
filesystem capacity, so `df` alone does not predict whether `lake exe cache get`
or a source rebuild can finish.

**How to apply:** Prefer an existing compatible cache or repository CI for
targeted validation. A fresh temporary worktree and a separate cache may still
hit the quota, so remove only generated `.lake` artifacts after failed attempts
and report clearly when validation is blocked.

## Targeted Lake build replay

With a restored but freshly traced dependency cache, a plain targeted `lake
build` can spend longer than the shell time limit replaying every transitive
Mathlib trace even after the target source has compiled.

**Why:** Lake validates the full dependency graph before declaring the target
up to date; this is environmental verification overhead, not a Lean error.

**How to apply:** First run the exact target through `lake --old build` after
restoring the pinned cache, then retain its successful target/audit output.
Use a direct `lake env lean` compile to expose source-level errors promptly.
If Lake treats a newly added module name as an unknown runnable target and
reports its existing source file as missing, compile the source path directly;
do not keep retrying alternate `lake build` target spellings.
Do not conflate a trace-replay timeout with a failed theorem elaboration.

When a detached Beal worktree reports changed Mathlib package URLs and removes
its local package checkout, run `lake exe cache get` in that same worktree
before retrying its target build. The root workspace cache does not repair a
separate worktree's `.lake` state.

## Tracked Layer artifacts in detached worktrees

Some Beal worktrees retain tracked `.lake` outputs whose timestamps can be
newer than edited Lean source while their interfaces are older. Lake may replay
such an artifact instead of recompiling the source, causing downstream
``unknown identifier`` or stale API errors.

**Why:** Target freshness can follow the artifact timestamp rather than the
actual source/interface contents after build-output cleanup.

**How to apply:** For a focused audit, regenerate the exact prerequisite
module with `lake env lean -R lean` and explicit `-o`/`-i` output paths, then
compile its consumer. Remove or restore generated outputs before leaving the
worktree; do not interpret errors from an old `.olean` as source errors.

## Corrupt local package checkout

If Lake reports that a package cannot resolve `HEAD`, do not retry its manifest
fetch against that checkout: it can leave the local package source tree with
many tracked files deleted while still failing before elaboration begins.

**Why:** Lake needs the package Git `HEAD` to resolve the manifest even when
compatible compiled `.olean` artifacts already exist elsewhere in the
workspace.

**How to apply:** Restore any accidental package-tree changes first. For a
focused source check, compile changed modules directly against a known-good
compatible package artifact cache; use CI or a repaired checkout for the full
Lake build. If the exact manifest commit is already present in the package
object store but `HEAD` points to an invalid ref and the worktree is empty,
detach-checkout that manifest commit, then restore the official binary cache
with `lake exe cache get`. Rebuild any project prerequisite whose stale
`.olean` hides current declarations before compiling its consumer. Treat this
as environment failure, not a theorem failure.

## Do not share mutable `.lake` directories by symlink

Matching Lean versions and resolved Mathlib commit hashes are not sufficient
for safely symlinking one checkout's whole `.lake` directory into another.
Lake also compares dependency URL/origin metadata and may delete and reclone
every package when that metadata differs.

**Why:** A shared symlink makes the deletion occur inside the donor checkout's
generated cache, destroying the very artifacts intended for reuse even though
the source repositories remain untouched.

**How to apply:** Keep one persistent proper worktree with its own ignored
`.lake` directory. In CI, cache `.lake/packages` under the exact
`lean-toolchain` plus `lake-manifest.json` hash. Never symlink a mutable
`.lake` from another checkout; bootstrap once in the target and preserve it.
