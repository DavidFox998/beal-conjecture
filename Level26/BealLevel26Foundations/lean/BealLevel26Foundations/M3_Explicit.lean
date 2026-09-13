import BealLevel26Foundations.CoefficientLedger_26
import BealLevel26Foundations.FiniteEvidence

namespace BealLevel26Foundations.M3Explicit

open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.FiniteEvidence

/-!
# The ledger-derived mod-3 matrix

Only the normalized coefficients `a₁ = 1` and `a₂ = -1, 1` enter this finite
matrix calculation. The full coefficient ledger is retained separately so the
source of those entries is auditable.
-/

def C3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  coefficientMatrix

def P : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  basisChange

def ledgerM3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  P * C3

theorem C3_eq : C3 = !![1, 1; 2, 1] := coefficientMatrix_eq
theorem P_eq : P = !![1, 0; 1, 1] := rfl
theorem ledgerM3_eq : ledgerM3 = !![1, 1; 0, 2] := M3_eq

theorem det_ledgerM3_ne_zero : Matrix.det ledgerM3 ≠ 0 := by
  exact M3_det_nonzero

#print axioms det_ledgerM3_ne_zero

end BealLevel26Foundations.M3Explicit