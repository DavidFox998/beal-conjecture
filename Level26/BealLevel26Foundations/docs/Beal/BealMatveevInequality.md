# v21.0.0 Matveev log-form nonzero + height bound

`lean/BealLevel26Foundations/Beal/FullProof/BealMatveevInequality.lean`

v21 integer brick (no Real.log):

- `matveev_log_form_int B = 16 * (4B − 13(B+3))` using Tate c4 scale
- `matveev_log_form_ne_zero_zero` / `_fourteen` by decide (**no axioms**)
- `matveev_log_form_ne_zero` on `B % 14 = 0`
- `matveev_height_le_log_B0`: `B ≤ B0_raw` is `B ≤ 104382751019310000000`
- `matveev_census_B0_le_height` (`1e6 ≤ B0_raw`) by decide (**no axioms**)

v20 Real.log skeleton unchanged:

Names the linear form with Mathlib `Real.log`:

- `matveev_log_form A B = 4 log A - 13 log(B+3)`
- `matveev_log_form_eq` by `rfl`
- `matveev_lower_bound_scale = matveev_C1_floor = 143186215390`
  (`matveev_lower_bound_scale_pos` by decide, no axioms)
- `matveev_lower_bound` stays an uninhabited **def Prop**
  (`|Λ| > exp(-C1_floor * 30^{n+3})`)
- Tate c4 scale 16 reused (`matveev_inequality_c4_height`)
- `matveev_inequality_constants : List Int`;
  `matveev_inequality_constants_hold` by decide (**no axioms**)

`baker_bound_gap3` stays a **def Prop**.
`baker_bound_gap3_of_matveev_inequality` is the named
implication (not inhabited). Mathlib 4.12 has no
Matveev 2000 Thm 1.4. Does not use sorry.
