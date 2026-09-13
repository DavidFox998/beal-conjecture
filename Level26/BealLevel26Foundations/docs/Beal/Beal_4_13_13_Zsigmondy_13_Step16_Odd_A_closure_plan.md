# v8.23.0-odd-A-closure-plan Zsigmondy Step 16

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.lean`

Plans the last odd-`A` branch: `S` bounds
`13 B¹² ≤ S ≤ 13 C¹²`, `k` is `u⁴` or
`13 u⁴` or `13³ u⁴`, and `B > 100` freezes
`k ≤ A⁴/(13·100¹²)`. `C ≥ 2 B` gives
`A ≥ 9 B³`.

This is **not** `∃ g, g ∣ 13` (that drops
the honest `13³` arm). Zsigmondy-of-`S`,
unconditional `S_not_fourth`, and odd-`A`
close stay uninhabited. Hensel lifts exist,
so `¬ p² ∣ S` is false as an unconditional
claim.

Keeps v8.22.1 `oddPart_rec` / `2q` slot,
v8.22.0 radical `N'`, v8.21.1
`frey_curve_conductor`, v8.20.1 `B ≤ 100`
(with the `S_not_fourth` hypothesis on
`C ≥ B+3`). Keeps `ExistsNewformLevel2`
as `0 ≠ 0`.

| Name | Status |
|---|---|
| `S_bounds_13_B12_le_S_le_13_C12` | inhabited |
| `k_almost_fourth_power_shape` | inhabited (`u⁴` / `13 u⁴` / `13³ u⁴`) |
| `k_le_A4_div_13_B12` | inhabited |
| `B_gt_100_k_bounded` | inhabited |
| `k_ge_B_imp_A_ge_9B3` | inhabited |
| `zsigmondy_prime_S` | uninhabited |
| `zsig_p_not_dvd_k` | uninhabited |
| `S_not_fourth_power_of_zsig` | uninhabited |
| `S_times_g_not_fourth` | uninhabited |
| `beal_odd_A_ge3_B_gt_100_closed` | uninhabited |
| `beal_odd_A_closed_v8_23_0` | uninhabited |
| `beal_4_13_13_full_closed_mod_modular` | uninhabited |
| `beal_4_13_13_Zsigmondy_13_odd_A_closure_plan` | uninhabited |
| `kraus_criterion_q_ne_13` / `X0_2q_no_Frey_match` | stay uninhabited |
| `X0_26_no_matching_newform` | stays uninhabited |
| `modular_W_lift` / `X0_2_no_newforms` | stay uninhabited (`0 ≠ 0`) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
