/-
  Galois/07k_TokenBridge — the Galois-to-Ribet token boundary

  This file performs the valid logical transport from genuine Galois
  new-subspace support to the typed preserved-form token consumed by
  `Beal.RibetIterate.ribet_single_step`, once the remaining
  supported-newform-to-token compatibility is supplied explicitly.

  In particular, this file does not construct a `PreservedForm` from Galois
  data alone, does not call `ribet_single_step`, and does not import B20.
-/
import Beal.Galois.«07j_SupportProofGenuine»
import Beal.B14_FormRepresentation
import Beal.B15_RibetIterate

namespace Beal.Galois

open Beal.FreyTate

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

    `PreservedForm ℓ M` is exactly the token type expected as the form input
    by `Beal.RibetIterate.ribet_single_step` when its current level is `M`.
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

#print axioms SupportedNewformToPreservedToken
#print axioms GaloisToRibetBridge
#print axioms galois_support_to_token_bridge
#print axioms galois_support_to_token_bridge_proof
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois