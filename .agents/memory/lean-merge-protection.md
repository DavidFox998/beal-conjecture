---
name: Lean merge protection
description: The GitHub main-branch rule that protects the workflow allowlist and the exact status-check naming constraint.
---

The `DavidFox998/brothers-desert-proof` `main` branch must require only the Lean job check
`Clean lake build — Siegel.SiegelZeroFreeElementary`. The ensemble-link and
bridge-notification workflows are advisory and must not be required contexts.

**Why:** The workflow allowlist prevents unrelated automation only when its
job result is enforced by the repository's merge rule. GitHub matches required
checks by their exact job name, so a rename can silently orphan the protection.
The combined workspace's `origin` points to the ZeroBeacon API repository, but
that repository is not the owner of this Lean workflow boundary.

**How to apply:** Target `brothers-desert-proof`, not the workspace `origin`.
If the Lean job name changes, update the GitHub branch rule atomically and
rerun the positive/negative workflow-boundary fixture test.