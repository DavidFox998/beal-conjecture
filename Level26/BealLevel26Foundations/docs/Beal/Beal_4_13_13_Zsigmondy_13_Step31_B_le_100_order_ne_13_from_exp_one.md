# v8.36.0-B-le-100-order-ne-13-from-exp-one Zsigmondy Step 31

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.lean`

From the v8.34 exp-one table, each named
row has `p^2` not dividing `S`.  The
Step11 dichotomy says `p^2 | S` iff
`order(C * B^{-1} mod p^2) = 13`.
So those rows have order != 13, hence
`v_p(S) = 1` and `S_not_fourth`.

Packed as
`exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows`
and
`S_not_fourth_B_le_100_from_exp_one_table_rows`.

| B | C | witness | order != 13 |
|---|---|---|---|
| 1 | 4 | p = 2731 | `order_ne_13_B1_C4` |
| 1 | 5 | Pratt prime 305175781 | `order_ne_13_B1_C5` |
| 1 | 8 | p = 79 | `order_ne_13_B1_C8` |
| 2 | 5 | Pratt prime 406898311 | `order_ne_13_B2_C5` |
| 4 | 7 | p = 53 | `order_ne_13_B4_C7` |
| 5 | 8 | p = 53 | `order_ne_13_B5_C8` |
| 10 | 13 | p = 53 | `order_ne_13_B10_C13` |
| 100 | 103 | p = 599 | `order_ne_13_B100_C103` |

This is not every `B <= 100`.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays a Prop.  `B > 100` squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren forall stays a Prop.
Modular lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `order_ne_13_B1_C4` | inhabited |
| `exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows` | inhabited (8 rows) |
| `S_not_fourth_B_le_100_from_exp_one_table_rows` | inhabited (8 rows) |
| `exists_p_with_order_ne_13_of_has_exp_one` | inhabited (Step28 wrap) |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
