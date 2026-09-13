/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v20.0.0 -- Matveev inequality skeleton.
Uses the v19 integer constants
  C1_floor = 143186215390
  thirty_pow = 30^{n+3} = 729000000
  height_B0 = C1_floor * thirty_pow
and Mathlib Real.log to name the linear form
  Lambda = 4 log A - 13 log(B+3).

Mathlib 4.12 has Real.log / Real.exp but
no Matveev 2000 Thm 1.4.  The lower bound
stays an uninhabited def Prop.
baker_bound_gap3 stays a def Prop.
Does not inhabit an unconditional gap-3
forall.  Does not use sorry.
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.

Track B v21.0.0 -- integer log-form nonzero
and height bound.  matveev_log_form_int
is 16 * (4B - 13(B+3)) using the Tate
c4 scale; no Real.log.  The Real.log
skeleton above is unchanged.
-/

import Mathlib.Tactic.Ring
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor
import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealMatveevInequality

open BealLevel26Foundations.BealMatveevConstants
open BealLevel26Foundations.BealFreyTateConductor
open BealLevel26Foundations.BealFreyConductorGeneral
open BealLevel26Foundations.BealGap3BakerUpperBound

/-- Linear form Lambda = 4 log A - 13 log(B+3).
    Mathlib Real.log extends by log 0 = 0. -/
noncomputable def matveev_log_form (A B : Nat) : Real :=
  (4 : Real) * Real.log (A : Real) -
    (13 : Real) * Real.log ((B + 3 : Nat) : Real)

theorem matveev_log_form_eq (A B : Nat) :
    matveev_log_form A B =
      (4 : Real) * Real.log (A : Real) -
        (13 : Real) * Real.log ((B + 3 : Nat) : Real) :=
  rfl

/-- Integer exponent piece of the displayed
    Matveev lower bound exp(-C1_floor * ...). -/
def matveev_lower_bound_scale : Nat := 143186215390

theorem matveev_lower_bound_scale_eq :
    matveev_lower_bound_scale = matveev_C1_floor :=
  rfl

theorem matveev_lower_bound_scale_pos :
    matveev_lower_bound_scale > 0 := by
  decide

/-- Uninhabited Matveev 2000 Thm 1.4 lower bound.
    Not in Mathlib 4.12.  Does not inhabit
    baker_bound_gap3. -/
def matveev_lower_bound : Prop :=
  ∀ (A B : Nat),
    A > 0 →
      |matveev_log_form A B| >
        Real.exp
          (-((matveev_C1_floor : Real) *
              (matveev_thirty_pow : Real)))

/-- Tate c4 scale reused as height material. -/
theorem matveev_inequality_c4_height (A B : Nat) :
    (bealFreyWeierstrass A B).c₄ =
      ((matveev_c4_scale * c4Paren A B : Nat) : Int) :=
  matveev_c4_height A B

/-- Explicit integer witness: b1, b3, C1,
    thirty_pow, height_B0, c4 scale, B0. -/
def matveev_inequality_constants : List Int :=
  [4, -13, 143186215390, 729000000,
    104382751019310000000, 16, 1000000]

theorem matveev_inequality_constants_hold :
    matveev_inequality_constants ≠ [] := by
  decide

theorem matveev_inequality_constants_C1_eq :
    (matveev_inequality_constants.drop 2).head? =
      some (Int.ofNat matveev_C1_floor) :=
  rfl

theorem matveev_inequality_constants_height_eq :
    (matveev_inequality_constants.drop 4).head? =
      some (Int.ofNat matveev_height_B0) :=
  rfl

theorem matveev_inequality_constants_c4_eq :
    (matveev_inequality_constants.drop 5).head? =
      some (Int.ofNat matveev_c4_scale) :=
  rfl

/-- Named implication.  The constants list
    does not inhabit baker_bound_gap3. -/
def baker_bound_gap3_of_matveev_inequality : Prop :=
  matveev_inequality_constants ≠ [] → baker_bound_gap3

/-! ## v21.0.0 — integer log form ≠ 0 and height bound -/

/-- Integer stand-in for 4 log A − 13 log(B+3):
    Tate c4 scale 16 times (4B − 13(B+3)).
    No Real.log. -/
