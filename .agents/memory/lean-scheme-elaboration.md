---
name: Lean scheme comparison elaboration
description: Large dependent scheme-chart comparison statements can exhaust elaboration before their proofs are checked.
---

For scheme-chart compatibility arguments involving nested pullbacks, quotient rings, and `Proj` basic opens, keep the naturality lemmas abstract and stage them by base-change operation before specializing to a concrete Rees algebra. Do not put every chart ring, graded quotient, open, and chosen isomorphism in one expanded theorem statement.

**Why:** Both a concrete all-pairs Rees restriction statement and an expanded generic affine-chart pullback square stalled during elaboration. Smaller affine tensor, affine pullback, and residue-comparison lemmas checked under the same compiler and import closure. Raising heartbeats alone would not clarify where the dependent comparison fails.

**How to apply:** Compare canonical quotient maps and both pullback projections in separately named lemmas; only then paste the chosen isomorphisms. If a large statement times out before proof diagnostics, first factor its diagram into shorter typed morphisms and test the abstract square instead of adding denominator-survival hypotheses or assuming a missing geometry theorem.