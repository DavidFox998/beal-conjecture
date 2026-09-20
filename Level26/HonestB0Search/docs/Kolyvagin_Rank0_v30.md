# Kolyvagin rank-0 structural verification (v30)

`v30.0.0-level-26-structural-verification` ports foundations `v0.30-mcom-structural-verification`
at `2b60ccd` (chore `9160a6a` from `bc7e93b`). Lean 4.12 explicit
types, `open Nat Finset Classical`, `decide` on Nats, `norm_num`
on `ℚ`. Parent `TwoDescent_26a1_26` `7c19ad0`.

Theorems live in [`../Kolyvagin_MW_Rank0_26a1_26b1_final.lean`](../Kolyvagin_MW_Rank0_26a1_26b1_final.lean):

- `|Sel₂| = 1`, `3 · 7 = 21`
- `L/Ω = 1/3` (26a1) and `1/7` (26b1)
- `¬ IsRankZero` on Cremona 26a1 / 26b1
- `Nonempty (Fintype α) → Finite α`
- Unit Subsingleton card `1`

Honest: `IsRankZero = Subsingleton` is **false** on
both models (torsion 3 and 7). Algebraic MW rank 0 as
`Nonempty (Fintype (E(ℚ)))` stays `def Prop` on the
parent. This is not Kato/Kolyvagin and not Sage
`E.rank()`. Parent
`Kolyvagin_MW_Rank0_26a1_26b1.lean`,
`BSD_MordellWeil.lean`, and
`X0_26_Full2Torsion.lean` keep those names as
`def Prop`.

Concept DOI: `10.5281/zenodo.22379293`.
