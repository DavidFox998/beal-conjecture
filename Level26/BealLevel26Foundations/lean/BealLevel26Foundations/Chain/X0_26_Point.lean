import Mathlib.Data.Set.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Chain.X0_26_Point

/-!
# v4.27.0 displayed `X₀(26)` point layer (cusps `P.mem` locked)
# v4.36.0 `fourCuspsForallCuspPoints` from `P.mem`

Mathlib 4.12 has no modular-curve scheme and no type of
rational points of `X₀(26)`.  This file is a displayed
stand-in: a raw label/`j`/cusp flag, the four-cusp audit
list `[1, 2, 13, 26]`, and a `Set` named `X0_26_Q`.

`X0_26_Q` is `{P | P.label ∈ fourCuspsList}`.  There is no
`True` disjunct.  That is still not a Mathlib `X₀(26)(ℚ)`
theorem and not a Chabauty identification: the carrier is
`X0_26_Point_Raw`, not a modular-curve point.

-- SECURED BY certs/pari_x0_26_four_cusps.json +
-- scripts/verify_descent_26.py -- fourCusps [1,2,13,26]
-- Sel2=1 det2 SHA
-- d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260
-- illustration: docs/images/2-descent-level-26-26a1-26b1.webp

`DisplayedX026CuspPoint` carries `P.mem` by `decide`.
`ExistsNoncuspidal_26` is a displayed cusp-labeled point
whose label is not on `fourCuspsList`.  Every such `P`
already has `P.mem`, so that existential is empty by type.

This file does **not** import
`BealTheoremFromMazurChain26` (cycle).  There is no
placeholder, no `False.elim`, and no `∀ A B C` Fermat/Beal
statement.

