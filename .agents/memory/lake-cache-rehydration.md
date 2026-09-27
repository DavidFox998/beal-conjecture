---
name: Lake cache rehydration
description: Scratch Lean checks can lose compiled dependencies after an isolated worktree is reattached.
---

After an isolated worktree is reattached, Lake may report changed dependency URLs and re-clone packages, discarding compiled Mathlib objects even though the pinned manifest and tracked source remain unchanged. The same re-clone can recur on a later Lean invocation in an otherwise unchanged worktree.

**Why:** This happened during repeat scratch checks; the immediate "unknown module prefix Mathlib" error reflected missing object files, not a proof error or an intentional dependency update.

**How to apply:** Verify the worktree resolves to its own Git root and its manifest is unchanged before a Lean check. If Lake discards objects, restore the cache for that pinned dependency set before interpreting scratch compiler errors. An interrupted clone can leave `.git` present but `HEAD` pointing to an invalid ref; a fetch or cache-get alone will not repair that state, so check out the manifest-pinned revision before restoring compiled objects. Matching cached objects elsewhere can support scratch work, but verify again against the repaired target. Do not modify tagged source or infer that a full project build succeeded.

**Git metadata pitfall:** A dependency directory can contain Mathlib sources without a `.git` entry. Then `git -C` inside it silently reports the *parent project's* HEAD, not Mathlib's. The manifest records the intended pinned revision, but does not independently prove the directory's Git identity.

**Why:** An environment check appeared to report an unrelated Mathlib revision although the manifest retained its exact pin and the missing metadata explained the misleading Git result.

**How to apply:** Check for dependency Git metadata before interpreting `git -C` output. If absent, report the manifest pin as a pin, not as a verified checkout HEAD; restore the compiled cache and run the library checks before assessing proofs.

**Cache completion pitfall:** `lake exe cache get` can report “No files to download” and successfully unpack cached objects while a subsequent full `lake build` still spends a long time compiling missing Mathlib modules. A timeout partway through that build is not a proof failure or a passing baseline.

**Why:** After cache rehydration, the baseline required several incremental build attempts before the full library completed; stopping at the first timeout would have obscured whether the environment check actually passed.

**How to apply:** Require the explicit successful full-build result before editing proofs when the baseline is a prerequisite. If output shows Mathlib compilation progressing without errors, allow the incremental build to complete, then check the exact final exit status; do not substitute cache-get success for build success.

**Toolchain availability pitfall:** An environment restart can leave `lake` absent from PATH even when the pinned manifest survives. Installing the `elan` system dependency can silently add a Nix stanza to the project's Replit configuration; the next Lake invocation may also re-resolve dependencies, leaving Mathlib object files absent despite source being present. For a verification-only run, remove that dependency afterward and restore the original configuration through the validated replacement mechanism.

**Why:** A documentation-only check initially could not launch Lake; after making the pinned toolchain available, the build passed, but the temporary package setup had changed tracked project configuration.

**How to apply:** Distinguish a missing executable or missing Mathlib objects from a Lean proof failure; restore the pinned cache if needed. Check the final working-tree diff after setting up verification tools, and do not leave toolchain configuration changes in a source-only task unless they were requested.

**Repeated scratch-check pitfall:** A vendored path dependency can spell a Git repository URL with a `.git` suffix while the root project spells the same URL without it. Some Lake invocations treat the spellings as different and re-clone the same pinned dependency, discarding its compiled objects. A direct Lean invocation with an explicit library search path avoids dependency materialization for scratch checks.

**Why:** A scratch check using Lake repeatedly removed previously restored Mathlib objects even though the pinned commit and root manifest did not change; inspecting the two package declarations revealed the differing URL spellings. Later, a full build initiated another re-clone even after the spellings matched, so URL alignment is not a guarantee that Lake will preserve its cache across invocations.

**How to apply:** If Lake reports “URL has changed” unexpectedly, compare *all* path-package dependency declarations, not just Git's remote URL and the root manifest. Keep the spelling of a shared dependency URL identical in both root and path-package declarations and manifests; differing `.git` suffixes can discard the cache on a full build despite an unchanged pinned revision. Prefer direct Lean checks after cache restoration for local proof experiments; still run the requested full Lake build and check its exit status separately.

**Unbuilt Mathlib import pitfall:** A successful project build need not compile every Mathlib source file. Direct Lean checks can fail with a missing `.olean` after adding an import of an otherwise unused Mathlib module, even though that module's source exists. For a short auxiliary argument, using already-imported definitions may avoid a costly dependency rebuild; alternatively build the newly imported module. Treat the missing object as a build-dependency issue, not a failed theorem.

**Why:** A small field-dimension helper existed in the pinned source tree, but its module was outside the compiled import closure. The project-local proof compiled using the already available prime-spectrum definitions instead.

**How to apply:** Before adding a Mathlib import solely for a small lemma during direct checks, verify its compiled object exists; if not, either compile it deliberately or prove the short fact from available imports. Always confirm the final project build independently.

**Stale compiled visibility pitfall:** Directly checking a downstream Lean source after changing an upstream declaration from `private` to public can report `unknown identifier` even when the upstream source compiles. The downstream import still loads the previously compiled upstream `.olean`, where that public name did not exist.

**Why:** The updated upstream file passed a direct source check, while the downstream file could see every other declaration but not the newly exposed helper. A full Lake rebuild compiled the upstream module first and then the downstream theorem successfully.

**How to apply:** When a newly public upstream declaration is the sole unknown name in a direct downstream check, rebuild the actual dependency chain before diagnosing it as a proof error. A temporary single-module `.olean` outside the project's normal library tree may not be sufficient, because Lean resolves imports through a complete compiled-library root.