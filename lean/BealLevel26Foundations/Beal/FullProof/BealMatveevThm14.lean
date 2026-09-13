/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v24.2.2 -- log(1 + x) ≤ x upper bound
on gap-3 solutions.
Keeps all v24.0.0 through v24.2.1 lemmas.

On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * 0 < A via matveev_gap3_A_pos
  * 0 < B via matveev_gap3_B_pos_of_solution
  * 0 < (A:Real)^4 via matveev_gap3_A_pow_pos
  * 0 < ((B+3):Real)^13 via matveev_gap3_B3_pow_pos
  * Lambda = 4 log A - 13 log (B+3) = -log((B+3)^13 / A^4)
  * |Lambda| = log((B+3)^13 / A^4) = log(1 + B^4 / A^4)
    (matveev_gap3_log_form_eq_log_ratio,
     matveev_gap3_abs_lambda_eq_log_one_plus_ratio)
  * 0 < B^4 / A^4 via matveev_gap3_B_pow_div_A_pow_pos
  * |Lambda| ≤ B^4 / A^4 via matveev_gap3_abs_lambda_le_ratio
  * 0 ≤ |Lambda| via matveev_gap3_abs_lambda_nonneg
  * B^4 / A^4 < 1 → |Lambda| < 1 via matveev_gap3_abs_lambda_lt_one_of_small_ratio
  * 0 < matveev_target_exp_lower < 1
    (matveev_exp_lower_lt_one_and_pos)

Links the upper bound side via ratio toward Baker B0.

thirty_pow is 30^6 = 729000000, not
the 7-digit typo 72900000 (= 30^6 / 10).
C1_floor * 729000000 = height_B0
= 104382751019310000000.
C1_floor * 72900000 = height_B0 / 10
= 10438275101931000000.
Both products stay decide theorems.

Does NOT inhabit baker_bound_gap3.
Does NOT inhabit
  |Lambda| > exp(matveev_C_exp_bound).
Mathlib 4.12 has no Matveev 2000 Thm 1.4.
v25 is only when
baker_bound_gap3 greens and
baker_conditional_gap3_full drops hBaker.

Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.
Does not use sorry.
-/

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.ExponentialBounds
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequalityReal
import BealLevel26Foundations.Beal.FullProof.BealBakerBoundGap3
import BealLevel26Foundations.Beal.FullProof.BealBugeaudLLLFormal
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealMatveevThm14

open BealLevel26Foundations.BealMatveevConstants
open BealLevel26Foundations.BealMatveevInequality
open BealLevel26Foundations.BealMatveevInequalityReal
open BealLevel26Foundations.BealBakerBoundGap3
open BealLevel26Foundations.BealBugeaudLLLFormal
open BealLevel26Foundations.BealGap3BakerUpperBound

/-! ## v19 constants, both thirty_pow numerals -/

theorem matveev_C1_floor_eq :
    matveev_C1_floor = 143186215390 := by
  decide

/-- 30^6 = 729000000. -/
theorem matveev_thirty_pow_eq_30_pow_6 :
    matveev_thirty_pow = Nat.pow 30 6 := by
  decide

theorem matveev_thirty_pow_eq_729000000 :
    matveev_thirty_pow = 729000000 := by
  decide

/-- The recurring typo 72900000 is not 30^6.
    30^6 = 729000000 = 72900000 * 10. -/
theorem matveev_thirty_pow_ne_72900000 :
    matveev_thirty_pow ≠ 72900000 := by
  decide

/-- Numeral check: the typo times ten is 30^6. -/
theorem matveev_thirty_pow_eq_typo_times_ten :
    matveev_thirty_pow = 72900000 * 10 := by
  decide

theorem matveev_C1_floor_pos :
    matveev_C1_floor > 0 := by
  decide

theorem matveev_thirty_pow_pos :
    matveev_thirty_pow > 0 := by
  decide

theorem matveev_height_B0_eq_numeral :
    matveev_height_B0 = 104382751019310000000 := by
  decide

theorem matveev_c4_scale_eq_16 :
    matveev_c4_scale = 16 :=
  rfl

/-- Tate survivor reused as a Nat identity.
    Does not import BealFreyB14. -/
theorem tate_survivor_63982 :
    (63982 : Nat) = 2 * 31991 := by
  decide

/-! ## v20 Bugeaud LLL integer skeleton -/

theorem matveev_thm14_bugeaud_K_eq :
    bugeaud_K = Nat.pow 10 20 :=
  bugeaud_K_eq

theorem matveev_thm14_bugeaud_LLL_basis_holds :
    bugeaud_LLL_basis ≠ [] :=
  bugeaud_LLL_basis_holds

/-! ## v21 integer log-form nonzero -/

theorem matveev_thm14_log_form_int_ne_zero_zero :
    matveev_log_form_int 0 ≠ 0 :=
  matveev_log_form_ne_zero_zero

theorem matveev_thm14_log_form_int_ne_zero_fourteen :
    matveev_log_form_int 14 ≠ 0 :=
  matveev_log_form_ne_zero_fourteen

/-! ## v22 / v23 Real exponent -/

noncomputable def matveev_C_exp_bound_thm14 :=
  matveev_C_exp_bound

theorem matveev_thm14_height_gt_onee12 :
    ten_pow_12 < matveev_height_B0 :=
  matveev_height_B0_gt_onee12

/-- log(height_B0) > 0 from height > 10^12
    and Real.log_pos. -/
theorem matveev_height_log_pos :
    (0 : Real) < Real.log (matveev_height_B0 : Real) := by
  have hone : (1 : Real) < (matveev_height_B0 : Real) := by
    have hcast : ((1 : Nat) : Real) < (matveev_height_B0 : Real) :=
      Nat.cast_lt.mpr
        (Nat.lt_trans (by decide : 1 < ten_pow_12)
          matveev_height_B0_gt_onee12)
    simpa using hcast
  exact Real.log_pos hone

/-- Restate v23: displayed exponent is negative. -/
theorem matveev_exp_bound_neg :
    matveev_C_exp_bound < 0 :=
  matveev_C_exp_bound_neg

/-- height_B0 > 2 as a Real, from
    height_B0 > 10^12. -/
theorem matveev_height_B0_gt_two :
    (2 : Real) < (matveev_height_B0 : Real) := by
  have hcast : ((2 : Nat) : Real) < (matveev_height_B0 : Real) :=
    Nat.cast_lt.mpr
      (Nat.lt_trans (by decide : 2 < ten_pow_12)
        matveev_height_B0_gt_onee12)
  simpa using hcast

/-- Real.log is strictly monotone on positives. -/
theorem matveev_log_height_monotone :
    ∀ (h1 h2 : Real),
      (0 : Real) < h1 → h1 < h2 →
        Real.log h1 < Real.log h2 :=
  fun _ _ hpos hlt => Real.log_lt_log hpos hlt

/-- C_exp_bound < 0 iff log(height_B0) > 0,
    since C1_floor > 0 and thirty_pow > 0. -/
