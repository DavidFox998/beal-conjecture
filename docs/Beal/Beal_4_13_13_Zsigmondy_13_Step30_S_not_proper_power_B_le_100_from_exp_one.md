# v8.35.0-S-not-proper-power-B-le-100-from-exp-one Zsigmondy Step 30

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.lean`

From the v8.34 exp-one table, each named
row has a prime `p` with `p | S` and
`p^2` does not divide `S`.  A proper
prime power is `n = q^k` with `k >= 2`,
which forces `q^2 | n`.  So exp-one
implies not a proper prime power.

Glue: `not_proper_prime_power_of_has_exp_one`.
Packed as
`S_not_proper_prime_power_B_le_100_from_exp_one_table_rows`.

| B | C | witness (from Step29) |
|---|---|---|
| 1 | 4 | p = 2731 |
| 1 | 5 | Pratt prime 305175781 |
| 1 | 8 | p = 79 |
| 2 | 5 | Pratt prime 406898311 |
| 4 | 7 | p = 53 |
| 5 | 8 | p = 53 |
| 10 | 13 | p = 53 |
| 100 | 103 | p = 599 |

This is not every `B <= 100`.
`S_not_proper_prime_power_when_C_ge_B_plus_3`
stays a Prop (Ljunggren / Bugeaud
for `B > 100`).  The gap-3 exp-one
forall also stays a Prop.
`exists_p` stays a Prop.  Modular
lock unchanged (`0 != 0`).

| Name | Status |
|---|---|
| `not_proper_prime_power_of_has_exp_one` | inhabited |
| `S_not_proper_prime_power_B_le_100_from_exp_one_table_rows` | inhabited (8 rows) |
| `S_val_1_4_not_proper_prime_power` | inhabited |
| `exists_p_with_order_ne_13_of_has_exp_one` | inhabited (Step28 wrap) |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
