# v12.0.0 Baker-Matveev-explicit

`matveev_explicit_gap3` turns
`baker_bound_gap3` into
`A^4+B^4=(B+3)^13 → B ≤ baker_B0`.
explicit Matveev for (4,4,13) gap3, not general Bugeaud.
The linear form is the Nat identity
`(B+3)^13 = A^4+B^4` on a solution
(`matveev_log_form_nat`).
`matveev_no_solution_A_le_B` is inhabited:
`A ≤ B` never solves gap-3.
`baker_conditional_gap3_full` uses the
25 chunks for `B ≤ 1e6` and
`matveev_explicit_gap3` for `B > 1e6`.
`baker_bound_gap3` stays Prop (Matveev /
BMS Table 1 not in Mathlib 4.12).
Tate file stays exactly v11.
Keeps `allKilled_chunk_0` ..
`allKilled_chunk_24`, `allKilled_1e6`.

# v10.0.0 paper archive / v9.4.0 chunked 1e6 kernel census

Paper archive tag `v10.0.0-paper-B14-Baker-1e6-DOI`.
Math DOI `10.5281/zenodo.22712897`.
Paper DOI `10.5281/zenodo.22713047`.

# v9.4.0 chunked 1e6 kernel census

`lean/BealLevel26Foundations/Beal/FullProof/BealGap3BakerUpperBound.lean`

`baker_B0 = 10^6` is a displayed Nat.

`baker_bound_gap3` stays the uninhabited
Baker / Bugeaud linear-forms-in-logs Prop:
exists `B0 = 10^6` such that every `B > B0`
has no `A` with `A^4 + B^4 = (B+3)^13`.
Baker needs Bugeaud, not in Mathlib 4.12.
Bugeaud linear forms are external.
Does not use sorry.  Do not inhabit.

Inhabited:

- `allKilled_chunk_0` .. `allKilled_chunk_24`:
  each `allKilled start 2500 = true` by
  rfl / kernel decide on one 2500-slice of
  the 62500 values `B ≡ 14` (mod 16) up to
  `10^6`
- `allKilled_62500` / `allKilled_1e6`:
  the conjunction of those 25 slices
- `baker_conditional_gap3_full`:
  `baker_bound_gap3 → ∀ B, ¬∃ A`.
  `B ≤ B0 = 10^6` by the residue cover:
  - Mod16 15/16 class (`196`, `1500003`)
    via `beal_gap3_mod16_elim_not14`
  - `B ≡ 14` via the chunked kernel census
    (fourth-power tests at
    `q = 53, 29, 109` expanded by
    `17, 5, 7, 11, 13, 19, 23, 31, 37`)
  - `B > B0` by the Baker premise
- Allowed axioms
  `[propext, Quot.sound]`

Keeps the three Zsig Props (needs Baker,
not Zsig).  `frey_tate_conductor` stays
Prop (Tate `N(E)` missing from Mathlib 4.12).
`conductor_86` stays Prop
(`63982 = 2*31991` proves `N` does not
divide `2^5*3*13`).  `B14_honest` stays Prop.
Tate `tate_2adic_exponent_le5` /
`tate_odd_exponent_le_one` /
`tate_conductor_bound_rhs` stay.
Not BCDT.  Not an unconditional Beal `∀`.
