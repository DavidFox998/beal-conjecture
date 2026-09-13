# v8.38.0-B-le-10000-exp-one-extension Zsigmondy Step 33

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.lean`

Extends the 64-row B<=1000 table to
256 named gap-3 pairs with B<=10000
(C=B+3, plus inherited B<=1000 rows).
Each has a prime p with p | S, p does
not divide the gap, and p^2 does not
divide S.  The Step11 dichotomy then
gives order != 13 and S_not_fourth.

Packed as
`S_has_prime_with_exp_one_B_le_10000_table_rows`,
`exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows`,
`S_not_fourth_B_le_10000_from_exp_one_table_rows`.

Witness primes stay small enough for
`decide` on `(C : ZMod p)^13` versus
`(B : ZMod p)^13` (53, 79, 131, 157,
313, 443, 521, 547, 599, 677, inherited
Pratt 2731 on (1,4), and 1613 on
(10000,10003)).  Large S never unfolds.

This is not every `B <= 10000`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays a Prop.  `B > 10000` squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren forall stays a Prop.
Modular lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `S_has_prime_with_exp_one_B_le_10000_table_rows` | inhabited (256 rows) |
| `exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows` | inhabited (256 rows) |
| `S_not_fourth_B_le_10000_from_exp_one_table_rows` | inhabited (256 rows) |
| `row_10000_10003` | inhabited (p=1613) |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
