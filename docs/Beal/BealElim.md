# v8.75.0 first honest Beal rows

`lean/BealLevel26Foundations/Beal/FullProof/BealElim.lean`

`beal_4_13_13_gap3_B_196_eliminated` is
`¬ ∃ A, Nat.pow A 4 + Nat.pow 196 4 = Nat.pow 199 13`.
`beal_4_13_13_gap3_B_1500003_eliminated` is
`¬ ∃ A, Nat.pow A 4 + Nat.pow 1500003 4 = Nat.pow 1500006 13`.

The kill is fourth-power residues modulo 16
(`A^4 ≡ 0` or `1`; the two rows force `7`
and `15`).  That is **not** Mazur, not
Borel, not a Mathlib residual
representation, and **not** Ribet.

`#print axioms` is empty.  Mathlib `^` is
`HPow` and would inject `propext` in this
import graph; the statements use kernel
`Nat.pow`.  Not `Classical.em`.  Not
`Classical.choice`.

The displayed v8.69.0–v8.74.0 pack
(`exists_newform_level_26_dim2`,
`frey_mod13_irreducible`,
`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443`) is recorded
and axiom-free.  It does not inhabit the
Beal negation.

`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

Does not import `RibetMazur`.
Does not import the axiom `frey_modular_13`.
