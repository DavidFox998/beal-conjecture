import BealLevel26Foundations.FiniteEvidence
import BealLevel26Foundations.M3_Explicit
import BealLevel26Foundations.CoefficientLedger_26
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace Beal.Foundations.FormalImmersionM3Certificate

open BealLevel26Foundations.FiniteEvidence
open BealLevel26Foundations.M3Explicit
open BealLevel26Foundations.CoefficientLedger26

/-!
# v1.3.0 formal-immersion M₃ certificate

This module promotes `sagemath/certs/formal_immersion_M3.json`.  The matrix
agrees with the already-checked ledger `M₃`.  Mathlib 4.12 has no formal
immersion or Picard/Abel--Jacobi map, so this is not a geometric immersion
theorem at 2.
-/

def certifiedCoefficientMatrix : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 2, 1]

def certifiedBasisChange : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 0; 1, 1]

def certifiedM3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  certifiedBasisChange * certifiedCoefficientMatrix

def certifiedModularSymbolsNewCuspidalDimension : Nat := 2

def certifiedFormalImmersionPrime : Nat := 2

theorem certifiedCoefficientMatrix_eq :
    certifiedCoefficientMatrix = coefficientMatrix := by
  rw [coefficientMatrix_eq]
  decide

theorem certifiedBasisChange_eq :
    certifiedBasisChange = basisChange :=
  rfl

theorem certifiedM3_eq :
    certifiedM3 = !![1, 1; 0, 2] := by
  decide

theorem certifiedM3_eq_ledgerM3 :
    certifiedM3 = ledgerM3 := by
  rw [certifiedM3_eq, ledgerM3_eq]

theorem certifiedM3_eq_M3 :
    certifiedM3 = M3 := by
  rw [certifiedM3_eq, M3_eq]

theorem certifiedM3_det :
    Matrix.det certifiedM3 = 2 := by
  rw [certifiedM3_eq]
  norm_num [Matrix.det_fin_two]

theorem certifiedM3_det_nonzero :
    Matrix.det certifiedM3 ≠ 0 := by
  rw [certifiedM3_det]
  decide

theorem certifiedModularSymbolsDimension_eq_two :
    certifiedModularSymbolsNewCuspidalDimension = 2 :=
  rfl

theorem certifiedNewform26a1_a1_a2 :
    qExp_26a1[1]? = some 1 ∧ qExp_26a1[2]? = some (-1) := by
  decide

theorem certifiedNewform26b1_a1_a2 :
    qExp_26b1[1]? = some 1 ∧ qExp_26b1[2]? = some 1 := by
  decide

#print axioms certifiedM3_eq_ledgerM3
#print axioms certifiedM3_det_nonzero
#print axioms certifiedNewform26a1_a1_a2
#print axioms certifiedNewform26b1_a1_a2

end Beal.Foundations.FormalImmersionM3Certificate
