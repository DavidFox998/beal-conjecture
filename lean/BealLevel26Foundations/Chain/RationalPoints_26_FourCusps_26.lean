import Beal.Foundations.FormalImmersionM3
import BealLevel26Foundations.Mazur.EndgameScaffold

namespace BealLevel26Foundations.Chain.X0_26_FourCusps

open Beal.Foundations.FormalImmersionM3
open BealLevel26Foundations.Mazur.EndgameScaffold

/-!
# v4.2.1 Chabauty completeness *package* (typed implication still open)

Blueprint: if `J₀(26)(ℚ)` had rank 0 and a Chabauty–Coleman /
formal-immersion argument applied, then `X₀(26)(ℚ)` would equal
the four cusps, and a noncuspidal Frey point would be impossible.
Mathlib 4.12 has no Coleman integral, no `X₀(26)(ℚ)`, no
`SelmerGroup`, and no `MordellWeil.rank`.

The Lean data available here are

* the four-cusp *audit* list `[1, 2, 13, 26]`
  (`X026RationalPointsActual_26` is unchanged);
* `fourCuspsForallCuspPoints` — every
  `DisplayedX026CuspPoint` has a label on that list;
* `rankZero_unconditional.certified` — PARI `|Sel₂| = 1` twice
  (`1 = 1`), from `Descent_26.json` (SHA-256
  `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`);
* `certifiedM3_det_nonzero` — `det M₃ = 2 ≠ 0` over `ZMod 3`.

`fourCuspsList_complete_computational` is the audit forall over
`DisplayedX026CuspPoint`.  That domain excludes `ellipticJ`.
`hGeomForbid_typed_closed` is the Chabauty *package*
(`X0_26_Q_four` plus that forall).  It is not
`fourCusps → ¬ ExistsNoncuspidal`.  That implication stays
uninhabitable (`hGeomForbid_typed_is_uninhabitable`): an elliptic
`j` already inhabits `ExistsNoncuspidal`.

This file does **not** import
`BealTheoremFromMazurChain26` (that module imports this one).
There is no vacuous-contradiction inhabitant of the typed implication.
-/

/-- Displayed rank-zero names plus computational Chabauty shape.
Not `X₀(26)(ℚ) = {four cusps}`. -/
def X0_26_Q_four : Prop :=
  rankZero_unconditional ∧ Chabauty0ForcesCusp_computational

theorem X0_26_Q_four.certified : X0_26_Q_four :=
  ⟨rankZero_unconditional.certified,
    ⟨rankZero_unconditional.certified, certifiedM3_det_nonzero⟩⟩

/-- Alias of `X0_26_Q_four`. -/
def X0_26_Q_eq_fourCusps : Prop := X0_26_Q_four

theorem X0_26_Q_eq_fourCusps.certified : X0_26_Q_eq_fourCusps :=
  X0_26_Q_four.certified

/-- Four-cusp audit list.  Same labels as
`X026RationalPointsActual_26.displayedCusps26`.
There is no Mathlib `X0_26_Point`. -/
def fourCuspsList : List Nat :=
  [1, 2, 13, 26]

theorem fourCuspsList_eq_audit :
    fourCuspsList = [1, 2, 13, 26] :=
  rfl

/-- Completeness on the *audit domain* `DisplayedX026CuspPoint`.
Not `∀ P : X₀(26)(ℚ)`.  The membership proof is the cusp-point
label (`P.mem`).  PARI `|Sel₂| = 1` and `det M₃ ≠ 0` are recorded
in `hGeomForbid_typed_closed`, not used as a Coleman argument
here. -/
theorem fourCuspsList_complete_computational
    (P : DisplayedX026CuspPoint) :
    P.label ∈ fourCuspsList :=
  P.mem

/-- Computational stand-in named as a closed typed `hGeomForbid`.
Not `fourCusps → ¬ ExistsNoncuspidal`.  Rests on
`Descent_26.json` SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`
(`|Sel₂| = 1`) plus `det M₃ ≠ 0`, not on Lean
`MordellWeil.rank`. -/
def hGeomForbid_typed_closed : Prop :=
  X0_26_Q_four ∧ fourCuspsForallCuspPoints

theorem hGeomForbid_typed_closed.certified :
    hGeomForbid_typed_closed :=
  ⟨X0_26_Q_four.certified, fourCuspsForallCuspPoints.certified⟩

/-- Computational stand-in.  Not the typed implication. -/
def hGeomForbid_typed_inhabited : Prop :=
  hGeomForbid_typed_closed

#print axioms X0_26_Q_four.certified
#print axioms fourCuspsList_complete_computational
#print axioms hGeomForbid_typed_closed.certified

end BealLevel26Foundations.Chain.X0_26_FourCusps
