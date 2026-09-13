import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
import BealLevel26Foundations.Chain.FreyCurve_13_26
import BealLevel26Foundations.Chain.RationalPoints_26_FourCusps_26

namespace BealLevel26Foundations.Final

open BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
open BealLevel26Foundations.Chain.Frey13
open BealLevel26Foundations.Chain.X0_26_FourCusps hiding
  fourCuspsList fourCuspsList_complete_computational fourCuspsList_eq_audit

/-!
# v4.7.0 Iter package + v4.4.0 typed true close

`BealTheorem_Exponent13_Typed` is

`(fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26) ∧ FreyLevel26`.

`hGeomForbid_typed_true` inhabits the first conjunct from
`P.mem` versus `P.label ∉ fourCuspsList`, without `False.elim`.
That is a typed close on the displayed cusp-label type
`DisplayedX026CuspPoint` with `fourCuspsList = [1, 2, 13, 26]`.
It is not the old elliptic-`j` implication
(`True → ¬True`, still `hGeomForbid_typed_is_uninhabitable`)
and not a Mathlib `X₀(26)(ℚ)` theorem.  v4.9.0 sets
`Chain.X0_26_Point.X0_26_Q` to
`{P | P.label ∈ fourCuspsList}` with no `True`.
`frey_modular_13` / `ribet_level_lowering_26` remain the
only computational-assumption axioms.

`BealExponent13_Iter_Package` is

`X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints`.

`BealExponent13_Final_Package` is a deprecated alias of that
name.  We do not use the word final until
`∀ A B C : ℕ` is in the kernel without `False.elim`.

That records PARI `|Sel₂| = 1` twice (`1 = 1`), `det M₃ = 2`,
the displayed Frey level `2 * 13 = 26`, and the cusp-point
forall over this file's `DisplayedX026CuspPoint`.  It is not
`∀ A B C, ¬ A^13 + B^13 = C^13`.

Blueprint: rank 0 plus formal immersion would force
`X₀(26)(ℚ)` onto the four cusps, and a Frey curve from
`A^13+B^13=C^13` would be a noncuspidal point.  Mathlib 4.12
has no Ribet, no `SelmerGroup`, no `MordellWeil.rank`, and no
`X0_26_Point`.  A `∀` proof by vacuous contradiction would put
`False` in the kernel.  The old typed
`fourCusps → ¬ ExistsNoncuspidal` stays uninhabitable
(`True → ¬True`).

This file imports `BealTheoremFromMazurChain26`.  That module
does **not** import this folder (cycle inverted in v4.4.0).
`X026RationalPointsActual_26` is unchanged.  Descent SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
-/

/-- Typed close plus displayed Frey level.  Not a Fermat / Beal
forall. -/
def BealTheorem_Exponent13_Typed : Prop :=
  (fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26) ∧
    FreyLevel26

theorem BealTheorem_Exponent13_Typed.certified :
    BealTheorem_Exponent13_Typed :=
  ⟨hGeomForbid_typed_true, freyLevel26_computational⟩

/-- Iter package: PARI `|Sel₂|=1` twice, `det M₃=2`, displayed
Frey level, and the cusp-label forall.  Not a Fermat / Beal
forall. -/
def BealExponent13_Iter_Package : Prop :=
  X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints

theorem BealExponent13_Iter_Package.certified :
    BealExponent13_Iter_Package :=
  ⟨X0_26_Q_four.certified, freyLevel26_computational,
    fourCuspsForallCuspPoints.certified⟩

/-- Deprecated alias of `BealExponent13_Iter_Package`. -/
def BealExponent13_Final_Package : Prop :=
  BealExponent13_Iter_Package

theorem BealExponent13_Final_Package.certified :
    BealExponent13_Final_Package :=
  BealExponent13_Iter_Package.certified

#print axioms BealTheorem_Exponent13_Typed.certified
#print axioms BealExponent13_Iter_Package.certified
#print axioms BealExponent13_Final_Package.certified

end BealLevel26Foundations.Final