theorem matveev_C_exp_bound_lt_zero_of_pos_log :
    matveev_C_exp_bound < 0 ↔
      (0 : Real) < Real.log (matveev_height_B0 : Real) := by
  have hC : (0 : Real) < (matveev_C1_floor : Real) :=
    Nat.cast_pos.mpr matveev_C1_floor_pos
  have hT : (0 : Real) < (matveev_thirty_pow : Real) :=
    Nat.cast_pos.mpr matveev_thirty_pow_pos
  have hCT : (0 : Real) <
      (matveev_C1_floor : Real) * (matveev_thirty_pow : Real) :=
    mul_pos hC hT
  have hdef :
      matveev_C_exp_bound =
        -((matveev_C1_floor : Real) * (matveev_thirty_pow : Real) *
            Real.log (matveev_height_B0 : Real)) :=
    rfl
  constructor
  · intro hneg
    have hprod : (0 : Real) <
        (matveev_C1_floor : Real) * (matveev_thirty_pow : Real) *
          Real.log (matveev_height_B0 : Real) := by
      rw [hdef] at hneg
      exact neg_lt_zero.mp hneg
    exact pos_of_mul_pos_right hprod (le_of_lt hCT)
  · intro hlog
    have hmul : (0 : Real) <
        (matveev_C1_floor : Real) * (matveev_thirty_pow : Real) *
          Real.log (matveev_height_B0 : Real) :=
      mul_pos hCT hlog
    rw [hdef]
    exact neg_neg_of_pos hmul

theorem matveev_thm14_C_exp_bound_lt_neg_onee12 :
    matveev_C_exp_bound < -((ten_pow_12 : Nat) : Real) :=
  matveev_C_exp_bound_lt_neg_onee12

/-! ## v24.0.2 — exp of the displayed bound -/

/-- Direct restatement of v24.0.1 negativity. -/
theorem matveev_exp_bound_lt_zero :
    matveev_C_exp_bound < 0 :=
  matveev_exp_bound_neg

/-- exp(C_exp_bound) < 1 because the
    exponent is negative. -/
theorem matveev_exp_of_bound_pos_lt_one :
    Real.exp matveev_C_exp_bound < 1 :=
  Real.exp_lt_one_iff.mpr matveev_exp_bound_lt_zero

/-- exp is always positive. -/
theorem matveev_exp_of_bound_pos :
    (0 : Real) < Real.exp matveev_C_exp_bound :=
  Real.exp_pos matveev_C_exp_bound

/-- Strengthen v23 strict comparison to ≤
    for AMS-facing statements. -/
theorem matveev_C_exp_bound_le_neg_onee12 :
    matveev_C_exp_bound ≤ -((ten_pow_12 : Nat) : Real) :=
  le_of_lt matveev_C_exp_bound_lt_neg_onee12

/-- Named uniform lower-bound shape.
    0 < target < 1; this is not yet
    |Lambda| > target. -/
noncomputable def matveev_target_exp_lower : Real :=
  Real.exp matveev_C_exp_bound

theorem matveev_target_exp_lower_pos :
    (0 : Real) < matveev_target_exp_lower :=
  matveev_exp_of_bound_pos

theorem matveev_target_exp_lower_lt_one :
    matveev_target_exp_lower < 1 :=
  matveev_exp_of_bound_pos_lt_one

/-! ## v24.1.0 — height product identity

    The displayed exponent is
    -(C1_floor * thirty_pow * log height_B0)
    with thirty_pow = 30^6 = 729000000.
    That product equals height_B0.
    The 7-digit typo 72900000 is 30^6 / 10
    and its product is height_B0 / 10.
    Does not use sorry. -/

/-- Typo product: C1_floor * (30^6 / 10).
    This is height_B0 / 10, not height_B0. -/
theorem matveev_C1_floor_mul_thirty_pow_div10 :
    matveev_C1_floor * 72900000 = 10438275101931000000 := by
  decide

/-- Correct 30^6 product. This is height_B0. -/
theorem matveev_C1_floor_mul_thirty_pow :
    matveev_C1_floor * 729000000 = 104382751019310000000 := by
  decide

/-- Typo product times ten recovers height_B0. -/
theorem matveev_C1_floor_mul_thirty_pow_div10_times_ten :
    matveev_C1_floor * 72900000 * 10 = matveev_height_B0 := by
  decide

/-- The typo product is not the displayed height. -/
theorem matveev_C1_floor_mul_thirty_pow_div10_ne_height :
    matveev_C1_floor * 72900000 ≠ matveev_height_B0 := by
  decide

/-- Product that controls the displayed exponent.
    height_B0 = C1_floor * thirty_pow
    with thirty_pow = 729000000 = 30^6.
    Not height_B0 * 10. -/
theorem matveev_height_product_link :
    matveev_height_B0 = matveev_C1_floor * matveev_thirty_pow := by
  decide

/-! ## v24.1.1 — rewriting C_exp_bound via height_B0

    Uses `matveev_height_product_link`
    (`height_B0 = C1_floor * thirty_pow`) to rewrite
    `matveev_C_exp_bound` to
    `-((height_B0 : Real) * Real.log (height_B0 : Real))`.
    Does not use sorry. -/

/-- Rewrite C_exp_bound using the height_B0 product identity. -/
theorem matveev_C_exp_bound_eq_neg_height_mul_log :
    matveev_C_exp_bound =
      -(((matveev_height_B0 : Real) *
          Real.log (matveev_height_B0 : Real))) := by
  have hprod : ((matveev_C1_floor : Real) * (matveev_thirty_pow : Real)) =
      (matveev_height_B0 : Real) := by
    have hnat : matveev_C1_floor * matveev_thirty_pow = matveev_height_B0 :=
      matveev_height_product_link.symm
    exact_mod_cast hnat
  unfold matveev_C_exp_bound
  rw [hprod]

/-- Associativity version of the rewrite for AMS statements:
    -(height_B0 : Real) * log height_B0. -/
theorem matveev_C_exp_bound_eq_neg_height_log :
    matveev_C_exp_bound =
      -(matveev_height_B0 : Real) * Real.log (matveev_height_B0 : Real) := by
  rw [matveev_C_exp_bound_eq_neg_height_mul_log]
  ring

/-- Target lower bound written with height_B0 directly. -/
theorem matveev_target_exp_lower_eq :
    matveev_target_exp_lower =
      Real.exp (-((matveev_height_B0 : Real) *
        Real.log (matveev_height_B0 : Real))) := by
  unfold matveev_target_exp_lower
  rw [matveev_C_exp_bound_eq_neg_height_mul_log]

/-- height_B0 * log height_B0 is strictly positive. -/
theorem matveev_height_B0_mul_log_pos :
    (0 : Real) < (matveev_height_B0 : Real) *
      Real.log (matveev_height_B0 : Real) := by
  have hpos_h : (0 : Real) < (matveev_height_B0 : Real) := by
    have hcast : ((0 : Nat) : Real) < (matveev_height_B0 : Real) :=
      Nat.cast_lt.mpr
        (Nat.lt_trans (by decide : 0 < 2)
          (Nat.lt_trans (by decide : 2 < ten_pow_12)
            matveev_height_B0_gt_onee12))
    simpa using hcast
  exact mul_pos hpos_h matveev_height_log_pos

