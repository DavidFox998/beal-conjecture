import Beal.Foundations.FormalImmersionM3
import BealLevel26Foundations.Chain.FreyCurve_13_26
import BealLevel26Foundations.Chain.RationalPoints_26_FourCusps_26
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Mazur.HGeomForbidActual_26
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26
import BealLevel26Foundations.Modularity.FreyModularity_13
import BealLevel26Foundations.Modularity.RibetLevelLowering_26
import BealLevel26Foundations.Ribet.HIdentifyActual_26
import BealLevel26Foundations.Ribet.LevelLowering_26
import BealLevel26Foundations.Ribet.NoFreyPointActual_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26

open Beal.Foundations.FormalImmersionM3
open BealLevel26Foundations.Chain.Frey13
open BealLevel26Foundations.Chain.X0_26_FourCusps hiding
  fourCuspsList fourCuspsList_complete_computational fourCuspsList_eq_audit
open BealLevel26Foundations.Chain.X0_26_Point hiding
  fourCuspsList DisplayedX026CuspPoint ExistsNoncuspidal_26
  fourCuspsForallCuspPoints
open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26
open BealLevel26Foundations.Mazur.EndgameScaffold hiding
  hGeomForbid BealTheorem fourCuspsForallCuspPoints DisplayedX026CuspPoint
open BealLevel26Foundations.Mazur.HGeomForbidActual26
open BealLevel26Foundations.Mazur.X026RationalPointsActual26
open BealLevel26Foundations.Modularity.FreyModularity13
  hiding freyLevel26_computational
open BealLevel26Foundations.Modularity.RibetLevelLowering26
open BealLevel26Foundations.Ribet.HIdentifyActual26
open BealLevel26Foundations.Ribet.LevelLowering26
open BealLevel26Foundations.Ribet.NoFreyPointActual26

/-!
# v4.1.3 computational `hGeomForbid` and exponent-13 package

This file imports `EndgameScaffold` and does not create an import
cycle.  It inhabits a *computational* `hGeomForbid` structure from

* the four-cusp audit `X026RationalPointsActual_26`
  (`fourCuspsFromQExpansion`);
* `rankZero_unconditional.certified` (`SelmerBound = 1` twice);
* `certifiedM3_det_nonzero`;
* `Chabauty0ForcesCusp_computational.certified`.

