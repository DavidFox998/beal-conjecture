# v8.39.0-B-le-50000-exp-one-real-witnesses Zsigmondy Step 34

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.lean`

Extends the B<=10000 table to 188 named
gap-3 pairs with B<=50000 (C=B+3, plus
inherited (1,4) and (10000,10003)).
Each has a real small witness prime p
with p | S, p does not divide the gap,
and p^2 does not divide S.  The Step11
dichotomy then gives order != 13 and
S_not_fourth.

Packed as
`S_has_prime_with_exp_one_B_le_50000_table_rows`,
`exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows`,
`S_not_fourth_B_le_50000_from_exp_one_table_rows`.

Witness primes stay small enough for
`decide` on `(C : ZMod p)^13` versus
`(B : ZMod p)^13`.  Includes
(10000,10003) p=1613 and
(50000,50003) p=313.  Inherited Pratt
2731 on (1,4).  Large S never unfolds.

This is not every `B <= 50000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays a Prop.  `B > 50000` squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren forall stays a Prop.
Modular lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `S_has_prime_with_exp_one_B_le_50000_table_rows` | inhabited (188 rows) |
| `exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows` | inhabited (188 rows) |
| `S_not_fourth_B_le_50000_from_exp_one_table_rows` | inhabited (188 rows) |
| `row_50000_50003` | inhabited (p=313) |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
