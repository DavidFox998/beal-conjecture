# BealMatveevInequalityReal — v22 Real bound skeleton from integer constants

Lean: [`lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean`](../../lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequalityReal.lean)

## What is kernel-real here

- `matveev_C_exp_bound : Real` is the explicit exponent
  `-(matveev_C1_floor : Real) * (thirty_pow : Real) * Real.log (height_B0 : Real)`,
  with Nat/Int → Real coercion via `(matveev_C1_floor : Real)`.
- `matveev_C_exp_bound_decide` : `matveev_C1_floor = 143186215390 ∧ thirty_pow = 729000000` by `decide`, no axioms.
- `matveev_C_exp_bound_height_decide` : `C1_floor * thirty_pow = 104382751019310000000` by `decide`, no axioms.
- `matveev_inequality_real_int_ne_zero_*` reuse the v21 Int witnesses by `decide`, no axioms.
- `matveev_inequality_real_height_le` reuses the v21 height bound (`:= hB`).
- `matveev_inequality_real_constants_hold` by `decide`, no axioms.

## What is still not kernel-real

- `matveev_inequality_real_formal` / `matveev_inequality_real_lower` remain uninhabited `def Prop`.
  Mathlib 4.12 has no Matveev 2000 Theorem 1.4. The v21 integer form
  `16 * (4 B − 13 (B+3)) ≠ 0` does not imply
  `|4 log A − 13 log(B+3)| > exp(matveev_C_exp_bound)`.
- `baker_bound_gap3` stays an uninhabited `def Prop`.
- `baker_bound_gap3_of_matveev_inequality_real` is the named implication only.

Does not use sorry. No `axiom`. No `native_decide`.
Does not import `RibetMazur`, `FreyModularity_13`, or `BealFreyB14`.
Does not inhabit `ExistsNewformLevel2` or `¬ PositiveBealTriple`.

## Honesty lock

`git diff v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero` is 0 on
Tate / Baker / modular-elim / v15 B0 / v17 LLL / v19 constants / v20 Bugeaud LLL / v21 inequality.

v14 `J0 = [[1,0,1,-5,-8],[1,-1,1,-3,3]]`, mwrank `{0,12}`, formal `M3 = [[1,1],[0,2]]` unchanged.

This is the first brick toward inhabiting `∀ B > 10^6` in-kernel without the
PARI `baker_B0_PARI = 1000000` hypothesis. Next (v23): use a real inequality
theorem to inhabit `baker_bound_gap3` and then `B > 10^6` gap-3 via
`baker_conditional_gap3_full`.
