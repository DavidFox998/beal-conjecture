/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.23.0 — plan odd-`A` closure
for the last odd branch.

Inhabited:
`S_bounds_13_B12_le_S_le_13_C12`
(`13 B¹² ≤ S ≤ 13 C¹²` when `B < C`);
`k_almost_fourth_power_shape`
(`k = u⁴` or `13 u⁴` or `13³ u⁴`;
**not** `∃ g, g ∣ 13`, which excludes `13³`);
`k_le_A4_div_13_B12`;
`B_gt_100_k_bounded`;
`k_ge_B_imp_A_ge_9B3`.

Keeps v8.22.1 `oddPart_rec` /
`even_not_pow2_has_odd_prime_q` /
`level_2q_of_odd_prime_dvd_A`,
v8.22.0 radical `N'`,
v8.21.1 `frey_curve_conductor`,
v8.21.0 `k` bounds,
v8.20.1 `B ≤ 100` (with the honest
`S_not_fourth` hypothesis on `C ≥ B+3`),
v8.20.0 `gcd(k,S) ∣ 13`,
`genus_X0_2_rat = 0`.

Uninhabited (honest):
`zsigmondy_prime_S`,
`zsig_p_not_dvd_k`,
`S_not_fourth_power_of_zsig`,
`S_times_g_not_fourth`,
`beal_odd_A_ge3_B_gt_100_closed`,
`beal_odd_A_closed_v8_23_0`,
`beal_4_13_13_full_closed_mod_modular`,
`beal_4_13_13_Zsigmondy_13_odd_A_closure_plan`.
Plus v8.22.1 Kraus / `X₀(2q)` and
v8.21.1 Modular W (`0 ≠ 0`).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p² ∣ S`
(Hensel lifts exist).
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (S_13 C13_sub_B13_eq_sub_mul_S)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
  (S_13_ge_13_mul_B_pow12)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
  (k_mul_S_eq_A_pow4 k_almost_fourth_power)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan
  (k_le_A_pow4_div_13_B_pow12 B_gt_100_imp_k_bounded_by_A
    S_13_le_13_mul_C_pow12 S_13_ge_8191_mul_B_pow12_of_C_ge_2B
    nine_pow_four A_ge_53_of_S_prime)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (beal_4_13_13_B_le_100_closed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (oddPart_rec rad oddPart_def rad_dvd_pow
    even_not_pow2_has_odd_prime_q level_2q_of_odd_prime_dvd_A
    kraus_criterion_q_ne_13 X0_2q_no_Frey_match
    beal_even_not_pow2_general_q_False
    beal_even_A_closed_v8_22_1
    beal_4_13_13_X0_2q_Darmon_Merel_plan)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (even_not_pow2_has_odd_prime frey_conductor_even_A
    minimal_level_26_of_13_dvd_A level_at_least_6_of_even_not_pow2
    X0_26_no_matching_newform)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift
    ribet_level_lowering_to_2 X0_2_no_newforms)

/-! ## Inhabited S-bounds and k-shape -/

theorem S_eq_div_of_B_lt_C (B C : Nat) (hBltC : B < C) :
    (C ^ 13 - B ^ 13) / (C - B) = S_13 C B := by
  have hpos : 0 < C - B := Nat.sub_pos_of_lt hBltC
  have hmul : (C - B) * S_13 C B = C ^ 13 - B ^ 13 :=
    (C13_sub_B13_eq_sub_mul_S C B).symm
  have hcancel :
      (C - B) * S_13 C B / (C - B) = S_13 C B :=
    Nat.mul_div_cancel_left (S_13 C B) hpos
  have hcong :
      (C ^ 13 - B ^ 13) / (C - B) =
        (C - B) * S_13 C B / (C - B) :=
    congrArg (fun t => t / (C - B)) hmul.symm
  exact hcong.trans hcancel

/-- When `B < C`, the cyclotomic sum
`S = (C¹³ − B¹³)/(C − B)` sits between
`13 B¹²` and `13 C¹²`. -/
theorem S_bounds_13_B12_le_S_le_13_C12 (B C : Nat)
    (hBltC : B < C) :
    13 * B ^ 12 ≤ (C ^ 13 - B ^ 13) / (C - B) ∧
      (C ^ 13 - B ^ 13) / (C - B) ≤ 13 * C ^ 12 := by
  have hBC : B ≤ C := Nat.le_of_lt hBltC
  have hS : (C ^ 13 - B ^ 13) / (C - B) = S_13 C B :=
    S_eq_div_of_B_lt_C B C hBltC
  refine ⟨?_, ?_⟩
  · rw [hS]
    exact S_13_ge_13_mul_B_pow12 C B hBC
  · rw [hS]
    exact S_13_le_13_mul_C_pow12 C B hBC

/-- `gcd(k,S) ∣ 13` and `A⁴ = k S` force
`k = u⁴` or `13 u⁴` or `13³ u⁴`.
This is **not** `∃ g, g ∣ 13`, which
would drop the honest `13³` arm. -/
theorem k_almost_fourth_power_shape (A k S : Nat)
    (hEq : A ^ 4 = k * S) (hgcd : Nat.gcd k S ∣ 13) :
    (∃ u, k = u ^ 4) ∨ (∃ u, k = 13 * u ^ 4) ∨
      (∃ u, k = 13 ^ 3 * u ^ 4) :=
  k_almost_fourth_power k S A hEq.symm hgcd

theorem k_le_A4_div_13_B12 (A B k S : Nat)
    (hA4 : A ^ 4 = k * S) (hSlow : 13 * B ^ 12 ≤ S)
    (hBpos : 0 < B) :
    k ≤ A ^ 4 / (13 * B ^ 12) :=
  k_le_A_pow4_div_13_B_pow12 A B k S hA4 hSlow hBpos

/-- `B > 100` and `k ≤ A⁴/(13 B¹²)` freeze the
denominator at `100¹²`. -/
theorem B_gt_100_k_bounded (A B k : Nat)
    (hBgt : 100 < B)
    (hkle : k ≤ A ^ 4 / (13 * B ^ 12)) :
    k ≤ A ^ 4 / (13 * 100 ^ 12) := by
  have h100 : 100 ≤ B := Nat.le_of_succ_le hBgt
  have hpow : 100 ^ 12 ≤ B ^ 12 := Nat.pow_le_pow_left h100 12
  have hden : 13 * 100 ^ 12 ≤ 13 * B ^ 12 :=
    Nat.mul_le_mul_left 13 hpow
  have h100pow : 0 < 100 ^ 12 :=
    Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 1)
      (Nat.one_le_pow 12 100 (by decide : (0 : Nat) < 100))
  have hpos : 0 < 13 * 100 ^ 12 :=
    Nat.mul_pos (by decide : (0 : Nat) < 13) h100pow
  have hdiv :
      A ^ 4 / (13 * B ^ 12) ≤ A ^ 4 / (13 * 100 ^ 12) :=
    Nat.div_le_div_left hden hpos
  exact hkle.trans hdiv

/-- `C ≥ 2 B` on a Beal `(4,13,13)` triple
forces `A ≥ 9 B³`. -/
theorem k_ge_B_imp_A_ge_9B3 (A B C : Nat)
    (hEq : A ^ 4 + B ^ 13 = C ^ 13) (hCge2B : 2 * B ≤ C) :
    9 * B ^ 3 ≤ A := by
  by_cases hB0 : B = 0
  · simp [hB0]
  · have hBpos : 0 < B := Nat.pos_of_ne_zero hB0
    have hB2 : B ≤ 2 * B :=
      Nat.le_mul_of_pos_left B (by decide : (0 : Nat) < 2)
    have hBleC : B ≤ C := hB2.trans hCge2B
    set k := C - B
    have hC : C = B + k := (Nat.add_sub_of_le hBleC).symm
    have hkB : B ≤ k := by
      have h2 : B + B ≤ C := by
        rwa [← Nat.two_mul]
      exact (Nat.le_sub_iff_add_le hBleC).mpr h2
    have hSge : 8191 * B ^ 12 ≤ S_13 C B :=
      S_13_ge_8191_mul_B_pow12_of_C_ge_2B C B hCge2B
    have hprod : A ^ 4 = k * S_13 C B :=
      k_mul_S_eq_A_pow4 A B C k hEq hC
    have hA4 : 8191 * B ^ 13 ≤ A ^ 4 := by
      have hB13 : B * (8191 * B ^ 12) = 8191 * B ^ 13 := by
        have hpow : B ^ 12 * B = B ^ 13 := (Nat.pow_succ B 12).symm
        rw [← Nat.mul_assoc, Nat.mul_comm B 8191, Nat.mul_assoc,
          Nat.mul_comm B (B ^ 12), hpow]
      calc
        8191 * B ^ 13 = B * (8191 * B ^ 12) := hB13.symm
        _ ≤ k * (8191 * B ^ 12) := Nat.mul_le_mul_right _ hkB
        _ ≤ k * S_13 C B := Nat.mul_le_mul_left k hSge
        _ = A ^ 4 := hprod.symm
    have h6561 : 6561 * B ^ 12 ≤ 8191 * B ^ 13 := by
      have hcoeff : 6561 ≤ 8191 * B :=
        (Nat.le_mul_of_pos_right 8191 hBpos).trans'
          (by decide : (6561 : Nat) ≤ 8191)
      calc
        6561 * B ^ 12 ≤ (8191 * B) * B ^ 12 :=
          Nat.mul_le_mul_right (B ^ 12) hcoeff
        _ = 8191 * (B * B ^ 12) := Nat.mul_assoc _ _ _
        _ = 8191 * (B ^ 12 * B) := by rw [Nat.mul_comm B]
        _ = 8191 * B ^ 13 := by rw [(Nat.pow_succ B 12).symm]
    have hpow : (9 * B ^ 3) ^ 4 ≤ A ^ 4 := by
      have hexpand : (9 * B ^ 3) ^ 4 = 6561 * B ^ 12 := by
        rw [Nat.mul_pow, nine_pow_four, ← Nat.pow_mul]
      exact hexpand ▸ (h6561.trans hA4)
    exact (Nat.pow_le_pow_iff_left (by decide : (4 : Nat) ≠ 0)).mp hpow

/-! ## Honesty lock and uninhabited Zsigmondy / S_not_fourth arrows -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Bundled Zsigmondy prime of `S`
with `p ≡ 1 [MOD 13]`. -/
def zsigmondy_prime_S : Prop :=
  ∀ B C : Nat, B < C →
    ∃ p, Nat.Prime p ∧ p % 13 = 1 ∧
      p ∣ (C ^ 13 - B ^ 13) / (C - B) ∧ ¬ p ∣ (C - B)

/-- Uninhabited.  Such a `p ≠ 13` does not divide `k`. -/
def zsig_p_not_dvd_k : Prop :=
  ∀ k S p : Nat,
    Nat.gcd k S ∣ 13 → Nat.Prime p → p ≠ 13 → p ∣ S →
    ¬ p ∣ k

/-- Uninhabited.  Needs a genuine `v_p(S) = 1`
hypothesis; `True` is not that lock.
Unconditional `¬ p² ∣ S` is false (Hensel). -/
def S_not_fourth_power_of_zsig : Prop :=
  ∀ B C S p : Nat,
    S = (C ^ 13 - B ^ 13) / (C - B) →
    Nat.Prime p → p ∣ S → p % 13 = 1 → p ≠ 13 →
    ¬ ∃ v, S = v ^ 4

/-- Uninhabited.  `S · g` is not a fourth power
for `g ∣ 13` without `v_p = 1`. -/
def S_times_g_not_fourth : Prop :=
  ∀ S g p : Nat,
    Nat.Prime p → p ∣ S → p ≠ 13 → g ∣ 13 →
    ¬ ∃ w, S * g = w ^ 4

/-- Uninhabited.  `B > 100` still needs
`S_not_fourth` plus Modular W. -/
def beal_odd_A_ge3_B_gt_100_closed : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → 100 < B →
    False

/-- Uninhabited.  Odd-`A` close packages the
uninhabited `B > 100` lock. -/
def beal_odd_A_closed_v8_23_0 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A →
    False

/-- Uninhabited.  Even-`A` close is still a Prop
from v8.22.1, and odd-`A` close is still a Prop. -/
def beal_4_13_13_full_closed_mod_modular : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closure_plan : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

#check S_bounds_13_B12_le_S_le_13_C12
#check k_almost_fourth_power_shape
#check k_le_A4_div_13_B12
#check B_gt_100_k_bounded
#check k_ge_B_imp_A_ge_9B3
#check oddPart_rec
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check even_not_pow2_has_odd_prime
#check frey_conductor_even_A
#check minimal_level_26_of_13_dvd_A
#check frey_curve_conductor
#check A_ge_53_of_S_prime
#check B_gt_100_imp_k_bounded_by_A
#check beal_4_13_13_B_le_100_closed
#check zsigmondy_prime_S
#check zsig_p_not_dvd_k
#check S_not_fourth_power_of_zsig
#check S_times_g_not_fourth
#check beal_odd_A_ge3_B_gt_100_closed
#check beal_odd_A_closed_v8_23_0
#check beal_4_13_13_full_closed_mod_modular
#check beal_4_13_13_Zsigmondy_13_odd_A_closure_plan
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check X0_26_no_matching_newform
#check modular_W_lift
#check ribet_level_lowering_to_2
#check X0_2_no_newforms
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_bounds_13_B12_le_S_le_13_C12
#print axioms k_almost_fourth_power_shape
#print axioms k_le_A4_div_13_B12
#print axioms B_gt_100_k_bounded
#print axioms k_ge_B_imp_A_ge_9B3
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
