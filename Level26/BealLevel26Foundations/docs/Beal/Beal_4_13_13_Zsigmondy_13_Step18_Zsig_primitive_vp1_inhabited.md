# v8.24.0-Zsigmondy-primitive-vp1-inhabited Zsigmondy Step 18

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.lean`

Inhabits Zsigmondy primitive existence
and the `v_p = 1` arithmetic, and
closes odd `A ≥ 3` **from** a genuine
`v_p(S) = 1` hypothesis.

Mathlib 4.12 has no
`Mathlib.NumberTheory.Zsigmondy`.
Existence wraps Step11
`primitive_prime_dvd_S`.
Bundled `v_p(S) = 1` from only
`p ∣ S`, `p ∤ (C−B)`, `p ≠ 13`
stays an uninhabited Prop (Hensel
lifts exist). The inhabited
`zsigmondy_vp_S_eq_one_inhabited`
needs the Step11 order in
`(ℤ/p²)ˣ` not equal to 13.

Keeps v8.23.1 S-bounds / k-shape,
v8.22.1 `oddPart_rec` / `2q`,
v8.22.0 radical `N'`, v8.21.1
`frey_curve_conductor`, v8.20.1
`B ≤ 100` (with the honest
`S_not_fourth` hypothesis on
`C ≥ B+3`). Keeps `ExistsNewformLevel2`
as `0 ≠ 0`.

| Name | Status |
|---|---|
| `S_val` | inhabited (opened from Step17) |
| `S_bounds` | inhabited (opened from Step17) |
| `thirteen_dvd_S_of_BeqC_mod13` | inhabited |
| `gcd_k_S_dvd_13_honest` | inhabited (`C=B+k`, `0<k`, `Coprime k B`; not `hEq : True`) |
| `k_shape_1_13_13cubed` | inhabited (`g ∈ {1, 13, 2197}` with `gcd(k,S) ∣ 13`) |
| `zsigmondy_exists_primitive_inhabited` | inhabited |
| `zsig_p_not_dvd_k_of_gcd_inhabited` | inhabited |
| `S_times_g_not_fourth_of_vp1_inhabited` | inhabited (needs real `factorization p = 1`) |
| `zsigmondy_vp_S_eq_one_inhabited` | inhabited (Hensel-conditional) |
| `beal_odd_A_ge3_closed_of_vp1` | inhabited |
| `beal_odd_A_ge3_B_gt_100_closed_of_vp1` | inhabited |
| `zsigmondy_vp_S_eq_one_unconditional` | uninhabited |
| `beal_odd_A_ge3_B_le_100_closed` | uninhabited |
| `beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited` | uninhabited |
| `beal_odd_A_closed_v8_24_0` | uninhabited |
| `beal_4_13_13_full_closed_mod_modular_v8_24_0` | uninhabited |
| `beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan` | uninhabited |
| `kraus_criterion_q_ne_13` / `X0_2q_no_Frey_match` | stay uninhabited |
| `X0_26_no_matching_newform` | stays uninhabited |
| `modular_W_lift` / `X0_2_no_newforms` | stay uninhabited (`0 ≠ 0`) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
