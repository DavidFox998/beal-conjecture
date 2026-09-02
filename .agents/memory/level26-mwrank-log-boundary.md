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

Model a full 2-Selmer object as the subgroup of an ambient cohomology group
cut out by local Kummer conditions. Its Kummer map must be an additive
homomorphism that kills doubles. Keep local-to-global surjectivity separate as
the curve-specific vanishing of the represented `Sha[2]` classes.

**Why:** An arbitrary exponent-two group or an arbitrary function can mimic a
finite ledger without being a Selmer group or Kummer map. Moreover, local
solubility does not imply a global point unless the relevant Tate--Shafarevich
class vanishes.

**How to apply:** Prove ledger representation and descent/Kummer compatibility
against the cohomological local-condition subgroup. Require a separately named
`Sha[2]`-vanishing certificate for exhaustion. Derive Selmer cardinality and
Mordell--Weil rank only in later, distinct theorems.