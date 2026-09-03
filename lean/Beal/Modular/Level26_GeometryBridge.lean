import Beal.Mazur.Gates.FormalImmersion_26_Cert
import BealLevel26Foundations.Mazur.QExpansionCotangent_Real_26

namespace Beal.Modular.Level26_GeometryBridge

open Beal17Mazur.Gates.FormalImmersion26Cert
open BealLevel26Foundations.M3Explicit
open BealLevel26Foundations.Mazur.QExpansionCotangentReal26
open BealLevel26Foundations.AbelJacobiDifferential

/-!
# Level-26 q-expansion to cotangent coordinates

The two normalized LMFDB eigenlines give the coefficient matrix
`C3 = [[1,1],[2,1]]`. The displayed basis change gives
`P * C3 = M3 = [[1,1],[0,2]]`. Foundations v1.2.0 constructs the formal Abel
primitive on the symmetric-square cusp chart and proves that its cotangent
linearization is this matrix; the parent imports that theorem rather than
duplicating the task-#511 construction.
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

/-- The level-26 Abel--Jacobi differential constructed in the immutable
Foundations v1.2.0 package. -/
abbrev actualDAJAtInfinity26 :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  actualAbelJacobiDifferentialAtInfinity26

/-- The former q-expansion/Picard boundary, now discharged by the formal
symmetric-square cusp-chart theorem imported from Foundations v1.2.0. -/
theorem qExpansion_cotangent_compatibility_at_infinity_26 :
    QExpansionCotangentCompatibilityAtInfinity26 actualDAJAtInfinity26 := by
  exact BealLevel26Foundations.Mazur.QExpansionCotangentReal26.qExpansion_cotangent_compatibility_at_infinity_26

theorem actual_dAJ_at_infinity_eq_M3 :
    actualDAJAtInfinity26 = M3 :=
  dAJ_at_infinity_eq_M3_of_qExpansion_compatibility
    actualDAJAtInfinity26
    qExpansion_cotangent_compatibility_at_infinity_26

#print axioms level26_coefficient_matrix_explicit
#print axioms level26_cotangent_matrix_eq_M3
#print axioms level26_cotangent_matrix_det_nonzero
#print axioms qExpansion_cotangent_compatibility_at_infinity_26
#print axioms actual_dAJ_at_infinity_eq_M3
#print axioms dAJ_at_infinity_eq_M3_of_qExpansion_compatibility

end Beal.Modular.Level26_GeometryBridge