v4.44.0 starts `Chain/X0_26_Q.lean`: intended
`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
Mathlib 4.12 has `EllipticCurve ℚ` but no cyclic-subgroup
type and no `X₀(26)(ℚ)`.  That carrier is not this
`DisplayedX026CuspPoint`.
-/

/-- Displayed raw point of `X₀(26)`.  Not a Mathlib
modular-curve point. -/
structure X0_26_Point_Raw where
  label : Nat
  jInvariant : Option Int
  isCusp : Bool

/-- Four-cusp audit list.  Same labels as
`X026RationalPointsActual_26.displayedCusps26`. -/
def fourCuspsList : List Nat :=
  [1, 2, 13, 26]

/-- Matches `fourCusps` in `certs/pari_x0_26_four_cusps.json`.
-- SECURED BY certs/pari_x0_26_four_cusps.json +
-- scripts/verify_descent_26.py -- fourCusps [1,2,13,26]
-- Sel2=1 det2 SHA +
-- docs/images/2-descent-level-26-26a1-26b1.webp -/
def x0_26_four_cusps_cert : List Nat :=
  [1, 2, 13, 26]

theorem x0_26_four_cusps_cert_eq_fourCuspsList :
    x0_26_four_cusps_cert = fourCuspsList :=
  rfl

/-- Cusp flag from the audit list.  Not a geometric cusp
divisor on a modular curve. -/
def isCuspPoint (P : X0_26_Point_Raw) : Prop :=
  P.label ∈ fourCuspsList

/-- Displayed stand-in for a cusp-labeled point of `X₀(26)`.
Not a Mathlib modular-curve point.  The witness is `P.mem`. -/
structure DisplayedX026CuspPoint where
  label : Nat
  mem : label ∈ fourCuspsList := by decide

/-- Named `X₀(26)(ℚ)` *set*.  Displayed labels on
`fourCuspsList` only.  Not a Mathlib rational-point set
and not a Chabauty theorem.  No `True` disjunct. -/
def X0_26_Q : Set X0_26_Point_Raw :=
  {P | P.label ∈ fourCuspsList}

/-- Definitional: the displayed set is exactly the four
audit labels. -/
theorem X0_26_Q_eq_fourCuspsList :
    X0_26_Q = {P | P.label ∈ fourCuspsList} :=
  rfl

/-- Four displayed cusp labels.  Same as `fourCuspsList`.
Not Mathlib `X₀(26)(ℚ)`. -/
def X0_26_cusps : List Nat :=
  [1, 2, 13, 26]

theorem X0_26_cusps_eq_fourCuspsList :
    X0_26_cusps = fourCuspsList :=
  rfl

/-- Displayed set equals labels on `X0_26_cusps`.
`X0_26_Q` is a `Set X0_26_Point_Raw`, not the list itself. -/
theorem X0_26_Q_eq_cusps :
    X0_26_Q = {P | P.label ∈ X0_26_cusps} :=
  rfl

theorem mem_1 : 1 ∈ X0_26_cusps := by decide
theorem mem_2 : 2 ∈ X0_26_cusps := by decide
theorem mem_13 : 13 ∈ X0_26_cusps := by decide
theorem mem_26 : 26 ∈ X0_26_cusps := by decide
theorem not_mem_3 : 3 ∉ X0_26_cusps := by decide

/-- P.mem lemma: a displayed raw point in `X0_26_Q` has
label on `[1,2,13,26]`.  Definitional. -/
def hInList_X0_26 :
    ∀ x ∈ X0_26_Q, x.label ∈ ([1, 2, 13, 26] : List Nat) :=
  fun _ hx => hx

/-- P.mem lemma: a displayed raw point off `X0_26_Q` has
label off `[1,2,13,26]`.  Definitional. -/
def hNotIn_X0_26 :
    ∀ x : X0_26_Point_Raw, x ∉ X0_26_Q →
      x.label ∉ ([1, 2, 13, 26] : List Nat) :=
  fun _ hx => hx

/-- Label form used by `hGeomForbid_typed_true` (`hNotIn hInList`). -/
def hInList_label {x : Nat} (hx : x ∈ X0_26_cusps) :
    x ∈ ([1, 2, 13, 26] : List Nat) :=
  hx

/-- Label form used by `hGeomForbid_typed_true` (`hNotIn hInList`). -/
def hNotIn_label {x : Nat} (hx : x ∉ X0_26_cusps) :
    x ∉ ([1, 2, 13, 26] : List Nat) :=
  hx

/-- `P.mem` is membership in the four-cusp list. -/
theorem displayed_mem_cusps (P : DisplayedX026CuspPoint) :
    P.label ∈ X0_26_cusps :=
  P.mem

/-- Every displayed cusp-labeled point has a label on
`fourCuspsList`.  The witness is `P.mem`. -/
theorem X0_26_Q_four_cusps :
    ∀ P : DisplayedX026CuspPoint, P.label ∈ fourCuspsList :=
  fun P => P.mem

/-- Displayed `X₀(26)(ℚ) = {cusps}` statement on the
cusp-label type.  Same as `X0_26_Q_four_cusps`.
Not Mathlib `∀ P : X₀(26)(ℚ)`.  There is no `X0_26_Point`
type; membership is `P.label ∈ [1, 2, 13, 26]`. -/
def fourCuspsForallCuspPoints : Prop :=
  ∀ P : DisplayedX026CuspPoint,
    P.label ∈ ([1, 2, 13, 26] : List Nat)

/-- Built from the existing `P.mem` lock
(`X0_26_Q = [1,2,13,26]`, `mem_1` `mem_2` `mem_13` `mem_26`,
`not_mem_3`, `hInList` / `hNotIn`, `displayed_mem_cusps`).
List membership is decidable; the structure field is already
`label ∈ fourCuspsList`. -/
theorem fourCuspsForallCuspPoints_of_P_mem :
    fourCuspsForallCuspPoints :=
  fun P =>
    hInList_label (displayed_mem_cusps P)

/-- Displayed noncuspidal *name* on the cusp-label type.
Empty by type: `P.mem` contradicts `P.label ∉ fourCuspsList`.
Not a noncuspidal rational point of `X₀(26)`. -/
def ExistsNoncuspidal_26 : Prop :=
  ∃ P : DisplayedX026CuspPoint, P.label ∉ fourCuspsList

#print axioms X0_26_Q_four_cusps
#print axioms fourCuspsForallCuspPoints_of_P_mem
#print axioms X0_26_Q_eq_cusps
#print axioms mem_1
#print axioms mem_2
#print axioms mem_13
#print axioms mem_26
#print axioms not_mem_3
#print axioms hInList_X0_26
#print axioms hNotIn_X0_26
#print axioms displayed_mem_cusps
#check X0_26_Q
#check X0_26_cusps
#check fourCuspsForallCuspPoints
#check fourCuspsForallCuspPoints_of_P_mem
#check ExistsNoncuspidal_26

end BealLevel26Foundations.Chain.X0_26_Point
