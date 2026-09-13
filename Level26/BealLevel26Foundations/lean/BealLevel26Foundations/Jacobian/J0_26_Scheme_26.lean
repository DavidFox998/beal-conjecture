import BealLevel26Foundations.Mazur.Genus_26_Real

namespace BealLevel26Foundations.Jacobian.J0_26_Scheme26

open BealLevel26Foundations.Mazur.Genus26Real

/-!
# v4.0.12 Jacobian-as-scheme *boundary*

The geometric object is the Jacobian abelian variety of the modular
curve `X₀(26)` over `ℚ`, of dimension equal to the genus.  Mathlib
4.12 has no `AlgebraicGeometry.Jacobian`, no modular-curve scheme,
and no Mordell--Weil group of `J₀(26)(ℚ)`.  This file therefore
does not construct that abelian variety and does not identify it
with the finite product `26a × 26b`.

`J0_26_Scheme` is a premise-bearing boundary in the style of
`RibetTheoremBoundary26`.  Displayed dimension `2` is the already
checked arithmetic genus (`genus_X0_26_arithmetic_eq_2`).  Good
reduction at 2 and Mordell--Weil rank zero are *supplied* fields:
this module does not inhabit them as `True` and does not add
placeholders.

Blueprint: Mumford, *Abelian Varieties*; Rohrlich on the cuspidal
divisor class group.  See
`BealLevel26Foundations/Blueprint/README.md`.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
This file does not add `theorem BealTheorem`.
-/

/-- Named Jacobian-as-scheme boundary.  Not a Mathlib Jacobian. -/
structure J0_26_Scheme where
  isJacobianOfX0_26 : Prop
  isJacobianOfX0_26_witness : isJacobianOfX0_26
  displayedDimension : Nat
  displayedDimension_eq_two : displayedDimension = 2
  goodReductionAtTwo : Prop
  goodReductionAtTwo_witness : goodReductionAtTwo
  mordellWeilRankZero : Prop
  mordellWeilRankZero_witness : mordellWeilRankZero

/-- Stable name for `#check`.  This is a type of *supplied* scheme
data, not an inhabited Jacobian. -/
def J0_26_Scheme_26 : Type :=
  J0_26_Scheme

theorem J0_26_Scheme_26.displayedDimension_of
    (J : J0_26_Scheme_26) :
    J.displayedDimension = 2 :=
  J.displayedDimension_eq_two

theorem displayedJacobianDimension_matches_genus :
    cuspCount26 = 4 ∧ genusArithmetic26 = 2 :=
  ⟨cuspCount26_eq_four, genus_X0_26_arithmetic_eq_2⟩

#check J0_26_Scheme_26
#print axioms J0_26_Scheme_26.displayedDimension_of
#print axioms displayedJacobianDimension_matches_genus

end BealLevel26Foundations.Jacobian.J0_26_Scheme26
