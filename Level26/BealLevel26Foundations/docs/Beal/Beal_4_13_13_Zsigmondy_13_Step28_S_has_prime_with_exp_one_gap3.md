# v8.33.0-S-has-prime-with-exp-one-gap3 Zsigmondy Step 28

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.lean`

Step27 closed "not a proper prime power"
on `S_val 1 5` (a prime, so `k = 1`).
That is not exponent one on a general
gap-3 pair: `S = p1^2 * p2^2` is not
a proper prime power and still has
every exponent at least 2.

Step28 names `IsSquarefull` /
`HasPrimeWithExpOne` and inhabits
them on the prime example
`S_val 1 5`.  Glue
`exists_p_with_order_ne_13_of_has_exp_one`
runs the Step11 dichotomy backwards:
a primitive prime with `p^2` not
dividing `S` has order != 13.

The forall
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop.  A `B <= 100` table is
Step29, not this file.  `B > 100`
needs Bugeaud-Corvaja-Zannier, not
in Mathlib 4.12.

| Name | Status |
|---|---|
| `IsSquarefull` / `HasPrimeWithExpOne` | inhabited (defs) |
| `not_squarefull_of_prime` / `hasPrimeWithExpOne_of_prime` | inhabited |
| `S_val_1_5_has_prime_with_exp_one` | inhabited |
| `S_has_prime_with_exp_one_example_B1_C5` | inhabited |
| `exists_p_with_order_ne_13_of_has_exp_one` | inhabited (glue) |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_not_proper_prime_power_when_C_ge_B_plus_3` | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
