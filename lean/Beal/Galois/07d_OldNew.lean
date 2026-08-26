/-
  Galois/07d_OldNew — the Hecke-module old/new decomposition boundary

  The coefficient sequence module from `05_Hecke` is only an ambient module.
  These Prop-valued interfaces do not assert that arbitrary coefficient
  sequences are modular forms and do not construct a decomposition.
-/
import Beal.Galois.«05_Hecke»

namespace Beal.Galois

/-- A coefficient submodule carrying the level-`M` Hecke action. -/
def IsModularFormAtLevel (M ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  ∀ (T : HeckeAlgebra M ℓ) (v : CoefficientSequence ℓ),
    v ∈ V → T.1 v ∈ V

/-- Internal direct-sum data for two submodules of an ambient module. -/
def IsInternalDirectSum
    {R E : Type*} [Semiring R] [AddCommMonoid E] [Module R E]
    (V Old New : Submodule R E) : Prop :=
  (∀ x, x ∈ Old → x ∈ V) ∧
    (∀ x, x ∈ New → x ∈ V) ∧
    (∀ v, v ∈ V →
      ∃ old, old ∈ Old ∧ ∃ new, new ∈ New ∧ old + new = v) ∧
    (∀ old, old ∈ Old → ∀ new, new ∈ New →
      old + new = 0 → old = 0 ∧ new = 0)

/-- The missing mod-ℓ old/new decomposition at level `M`. -/
def OldNewDecomp (M p ℓ : ℕ) : Prop :=
  p.Prime ∧
    ∃ (V Old New : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
      IsModularFormAtLevel M ℓ V ∧
      IsModularFormAtLevel M ℓ Old ∧
      IsModularFormAtLevel M ℓ New ∧
      IsInternalDirectSum V Old New

-- MISSING: an actual modular-form Hecke module, its old and new submodules,
-- and the direct-sum theorem.

#print axioms IsModularFormAtLevel
#print axioms IsInternalDirectSum
#print axioms OldNewDecomp

end Beal.Galois