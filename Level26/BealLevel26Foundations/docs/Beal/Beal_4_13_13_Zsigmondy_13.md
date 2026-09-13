# v8.19.3 Zsigmondy at n=13

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13.lean`

Mathlib 4.12 has no `Mathlib.NumberTheory.Zsigmondy`.
The classical exceptions `(a,b,n)=(2,1,6)` and
`n=2` fail by `decide` (`13 ≠ 6`, `13 ≠ 2`).
Existence of a primitive prime divisor of
`C¹³ − B¹³` is the elementary cyclotomic
argument: `Φ₁₃(C,B)` is the 13-term sum,
`gcd(Φ₁₃, C−B) ∣ 13`, and `Φ₁₃` always has
a prime factor `p ≠ 13`.  That `p` does not
divide `Cᵏ − Bᵏ` for `0 < k < 13`.

`k = 0` is excluded from the primitive
predicate because `a⁰ − b⁰ = 0`.

| Name | Status |
|---|---|
| `zsigmondy_exception_not_2_1_6` | inhabited, `decide` |
| `zsigmondy_exception_not_power_of_two_plus_one` | inhabited, `decide` |
| `has_primitive_prime_divisor_13_of_C_gt_B` | inhabited |
| `zsigmondy_13` | inhabited |
| `primitive_prime_not_dvd_C_sub_B` | inhabited, `k=1` |
| `beal_odd_A_ge3_size_gap` | `p ∣ A` and `p ∤ (C−B)` |
| `beal_4_13_13_size` | general Prop, uninhabited |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
No new Beal `∀` Zenodo.
