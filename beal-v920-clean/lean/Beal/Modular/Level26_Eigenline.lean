import Beal.Galois.«07n_NormalizedEigenlineQExpansion»

namespace Beal.Modular.Level26_Eigenline

open Beal.Galois

/-!
# The two normalized level-26 coefficient eigenlines modulo 3

The integer coefficient lists below are copied verbatim from
`docs/Level26/level_26_ledger.json`.  Entry `n` is `a_n`, beginning with
`a_0 = 0` and ending with `a_100`.

This file constructs two separate one-dimensional coefficient submodules.
It does not identify their direct sum with the geometric space `S₂(26)`.
-/

def level26a1Coefficients : List Int :=
  [0,1,-1,1,1,-3,-1,-1,-1,-2,3,6,1,1,1,-3,1,-3,2,2,-3,-1,-6,0,-1,4,-1,-5,-1,6,3,-4,-1,6,3,3,-2,-7,-2,1,3,0,1,-1,6,6,0,3,1,-6,-4,-3,1,0,5,-18,1,2,-6,-6,-3,8,4,2,1,-3,-6,14,-3,0,-3,-3,2,2,7,4,2,-6,-1,8,-3,1,0,12,-1,9,1,6,-6,-6,-6,-1,0,-4,-3,-6,-1,-10,6,-12,4]

def level26b1Coefficients : List Int :=
  [0,1,1,-3,1,-1,-3,1,1,6,-1,-2,-3,-1,1,3,1,-3,6,6,-1,-3,-2,-4,-3,-4,-1,-9,1,2,3,4,1,6,-3,-1,6,3,6,3,-1,0,-3,-5,-2,-6,-4,13,-3,-6,-4,9,-1,12,-9,2,1,-18,2,-10,3,-8,4,6,1,1,6,-2,-3,12,-1,-5,6,-10,3,12,6,-2,3,-4,-1,9,0,0,-3,3,-5,-6,-2,6,-6,-1,-4,-12,13,-6,-3,14,-6,-12,-4]

theorem level26a1_coefficients_length :
    level26a1Coefficients.length = 101 := by
  decide

theorem level26b1_coefficients_length :
    level26b1Coefficients.length = 101 := by
  decide

/-- Reduction modulo `3` of the `26a1` ledger coefficients, extended by zero
beyond `a_100`. -/
def level26a1QExpansion : CoefficientSequence 3 :=
  fun n => (level26a1Coefficients.getD n 0 : ZMod 3)

/-- Reduction modulo `3` of the `26b1` ledger coefficients, extended by zero
beyond `a_100`. -/
def level26b1QExpansion : CoefficientSequence 3 :=
  fun n => (level26b1Coefficients.getD n 0 : ZMod 3)

/-- The explicit one-generator coefficient line.  Keeping the scalar witness
in the carrier avoids invoking a choice-bearing general span theorem. -/
def coefficientLine (generator : CoefficientSequence 3) :
    Submodule (ZMod 3) (CoefficientSequence 3) where
  carrier := {f | ∃ c : ZMod 3, c • generator = f}
  zero_mem' := ⟨0, by simp⟩
  add_mem' := by
    intro a b ⟨ca, hca⟩ ⟨cb, hcb⟩
    refine ⟨ca + cb, ?_⟩
    rw [add_smul, hca, hcb]
  smul_mem' := by
    intro c f ⟨cf, hcf⟩
    refine ⟨c * cf, ?_⟩
    rw [mul_smul, hcf]

def Level26a1_V : Submodule (ZMod 3) (CoefficientSequence 3) :=
  coefficientLine level26a1QExpansion

def Level26b1_V : Submodule (ZMod 3) (CoefficientSequence 3) :=
  coefficientLine level26b1QExpansion

/-- The `26a1` singleton span, normalized by its ledger value `a₁ = 1`. -/
def Level26a1_Eigenline : NormalizedEigenlineData 3 Level26a1_V where
  generator := level26a1QExpansion
  generator_mem := ⟨1, by simp⟩
  spans := by
    intro f hf
    exact hf
  coefficient_one := rfl

/-- The `26b1` singleton span, normalized by its ledger value `a₁ = 1`. -/
def Level26b1_Eigenline : NormalizedEigenlineData 3 Level26b1_V where
  generator := level26b1QExpansion
  generator_mem := ⟨1, by simp⟩
  spans := by
    intro f hf
    exact hf
  coefficient_one := rfl

theorem level26_eigenlines_have_distinct_a2 :
    Level26a1_Eigenline.generator 2 = -1 ∧
      Level26b1_Eigenline.generator 2 = 1 := by
  constructor <;> rfl

#print axioms Level26a1_Eigenline
#print axioms Level26b1_Eigenline
#print axioms level26_eigenlines_have_distinct_a2

end Beal.Modular.Level26_Eigenline