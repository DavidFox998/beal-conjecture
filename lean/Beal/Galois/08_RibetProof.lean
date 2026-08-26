/- 
      Galois/08_RibetProof — conditional transport from newform support

      This file proves the formal last step from typed new-subspace support to
      the proposition `frey_level_lowering_of_unramified`: a supported new form
      already carries the lower-level realization witness required by that
      proposition.

      It does NOT prove the missing support theorem. The following mathematical
      results are still absent from the present Lean/Mathlib boundary and must
      be supplied before an unconditional Ribet theorem can be claimed:

      * a newform decomposition for the relevant mod-ℓ Hecke module;
      * a mod-ℓ Jacquet--Langlands / Ihara-lemma analogue that turns the
        unramified local condition into support at the divided level;
      * multiplicity one for the localized Hecke algebra 𝕋_𝔪, identifying the
        supported system of Hecke eigenvalues with the Frey residual
        representation.

      These omissions are deliberately neither `sorry` declarations nor global
      axioms. The support premise below is an explicit mathematical hypothesis.
      This file imports only the Galois boundary chain and has no connection to
      PreservedForm, B15, B20, BSD, or complex-analytic CuspForm APIs.
-/
import Beal.Galois.«07_NewformSupport»

namespace Beal.Galois

open Beal.FreyTate

/-- Conditional final transport for one level-lowering step.

    The mathematical work deferred to the three results named in this file's
    header is exactly the proof of `hSupport`. Once that explicit support
    hypothesis is available, `SupportInNewSubspace` contains a finite new form
    at level `M` realizing `R`, which is the conclusion of the existing
    level-lowering proposition.

    This is not an unconditional Ribet theorem and does not alter the separate
    `ribet_single_step` boundary in the final Beal route. -/
theorem frey_level_lowering_of_unramified_of_newform_support
    {A B C : ℤ} {x y z : ℕ}
    (model : FreyCurveModel A B C x y z)
    (ℓ N p M : ℕ)
    (hDiv : M * p = N)
    (hExact : ExactDividesCore p N)
    (hPrime : p.Prime)
    (hOdd : p ≠ 2)
    (R : FreyResidualRepresentation model ℓ)
    (I : InertiaSubgroup R.Gabs p)
    (hUnram : IsFreyUnramifiedAt R p I)
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (hReal : ModLRealizesRepresentation W R)
    (m : MaximalIdeal M ℓ)
    (hSupport : SupportInNewSubspace R m) :
    frey_level_lowering_of_unramified model ℓ N p M hDiv hExact hPrime hOdd R I
      hUnram W hReal := by
  rcases hSupport with ⟨W', _hNew, hRealizes, _hAnnihilates⟩
  exact ⟨W', hRealizes⟩

#print axioms frey_level_lowering_of_unramified_of_newform_support
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois