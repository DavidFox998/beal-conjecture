/- 
  Galois/07d_OldNew — the Hecke-module old/new decomposition boundary

  The coefficient sequence module from `05_Hecke` is only an ambient module.
  This file names the additional structure needed before a mod-ℓ Ihara
  statement can be formulated on the correct space:

    * `IsModularFormAtLevel M ℓ V` says that a submodule `V` is stable under
      the level-M Hecke algebra;
    * `OldNewDecomp M p ℓ` says that the level-M modular-form submodule is an
      internal direct sum of old and new Hecke submodules.

  These are Prop-valued interfaces only.  In particular, no claim is made
  that an arbitrary coefficient sequence is a modular form, and no
  decomposition is proved from `CoefficientSequence` alone.
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

/-- The missing mod-ℓ old/new decomposition at level `M`.

    The primality premise records that `p` is the local prime used to mark the
    old/new step.  `Old` and `New` are existential submodules because the
    current project has no modular-form space or degeneracy-map construction
    from which they could be defined.  The required Hecke stability and
    internal direct-sum statement are nevertheless explicit. -/
def OldNewDecomp (M p ℓ : ℕ) : Prop :=
  p.Prime ∧
    ∃ (V Old New : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
      IsModularFormAtLevel M ℓ V ∧
      IsModularFormAtLevel M ℓ Old ∧
      IsModularFormAtLevel M ℓ New ∧
      IsInternalDirectSum V Old New

-- MISSING Mathlib 4.12 / project boundary:
-- proving `OldNewDecomp` requires the actual level-M modular-form Hecke
-- module, its old submodule from degeneracy maps, its new complement, and the
-- direct-sum theorem.  It must not be proved by treating all coefficient
-- sequences as modular forms.

#print axioms IsModularFormAtLevel
#print axioms IsInternalDirectSum
#print axioms OldNewDecomp
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois