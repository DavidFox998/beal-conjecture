/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.36.0 — B ≤ 100 order ≠ 13
from the exp-one table (from Step29,
not a ∀ close).

HasPrimeWithExpOne gives p² ∤ S.
The Step11 dichotomy says
p² ∣ S ↔ order(C · B⁻¹ mod p²) = 13.
So each named exp-one row has
order ≠ 13, hence v_p(S) = 1 and
S is not a fourth power.

Rows:
(1,4) p=2731, (1,5) Pratt prime,
(1,8) p=79, (2,5) Pratt prime,
(4,7) p=53, (5,8) p=53,
(10,13) p=53, (100,103) p=599.

This is not “every B ≤ 100”.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 100 squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren ∀ stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one
import Mathlib.Tactic

set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 S_not_fourth S_not_fourth_of_order_ne_13
    hensel_lift_example_B1_C460_p53)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track
  (S_val_1_5_prime S_val_1_5_not_dvd_gap S_val_1_5_not_dvd_C
    S_val_1_5_not_dvd_B S_val_1_5_ne_thirteen S_val_1_5_not_p_sq_dvd
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C5)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (HasPrimeWithExpOne exists_p_with_order_ne_13_of_has_exp_one)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
  (p_dvd_S_val_of_pow13_eq not_p_sq_dvd_S_val_of_pow13_ne
    prime_2731 prime_79 prime_53 prime_599
    S_val_2_5 S_val_2_5_prime
    lt_1_4 lt_1_8 lt_4_7 lt_5_8 lt_10_13 lt_100_103
    coprime_1_4_2731 coprime_1_8_79 coprime_4_7_53
    coprime_5_8_53 coprime_10_13_53 coprime_100_103_599
    sq_79 sq_53 sq_599
    zmod_1_8_79 zmod_1_8_6241
    zmod_4_7_53 zmod_4_7_2809
    zmod_5_8_53 zmod_5_8_2809
    zmod_10_13_53 zmod_10_13_2809
    zmod_100_103_599 zmod_100_103_358801
    not_dvd_4_2731 not_dvd_1_2731 ne_13_2731
    S_val_1_4_dvd S_val_1_4_not_sq
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
    S_has_prime_with_exp_one_B_le_100_table_rows)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one
  (not_proper_prime_power_of_has_exp_one
    S_not_proper_prime_power_B_le_100_from_exp_one_table_rows)

/-! ## Side conditions (small numerals only) -/

theorem ne_13_79 : (79 : Nat) ≠ 13 := by decide
theorem not_dvd_8_79 : ¬ 79 ∣ 8 := by decide
theorem not_dvd_1_79 : ¬ 79 ∣ 1 := by decide

theorem ne_13_53 : (53 : Nat) ≠ 13 := by decide
theorem not_dvd_7_53 : ¬ 53 ∣ 7 := by decide
theorem not_dvd_4_53 : ¬ 53 ∣ 4 := by decide
theorem not_dvd_8_53 : ¬ 53 ∣ 8 := by decide
theorem not_dvd_5_53 : ¬ 53 ∣ 5 := by decide
theorem not_dvd_13_53 : ¬ 53 ∣ 13 := by decide
theorem not_dvd_10_53 : ¬ 53 ∣ 10 := by decide

theorem ne_13_599 : (599 : Nat) ≠ 13 := by decide
theorem not_dvd_103_599 : ¬ 599 ∣ 103 := by decide
theorem not_dvd_100_599 : ¬ 599 ∣ 100 := by decide

theorem lt_2_5 : (2 : Nat) < 5 := by decide

theorem S_val_2_5_ne_thirteen : S_val 2 5 ≠ 13 := by
  rw [S_val_2_5]
  decide

theorem S_val_2_5_not_dvd_gap : ¬ S_val 2 5 ∣ (5 - 2) := by
  rw [S_val_2_5]
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 3)
    (by decide : (3 : Nat) < 406898311)

theorem S_val_2_5_not_dvd_C : ¬ S_val 2 5 ∣ 5 := by
  rw [S_val_2_5]
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 5)
    (by decide : (5 : Nat) < 406898311)

theorem S_val_2_5_not_dvd_B : ¬ S_val 2 5 ∣ 2 := by
  rw [S_val_2_5]
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 2)
    (by decide : (2 : Nat) < 406898311)

