# v8.5.0 X0_26_Model cotangent sheaf from f

`lean/BealLevel26Foundations/Beal/FullProof/X0_26_Model.lean`

Affine coordinate ring `ℚ[X][Y]/(Y²−f)` via Mathlib
`AdjoinRoot`, and `Ω[R⁄ℚ]` via `KaehlerDifferential`.
The v8.4.0 localized matrix is the integral model of
that displayed sheaf at 3.  Not a Mathlib modular-curve
`TopCat.Sheaf`.  No `sorry`.  No `False.elim`.

| Name | Status |
|---|---|
| `X0_26_f` | `x⁶ − 8x⁵ + 22x⁴ − 20x³ + 5x² + 4x − 4` |
| `X0_26_f_deriv` | `6x⁵ − 40x⁴ + 88x³ − 60x² + 10x + 4` |
| `coordinateRing_X0_26` | `AdjoinRoot (Y² − f)` |
| `kaehlerDifferentials_X0_26` | Mathlib `Ω[R⁄ℚ]` |
| `hyperelliptic_kaehler_relation` | `2 y dy = f'(x) dx` |
| `cotangent_omega1` / `cotangent_omega2` | charts `dx/y`, `x dx/y` |
| `basis_H0_Omega1` | `Pi.basisFun` of displayed `ℚ²` |
| `cotangentSheaf_X0_26` | affine patch `= Ω[R⁄ℚ]` (not `TopCat.Sheaf`) |
| `cotangent_Z3_is_unit_sheaf` | `IsUnit det` over `ℤ_{(3)}` |
| `formal_immersion_at_3` | from the relation + unit sheaf |
| `X0_26_Q_points_cusps_model_real` | four cusps + immersion at 3 (Chabauty input) |

`#print axioms formal_immersion_at_3` is
`[propext, Classical.choice, Quot.sound]`.
Not a Mathlib `X₀(26)(ℚ)` theorem.
