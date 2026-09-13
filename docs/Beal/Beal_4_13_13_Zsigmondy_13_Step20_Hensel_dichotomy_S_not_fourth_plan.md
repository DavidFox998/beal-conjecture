# v8.25.0-Hensel-dichotomy-S-not-fourth-plan Zsigmondy Step 20

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.lean`

Records the Hensel dichotomy on `S_val`:
`p² ∣ S` iff `C B⁻¹` has order `13` in
`(ℤ/p²)ˣ`. Unconditional `v_p(S) = 1`
is false. `Φ₁₃' ≠ 0` at a primitive
13th root mod `p ≠ 13` makes Hensel
**lift**. The pair `B = 1`, `C = 460`,
`p = 53` is a concrete lift
(`S % 53 = 0` and `S % 53² = 0`).

`S_not_fourth` is the exists-`p` form
of a valuation not a multiple of 4.
It follows from order `≠ 13`.
Odd `A ≥ 3` then closes from that
exists-`p` order hypothesis.

`exists_p_with_order_ne_13_mod_p_sq`
stays uninhabited: it is the remaining
Hensel lock for both `B ≤ 100` with
`C ≥ B+3` and `B > 100`. `B ≤ 100` is
not a table close. `C = B+1` and
`C = B+2` are closed; `C ≥ B+3` still
needs `S_not_fourth`.

Bare odd-`A` close and full close stay
uninhabited (`ExistsNewformLevel2`
is `0 ≠ 0`).

Keeps v8.24.1 Hensel glue,
v8.24.0 primitive / `of_vp1`,
v8.23.1 S-bounds / k-shape,
v8.22.1 `oddPart_rec` / `2q`,
v8.22.0 radical `N'`, v8.21.1
`frey_curve_conductor`, v8.20.1
`B ≤ 100` (with the honest
`S_not_fourth` hypothesis on
`C ≥ B+3`). Keeps `ExistsNewformLevel2`
as `0 ≠ 0`.

| Name | Status |
|---|---|
| `p_sq_dvd_S_iff_order_13_mod_p_sq` | inhabited |
| `hensel_lift_example_B1_C460_p53` | inhabited |
| `S_not_fourth_of_order_ne_13` | inhabited |
| `beal_odd_A_closed_via_zsig_hensel` | inhabited (exists-`p` order) |
| `C_eq_B_plus_1_or_2_closed` | inhabited (`B ≤ 100` table) |
| `exists_p_with_order_ne_13_mod_p_sq` | uninhabited |
| `beal_odd_A_closed_v8_24_0_inhabited` | uninhabited |
| `beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited` | uninhabited |
| `beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real` | uninhabited |
| `kraus_criterion_q_ne_13` / `X0_2q_no_Frey_match` | stay uninhabited |
| `X0_26_no_matching_newform` | stays uninhabited |
| `modular_W_lift` / `X0_2_no_newforms` | stay uninhabited (`0 ≠ 0`) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
