import Mathlib.Algebra.Ring.Rat
import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Frey.FreyModularity_13
import BealLevel26Foundations.Modularity.FreyModularity_13

namespace BealLevel26Foundations.Chain.X0_26_Q

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Chain.X0_26_Point
open BealLevel26Foundations.Frey.FreyCurve13
open BealLevel26Foundations.Frey.FreyModularity13
  (WeierstrassModularity)
open BealLevel26Foundations.Modularity.FreyModularity13
  (frey_conductor_26)

/-!
# v4.44.0 start real `X₀(26)(ℚ)` point type

Intended encoding:

`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`

an elliptic curve over `ℚ` with a cyclic subgroup of order
`26` (isogeny kernel in `E[26]`, Galois-stable — not
`E(ℚ)`-torsion of size 26).

Mathlib 4.12 has `EllipticCurve ℚ` (`WeierstrassCurve` plus
a unit discriminant) and affine `Point` groups.  It has
**no** `CyclicSubgroup E n`, **no** modular-curve scheme,
and **no** `X₀(26)(ℚ)`.

`CyclicSubgroup` in this file is an empty inductive: no
constructors.  `X0_26_Q_Point` is therefore uninhabited.
That is the type start, not a Mathlib rational point.

v4.46.0: real `X₀(26)(ℚ)` **does** have points `26a1`
(Δ `-17576`) and `26b1` (Δ `-1664`).  So
`Nonempty X0_26_Q_Point → False` is false, and
`X0_26_Q_Point_to_ExistsNoncuspidal` cannot give `False`.
The four-cusp lock is displayed labels, not the real curve.
The contradiction is level 2 (`S₂(Γ₀(2)) = 0`), not
`X₀(26)`.  See `Chain/Level2.lean`.

A `WeierstrassCurve Int` has `a₁…a₆`, not `.A`/`.B`/`.C`.
It is not `DisplayedX026CuspPoint` (label `∈ [1,2,13,26]`).
It is not `X0_26_Q_Point`.  Need Ribet plus a real
`X₀(26)(ℚ)` to turn `WeierstrassModularity` and the
conductor *label* 26 into a noncuspidal point.
Inhabiting `ExistsNoncuspidal_26` plus
`notExistsNoncuspidal_26_proved` would be `False` (`rfl`,
not Tate).

v4.45.0 records
`X0_26_Q_Point_to_ExistsNoncuspidal` as the Prop
`Nonempty X0_26_Q_Point → ExistsNoncuspidal_26`.
It stays uninhabited.  Empty-inductive elimination would
be a vacuous close and is not used: a real modular-curve
point is still not a `DisplayedX026CuspPoint`.

v4.57.0 Phase 5 honest scaffold until Taylor–Wiles /
BCDT: `X0_26_Q_real_points` is a `List String` reference
for the real curve (four cusps plus `26a1` / `26b1`).
It is not a Mathlib point type.  `X0_26_Q_Point` has no
`.label`; the four-cusp lock stays on
`DisplayedX026CuspPoint` (`fourCuspsForallCuspPoints_of_P_mem`,
**none**).  That lock is a label check, not Mazur.
`notExistsNoncuspidal_26_proved` (in Forall) is the same
label check via `hGeomForbid_typed_true`, not Mazur
`X₀(N)(ℚ)` classification.  So it does **not** prove
the real curve has only cusps.

`nonempty_X0_26_Q_Point_to_False` is
`Nonempty X0_26_Q_Point → False`.  Mathematically false
(real points exist).  Uninhabited here: empty-elim on
`CyclicSubgroup` would inhabit it and is not used.

Does **not** import Forall or Mazur BealTheorem (cycle).
Does **not** add an axiom.  No `False.elim`.
-/

/-- Missing Mathlib 4.12 type: cyclic subgroup of order `n`
on `E` (isogeny kernel in `E[n]`, not `E(ℚ)`-torsion).
No constructors.  Not a Mathlib `Subgroup`. -/
inductive CyclicSubgroup (_E : EllipticCurve ℚ) (_n : Nat) : Type

