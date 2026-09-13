# v8.19.5 Zsigmondy Step 5 — p ≡ 1 mod 13

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.lean`

A prime `p` dividing `C¹³ − B¹³` and
not dividing `C−B` or `B` makes
`u = C · B⁻¹` a unit in `ℤ/pℤ` with
`u¹³ = 1` and `u ≠ 1`.  Since `13`
is prime, the multiplicative order of
`u` is `13`.  Fermat then gives
`13 ∣ (p−1)`, so `p ≡ 1 [MOD 13]`.

Primes `≡ 1 [MOD 13]` below `53`
are none (`1,14,27,40` are composite).
So `p ≥ 53`.  If that prime divides
odd `A ≥ 3`, then `A ≥ 53`.

`A ≥ 53` does not close
`¬ A⁴ + B¹³ = C¹³`.

| Name | Status |
|---|---|
| `order_mod_p` / `order_dvd_p_minus_one_of_prime` | inhabited |
| `order_eq_13_of_primitive_prime_13` | inhabited |
| `primitive_prime_mod_13_eq_1` | inhabited |
| `primitive_prime_ge_53` | inhabited |
| `beal_odd_A_ge3_A_ge_53` | inhabited |
| `beal_odd_A_ge3_closed_of_A_ge_53` | uninhabited |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `S_13` / `p ∣ A → ¬ p ∣ B` | stays inhabited (v8.19.4) |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
No new Beal `∀` Zenodo.
