# v8.29.0-Phi13-derivative-LTE-plan Zsigmondy Step 24

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.lean`

`S = Φ₁₃(C,B)` and `t = C · B⁻¹ mod p`
satisfy `p ∣ S ↔ Φ₁₃(t) = 0 mod p`.
The derivative identity plus `p ≠ 13`
gives a simple root (`disc(Φ₁₃) = 13¹¹`
is the classical reason). Hensel then
supplies a unique class `t*` in
`ZMod (p²)`, not a unique natural
number. The square test is the fibre
`p² ∣ S ↔ C · B⁻¹ ≡ t* (mod p²)`.

`B = 1`, `C = 460`, `p = 53` is the
case the ratio already equals that
lift, so `v_p ≥ 2` can happen. The
remaining lock is `C · B⁻¹ ≢ t*` for
at least one primitive prime.

| Name | Status |
|---|---|
| `Phi13` | inhabited |
| `phi13_derivative_separable_mod_p` | inhabited |
| `hensel_unique_lift_of_phi13_root` | inhabited (unique class in `ZMod (p²)`) |
| `p_sq_dvd_S_iff_CB_eq_lifted_root` | inhabited |
| `S_val` / `S_bounds` / Step20–23 wraps | inhabited |
| `norm_eq_S` / `zeta13_class_number_one` | inhabited |
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

`B ≤ 100` is not a table close:
`C = B+1` and `C = B+2` are closed;
`C ≥ B+3` still needs `S_not_fourth`.

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
