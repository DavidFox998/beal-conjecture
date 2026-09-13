# v8.22.0-X0-26-RibetMazur-plan Zsigmondy Step 14

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.lean`

Plans the even-not-pow2 arm: `A = 2^r d` with
`d` odd `> 1` has an odd prime `q ≥ 3`.
The even-odd radical is
`rad A = 2 · rad(oddPart A)`
(displayed `N' = 2 · rad(oddPart A)`).
If `13 ∣ A`, then `26 ∣ N'`.
Displayed `N'` is at least `6`.

This is **not** a post-Ribet theorem that
the lowered conductor equals that slot.
Ribet lowering to `N'`, matching against
`X₀(26)` / Cremona `26a1`/`26b1`, and
closing even `A` stay uninhabited.

Keeps v8.21.1 `frey_curve_conductor`
(`A = 2^r`, `B,C` odd → rad `= 2`).
Keeps `ExistsNewformLevel2` as `0 ≠ 0`.

| Name | Status |
|---|---|
| `even_not_pow2_has_odd_prime` | inhabited |
| `frey_conductor_even_A` | inhabited (`rad A = 2 · rad(oddPart A)`) |
| `minimal_level_26_of_13_dvd_A` | inhabited |
| `level_at_least_6_of_even_not_pow2` | inhabited |
| `ribet_level_lowering_to_Nprime` | uninhabited |
| `X0_26_no_matching_newform` | uninhabited |
| `conductor_26_elliptic_curves_list` | uninhabited |
| `beal_even_not_pow2_implies_level_26_newform` | uninhabited |
| `beal_even_not_pow2_13dvdA_False` | uninhabited |
| `beal_even_not_pow2_general_False` | uninhabited |
| `beal_even_A_closed` | uninhabited |
| `beal_4_13_13_X0_26_RibetMazur_plan` | uninhabited |
| `beal_mixed_pow2_implies_level_2_newform` | stays uninhabited (v8.21.1) |
| `modular_W_lift` / `ribet_level_lowering_to_2` / `X0_2_no_newforms` | stay uninhabited (`0 ≠ 0`) |
| `ExistsNewformLevel2_eq_zero_ne_zero` | `0 ≠ 0` lock |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal `∀` Zenodo.
