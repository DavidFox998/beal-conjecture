import Mathlib.Data.Matrix.Notation
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.NormNum

namespace BealLevel26Foundations.AbelJacobiDifferential

/-!
# A formal-coordinate level-26 differential calculation at infinity

At the double cusp `2∞`, use symmetric-square parameters
`s₁ = q₁ + q₂` and `s₂ = -q₁q₂`.  A differential with jet
`(a₁q + a₂q² + O(q³)) dq/q` has primitive
`a₁q + (a₂/2)q²`.  Since `q₁² + q₂² = s₁² + 2s₂`, its cotangent
linearization has coefficient vector `(a₁,a₂)`.  The certificate coordinates
`(s₁,s₁+s₂)` then apply the explicit basis change below.

The resulting matrix is obtained by linearizing this formal Abel integral; it
is not defined to be the certificate matrix.
-/

abbrev ResidueField26 := ZMod 3

inductive Cusp26 where
  | infinity
  deriving DecidableEq

structure StandardQParameterAtInfinity26 where
  cusp : Cusp26
  isInfinity : cusp = .infinity

def standardQParameterAtInfinity26 : StandardQParameterAtInfinity26 :=
  ⟨.infinity, rfl⟩

structure DifferentialJetAtInfinity26 where
  a1 : ResidueField26
  a2 : ResidueField26
  deriving DecidableEq

structure SymmetricSquareFormalFunction26 where
  constant : ResidueField26
  linear : Fin 2 → ResidueField26
  s1Squared : ResidueField26

def cotangentLinearization26
    (f : SymmetricSquareFormalFunction26) : Fin 2 → ResidueField26 :=
  f.linear

def abelJacobiFormalIntegral26
    (ω : DifferentialJetAtInfinity26) : SymmetricSquareFormalFunction26 where
  constant := 0
  linear := ![ω.a1, (ω.a2 / 2) * 2]
  s1Squared := ω.a2 / 2

theorem cotangent_of_abelJacobiFormalIntegral26
    (ω : DifferentialJetAtInfinity26) :
    cotangentLinearization26 (abelJacobiFormalIntegral26 ω) =
      ![ω.a1, ω.a2] := by
  funext i
  fin_cases i
  · rfl
  · exact div_mul_cancel₀ ω.a2 (by decide)

def qExpansionCotangentBasisChange26 :
    Matrix (Fin 2) (Fin 2) ResidueField26 :=
  !![1, 0; 1, 1]

def abelJacobiCotangentPullback26
    (ω : DifferentialJetAtInfinity26) : Fin 2 → ResidueField26 :=
  qExpansionCotangentBasisChange26.mulVec
    (cotangentLinearization26 (abelJacobiFormalIntegral26 ω))

theorem abelJacobiCotangentPullback26_eq_coefficients
    (ω : DifferentialJetAtInfinity26) :
    abelJacobiCotangentPullback26 ω =
      qExpansionCotangentBasisChange26.mulVec ![ω.a1, ω.a2] := by
  rw [abelJacobiCotangentPullback26,
    cotangent_of_abelJacobiFormalIntegral26]

def orderedEigenDifferentials26 : Fin 2 → DifferentialJetAtInfinity26 :=
  ![⟨1, 2⟩, ⟨1, 1⟩]

def coefficientMatrix26 :
    Matrix (Fin 2) (Fin 2) ResidueField26 :=
  fun i j =>
    let ω := orderedEigenDifferentials26 j
    ![ω.a1, ω.a2] i

theorem coefficientMatrix26_explicit :
    coefficientMatrix26 = !![1, 1; 2, 1] := by
  decide

def actualAbelJacobiDifferentialAtInfinity26 :
    Matrix (Fin 2) (Fin 2) ResidueField26 :=
  fun i j => abelJacobiCotangentPullback26 (orderedEigenDifferentials26 j) i

theorem actualAbelJacobiDifferentialAtInfinity26_eq_basisChange_mul_coefficients :
    actualAbelJacobiDifferentialAtInfinity26 =
      qExpansionCotangentBasisChange26 * coefficientMatrix26 := by
  ext i j
  rw [actualAbelJacobiDifferentialAtInfinity26,
    abelJacobiCotangentPullback26_eq_coefficients]
  simp only [Matrix.mul_apply, Matrix.mulVec, coefficientMatrix26]
  rfl

theorem actualAbelJacobiDifferentialAtInfinity26_explicit :
    actualAbelJacobiDifferentialAtInfinity26 = !![1, 1; 0, 2] := by
  rw [actualAbelJacobiDifferentialAtInfinity26_eq_basisChange_mul_coefficients,
    coefficientMatrix26_explicit]
  decide

theorem actualAbelJacobiDifferentialAtInfinity26_det_nonzero :
    Matrix.det actualAbelJacobiDifferentialAtInfinity26 ≠ 0 := by
  rw [actualAbelJacobiDifferentialAtInfinity26_explicit]
  norm_num [Matrix.det_fin_two]
  decide

#print axioms cotangent_of_abelJacobiFormalIntegral26
#print axioms actualAbelJacobiDifferentialAtInfinity26_eq_basisChange_mul_coefficients
#print axioms actualAbelJacobiDifferentialAtInfinity26_explicit
#print axioms actualAbelJacobiDifferentialAtInfinity26_det_nonzero

end BealLevel26Foundations.AbelJacobiDifferential