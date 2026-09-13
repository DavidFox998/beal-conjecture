# v8.30.0-Chebotarev-lift-density-plan Zsigmondy Step 25

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.lean`

`p | S` iff `Phi13(t) = 0 mod p` for
`t = C * B^{-1}`. A root modulo `p != 13`
is simple, so Hensel locks one class
`t*` in `ZMod (p^2)`. Then `p^2 | S`
iff the ratio equals that class.

The square test lives in a fibre of
size `p` over the class modulo `p`,
so it is p-times thinner. Primes that
can divide a `Phi13`-value (except 13)
lie in the Dirichlet class `p == 1
(mod 13)`, and that class is infinite
(Mathlib cyclotomic argument).

The sketch density "1/13 among
`p == 1 (mod 13)`, hence some `p` with
`p | S` and not `p^2 | S`" is a
Chebotarev heuristic for
`Q(zeta13, (C/B)^{1/13})`, not a proof.
For a fixed `S` the set `{p : p | S}`
is finite.

| Name | Status |
|---|---|
| `Phi13` / Step24 wraps | inhabited |
| `phi13_derivative_separable_mod_p_inhabited` | inhabited |
| `hensel_unique_lift_of_phi13_root_inhabited` | inhabited (unique class in `ZMod (p^2)`) |
| `p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited` | inhabited |
| `primes_eq1_mod13_infinite` | inhabited |
| `density_p_div_S` | inhabited (support: `p == 1 (mod 13)`, not density 1/13) |
| `thin_set_p_sq_div_S` | inhabited (fibre card = `p`) |
| `S_val` / `S_bounds` / Step20-23 wraps | inhabited |
| `chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_not_prime_power_when_C_ge_B_plus_3` | uninhabited |
| `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3` | uninhabited |
| `not_all_p_lift_when_two_primes` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`B <= 100` is not a table close:
`C = B+1` and `C = B+2` are closed;
`C >= B+3` still needs `S_not_fourth`.

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
