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
    mod-ℓ form realizing the same residual representation.

    The level is carried by the type of `m`; no geometric support or newform
    decomposition is asserted. -/
def SupportInNewSubspace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (m : MaximalIdeal M ℓ) : Prop :=
  IsSupportedInNewSubspace R m.val

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

#print axioms SupportInNewSubspace
#print axioms frey_unramified_implies_newform_support
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois