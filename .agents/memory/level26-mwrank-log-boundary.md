---
name: Level-26 descent certificate boundary
description: Separation between reproducible twisted congruences, Sage output, and the unformalized semantic descent bridge.
---

Keep the dependency-free p-adic Hensel certificate and any Sage/mwrank
transcript in separate immutable outputs. Coefficient-defined Lean names must
not be silently identified with database labels returned by Sage. The listed
twist/row/bad-prime combinations have strong one-variable Hensel
approximations, and the formal coefficient ledger exhausts all recorded
squareclass-row pairs.

**Why:** The Hensel inequalities close the former p-adic lifting gap, while
the twisted equation and finite Cartesian ledger close the enumeration gap.
Reported rank-zero output and `--trivial` quartic labels still do not identify
that finite ledger with the full 2-Selmer group or supply the Selmer-to-rank
bridge. Sharing an output path also makes independent reproductions overwrite
one another.

**How to apply:** Recheck residuals, selected partial derivatives, valuations,
primitiveness, the strict Hensel inequality, and every squareclass-row pair
independently. Keep JSON out of Lean's trusted theorem boundary, and preserve
explicit obligations for curve-specific descent soundness, abstract Selmer
semantics, and rank soundness.