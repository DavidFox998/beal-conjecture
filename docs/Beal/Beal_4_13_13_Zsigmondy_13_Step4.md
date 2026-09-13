# v8.19.4 Zsigmondy Step 4 — p∣S and Coprime C B

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step4.lean`

`S_13` is the 13-term sum
`C¹² + C¹¹B + ⋯ + B¹²`
(`= Φ₁₃(C,B)`).  Factorization
`C¹³ − B¹³ = (C−B) · S_13`
holds for every `C,B` (both sides
`0` in `ℕ` when `C < B`).

A prime `p` dividing `C¹³ − B¹³`
and not dividing `C−B` divides `S`.
If that same `p` also divides `B`,
then `S ≡ C¹² [MOD B]` forces
`p ∣ C`, against `Coprime C B`.

A primitive prime of `C¹³ − B¹³`
cannot be `13`: Fermat gives
`C¹³ − B¹³ ≡ C − B [MOD 13]`.

The attempt `p ∣ S ∧ p ∣ A → p ∣ B`
is the opposite of the coprime
direction and stays uninhabited.

| Name | Status |
|---|---|
| `S_13` / `C13_sub_B13_eq_sub_mul_S` | inhabited |
| `p_dvd_S_of_p_dvd_diff_and_not_dvd_sub` | inhabited |
| `primitive_prime_ne_13` | inhabited (needs `p ∣ C¹³ − B¹³`) |
| `beal_odd_A_ge3_p_dvd_B_contradiction` | inhabited |
| `not_p_dvd_B_of_p_dvd_A_and_coprime` | inhabited |
| `p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt` | uninhabited |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `beal_4_13_13_size` | general Prop, uninhabited |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
No new Beal `∀` Zenodo.
