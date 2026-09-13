# v8.23.1-Zsigmondy-S-vp1-plan Zsigmondy Step 17

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.lean`

Plans the last odd lock via a Zsigmondy
primitive prime of `S` with `v_p(S) = 1`.
Inhabits the `S` value / bounds /
`13 ∣ S` when `B ≡ C [MOD 13]` package
and the honest `k` shape `{1, 13, 13³}`.

This is **not** `∃ g, g ∣ 13` (that drops
the honest `13³` arm). Unconditional
`¬ p² ∣ S` stays false (Hensel lifts
exist). Conditional `v_p(S) = 1` when
`p` is Zsigmondy primitive and
`p ∤ (C−B)` stays an uninhabited Prop.

Keeps v8.23.0 S-bounds / k-shape,
v8.22.1 `oddPart_rec` / `2q` slot,
v8.22.0 radical `N'`, v8.21.1
`frey_curve_conductor`, v8.20.1 `B ≤ 100`
(with the `S_not_fourth` hypothesis on
`C ≥ B+3`). Keeps `ExistsNewformLevel2`
as `0 ≠ 0`.

| Name | Status |
|---|---|
| `S_val` | inhabited |
| `S_bounds` | inhabited |
| `thirteen_dvd_S_of_13_nmid_B` | inhabited |
| `gcd_k_S_dvd_13` | inhabited (honest wrap; not `hEq : True`) |
| `k_shape_1_13_13cubed` | inhabited (`g ∈ {1, 13, 2197}`) |
| `zsigmondy_exists_primitive` | uninhabited |
| `zsigmondy_vp_S_eq_one` | uninhabited |
| `zsig_p_not_dvd_k_of_gcd` | uninhabited |
| `S_times_g_not_fourth_of_vp1` | uninhabited |
| `beal_odd_A_ge3_B_gt_100_closed_via_zsig` | uninhabited |
| `beal_odd_A_closed_v8_23_1` | uninhabited |
| `beal_4_13_13_full_closed_mod_modular_v8_23_1` | uninhabited |
| `beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan` | uninhabited |
| `kraus_criterion_q_ne_13` / `X0_2q_no_Frey_match` | stay uninhabited |
| `X0_26_no_matching_newform` | stays uninhabited |
| `modular_W_lift` / `X0_2_no_newforms` | stay uninhabited (`0 ≠ 0`) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
