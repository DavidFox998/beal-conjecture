# v8.88.0 Zsigmondy 5983 + LTE ledger for B > 2M

`lean/BealLevel26Foundations/Beal/FullProof/BealGap3ZsigBeyond2M.lean`

Named-row census `4488 + 5 * 299 = 5983` and the five
window pools `50310 / 50323 / 50307 / 50350 / 50325`
are re-exported from Density_2M.  Those lemmas count
rows with `B <= 2000000`.  They are not a Mathlib
Zsigmondy theorem for `B > 2M`.

Inhabited arithmetic:

- `q > B+3` implies not `q` divides `(B+3)^13` and
  `v_q((B+3)^13) = 0 < 4`.
- From `A^4 + B^4 = (B+3)^13` and `q` divides `A` one gets
  `q^4` divides `(B+3)^13 - B^4`.  That is **not**
  `q^4` divides `(B+3)^13`.
- If a prime `q > B+3` already satisfied
  `q^4` divides `(B+3)^13`, that would be False (LTE-shaped).
- When `3` does not divide `B`, Step18 supplies a primitive
  prime of `Phi13(B, B+3)`.  That prime divides `C^13 - B^13`,
  is `== 1 [MOD 13]`, and is not known to exceed 2M.

Uninhabited Props (honesty lock):

- `exists_zsig_q_gt_2M_dvd_C13_sub_B4` -- the requested
  exists `q > 2M`, `q == 1 [MOD 4]`, from the 5983 pools.
- `q_pow4_dvd_C13_of_dvd_A` -- the false punchline
  `q` divides `A` implies `q^4` divides `C^13`.
- `beal_gap3_B_gt_2M_eliminated` -- forall `B > 2M`, no `A`.

Not BCDT.  Allowed axioms on inhabited theorems stay
in `{propext, Classical.choice, Quot.sound}`.

`frey_conductor_general` is unchanged (v8.87).
`conductor_86` stays a Prop.  `B14_honest` stays a Prop.
No conductor lowering.