def matveev_log_form_int (B : Nat) : Int :=
  (matveev_c4_scale : Int) *
    (4 * (B : Int) - 13 * ((B + 3 : Nat) : Int))

theorem matveev_log_form_int_eq (B : Nat) :
    matveev_log_form_int B =
      (16 : Int) * (4 * (B : Int) - 13 * ((B + 3 : Nat) : Int)) :=
  rfl

theorem matveev_log_form_int_eq_neg (B : Nat) :
    matveev_log_form_int B =
      -((16 : Int) * (9 * (B : Int) + 39)) := by
  have hcast : ((B + 3 : Nat) : Int) = (B : Int) + 3 :=
    Nat.cast_add B 3
  simp [matveev_log_form_int, matveev_c4_scale, hcast]
  ring

theorem matveev_log_form_ne_zero_zero :
    matveev_log_form_int 0 ≠ 0 := by
  decide

theorem matveev_log_form_ne_zero_fourteen :
    matveev_log_form_int 14 ≠ 0 := by
  decide

theorem matveev_mod14_zero : 0 % 14 = 0 := by
  decide

theorem matveev_mod14_fourteen : 14 % 14 = 0 := by
  decide

/-- First brick: on B ≡ 0 (mod 14) the
    integer log form is nonzero.  Uses the
    Tate c4 scale 16, not Real.log. -/
theorem matveev_log_form_ne_zero (B : Nat)
    (hB : B % 14 = 0) :
    matveev_log_form_int B ≠ 0 := by
  obtain ⟨k, hk⟩ := Nat.dvd_of_mod_eq_zero hB
  rw [hk, matveev_log_form_int_eq_neg]
  have hpos : (0 : Int) < 9 * ((14 * k : Nat) : Int) + 39 := by
    omega
  exact neg_ne_zero.mpr
    (mul_ne_zero (by decide : (16 : Int) ≠ 0) (ne_of_gt hpos))

/-- v19 displayed height numeral. -/
theorem matveev_height_B0_eq_numeral :
    matveev_height_B0 = 104382751019310000000 :=
  rfl

/-- If B ≤ B0_raw then B ≤ the v19 height
    numeral.  Definitional from
    matveev_height_B0; no Real.log. -/
theorem matveev_height_le_log_B0 {B : Nat}
    (hB : B ≤ matveev_height_B0) :
    B ≤ 104382751019310000000 :=
  hB

theorem matveev_census_B0_le_height :
    matveev_B0 ≤ matveev_height_B0 := by
  decide

theorem matveev_height_B0_pos :
    matveev_height_B0 > 0 := by
  decide

#check matveev_log_form
#check matveev_log_form_eq
#check matveev_lower_bound
#check matveev_lower_bound_scale
#check matveev_lower_bound_scale_eq
#check matveev_lower_bound_scale_pos
#check matveev_inequality_c4_height
#check matveev_inequality_constants
#check matveev_inequality_constants_hold
#check baker_bound_gap3_of_matveev_inequality
#check matveev_log_form_int
#check matveev_log_form_int_eq
#check matveev_log_form_int_eq_neg
#check matveev_log_form_ne_zero
#check matveev_log_form_ne_zero_zero
#check matveev_log_form_ne_zero_fourteen
#check matveev_height_le_log_B0
#check matveev_height_B0_eq_numeral
#check matveev_census_B0_le_height
#check matveev_height_B0_pos
#print axioms matveev_log_form_eq
#print axioms matveev_lower_bound_scale_eq
#print axioms matveev_lower_bound_scale_pos
#print axioms matveev_inequality_constants_hold
#print axioms matveev_inequality_constants_C1_eq
#print axioms matveev_inequality_constants_height_eq
#print axioms matveev_inequality_constants_c4_eq
#print axioms matveev_log_form_int_eq
#print axioms matveev_log_form_ne_zero_zero
#print axioms matveev_log_form_ne_zero_fourteen
#print axioms matveev_mod14_zero
#print axioms matveev_mod14_fourteen
#print axioms matveev_log_form_ne_zero
#print axioms matveev_height_B0_eq_numeral
#print axioms matveev_height_le_log_B0
#print axioms matveev_census_B0_le_height
#print axioms matveev_height_B0_pos

end BealLevel26Foundations.BealMatveevInequality
