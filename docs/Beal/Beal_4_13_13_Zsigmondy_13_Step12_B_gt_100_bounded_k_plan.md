# v8.21.0-B-gt-100-bounded-k Zsigmondy Step 12

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.lean`

Plans a bound on `k = C − B` when `B > 100`,
using `A ≥ 53` from a Zsigmondy prime
`p ≥ 53` that divides `A`, and
`A⁴ = k · S` with `S ≥ 13 B¹²`.

`k ≥ B` forces `C ≥ 2 B`, so
`S ≥ 8191 B¹²` and `A ≥ 9 B³`.
`k < B` is the sandwich
`13 B¹² ≤ S ≤ 13 C¹²`.

Closing `B > 100` stays uninhabited:
unconditional `¬ p² ∣ S` is false
(Hensel lifts exist), and
`ExistsNewformLevel2` is `0 ≠ 0`.

`genus_X0_2_rat = 0` and
`ExistsNewformLevel2_eq_zero_ne_zero`
stay the v8.19.0 lock.

| Name | Status |
|---|---|
| `A_ge_53_of_S_prime` | inhabited |
| `k_le_A_pow4_div_13_B_pow12` | inhabited |
| `B_gt_100_imp_k_bounded_by_A` | inhabited |
| `k_ge_B_imp_A_large` | inhabited (`k ≥ B` → `A ≥ 9 B³`) |
| `k_lt_B_imp_S_between` | inhabited |
| `beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular` | uninhabited |
| `beal_4_13_13_B_gt_100_slice_uninhabited` | uninhabited |
| `beal_from_ribet_upside_down` | uninhabited |
| `beal_4_13_13_size` | uninhabited |
| `B_le_100_k_ge_3_no_S_fourth_pow` | stays inhabited (v8.20.1) |
| `k_almost_fourth_power` | stays inhabited (v8.20.0) |
| `genus_X0_2_rat` | `= 0` |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