theorem S_val_2_5_dvd : S_val 2 5 ∣ S_val 2 5 :=
  Nat.dvd_refl _

theorem S_val_2_5_not_sq : ¬ (S_val 2 5) ^ 2 ∣ S_val 2 5 := by
  have hp : Nat.Prime (S_val 2 5) := S_val_2_5_prime
  have hlt : S_val 2 5 < (S_val 2 5) ^ 2 := by
    rw [pow_two]
    exact Nat.lt_mul_self_iff.mpr hp.one_lt
  exact Nat.not_dvd_of_pos_of_lt hp.pos hlt

/-! ## Divisibility from ZMod witnesses (no `S_val` unfold) -/

theorem S_val_1_8_dvd : 79 ∣ S_val 1 8 :=
  p_dvd_S_val_of_pow13_eq 1 8 79 lt_1_8 prime_79 coprime_1_8_79 zmod_1_8_79

theorem S_val_1_8_not_sq : ¬ 79 ^ 2 ∣ S_val 1 8 :=
  not_p_sq_dvd_S_val_of_pow13_ne 1 8 79 6241 lt_1_8 sq_79 zmod_1_8_6241

theorem S_val_4_7_dvd : 53 ∣ S_val 4 7 :=
  p_dvd_S_val_of_pow13_eq 4 7 53 lt_4_7 prime_53 coprime_4_7_53 zmod_4_7_53

theorem S_val_4_7_not_sq : ¬ 53 ^ 2 ∣ S_val 4 7 :=
  not_p_sq_dvd_S_val_of_pow13_ne 4 7 53 2809 lt_4_7 sq_53 zmod_4_7_2809

theorem S_val_5_8_dvd : 53 ∣ S_val 5 8 :=
  p_dvd_S_val_of_pow13_eq 5 8 53 lt_5_8 prime_53 coprime_5_8_53 zmod_5_8_53

theorem S_val_5_8_not_sq : ¬ 53 ^ 2 ∣ S_val 5 8 :=
  not_p_sq_dvd_S_val_of_pow13_ne 5 8 53 2809 lt_5_8 sq_53 zmod_5_8_2809

theorem S_val_10_13_dvd : 53 ∣ S_val 10 13 :=
  p_dvd_S_val_of_pow13_eq 10 13 53 lt_10_13 prime_53
    coprime_10_13_53 zmod_10_13_53

theorem S_val_10_13_not_sq : ¬ 53 ^ 2 ∣ S_val 10 13 :=
  not_p_sq_dvd_S_val_of_pow13_ne 10 13 53 2809 lt_10_13 sq_53
    zmod_10_13_2809

theorem S_val_100_103_dvd : 599 ∣ S_val 100 103 :=
  p_dvd_S_val_of_pow13_eq 100 103 599 lt_100_103 prime_599
    coprime_100_103_599 zmod_100_103_599

theorem S_val_100_103_not_sq : ¬ 599 ^ 2 ∣ S_val 100 103 :=
  not_p_sq_dvd_S_val_of_pow13_ne 100 103 599 358801 lt_100_103
    sq_599 zmod_100_103_358801

/-! ## Order ≠ 13 via the Step11 dichotomy -/

theorem order_ne_13_B1_C4 :
    order_of_C_B_inv_mod_p2 4 1 2731 prime_2731
      not_dvd_4_2731 not_dvd_1_2731 ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    1 4 2731 prime_2731 ne_13_2731 lt_1_4
    not_dvd_4_2731 not_dvd_1_2731 S_val_1_4_dvd
    coprime_1_4_2731 S_val_1_4_not_sq

theorem order_ne_13_B1_C5 :
    order_of_C_B_inv_mod_p2 5 1 (S_val 1 5) S_val_1_5_prime
      S_val_1_5_not_dvd_C S_val_1_5_not_dvd_B ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    1 5 (S_val 1 5) S_val_1_5_prime S_val_1_5_ne_thirteen
    (by decide) S_val_1_5_not_dvd_C S_val_1_5_not_dvd_B
    (Nat.dvd_refl _) S_val_1_5_not_dvd_gap S_val_1_5_not_p_sq_dvd

