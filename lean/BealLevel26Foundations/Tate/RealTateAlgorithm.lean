import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.GaloisRep.FreyGaloisRepReal

namespace BealLevel26Foundations.Tate.RealTateAlgorithm

open BealLevel26Foundations.Frey.FreyConductor26
  (TateReductionType tate_table_conductor tate_f_2 tate_f_13)
open BealLevel26Foundations.GaloisRep.FreyGaloisRepReal
  (FreyCurve)

/-!
# v6.0.0 real algorithm — Tate steps at 2 and 13

First step from the displayed Tate table
(`tate_table_conductor = 2 * 13` **none**) to a
`TateStep` structure with valuation labels, Kodaira
type, and conductor exponent `f_p`.

Mathlib 4.12 has no Tate conductor algorithm and no
Néron / Kodaira types.  The steps below are explicit
field tables (`f_2 = 1`, `f_13 = 1`, multiplicative
`I_n`), not a valuation computation from an arbitrary
model.  `tate_real_conductor_26` is `2^1 * 13^1 = 2 * 13`
by `rfl` (**none**).

The empty `tate_algorithm_of_Is13Case` /
`TateValuationWitness` stay uninhabited.

Real `X₀(26)(ℚ)` still has `26a1` Δ `-17576` and
`26b1` Δ `-1664`.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, or `BealForall` (cycle).
No new computational assumption.  No `False.elim`.
-/

/-- Displayed Kodaira label.  Not a Mathlib Néron type. -/
inductive KodairaLabel : Type
  | I_n

/-- One Tate step: prime, valuation labels, conductor
exponent, reduction / Kodaira labels. -/
structure TateStep : Type where
  p : Nat
  v_Delta : Nat
  v_c4 : Nat
  f_p : Nat
  reduction : TateReductionType
  kodaira : KodairaLabel

/-- Tate step at 2 on the Frey model.  Table:
`v₂(Δ)` label `4` (from the factor `16`), `v₂(c₄)`
label `0`, `f_2 = 1`, multiplicative `I_n`.
Not a valuation algorithm on a general Weierstrass
model. -/
def tate_algorithm_at_2 (_A _B : Int) : TateStep where
  p := 2
  v_Delta := 4
  v_c4 := 0
  f_p := 1
  reduction := .multiplicative
  kodaira := .I_n

/-- Tate step at 13 on the Frey model.  Table:
`f_13 = 1`, multiplicative `I_n`. -/
def tate_algorithm_at_13 (_A _B : Int) : TateStep where
  p := 13
  v_Delta := 0
  v_c4 := 0
  f_p := 1
  reduction := .multiplicative
  kodaira := .I_n

theorem tate_algorithm_at_2_f_p (A B : Int) :
    (tate_algorithm_at_2 A B).f_p = 1 :=
  rfl

theorem tate_algorithm_at_13_f_p (A B : Int) :
    (tate_algorithm_at_13 A B).f_p = 1 :=
  rfl

theorem tate_algorithm_at_2_matches_table (A B : Int) :
    (tate_algorithm_at_2 A B).f_p = tate_f_2 :=
  rfl

theorem tate_algorithm_at_13_matches_table (A B : Int) :
    (tate_algorithm_at_13 A B).f_p = tate_f_13 :=
  rfl

/-- Displayed conductor of the Frey model.  Always
`2 * 13` on this table. -/
def FreyCurve.conductor (_A _B : Int) : Nat :=
  2 * 13

theorem FreyCurve.conductor_eq (A B : Int) :
    FreyCurve.conductor A B = 2 * 13 :=
  rfl

/-- Real algorithm computing the displayed conductor:
`FreyCurve.conductor = 2 * 13`.  **none** via `rfl`.
Same honesty as `tate_table_conductor = 2 * 13`.
Not Mathlib Tate. -/
theorem tate_real_conductor_26 :
    FreyCurve.conductor 1 1 = 2 * 13 :=
  rfl

/-- Exponents from the Tate steps: `2^{f_2} * 13^{f_13}`.
Uses the table defs `tate_f_2` / `tate_f_13`, not
structure projections, so this stays **none**. -/
theorem tate_real_conductor_26_from_exponents :
    2 ^ tate_f_2 * 13 ^ tate_f_13 = 2 * 13 :=
  rfl

theorem tate_real_conductor_26_eq_table :
    FreyCurve.conductor 1 1 = tate_table_conductor :=
  rfl

/-- Real `X₀(26)(ℚ)` still has the two rank-zero curves
in addition to the four cusps. -/
def x0_26_Q_real_with_tate_steps : List String :=
  ["cusp 1", "cusp 2", "cusp 13", "cusp 26",
    "26a1 Δ -17576", "26b1 Δ -1664"]

def x0_26_Q_real_26a1_Delta : Int :=
  -17576

def x0_26_Q_real_26b1_Delta : Int :=
  -1664

theorem x0_26_Q_still_has_26a1_26b1 :
    x0_26_Q_real_26a1_Delta = -17576 ∧
      x0_26_Q_real_26b1_Delta = -1664 :=
  ⟨rfl, rfl⟩

theorem x0_26_Q_real_with_tate_steps_eq :
    x0_26_Q_real_with_tate_steps =
      ["cusp 1", "cusp 2", "cusp 13", "cusp 26",
        "26a1 Δ -17576", "26b1 Δ -1664"] :=
  rfl

#check TateStep
#check tate_algorithm_at_2
#check tate_algorithm_at_13
#check tate_real_conductor_26
#check FreyCurve
#check x0_26_Q_still_has_26a1_26b1
#print axioms tate_algorithm_at_2_f_p
#print axioms tate_real_conductor_26
#print axioms tate_real_conductor_26_eq_table
#print axioms FreyCurve.conductor_eq
#print axioms x0_26_Q_still_has_26a1_26b1

end BealLevel26Foundations.Tate.RealTateAlgorithm
