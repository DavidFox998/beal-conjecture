import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace Beal17Mazur.Gates.FormalImmersion26Cert

/-!
# Level-26 formal-immersion matrix certificate

The reduction prime is `3`, which is a good prime for level `26 = 2 * 13`.
The point of immersion is the rational cusp `∞`; these are separate roles.

`M3` is the `2 × 2` cotangent matrix obtained from the
`ModularSymbols(26)` basis after reduction modulo `3`. Its determinant is
`2`, hence is a unit in `ZMod 3`. This module checks that finite matrix fact.
The geometric identification with the actual Abel--Jacobi differential at
`∞` remains a separate theorem obligation.
-/

/-- The recorded cotangent matrix at the cusp `∞`, reduced modulo `3`. -/
def M3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

theorem M3_explicit :
    M3 = !![1, 1; 0, 2] :=
  rfl

theorem M3_det_eq_two :
    Matrix.det M3 = 2 := by
  norm_num [M3, Matrix.det_fin_two]

/-- The nonzero determinant certifies full rank two over `ZMod 3`. -/
theorem M3_det_nonzero :
    Matrix.det M3 ≠ 0 := by
  rw [M3_det_eq_two]
  decide

#print axioms M3_det_eq_two
#print axioms M3_det_nonzero

end Beal17Mazur.Gates.FormalImmersion26Cert