theorem order_ne_13_B1_C8 :
    order_of_C_B_inv_mod_p2 8 1 79 prime_79
      not_dvd_8_79 not_dvd_1_79 ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    1 8 79 prime_79 ne_13_79 lt_1_8
    not_dvd_8_79 not_dvd_1_79 S_val_1_8_dvd
    coprime_1_8_79 S_val_1_8_not_sq

theorem order_ne_13_B2_C5 :
    order_of_C_B_inv_mod_p2 5 2 (S_val 2 5) S_val_2_5_prime
      S_val_2_5_not_dvd_C S_val_2_5_not_dvd_B ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    2 5 (S_val 2 5) S_val_2_5_prime S_val_2_5_ne_thirteen
    lt_2_5 S_val_2_5_not_dvd_C S_val_2_5_not_dvd_B
    S_val_2_5_dvd S_val_2_5_not_dvd_gap S_val_2_5_not_sq

theorem order_ne_13_B4_C7 :
    order_of_C_B_inv_mod_p2 7 4 53 prime_53
      not_dvd_7_53 not_dvd_4_53 ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    4 7 53 prime_53 ne_13_53 lt_4_7
    not_dvd_7_53 not_dvd_4_53 S_val_4_7_dvd
    coprime_4_7_53 S_val_4_7_not_sq

theorem order_ne_13_B5_C8 :
    order_of_C_B_inv_mod_p2 8 5 53 prime_53
      not_dvd_8_53 not_dvd_5_53 ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    5 8 53 prime_53 ne_13_53 lt_5_8
    not_dvd_8_53 not_dvd_5_53 S_val_5_8_dvd
    coprime_5_8_53 S_val_5_8_not_sq

theorem order_ne_13_B10_C13 :
    order_of_C_B_inv_mod_p2 13 10 53 prime_53
      not_dvd_13_53 not_dvd_10_53 ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    10 13 53 prime_53 ne_13_53 lt_10_13
    not_dvd_13_53 not_dvd_10_53 S_val_10_13_dvd
    coprime_10_13_53 S_val_10_13_not_sq

theorem order_ne_13_B100_C103 :
    order_of_C_B_inv_mod_p2 103 100 599 prime_599
      not_dvd_103_599 not_dvd_100_599 ≠ 13 :=
  exists_p_with_order_ne_13_of_has_exp_one
    100 103 599 prime_599 ne_13_599 lt_100_103
    not_dvd_103_599 not_dvd_100_599 S_val_100_103_dvd
    coprime_100_103_599 S_val_100_103_not_sq

/-! ## Exists-`p` wraps (one pair each, not a ∀) -/

theorem exists_p_with_order_ne_13_mod_p_sq_example_B1_C8 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 8 ∧ ¬ p ∣ (8 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 8) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 8 1 p hp hNotC hNotB ≠ 13 :=
  ⟨79, prime_79, S_val_1_8_dvd, coprime_1_8_79,
    not_dvd_8_79, not_dvd_1_79, order_ne_13_B1_C8⟩

theorem exists_p_with_order_ne_13_mod_p_sq_example_B2_C5 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2 5 ∧ ¬ p ∣ (5 - 2) ∧
      ∃ (hNotC : ¬ p ∣ 5) (hNotB : ¬ p ∣ 2),
        order_of_C_B_inv_mod_p2 5 2 p hp hNotC hNotB ≠ 13 :=
  ⟨S_val 2 5, S_val_2_5_prime, S_val_2_5_dvd, S_val_2_5_not_dvd_gap,
    S_val_2_5_not_dvd_C, S_val_2_5_not_dvd_B, order_ne_13_B2_C5⟩

theorem exists_p_with_order_ne_13_mod_p_sq_example_B4_C7 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4 7 ∧ ¬ p ∣ (7 - 4) ∧
      ∃ (hNotC : ¬ p ∣ 7) (hNotB : ¬ p ∣ 4),
        order_of_C_B_inv_mod_p2 7 4 p hp hNotC hNotB ≠ 13 :=
  ⟨53, prime_53, S_val_4_7_dvd, coprime_4_7_53,
    not_dvd_7_53, not_dvd_4_53, order_ne_13_B4_C7⟩

theorem exists_p_with_order_ne_13_mod_p_sq_example_B5_C8 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5 8 ∧ ¬ p ∣ (8 - 5) ∧
      ∃ (hNotC : ¬ p ∣ 8) (hNotB : ¬ p ∣ 5),
        order_of_C_B_inv_mod_p2 8 5 p hp hNotC hNotB ≠ 13 :=
  ⟨53, prime_53, S_val_5_8_dvd, coprime_5_8_53,
    not_dvd_8_53, not_dvd_5_53, order_ne_13_B5_C8⟩

theorem exists_p_with_order_ne_13_mod_p_sq_example_B10_C13 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10 13 ∧ ¬ p ∣ (13 - 10) ∧
      ∃ (hNotC : ¬ p ∣ 13) (hNotB : ¬ p ∣ 10),
        order_of_C_B_inv_mod_p2 13 10 p hp hNotC hNotB ≠ 13 :=
  ⟨53, prime_53, S_val_10_13_dvd, coprime_10_13_53,
    not_dvd_13_53, not_dvd_10_53, order_ne_13_B10_C13⟩

theorem exists_p_with_order_ne_13_mod_p_sq_example_B100_C103 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100 103 ∧ ¬ p ∣ (103 - 100) ∧
      ∃ (hNotC : ¬ p ∣ 103) (hNotB : ¬ p ∣ 100),
        order_of_C_B_inv_mod_p2 103 100 p hp hNotC hNotB ≠ 13 :=
  ⟨599, prime_599, S_val_100_103_dvd, coprime_100_103_599,
    not_dvd_103_599, not_dvd_100_599, order_ne_13_B100_C103⟩

/-- Eight named `B ≤ 100` gap-3 rows have a
primitive prime with order ≠ 13.  Not a `∀`. -/
theorem exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 5 ∧ ¬ p ∣ (5 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 5) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 5 1 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 8 ∧ ¬ p ∣ (8 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 8) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 8 1 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2 5 ∧ ¬ p ∣ (5 - 2) ∧
      ∃ (hNotC : ¬ p ∣ 5) (hNotB : ¬ p ∣ 2),
        order_of_C_B_inv_mod_p2 5 2 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4 7 ∧ ¬ p ∣ (7 - 4) ∧
      ∃ (hNotC : ¬ p ∣ 7) (hNotB : ¬ p ∣ 4),
        order_of_C_B_inv_mod_p2 7 4 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5 8 ∧ ¬ p ∣ (8 - 5) ∧
      ∃ (hNotC : ¬ p ∣ 8) (hNotB : ¬ p ∣ 5),
        order_of_C_B_inv_mod_p2 8 5 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10 13 ∧ ¬ p ∣ (13 - 10) ∧
      ∃ (hNotC : ¬ p ∣ 13) (hNotB : ¬ p ∣ 10),
        order_of_C_B_inv_mod_p2 13 10 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100 103 ∧ ¬ p ∣ (103 - 100) ∧
      ∃ (hNotC : ¬ p ∣ 103) (hNotB : ¬ p ∣ 100),
        order_of_C_B_inv_mod_p2 103 100 p hp hNotC hNotB ≠ 13) :=
  ⟨exists_p_with_order_ne_13_mod_p_sq_example_B1_C4,
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C5,
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C8,
    exists_p_with_order_ne_13_mod_p_sq_example_B2_C5,
    exists_p_with_order_ne_13_mod_p_sq_example_B4_C7,
    exists_p_with_order_ne_13_mod_p_sq_example_B5_C8,
    exists_p_with_order_ne_13_mod_p_sq_example_B10_C13,
    exists_p_with_order_ne_13_mod_p_sq_example_B100_C103⟩

/-! ## `S_not_fourth` on those eight rows -/

theorem S_not_fourth_B1_C4 : S_not_fourth 1 4 :=
  S_not_fourth_of_order_ne_13
    1 4 2731 prime_2731 S_val_1_4_dvd coprime_1_4_2731
    ne_13_2731 lt_1_4 not_dvd_4_2731 not_dvd_1_2731
    order_ne_13_B1_C4

theorem S_not_fourth_B1_C5 : S_not_fourth 1 5 :=
  S_not_fourth_of_order_ne_13
    1 5 (S_val 1 5) S_val_1_5_prime (Nat.dvd_refl _)
    S_val_1_5_not_dvd_gap S_val_1_5_ne_thirteen (by decide)
    S_val_1_5_not_dvd_C S_val_1_5_not_dvd_B order_ne_13_B1_C5

