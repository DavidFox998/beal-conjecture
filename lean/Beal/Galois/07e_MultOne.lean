/-
  Galois/07e_MultOne — the localized multiplicity-one boundary

  This file keeps localization explicit: the current noncommutative
  endomorphism subring has no constructed localized Hecke algebra here.
-/
import Beal.Galois.«07d_OldNew»
import Beal.Galois.«06_MaximalIdeal»

namespace Beal.Galois

/-- The finite support condition for a submodule at a maximal Hecke ideal. -/
def IsLocalizedAtMaximalIdeal
    {M ℓ : ℕ}
    (𝔪 : MaximalIdeal M ℓ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  ∀ (T : HeckeAlgebra M ℓ) (v : CoefficientSequence ℓ),
    T ∈ 𝔪.1 → v ∈ V → T.1 v = 0

/-- Typed carriers for the localized Hecke algebra and localized new module. -/
class LocalizedHeckeData (M ℓ : ℕ) (𝔪 : MaximalIdeal M ℓ) where
  Algebra : Type
  algebraSemiring : Semiring Algebra
  algebraMap : HeckeAlgebra M ℓ →+* Algebra
  New : Type
  newAddCommMonoid : AddCommMonoid New
  newModule : Module Algebra New

instance localizedHeckeDataSemiring
    {M ℓ : ℕ} {𝔪 : MaximalIdeal M ℓ}
    [D : LocalizedHeckeData M ℓ 𝔪] : Semiring D.Algebra :=
  D.algebraSemiring

instance localizedHeckeDataAddCommMonoid
    {M ℓ : ℕ} {𝔪 : MaximalIdeal M ℓ}
    [D : LocalizedHeckeData M ℓ 𝔪] : AddCommMonoid D.New :=
  D.newAddCommMonoid

instance localizedHeckeDataModule
    {M ℓ : ℕ} {𝔪 : MaximalIdeal M ℓ}
    [D : LocalizedHeckeData M ℓ 𝔪] : Module D.Algebra D.New :=
  D.newModule

abbrev LocalizedHeckeAlgebra
    (M ℓ : ℕ) (𝔪 : MaximalIdeal M ℓ)
    [D : LocalizedHeckeData M ℓ 𝔪] :=
  D.Algebra

abbrev NewLocalizedAtMaximalIdeal
    (M ℓ : ℕ) (𝔪 : MaximalIdeal M ℓ)
    [D : LocalizedHeckeData M ℓ 𝔪] :=
  D.New

/-- A constructive free-rank-one condition. -/
def IsFreeRankOne
    (R N : Type) [Semiring R] [AddCommMonoid N] [Module R N] : Prop :=
  Nonempty (N ≃ₗ[R] R)

/-- The missing localized multiplicity-one theorem. -/
def MultiplicityOne (M _p ℓ : ℕ) : Prop :=
  ∀ (V Old New : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
    IsModularFormAtLevel M ℓ V →
    IsInternalDirectSum V Old New →
      ∀ (𝔪 : MaximalIdeal M ℓ),
        IsLocalizedAtMaximalIdeal 𝔪 V →
          ∀ [_D : LocalizedHeckeData M ℓ 𝔪],
            IsFreeRankOne
                (LocalizedHeckeAlgebra M ℓ 𝔪)
                (NewLocalizedAtMaximalIdeal M ℓ 𝔪)

-- MISSING: the actual localized Hecke algebra, localized new module, and
-- rank-one theorem are not inferred from raw coefficient sequences.

#print axioms IsLocalizedAtMaximalIdeal
#print axioms LocalizedHeckeData
#print axioms LocalizedHeckeAlgebra
#print axioms NewLocalizedAtMaximalIdeal
#print axioms IsFreeRankOne
#print axioms MultiplicityOne

end Beal.Galois