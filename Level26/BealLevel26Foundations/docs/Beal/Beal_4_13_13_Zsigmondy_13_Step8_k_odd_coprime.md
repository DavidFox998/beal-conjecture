# v8.19.8 Zsigmondy Step 8 — k odd, coprime, A⁴ ≡ k¹³ mod B

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.lean`

On `A⁴ + B¹³ = C¹³` write `k = C − B`.
The equation forces `B ≤ C`.

Odd `A` makes `A⁴` odd, so `C` and `B`
have opposite parity and `k` is odd.

`gcd(C − B, B) = gcd(C, B)` when `C ≥ B`,
so `Coprime C B` gives `Coprime k B`.
Without `C ≥ B` this fails: `C = 1`,
`B = 2` is coprime but `gcd(0, 2) = 2`.

A common prime of `A` and `B` would
divide `C`, against `Coprime C B`.

`(B + k)¹³ ≡ k¹³ [MOD B]`, and
`A⁴ = C¹³ − B¹³`, so
`A⁴ ≡ k¹³ [MOD B]`.

These facts do not close the equation.

| Name | Status |
|---|---|
| `k_odd_of_odd_A` / `beal_4_13_13_k_odd` | inhabited |
| `gcd_k_B_eq_one_of_coprime_C_B` | inhabited with `C ≥ B` |
| `gcd_A_B_eq_one_of_coprime_C_B` | inhabited |
| `A_pow4_congr_k_pow13_mod_B` | inhabited |
| `beal_4_13_13_gcd_k_B_eq_one_of_coprime_only` | uninhabited |
| `beal_odd_A_ge3_closed_of_k_odd_coprime` | uninhabited |
| `S_13_ge_13_mul_B_pow12` | stays inhabited (v8.19.7) |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
No new Beal `∀` Zenodo.
