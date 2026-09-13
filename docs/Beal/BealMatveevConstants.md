# v19.0.0 Matveev constants formalization

`lean/BealLevel26Foundations/Beal/FullProof/BealMatveevConstants.lean`

Moves `C = 143186215390` from a PARI list
entry to an explicit `Nat` plus kernel
theorems.

- `matveev_n = 3`, `matveev_D = 1`
- `matveev_thirty_pow = 30^{n+3} = 729000000`
  (`matveev_thirty_pow_eq` by decide, no axioms)
- `matveev_C1_floor = 143186215390`
  (`matveev_C1_pos` by decide, no axioms)
- `matveev_height_B0 = C1_floor * 30^{n+3}`
  (`matveev_height_B0_eq` by decide, no axioms)
- Tate c4 scale `16` from
  `BealFreyTateConductor.c4Paren`
  (`matveev_c4_height`)
- `matveev_explicit_gap3_constants` is
  `List Int`; `matveev_explicit_gap3_constants_hold`
  is kernel `decide` that the list is nonempty
  (**no axioms**)

`baker_bound_gap3` stays a **def Prop**.
`baker_bound_gap3_of_matveev_constants` is
the named implication (not inhabited).
This is not a Mathlib Matveev theorem and
does not inhabit an unconditional gap-3
forall. Does not use sorry.