/-- Intended `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
Not a Mathlib modular-curve point.  Uninhabited: the second
component has no constructors.  Not
`DisplayedX026CuspPoint`. -/
def X0_26_Q_Point : Type :=
  Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26

/-- Missing: Weierstrass modularity + conductor label 26
produce a real `X0_26_Q_Point`.  Uninhabited.  Mathlib 4.12
has no Ribet theorem and no `X₀(26)(ℚ)`.  Not
`ExistsNoncuspidal_26` (wrong carrier). -/
def weierstrass_modularity_gives_X0_26_Q_Point : Prop :=
  ∀ (w : BealCounterexampleBases),
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) →
    frey_conductor_26 = 26 →
    Nonempty X0_26_Q_Point

/-- Uninhabited.  `Nonempty X0_26_Q_Point → ExistsNoncuspidal_26`.
`CyclicSubgroup` is an empty inductive (no Mathlib instance,
no modular-curve scheme).  Not inhabited by empty elimination:
`X0_26_Q_Point` is not a `DisplayedX026CuspPoint`
(label `∈ [1,2,13,26]`).  Need Mathlib `X₀(26)(ℚ)` plus Ribet.
Inhabiting this plus `notExistsNoncuspidal_26_proved` would
be `False` on the *displayed* cusp-label type, not on the
real curve (`26a1` / `26b1` exist).  Need level 2. -/
def X0_26_Q_Point_to_ExistsNoncuspidal : Prop :=
  Nonempty X0_26_Q_Point → ExistsNoncuspidal_26

/-- Honest reference for real `X₀(26)(ℚ)`.
Four displayed cusp names plus the two LMFDB / PARI
non-cuspidal points.  A `List String`, not a Mathlib
point type and not a proof. -/
def X0_26_Q_real_points : List String :=
  ["cusp_1", "cusp_2", "cusp_13", "cusp_26",
    "26a1 Δ -17576", "26b1 Δ -1664"]

theorem X0_26_Q_real_points_eq :
    X0_26_Q_real_points =
      ["cusp_1", "cusp_2", "cusp_13", "cusp_26",
        "26a1 Δ -17576", "26b1 Δ -1664"] :=
  rfl

theorem X0_26_Q_real_points_length :
    X0_26_Q_real_points.length = 6 :=
  rfl

theorem mem_26a1_real_points :
    "26a1 Δ -17576" ∈ X0_26_Q_real_points :=
  X0_26_Q_real_points_eq ▸
    (List.mem_cons_of_mem _ <|
      List.mem_cons_of_mem _ <|
        List.mem_cons_of_mem _ <|
          List.mem_cons_of_mem _ <|
            List.mem_cons_self _ _)

theorem mem_26b1_real_points :
    "26b1 Δ -1664" ∈ X0_26_Q_real_points :=
  X0_26_Q_real_points_eq ▸
    (List.mem_cons_of_mem _ <|
      List.mem_cons_of_mem _ <|
        List.mem_cons_of_mem _ <|
          List.mem_cons_of_mem _ <|
            List.mem_cons_of_mem _ <|
              List.mem_cons_self _ _)

/-- Displayed four-cusp lock.  Carrier is
`DisplayedX026CuspPoint` (has `.label`), **not**
`X0_26_Q_Point` (Σ-type, no `.label`).  Label
`∈ [1,2,13,26]`, not Mazur. -/
def fourCusps_displayed_of_P_mem : fourCuspsForallCuspPoints :=
  fourCuspsForallCuspPoints_of_P_mem

/-- Mathematically false: real `X₀(26)(ℚ)` has `26a1`
and `26b1`.  Uninhabited.  Empty-elim on the scaffold
would inhabit this and is not used. -/
def nonempty_X0_26_Q_Point_to_False : Prop :=
  Nonempty X0_26_Q_Point → False

#check EllipticCurve
#check CyclicSubgroup
#check X0_26_Q_Point
#check weierstrass_modularity_gives_X0_26_Q_Point
#check X0_26_Q_Point_to_ExistsNoncuspidal
#check X0_26_Q_real_points
#check fourCusps_displayed_of_P_mem
#check nonempty_X0_26_Q_Point_to_False
#check DisplayedX026CuspPoint
#check ExistsNoncuspidal_26
#check WeierstrassModularity
#check fourCuspsForallCuspPoints_of_P_mem
#print axioms X0_26_Q_real_points_eq
#print axioms X0_26_Q_real_points_length
#print axioms mem_26a1_real_points
#print axioms mem_26b1_real_points
#print axioms fourCusps_displayed_of_P_mem

end BealLevel26Foundations.Chain.X0_26_Q
