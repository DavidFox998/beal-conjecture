# v11.0.0 defined packed Tate conductor

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyTateConductor.lean`

Keeps `c₄`, `c₆`, `v₂` bounds and
`conductorExponentTate67/2 ≤ 5`.

Defined (not a Prop):

- `tateConductor A B = 2^{f₂} * rad(AB(B+3)) * 13`
  with `f₂ = conductorExponentTate2`
- `tate_conductor_bound_rhs` is the same Nat
- `frey_tate_conductor` is that Nat
- `frey_tate_conductor_inhabited`:
  `tateConductor ∣ 2⁵ * rad * 13`,
  `v₂ ≤ 5`, odd `v_q ≤ 1`, using
  `tate_2adic_exponent_le5` and
  `tate_odd_exponent_le_one`
- Axioms `[propext, Classical.choice, Quot.sound]`

Not Mathlib `N(E)`.  Not `|Δ|`.  Not `N = 1`.

Still Props:

- `baker_bound_gap3` (Bugeaud, not in Mathlib 4.12)
- `conductor_86` (`63982 = 2*31991` proves
  `N` does not divide `2⁵*3*13`; we use
  `2⁵*rad*13`)
- `B14_honest` (`B ≤ 1e6` is inhabited via
  the Baker chunks; the 352-row pack stays open)
