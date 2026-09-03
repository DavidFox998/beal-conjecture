import Beal.Modular.Level26_Eigenline
import Beal.Mazur.Gates.FormalImmersion_26_Cert

namespace Beal.Modular.Level26_GeometryBridge

open Beal.Galois
open Beal.Modular.Level26_Eigenline
open Beal17Mazur.Gates.FormalImmersion26Cert

/-!
# Level-26 q-expansion to cotangent coordinates

This module proves the finite linear-algebra bridge supplied by the two
normalized LMFDB eigenlines.  In the ordered eigenform basis `(26a1, 26b1)`,
the first two Fourier-coefficient functionals give

`[[a₁(26a1), a₁(26b1)], [a₂(26a1), a₂(26b1)]] = [[1,1],[-1,1]]`.

Modulo `3`, adding the first row to the second gives the certified matrix
`M3 = [[1,1],[0,2]]`.

The last section isolates the genuinely geometric statement still required:
for the standard parameter `q` at the cusp `∞`, the actual Abel--Jacobi
cotangent map must have these coefficient coordinates.  No definition below
sets an actual geometric differential equal to `M3`.
-/

/-- The first-two-coefficient matrix of the two normalized eigenlines. -/
def level26CoefficientMatrixMod3 :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![
    Level26a1_Eigenline.generator 1,
      Level26b1_Eigenline.generator 1;
    Level26a1_Eigenline.generator 2,
      Level26b1_Eigenline.generator 2
  ]

theorem level26_coefficient_matrix_explicit :
    level26CoefficientMatrixMod3 = !![1, 1; 2, 1] := by
  decide

/-- Target-coordinate change `(c₁,c₂) ↦ (c₁,c₁+c₂)`. -/
def qExpansionCotangentBasisChange :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 0; 1, 1]

/-- The cotangent-coordinate matrix forced by the ledger coefficients. -/
def level26CotangentMatrixMod3 :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  qExpansionCotangentBasisChange * level26CoefficientMatrixMod3

theorem level26_cotangent_matrix_explicit :
    level26CotangentMatrixMod3 = !![1, 1; 0, 2] := by
  decide

theorem level26_cotangent_matrix_eq_M3 :
    level26CotangentMatrixMod3 = M3 := by
  rw [level26_cotangent_matrix_explicit, M3_explicit]

theorem level26_cotangent_matrix_det_nonzero :
    Matrix.det level26CotangentMatrixMod3 ≠ 0 := by
  rw [level26_cotangent_matrix_eq_M3]
  exact M3_det_nonzero

/-! ## Exact geometric boundary -/

/-- The precise compatibility needed from modular-curve geometry.

For a supplied matrix of the actual cotangent map `d(AJ)_∞`, this proposition
states that the standard q-parameter and the chosen source/target bases identify
that map with the coefficient matrix computed above.  Constructing the actual
modular curve, Jacobian, cusp completion, and pullback on differentials is not
part of the finite ledger.
-/
def QExpansionCotangentCompatibilityAtInfinity26
    (dAJAtInfinity : Matrix (Fin 2) (Fin 2) (ZMod 3)) : Prop :=
  dAJAtInfinity = level26CotangentMatrixMod3

/-- Once the standard q-expansion/cotangent compatibility is supplied, the
actual Abel--Jacobi cotangent matrix is the certified `M3`. -/
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