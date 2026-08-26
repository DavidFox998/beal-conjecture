/-
      Galois/08_RibetProof — conditional transport from newform support

      This file proves the formal last step from typed new-subspace support to
      `frey_level_lowering_of_unramified`. It does not prove the missing
      support theorem.
-/
import Beal.Galois.«07_NewformSupport»

namespace Beal.Galois

open Beal.FreyTate

/-- Conditional final transport for one level-lowering step. -/
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

end Beal.Galois