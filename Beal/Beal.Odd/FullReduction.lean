import Beal.«Beal.Even».FullReduction
import Mathlib.Algebra.Ring.Parity

/-!
# v35 odd-exponent starter

This module does not prove Beal's conjecture for odd exponents.
It imports the v34 even-branch packaging and re-exports three
checked facts: the nodal union, the dense open `D(2)`, and finite
type of the divided `2`-chart.

Odd exponents are not given a separate chart. No theorem here says
that the `2`-chart is unnecessary, that `2 ∤ X` or `2 ∤ Y`, or that
an odd solution specializes anywhere. `overline{2t}` stays excluded
from degree-one and nonvanishing claims.

Also not claimed, as in v34: `UniversallyClosed`, `IsProperMap`,
`E ≅ ℙ¹`, and identification of the actual special-fibre pullback
with the quotient `Proj`.
-/

namespace Beal.Odd

open Beal.Even

/-! ## Reused v34 facts

These are the even-branch lemmas. Re-exporting them does not
extend them to odd exponents. -/

theorem reused_nodal_union {R : Type*} [CommRing R] [IsDomain R] :
    E_nodal (R := R) = lineV ∪ lineVU :=
  E_nodal_eq_union

theorem reused_lines_meet_at_origin {R : Type*} [CommRing R] :
    (lineV (R := R) ∩ lineVU) = {(0, 0)} :=
  E_meets_only_at_origin

theorem reused_F2_points :
    ∀ U V : ZMod 2, (U, V) ∈ E_nodal ↔
      (U, V) = (0, 0) ∨ (U, V) = (1, 0) ∨ (U, V) = (1, 1) :=
  E_F2_points

abbrev reused_D2_dense := base_D2_dense

abbrev reused_generic_open_dense := generic_open_dense

abbrev reused_twoChart_finiteType := twoChart_finiteType

/-! ## Odd exponents, uninhabited

`odd_Beal` is the odd-exponent Diophantine claim. `odd_branch_chart`
is the further arithmetic shadow that an odd coprime solution has
both bases odd. Neither is proved. The second is not a statement
that the divided `2`-chart can be omitted, and it does not produce
a point of `E_nodal`. -/

def odd_Beal : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Odd p → Odd q → Odd r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    False

def odd_branch_chart : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Odd p → Odd q → Odd r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    ¬ 2 ∣ x ∧ ¬ 2 ∣ y

end Beal.Odd

#print axioms Beal.Odd.reused_nodal_union
#print axioms Beal.Odd.reused_lines_meet_at_origin
#print axioms Beal.Odd.reused_F2_points
#print axioms Beal.Odd.reused_D2_dense
#print axioms Beal.Odd.reused_generic_open_dense
#print axioms Beal.Odd.reused_twoChart_finiteType
