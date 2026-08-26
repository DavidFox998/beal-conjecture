/-
  Galois/07j_SupportProofGenuine — the genuine support assembly

  This file assembles the finite coefficient-level boundaries from 07f–07i
  without treating any of their propositions as proved mathematics.  The
  final bridge from those hypotheses to maximal-ideal support is itself an
  explicit missing proposition.

  The V-level genuine predicate is `IsGenuineFormSubmoduleAtLevel` from 07g.
  The element-level predicate `IsGenuineModularFormAtLevel` from 07f cannot
  take a submodule as its argument, so this file preserves that distinction.
-/
import Beal.Galois.«07_NewformSupport»
import Beal.Galois.«07f_GenuineSubmodule»
import Beal.Galois.«07g_IharaOnV»
import Beal.Galois.«07h_OldNewOnV»
import Beal.Galois.«07i_MultOneOnV»

namespace Beal.Galois

open Beal.FreyTate

/-- The V-specific old/new proposition supplied by the 07h boundary.

    The genuine-form generation condition is retained together with the
    explicit internal old/new direct-sum data.  This is a proposition to be
    inhabited by future geometric input, not a decomposition theorem proved
    from coefficient sequences. -/
def OldNewDecompHyp
    {M ℓ : ℕ}
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  IsGenuineFormGeneratedAtLevel M ℓ V ∧
    ∃ Old New : Submodule (ZMod ℓ) (CoefficientSequence ℓ),
      IsModularFormAtLevel M ℓ Old ∧
        IsModularFormAtLevel M ℓ New ∧
          IsInternalDirectSum V Old New

/-- The missing geometric bridge from the genuine boundaries to support.

    Each arrow is intentionally a proposition-valued hypothesis.  In
    particular, this definition does not prove restricted Ihara, old/new
    decomposition, localization, multiplicity one, or the final support
    conclusion. -/
def hSupportFromBoundaries
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (M p : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (𝔪 : MaximalIdeal M ℓ)
    [LocalizedHeckeData M ℓ 𝔪] : Prop :=
  IsGenuineFormSubmoduleAtLevel M ℓ V →
    -- MISSING: prove restricted Ihara on the genuine level-M submodule.
    IharaKernelZeroOnV M p ℓ V →
      -- MISSING: prove the genuine-form old/new decomposition on V.
      OldNewDecompHyp (M := M) (ℓ := ℓ) V →
        -- MISSING: construct localization and prove rank one on the new part.
        LocalizedRankOne M ℓ 𝔪 V →
          SupportInNewSubspace R 𝔪

/-- Conditional genuine assembly of maximal-ideal newform support.

    The local arithmetic, representation, and attachment arguments are kept
    in the signature so this definition can replace the existing support
    premise without changing its call-site context.  The actual geometric
    bridge remains the explicit `h` proposition above. -/
def hNewformSupport_genuine_proof
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ)
    (_hDiv : M * p = N)
    (_hExact : ExactDividesCore p N)
    (_hPrime : p.Prime)
    (_hOdd : p ≠ 2)
    (_I : InertiaSubgroup R.Gabs p)
    (_hUnram : IsFreyUnramifiedAt R p _I)
    (_W : ModLWeightTwoForm (model := model) N ℓ)
    (_hReal : ModLRealizesRepresentation _W R)
    (𝔪 : MaximalIdeal M ℓ)
    (_hAttach : FreyHeckeAttachment R 𝔪.1)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    [LocalizedHeckeData M ℓ 𝔪]
    (hV_genuine : IsGenuineFormSubmoduleAtLevel M ℓ V)
    (hIharaOnV : IharaKernelZeroOnV M p ℓ V)
    (hOldNewOnV : OldNewDecompHyp (M := M) (ℓ := ℓ) V)
    (hRankOne : LocalizedRankOne M ℓ 𝔪 V)
    (h : hSupportFromBoundaries R M p V 𝔪) :
    SupportInNewSubspace R 𝔪 := by
  exact h hV_genuine hIharaOnV hOldNewOnV hRankOne

#print axioms OldNewDecompHyp
#print axioms hSupportFromBoundaries
#print axioms hNewformSupport_genuine_proof
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois