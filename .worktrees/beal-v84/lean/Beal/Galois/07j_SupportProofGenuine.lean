/-
  Galois/07j_SupportProofGenuine — the genuine support assembly

  This file assembles the finite coefficient-level boundaries from 07f–07i
  without treating any of their propositions as proved mathematics.  The
  final bridge from those hypotheses to maximal-ideal support is itself an
  explicit missing proposition.

  The V-level genuine predicate is `IsGenuineFormSubmoduleAtLevel` from 07g.
  The element-level predicate `IsGenuineModularFormAtLevel` from 07f cannot
  take a submodule as its argument, so this file preserves that distinction.
  The V-specific `OldNewDecompHyp` is supplied by the preceding 07h boundary.
-/
import Beal.Galois.«06_MaximalIdeal»
import Beal.Galois.«07f_GenuineSubmodule»
import Beal.Galois.«07g_IharaOnV»
import Beal.Galois.«07h_OldNewOnV»
import Beal.Galois.«07i_MultOneOnV»

namespace Beal.Galois

open Beal.FreyTate

/-- A candidate maximal ideal occurs in the finite new-subspace boundary at
    level `M` when its underlying two-sided ideal annihilates a new finite
    mod-ℓ form realizing the same residual representation.

    The level is carried by the type of `m`; no geometric support or newform
    decomposition is asserted. -/
def SupportInNewSubspace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (m : MaximalIdeal M ℓ) : Prop :=
  IsSupportedInNewSubspace R m.val

/-- The missing geometric bridge from the genuine boundaries to support.

    Each arrow is intentionally a proposition-valued hypothesis.  In
    particular, this definition does not prove restricted Ihara, old/new
    decomposition, localization, multiplicity one, or the final support
    conclusion. `OldNewDecompHyp` supplies an existential new component,
    whereas `LocalizedRankOne` is presently stated on the supplied `V`; the
    missing compatibility between those two boundary presentations is also
    part of this final bridge. -/
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

#print axioms hSupportFromBoundaries
#print axioms hNewformSupport_genuine_proof
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois