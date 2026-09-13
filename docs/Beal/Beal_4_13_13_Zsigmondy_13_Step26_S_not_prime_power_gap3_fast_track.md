# v8.31.0-S-not-prime-power-gap3-fast-track Zsigmondy Step 26

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.lean`

The sketch claimed: if `C >= B+3` then
`S = (C^13 - B^13)/(C - B)` is never a
prime power, hence Zsigmondy plus
`omega(S) >= 2` gives two distinct
primitive primes.

That forall is **false**. The pair
`B = 1`, `C = 5` is coprime with
`C = B+4 >= B+3`, and

```
S_val 1 5 = (5^13 - 1)/4 = 305175781
```

is prime (Pratt certificate, witness
`a = 6`, factors of `n-1` equal to
`2^2 * 3^2 * 5 * 7 * 13 * 31 * 601`).
So `S` is a prime power on a gap-3
pair and has exactly one prime factor.

Bugeaud-Shorey `P(Phi13) > C` does
**not** force `omega >= 2`: if `S`
itself is prime then `P(S) = S > C`
holds with `omega = 1`. A `B <= 100`
table with `C = B+3 .. B+100` would
have listed `(1, 5)`. Mathlib 4.12
has no Bugeaud-Shorey library.

On this pair the Hensel lock is open:
`S` prime implies `p^2` does not
divide `S`, so the Step11 dichotomy
gives order `!= 13` in `(Z/p^2)*`.
That is one pair, not the `forall B C`
Hensel lock.

| Name | Status |
|---|---|
| `S_val` / `S_bounds` / Step20-25 wraps | inhabited |
| `S_val_1_5` / `S_val_1_5_prime` | inhabited (Pratt) |
| `S_prime_power_example_B1_C5` | inhabited |
| `prime_power_S_eq_zsigmondy_prime` | inhabited |
| `S_not_prime_power_when_C_ge_B_plus_3_fast_refuted` | inhabited (sketch forall is false) |
| `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted` | inhabited |
| `exists_p_with_order_ne_13_mod_p_sq_example_B1_C5` | inhabited (this pair only) |
| `S_not_prime_power_when_C_ge_B_plus_3_fast` | uninhabited (sketch forall, now known false) |
| `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast` | uninhabited |
| `not_all_p_lift_when_two_primes` | uninhabited |
| `chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited (remaining forall Hensel lock) |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`B <= 100` is not a table close:
`C = B+1` and `C = B+2` are closed;
`C >= B+3` still needs `S_not_fourth`
on pairs that are not prime `S`.
The gap-3 `omega >= 2` claim is
**false**, not closed.

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
