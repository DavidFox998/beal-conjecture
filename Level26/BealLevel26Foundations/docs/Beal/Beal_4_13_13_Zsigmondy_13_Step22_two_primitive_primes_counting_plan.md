# v8.27.0-two-primitive-primes-counting-plan Zsigmondy Step 22

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.lean`

The sketch wants `ω(S) ≥ 2` when
`C ≥ B+3`, then a second primitive
prime, then at least one not square.
Zsigmondy still gives **one** primitive
prime. `S` can be `q^k` for that prime,
so “not a prime power” stays a Prop.
`S` cannot be `13^k` (inhabited): a
primitive prime is `≠ 13`.

Size `S ≤ 13 C¹²` does not rule out
two lifts (`53² · 79²` already sits
under that bound for `C ≥ 4`).

| Name | Status |
|---|---|
| `S_not_power_of_thirteen` | inhabited |
| `exists_p_of_two_primes_one_not_square_inhabited` | inhabited |
| `zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited` | inhabited |
| `S_not_fourth_of_order_ne_13_inhabited` | inhabited |
| `S_not_prime_power_when_C_ge_B_plus_3` | uninhabited |
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
