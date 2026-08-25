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

/-!
  The following lemma is the application boundary for the desired
  maximal-ideal support statement.

  Mathlib 4.12 does not provide the theorem needed to construct
  `hNewformSupport`. In a genuine proof, that premise would be assembled from:

  * a mod-ℓ newform decomposition and a q-expansion principle for the finite
    weight-two Hecke module;
  * a local Ihara/Jacquet–Langlands-style statement transporting the
    unramified residual representation through the p-old/new decomposition;
  * multiplicity one (or an equivalent localized Hecke-algebra theorem) to
    identify the maximal-ideal component; and
  * the compatibility between the quotient by the attached maximal ideal and
    the explicit `ZMod ℓ` evaluation in `FreyHeckeAttachment`.

  None of those results is silently imported or replaced by a global axiom
  here. The explicit `hNewformSupport` premise is exactly the missing
  theorem, while the proof below performs only the valid logical transport
  from that premise to `SupportInNewSubspace`.
-/
/-- An attached maximal ideal is supported in the lower-level new subspace
    once the missing unramified-to-newform-support implication is supplied.

    The hypotheses `hPrime` and `hOdd` are explicit because
    `ExactDividesCore` records divisibility and squarefreeness only; it does
    not contain primality or the odd-prime condition. -/
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
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois