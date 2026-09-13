/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.24.1 — glue Zsigmondy primitive
existence, Hensel-conditional `v_p = 1`,
and the `of_vp1` close.

The sketch `hPrimOrder : True` is junk:
a primitive prime of `S` does **not**
force `v_p(S) = 1`.  Hensel lifts exist.

The honest glue is
`zsigmondy_exists_primitive_inhabited`
+ `primitive_prime_not_dvd_bases`
+ `zsigmondy_vp_S_eq_one_inhabited`
(order in `(ZMod (p^2))ˣ` is not 13)
+ `beal_odd_A_ge3_closed_of_vp1`.

Inhabited:
`S_val`, `S_bounds`,
`thirteen_dvd_S_of_BeqC_mod13`,
`gcd_k_S_dvd_13_honest`,
`k_shape_1_13_13cubed`,
`zsigmondy_exists_primitive_inhabited`,
`zsig_p_not_dvd_k_of_gcd_inhabited`,
`S_times_g_not_fourth_of_vp1_inhabited`,
`zsigmondy_vp_S_eq_one_inhabited`,
`primitive_prime_not_dvd_bases`,
`beal_odd_A_ge3_closed_of_vp1_inhabited`,
`beal_odd_A_closed_via_zsig_hensel`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel`.

Keeps v8.24.0 primitive / `of_vp1`,
v8.23.1 S-bounds / k-shape,
v8.22.1 `oddPart_rec` / `2q`,
v8.22.0 radical `N'`,
v8.21.1 `frey_curve_conductor`,
v8.20.1 `B ≤ 100` (with the honest
`S_not_fourth` hypothesis on `C ≥ B+3`),
`genus_X0_2_rat = 0`.

Uninhabited (honest):
bare `beal_odd_A_ge3_B_le_100_closed`
without `S_not_fourth` on `C ≥ B+3`;
bare `beal_odd_A_ge3_closed_of_vp1`
without `v_p = 1` (sketch `B > 100`);
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`.
Plus Kraus / `X0(2q)`, `X0(26)` matching,
and Modular W (`0 ≠ 0`).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p^2 ∣ S`.
Does **not** inhabit a new Beal `∀`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds k_shape_1_13_13cubed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
  (thirteen_dvd_S_of_BeqC_mod13 gcd_k_S_dvd_13_honest
    zsigmondy_exists_primitive_inhabited
    zsigmondy_vp_S_eq_one_inhabited
    zsig_p_not_dvd_k_of_gcd_inhabited
    S_times_g_not_fourth_of_vp1_inhabited
    beal_odd_A_ge3_closed_of_vp1
    beal_odd_A_ge3_B_gt_100_closed_of_vp1
    B_lt_C_of_beal_A_ge3 B_ge_one_of_beal_A_ge3)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
  (S_bounds_13_B12_le_S_le_13_C12)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (oddPart_rec even_not_pow2_has_odd_prime_q
    level_2q_of_odd_prime_dvd_A
    kraus_criterion_q_ne_13 X0_2q_no_Frey_match
    beal_even_A_closed_v8_22_1)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (frey_conductor_even_A X0_26_no_matching_newform)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (order_mod_p2 coprime_pow_two_of_not_dvd
    beal_4_13_13_B_le_100_closed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
  (not_dvd_base_of_dvd_pow_sub)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (C13_sub_B13_eq_sub_mul_S S_13)

/-! ## Inhabited glue: bases of a primitive prime -/

/-- A prime dividing `S` cannot divide `B` or `C`
when `B < C` and `Coprime B C`.  Wraps
`not_dvd_base_of_dvd_pow_sub`. -/
theorem primitive_prime_not_dvd_bases
    (B C p : Nat) (hPrime : Nat.Prime p) (hBltC : B < C)
    (hCop : Nat.Coprime B C) (hpS : p ∣ S_val B C) :
    ¬ p ∣ C ∧ ¬ p ∣ B := by
  have hS : S_val B C = S_13 C B :=
    S_val_eq_S_13_of_B_lt_C B C hBltC
  have hEq : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  have hpDiff : p ∣ C ^ 13 - B ^ 13 := by
    rw [hEq, ← hS]
    exact dvd_mul_of_dvd_right hpS _
  exact not_dvd_base_of_dvd_pow_sub hPrime
    (by decide : (0 : Nat) < 13) hCop.symm hBltC hpDiff

/-- Sketch name, honest type: needs a real
`v_p(S) = 1`, not the sketch `B > 100` slot
without that valuation. -/
theorem beal_odd_A_ge3_closed_of_vp1_inhabited
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hAge3 : 3 ≤ A) (hCop : Nat.Coprime B C)
    (hvp1 : ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
      Nat.factorization (S_val B C) p = 1 ∧ p % 13 = 1) :
    False :=
  beal_odd_A_ge3_closed_of_vp1 A B C hEq hOddA hAge3 hCop hvp1

/-- Honest glue of the three inhabited pieces.
The remaining lock is the Step11 order in
`(ZMod (p^2))ˣ`: **not** `hPrimOrder : True`. -/
theorem beal_odd_A_closed_via_zsig_hensel
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hAge3 : 3 ≤ A) (hCop : Nat.Coprime B C)
    (hHensel :
      ∀ (p : Nat) (hPrime : Nat.Prime p)
        (hpS : p ∣ S_val B C) (hpnot : ¬ p ∣ (C - B))
        (hNotDvdC : ¬ p ∣ C) (hNotDvdB : ¬ p ∣ B),
      order_mod_p2 C B p
        (coprime_pow_two_of_not_dvd hPrime hNotDvdC)
        (coprime_pow_two_of_not_dvd hPrime hNotDvdB) ≠ 13) :
    False := by
  have hBltC : B < C := B_lt_C_of_beal_A_ge3 A B C hEq hAge3
  have hBge1 : 1 ≤ B := B_ge_one_of_beal_A_ge3 A B C hEq hAge3 hCop
  obtain ⟨p, hPrime, hpS, hpnot, hpmod, hpne13⟩ :=
    zsigmondy_exists_primitive_inhabited B C hBltC hCop hBge1
  have hbases :=
    primitive_prime_not_dvd_bases B C p hPrime hBltC hCop hpS
  have hvp1 :=
    zsigmondy_vp_S_eq_one_inhabited B C p hPrime hpS hpnot hpne13
      hBltC hbases.1 hbases.2
      (hHensel p hPrime hpS hpnot hbases.1 hbases.2)
  exact beal_odd_A_ge3_closed_of_vp1_inhabited A B C hEq hOddA hAge3 hCop
    ⟨p, hPrime, hpS, hvp1, hpmod⟩

/-- Public inhabited name: odd `A ≥ 3` closes
once the Hensel / `(ZMod (p^2))ˣ` lock is given. -/
theorem beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (hCop : Nat.Coprime B C) (hOddA : Odd A) (hAge3 : 3 ≤ A)
    (hHensel :
      ∀ (p : Nat) (hPrime : Nat.Prime p)
        (hpS : p ∣ S_val B C) (hpnot : ¬ p ∣ (C - B))
        (hNotDvdC : ¬ p ∣ C) (hNotDvdB : ¬ p ∣ B),
      order_mod_p2 C B p
        (coprime_pow_two_of_not_dvd hPrime hNotDvdC)
        (coprime_pow_two_of_not_dvd hPrime hNotDvdB) ≠ 13) :
    False :=
  beal_odd_A_closed_via_zsig_hensel A B C hEq hOddA hAge3 hCop hHensel

/-! ## Honesty lock and uninhabited bare closes -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Bare `B ≤ 100` close still needs
the honest `S_not_fourth` hypothesis on `C ≥ B+3`. -/
def beal_odd_A_ge3_B_le_100_closed : Prop :=
  ∀ A B C : Nat,
    Odd A → 3 ≤ A → B ≤ 100 →
    A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited.  Sketch `B > 100` close without
`v_p = 1` and without Hensel. -/
def beal_odd_A_ge3_closed_of_vp1_inhabited_bare : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → 100 < B → Nat.Coprime B C →
    False

/-- Uninhabited.  Sketch bare odd-`A` close. -/
def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C →
    False

/-- Uninhabited.  Even-`A` close is still a Prop
from v8.22.1. -/
def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

/-- Uninhabited public API.  Bare odd-`A` close
without Hensel would be a new Beal `∀`. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

#check S_val
#check S_bounds
#check thirteen_dvd_S_of_BeqC_mod13
#check gcd_k_S_dvd_13_honest
#check k_shape_1_13_13cubed
#check zsigmondy_exists_primitive_inhabited
#check zsigmondy_vp_S_eq_one_inhabited
#check zsig_p_not_dvd_k_of_gcd_inhabited
#check S_times_g_not_fourth_of_vp1_inhabited
#check primitive_prime_not_dvd_bases
#check beal_odd_A_ge3_closed_of_vp1_inhabited
#check beal_odd_A_closed_via_zsig_hensel
#check beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel
#check S_bounds_13_B12_le_S_le_13_C12
#check oddPart_rec
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check frey_conductor_even_A
#check frey_curve_conductor
#check beal_4_13_13_B_le_100_closed
#check beal_odd_A_ge3_B_le_100_closed
#check beal_odd_A_ge3_closed_of_vp1_inhabited_bare
#check beal_odd_A_closed_v8_24_0_inhabited
#check beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited
#check beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check X0_26_no_matching_newform
#check modular_W_lift
#check beal_even_A_closed_v8_22_1
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_bounds
#print axioms thirteen_dvd_S_of_BeqC_mod13
#print axioms gcd_k_S_dvd_13_honest
#print axioms zsigmondy_exists_primitive_inhabited
#print axioms primitive_prime_not_dvd_bases
#print axioms beal_odd_A_ge3_closed_of_vp1_inhabited
#print axioms beal_odd_A_closed_via_zsig_hensel
#print axioms beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real
