/-
      Galois/07_NewformSupport — the genuine new-subspace support application

      This file gives a typed application boundary for the genuine support
      assembly in `07j_SupportProofGenuine`. It does not prove a newform
      decomposition, identify geometric support, or derive support from
      unramifiedness.

      The local hypothesis remains explicit: Tate's exact conductor
      divisibility data does not imply residual unramifiedness. The three
      remaining deep inputs are explicit propositions: restricted Ihara on
      `V`, old/new decomposition on `V`, and localized rank one on `V`.
-/
import Beal.Galois.«07j_SupportProofGenuine»

namespace Beal.Galois

open Beal.FreyTate

/-- The missing support implication for one exact odd-prime division of a
    level.

    A genuine mod-ℓ level-lowering proof must establish this proposition from
    the stated local and Hecke-theoretic hypotheses. This declaration is only
    the required proposition: it neither proves residual unramifiedness nor
    obtains newform support from Tate's conductor data alone. -/
def frey_unramified_implies_newform_support
    {A B C : ℤ} {x y z : ℕ}
    (model : FreyCurveModel A B C x y z)
    (ℓ N p M : ℕ)
    (R : FreyResidualRepresentation model ℓ)
    (I : InertiaSubgroup R.Gabs p)
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (m : MaximalIdeal M ℓ) : Prop :=
  M * p = N →
    ExactDividesCore p N →
      p.Prime →
        p ≠ 2 →
          ModLRealizesRepresentation W R →
            IsFreyUnramifiedAt R p I →
              ∀ _attachment : FreyHeckeAttachment R m.val,
                SupportInNewSubspace R m

/-!
  The broad `frey_unramified_implies_newform_support` declaration above remains
  a compatibility-level statement. The lemma below instead applies the 07j
  assembly with its inspectable hypotheses:

  * `IharaKernelZeroOnV` — restricted Ihara on the genuine coefficient module;
  * `OldNewDecompHyp V` — old/new decomposition on that module; and
  * `LocalizedRankOne` — localized rank one for its candidate new component.

  These propositions remain uninhabited mathematical boundaries. The final
  `hBridge` is likewise explicit: no missing result is silently imported,
  replaced by a global axiom, or treated as a theorem of Mathlib. It also
  carries the still-missing compatibility from the existential new component
  in old/new decomposition to the rank-one boundary stated on `V`.
-/
/-- An attached maximal ideal is supported in the lower-level new subspace
    once the genuine v7 boundary hypotheses are supplied.

    The hypotheses `hPrime` and `hOdd` are explicit because
    `ExactDividesCore` records divisibility and squarefreeness only; it does
    not contain primality or the odd-prime condition.

    The principal coefficient module of `W` is the concrete `V` supplied to
    07j. Its V-level finite/genuine condition is deliberately an explicit
    premise: 07f proves that the raw 07c cancellation witness is excluded from
    any such V, but that exclusion alone cannot construct the required
    Hecke-stable genuine-form submodule. -/
lemma maximal_ideal_support_of_unramified
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ)
    (hDiv : M * p = N)
    (hExact : ExactDividesCore p N)
    (hPrime : p.Prime)
    (hOdd : p ≠ 2)
    (I : InertiaSubgroup R.Gabs p)
    (hUnram : IsFreyUnramifiedAt R p I)
    (𝔪 : MaximalIdeal M ℓ)
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (hReal : ModLRealizesRepresentation W R)
    (hAttachment : FreyHeckeAttachment R 𝔪.1)
    [LocalizedHeckeData M ℓ 𝔪]
    (hV_genuine :
      IsGenuineFormSubmoduleAtLevel M ℓ
        (PrincipalCoefficientSubmodule ℓ (coefficientSequenceOfForm W)))
    (hIharaOnV :
      IharaKernelZeroOnV M p ℓ
        (PrincipalCoefficientSubmodule ℓ (coefficientSequenceOfForm W)))
    (hOldNewOnV :
      OldNewDecompHyp (M := M) (ℓ := ℓ)
        (PrincipalCoefficientSubmodule ℓ (coefficientSequenceOfForm W)))
    (hRankOne :
      LocalizedRankOne M ℓ 𝔪
        (PrincipalCoefficientSubmodule ℓ (coefficientSequenceOfForm W)))
    (hBridge :
      hSupportFromBoundaries R M p
        (PrincipalCoefficientSubmodule ℓ (coefficientSequenceOfForm W)) 𝔪) :
    SupportInNewSubspace R 𝔪 := by
  let V : Submodule (ZMod ℓ) (CoefficientSequence ℓ) :=
    PrincipalCoefficientSubmodule ℓ (coefficientSequenceOfForm W)
  simpa [V] using
    (hNewformSupport_genuine_proof R p M N hDiv hExact hPrime hOdd I hUnram
      W hReal 𝔪 hAttachment V hV_genuine hIharaOnV hOldNewOnV hRankOne hBridge)

#print axioms SupportInNewSubspace
#print axioms frey_unramified_implies_newform_support
#print axioms maximal_ideal_support_of_unramified
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois