# v8.40.0-B-gt-50000-rad-bound Zsigmondy Step 35

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.lean`

Rad-bound infrastructure for gap-3
`B > 50000`.  Not a forall close.

Inhabited:
`S_le_13_C_pow12` (`S ≤ 13 C¹²`),
`sqrt_S_le_sqrt_13_C_pow12`,
`sqrt_13_C12_le_4_C6` (Nat envelope of
√13 C⁶, since 13 ≤ 16),
`sqrt_S_le_4_C6`,
`rad_sq_dvd_of_squarefull`,
`rad_le_sqrt_of_squarefull` (squarefull
⇒ `rad ≤ √n`),
`not_squarefull_of_rad_gt_sqrt`,
`primitive_prime_ge_53_wrap`,
`P_phi13`,
`rad_gt_C_of_P_phi13_gt_C`
(`P(Φ₁₃) > C` ⇒ `rad(S) > C`).

Bugeaud `P(Φ₁₃) > C` for gap-3
`B > 50000` stays a Prop.  The missing
piece `rad > √13 C⁶` (enough to beat
`rad ≤ √S ≤ √(13 C¹²)` when squarefull)
also stays a Prop, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal forall.
Not imported by the 24-module none chain.

| Name | Status |
|---|---|
| `S_le_13_C_pow12` | inhabited |
| `sqrt_S_le_4_C6` | inhabited |
| `rad_le_sqrt_of_squarefull` | inhabited |
| `rad_gt_C_of_P_phi13_gt_C` | inhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_50000` | uninhabited |
| `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
