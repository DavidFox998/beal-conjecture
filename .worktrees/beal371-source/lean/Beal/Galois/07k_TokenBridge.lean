/-
  Galois/07k_TokenBridge — the Galois-to-Ribet token boundary

  This file states, but does not prove, the missing conversion from genuine
  Galois new-subspace support to the typed preserved-form token consumed by
  `Beal.RibetIterate.ribet_single_step`.

  The existential conclusion is deliberately only a proposition. In
  particular, this file does not construct a `PreservedForm` from Galois
  data, does not call `ribet_single_step`, and does not import B20.
-/
import Beal.Galois.«07j_SupportProofGenuine»
import Beal.B14_FormRepresentation
import Beal.B15_RibetIterate

namespace Beal.Galois

open Beal.FreyTate

/-- The missing Galois-to-Ribet conversion at one candidate lower level.

    `PreservedForm ℓ M` is exactly the token type expected as the form input
    by `Beal.RibetIterate.ribet_single_step` when its current level is `M`.
    The `True` conjunct makes clear that this boundary asserts existence only;
    it supplies no construction, compatibility proof, or level-lowering step.

    The prime `p` is retained because this bridge is intended for the same
    one-prime lowering context as 07j, even though the token existence
    proposition itself is indexed only by the lower level `M`. -/
def GaloisToRibetBridge
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M p ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ) : Prop :=
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

#print axioms GaloisToRibetBridge
#print axioms galois_support_to_token_bridge
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois