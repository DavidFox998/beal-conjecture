# v8.20.0-upper-bound-k Zsigmondy Step 10

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.lean`

On `A⁴ + B¹³ = C¹³` write `k = C − B` and
`S = S_13 C B`.  Then `A⁴ = k·S`.

`C = B+k` gives `S ≡ 13 B¹² [MOD k]`.
Coprime `k B` (v8.19.8) forces
`gcd(k,S) ∣ 13`, so that gcd is `1` or `13`.
Coprime factors of a fourth power are
fourth powers, hence
`k = u⁴` or `k = 13 u⁴` or `k = 13³ u⁴`.

`genus_X0_2_rat = 0` and
`ExistsNewformLevel2_eq_zero_ne_zero`
(`0 ≠ 0`) stay the v8.19.0 lock.

The unbounded claim that `S` is never a
fourth power for `B ≤ 100` and `k ≥ 3`
stays uninhabited.  Closing
`B ≤ 100`, `C ≥ B+3` from that claim
needs a size argument that is not Zsigmondy.
`beal_mixed_pow2_implies_level_2_newform`
needs `Modular W → ExistsNewformLevel2`.
`beal_from_ribet_upside_down` stays a Prop.
`beal_4_13_13_mod8` / `mod13` stay residue
facts, not a contradiction.

| Name | Status |
|---|---|
| `S_13_mod_k` | inhabited |
| `gcd_k_S_dvd_13` | inhabited |
| `gcd_k_S_eq_1_or_13` | inhabited |
| `k_mul_S_eq_A_pow4` | inhabited |
| `coprime_mul_eq_fourth_pow_imp_fourth_pow` | inhabited |
| `k_almost_fourth_power` | inhabited |
| `genus_X0_2_rat` | `= 0` |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |
| `B_le_100_k_ge_3_no_S_fourth_pow` | uninhabited |
| `beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth` | uninhabited |
| `beal_mixed_pow2_implies_level_2_newform` | uninhabited |
| `beal_from_ribet_upside_down` | uninhabited |
| `beal_4_13_13_mod8` / `mod13` | Not False (residues) |
| `fourth_pow_mod_4` / `k % 4 = 1` | stays inhabited (v8.19.9) |
| `beal_4_13_13_k_odd` | stays inhabited (v8.19.8) |
| `zsigmondy_13` | stays inhabited (v8.19.3) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
