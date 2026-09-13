# v8.46.0-B-le-200k-600-rows Zsigmondy Step 41

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.lean`

Extends the B<=100000 table (318 named
gap-3 pairs) to 600 named rows with
B<=200000 (C=B+3).  Inherited Step37
rows are wrapped.  New rows in
(100000, 200000] have a real small
witness prime p<=547 (hence p<=2000)
with p | S, p does not divide the gap,
and p^2 does not divide S.  The Step11
dichotomy then gives order != 13 and
S_not_fourth.

The pair (200000, 200003) has no prime
p<=547 dividing S (least prime factor
12186951011).  The named computational
endpoint is the largest B<=200000 with
a p<=547 witness: (199996, 199999),
p=131.  `row_200000_200003` stays an
uninhabited Prop recording that missing
small-prime row.

Packed as
`S_has_prime_with_exp_one_B_le_200000_table_rows`,
`exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows`,
`S_not_fourth_B_le_200000_from_exp_one_table_rows`.

Large S never unfolds.  Witness primes
stay small enough for `decide` on
`(C : ZMod p)^13` versus `(B : ZMod p)^13`.

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
| `S_has_prime_with_exp_one_B_le_200000_table_rows` | inhabited (600 rows) |
| `exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows` | inhabited (600 rows) |
| `S_not_fourth_B_le_200000_from_exp_one_table_rows` | inhabited (600 rows) |
| `row_199996_199999` | inhabited (p=131) |
| `row_200000_200003` | uninhabited (no p<=547 divides S) |
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
