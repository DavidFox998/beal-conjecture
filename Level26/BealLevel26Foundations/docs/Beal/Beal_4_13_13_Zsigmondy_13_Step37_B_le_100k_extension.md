# v8.42.0-B-le-100k-extension Zsigmondy Step 37

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.lean`

Extends the B<=50000 table (188 named
gap-3 pairs) to 318 named rows with
B<=100000 (C=B+3).  Inherited Step34
rows are wrapped.  New rows in
(50000, 100000] have a real small
witness prime p<=547 (hence p<=2000)
with p | S, p does not divide the gap,
and p^2 does not divide S.  The Step11
dichotomy then gives order != 13 and
S_not_fourth.  Endpoint
(100000,100003) uses p=547.

Packed as
`S_has_prime_with_exp_one_B_le_100000_table_rows`,
`exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows`,
`S_not_fourth_B_le_100000_from_exp_one_table_rows`.

Large S never unfolds.  Witness primes
stay small enough for `decide` on
`(C : ZMod p)^13` versus `(B : ZMod p)^13`.

This is not every `B <= 100000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays a Prop.  `B > 100000` squarefull
rarity is Bugeaud-type, also a Prop.
Kraus elimination at `q = 13`, level 26
stays a matching lock (newforms 26a1 /
26b1 exist, so not vanishing).
The Ljunggren forall stays a Prop.
Modular lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `S_has_prime_with_exp_one_B_le_100000_table_rows` | inhabited (318 rows) |
| `exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows` | inhabited (318 rows) |
| `S_not_fourth_B_le_100000_from_exp_one_table_rows` | inhabited (318 rows) |
| `row_100000_100003` | inhabited (p=547) |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_100000` | uninhabited |
| `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000` | uninhabited |
| `kraus_elimination_q_13_level_26` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
