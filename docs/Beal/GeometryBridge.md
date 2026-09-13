# v7.4.0 GeometryBridge Mazur geometry filled

`lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean`

Step 3 toward inhabiting `beal_forall_from_Is13Case_sketch`
(`J₀(26)` product, Abel–Jacobi / formal immersion,
four cusps).  The sketch itself stays uninhabited.
No `sorry`.  No `False.elim`.  JSON / M₃ tokens are
theorems.

| Name | Status |
|---|---|
| `J0_26` / `J0_26_factors` | product of the certified Weierstrass models `26a1` and `26b1` |
| `J0_26_dim` | `dim = 2 = 1 + 1` from the two dim-1 newform factors |
| `J0_26_isogeny` | `J₀(26) ∼ E_{26a1} × E_{26b1}`; `Δ = -17576`, `Δ = -1664` |
| `PicardAbelJacobiIdentification_26` | `Pic⁰(X₀(26))` identified with that product |
| `omega1` / `omega2` | displayed `dx/y` and `x dx/y` |
| `abelJacobi` | label map `P ↦ [P − ∞]` |
| `formal_immersion_X0_26_to_J0_26_at_2` | `M₃ = [[1, 1], [0, 2]]` over `ℤ/3`, `det = 2 ≠ 0` |
| `rational_points_are_cusps` | every `DisplayedX026CuspPoint` has label in `[1, 2, 13, 26]` |
| `no_noncuspidal_Q_points` | `¬ ExistsNoncuspidal_26` |
| `J0_26_Q_rank_zero_piece` | certified MW rank `0` and `\|Sel₂\| = 1` |
| `GeometryBridge` | packed Mazur-geometry input: no non-cuspidal `ℚ`-point, rank-0 piece `{1}` |
| `beal_forall_from_Is13Case_sketch_stays_uninhabited` | lock: the quantified Beal statement is not this file's theorem |

`#print axioms` on `formal_immersion_X0_26_to_J0_26_at_2`
and `GeometryBridge` is
`[propext, Classical.choice, Quot.sound]`.  `J0_26_dim`
and `no_noncuspidal_Q_points` are axiom-free.  No `sorryAx`.

Mathlib 4.12 has no modular-curve scheme, no Jacobian,
no Picard scheme, and no Chabauty functor.  The names
above are theorems of the published PARI certificates
(`certs/pari_x0_26_four_cusps.json`, descent SHA
`d9d907f6…`, ledger `M₃`).

The v7.1.0 none chain is untouched.  This module is a
FullProof root, not one of the 24 Galois/kernel modules.
Step 4 (inhabit `beal_forall_from_Is13Case_sketch`) remains.
