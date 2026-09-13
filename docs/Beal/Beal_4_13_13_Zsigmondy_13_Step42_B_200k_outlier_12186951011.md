# v8.47.0-B-200k-outlier-12186951011 Zsigmondy Step 42

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.lean`

Closes the gap-3 pair (200000, 200003)
that Step41 left as a Prop because no
prime p<=547 divides S.  Least prime
factor is 12186951011.  Pratt certificate:
p-1 = 2 * 5 * 13 * 29 * 47 * 109 * 631
and 2 has order p-1 in (Z/pZ)^x, using
64-step binary modPow (p < 2^64, so the
existing 32-step helper is not enough).

Witnesses, without unfolding S:
pow(200003,13,p) = pow(200000,13,p)
= 8061231193, so S mod p = 0;
(C : ZMod q)^13 != (B : ZMod q)^13 for
numeral q = p*p = 148521774944513922121,
and the power difference mod q is
117334529320426454750 != 0, so p^2
does not divide S.  Gap = 3, p does not
divide the gap.  Step11 then gives
order != 13 and S_not_fourth.

Inherited 600 Step41 rows are wrapped.
Packed as 601 named rows:
`S_has_prime_with_exp_one_B_le_200000_table_rows`,
`exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows`,
`S_not_fourth_B_le_200000_from_exp_one_table_rows`.

This is not every `B <= 200000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays a Prop.  `B > 200000` squarefull
rarity is Bugeaud-type, also a Prop.

Modular side: `s2_26_displayed_newforms_miss_frey_traces`
is a coefficient check (26b1 a3=-3 miss
at p=3, 26a1 a5=-3 miss at p=5), not a
residual isomorphism.  `s2_gamma0_2_dim=0`
is displayed, not Mathlib cusp-form
vanishing, so it does not prove rho from
level 2.  `kraus_elimination_q_13_level_26`
(even-A 13|A -> False) stays a Prop.
`level_lowering_26_to_2_from_no_match`
stays the displayed pack, not Ribet.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
The Ljunggren forall stays a Prop.
Modular lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `row_200000_200003` | inhabited (p=12186951011 Pratt) |
| `prime_12186951011` | inhabited |
| `S_has_prime_with_exp_one_B_le_200000_table_rows` | inhabited (601 rows) |
| `exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows` | inhabited (601 rows) |
| `S_not_fourth_B_le_200000_from_exp_one_table_rows` | inhabited (601 rows) |
| `level_lowering_26_to_2_from_no_match` | inhabited (displayed pack, not Ribet) |
| `s2_26_displayed_newforms_miss_frey_traces` | inhabited (coefficient check) |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_200000` | uninhabited |
| `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000` | uninhabited |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `ribet_26_to_2_from_displayed_miss` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
