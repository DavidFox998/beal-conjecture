/-
  Galois/07k_TokenBridge — the Galois-to-Ribet token boundary

  This file performs the valid logical transport from genuine Galois
  new-subspace support to the typed preserved-form token consumed by B15's
  enriched descent edge, once the remaining
  supported-newform-to-token compatibility is supplied explicitly.

  The provider introduced below is deliberately data-valued: once the
  q-expansion/localization compatibility is supplied as a function, it can
  return a `PreservedForm` without eliminating a proposition into `Type`.
  This file does not construct that provider from Galois data and does not
  import B20.
-/
import Beal.Galois.«07j_SupportProofGenuine»
import Beal.B14_FormRepresentation

namespace Beal.Galois

open Beal.FreyTate

/-- The explicit data-valued compatibility required at one lower level.

    Unlike `SupportedNewformToPreservedToken`, this is intentionally a
    function type rather than a proposition ending in an existential. It is
    therefore capable of returning the data-valued `PreservedForm` required by
    B15 without `Classical.choice`. Its implementation remains a missing
    q-expansion/localization theorem supplied by future formalization. -/
def SupportedNewformToTokenProvider
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (ℓ M : ℕ) : Type 1 :=
  ∀ (R : FreyResidualRepresentation model ℓ)
    (𝔪 : MaximalIdeal M ℓ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
    IsGenuineFormSubmoduleAtLevel M ℓ V →
    SupportInNewSubspace R 𝔪 →
    PreservedForm ℓ M

/-- The exact representation/Hecke/newform transport still required at level
    `M`.

    This data-valued interface is narrower than
    `SupportedNewformToTokenProvider`: its caller must supply the finite
    newform itself, proof that it realizes the fixed Frey residual
    representation, and proof that the attached maximal ideal annihilates its
    coefficient sequence.  A genuine modular-form level-lowering theorem can
    implement this function directly.

    No inhabitant is constructed here.  In particular, this definition does
    not identify the finite form record with an integral modular form, build a
    localized Hecke module, or prove that the B15 token represents that form. -/
def NewformHeckeToPreservedTokenTransport
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (ℓ M : ℕ) : Type 1 :=
  ∀ (R : FreyResidualRepresentation model ℓ)
    (𝔪 : MaximalIdeal M ℓ)
    (W : ModLWeightTwoForm (model := model) M ℓ),
    IsNewform W →
    ModLRealizesRepresentation W R →
    HeckeIdealAnnihilatesForm 𝔪.val W →
    PreservedForm ℓ M

/-- A data-valued version of genuine new-subspace support.

    The existing `SupportInNewSubspace` is proposition-valued and hides its
    form behind an existential. Lean correctly forbids eliminating that
    existential into the data type `PreservedForm` without choice. This record
    retains the same finite witnesses in `Type`, so the token transport can
    consume them constructively. -/
structure NewSubspaceSupportData
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {ℓ M : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (𝔪 : MaximalIdeal M ℓ) where
  form : ModLWeightTwoForm (model := model) M ℓ
  isNewform : IsNewform form
  realizes : ModLRealizesRepresentation form R
  annihilated : HeckeIdealAnnihilatesForm 𝔪.val form

/-- Forget the data-valued support witness to the existing proposition. -/
theorem NewSubspaceSupportData.toSupportInNewSubspace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {ℓ M : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    (support : NewSubspaceSupportData R 𝔪) :
    SupportInNewSubspace R 𝔪 :=
  ⟨support.form, support.isNewform, support.realizes, support.annihilated⟩

/-- Construct B15's token from explicit support data and the exact
    representation/Hecke/newform transport.

    Unlike an attempted elimination of `SupportInNewSubspace`, this definition
    is constructive: the finite form and all compatibility witnesses remain
    data fields. -/
def preservedToken_of_supportData
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {ℓ M : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    (transport : NewformHeckeToPreservedTokenTransport
      (model := model) ℓ M)
    (support : NewSubspaceSupportData R 𝔪) :
    PreservedForm ℓ M :=
  transport R 𝔪 support.form support.isNewform support.realizes
    support.annihilated

/-- The missing finite-form compatibility needed to create B15's token.

    A support witness supplies a finite mod-ℓ newform `W`, its realization of
    `R`, and annihilation by the candidate Hecke ideal. Turning precisely that
    data into `PreservedForm ℓ M` requires the still-unformalized
    q-expansion/localization comparison with B15's abstract token interface.
    This proposition exposes that requirement without assuming a token merely
    from the level index. -/
def SupportedNewformToPreservedToken
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ) : Prop :=
  ∀ (𝔪 : MaximalIdeal M ℓ)
    (W : ModLWeightTwoForm (model := model) M ℓ),
    IsNewform W →
    ModLRealizesRepresentation W R →
    HeckeIdealAnnihilatesForm 𝔪.val W →
    ∃ (_T : PreservedForm ℓ M), True

/-- The Galois-to-Ribet conversion at one candidate lower level.

    `PreservedForm ℓ M` is exactly the token type carried by B15 after an
    enriched descent edge reaches level `M`.
    The only remaining mathematical premise is the explicit
    `SupportedNewformToPreservedToken` compatibility above. The proof supplied
    below extracts the finite newform from 07j support and applies that
    compatibility; it supplies no level-lowering step.

    The prime `p` is retained because this bridge is intended for the same
    one-prime lowering context as 07j, even though the token existence
    proposition itself is indexed only by the lower level `M`. -/
def GaloisToRibetBridge
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M p ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ) : Prop :=
  SupportedNewformToPreservedToken M ℓ R →
    ∀ (𝔪 : MaximalIdeal M ℓ)
      (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
      IsGenuineFormSubmoduleAtLevel M ℓ V →
      SupportInNewSubspace R 𝔪 →
      ∃ (_T : PreservedForm ℓ M), True

/-- Descriptive lowercase name for the same explicit missing boundary. -/
def galois_support_to_token_bridge
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M p ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ) : Prop :=
  GaloisToRibetBridge M p ℓ R

 /-- Conditional construction of B15's token from genuine 07j support.

     This is the honest computational content of the bridge: it opens the
     finite support witness and hands the extracted newform, realization, and
     Hecke-annihilation data to the explicit q-expansion/localization
     compatibility premise. The genuine `V` condition remains in the signature
     because it is part of the 07f–07j chain, even though support has already
     internalized the data this final transport needs. -/
theorem galois_support_to_token_bridge_proof
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M p ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ) :
    galois_support_to_token_bridge M p ℓ R := by
  intro hToken 𝔪 V _hV_genuine hSupport
  rcases hSupport with ⟨W, hW_new, hW_realizes, hW_annihilated⟩
  exact hToken 𝔪 W hW_new hW_realizes hW_annihilated

#print axioms SupportedNewformToTokenProvider
#print axioms NewformHeckeToPreservedTokenTransport
#print axioms NewSubspaceSupportData
#print axioms NewSubspaceSupportData.toSupportInNewSubspace
#print axioms preservedToken_of_supportData
#print axioms SupportedNewformToPreservedToken
#print axioms GaloisToRibetBridge
#print axioms galois_support_to_token_bridge
#print axioms galois_support_to_token_bridge_proof
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois