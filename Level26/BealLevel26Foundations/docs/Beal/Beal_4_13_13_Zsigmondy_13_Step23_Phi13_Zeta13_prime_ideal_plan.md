# v8.28.0-Phi13-Zeta13-prime-ideal-plan Zsigmondy Step 23

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.lean`

The sketch writes `S = Φ₁₃(C,B)` as
`N_{Q(ζ13)/Q}(C − B ζ)`, notes class
number 1, and hopes `C − B ζ` is not
a prime power in the PID, hence two
rational primes. Mathlib 4.12 has no
class group of `Q(ζ13)` and no Dedekind
factorization in `Z[ζ13]`.

Inhabited: the displayed homogeneous
sum `phi13`, `norm_eq_S`, recorded
class number 1, and one primitive
prime of the displayed norm.
Two prime ideals stay a Prop (same
lock as two rational primes; two
primes above one `p` still give one
rational prime). Size does not kill
two Hensel lifts.

| Name | Status |
|---|---|
| `norm_eq_S` | inhabited |
| `zeta13_class_number_one` | inhabited (recorded `1`) |
| `zeta13_prime_ideal_factorization_exists` | inhabited (one primitive prime of the norm) |
| `S_not_power_of_thirteen_inhabited` | inhabited |
| `S_not_prime_power_when_C_ge_B_plus_3` | uninhabited |
| `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3` | uninhabited |
| `S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3` | uninhabited |
| `zeta13_two_prime_ideals_give_two_rational_primes` | uninhabited |
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
