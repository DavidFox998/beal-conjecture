# v8.41.0-Kraus-X0-26-elimination Zsigmondy Step 36

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.lean`

Kraus / X₀(26) elimination infrastructure
for `q = 13`, level 26.  Not a forall close.

Inhabited:
`level_26_eq_2_mul_13` (`26 = 2 · 13`),
`fourCuspsList_eq` (`[1, 2, 13, 26]`),
`X0_26_Q_displayed_points` (four cusps plus
`26a1 Δ -17576` / `26b1 Δ -1664`),
`E_26a1_ainv` / `E_26b1_ainv`,
`E_26a1_disc` / `E_26b1_disc`,
`S2_level_26_dim_two` (displayed `1+1 = 2`),
`two_sqrt_sq_le_four_p`,
`ap_bound_level_26` (ledger Hasse
`a_p² ≤ 4p` at primes `3 ≤ p ≤ 97`, `p ≠ 13`).

There **are** newforms at level 26.
Kraus elimination is the missing matching
lock against the Frey residual, so
`kraus_elimination_q_13_level_26` stays a
Prop.  Bugeaud `P(Φ₁₃) > C` and
`rad > √13 C⁶` stay Props, so the gap-3
exp-one ∀ stays a Prop.

Prior Step34: 188 named `B ≤ 50000`
gap-3 rows with real `p ≤ 1613` plus Pratt
`2731` on `(1,4)`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal forall.
Not imported by the 24-module none chain.

| Name | Status |
|---|---|
| `ap_bound_level_26` | inhabited |
| `X0_26_Q_displayed_points` | inhabited |
| `level_26_eq_2_mul_13` | inhabited |
| `S2_level_26_dim_two` | inhabited |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `X0_26_no_matching_newform_wrap` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_50000` | uninhabited |
| `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
