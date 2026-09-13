/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v23.0.0 -- Baker bound gap-3 attempt.
Inhabits the kernel-real pieces that
Mathlib 4.12 can close from v19/v21/v22
integer facts plus Real.log monotonicity:

  * C_exp_bound = -height_B0 * log(height_B0)
  * 1 < log(height_B0), so
    C_exp_bound < -10^12
  * on a gap-3 solution
    A^4 + B^4 = (B+3)^13 with B > 0,
    the Real form
    Lambda = 4 log A - 13 log(B+3)
    is strictly negative, hence nonzero.

Does NOT inhabit
  |Lambda| > exp(C_exp_bound)
and does NOT inhabit baker_bound_gap3.
Mathlib 4.12 has no Matveev 2000 Thm 1.4
and no Bugeaud/LLL reduction.  The v21
integer form 16*(4B-13(B+3)) != 0 does
not imply a uniform Real lower bound.
baker_conditional_gap3_full still takes
hBaker : baker_bound_gap3.

Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.
Does not use sorry.
-/

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.ExponentialBounds
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequalityReal
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealBakerBoundGap3

open BealLevel26Foundations.BealMatveevConstants
open BealLevel26Foundations.BealMatveevInequality
open BealLevel26Foundations.BealMatveevInequalityReal
open BealLevel26Foundations.BealGap3BakerUpperBound

/-- Integer comparison used by the Real
    exponent bound.  ten_pow_12 = 10^12. -/
def ten_pow_12 : Nat := 1000000000000

theorem ten_pow_12_eq : ten_pow_12 = Nat.pow 10 12 :=
  rfl

theorem matveev_height_B0_gt_three :
    3 < matveev_height_B0 := by
  decide

theorem matveev_height_B0_gt_onee12 :
    ten_pow_12 < matveev_height_B0 := by
  decide

theorem baker_B0_eq_onee6 :
    baker_B0 = 1000000 :=
  baker_B0_eq

/-- thirty_pow is 30^6 = 729000000, not
    72900000. -/
theorem matveev_C_exp_bound_decide_reuse :
    matveev_C1_floor = 143186215390 ∧
      matveev_thirty_pow = 729000000 :=
  matveev_C_exp_bound_decide

/-- Displayed exponent equals
    -height_B0 * log(height_B0). -/
theorem matveev_C_exp_bound_eq_neg_mul :
    matveev_C_exp_bound =
      -((matveev_height_B0 : Real) *
          Real.log (matveev_height_B0 : Real)) := by
  have hcast :
      ((matveev_C1_floor : Real) * (matveev_thirty_pow : Real)) =
        (matveev_height_B0 : Real) := by
    rw [← Nat.cast_mul, matveev_C_exp_bound_height_eq]
  simp [matveev_C_exp_bound, hcast]

/-- height_B0 > e, so log(height_B0) > 1. -/
theorem matveev_log_height_B0_gt_one :
    (1 : Real) < Real.log (matveev_height_B0 : Real) := by
  have hpos : (0 : Real) < (matveev_height_B0 : Real) :=
    Nat.cast_pos.mpr (by decide)
  have hexp3 : Real.exp 1 < (3 : Real) :=
    lt_trans Real.exp_one_lt_d9 (by norm_num)
  have h3 : (3 : Real) < (matveev_height_B0 : Real) :=
    Nat.cast_lt.mpr matveev_height_B0_gt_three
  exact (Real.lt_log_iff_exp_lt hpos).2 (hexp3.trans h3)

/-- Displayed Matveev exponent is negative. -/
theorem matveev_C_exp_bound_neg :
    matveev_C_exp_bound < 0 := by
  have hpos : (0 : Real) < (matveev_height_B0 : Real) :=
    Nat.cast_pos.mpr (by decide)
  have hone : (1 : Real) < (matveev_height_B0 : Real) := by
    have hcast : ((1 : Nat) : Real) < (matveev_height_B0 : Real) :=
      Nat.cast_lt.mpr
        (Nat.lt_trans (by decide : 1 < 3) matveev_height_B0_gt_three)
    simpa using hcast
  have hlog : (0 : Real) < Real.log (matveev_height_B0 : Real) :=
    Real.log_pos hone
  have hmul : (0 : Real) <
      (matveev_height_B0 : Real) *
        Real.log (matveev_height_B0 : Real) :=
    mul_pos hpos hlog
  rw [matveev_C_exp_bound_eq_neg_mul]
  exact neg_neg_of_pos hmul

/-- Weaker explicit comparison on the
    displayed exponent, not on |Lambda|:
    C_exp_bound < -10^12.  This does not
    prove |Lambda| > exp(-10^12). -/
theorem matveev_C_exp_bound_lt_neg_onee12 :
    matveev_C_exp_bound < -((ten_pow_12 : Nat) : Real) := by
  have hpos : (0 : Real) < (matveev_height_B0 : Real) :=
    Nat.cast_pos.mpr (by decide)
  have hlog := matveev_log_height_B0_gt_one
  have hgt : ((ten_pow_12 : Nat) : Real) <
      (matveev_height_B0 : Real) :=
    Nat.cast_lt.mpr matveev_height_B0_gt_onee12
  have hmul :
      ((ten_pow_12 : Nat) : Real) <
        (matveev_height_B0 : Real) *
          Real.log (matveev_height_B0 : Real) := by
    have h1 :
        (matveev_height_B0 : Real) <
          (matveev_height_B0 : Real) *
            Real.log (matveev_height_B0 : Real) := by
      have := mul_lt_mul_of_pos_left hlog hpos
      simpa [mul_one] using this
    exact hgt.trans h1
  rw [matveev_C_exp_bound_eq_neg_mul]
  exact neg_lt_neg hmul