theorem S_not_fourth_B1_C8 : S_not_fourth 1 8 :=
  S_not_fourth_of_order_ne_13
    1 8 79 prime_79 S_val_1_8_dvd coprime_1_8_79
    ne_13_79 lt_1_8 not_dvd_8_79 not_dvd_1_79
    order_ne_13_B1_C8

theorem S_not_fourth_B2_C5 : S_not_fourth 2 5 :=
  S_not_fourth_of_order_ne_13
    2 5 (S_val 2 5) S_val_2_5_prime S_val_2_5_dvd
    S_val_2_5_not_dvd_gap S_val_2_5_ne_thirteen lt_2_5
    S_val_2_5_not_dvd_C S_val_2_5_not_dvd_B order_ne_13_B2_C5

theorem S_not_fourth_B4_C7 : S_not_fourth 4 7 :=
  S_not_fourth_of_order_ne_13
    4 7 53 prime_53 S_val_4_7_dvd coprime_4_7_53
    ne_13_53 lt_4_7 not_dvd_7_53 not_dvd_4_53
    order_ne_13_B4_C7

theorem S_not_fourth_B5_C8 : S_not_fourth 5 8 :=
  S_not_fourth_of_order_ne_13
    5 8 53 prime_53 S_val_5_8_dvd coprime_5_8_53
    ne_13_53 lt_5_8 not_dvd_8_53 not_dvd_5_53
    order_ne_13_B5_C8

theorem S_not_fourth_B10_C13 : S_not_fourth 10 13 :=
  S_not_fourth_of_order_ne_13
    10 13 53 prime_53 S_val_10_13_dvd coprime_10_13_53
    ne_13_53 lt_10_13 not_dvd_13_53 not_dvd_10_53
    order_ne_13_B10_C13

theorem S_not_fourth_B100_C103 : S_not_fourth 100 103 :=
  S_not_fourth_of_order_ne_13
    100 103 599 prime_599 S_val_100_103_dvd coprime_100_103_599
    ne_13_599 lt_100_103 not_dvd_103_599 not_dvd_100_599
    order_ne_13_B100_C103

/-- Eight named `B ≤ 100` rows have `S` not a
fourth power.  Not a `∀`. -/
theorem S_not_fourth_B_le_100_from_exp_one_table_rows :
    S_not_fourth 1 4 ∧
    S_not_fourth 1 5 ∧
    S_not_fourth 1 8 ∧
    S_not_fourth 2 5 ∧
    S_not_fourth 4 7 ∧
    S_not_fourth 5 8 ∧
    S_not_fourth 10 13 ∧
    S_not_fourth 100 103 :=
  ⟨S_not_fourth_B1_C4, S_not_fourth_B1_C5, S_not_fourth_B1_C8,
    S_not_fourth_B2_C5, S_not_fourth_B4_C7, S_not_fourth_B5_C8,
    S_not_fourth_B10_C13, S_not_fourth_B100_C103⟩

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; eight rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower
      (S_val B C)

/-- Uninhabited.  Eight rows are not every `B ≤ 100`.
`B > 100` needs Bugeaud–Corvaja–Zannier. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    HasPrimeWithExpOne (S_val B C) ∧
      ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
        ¬ p ∣ (C - B) ∧ ¬ p ^ 2 ∣ S_val B C

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → B + 3 ≤ C → False

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → False

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

#check S_val
#check S_bounds
#check S_not_fourth
#check exists_p_with_order_ne_13_of_has_exp_one
#check order_ne_13_B1_C4
#check order_ne_13_B1_C5
#check order_ne_13_B1_C8
#check order_ne_13_B2_C5
#check order_ne_13_B4_C7
#check order_ne_13_B5_C8
#check order_ne_13_B10_C13
#check order_ne_13_B100_C103
#check exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows
#check S_not_fourth_B_le_100_from_exp_one_table_rows
#check S_has_prime_with_exp_one_B_le_100_table_rows
#check S_not_proper_prime_power_B_le_100_from_exp_one_table_rows
#check not_proper_prime_power_of_has_exp_one
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms order_ne_13_B1_C4
#print axioms order_ne_13_B1_C5
#print axioms order_ne_13_B1_C8
#print axioms order_ne_13_B2_C5
#print axioms order_ne_13_B10_C13
#print axioms order_ne_13_B100_C103
#print axioms exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_100_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one
