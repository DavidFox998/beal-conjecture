# v8.24.1-odd-A-closed-for-real Zsigmondy Step 19

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.lean`

Glues the three inhabited Step18 pieces:
`zsigmondy_exists_primitive_inhabited`,
`zsigmondy_vp_S_eq_one_inhabited`,
`beal_odd_A_ge3_closed_of_vp1`.

The sketch `hPrimOrder : True` is junk.
A primitive prime of `S` does **not**
force `v_p(S) = 1`. The inhabited glue
needs the Step11 order in `(ℤ/p²)ˣ`
not equal to 13.

Bare odd-`A` close and full close stay
uninhabited (`ExistsNewformLevel2`
is `0 ≠ 0`). Unconditional `¬ p² ∣ S`
is false (Hensel).

Keeps v8.24.0 primitive / `of_vp1`,
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
| `primitive_prime_not_dvd_bases` | inhabited |
| `beal_odd_A_ge3_closed_of_vp1_inhabited` | inhabited (needs real `v_p=1`) |
| `beal_odd_A_closed_via_zsig_hensel` | inhabited (Hensel glue) |
| `beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel` | inhabited |
| `beal_odd_A_ge3_B_le_100_closed` | uninhabited |
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
