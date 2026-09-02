---
name: Level-26 descent certificate boundary
description: Separation between reproducible twisted congruences, Sage output, and the unformalized semantic descent bridge.
---

Keep the dependency-free p-adic Hensel certificate and any Sage/mwrank
transcript in separate immutable outputs. Coefficient-defined Lean names must
not be silently identified with database labels returned by Sage. All 160
listed twist/row/bad-prime combinations have strong one-variable Hensel
approximations; this proves local points for the listed ledger, not descent
completeness.

**Why:** The Hensel inequalities close the former p-adic lifting gap, but
reported rank-zero output and `--trivial` quartic labels still do not provide a
complete descent map, identification with the full 2-Selmer group, or the
Selmer-to-rank bridge. Sharing an output path also makes independent
reproductions overwrite one another.

**How to apply:** Recheck residuals, selected partial derivatives, valuations,
primitiveness, and the strict Hensel inequality independently. Keep JSON out of
Lean's trusted theorem boundary, and preserve explicit obligations for
covering completeness, Selmer semantics, and rank soundness.