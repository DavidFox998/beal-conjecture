/-
  Galois/07i_MultOneOnV — localized rank one on the new boundary

  The coefficient Hecke algebra has no constructed localization or quotient in
  this project.  The `LocalizedHeckeData` class from 07e is therefore the
  explicit attachment of a prospective localized Hecke algebra and new module
  to a maximal ideal.  This file states the rank-one property that such an
  attachment must satisfy for a supplied new coefficient submodule.

  No localization, quotient, or multiplicity-one theorem is constructed here.
-/
import Beal.Galois.«07e_MultOne»
import Beal.Galois.«07h_OldNewOnV»

namespace Beal.Galois

/-- The required rank-one conclusion for a supplied localized Hecke attachment.

    The class argument supplies the localized Hecke algebra and its candidate
    new module at `𝔪`.  The antecedent records the finite coefficient-level
    statement that the source submodule `New` is supported at `𝔪`; it is not a
    construction of a ring localization. -/
def LocalizedRankOne (M ℓ : ℕ)
    (𝔪 : MaximalIdeal M ℓ)
    (New : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    [_D : LocalizedHeckeData M ℓ 𝔪] : Prop :=
  IsLocalizedAtMaximalIdeal 𝔪 New →
    Nonempty
      (NewLocalizedAtMaximalIdeal M ℓ 𝔪 ≃ₗ[LocalizedHeckeAlgebra M ℓ 𝔪]
        LocalizedHeckeAlgebra M ℓ 𝔪)

-- MISSING: the actual localization of the Hecke algebra and new submodule,
-- together with the localized multiplicity-one theorem, must establish
-- `LocalizedRankOne` for the attached maximal ideal.

#print axioms LocalizedRankOne
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois