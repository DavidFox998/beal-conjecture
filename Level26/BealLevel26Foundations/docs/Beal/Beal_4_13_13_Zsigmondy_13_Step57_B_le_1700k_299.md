# v8.62.0-B-le-1700k-5086-rows Zsigmondy Step 57

`lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.lean`

Extends the B<=1600000 table (4787 named
gap-3 pairs, including the inhabited
outlier (200000, 200003) with Pratt
p=12186951011) to 5086 named rows with
B<=1700000 (C=B+3).  Inherited Step56
rows are wrapped.  The 299 new rows
in (1600000, 1700000] are sampled evenly
from the 50323-row pool of B with a
real small witness prime p<=547 from
{53, 79, 131, 157, 313, 443, 521, 547}
with p | S, p does not divide the gap,
and p^2 does not divide S.  The Step11
dichotomy then gives order != 13 and
S_not_fourth.

First new row (1600001,1600004) p=53.
Named last row (1700000,1700003) p=547.
B=1700000 is in the pool.
Distribution of the sampled 299:
53:136, 79:63, 131:28, 157:35, 313:19, 443:3, 521:8, 547:7.

Witnesses use `decide` on
`(C : ZMod p)^13` versus `(B : ZMod p)^13`
and the same at numeral modulus p*p.
Not `native_decide`, so `#print axioms`
stays `[propext, Classical.choice, Quot.sound]`.

Packed as the Step56 4787-pack paired
with a 299-row new pack:
`S_has_prime_with_exp_one_B_le_1700000_table_rows`,
`exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows`,
`S_not_fourth_B_le_1700000_from_exp_one_table_rows`.

This is not every `B <= 1700000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays a Prop.  `B > 1700000` squarefull
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
| `S_has_prime_with_exp_one_B_le_1700000_table_rows` | inhabited (5086 rows) |
| `exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows` | inhabited (5086 rows) |
| `S_not_fourth_B_le_1700000_from_exp_one_table_rows` | inhabited (5086 rows) |
| `row_1600001_1600004` | inhabited (p=53) |
| `row_1700000_1700003` | inhabited (p=547) |
| `row_200000_200003` | inhabited (p=12186951011 Pratt, inherited) |
| `level_lowering_26_to_2_from_no_match` | inhabited (displayed pack, not Ribet) |
| `s2_26_displayed_newforms_miss_frey_traces` | inhabited (coefficient check) |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_1700000` | uninhabited |
| `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1700000` | uninhabited |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `ribet_26_to_2_from_displayed_miss` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