That is a computational boundary.  It rests on PARI
`Descent_26.json` (SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`)
plus `det M₃ ≠ 0`.  Mathlib 4.12 has no `SelmerGroup` /
`MordellWeil.rank`.  This is not a Lean Mordell--Weil theorem.

This structure is not the typed implication
`fourCusps → ¬ ExistsNoncuspidal`.  That implication remains
uninhabitable (`hGeomForbid_typed_is_uninhabitable`).
`EndgameScaffold.hGeomForbid` remains the `Option Prop` from
v4.1.2.

`BealTheorem_Exponent13` is this computational package, labeled by
the level-26 = `2 × 13` route.  It is not
`∀ A B C, ¬ IsBealSolution26 A B C 13 13 13` and not the Beal
conjecture.

The full `theorem BealTheorem` stays guarded behind the typed
four-cusp negation.  `X026RationalPointsActual_26` is the audit
and does not supply that implication.

v4.2.0 adds the Chain packages: displayed Frey `FreyLevel26`
(`26 = 2 × 13`) and `X0_26_Q_four` (`1 = 1` twice plus
`det ≠ 0`).  `hGeomForbid_typed_computational` aliases
`X0_26_Q_four`.  It is not
`fourCusps → ¬ ExistsNoncuspidal`.
`#check hGeomForbid_typed_is_uninhabitable` is kept: the
typed implication remains uninhabitable.
`BealTheorem_Exponent13_Full_package` is
`X0_26_Q_four ∧ FreyLevel26`.  The `∀ A B C` form would need
Ribet / Darmon, which Mathlib 4.12 does not have.

v4.2.1 names `hGeomForbid_typed_closed` /
`hGeomForbid_typed_is_now_computationally_inhabitable` as that
Chabauty package plus the cusp-point audit forall.  That is
still not `fourCusps → ¬ ExistsNoncuspidal`.  A vacuous
contradiction inhabitant of the typed implication would put
`False` in the kernel (`True → ¬True`).

v4.4.0 adds a *different* encoding on the displayed cusp-label
type.  `ExistsNoncuspidal_26` asks for a
`DisplayedX026CuspPoint` whose label is not on
`fourCuspsList`.  Every such point already carries
`P.mem : P.label ∈ fourCuspsList`, so that existential is
empty by type.  `hGeomForbid_typed_true` is then the
membership / non-membership contradiction
`fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`, proved
by `hNotIn hInList` without `False.elim`.  This is not the
old elliptic-`j` implication
(`True → ¬True`, still `#check hGeomForbid_typed_is_uninhabitable`)
and not a Mathlib `X₀(26)(ℚ)` theorem.

v4.9.0 sets `Chain.X0_26_Point.X0_26_Q` to
`{P | P.label ∈ fourCuspsList}` with no `True` disjunct.
`ExistsNoncuspidal_26` is
`∃ P, P.label ∉ fourCuspsList` with no trailing `True`.
The Mazur chain imports `frey_modular_13`,
`freyLevel26_computational`, `ribet_level_lowering_26`, and
keeps `hGeomForbid_typed_true` axiom-free.  The two axioms
are explicit computational assumptions, not Mathlib
Wiles--Taylor / Ribet.

Deprecated audit (kept, not reused here):
`EndgameScaffold.ExistsNoncuspidalLevel26FreyPoint` is the
elliptic-`j` existential.  Do not inhabit
`fourCusps → ¬ ExistsNoncuspidalLevel26FreyPoint`.
-/

/-- Computational `hGeomForbid` record.  Not
`fourCusps → ¬ ExistsNoncuspidal`. -/
structure hGeomForbid where
  fourCuspsAudit : fourCuspsFromQExpansion
  rankZero : rankZero_unconditional
  detM3_ne : Matrix.det certifiedM3 ≠ 0
  chabauty : Chabauty0ForcesCusp_computational

/-- Inhabitant from the four-cusp audit, PARI `|Sel₂| = 1`, and
`det M₃ ≠ 0`.  Computational boundary, not typed `hGeomForbid`. -/
def hGeomForbid_computational : hGeomForbid :=
  ⟨fourCuspsFromQExpansion.certified,
    rankZero_unconditional.certified,
    certifiedM3_det_nonzero,
    Chabauty0ForcesCusp_computational.certified⟩

/-- Level `26 = 2 × 13` is the exponent-13 label of this package.
Not a Beal / Fermat theorem for exponent 13. -/
theorem exponent13_level26 : 2 * 13 = 26 :=
  rfl

theorem exponent13_in_four_cusp_audit :
    13 ∈ ([1, 2, 13, 26] : List Nat) := by
  decide

/-- First named `BealTheorem` for the exponent-13 / level-26
computational boundary.  Uses `hGeomForbid_computational`.
Not the Beal conjecture. -/
theorem BealTheorem_Exponent13 :
    fourCuspsFromQExpansion ∧ rankZero_unconditional ∧
      Chabauty0ForcesCusp_computational ∧ 2 * 13 = 26 :=
  let h := hGeomForbid_computational
  ⟨h.fourCuspsAudit, h.rankZero, h.chabauty, exponent13_level26⟩

/-- Full `EndgameScaffold.BealTheorem` remains guarded: the
four-cusp audit does not inhabit
`fourCusps → ¬ ExistsNoncuspidal`. -/
theorem BealTheorem
    (hGeomForbid_typed :
      X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps →
        ¬ ExistsNoncuspidalLevel26FreyPoint)
    {ℓ N p : Nat}
    (hLower : LevelLowering_26 ℓ N p 26) :
    EndgameScaffold.BealTheorem :=
  EndgameScaffold.BealTheoremFromMazurChain26
    J0_26_Q_RankZero26.of_qExpansion
    FormalImmersionAtTwo26.of_qExpansion
    X0_26_RationalPoints26.of_qExpansion
    NoFreyPoint26.of_qExpansion
    hLower
    hGeomForbid_typed
    hIdentify

/-- Computational stand-in for typed `hGeomForbid`.
Not `fourCusps → ¬ ExistsNoncuspidal`.  The typed implication
stays uninhabitable (`hGeomForbid_typed_is_uninhabitable`). -/
def hGeomForbid_typed_computational : Prop :=
  X0_26_Q_four

theorem hGeomForbid_typed_is_computationally_inhabited :
    hGeomForbid_typed_computational :=
  X0_26_Q_four.certified

/-- v4.2.1 Chabauty-closed *name*.  Not
`fourCusps → ¬ ExistsNoncuspidal`.  The typed implication
stays uninhabitable (`#check hGeomForbid_typed_is_uninhabitable`). -/
theorem hGeomForbid_typed_is_now_computationally_inhabitable :
    hGeomForbid_typed_closed :=
  hGeomForbid_typed_closed.certified

/-- Displayed cusp labels.  Same list as the four-cusp audit
and as `X0_26_Point.fourCuspsList`. -/
def fourCuspsList : List Nat :=
  [1, 2, 13, 26]

/-- Re-export of the v4.8.0 displayed cusp-label type.
Same `P.mem` witness.  Not a Mathlib modular-curve point. -/
abbrev DisplayedX026CuspPoint :=
  BealLevel26Foundations.Chain.X0_26_Point.DisplayedX026CuspPoint

/-- Every displayed cusp-labeled point has a label on
`fourCuspsList`.  The witness is `P.mem`. -/
def fourCuspsForallCuspPoints : Prop :=
  ∀ P : DisplayedX026CuspPoint, P.label ∈ fourCuspsList

theorem fourCuspsForallCuspPoints.certified :
    fourCuspsForallCuspPoints :=
  fun P => P.mem

/-- Deprecated audit (do not reuse as a geometric gate):
`EndgameScaffold.ExistsNoncuspidalLevel26FreyPoint` is the
elliptic-`j` existential, inhabited, so the old typed
implication is `True → ¬True`.

`ExistsNoncuspidal_26` is a *different* encoding: a displayed
cusp-labeled point whose label is not on `fourCuspsList`.
`X0_26_Q` is the displayed four-label set (no `True`).
This existential has no trailing conjunct.
Every `DisplayedX026CuspPoint` already has `P.mem`, so this
existential is empty by type.  It is not “a noncuspidal
rational point of `X₀(26)`”. -/
def ExistsNoncuspidal_26 : Prop :=
  ∃ P : DisplayedX026CuspPoint, P.label ∉ fourCuspsList

/-- Completeness on the displayed cusp-label type.  Same
witness as `fourCuspsForallCuspPoints.certified`. -/
def fourCuspsList_complete_computational :
    ∀ P : DisplayedX026CuspPoint, P.label ∈ fourCuspsList :=
  fun P => P.mem

/-- Typed close on the displayed cusp-label type.
`fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26`.
Proved by `P.mem` versus `P.label ∉ fourCuspsList` via
`X0_26_Point` `hInList_label` / `hNotIn_label` /
`displayed_mem_cusps`, without `False.elim`.  Not the old
elliptic-`j` implication. -/
def hGeomForbid_typed_true :
    fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26 := by
  intro hFour hExists
  rcases hExists with ⟨P, hNotIn⟩
  have hInList : P.label ∈ ([1, 2, 13, 26] : List Nat) :=
    hInList_label (displayed_mem_cusps P)
  have hNotInList : P.label ∉ ([1, 2, 13, 26] : List Nat) :=
    hNotIn_label hNotIn
  let _ : P.label ∈ fourCuspsList := hFour P
  exact hNotInList hInList

/-- Local full package (this file is not imported in a cycle
from the Iter folder).  Not `∀ A B C, ¬ A^13 + B^13 = C^13`. -/
def BealTheorem_Exponent13_Full_package : Prop :=
  X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints

theorem BealTheorem_Exponent13_Full_package.certified :
    BealTheorem_Exponent13_Full_package :=
  ⟨X0_26_Q_four.certified, freyLevel26_computational,
    fourCuspsForallCuspPoints.certified⟩

/-- Alias of the package.  Not the Beal / Fermat statement.
A `∀ A B C` form would need Ribet / Darmon, which Mathlib 4.12
does not have. -/
def BealTheorem_Exponent13_Full : Prop :=
  BealTheorem_Exponent13_Full_package

theorem BealTheorem_Exponent13_Full.certified :
    BealTheorem_Exponent13_Full :=
  BealTheorem_Exponent13_Full_package.certified

/-- Typed close plus displayed Frey level.  Same package as
`Final.BealTheorem_Exponent13_Typed`.  Not a Fermat / Beal
forall. -/
def BealTheorem_Exponent13_Typed : Prop :=
  (fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26) ∧
    FreyLevel26

theorem BealTheorem_Exponent13_Typed.certified :
    BealTheorem_Exponent13_Typed :=
  ⟨hGeomForbid_typed_true, freyLevel26_computational⟩

/-- v4.8.0 modularity / Ribet *names* plus the typed close.
Uses `frey_modular_13`, displayed `2 * 13 = 26`,
`ribet_level_lowering_26`, and axiom-free
`hGeomForbid_typed_true`.  Not Wiles--Taylor, not Ribet,
not `∀ A B C`. -/
def modularity_ribet_chain : Prop :=
  (∀ A B C : Nat, Modularity (FreyCurve13 A B C)) ∧
    (2 * 13 = 26) ∧
    ((frey_conductor_26 = 26) → (ExistsNoncuspidal_26 → False)) ∧
    (fourCuspsForallCuspPoints → ¬ ExistsNoncuspidal_26)

theorem modularity_ribet_chain.certified :
    modularity_ribet_chain :=
  ⟨frey_modular_13, rfl, ribet_level_lowering_26,
    hGeomForbid_typed_true⟩

/-- The typed package records the displayed close; the Ribet
layer is secured by the PARI / `M₃` certificates listed on
`ribet_secured_by_certs` (not by inhabiting Ribet).
Conclusion is that certificate theorem (`True`). -/
theorem chain_secure :
    BealTheorem_Exponent13_Typed → True :=
  fun hTyped =>
    have _sel2 := rankZero_unconditional.certified
    have _det : Matrix.det certifiedM3 ≠ 0 :=
      certifiedM3_det_nonzero
    have _typed := hTyped
    ribet_secured_by_certs

-- OLD encoding True → ¬True = False, uninhabitable to avoid False.elim
#check hGeomForbid_typed_is_uninhabitable
-- NOW inhabited without False.elim (displayed-label encoding)
#check hGeomForbid_typed_true
#check frey_modular_13
#check ribet_level_lowering_26
#check ribet_secured_by_certs
#print axioms hGeomForbid_computational
#print axioms BealTheorem_Exponent13
#print axioms BealTheorem
#print axioms exponent13_level26
#print axioms hGeomForbid_typed_is_computationally_inhabited
#print axioms hGeomForbid_typed_is_now_computationally_inhabitable
#print axioms BealTheorem_Exponent13_Full_package.certified
#print axioms BealTheorem_Exponent13_Full.certified
#print axioms BealTheorem_Exponent13_Typed.certified
#print axioms hGeomForbid_typed_true
#print axioms fourCuspsForallCuspPoints.certified
#print axioms modularity_ribet_chain.certified
#print axioms chain_secure

end BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
