# v8.2.0 GeometryScheme packed models

`lean/BealLevel26Foundations/Beal/FullProof/GeometryScheme.lean`

Lifts GeometryBridge PARI certs to named scheme-shaped
models.  Mathlib 4.12 has `AlgebraicGeometry.Scheme`
(`Spec`) and does **not** construct `X₀(N)` or `J₀(N)`.
No `sorry`.  No `False.elim`.  None chain does not import
this file.

| Name | Status |
|---|---|
| `X0_26_Scheme` | `Γ₀(26)` + cusps `[1,2,13,26]` (not a Mathlib Scheme) |
| `J0_26_Scheme` | product `26a1 × 26b1`, dim `2 = 1 + 1` |
| `PicardAbelJacobiScheme` | `Pic⁰ = J₀` product identification |
| `AbelJacobiMap` | displayed `P ↦ [P − ∞]` |
| `formal_immersion_scheme_at_2` | `M₃` det `2 ≠ 0` over `ℤ/3`; Nakayama *input* |
| `X0_26_Q_points_cusps` | four cusps + `¬ ExistsNoncuspidal_26` + `|Sel₂|=1` |

`#print axioms` is `[propext, Classical.choice, Quot.sound]`
or fewer.  No `sorryAx`.