/-- Equivalence of C_exp_bound < 0 with 0 < height_B0 * log height_B0. -/
theorem matveev_C_exp_bound_neg_of_mul_log_pos :
    matveev_C_exp_bound < 0 ↔
      (0 : Real) < (matveev_height_B0 : Real) *
        Real.log (matveev_height_B0 : Real) := by
  rw [matveev_C_exp_bound_eq_neg_height_mul_log]
  exact neg_lt_zero

/-- Integer trace of the Thm 1.4 start. -/
def matveev_thm14_constants : List Int :=
  [143186215390, 729000000, 104382751019310000000,
    16, 63982, 1000000000000]

theorem matveev_thm14_constants_hold :
    matveev_thm14_constants ≠ [] := by
  decide

/-! ## v24.2.0 — Logarithmic form upper bound on gap-3 solutions

    On a gap-3 solution A^4 + B^4 = (B+3)^13:
      * B > 0 by eliminating B = 0 via baker_le_B0_gap3
      * A > 0 via eq_implies_A_gt_B
      * Lambda = 4 log A - 13 log (B+3) < 0
      * |Lambda| = -Lambda = -(4 log A - 13 log (B+3))
      * 0 < matveev_target_exp_lower < 1

    Does not use sorry. -/

/-- On any gap-3 solution A^4 + B^4 = (B+3)^13, B must be strictly positive
    because B = 0 is eliminated by baker_le_B0_gap3 (0 ≤ baker_B0). -/
theorem matveev_gap3_B_pos_of_solution {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 < B := by
  cases' Nat.eq_zero_or_pos B with hB0 hpos
  · exfalso
    have hle : B ≤ baker_B0 := by rw [hB0]; decide
    exact baker_le_B0_gap3 hle ⟨A, hsol⟩
  · exact hpos

/-- On any gap-3 solution A^4 + B^4 = (B+3)^13, A must be strictly positive
    because 0 < B and B < A via eq_implies_A_gt_B. -/
theorem matveev_gap3_A_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 < A := by
  have hB := matveev_gap3_B_pos_of_solution hsol
  have hgt := eq_implies_A_gt_B hsol hB
  exact Nat.lt_trans hB hgt

/-- On a gap-3 solution with B > 0, A is strictly positive. -/
theorem matveev_gap3_A_pos_of_pos_B {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    0 < A := by
  have hgt := eq_implies_A_gt_B hsol hB
  exact Nat.lt_trans hB hgt

/-- On a gap-3 solution with B > 0, the Real logarithmic form
    Lambda = 4 log A - 13 log (B+3) is strictly negative,
    and |Lambda| = -Lambda = -(4 log A - 13 log (B+3)). -/
theorem matveev_gap3_log_form_upper_bound {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    matveev_log_form A B < 0 ∧
      |matveev_log_form A B| = -matveev_log_form A B := by
  have hlt := matveev_log_form_lt_zero_of_gap3 hsol hB
  exact ⟨hlt, abs_of_neg hlt⟩

/-- Expanded version of matveev_gap3_log_form_upper_bound with
    explicit 4 log A - 13 log (B+3). -/
theorem matveev_gap3_log_form_upper_bound_expanded {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    (4 : Real) * Real.log (A : Real) -
        (13 : Real) * Real.log ((B + 3 : Nat) : Real) < 0 ∧
      |(4 : Real) * Real.log (A : Real) -
        (13 : Real) * Real.log ((B + 3 : Nat) : Real)| =
        -((4 : Real) * Real.log (A : Real) -
          (13 : Real) * Real.log ((B + 3 : Nat) : Real)) :=
  matveev_gap3_log_form_upper_bound hsol hB

/-- Upper bound shape holding directly from the solution identity without
    requiring B > 0 as a hypothesis (B > 0 is deduced). -/
theorem matveev_gap3_log_form_upper_bound_of_solution {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    matveev_log_form A B < 0 ∧
      |matveev_log_form A B| = -matveev_log_form A B :=
  matveev_gap3_log_form_upper_bound hsol (matveev_gap3_B_pos_of_solution hsol)

/-- Restatement of the target exponential lower bound in (0, 1):
    0 < matveev_target_exp_lower ∧ matveev_target_exp_lower < 1. -/
theorem matveev_exp_lower_lt_one_and_pos :
    (0 : Real) < matveev_target_exp_lower ∧
      matveev_target_exp_lower < 1 :=
  ⟨matveev_target_exp_lower_pos, matveev_target_exp_lower_lt_one⟩

/-! ## v24.2.1 — Logarithmic form as logarithm of ratio

    On a gap-3 solution A^4 + B^4 = (B+3)^13:
      * 0 < (A:Real)^4
      * 0 < ((B+3):Real)^13
      * (B+3)^13 / A^4 = 1 + B^4 / A^4
      * Lambda = 4 log A - 13 log (B+3) = -log((B+3)^13 / A^4)
      * |Lambda| = log((B+3)^13 / A^4) = log(1 + B^4 / A^4)

    Does not use sorry. -/

/-- On a gap-3 solution, (A : Real)^4 is strictly positive. -/
theorem matveev_gap3_A_pow_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (0 : Real) < (A : Real) ^ 4 := by
  have hA : 0 < A := matveev_gap3_A_pos hsol
  have hAR : (0 : Real) < (A : Real) := Nat.cast_pos.mpr hA
  exact pow_pos hAR 4

/-- On a gap-3 solution, ((B+3) : Real)^13 is strictly positive. -/
theorem matveev_gap3_B3_pow_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (0 : Real) < ((B + 3 : Nat) : Real) ^ 13 := by
  have hB : 0 < B := matveev_gap3_B_pos_of_solution hsol
  have hB3 : 0 < B + 3 :=
    Nat.lt_trans hB (Nat.lt_add_of_pos_right (by decide : 0 < 3))
  have hB3R : (0 : Real) < ((B + 3 : Nat) : Real) := Nat.cast_pos.mpr hB3
  exact pow_pos hB3R 13

/-- On a gap-3 solution, the ratio ((B+3) : Real)^13 / (A : Real)^4 equals
    1 + (B : Real)^4 / (A : Real)^4. -/
theorem matveev_gap3_ratio_eq_one_plus_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    ((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4 =
      1 + (B : Real) ^ 4 / (A : Real) ^ 4 := by
  have hA4_pos := matveev_gap3_A_pow_pos hsol
  have hA4_ne : (A : Real) ^ 4 ≠ 0 := hA4_pos.ne'
  have hcast_pow : ((B + 3 : Nat) : Real) ^ 13 =
      (A : Real) ^ 4 + (B : Real) ^ 4 := by
    have hcast : ((Nat.pow (B + 3) 13 : Nat) : Real) =
        ((Nat.pow A 4 + Nat.pow B 4 : Nat) : Real) := by
      rw [← hsol]
    push_cast at hcast
    simpa [Nat.cast_pow] using hcast
  rw [hcast_pow, add_div, div_self hA4_ne]

/-- On a gap-3 solution, Lambda = -log(((B+3) : Real)^13 / (A : Real)^4),
    and |Lambda| = log(((B+3) : Real)^13 / (A : Real)^4) = log(1 + B^4 / A^4). -/
theorem matveev_gap3_log_form_eq_log_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    matveev_log_form A B =
      -Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) ∧
    |matveev_log_form A B| =
      Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) ∧
    Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) =
      Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) := by
  have hB3_pow_pos := matveev_gap3_B3_pow_pos hsol
  have hA_pow_pos := matveev_gap3_A_pow_pos hsol
  have hlog_div : Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) =
      Real.log (((B + 3 : Nat) : Real) ^ 13) - Real.log ((A : Real) ^ 4) :=
    Real.log_div hB3_pow_pos.ne' hA_pow_pos.ne'
  have hlog_pow13 : Real.log (((B + 3 : Nat) : Real) ^ 13) =
      (13 : Real) * Real.log ((B + 3 : Nat) : Real) :=
    Real.log_pow ((B + 3 : Nat) : Real) 13
  have hlog_pow4 : Real.log ((A : Real) ^ 4) =
      (4 : Real) * Real.log (A : Real) :=
    Real.log_pow (A : Real) 4
  have hratio_log : Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) =
      (13 : Real) * Real.log ((B + 3 : Nat) : Real) -
        (4 : Real) * Real.log (A : Real) := by
    rw [hlog_div, hlog_pow13, hlog_pow4]
  have hlambda : matveev_log_form A B =
      -Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) := by
    rw [hratio_log]
    unfold matveev_log_form
    ring
  have hbound := matveev_gap3_log_form_upper_bound_of_solution hsol
  have habs : |matveev_log_form A B| =
      Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) := by
    rw [hbound.2, hlambda, neg_neg]
  have heq_ratio : Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) =
      Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) := by
    rw [matveev_gap3_ratio_eq_one_plus_ratio hsol]
  exact ⟨hlambda, habs, heq_ratio⟩

