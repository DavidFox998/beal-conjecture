# v8.32.0-S-not-proper-prime-power-gap3 Zsigmondy Step 27

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.lean`

v8.31.0 refuted "S never a prime power
(k >= 1)" by `S_val 1 5 = 305175781`
prime (Pratt, a = 6). A prime is
`p^1`, so it is not a *proper* prime
power (`k >= 2`).

The remaining obstruction is `k >= 2`:
if `S = q^k` with `k >= 2` then
`q^2 | S`, and the Step11 dichotomy
forces order = 13 in `(Z/q^2)*`. If
`S` is prime then `p^2` does not
divide `S`, so order != 13 on that
pair.

The sketch forall "C >= B+3 implies S
is never a proper prime power" is a
Ljunggren-type claim. Mathlib 4.12
has no Ljunggren or Bugeaud-Shorey.
`B = 1`, `C = 5` is `k = 1`, so it
is not a counterexample to the
proper-power claim. That forall stays
a Prop.

Even if S is not a proper prime power,
`exists_p` is not automatic: S prime
gives `v_p = 1`, but `S = p1^2 * p2^2`
still has `p_i^2 | S` for each i.
Need `S_has_prime_with_exp_one`.

| Name | Status |
|---|---|
| `S_val` / `S_bounds` / Step20-25 wraps | inhabited |
| `S_val_1_5` / `S_val_1_5_prime` | inhabited (Pratt wrap) |
| `S_prime_power_example_B1_C5` | inhabited |
| `S_not_prime_power_when_C_ge_B_plus_3_fast_refuted` | inhabited |
| `IsProperPrimePower` | inhabited (def, k >= 2) |
| `not_isProperPrimePower_of_prime` | inhabited |
| `proper_prime_power_imp_sq_dvd` | inhabited |
| `S_val_1_5_not_proper_prime_power` | inhabited |
| `exists_p_with_order_ne_13_mod_p_sq_example_B1_C5` | inhabited (this pair only) |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited (Ljunggren-type) |
| `S_has_prime_with_exp_one` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `not_all_p_lift_when_two_primes` | uninhabited |
| `chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`B <= 100` is not a table close.
The gap-3 proper-power forall is not
closed.

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
