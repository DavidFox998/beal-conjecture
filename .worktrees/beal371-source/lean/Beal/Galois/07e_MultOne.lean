/- 
  Galois/07e_MultOne — the localized multiplicity-one boundary

  This file states the next missing Hecke-module ingredient after the
  old/new decomposition in `07d_OldNew`.  It deliberately does not identify
  an arbitrary coefficient sequence with a modular form and does not import
  complex-analytic form APIs.

  Mathlib's current project boundary has no localized Hecke algebra for the
  noncommutative endomorphism subring used here.  `LocalizedHeckeData` is
  therefore an explicit typed interface: it supplies the scalar algebra and
  the localized-new module on which the desired freeness statement is to be
  read.  It is not a construction of localization.
-/
import Beal.Galois.«07d_OldNew»
import Beal.Galois.«06_MaximalIdeal»

namespace Beal.Galois

/-- The finite support condition for a submodule at a maximal Hecke ideal.

    Every operator belonging to `𝔪` acts by zero on the submodule.  This is
    the coefficient-level shadow of being supported at `𝔪`; it is not a
    construction of a localization. -/
def IsLocalizedAtMaximalIdeal
    {M ℓ : ℕ}
    (𝔪 : MaximalIdeal M ℓ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  ∀ (T : HeckeAlgebra M ℓ) (v : CoefficientSequence ℓ),
    T ∈ 𝔪.1 → v ∈ V → T.1 v = 0

/-- Typed carriers for the localized Hecke algebra and localized new module.

    The instances are fields rather than synthesized constructions, so a
    future implementation can provide the actual localization without
    changing the `MultiplicityOne` proposition. -/
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

/-- The localized Hecke algebra carrier supplied by the boundary interface. -/
abbrev LocalizedHeckeAlgebra
    (M ℓ : ℕ) (𝔪 : MaximalIdeal M ℓ)
    [D : LocalizedHeckeData M ℓ 𝔪] :=
  D.Algebra

/-- The new submodule after localization, supplied by the boundary interface. -/
abbrev NewLocalizedAtMaximalIdeal
    (M ℓ : ℕ) (𝔪 : MaximalIdeal M ℓ)
    [D : LocalizedHeckeData M ℓ 𝔪] :=
  D.New

/-- A constructive free-rank-one condition.

    An inhabited linear equivalence with the scalar algebra is the direct
    rank-one freeness datum.  We use this rather than the literal conjunction
    of Mathlib's free-module and rank predicates: in Lean 4.12, that
    basis/rank API introduces a nonconstructive choice dependency into the
    foundation audit. -/
def IsFreeRankOne
    (R N : Type) [Semiring R] [AddCommMonoid N] [Module R N] : Prop :=
  Nonempty (N ≃ₗ[R] R)

/-- The missing localized multiplicity-one theorem.

    The typeclass binder makes the unavailable localized algebra and localized
    new module explicit without exposing their implementation.  The theorem
    remains a Prop-valued boundary: it is not proved from
    `CoefficientSequence`, and the localized carriers are not fabricated.

    `IsFreeRankOne` is the choice-free formulation of the requested
    `Module.Free ∧ rank = 1` conclusion. -/
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

-- MISSING Mathlib 4.12 / project boundary:
-- proving `MultiplicityOne` requires an actual localized Hecke algebra,
-- localization of the new Hecke module at `𝔪`, and the rank-one theorem.
-- No such result is inferred from raw coefficient sequences here.

#print axioms IsLocalizedAtMaximalIdeal
#print axioms LocalizedHeckeData
#print axioms LocalizedHeckeAlgebra
#print axioms NewLocalizedAtMaximalIdeal
#print axioms IsFreeRankOne
#print axioms MultiplicityOne
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois