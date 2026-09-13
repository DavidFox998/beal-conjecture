import BealLevel26Foundations.M3_Explicit
import BealLevel26Foundations.CoefficientLedger_26
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace Beal.Foundations.FormalImmersionM3

open BealLevel26Foundations.M3Explicit
open BealLevel26Foundations.CoefficientLedger26

/-!
# v1.4.0 formal-immersion M₃ certificate

This module reads `sagemath/certs/formal_immersion_M3.json` as typed data
over `ZMod 3` and checks it against the v1.4 ledger
`sagemath/level_26_ledger.json` (via `ledgerM3`).

Mathlib 4.12 has no formal immersion, Jacobian, Mordell--Weil group, or
Picard/Abel--Jacobi map.  The theorems below are matrix arithmetic:
`M₃ = [[1, 1], [0, 2]]` and `det = 2`.
-/

/-- SageMath certificate matrix `M3_mod_3`. -/
def certifiedM3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

/-- SageMath `coefficient_matrix_mod_3`. -/
def certifiedCoefficientMatrix : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 2, 1]

/-- SageMath `basis_change_mod_3`. -/
def certifiedBasisChange : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 0; 1, 1]

theorem certifiedM3_eq :
    certifiedM3 = !![1, 1; 0, 2] := by
  decide

theorem certifiedM3_eq_product :
    certifiedM3 = certifiedBasisChange * certifiedCoefficientMatrix := by
  decide

theorem certifiedM3_det :
    Matrix.det certifiedM3 = 2 := by
  decide

theorem certifiedM3_det_nonzero :
    Matrix.det certifiedM3 ≠ 0 := by
  decide

/-- Certificate `M₃` is the ledger-derived matrix. -/
theorem certifiedM3_eq_ledgerM3 :
    certifiedM3 = ledgerM3 := by
  rw [ledgerM3_eq]
  decide

theorem certifiedCoefficientMatrix_eq_C3 :
    certifiedCoefficientMatrix = C3 := by
  rw [C3_eq]
  decide

theorem certifiedBasisChange_eq_P :
    certifiedBasisChange = P := by
  rw [P_eq]
  decide

theorem certifiedNewform26a1_a1_a2 :
    qExp_26a1[1]? = some 1 ∧ qExp_26a1[2]? = some (-1) := by
  decide

theorem certifiedNewform26b1_a1_a2 :
    qExp_26b1[1]? = some 1 ∧ qExp_26b1[2]? = some 1 := by
  decide

#print axioms certifiedM3_eq
#print axioms certifiedM3_det
#print axioms certifiedM3_eq_ledgerM3

end Beal.Foundations.FormalImmersionM3
