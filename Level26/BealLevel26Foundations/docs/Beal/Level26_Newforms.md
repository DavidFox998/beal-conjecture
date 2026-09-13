# v8.73.0 displayed dim-2 witness

`exists_newform_level_26_dim2` inhabits
two displayed `Newform` records at level
26, distinct by locked `a₅₃` (`0 ≠ 12`).
Not a Mathlib cusp-form theorem.
Chain `ExistsNewformLevel2` stays `0 != 0`.

# v8.71.0 Ribet-Mazur pack uses these misses

RibetMazur imports this file (not reverse).
`kraus_elimination_q_13_level_26_density`
and `ribet_mazur_pack_q_13_level_26` live
in RibetMazur and apply the v8.69.0
theorems at `B = 196` and `B = 1500003`
only.  Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`.

# v8.69.0-kraus-elim-theorem Int-mod-13 misses

`lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean`
and `RibetMazur.lean`

`newform_26_a_qexp_100` / `newform_26_b_qexp_100`
are `List.take 500` of `qExp_26a1_500` /
`qExp_26b1_500`.  The SHA of
`sagemath/level_26_ledger.json` is unchanged.
Ledger values: `a₅₃(26a1)=0`, `a₅₃(26b1)=12`,
`a₄₄₃(26a1)=21`, `a₄₄₃(26b1)=-39`.

`a53_E_196 = -2` and `a443_E_1500003 = 24`
by point-count `decide` on the displayed
model `y² = x(x − B⁴)(x + C⁴)`.

In this namespace those misses are now
theorems:

- `level26_a_eliminated_by_53` is
  `-2 % 13 ≠ 0 % 13 ∧ -2 % 13 ≠ 12 % 13`
- `level26_b_eliminated_by_443` is
  `24 % 13 ≠ 21 % 13 ∧ 24 % 13 ≠ -39 % 13`
- `kraus_elimination_q_13_level_26` is
  their conjunction

That is **not** residual isomorphism, not
Frey modularity, and **not** a Beal `∀`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
The sketch name is deleted.

`ExistsNewformLevel2` stays `0 != 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
No new Beal forall.
Not Full Mathlib forall.
