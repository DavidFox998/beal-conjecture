# `kolyvagin-fintype` — `Fintype` rank 0, not Subsingleton

Working branch of **beal-level-26-foundations**, cut from
`phase-darmon-merel-4413` at `43735b3`. Not cut from `main`.
Do **not** merge back until asked.

beal-conjecture v26 at `5e2906b` (badge `5806dad`, DOI
`10.5281/zenodo.22832505`) stays untouched.

## Inhabited on this branch

From `Kolyvagin_MW_Rank0_26a1_26b1.lean` (reuses
`TwoDescent_26a1_26` `7c19ad0`, `BSD_MordellWeil` `8994d38`,
`J0_26_BSD_26a1_26b1`):

- `not IsRankZero` on `26a1` / `26b1` via torsion points
  `(4,4)` (Delta = -17576, Z/3) and `(1,0)` (Delta = -1664,
  Z/7). Pasted `IsRankZero` is Subsingleton / only `{0}`.
- BSD quotients `L/Omega = 1/3` and `1/7` (rationals, not
  `L(E,1)` as a real).
- Displayed `|Sel2| = 1`, `3 * 7 = 21`, `2^0 = 1`.
- Sage `certified_mwrank` display `0` (Nat, not Mathlib MW).
- Package `Kolyvagin_MW_Rank0_26a1_26b1_inhabited`.

External transcripts (not Lean theorems):
`sagemath/j0_26_decomp_foundation.sage`,
`scripts/verify_descent_26.py` PARI `ellrank [0,0]`,
`certs/pari_x0_26_four_cusps.json`.

## Still `def Prop`

- `MW_rank_zero_fintype` = `Nonempty (Fintype (E(Q)))`
- `MW_rank_zero_26a1_fintype` / `26b1`
- `Kolyvagin_L_nonzero_imp_MW_rank_zero` (Kato/Kolyvagin)
- `TwoDescent_implies_MW_rank_zero_fintype`

`|Sel2|=1` as a Nat does **not** inhabit
`Nonempty (Fintype (MordellWeilGroup E))`. No `J0_26_rank0`
theorem. No Wiles. No new axiom. No `sorry`. No `Prop := True`.

## Build

```bash
lake build +Kolyvagin_MW_Rank0_26a1_26b1
./scripts/verify-matveev-beal.sh
```
