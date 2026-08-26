/-
      Galois/07_NewformSupport — the new-subspace support boundary

      This file gives a typed name to the support conclusion needed in a
      one-prime Ribet lowering step. It does not prove a newform decomposition,
      identify geometric support, or derive support from unramifiedness.

      The local hypothesis remains explicit: Tate's exact conductor
      divisibility data does not imply residual unramifiedness.
-/
import Beal.Galois.«06_MaximalIdeal»

namespace Beal.Galois

open Beal.FreyTate

/-- A candidate maximal ideal occurs in the finite new-subspace boundary at
    level `M` when its underlying two-sided ideal annihilates a new finite
    mod-ℓ form realizing the same residual representation. -/
def SupportInNewSubspace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (m : MaximalIdeal M ℓ) : Prop :=
  IsSupportedInNewSubspace R m.val

/-- The missing support implication for one exact odd-prime division of a
    level. -/
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

/-- Conditional transport from the missing support implication to its typed
    new-subspace conclusion. -/
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
    (hNewformSupport :
      frey_unramified_implies_newform_support
        model ℓ N p M R I W 𝔪) :
    SupportInNewSubspace R 𝔪 := by
  exact hNewformSupport hDiv hExact hPrime hOdd hReal hUnram hAttachment

#print axioms SupportInNewSubspace
#print axioms frey_unramified_implies_newform_support
#print axioms maximal_ideal_support_of_unramified

end Beal.Galois