/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v22.0.0 -- Matveev Real inequality skeleton.
Names the displayed exponent
  -C1_floor * 30^{n+3} * log(B0_raw)
and the target
  |Lambda| > exp(-C1_floor * 30^{n+3} * log(B0_raw)).

Mathlib 4.12 has Real.log / Real.exp but
no Matveev 2000 Thm 1.4.  The Real lower
bound stays an uninhabited def Prop.
Integer pieces are kernel decide
(no axioms), reusing v19 constants and
the v21 Int nonzero / height bound.

Does not inhabit baker_bound_gap3.
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.
Does not use sorry.
-/

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality
import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor
import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealMatveevInequalityReal

open BealLevel26Foundations.BealMatveevConstants
open BealLevel26Foundations.BealMatveevInequality
open BealLevel26Foundations.BealFreyTateConductor
open BealLevel26Foundations.BealFreyConductorGeneral
open BealLevel26Foundations.BealGap3BakerUpperBound

/-- Reuse the v20 Real.log form.  No new
    Real.log rfl lemma. -/
noncomputable def matveev_log_form_real :=
  matveev_log_form

/-- Displayed exponent
    -C1_floor * 30^{n+3} * log(B0_raw).
    thirty_pow is 30^6 = 729000000. -/
noncomputable def matveev_C_exp_bound : Real :=
  -((matveev_C1_floor : Real) * (matveev_thirty_pow : Real) *
      Real.log (matveev_height_B0 : Real))

/-- Integer skeleton of the exponent.
    thirty_pow = 729000000 (30^6), not
    72900000. -/
theorem matveev_C_exp_bound_decide :
    matveev_C1_floor = 143186215390 ∧
      matveev_thirty_pow = 729000000 := by
  decide

theorem matveev_C1_floor_eq_numeral :
    matveev_C1_floor = 143186215390 :=
  rfl

theorem matveev_thirty_pow_eq_numeral :
    matveev_thirty_pow = 729000000 :=
  rfl

theorem matveev_C_exp_bound_height_decide :
    matveev_C1_floor * matveev_thirty_pow =
      104382751019310000000 := by
  decide

theorem matveev_C_exp_bound_height_eq :
    matveev_C1_floor * matveev_thirty_pow =
      matveev_height_B0 :=
  matveev_height_B0_eq.symm

/-- v21 integer nonzero witness, reused. -/
theorem matveev_inequality_real_int_ne_zero_zero :
    matveev_log_form_int 0 ≠ 0 :=
  matveev_log_form_ne_zero_zero

theorem matveev_inequality_real_int_ne_zero_fourteen :
    matveev_log_form_int 14 ≠ 0 :=
  matveev_log_form_ne_zero_fourteen

/-- v21 height bound reused: census B0
    sits under B0_raw. -/
theorem matveev_inequality_real_height_le :
    matveev_B0 ≤ matveev_height_B0 :=
  matveev_census_B0_le_height

/-- Tate c4 scale 16. -/
theorem matveev_inequality_real_c4_scale :
    matveev_c4_scale = 16 :=
  rfl

/-- Explicit integer trace of the Real
    exponent pieces. -/
def matveev_inequality_real_constants : List Int :=
  [143186215390, 729000000, 104382751019310000000, 16]

theorem matveev_inequality_real_constants_hold :
    matveev_inequality_real_constants ≠ [] := by
  decide

theorem matveev_inequality_real_constants_C1_eq :
    matveev_inequality_real_constants.head? =
      some (Int.ofNat matveev_C1_floor) :=
  rfl

/-- Uninhabited Matveev 2000 Thm 1.4 Real
    lower bound
    |Lambda| > exp(-C1_floor * 30^{n+3} * log(B0_raw)).
    Not in Mathlib 4.12.  Does not inhabit
    baker_bound_gap3. -/
def matveev_inequality_real_formal : Prop :=
  ∀ (A B : Nat),
    A > 0 →
      |matveev_log_form A B| > Real.exp matveev_C_exp_bound

/-- Same statement under the requested name. -/
def matveev_inequality_real_lower : Prop :=
  matveev_inequality_real_formal

/-- Named implication.  The Real bound is
    not proved, so this stays a def Prop. -/
def baker_bound_gap3_of_matveev_inequality_real : Prop :=
  matveev_inequality_real_formal → baker_bound_gap3

#check matveev_log_form_real
#check matveev_C_exp_bound
#check matveev_C_exp_bound_decide
#check matveev_C_exp_bound_height_decide
#check matveev_inequality_real_int_ne_zero_zero
#check matveev_inequality_real_height_le
#check matveev_inequality_real_constants_hold
#check matveev_inequality_real_formal
#check matveev_inequality_real_lower
#check baker_bound_gap3_of_matveev_inequality_real
#print axioms matveev_C_exp_bound_decide
#print axioms matveev_C1_floor_eq_numeral
#print axioms matveev_thirty_pow_eq_numeral
#print axioms matveev_C_exp_bound_height_decide
#print axioms matveev_C_exp_bound_height_eq
#print axioms matveev_inequality_real_int_ne_zero_zero
#print axioms matveev_inequality_real_int_ne_zero_fourteen
#print axioms matveev_inequality_real_height_le
#print axioms matveev_inequality_real_c4_scale
#print axioms matveev_inequality_real_constants_hold
#print axioms matveev_inequality_real_constants_C1_eq

end BealLevel26Foundations.BealMatveevInequalityReal
