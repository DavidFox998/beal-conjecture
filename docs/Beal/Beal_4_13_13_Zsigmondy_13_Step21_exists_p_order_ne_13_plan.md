# v8.26.0-exists-p-order-ne-13-plan Zsigmondy Step 21

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.lean`

The sketch tries to inhabit
`exists_p_with_order_ne_13_mod_p_sq`
from two distinct primitive primes
plus “not both lift”. Zsigmondy gives
**one** primitive prime, not two.
Two Hensel lifts can both succeed;
`B = 1`, `C = 460`, `p = 53` already
shows one lift.

Inhabits the Step20 dichotomy wrap,
the lift example, conditional `v_p=1`,
and the honest glue fragment
`exists_p_of_two_primes_one_not_square`
(two primes, at least one not square).

`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`, and
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stay uninhabited. Bare odd-`A` close
and full close stay uninhabited
(`ExistsNewformLevel2` is `0 ≠ 0`).

`B ≤ 100` is not a table close.
`C = B+1` and `C = B+2` are closed;
`C ≥ B+3` still needs `S_not_fourth`.

| Name | Status |
|---|---|
| `p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited` | inhabited |
| `hensel_lift_example_B1_C460_p53` | inhabited |
| `zsigmondy_vp_S_eq_one_of_order_ne_13` | inhabited |
| `S_not_fourth_of_order_ne_13` | inhabited |
| `exists_p_of_two_primes_one_not_square` | inhabited (needs two primes + one not square) |
| `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3` | uninhabited |
| `not_all_p_lift_when_two_primes` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `beal_odd_A_closed_via_zsig_hensel_inhabited` | uninhabited |
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
