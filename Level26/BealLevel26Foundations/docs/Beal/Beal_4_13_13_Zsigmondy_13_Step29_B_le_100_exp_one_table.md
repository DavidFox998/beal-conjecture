# v8.34.0-B-le-100-exp-one-table Zsigmondy Step 29

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.lean`

Eight named gap-3 coprime rows with
`B <= 100` inhabit `HasPrimeWithExpOne`
on `S_val B C`.  This is not every
`B <= 100`, and not the gap-3 forall.

| B | C | witness |
|---|---|---|
| 1 | 4 | p = 2731 (Pratt; S = 22369621) |
| 1 | 5 | Pratt prime 305175781 (Step26) |
| 1 | 8 | p = 79 (ZMod) |
| 2 | 5 | Pratt prime 406898311 |
| 4 | 7 | p = 53 (ZMod) |
| 5 | 8 | p = 53 (ZMod) |
| 10 | 13 | p = 53 (ZMod) |
| 100 | 103 | p = 599 (ZMod) |

Large `S` uses `(C : ZMod p)^13` vs
`(B : ZMod p)^13` and a numeral
`q = p * p` for the square test, so
`decide` never unfolds a 26-digit
`S_val`.  Glue on `(1,4)`:
`exists_p_with_order_ne_13_mod_p_sq_example_B1_C4`.

`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop.  `B > 100` squarefull
rarity is Bugeaud-type, also a Prop.
`exists_p` stays a Prop.  Modular
lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `S_has_prime_with_exp_one_B_le_100_table_rows` | inhabited (8 rows) |
| `S_val_2_5_prime` | inhabited (Pratt) |
| `exists_p_with_order_ne_13_mod_p_sq_example_B1_C4` | inhabited (this pair) |
| `exists_p_with_order_ne_13_of_has_exp_one` | inhabited (Step28 wrap) |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
