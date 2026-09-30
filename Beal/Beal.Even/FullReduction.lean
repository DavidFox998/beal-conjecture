import Beal.«Beal.General».TateEvenBranch
import Beal.«Beal.General».SpecialFibreGluing
import Beal.«Beal.General».TateEvenBranchGenericFibre
import Mathlib.Algebra.Group.Even
import Mathlib.Data.ZMod.Basic

/-!
# v34 even-branch packaging

This module does not prove Beal's conjecture, and it does not prove
the even-exponent case. It puts three already-checked pieces next to
the statements that a later even-reduction argument would still have
to supply.

Checked, and re-exported below:

* `2` is a non-zero-divisor in the divided even-node chart ring
  (`evenNodeTwoChart_two_regular` in the 2,249-line
  `TateEvenBranch.lean`, which this file does not edit).
* Over `D(2)`, the actual Rees blow-up is isomorphic to
  `Spec (R_Z[1/2])` (`evenBranchBlowupGenericFibreIso`, 59 lines).
* `Proj(ReesMod2)` is isomorphic to the gluing of the three
  polynomial-chart spectra (`specialFibreProjPolynomialGlueIso`,
  167 lines). The overlaps are abstract pullbacks.

Not checked, and not given inhabitants here:

* regularity of the blow-up scheme `Bl_I`;
* properness or birationality of `Bl_I → Spec(R_Z)`;
* `E = V(overline{2t}) ≅ ℙ¹_{𝔽₂}`;
* the claim that `(0,0)` on the reduced `2t` chart lies in no
  other chart;
* any implication from an even solution of `x^p + y^q = z^r`
  to `2 ∣ X` and `2 ∣ Y`, or to a contradiction.

The curve `y² + xy = x³ + 8` is an illustrative calculation only.
Its `2`-chart numerator factors as `4(V² + UV - 2U³ - 2)`, and
the associated `𝔽₂` equation `V² + UV = 0` has three points, not
one. That count is not a classification of an exceptional divisor.
-/

namespace Beal.Even

open Beal.General

/-! ## Checked chart regularity

`Bl_I_regular_at_even_branch` is the existing statement that the
base uniformizer `2` is regular on the divided chart ring. It is
not a proof that the blow-up is a regular scheme. -/

abbrev Bl_I_regular_at_even_branch := evenNodeTwoChart_two_regular

/-! ## Checked generic fibre

`proper_birational` is the wrong name for this isomorphism: the
checked fact is the identification of the blow-up with
`Spec(R_Z[1/2])` over the generic open `D(2)`. Properness of a
global morphism `Bl_I → Spec(R_Z)`, and birationality on the
integral model, are not theorems of this repository. -/

noncomputable abbrev generic_fibre_iso := evenBranchBlowupGenericFibreIso

abbrev generic_fibre_iso_overBase := evenBranchBlowupGenericFibreIso_overBase

abbrev generic_centre_eq_top := evenBranchCentre_generic_eq_top

/-! ## Checked special-fibre gluing

This is `Proj(ReesMod2) ≅ Glue(S_{2t}/(2), S_{Xt}/(2), S_{Yt}/(2))`
with abstract overlaps. It is not an isomorphism of the actual
special-fibre pullback with that gluing, and it is not
`E ≅ ℙ¹`. -/

noncomputable abbrev special_fibre_glue_iso := specialFibreProjPolynomialGlueIso

noncomputable abbrev special_fibre_cocycle := specialFibreAbstractTripleCocycle

/-! ## Illustrative curve `y² + xy = x³ + 8`

Substituting the `2`-chart coordinates `x = 2U`, `y = 2V` into
`y² + xy - x³ - 8` produces four times
`V² + UV - 2U³ - 2`. Reducing modulo `2` drops the terms with a
visible factor `2`, leaving `V² + UV`. -/

theorem example_twoChart_fourFactor (U V : ℤ) :
    (2 * V) ^ 2 + (2 * U) * (2 * V) - ((2 * U) ^ 3 + 8) =
      4 * (V ^ 2 + U * V - 2 * U ^ 3 - 2) := by
  ring

theorem example_reduced_origin :
    (0 : ZMod 2) ^ 2 + (0 : ZMod 2) * 0 = 0 := by
  decide

/-- The reduced equation `V² + UV = 0` over `𝔽₂` has three
solutions: `(0,0)`, `(1,0)`, and `(1,1)`. In particular `(0,0)`
is not its only point, so this calculation does not show that a
single point exhausts `D₊(overline{2t})`. -/
theorem example_reduced_three_points :
    ∀ U V : ZMod 2, V ^ 2 + U * V = 0 ↔
      (U = 0 ∧ V = 0) ∨ (U = 1 ∧ V = 0) ∨ (U = 1 ∧ V = 1) := by
  decide

/-! ## Obligations with no inhabitant

`even_Beal` is the even-exponent Diophantine claim. Defining it
does not prove it. No theorem in this file produces `False` from
a hypothetical solution, and none concludes `2 ∣ X` or `2 ∣ Y`
for a Tate model of such a solution. -/

def even_Beal : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Even p → Even q → Even r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    False

end Beal.Even

#print axioms Beal.Even.Bl_I_regular_at_even_branch
#print axioms Beal.Even.generic_fibre_iso
#print axioms Beal.Even.generic_fibre_iso_overBase
#print axioms Beal.Even.generic_centre_eq_top
#print axioms Beal.Even.special_fibre_glue_iso
#print axioms Beal.Even.special_fibre_cocycle
#print axioms Beal.Even.example_twoChart_fourFactor
#print axioms Beal.Even.example_reduced_origin
#print axioms Beal.Even.example_reduced_three_points