/-- Upper bound side via ratio: on a solution,
    |Lambda| = log(1 + B^4 / A^4). -/
theorem matveev_gap3_abs_lambda_eq_log_one_plus_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    |matveev_log_form A B| = Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) := by
  have h := matveev_gap3_log_form_eq_log_ratio hsol
  rw [h.2.1, h.2.2]

/-! ## v24.2.2 — Logarithmic bound log(1 + x) ≤ x on gap-3 solutions

    On a gap-3 solution A^4 + B^4 = (B+3)^13:
      * log(1 + x) ≤ x for all x > -1
      * 0 < B^4 / A^4
      * 0 ≤ |Lambda|
      * |Lambda| = log(1 + B^4 / A^4) ≤ B^4 / A^4
      * B^4 / A^4 < 1 → |Lambda| < 1

    Does not use sorry. -/

/-- Real logarithm upper bound: log(1 + x) ≤ x for all x > -1. -/
theorem matveev_log_one_plus_le_self {x : Real} (hx : -1 < x) :
    Real.log (1 + x) ≤ x := by
  have hpos : (0 : Real) < 1 + x := by linarith
  have hle := Real.log_le_sub_one_of_pos hpos
  linarith

/-- On a gap-3 solution, B^4 / A^4 is strictly positive. -/
theorem matveev_gap3_B_pow_div_A_pow_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (0 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 := by
  have hB : 0 < B := matveev_gap3_B_pos_of_solution hsol
  have hBR : (0 : Real) < (B : Real) := Nat.cast_pos.mpr hB
  have hB4 : (0 : Real) < (B : Real) ^ 4 := pow_pos hBR 4
  have hA4 : (0 : Real) < (A : Real) ^ 4 := matveev_gap3_A_pow_pos hsol
  exact div_pos hB4 hA4

/-- On a gap-3 solution, |Lambda| ≥ 0 (trivial nonnegativity of absolute value). -/
theorem matveev_gap3_abs_lambda_nonneg (A B : Nat) :
    (0 : Real) ≤ |matveev_log_form A B| :=
  abs_nonneg (matveev_log_form A B)

/-- On a gap-3 solution, |Lambda| = log(1 + B^4 / A^4) ≤ B^4 / A^4. -/
theorem matveev_gap3_abs_lambda_le_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    |matveev_log_form A B| ≤ (B : Real) ^ 4 / (A : Real) ^ 4 := by
  have habs := matveev_gap3_abs_lambda_eq_log_one_plus_ratio hsol
  have hratio_pos := matveev_gap3_B_pow_div_A_pow_pos hsol
  have hgt : (-1 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 := by linarith
  have hlog_le := matveev_log_one_plus_le_self hgt
  rw [habs]
  exact hlog_le

/-- If B^4 / A^4 < 1 on a gap-3 solution, then |Lambda| < 1. -/
theorem matveev_gap3_abs_lambda_lt_one_of_small_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hsmall : (B : Real) ^ 4 / (A : Real) ^ 4 < 1) :
    |matveev_log_form A B| < 1 :=
  (matveev_gap3_abs_lambda_le_ratio hsol).trans_lt hsmall

/-! ## Named Matveev 2000 Thm 1.4 target

    On a gap-3 solution the v23 theorem
    already gives Lambda != 0.  The uniform
    lower bound |Lambda| > exp(C_exp_bound)
    is Matveev 2000 Thm 1.4 and is not in
    Mathlib 4.12.  Stays a def Prop.
    Does not inhabit baker_bound_gap3. -/

def matveev_inequality_real_target : Prop :=
  ∀ (A B : Nat),
    0 < B →
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
        |matveev_log_form A B| > Real.exp matveev_C_exp_bound

/-- Same target under the v22 name, still
    uninhabited. -/
def matveev_inequality_real_formal_remaining : Prop :=
  matveev_inequality_real_formal

/-- baker_bound_gap3 stays a def Prop. -/
def baker_bound_gap3_remaining_thm14 : Prop :=
  baker_bound_gap3

/-! ## v24.2.3 — Conditional lower bound implies ratio bound

    If the Matveev lower bound target |Lambda| > exp(C_exp_bound)
    were true on a gap-3 solution, then
    B^4 / A^4 > exp(C_exp_bound).
    Uses |Lambda| ≤ B^4 / A^4 from v24.2.2.
    matveev_inequality_real_target stays an uninhabited def Prop. -/

/-- On a gap-3 solution, if |Lambda| > target then B^4 / A^4 > target. -/
theorem matveev_conditional_lower_implies_ratio_gt_exp {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hlower : matveev_target_exp_lower < |matveev_log_form A B|) :
    matveev_target_exp_lower < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  hlower.trans_le (matveev_gap3_abs_lambda_le_ratio hsol)

/-- Same conditional ratio bound in unconditioned form on a solution. -/
theorem matveev_conditional_lower_implies_ratio_gt_exp_of_solution {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    matveev_target_exp_lower < |matveev_log_form A B| →
      matveev_target_exp_lower < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  fun hlower => matveev_conditional_lower_implies_ratio_gt_exp hsol hlower

/-- Explicit implication from the uninhabited Prop `matveev_inequality_real_target`
    and a solution to B^4 / A^4 > exp(C_exp_bound). -/
theorem matveev_gap3_ratio_lower_bound_conditional {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    Real.exp matveev_C_exp_bound < (B : Real) ^ 4 / (A : Real) ^ 4 := by
  have hB : 0 < B := matveev_gap3_B_pos_of_solution hsol
  have hgt : |matveev_log_form A B| > Real.exp matveev_C_exp_bound :=
    htarget A B hB hsol
  have hle := matveev_gap3_abs_lambda_le_ratio hsol
  exact gt_of_ge_of_gt hle hgt

/-! ## v24.3.0 — Linking conditional ratio to Baker B0

    Connecting the conditional ratio lower bound
    B^4 / A^4 > exp(C_exp_bound) with the strictly positive
    exponential lower bound 0 < exp(C_exp_bound) < B^4 / A^4,
    toward the LLL reduction to B0 = 10^6.
    Does not use sorry. -/

/-- Restatement that 0 < exp(C_exp_bound) < B^4 / A^4 conditionally on
    a solution and the Matveev lower bound target. -/
theorem matveev_gap3_conditional_ratio_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    (0 : Real) < Real.exp matveev_C_exp_bound ∧
      Real.exp matveev_C_exp_bound < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  ⟨matveev_exp_of_bound_pos, matveev_gap3_ratio_lower_bound_conditional hsol htarget⟩

/-- Conditional ratio bound implies B^4 / A^4 is strictly positive directly. -/
theorem matveev_gap3_ratio_pos_of_conditional_lower {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    (0 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  (matveev_gap3_conditional_ratio_pos hsol htarget).1.trans
    (matveev_gap3_conditional_ratio_pos hsol htarget).2

/-! ## v24.3.1 — Conditional B lower bound from Matveev ratio

    On a gap-3 solution A^4 + B^4 = (B+3)^13:
      * (A:Real)^4 = ((B+3):Real)^13 - (B:Real)^4
      * B^4 / A^4 = B^4 / ((B+3)^13 - B^4)
      * If |Lambda| > exp(C_exp_bound), then
        B^4 / ((B+3)^13 - B^4) > exp(C_exp_bound)
      * B^4 * (1 + exp(C_exp_bound)) > exp(C_exp_bound) * (B+3)^13
      * 0 < B from solution already

    Does not use sorry. -/

/-- On a solution, (A : Real)^4 equals ((B + 3 : Nat) : Real)^13 - (B : Real)^4. -/
theorem matveev_gap3_A_pow_eq_B3_pow_sub_B_pow {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (A : Real) ^ 4 = ((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4 := by
  have hcast_pow : ((B + 3 : Nat) : Real) ^ 13 =
      (A : Real) ^ 4 + (B : Real) ^ 4 := by
    have hcast : ((Nat.pow (B + 3) 13 : Nat) : Real) =
        ((Nat.pow A 4 + Nat.pow B 4 : Nat) : Real) := by
      rw [← hsol]
    push_cast at hcast
    simpa [Nat.cast_pow] using hcast
  linarith

/-- Explicit expression of the ratio B^4 / A^4 on a solution as
    (B : Real)^4 / (((B + 3 : Nat) : Real)^13 - (B : Real)^4). -/
theorem matveev_gap3_ratio_explicit {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (B : Real) ^ 4 / (A : Real) ^ 4 =
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) := by
  rw [matveev_gap3_A_pow_eq_B3_pow_sub_B_pow hsol]

/-- Conditional inequality on B from Matveev lower bound:
    on a solution, IF |Lambda| > exp(C_exp_bound),
    THEN (B : Real)^4 / (((B + 3 : Nat) : Real)^13 - (B : Real)^4) > exp(C_exp_bound),
    and cleared of denominator:
    (B : Real)^4 * (1 + Real.exp matveev_C_exp_bound) >
      Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real)^13. -/
theorem matveev_gap3_conditional_B_lower {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hlower : Real.exp matveev_C_exp_bound < |matveev_log_form A B|) :
    Real.exp matveev_C_exp_bound <
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) ∧
    Real.exp matveev_C_exp_bound * (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) <
      (B : Real) ^ 4 ∧
    Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 <
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) := by
  have hratio_gt : Real.exp matveev_C_exp_bound < (B : Real) ^ 4 / (A : Real) ^ 4 :=
    hlower.trans_le (matveev_gap3_abs_lambda_le_ratio hsol)
  have hratio_exp : (B : Real) ^ 4 / (A : Real) ^ 4 =
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) :=
    matveev_gap3_ratio_explicit hsol
  rw [hratio_exp] at hratio_gt
  have hA4_pos := matveev_gap3_A_pow_pos hsol
  have hdenom_eq := matveev_gap3_A_pow_eq_B3_pow_sub_B_pow hsol
  have hdenom_pos : (0 : Real) < ((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4 := by
    rw [← hdenom_eq]
    exact hA4_pos
  have hmul : Real.exp matveev_C_exp_bound * (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) <
      (B : Real) ^ 4 := by
    have hlt := (lt_div_iff hdenom_pos).mp hratio_gt
    exact hlt
  have hdistrib : Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 <
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) := by
    have h1 : Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 -
        Real.exp matveev_C_exp_bound * (B : Real) ^ 4 < (B : Real) ^ 4 := by
      calc Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 -
             Real.exp matveev_C_exp_bound * (B : Real) ^ 4
           _ = Real.exp matveev_C_exp_bound * (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) := by ring
           _ < (B : Real) ^ 4 := hmul
    calc Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13
         _ = (Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 -
              Real.exp matveev_C_exp_bound * (B : Real) ^ 4) +
             Real.exp matveev_C_exp_bound * (B : Real) ^ 4 := by ring
         _ < (B : Real) ^ 4 + Real.exp matveev_C_exp_bound * (B : Real) ^ 4 := by linarith
         _ = (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) := by ring
  exact ⟨hratio_gt, hmul, hdistrib⟩

/-- Form conditioned on matveev_inequality_real_target. -/
theorem matveev_gap3_conditional_B_lower_of_target {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 <
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) := by
  have hB : 0 < B := matveev_gap3_B_pos_of_solution hsol
  have hlower : Real.exp matveev_C_exp_bound < |matveev_log_form A B| :=
    htarget A B hB hsol
  exact (matveev_gap3_conditional_B_lower hsol hlower).2.2

/-- Positivity of B on a solution holding conditionally (and unconditionally). -/
theorem matveev_gap3_conditional_B_pos_lower {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (_htarget : matveev_inequality_real_target) :
    0 < B :=
  matveev_gap3_B_pos_of_solution hsol

/-! ## v24.3.2 — Numerical tiny bound exp(C_exp_bound) << 10^{-12}

    height_B0 = 104382751019310000000 > 10^20.
    log(height_B0) > 46 because exp(46) < height_B0,
    via 2^83 < 10^25 (so log 10 > 2.3) and
    log(10^20) = 20 * log 10 > 46.
    Therefore C_exp_bound = -(height_B0 * log height_B0)
    < -(10^20 * 46) ≤ -10^12, and
    0 < exp(C_exp_bound) < exp(-10^12) < 10^{-12} < 1.

    Does not inhabit |Lambda| > exp(C_exp_bound).
    Does not use sorry. -/

/-- 10^20 as a Nat, used to compare height_B0. -/
def matveev_ten_pow_20 : Nat := 100000000000000000000

theorem matveev_ten_pow_20_eq :
    matveev_ten_pow_20 = Nat.pow 10 20 := by
  decide

theorem matveev_two_pow_83_lt_ten_pow_25 :
    Nat.pow 2 83 < Nat.pow 10 25 := by
  decide

/-- height_B0 = 104382751019310000000 > 10^20. -/
theorem matveev_height_B0_gt_onee20 :
    matveev_ten_pow_20 < matveev_height_B0 := by
  decide

/-- log 10 > 23/10 = 2.3 via 2^83 < 10^25 and
    Real.log_two_gt_d9 (log 2 > 0.6931471803). -/
theorem matveev_log_ten_gt_23_div_10 :
    (23 / 10 : Real) < Real.log (10 : Real) := by
  have hnat : Nat.pow 2 83 < Nat.pow 10 25 :=
    matveev_two_pow_83_lt_ten_pow_25
  have h2 : (0 : Real) < (2 : Real) := by norm_num
  have h2pow : (0 : Real) < (2 : Real) ^ 83 := pow_pos h2 83
  have hpow : (2 : Real) ^ 83 < (10 : Real) ^ 25 := by
    exact_mod_cast hnat
  have hlog : Real.log ((2 : Real) ^ 83) < Real.log ((10 : Real) ^ 25) :=
    Real.log_lt_log h2pow hpow
  have hmul : (83 : Real) * Real.log 2 < (25 : Real) * Real.log 10 := by
    rw [Real.log_pow, Real.log_pow] at hlog
    exact hlog
  have h25 : (0 : Real) < (25 : Real) := by norm_num
  have hquot : (83 / 25 : Real) * Real.log 2 < Real.log 10 := by
    calc (83 / 25 : Real) * Real.log 2
         _ = ((83 : Real) * Real.log 2) / 25 := by ring
         _ < ((25 : Real) * Real.log 10) / 25 :=
              (div_lt_div_right h25).mpr hmul
         _ = Real.log 10 := by ring
  have hlb : (23 / 10 : Real) < (83 / 25 : Real) * (0.6931471803 : Real) := by
    norm_num
  have hscale : (83 / 25 : Real) * (0.6931471803 : Real) <
      (83 / 25 : Real) * Real.log 2 :=
    mul_lt_mul_of_pos_left Real.log_two_gt_d9 (by norm_num)
  exact hlb.trans (hscale.trans hquot)

/-- log(height_B0) > 46 via 10^20 < height_B0 and log 10 > 2.3. -/
theorem matveev_log_height_B0_gt_46 :
    (46 : Real) < Real.log (matveev_height_B0 : Real) := by
  have h10 : (0 : Real) < (10 : Real) := by norm_num
  have hpowpos : (0 : Real) < (10 : Real) ^ 20 := pow_pos h10 20
  have hnat : matveev_ten_pow_20 < matveev_height_B0 :=
    matveev_height_B0_gt_onee20
  have hpow : (10 : Real) ^ 20 < (matveev_height_B0 : Real) := by
    have hten : matveev_ten_pow_20 = Nat.pow 10 20 := matveev_ten_pow_20_eq
    rw [hten] at hnat
    exact_mod_cast hnat
  have hlog : Real.log ((10 : Real) ^ 20) <
      Real.log (matveev_height_B0 : Real) :=
    Real.log_lt_log hpowpos hpow
  have h20 : (20 : Real) * Real.log 10 <
      Real.log (matveev_height_B0 : Real) := by
    rw [Real.log_pow] at hlog
    exact hlog
  have h46 : (46 : Real) < (20 : Real) * Real.log 10 := by
    have hmul : (20 : Real) * (23 / 10 : Real) <
        (20 : Real) * Real.log 10 :=
      mul_lt_mul_of_pos_left matveev_log_ten_gt_23_div_10 (by norm_num)
    have heq : (20 : Real) * (23 / 10 : Real) = 46 := by norm_num
    rw [heq] at hmul
    exact hmul
  exact h46.trans h20

/-- exp(46) < height_B0, the exponential form of log height_B0 > 46. -/
theorem matveev_exp_46_lt_height_B0 :
    Real.exp (46 : Real) < (matveev_height_B0 : Real) := by
  have hpos : (0 : Real) < (matveev_height_B0 : Real) :=
    Nat.cast_pos.mpr
      (Nat.lt_trans (by decide : 0 < matveev_ten_pow_20)
        matveev_height_B0_gt_onee20)
  exact (Real.lt_log_iff_exp_lt hpos).1 matveev_log_height_B0_gt_46

/-- C_exp_bound < -10^12 via height_B0 > 10^20 and log height_B0 > 46,
    so height_B0 * log height_B0 > 46 * 10^20 > 10^12. -/
theorem matveev_C_exp_bound_lt_neg_1e12_of_log46 :
    matveev_C_exp_bound < -((ten_pow_12 : Nat) : Real) := by
  have h20nn : (0 : Real) ≤ ((matveev_ten_pow_20 : Nat) : Real) :=
    Nat.cast_nonneg _
  have hheight : ((matveev_ten_pow_20 : Nat) : Real) <
      (matveev_height_B0 : Real) :=
    Nat.cast_lt.mpr matveev_height_B0_gt_onee20
  have h46nn : (0 : Real) ≤ (46 : Real) := by norm_num
  have hprod : ((matveev_ten_pow_20 : Nat) : Real) * (46 : Real) <
      (matveev_height_B0 : Real) * Real.log (matveev_height_B0 : Real) :=
    mul_lt_mul'' hheight matveev_log_height_B0_gt_46 h20nn h46nn
  have h12 : ((ten_pow_12 : Nat) : Real) <
      ((matveev_ten_pow_20 : Nat) : Real) * (46 : Real) := by
    unfold ten_pow_12 matveev_ten_pow_20
    norm_num
  have hgt : ((ten_pow_12 : Nat) : Real) <
      (matveev_height_B0 : Real) * Real.log (matveev_height_B0 : Real) :=
    h12.trans hprod
  rw [matveev_C_exp_bound_eq_neg_height_mul_log]
  exact neg_lt_neg hgt

/-- C_exp_bound ≤ -10^12 from the explicit 46-log product. -/
theorem matveev_C_exp_bound_le_neg_1e12 :
    matveev_C_exp_bound ≤ -((ten_pow_12 : Nat) : Real) :=
  le_of_lt matveev_C_exp_bound_lt_neg_1e12_of_log46

/-- exp(C_exp_bound) < exp(-10^12) by monotonicity of Real.exp. -/
theorem matveev_target_exp_lower_lt_exp_neg_1e12 :
    matveev_target_exp_lower <
      Real.exp (-((ten_pow_12 : Nat) : Real)) := by
  unfold matveev_target_exp_lower
  exact Real.exp_lt_exp.mpr matveev_C_exp_bound_lt_neg_1e12_of_log46

/-- exp(-10^12) < 10^{-12} because x < exp(x) for x = 10^12. -/
theorem matveev_exp_neg_1e12_lt_inv_1e12 :
    Real.exp (-((ten_pow_12 : Nat) : Real)) <
      (1 : Real) / ((ten_pow_12 : Nat) : Real) := by
  have hx : (0 : Real) < ((ten_pow_12 : Nat) : Real) := by
    unfold ten_pow_12
    norm_num
  have hle := Real.add_one_le_exp ((ten_pow_12 : Nat) : Real)
  have hlt : ((ten_pow_12 : Nat) : Real) <
      Real.exp ((ten_pow_12 : Nat) : Real) := by linarith
  have hinv : (Real.exp ((ten_pow_12 : Nat) : Real))⁻¹ <
      ((ten_pow_12 : Nat) : Real)⁻¹ :=
    (inv_lt_inv (Real.exp_pos _) hx).mpr hlt
  rw [Real.exp_neg, one_div]
  exact hinv

/-- exp(C_exp_bound) < 10^{-12}. -/
theorem matveev_target_exp_lower_lt_onee12 :
    matveev_target_exp_lower <
      (1 : Real) / ((ten_pow_12 : Nat) : Real) :=
  matveev_target_exp_lower_lt_exp_neg_1e12.trans
    matveev_exp_neg_1e12_lt_inv_1e12

/-- Restatement 0 < exp(C_exp_bound) < 10^{-12} < 1
    with the explicit tiny upper bound for the B0 paper. -/
theorem matveev_exp_C_pos_lt_one :
    (0 : Real) < matveev_target_exp_lower ∧
      matveev_target_exp_lower <
        (1 : Real) / ((ten_pow_12 : Nat) : Real) ∧
      matveev_target_exp_lower < 1 :=
  ⟨matveev_target_exp_lower_pos,
    matveev_target_exp_lower_lt_onee12,
    matveev_target_exp_lower_lt_one⟩

/-! ## v24.4.0 — v24.x final summary

    Consolidates v24.0.0–3.2 on a gap-3 solution
    A^4 + B^4 = (B+3)^13:
      * |Lambda| = log(1 + B^4/A^4) ≤ B^4/A^4
        = B^4 / ((B+3)^13 - B^4)
      * 0 < exp(C_exp_bound) < 10^{-12} < 1
      * C_exp_bound = -(height_B0 * log height_B0)
      * height_B0 = 104382751019310000000
        = C1_floor * 30^6, 30^6 = 729000000
    IF matveev_inequality_real_target then
      0 < exp(C) < B^4/A^4 and
      B^4 * (1 + exp(C)) > exp(C) * (B+3)^13.
    Restates the conditional LLL reduction shape
    without inhabiting it.
    Does not claim the Matveev lower bound.
    Does not inhabit baker_bound_gap3.
    Does not use sorry. -/

/-- Unconditional v24.x summary on a gap-3 solution:
    the log-form upper bound, the explicit ratio,
    positivity, and the tiny displayed exponential. -/
theorem matveev_v24x_summary {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 < A ∧
    0 < B ∧
    |matveev_log_form A B| =
      Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) ∧
    |matveev_log_form A B| ≤ (B : Real) ^ 4 / (A : Real) ^ 4 ∧
    (B : Real) ^ 4 / (A : Real) ^ 4 =
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) ∧
    (0 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 ∧
    (0 : Real) < Real.exp matveev_C_exp_bound ∧
    Real.exp matveev_C_exp_bound <
      (1 : Real) / ((ten_pow_12 : Nat) : Real) ∧
    Real.exp matveev_C_exp_bound < 1 ∧
    matveev_C_exp_bound =
      -((matveev_height_B0 : Real) *
          Real.log (matveev_height_B0 : Real)) ∧
    matveev_height_B0 = 104382751019310000000 ∧
    matveev_C1_floor * matveev_thirty_pow = 104382751019310000000 ∧
    matveev_thirty_pow = 729000000 := by
  have hexp_lt : Real.exp matveev_C_exp_bound <
      (1 : Real) / ((ten_pow_12 : Nat) : Real) := by
    simpa [matveev_target_exp_lower] using
      matveev_target_exp_lower_lt_onee12
  have hprod :
      matveev_C1_floor * matveev_thirty_pow =
        104382751019310000000 := by
    rw [← matveev_height_product_link]
    exact matveev_height_B0_eq_numeral
  exact ⟨matveev_gap3_A_pos hsol,
    matveev_gap3_B_pos_of_solution hsol,
    matveev_gap3_abs_lambda_eq_log_one_plus_ratio hsol,
    matveev_gap3_abs_lambda_le_ratio hsol,
    matveev_gap3_ratio_explicit hsol,
    matveev_gap3_B_pow_div_A_pow_pos hsol,
    matveev_exp_of_bound_pos,
    hexp_lt,
    matveev_exp_of_bound_pos_lt_one,
    matveev_C_exp_bound_eq_neg_height_mul_log,
    matveev_height_B0_eq_numeral,
    hprod,
    matveev_thirty_pow_eq_729000000⟩

/-- Conditional v24.x summary: IF the uninhabited
    Matveev target holds on a solution, THEN
    0 < exp(C) < B^4/A^4 and the cleared B inequality.
    Does not claim the Matveev lower bound. -/
theorem matveev_v24x_conditional_summary {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    (0 : Real) < Real.exp matveev_C_exp_bound ∧
      Real.exp matveev_C_exp_bound <
        (B : Real) ^ 4 / (A : Real) ^ 4 ∧
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) >
        Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 :=
  ⟨matveev_exp_of_bound_pos,
    matveev_gap3_ratio_lower_bound_conditional hsol htarget,
    matveev_gap3_conditional_B_lower_of_target hsol htarget⟩

/-- Restatement of the conditional LLL reduction shape.
    Still uninhabited: this is definitional equality,
    not an inhabitation of baker_bound_gap3. -/
theorem bugeaud_v24x_final_link :
    bugeaud_LLL_reduction_conditional ↔
      (matveev_inequality_real_formal →
        ∃ B_reduced : Nat,
          B_reduced ≤ bugeaud_B0 ∧
          ∀ A B : Nat,
            Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
              B ≤ bugeaud_B0 →
              B ≤ B_reduced) :=
  Iff.rfl

#check matveev_C1_floor_eq
#check matveev_thirty_pow_eq_30_pow_6
#check matveev_thirty_pow_eq_729000000
#check matveev_thirty_pow_ne_72900000
#check matveev_height_B0_eq_numeral
#check tate_survivor_63982
#check matveev_thm14_bugeaud_LLL_basis_holds
#check matveev_C1_floor_pos
#check matveev_thirty_pow_pos
#check matveev_thirty_pow_eq_typo_times_ten
#check matveev_height_log_pos
#check matveev_exp_bound_neg
#check matveev_height_B0_gt_two
#check matveev_log_height_monotone
#check matveev_C_exp_bound_lt_zero_of_pos_log
#check matveev_exp_bound_lt_zero
#check matveev_exp_of_bound_pos_lt_one
#check matveev_exp_of_bound_pos
#check matveev_C_exp_bound_le_neg_onee12
#check matveev_target_exp_lower
#check matveev_C1_floor_mul_thirty_pow_div10
#check matveev_C1_floor_mul_thirty_pow
#check matveev_C1_floor_mul_thirty_pow_div10_times_ten
#check matveev_C1_floor_mul_thirty_pow_div10_ne_height
#check matveev_height_product_link
#check matveev_C_exp_bound_eq_neg_height_mul_log
#check matveev_C_exp_bound_eq_neg_height_log
#check matveev_target_exp_lower_eq
#check matveev_height_B0_mul_log_pos
#check matveev_C_exp_bound_neg_of_mul_log_pos
#check matveev_gap3_B_pos_of_solution
#check matveev_gap3_A_pos
#check matveev_gap3_A_pos_of_pos_B
#check matveev_gap3_log_form_upper_bound
#check matveev_gap3_log_form_upper_bound_expanded
#check matveev_gap3_log_form_upper_bound_of_solution
#check matveev_exp_lower_lt_one_and_pos
#check matveev_gap3_A_pow_pos
#check matveev_gap3_B3_pow_pos
#check matveev_gap3_ratio_eq_one_plus_ratio
#check matveev_gap3_log_form_eq_log_ratio
#check matveev_gap3_abs_lambda_eq_log_one_plus_ratio
#check matveev_log_one_plus_le_self
#check matveev_gap3_B_pow_div_A_pow_pos
#check matveev_gap3_abs_lambda_nonneg
#check matveev_gap3_abs_lambda_le_ratio
#check matveev_gap3_abs_lambda_lt_one_of_small_ratio
#check matveev_conditional_lower_implies_ratio_gt_exp
#check matveev_conditional_lower_implies_ratio_gt_exp_of_solution
#check matveev_gap3_ratio_lower_bound_conditional
#check matveev_gap3_conditional_ratio_pos
#check matveev_gap3_ratio_pos_of_conditional_lower
#check matveev_gap3_A_pow_eq_B3_pow_sub_B_pow
#check matveev_gap3_ratio_explicit
#check matveev_gap3_conditional_B_lower
#check matveev_gap3_conditional_B_lower_of_target
#check matveev_gap3_conditional_B_pos_lower
#check matveev_ten_pow_20
#check matveev_ten_pow_20_eq
#check matveev_two_pow_83_lt_ten_pow_25
#check matveev_height_B0_gt_onee20
#check matveev_log_ten_gt_23_div_10
#check matveev_log_height_B0_gt_46
#check matveev_exp_46_lt_height_B0
#check matveev_C_exp_bound_lt_neg_1e12_of_log46
#check matveev_C_exp_bound_le_neg_1e12
#check matveev_target_exp_lower_lt_exp_neg_1e12
#check matveev_exp_neg_1e12_lt_inv_1e12
#check matveev_target_exp_lower_lt_onee12
#check matveev_exp_C_pos_lt_one
#check matveev_v24x_summary
#check matveev_v24x_conditional_summary
#check bugeaud_v24x_final_link
#check matveev_inequality_real_target
#check baker_bound_gap3_remaining_thm14
#print axioms matveev_C1_floor_eq
#print axioms matveev_thirty_pow_eq_30_pow_6
#print axioms matveev_thirty_pow_eq_729000000
#print axioms matveev_thirty_pow_ne_72900000
#print axioms matveev_thirty_pow_eq_typo_times_ten
#print axioms matveev_C1_floor_pos
#print axioms matveev_thirty_pow_pos
#print axioms matveev_height_B0_eq_numeral
#print axioms matveev_c4_scale_eq_16
#print axioms tate_survivor_63982
#print axioms matveev_thm14_bugeaud_K_eq
#print axioms matveev_thm14_bugeaud_LLL_basis_holds
#print axioms matveev_thm14_log_form_int_ne_zero_zero
#print axioms matveev_thm14_log_form_int_ne_zero_fourteen
#print axioms matveev_thm14_height_gt_onee12
#print axioms matveev_height_log_pos
#print axioms matveev_exp_bound_neg
#print axioms matveev_height_B0_gt_two
#print axioms matveev_log_height_monotone
#print axioms matveev_C_exp_bound_lt_zero_of_pos_log
#print axioms matveev_exp_bound_lt_zero
#print axioms matveev_exp_of_bound_pos_lt_one
#print axioms matveev_exp_of_bound_pos
#print axioms matveev_C_exp_bound_le_neg_onee12
#print axioms matveev_target_exp_lower_pos
#print axioms matveev_target_exp_lower_lt_one
#print axioms matveev_C1_floor_mul_thirty_pow_div10
#print axioms matveev_C1_floor_mul_thirty_pow
#print axioms matveev_C1_floor_mul_thirty_pow_div10_times_ten
#print axioms matveev_C1_floor_mul_thirty_pow_div10_ne_height
#print axioms matveev_height_product_link
#print axioms matveev_C_exp_bound_eq_neg_height_mul_log
#print axioms matveev_C_exp_bound_eq_neg_height_log
#print axioms matveev_target_exp_lower_eq
#print axioms matveev_height_B0_mul_log_pos
#print axioms matveev_C_exp_bound_neg_of_mul_log_pos
#print axioms matveev_gap3_B_pos_of_solution
#print axioms matveev_gap3_A_pos
#print axioms matveev_gap3_A_pos_of_pos_B
#print axioms matveev_gap3_log_form_upper_bound
#print axioms matveev_gap3_log_form_upper_bound_expanded
#print axioms matveev_gap3_log_form_upper_bound_of_solution
#print axioms matveev_exp_lower_lt_one_and_pos
#print axioms matveev_gap3_A_pow_pos
#print axioms matveev_gap3_B3_pow_pos
#print axioms matveev_gap3_ratio_eq_one_plus_ratio
#print axioms matveev_gap3_log_form_eq_log_ratio
#print axioms matveev_gap3_abs_lambda_eq_log_one_plus_ratio
#print axioms matveev_log_one_plus_le_self
#print axioms matveev_gap3_B_pow_div_A_pow_pos
#print axioms matveev_gap3_abs_lambda_nonneg
#print axioms matveev_gap3_abs_lambda_le_ratio
#print axioms matveev_gap3_abs_lambda_lt_one_of_small_ratio
#print axioms matveev_conditional_lower_implies_ratio_gt_exp
#print axioms matveev_conditional_lower_implies_ratio_gt_exp_of_solution
#print axioms matveev_gap3_ratio_lower_bound_conditional
#print axioms matveev_gap3_conditional_ratio_pos
#print axioms matveev_gap3_ratio_pos_of_conditional_lower
#print axioms matveev_gap3_A_pow_eq_B3_pow_sub_B_pow
#print axioms matveev_gap3_ratio_explicit
#print axioms matveev_gap3_conditional_B_lower
#print axioms matveev_gap3_conditional_B_lower_of_target
#print axioms matveev_gap3_conditional_B_pos_lower
#print axioms matveev_ten_pow_20_eq
#print axioms matveev_two_pow_83_lt_ten_pow_25
#print axioms matveev_height_B0_gt_onee20
#print axioms matveev_log_ten_gt_23_div_10
#print axioms matveev_log_height_B0_gt_46
#print axioms matveev_exp_46_lt_height_B0
#print axioms matveev_C_exp_bound_lt_neg_1e12_of_log46
#print axioms matveev_C_exp_bound_le_neg_1e12
#print axioms matveev_target_exp_lower_lt_exp_neg_1e12
#print axioms matveev_exp_neg_1e12_lt_inv_1e12
#print axioms matveev_target_exp_lower_lt_onee12
#print axioms matveev_exp_C_pos_lt_one
#print axioms matveev_v24x_summary
#print axioms matveev_v24x_conditional_summary
#print axioms bugeaud_v24x_final_link
#print axioms matveev_thm14_C_exp_bound_lt_neg_onee12
#print axioms matveev_thm14_constants_hold

end BealLevel26Foundations.BealMatveevThm14
