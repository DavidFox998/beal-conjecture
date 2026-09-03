import Beal.Mazur.Gates.FormalImmersion_26_Cert
import BealLevel26Foundations.Mazur.QExpansionCotangent_Real_26

namespace Beal.Modular.Level26_GeometryBridge

open Beal17Mazur.Gates.FormalImmersion26Cert
open BealLevel26Foundations.M3Explicit
open BealLevel26Foundations.Mazur.QExpansionCotangentReal26

/-!
# Level-26 q-expansion to cotangent coordinates

The two normalized LMFDB eigenlines give the coefficient matrix
`C3 = [[1,1],[2,1]]`. The displayed basis change gives
`P * C3 = M3 = [[1,1],[0,2]]`. The actual Abel--Jacobi cotangent map is not
defined to be this matrix: its identification remains the explicit proposition
`QExpansionCotangentCompatibilityAtInfinity26`.
-/

abbrev level26CoefficientMatrixMod3 :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  qExpansionCoefficientMatrix26

theorem level26_coefficient_matrix_explicit :
    level26CoefficientMatrixMod3 = !![1, 1; 2, 1] := by
  exact qExpansionCoefficientMatrix26_eq

abbrev qExpansionCotangentBasisChange :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  P

abbrev level26CotangentMatrixMod3 :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  qExpansionCotangentMatrix26

theorem level26_cotangent_matrix_explicit :
    level26CotangentMatrixMod3 = !![1, 1; 0, 2] := by
  exact qExpansionCotangentMatrix26_explicit

theorem level26_cotangent_matrix_eq_M3 :
    level26CotangentMatrixMod3 = M3 := by
  exact qExpansionCotangentMatrix26_eq_M3

theorem level26_cotangent_matrix_det_nonzero :
    Matrix.det level26CotangentMatrixMod3 ≠ 0 := by
  rw [level26_cotangent_matrix_eq_M3]
  exact M3_det_nonzero

/-- The missing geometric theorem: the actual cotangent map in the standard
q-parameter and stated bases equals the ledger-derived coefficient map. -/
def QExpansionCotangentCompatibilityAtInfinity26
    (dAJAtInfinity : Matrix (Fin 2) (Fin 2) (ZMod 3)) : Prop :=
  dAJAtInfinity = level26CotangentMatrixMod3

theorem dAJ_at_infinity_eq_M3_of_qExpansion_compatibility
    (dAJAtInfinity : Matrix (Fin 2) (Fin 2) (ZMod 3))
    (hCompatibility :
      QExpansionCotangentCompatibilityAtInfinity26 dAJAtInfinity) :
    dAJAtInfinity = M3 := by
  rw [hCompatibility, level26_cotangent_matrix_eq_M3]

#print axioms level26_coefficient_matrix_explicit
#print axioms level26_cotangent_matrix_eq_M3
#print axioms level26_cotangent_matrix_det_nonzero
#print axioms dAJ_at_infinity_eq_M3_of_qExpansion_compatibility

end Beal.Modular.Level26_GeometryBridge