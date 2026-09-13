# v8.22.1-X0-2q-Darmon-Merel-plan Zsigmondy Step 15

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.lean`

Plans the even-not-pow2 `q ≠ 13` arm: displayed
level `N' = 2 q` divides `2 · rad(oddPart_rec A)`.
Mathlib 4.12 has no `Nat.oddPart` / `Nat.rad`;
this file inhabits local `oddPart_rec` and `rad`.
`rad` is the product of distinct prime factors,
**not** the identity placeholder.

Kraus / Darmon–Merel matching on `X₀(2q)`,
closing even not-pow2, and closing even `A`
stay uninhabited.

Keeps v8.22.0 radical facts and the
`13 ∣ A` → `26 ∣ N'` slot.
Keeps `ExistsNewformLevel2` as `0 ≠ 0`.

| Name | Status |
|---|---|
| `oddPart_rec` / `oddPart_def` | inhabited |
| `rad` / `rad_dvd_pow` | inhabited |
| `even_not_pow2_has_odd_prime_q` | inhabited |
| `level_2q_of_odd_prime_dvd_A` | inhabited (`0 < A`) |
| `kraus_criterion_q_ne_13` | uninhabited |
| `X0_2q_no_Frey_match` | uninhabited |
| `beal_even_not_pow2_general_q_False` | uninhabited |
| `beal_even_not_pow2_closed_v8_22_1` | uninhabited |
| `beal_even_A_closed_v8_22_1` | uninhabited |
| `beal_4_13_13_odd_only_remaining` | uninhabited |
| `beal_4_13_13_X0_2q_Darmon_Merel_plan` | uninhabited |
| `X0_26_no_matching_newform` | stays uninhabited (v8.22.0) |
| `modular_W_lift` / `X0_2_no_newforms` | stay uninhabited (`0 ≠ 0`) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