/-- On a gap-3 solution with B > 0 the
    fourth power A^4 is strictly smaller
    than (B+3)^13. -/
theorem gap3_A_pow4_lt {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    Nat.pow A 4 < Nat.pow (B + 3) 13 := by
  have hB4 : 0 < Nat.pow B 4 := Nat.pow_pos hB
  have hlt : Nat.pow A 4 < Nat.pow A 4 + Nat.pow B 4 :=
    Nat.lt_add_of_pos_right hB4
  exact hlt.trans_eq hsol

/-- Real log-form is negative on a gap-3
    solution.  Uses log monotonicity, not
    Matveev 1.4. -/
theorem matveev_log_form_lt_zero_of_gap3 {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    matveev_log_form A B < 0 := by
  have hA4lt := gap3_A_pow4_lt hsol hB
  have hApos : 0 < A := Nat.pos_of_ne_zero fun hA => by
    have hB4 : Nat.pow B 4 = Nat.pow (B + 3) 13 := by
      simpa [hA] using hsol
    have hltB : B < B + 3 := Nat.lt_add_of_pos_right (by decide)
    have hpow4 : Nat.pow B 4 < Nat.pow (B + 3) 4 :=
      (Nat.pow_lt_pow_iff_left (by decide : 4 ≠ 0)).2 hltB
    have hle : Nat.pow (B + 3) 4 ≤ Nat.pow (B + 3) 13 :=
      Nat.pow_le_pow_right (Nat.succ_pos _) (by decide : 4 ≤ 13)
    exact Nat.lt_irrefl _ (hB4 ▸ hpow4.trans_le hle)
  have hAℝ : (0 : Real) < (A : Real) := Nat.cast_pos.mpr hApos
  have hpow :
      ((A : Real) ^ 4) < (((B + 3 : Nat) : Real) ^ 13) := by
    have hcast :
        ((Nat.pow A 4 : Nat) : Real) <
          ((Nat.pow (B + 3) 13 : Nat) : Real) :=
      Nat.cast_lt.mpr hA4lt
    simpa [Nat.cast_pow] using hcast
  have hlog :
      Real.log ((A : Real) ^ 4) <
        Real.log (((B + 3 : Nat) : Real) ^ 13) :=
    Real.log_lt_log (pow_pos hAℝ 4) hpow
  have hlin :
      (4 : Real) * Real.log (A : Real) <
        (13 : Real) * Real.log ((B + 3 : Nat) : Real) := by
    simpa [Real.log_pow] using hlog
  simpa [matveev_log_form] using sub_neg.2 hlin

/-- Real log-form is nonzero on a gap-3
    solution.  Not a uniform lower bound. -/
theorem matveev_log_form_ne_zero_of_gap3 {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    matveev_log_form A B ≠ 0 :=
  (matveev_log_form_lt_zero_of_gap3 hsol hB).ne

/-- Still uninhabited.  Matveev 2000 Thm 1.4
    is not in Mathlib 4.12. -/
def matveev_inequality_real_lower_remaining : Prop :=
  matveev_inequality_real_lower

/-- Still uninhabited.  A uniform
    |Lambda| > exp(-C) does not follow
    from Lambda != 0 or from
    C_exp_bound < -10^12. -/
def baker_bound_gap3_remaining : Prop :=
  baker_bound_gap3

/-- Target forall after inhabiting
    baker_bound_gap3.  Already available
    as baker_conditional_gap3_full once
    the premise is supplied.  Stays a
    def Prop here. -/
def baker_conditional_gap3_full_unconditional : Prop :=
  ∀ B : Nat,
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13

/-- Named implication only.  Not inhabited. -/
def baker_bound_gap3_of_C_exp_bound : Prop :=
  matveev_inequality_real_formal → baker_bound_gap3

#check ten_pow_12
#check matveev_height_B0_gt_onee12
#check matveev_C_exp_bound_decide_reuse
#check matveev_C_exp_bound_eq_neg_mul
#check matveev_log_height_B0_gt_one
#check matveev_C_exp_bound_neg
#check matveev_C_exp_bound_lt_neg_onee12
#check matveev_log_form_lt_zero_of_gap3
#check matveev_log_form_ne_zero_of_gap3
#check baker_bound_gap3_remaining
#check baker_conditional_gap3_full_unconditional
#print axioms ten_pow_12_eq
#print axioms matveev_height_B0_gt_three
#print axioms matveev_height_B0_gt_onee12
#print axioms baker_B0_eq_onee6
#print axioms matveev_C_exp_bound_decide_reuse
#print axioms matveev_C_exp_bound_eq_neg_mul
#print axioms matveev_log_height_B0_gt_one
#print axioms matveev_C_exp_bound_neg
#print axioms matveev_C_exp_bound_lt_neg_onee12
#print axioms gap3_A_pow4_lt
#print axioms matveev_log_form_lt_zero_of_gap3
#print axioms matveev_log_form_ne_zero_of_gap3

end BealLevel26Foundations.BealBakerBoundGap3
