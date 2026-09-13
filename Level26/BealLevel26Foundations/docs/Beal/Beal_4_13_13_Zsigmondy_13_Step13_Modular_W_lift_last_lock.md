# v8.21.1-Modular-W-lift-last-lock Zsigmondy Step 13

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.lean`

Honest last lock of the mixed-pow2 arm.
When `A = 2^r` (`r > 0`) and `B`, `C` are
odd, the even radical of the Frey bases is
`2` (`frey_curve_conductor`).  Displayed
conductor slot `frey_curve_conductor_N = 2`.
That is **not** a post-Ribet theorem that
`TrueConductor.N = 2`.

Modular W, Ribet lowering to 2, and Mathlib
vanishing of `S₂(Γ₀(2))` stay uninhabited:
each still ends at `ExistsNewformLevel2`
(`0 ≠ 0`).  Unconditional `¬ p² ∣ S` is
false (Hensel lifts exist).

Keeps v8.21.0 `B > 100` bounded
`k ≤ A⁴/(13·100¹²)`, `k ≥ B` → `A ≥ 9 B³`,
`k < B` → `13 B¹² ≤ S ≤ 13 C¹²`.
Keeps v8.20.1 `B ≤ 100` closed tables.
Keeps v8.20.0 `gcd(k,S) ∣ 13` /
`k_almost_fourth_power`.
Keeps v8.19.9 residues, v8.19.8 odd/coprime,
v8.19.7 `13 k` bounds.
Keeps v8.19.0 `genus_X0_2_rat = 0`.

| Name | Status |
|---|---|
| `frey_curve_conductor` | inhabited (`A=2^r`, `B,C` odd → rad `= 2`) |
| `A_ge_53_of_S_prime` | inhabited (v8.21.0 re-export) |
| `k_le_A_pow4_div_13_B_pow12` | inhabited (v8.21.0) |
| `B_gt_100_imp_k_bounded_by_A` | inhabited (v8.21.0) |
| `genus_X0_2_rat` | `= 0` (v8.19.0) |
| `S_13_mod_k` / `gcd_k_S_dvd_13` | inhabited (v8.20.0) |
| `k_almost_fourth_power` | inhabited (v8.20.0) |
| `beal_4_13_13_B_le_100_closed` | inhabited (v8.20.1) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |
| `beal_mixed_pow2_implies_level_2_newform` | uninhabited |
| `modular_W_lift` | uninhabited |
| `ribet_level_lowering_to_2` | uninhabited |
| `X0_2_no_newforms` | uninhabited (`ExistsNewformLevel2`) |
| `beal_4_13_13_final_closed` | uninhabited |
| `beal_from_ribet_upside_down` | uninhabited |
| `beal_4_13_13_size` | uninhabited |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
