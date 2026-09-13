# v8.20.1-B-le-100-closed Zsigmondy Step 11

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.lean`

Packages `B ≤ 100` for odd `A ≥ 3`.
`C = B+1` is the Size_Table (v8.19.6).
`C = B+2` is the Size_C_ge_B_plus_2 table
(v8.19.6).  `C ≥ B+3` is
`k_almost_fourth_power` (v8.20.0) plus
`S_not_fourth_power`.

A primitive Zsigmondy prime divides `S`,
misses `k = C−B`, is `≡ 1 [MOD 13]`, and
is not `13`.  In `(ℤ/p²)ˣ`, `p² ∣ S` iff
the ratio `C B⁻¹` has order `13`.  Hensel
lifts of 13th roots exist, so
unconditional `¬ p² ∣ S` is false
(`B = 1`, `C = 460`, `p = 53`).  The
first-power case `order ≠ 13` gives
`v_p = 1`, which kills `S = v⁴`,
`13 v⁴`, and `13³ v⁴`.

On a Beal tuple, `S` is of one of those
three shapes (swap of
`k_almost_fourth_power`).  That
contradicts `S_not_fourth_power`.

`genus_X0_2_rat = 0` and
`ExistsNewformLevel2_eq_zero_ne_zero`
(`0 ≠ 0`) stay the v8.19.0 lock.

| Name | Status |
|---|---|
| `primitive_prime_dvd_S` | inhabited |
| `v_p_S_eq_one` | inhabited (`order ≠ 13 → ¬ p² ∣ S`) |
| `S_not_fourth_power` | inhabited (`v_p` not a multiple of `4`) |
| `B_le_100_k_ge_3_no_S_fourth_pow` | inhabited (from `S_not_fourth_power`) |
| `beal_4_13_13_B_le_100_C_ge_B_plus_3_closed` | inhabited (from `k_almost` + `S_not_fourth_power`) |
| `beal_4_13_13_B_le_100_closed` | inhabited (split `C=B+1`, `C=B+2`, `C≥B+3`) |
| `S_13_mod_k` / `gcd_k_S_dvd_13` / `k_almost_fourth_power` | stays inhabited (v8.20.0) |
| `fourth_pow_mod_4` / `k % 4 = 1` | stays inhabited (v8.19.9) |
| `beal_4_13_13_k_odd` | stays inhabited (v8.19.8) |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `genus_X0_2_rat` | `= 0` |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |
| `beal_mixed_pow2_implies_level_2_newform` | uninhabited |
| `beal_from_ribet_upside_down` | uninhabited |
| `beal_4_13_13_mod8` / `mod13` | Not False (residues) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
