# v8.20.0-k-upper-bound-plan Zsigmondy Step 10

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.lean`

On `A⁴ + B¹³ = C¹³` write `k = C − B` and
`S = S_13 C B = Φ₁₃(C,B)`.  Then
`A⁴ = k·S`.

`C = B+k` gives `C ≡ B [MOD k]`, so every
cyclotomic term is `≡ B¹² [MOD k]` and
`S ≡ 13 B¹² [MOD k]`.

Coprime `k B` kills the `B¹²` factor, so
`gcd(k,S) = gcd(k,13) ∣ 13`.  The prime
`13` has divisors `1` and `13`.

Coprime factors of a fourth power are
fourth powers.  The 13-free part of `k`
is therefore a fourth power, and the
13-adic valuation of `k` is `0`, `1`, or
`3` modulo `4`.  Hence
`k = u⁴` or `k = 13 u⁴` or `k = 13³ u⁴`.

The claim that `S` is never a fourth power
for every `B ≤ 100` and unbounded `k ≥ 3`
stays uninhabited.  The shape does not by
itself bound `k` or close the equation.

| Name | Status |
|---|---|
| `S_13_mod_k` | inhabited |
| `gcd_k_S_dvd_13` | inhabited |
| `gcd_k_S_eq_1_or_13` | inhabited |
| `k_mul_S_eq_A_pow4` | inhabited |
| `coprime_mul_eq_fourth_pow` | inhabited |
| `k_almost_fourth_power` | inhabited |
| `beal_4_13_13_k_almost_fourth_power` | inhabited |
| `fourth_pow_mod_16` | inhabited (`0` or `1`) |
| `B_le_100_k_ge_3_no_S_fourth_pow` | uninhabited |
| `beal_odd_A_ge3_closed_of_k_upper_bound_plan` | uninhabited |
| `k_almost_fourth_power_without_gcd` | uninhabited (`k=2`) |
| `fourth_pow_mod_4` / `k % 4 = 1` | stays inhabited (v8.19.9) |
| `beal_4_13_13_k_odd` | stays inhabited (v8.19.8) |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
