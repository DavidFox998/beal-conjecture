/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.38.0 — B ≤ 10000 exp-one
extension (256 named gap-3 rows, not a ∀).

Extends the 64-row B ≤ 1000 table to
256 computational pairs with B ≤ 10000
and C = B+3 (inherited rows keep their
witnesses).  Each has a prime p with
p | S, p ∤ (C-B), p² ∤ S, so the
Step11 dichotomy gives order ≠ 13
and S_not_fourth.

This is not every B ≤ 10000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 10000 squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren ∀ stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 4000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 S_not_fourth S_not_fourth_of_order_ne_13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (HasPrimeWithExpOne exists_p_with_order_ne_13_of_has_exp_one)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
  (has_exp_one_of_zmod p_dvd_S_val_of_pow13_eq not_p_sq_dvd_S_val_of_pow13_ne
    prime_53 prime_79 prime_599 prime_2731 sq_53 sq_79 sq_599)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one
  (ne_13_53 ne_13_79 ne_13_599)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension
  (prime_131 sq_131 ne_13_131
    prime_313 sq_313 ne_13_313
    prime_443 sq_443 ne_13_443
    prime_521 sq_521 ne_13_521
    prime_547 sq_547 ne_13_547)

/-! ## Extra small primes (numerals; `decide` only) -/
theorem prime_157 : Nat.Prime 157 := by decide
theorem sq_157 : (24649 : Nat) = 157 * 157 := by decide
theorem ne_13_157 : (157 : Nat) ≠ 13 := by decide

theorem prime_677 : Nat.Prime 677 := by decide
theorem sq_677 : (458329 : Nat) = 677 * 677 := by decide
theorem ne_13_677 : (677 : Nat) ≠ 13 := by decide

theorem prime_1613 : Nat.Prime 1613 := by decide
theorem sq_1613 : (2601769 : Nat) = 1613 * 1613 := by decide
theorem ne_13_1613 : (1613 : Nat) ≠ 13 := by decide

/-! ## Inherited sixty-four B ≤ 1000 rows -/
theorem row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_1_4
theorem row_4_7 :
    HasPrimeWithExpOne (S_val 4 7) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4 7 ∧ ¬ p ∣ (7 - 4) ∧
      ∃ (hNotC : ¬ p ∣ 7) (hNotB : ¬ p ∣ 4),
        order_of_C_B_inv_mod_p2 7 4 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4 7 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_4_7
theorem row_5_8 :
    HasPrimeWithExpOne (S_val 5 8) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5 8 ∧ ¬ p ∣ (8 - 5) ∧
      ∃ (hNotC : ¬ p ∣ 8) (hNotB : ¬ p ∣ 5),
        order_of_C_B_inv_mod_p2 8 5 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5 8 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_5_8
theorem row_10_13 :
    HasPrimeWithExpOne (S_val 10 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10 13 ∧ ¬ p ∣ (13 - 10) ∧
      ∃ (hNotC : ¬ p ∣ 13) (hNotB : ¬ p ∣ 10),
        order_of_C_B_inv_mod_p2 13 10 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10 13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_10_13
theorem row_13_16 :
    HasPrimeWithExpOne (S_val 13 16) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13 16 ∧ ¬ p ∣ (16 - 13) ∧
      ∃ (hNotC : ¬ p ∣ 16) (hNotB : ¬ p ∣ 13),
        order_of_C_B_inv_mod_p2 16 13 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13 16 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_13_16
theorem row_35_38 :
    HasPrimeWithExpOne (S_val 35 38) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35 38 ∧ ¬ p ∣ (38 - 35) ∧
      ∃ (hNotC : ¬ p ∣ 38) (hNotB : ¬ p ∣ 35),
        order_of_C_B_inv_mod_p2 38 35 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35 38 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_35_38
theorem row_46_49 :
    HasPrimeWithExpOne (S_val 46 49) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46 49 ∧ ¬ p ∣ (49 - 46) ∧
      ∃ (hNotC : ¬ p ∣ 49) (hNotB : ¬ p ∣ 46),
        order_of_C_B_inv_mod_p2 49 46 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46 49 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_46_49
theorem row_59_62 :
    HasPrimeWithExpOne (S_val 59 62) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59 62 ∧ ¬ p ∣ (62 - 59) ∧
      ∃ (hNotC : ¬ p ∣ 62) (hNotB : ¬ p ∣ 59),
        order_of_C_B_inv_mod_p2 62 59 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59 62 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_59_62
theorem row_73_76 :
    HasPrimeWithExpOne (S_val 73 76) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73 76 ∧ ¬ p ∣ (76 - 73) ∧
      ∃ (hNotC : ¬ p ∣ 76) (hNotB : ¬ p ∣ 73),
        order_of_C_B_inv_mod_p2 76 73 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73 76 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_73_76
theorem row_97_100 :
    HasPrimeWithExpOne (S_val 97 100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97 100 ∧ ¬ p ∣ (100 - 97) ∧
      ∃ (hNotC : ¬ p ∣ 100) (hNotB : ¬ p ∣ 97),
        order_of_C_B_inv_mod_p2 100 97 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97 100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_97_100
theorem row_100_103 :
    HasPrimeWithExpOne (S_val 100 103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100 103 ∧ ¬ p ∣ (103 - 100) ∧
      ∃ (hNotC : ¬ p ∣ 103) (hNotB : ¬ p ∣ 100),
        order_of_C_B_inv_mod_p2 103 100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100 103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_100_103
theorem row_116_119 :
    HasPrimeWithExpOne (S_val 116 119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116 119 ∧ ¬ p ∣ (119 - 116) ∧
      ∃ (hNotC : ¬ p ∣ 119) (hNotB : ¬ p ∣ 116),
        order_of_C_B_inv_mod_p2 119 116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116 119 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_116_119
theorem row_137_140 :
    HasPrimeWithExpOne (S_val 137 140) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137 140 ∧ ¬ p ∣ (140 - 137) ∧
      ∃ (hNotC : ¬ p ∣ 140) (hNotB : ¬ p ∣ 137),
        order_of_C_B_inv_mod_p2 140 137 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137 140 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_137_140
theorem row_152_155 :
    HasPrimeWithExpOne (S_val 152 155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152 155 ∧ ¬ p ∣ (155 - 152) ∧
      ∃ (hNotC : ¬ p ∣ 155) (hNotB : ¬ p ∣ 152),
        order_of_C_B_inv_mod_p2 155 152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152 155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_152_155
theorem row_172_175 :
    HasPrimeWithExpOne (S_val 172 175) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172 175 ∧ ¬ p ∣ (175 - 172) ∧
      ∃ (hNotC : ¬ p ∣ 175) (hNotB : ¬ p ∣ 172),
        order_of_C_B_inv_mod_p2 175 172 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172 175 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_172_175
theorem row_191_194 :
    HasPrimeWithExpOne (S_val 191 194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191 194 ∧ ¬ p ∣ (194 - 191) ∧
      ∃ (hNotC : ¬ p ∣ 194) (hNotB : ¬ p ∣ 191),
        order_of_C_B_inv_mod_p2 194 191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191 194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_191_194
theorem row_205_208 :
    HasPrimeWithExpOne (S_val 205 208) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205 208 ∧ ¬ p ∣ (208 - 205) ∧
      ∃ (hNotC : ¬ p ∣ 208) (hNotB : ¬ p ∣ 205),
        order_of_C_B_inv_mod_p2 208 205 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205 208 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_205_208
theorem row_224_227 :
    HasPrimeWithExpOne (S_val 224 227) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224 227 ∧ ¬ p ∣ (227 - 224) ∧
      ∃ (hNotC : ¬ p ∣ 227) (hNotB : ¬ p ∣ 224),
        order_of_C_B_inv_mod_p2 227 224 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224 227 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_224_227
theorem row_244_247 :
    HasPrimeWithExpOne (S_val 244 247) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244 247 ∧ ¬ p ∣ (247 - 244) ∧
      ∃ (hNotC : ¬ p ∣ 247) (hNotB : ¬ p ∣ 244),
        order_of_C_B_inv_mod_p2 247 244 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244 247 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_244_247
theorem row_260_263 :
    HasPrimeWithExpOne (S_val 260 263) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260 263 ∧ ¬ p ∣ (263 - 260) ∧
      ∃ (hNotC : ¬ p ∣ 263) (hNotB : ¬ p ∣ 260),
        order_of_C_B_inv_mod_p2 263 260 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260 263 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_260_263
theorem row_283_286 :
    HasPrimeWithExpOne (S_val 283 286) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283 286 ∧ ¬ p ∣ (286 - 283) ∧
      ∃ (hNotC : ¬ p ∣ 286) (hNotB : ¬ p ∣ 283),
        order_of_C_B_inv_mod_p2 286 283 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283 286 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_283_286
theorem row_299_302 :
    HasPrimeWithExpOne (S_val 299 302) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299 302 ∧ ¬ p ∣ (302 - 299) ∧
      ∃ (hNotC : ¬ p ∣ 302) (hNotB : ¬ p ∣ 299),
        order_of_C_B_inv_mod_p2 302 299 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299 302 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_299_302
theorem row_316_319 :
    HasPrimeWithExpOne (S_val 316 319) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316 319 ∧ ¬ p ∣ (319 - 316) ∧
      ∃ (hNotC : ¬ p ∣ 319) (hNotB : ¬ p ∣ 316),
        order_of_C_B_inv_mod_p2 319 316 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316 319 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_316_319
theorem row_331_334 :
    HasPrimeWithExpOne (S_val 331 334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331 334 ∧ ¬ p ∣ (334 - 331) ∧
      ∃ (hNotC : ¬ p ∣ 334) (hNotB : ¬ p ∣ 331),
        order_of_C_B_inv_mod_p2 334 331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331 334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_331_334
theorem row_350_353 :
    HasPrimeWithExpOne (S_val 350 353) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350 353 ∧ ¬ p ∣ (353 - 350) ∧
      ∃ (hNotC : ¬ p ∣ 353) (hNotB : ¬ p ∣ 350),
        order_of_C_B_inv_mod_p2 353 350 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350 353 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_350_353
theorem row_364_367 :
    HasPrimeWithExpOne (S_val 364 367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364 367 ∧ ¬ p ∣ (367 - 364) ∧
      ∃ (hNotC : ¬ p ∣ 367) (hNotB : ¬ p ∣ 364),
        order_of_C_B_inv_mod_p2 367 364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364 367 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_364_367
theorem row_379_382 :
    HasPrimeWithExpOne (S_val 379 382) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379 382 ∧ ¬ p ∣ (382 - 379) ∧
      ∃ (hNotC : ¬ p ∣ 382) (hNotB : ¬ p ∣ 379),
        order_of_C_B_inv_mod_p2 382 379 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379 382 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_379_382
theorem row_407_410 :
    HasPrimeWithExpOne (S_val 407 410) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407 410 ∧ ¬ p ∣ (410 - 407) ∧
      ∃ (hNotC : ¬ p ∣ 410) (hNotB : ¬ p ∣ 407),
        order_of_C_B_inv_mod_p2 410 407 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 407 410 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_407_410
theorem row_430_433 :
    HasPrimeWithExpOne (S_val 430 433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430 433 ∧ ¬ p ∣ (433 - 430) ∧
      ∃ (hNotC : ¬ p ∣ 433) (hNotB : ¬ p ∣ 430),
        order_of_C_B_inv_mod_p2 433 430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 430 433 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_430_433
theorem row_442_445 :
    HasPrimeWithExpOne (S_val 442 445) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442 445 ∧ ¬ p ∣ (445 - 442) ∧
      ∃ (hNotC : ¬ p ∣ 445) (hNotB : ¬ p ∣ 442),
        order_of_C_B_inv_mod_p2 445 442 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 442 445 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_442_445
theorem row_461_464 :
    HasPrimeWithExpOne (S_val 461 464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461 464 ∧ ¬ p ∣ (464 - 461) ∧
      ∃ (hNotC : ¬ p ∣ 464) (hNotB : ¬ p ∣ 461),
        order_of_C_B_inv_mod_p2 464 461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 461 464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_461_464
theorem row_472_475 :
    HasPrimeWithExpOne (S_val 472 475) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472 475 ∧ ¬ p ∣ (475 - 472) ∧
      ∃ (hNotC : ¬ p ∣ 475) (hNotB : ¬ p ∣ 472),
        order_of_C_B_inv_mod_p2 475 472 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 472 475 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_472_475
theorem row_487_490 :
    HasPrimeWithExpOne (S_val 487 490) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487 490 ∧ ¬ p ∣ (490 - 487) ∧
      ∃ (hNotC : ¬ p ∣ 490) (hNotB : ¬ p ∣ 487),
        order_of_C_B_inv_mod_p2 490 487 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 487 490 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_487_490
theorem row_502_505 :
    HasPrimeWithExpOne (S_val 502 505) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 502 505 ∧ ¬ p ∣ (505 - 502) ∧
      ∃ (hNotC : ¬ p ∣ 505) (hNotB : ¬ p ∣ 502),
        order_of_C_B_inv_mod_p2 505 502 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 502 505 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_502_505
theorem row_521_524 :
    HasPrimeWithExpOne (S_val 521 524) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 521 524 ∧ ¬ p ∣ (524 - 521) ∧
      ∃ (hNotC : ¬ p ∣ 524) (hNotB : ¬ p ∣ 521),
        order_of_C_B_inv_mod_p2 524 521 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 521 524 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_521_524
theorem row_536_539 :
    HasPrimeWithExpOne (S_val 536 539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 536 539 ∧ ¬ p ∣ (539 - 536) ∧
      ∃ (hNotC : ¬ p ∣ 539) (hNotB : ¬ p ∣ 536),
        order_of_C_B_inv_mod_p2 539 536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 536 539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_536_539
theorem row_563_566 :
    HasPrimeWithExpOne (S_val 563 566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 563 566 ∧ ¬ p ∣ (566 - 563) ∧
      ∃ (hNotC : ¬ p ∣ 566) (hNotB : ¬ p ∣ 563),
        order_of_C_B_inv_mod_p2 566 563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 563 566 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_563_566
theorem row_578_581 :
    HasPrimeWithExpOne (S_val 578 581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 578 581 ∧ ¬ p ∣ (581 - 578) ∧
      ∃ (hNotC : ¬ p ∣ 581) (hNotB : ¬ p ∣ 578),
        order_of_C_B_inv_mod_p2 581 578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 578 581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_578_581
theorem row_590_593 :
    HasPrimeWithExpOne (S_val 590 593) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 590 593 ∧ ¬ p ∣ (593 - 590) ∧
      ∃ (hNotC : ¬ p ∣ 593) (hNotB : ¬ p ∣ 590),
        order_of_C_B_inv_mod_p2 593 590 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 590 593 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_590_593
theorem row_601_604 :
    HasPrimeWithExpOne (S_val 601 604) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 601 604 ∧ ¬ p ∣ (604 - 601) ∧
      ∃ (hNotC : ¬ p ∣ 604) (hNotB : ¬ p ∣ 601),
        order_of_C_B_inv_mod_p2 604 601 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 601 604 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_601_604
theorem row_617_620 :
    HasPrimeWithExpOne (S_val 617 620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 617 620 ∧ ¬ p ∣ (620 - 617) ∧
      ∃ (hNotC : ¬ p ∣ 620) (hNotB : ¬ p ∣ 617),
        order_of_C_B_inv_mod_p2 620 617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 617 620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_617_620
theorem row_640_643 :
    HasPrimeWithExpOne (S_val 640 643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 640 643 ∧ ¬ p ∣ (643 - 640) ∧
      ∃ (hNotC : ¬ p ∣ 643) (hNotB : ¬ p ∣ 640),
        order_of_C_B_inv_mod_p2 643 640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 640 643 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_640_643
theorem row_649_652 :
    HasPrimeWithExpOne (S_val 649 652) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 649 652 ∧ ¬ p ∣ (652 - 649) ∧
      ∃ (hNotC : ¬ p ∣ 652) (hNotB : ¬ p ∣ 649),
        order_of_C_B_inv_mod_p2 652 649 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 649 652 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_649_652
theorem row_664_667 :
    HasPrimeWithExpOne (S_val 664 667) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 664 667 ∧ ¬ p ∣ (667 - 664) ∧
      ∃ (hNotC : ¬ p ∣ 667) (hNotB : ¬ p ∣ 664),
        order_of_C_B_inv_mod_p2 667 664 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 664 667 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_664_667
theorem row_682_685 :
    HasPrimeWithExpOne (S_val 682 685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 682 685 ∧ ¬ p ∣ (685 - 682) ∧
      ∃ (hNotC : ¬ p ∣ 685) (hNotB : ¬ p ∣ 682),
        order_of_C_B_inv_mod_p2 685 682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 682 685 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_682_685
theorem row_698_701 :
    HasPrimeWithExpOne (S_val 698 701) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 698 701 ∧ ¬ p ∣ (701 - 698) ∧
      ∃ (hNotC : ¬ p ∣ 701) (hNotB : ¬ p ∣ 698),
        order_of_C_B_inv_mod_p2 701 698 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 698 701 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_698_701
theorem row_715_718 :
    HasPrimeWithExpOne (S_val 715 718) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 715 718 ∧ ¬ p ∣ (718 - 715) ∧
      ∃ (hNotC : ¬ p ∣ 718) (hNotB : ¬ p ∣ 715),
        order_of_C_B_inv_mod_p2 718 715 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 715 718 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_715_718
theorem row_733_736 :
    HasPrimeWithExpOne (S_val 733 736) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 733 736 ∧ ¬ p ∣ (736 - 733) ∧
      ∃ (hNotC : ¬ p ∣ 736) (hNotB : ¬ p ∣ 733),
        order_of_C_B_inv_mod_p2 736 733 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 733 736 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_733_736
theorem row_748_751 :
    HasPrimeWithExpOne (S_val 748 751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 748 751 ∧ ¬ p ∣ (751 - 748) ∧
      ∃ (hNotC : ¬ p ∣ 751) (hNotB : ¬ p ∣ 748),
        order_of_C_B_inv_mod_p2 751 748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 748 751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_748_751
theorem row_763_766 :
    HasPrimeWithExpOne (S_val 763 766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 763 766 ∧ ¬ p ∣ (766 - 763) ∧
      ∃ (hNotC : ¬ p ∣ 766) (hNotB : ¬ p ∣ 763),
        order_of_C_B_inv_mod_p2 766 763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 763 766 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_763_766
theorem row_782_785 :
    HasPrimeWithExpOne (S_val 782 785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 782 785 ∧ ¬ p ∣ (785 - 782) ∧
      ∃ (hNotC : ¬ p ∣ 785) (hNotB : ¬ p ∣ 782),
        order_of_C_B_inv_mod_p2 785 782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 782 785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_782_785
theorem row_802_805 :
    HasPrimeWithExpOne (S_val 802 805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 802 805 ∧ ¬ p ∣ (805 - 802) ∧
      ∃ (hNotC : ¬ p ∣ 805) (hNotB : ¬ p ∣ 802),
        order_of_C_B_inv_mod_p2 805 802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 802 805 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_802_805
theorem row_815_818 :
    HasPrimeWithExpOne (S_val 815 818) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 815 818 ∧ ¬ p ∣ (818 - 815) ∧
      ∃ (hNotC : ¬ p ∣ 818) (hNotB : ¬ p ∣ 815),
        order_of_C_B_inv_mod_p2 818 815 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 815 818 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_815_818
theorem row_835_838 :
    HasPrimeWithExpOne (S_val 835 838) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 835 838 ∧ ¬ p ∣ (838 - 835) ∧
      ∃ (hNotC : ¬ p ∣ 838) (hNotB : ¬ p ∣ 835),
        order_of_C_B_inv_mod_p2 838 835 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 835 838 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_835_838
theorem row_853_856 :
    HasPrimeWithExpOne (S_val 853 856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 853 856 ∧ ¬ p ∣ (856 - 853) ∧
      ∃ (hNotC : ¬ p ∣ 856) (hNotB : ¬ p ∣ 853),
        order_of_C_B_inv_mod_p2 856 853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 853 856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_853_856
theorem row_878_881 :
    HasPrimeWithExpOne (S_val 878 881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 878 881 ∧ ¬ p ∣ (881 - 878) ∧
      ∃ (hNotC : ¬ p ∣ 881) (hNotB : ¬ p ∣ 878),
        order_of_C_B_inv_mod_p2 881 878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 878 881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_878_881
theorem row_892_895 :
    HasPrimeWithExpOne (S_val 892 895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 892 895 ∧ ¬ p ∣ (895 - 892) ∧
      ∃ (hNotC : ¬ p ∣ 895) (hNotB : ¬ p ∣ 892),
        order_of_C_B_inv_mod_p2 895 892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 892 895 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_892_895
theorem row_914_917 :
    HasPrimeWithExpOne (S_val 914 917) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 914 917 ∧ ¬ p ∣ (917 - 914) ∧
      ∃ (hNotC : ¬ p ∣ 917) (hNotB : ¬ p ∣ 914),
        order_of_C_B_inv_mod_p2 917 914 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 914 917 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_914_917
theorem row_934_937 :
    HasPrimeWithExpOne (S_val 934 937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 934 937 ∧ ¬ p ∣ (937 - 934) ∧
      ∃ (hNotC : ¬ p ∣ 937) (hNotB : ¬ p ∣ 934),
        order_of_C_B_inv_mod_p2 937 934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 934 937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_934_937
theorem row_949_952 :
    HasPrimeWithExpOne (S_val 949 952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 949 952 ∧ ¬ p ∣ (952 - 949) ∧
      ∃ (hNotC : ¬ p ∣ 952) (hNotB : ¬ p ∣ 949),
        order_of_C_B_inv_mod_p2 952 949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 949 952 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_949_952
theorem row_962_965 :
    HasPrimeWithExpOne (S_val 962 965) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 962 965 ∧ ¬ p ∣ (965 - 962) ∧
      ∃ (hNotC : ¬ p ∣ 965) (hNotB : ¬ p ∣ 962),
        order_of_C_B_inv_mod_p2 965 962 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 962 965 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_962_965
theorem row_985_988 :
    HasPrimeWithExpOne (S_val 985 988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 985 988 ∧ ¬ p ∣ (988 - 985) ∧
      ∃ (hNotC : ¬ p ∣ 988) (hNotB : ¬ p ∣ 985),
        order_of_C_B_inv_mod_p2 988 985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 985 988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_985_988
theorem row_998_1001 :
    HasPrimeWithExpOne (S_val 998 1001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 998 1001 ∧ ¬ p ∣ (1001 - 998) ∧
      ∃ (hNotC : ¬ p ∣ 1001) (hNotB : ¬ p ∣ 998),
        order_of_C_B_inv_mod_p2 1001 998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 998 1001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_998_1001
theorem row_1000_1003 :
    HasPrimeWithExpOne (S_val 1000 1003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1000 1003 ∧ ¬ p ∣ (1003 - 1000) ∧
      ∃ (hNotC : ¬ p ∣ 1003) (hNotB : ¬ p ∣ 1000),
        order_of_C_B_inv_mod_p2 1003 1000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1000 1003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_1000_1003
/-! ## New B ≤ 10000 gap-3 rows -/
theorem row_1001_1004 :
    HasPrimeWithExpOne (S_val 1001 1004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1001 1004 ∧ ¬ p ∣ (1004 - 1001) ∧
      ∃ (hNotC : ¬ p ∣ 1004) (hNotB : ¬ p ∣ 1001),
        order_of_C_B_inv_mod_p2 1004 1001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1001 1004 := by
  have hlt : (1001 : Nat) < 1004 := by decide
  have hcop : ¬ 79 ∣ (1004 - 1001) := by decide
  have heq : (1004 : ZMod 79) ^ 13 = (1001 : ZMod 79) ^ 13 := by decide
  have hne : (1004 : ZMod 6241) ^ 13 ≠ (1001 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 1004 := by decide
  have hB : ¬ 79 ∣ 1001 := by decide
  have hexp :=
    has_exp_one_of_zmod 1001 1004 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1001 1004 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1001 1004 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1001 1004 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1001 1004 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1049_1052 :
    HasPrimeWithExpOne (S_val 1049 1052) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1049 1052 ∧ ¬ p ∣ (1052 - 1049) ∧
      ∃ (hNotC : ¬ p ∣ 1052) (hNotB : ¬ p ∣ 1049),
        order_of_C_B_inv_mod_p2 1052 1049 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1049 1052 := by
  have hlt : (1049 : Nat) < 1052 := by decide
  have hcop : ¬ 547 ∣ (1052 - 1049) := by decide
  have heq : (1052 : ZMod 547) ^ 13 = (1049 : ZMod 547) ^ 13 := by decide
  have hne : (1052 : ZMod 299209) ^ 13 ≠ (1049 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 1052 := by decide
  have hB : ¬ 547 ∣ 1049 := by decide
  have hexp :=
    has_exp_one_of_zmod 1049 1052 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1049 1052 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1049 1052 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1049 1052 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1049 1052 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1097_1100 :
    HasPrimeWithExpOne (S_val 1097 1100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1097 1100 ∧ ¬ p ∣ (1100 - 1097) ∧
      ∃ (hNotC : ¬ p ∣ 1100) (hNotB : ¬ p ∣ 1097),
        order_of_C_B_inv_mod_p2 1100 1097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1097 1100 := by
  have hlt : (1097 : Nat) < 1100 := by decide
  have hcop : ¬ 53 ∣ (1100 - 1097) := by decide
  have heq : (1100 : ZMod 53) ^ 13 = (1097 : ZMod 53) ^ 13 := by decide
  have hne : (1100 : ZMod 2809) ^ 13 ≠ (1097 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1100 := by decide
  have hB : ¬ 53 ∣ 1097 := by decide
  have hexp :=
    has_exp_one_of_zmod 1097 1100 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1097 1100 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1097 1100 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1097 1100 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1097 1100 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1132_1135 :
    HasPrimeWithExpOne (S_val 1132 1135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1132 1135 ∧ ¬ p ∣ (1135 - 1132) ∧
      ∃ (hNotC : ¬ p ∣ 1135) (hNotB : ¬ p ∣ 1132),
        order_of_C_B_inv_mod_p2 1135 1132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1132 1135 := by
  have hlt : (1132 : Nat) < 1135 := by decide
  have hcop : ¬ 157 ∣ (1135 - 1132) := by decide
  have heq : (1135 : ZMod 157) ^ 13 = (1132 : ZMod 157) ^ 13 := by decide
  have hne : (1135 : ZMod 24649) ^ 13 ≠ (1132 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 1135 := by decide
  have hB : ¬ 157 ∣ 1132 := by decide
  have hexp :=
    has_exp_one_of_zmod 1132 1135 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1132 1135 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1132 1135 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1132 1135 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1132 1135 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1183_1186 :
    HasPrimeWithExpOne (S_val 1183 1186) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1183 1186 ∧ ¬ p ∣ (1186 - 1183) ∧
      ∃ (hNotC : ¬ p ∣ 1186) (hNotB : ¬ p ∣ 1183),
        order_of_C_B_inv_mod_p2 1186 1183 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1183 1186 := by
  have hlt : (1183 : Nat) < 1186 := by decide
  have hcop : ¬ 157 ∣ (1186 - 1183) := by decide
  have heq : (1186 : ZMod 157) ^ 13 = (1183 : ZMod 157) ^ 13 := by decide
  have hne : (1186 : ZMod 24649) ^ 13 ≠ (1183 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 1186 := by decide
  have hB : ¬ 157 ∣ 1183 := by decide
  have hexp :=
    has_exp_one_of_zmod 1183 1186 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1183 1186 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1183 1186 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1183 1186 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1183 1186 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1223_1226 :
    HasPrimeWithExpOne (S_val 1223 1226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1223 1226 ∧ ¬ p ∣ (1226 - 1223) ∧
      ∃ (hNotC : ¬ p ∣ 1226) (hNotB : ¬ p ∣ 1223),
        order_of_C_B_inv_mod_p2 1226 1223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1223 1226 := by
  have hlt : (1223 : Nat) < 1226 := by decide
  have hcop : ¬ 53 ∣ (1226 - 1223) := by decide
  have heq : (1226 : ZMod 53) ^ 13 = (1223 : ZMod 53) ^ 13 := by decide
  have hne : (1226 : ZMod 2809) ^ 13 ≠ (1223 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1226 := by decide
  have hB : ¬ 53 ∣ 1223 := by decide
  have hexp :=
    has_exp_one_of_zmod 1223 1226 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1223 1226 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1223 1226 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1223 1226 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1223 1226 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1265_1268 :
    HasPrimeWithExpOne (S_val 1265 1268) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1265 1268 ∧ ¬ p ∣ (1268 - 1265) ∧
      ∃ (hNotC : ¬ p ∣ 1268) (hNotB : ¬ p ∣ 1265),
        order_of_C_B_inv_mod_p2 1268 1265 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1265 1268 := by
  have hlt : (1265 : Nat) < 1268 := by decide
  have hcop : ¬ 53 ∣ (1268 - 1265) := by decide
  have heq : (1268 : ZMod 53) ^ 13 = (1265 : ZMod 53) ^ 13 := by decide
  have hne : (1268 : ZMod 2809) ^ 13 ≠ (1265 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1268 := by decide
  have hB : ¬ 53 ∣ 1265 := by decide
  have hexp :=
    has_exp_one_of_zmod 1265 1268 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1265 1268 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1265 1268 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1265 1268 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1265 1268 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1318_1321 :
    HasPrimeWithExpOne (S_val 1318 1321) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1318 1321 ∧ ¬ p ∣ (1321 - 1318) ∧
      ∃ (hNotC : ¬ p ∣ 1321) (hNotB : ¬ p ∣ 1318),
        order_of_C_B_inv_mod_p2 1321 1318 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1318 1321 := by
  have hlt : (1318 : Nat) < 1321 := by decide
  have hcop : ¬ 53 ∣ (1321 - 1318) := by decide
  have heq : (1321 : ZMod 53) ^ 13 = (1318 : ZMod 53) ^ 13 := by decide
  have hne : (1321 : ZMod 2809) ^ 13 ≠ (1318 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1321 := by decide
  have hB : ¬ 53 ∣ 1318 := by decide
  have hexp :=
    has_exp_one_of_zmod 1318 1321 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1318 1321 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1318 1321 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1318 1321 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1318 1321 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1360_1363 :
    HasPrimeWithExpOne (S_val 1360 1363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1360 1363 ∧ ¬ p ∣ (1363 - 1360) ∧
      ∃ (hNotC : ¬ p ∣ 1363) (hNotB : ¬ p ∣ 1360),
        order_of_C_B_inv_mod_p2 1363 1360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1360 1363 := by
  have hlt : (1360 : Nat) < 1363 := by decide
  have hcop : ¬ 157 ∣ (1363 - 1360) := by decide
  have heq : (1363 : ZMod 157) ^ 13 = (1360 : ZMod 157) ^ 13 := by decide
  have hne : (1363 : ZMod 24649) ^ 13 ≠ (1360 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 1363 := by decide
  have hB : ¬ 157 ∣ 1360 := by decide
  have hexp :=
    has_exp_one_of_zmod 1360 1363 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1360 1363 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1360 1363 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1360 1363 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1360 1363 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1403_1406 :
    HasPrimeWithExpOne (S_val 1403 1406) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1403 1406 ∧ ¬ p ∣ (1406 - 1403) ∧
      ∃ (hNotC : ¬ p ∣ 1406) (hNotB : ¬ p ∣ 1403),
        order_of_C_B_inv_mod_p2 1406 1403 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1403 1406 := by
  have hlt : (1403 : Nat) < 1406 := by decide
  have hcop : ¬ 677 ∣ (1406 - 1403) := by decide
  have heq : (1406 : ZMod 677) ^ 13 = (1403 : ZMod 677) ^ 13 := by decide
  have hne : (1406 : ZMod 458329) ^ 13 ≠ (1403 : ZMod 458329) ^ 13 := by decide
  have hC : ¬ 677 ∣ 1406 := by decide
  have hB : ¬ 677 ∣ 1403 := by decide
  have hexp :=
    has_exp_one_of_zmod 1403 1406 677 458329 hlt prime_677 sq_677 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1403 1406 677 hlt prime_677 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1403 1406 677 458329 hlt sq_677 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1403 1406 677 prime_677 ne_13_677 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1403 1406 677 prime_677 hdvd hcop ne_13_677 hlt hC hB hord
  exact ⟨hexp, ⟨677, prime_677, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1468_1471 :
    HasPrimeWithExpOne (S_val 1468 1471) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1468 1471 ∧ ¬ p ∣ (1471 - 1468) ∧
      ∃ (hNotC : ¬ p ∣ 1471) (hNotB : ¬ p ∣ 1468),
        order_of_C_B_inv_mod_p2 1471 1468 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1468 1471 := by
  have hlt : (1468 : Nat) < 1471 := by decide
  have hcop : ¬ 53 ∣ (1471 - 1468) := by decide
  have heq : (1471 : ZMod 53) ^ 13 = (1468 : ZMod 53) ^ 13 := by decide
  have hne : (1471 : ZMod 2809) ^ 13 ≠ (1468 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1471 := by decide
  have hB : ¬ 53 ∣ 1468 := by decide
  have hexp :=
    has_exp_one_of_zmod 1468 1471 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1468 1471 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1468 1471 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1468 1471 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1468 1471 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1516_1519 :
    HasPrimeWithExpOne (S_val 1516 1519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1516 1519 ∧ ¬ p ∣ (1519 - 1516) ∧
      ∃ (hNotC : ¬ p ∣ 1519) (hNotB : ¬ p ∣ 1516),
        order_of_C_B_inv_mod_p2 1519 1516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1516 1519 := by
  have hlt : (1516 : Nat) < 1519 := by decide
  have hcop : ¬ 53 ∣ (1519 - 1516) := by decide
  have heq : (1519 : ZMod 53) ^ 13 = (1516 : ZMod 53) ^ 13 := by decide
  have hne : (1519 : ZMod 2809) ^ 13 ≠ (1516 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1519 := by decide
  have hB : ¬ 53 ∣ 1516 := by decide
  have hexp :=
    has_exp_one_of_zmod 1516 1519 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1516 1519 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1516 1519 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1516 1519 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1516 1519 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1555_1558 :
    HasPrimeWithExpOne (S_val 1555 1558) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1555 1558 ∧ ¬ p ∣ (1558 - 1555) ∧
      ∃ (hNotC : ¬ p ∣ 1558) (hNotB : ¬ p ∣ 1555),
        order_of_C_B_inv_mod_p2 1558 1555 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1555 1558 := by
  have hlt : (1555 : Nat) < 1558 := by decide
  have hcop : ¬ 53 ∣ (1558 - 1555) := by decide
  have heq : (1558 : ZMod 53) ^ 13 = (1555 : ZMod 53) ^ 13 := by decide
  have hne : (1558 : ZMod 2809) ^ 13 ≠ (1555 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1558 := by decide
  have hB : ¬ 53 ∣ 1555 := by decide
  have hexp :=
    has_exp_one_of_zmod 1555 1558 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1555 1558 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1555 1558 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1555 1558 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1555 1558 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1610_1613 :
    HasPrimeWithExpOne (S_val 1610 1613) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1610 1613 ∧ ¬ p ∣ (1613 - 1610) ∧
      ∃ (hNotC : ¬ p ∣ 1613) (hNotB : ¬ p ∣ 1610),
        order_of_C_B_inv_mod_p2 1613 1610 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1610 1613 := by
  have hlt : (1610 : Nat) < 1613 := by decide
  have hcop : ¬ 131 ∣ (1613 - 1610) := by decide
  have heq : (1613 : ZMod 131) ^ 13 = (1610 : ZMod 131) ^ 13 := by decide
  have hne : (1613 : ZMod 17161) ^ 13 ≠ (1610 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 1613 := by decide
  have hB : ¬ 131 ∣ 1610 := by decide
  have hexp :=
    has_exp_one_of_zmod 1610 1613 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1610 1613 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1610 1613 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1610 1613 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1610 1613 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1654_1657 :
    HasPrimeWithExpOne (S_val 1654 1657) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1654 1657 ∧ ¬ p ∣ (1657 - 1654) ∧
      ∃ (hNotC : ¬ p ∣ 1657) (hNotB : ¬ p ∣ 1654),
        order_of_C_B_inv_mod_p2 1657 1654 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1654 1657 := by
  have hlt : (1654 : Nat) < 1657 := by decide
  have hcop : ¬ 157 ∣ (1657 - 1654) := by decide
  have heq : (1657 : ZMod 157) ^ 13 = (1654 : ZMod 157) ^ 13 := by decide
  have hne : (1657 : ZMod 24649) ^ 13 ≠ (1654 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 1657 := by decide
  have hB : ¬ 157 ∣ 1654 := by decide
  have hexp :=
    has_exp_one_of_zmod 1654 1657 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1654 1657 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1654 1657 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1654 1657 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1654 1657 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1706_1709 :
    HasPrimeWithExpOne (S_val 1706 1709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1706 1709 ∧ ¬ p ∣ (1709 - 1706) ∧
      ∃ (hNotC : ¬ p ∣ 1709) (hNotB : ¬ p ∣ 1706),
        order_of_C_B_inv_mod_p2 1709 1706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1706 1709 := by
  have hlt : (1706 : Nat) < 1709 := by decide
  have hcop : ¬ 53 ∣ (1709 - 1706) := by decide
  have heq : (1709 : ZMod 53) ^ 13 = (1706 : ZMod 53) ^ 13 := by decide
  have hne : (1709 : ZMod 2809) ^ 13 ≠ (1706 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1709 := by decide
  have hB : ¬ 53 ∣ 1706 := by decide
  have hexp :=
    has_exp_one_of_zmod 1706 1709 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1706 1709 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1706 1709 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1706 1709 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1706 1709 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1753_1756 :
    HasPrimeWithExpOne (S_val 1753 1756) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1753 1756 ∧ ¬ p ∣ (1756 - 1753) ∧
      ∃ (hNotC : ¬ p ∣ 1756) (hNotB : ¬ p ∣ 1753),
        order_of_C_B_inv_mod_p2 1756 1753 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1753 1756 := by
  have hlt : (1753 : Nat) < 1756 := by decide
  have hcop : ¬ 53 ∣ (1756 - 1753) := by decide
  have heq : (1756 : ZMod 53) ^ 13 = (1753 : ZMod 53) ^ 13 := by decide
  have hne : (1756 : ZMod 2809) ^ 13 ≠ (1753 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1756 := by decide
  have hB : ¬ 53 ∣ 1753 := by decide
  have hexp :=
    has_exp_one_of_zmod 1753 1756 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1753 1756 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1753 1756 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1753 1756 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1753 1756 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1790_1793 :
    HasPrimeWithExpOne (S_val 1790 1793) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1790 1793 ∧ ¬ p ∣ (1793 - 1790) ∧
      ∃ (hNotC : ¬ p ∣ 1793) (hNotB : ¬ p ∣ 1790),
        order_of_C_B_inv_mod_p2 1793 1790 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1790 1793 := by
  have hlt : (1790 : Nat) < 1793 := by decide
  have hcop : ¬ 157 ∣ (1793 - 1790) := by decide
  have heq : (1793 : ZMod 157) ^ 13 = (1790 : ZMod 157) ^ 13 := by decide
  have hne : (1793 : ZMod 24649) ^ 13 ≠ (1790 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 1793 := by decide
  have hB : ¬ 157 ∣ 1790 := by decide
  have hexp :=
    has_exp_one_of_zmod 1790 1793 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1790 1793 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1790 1793 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1790 1793 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1790 1793 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1834_1837 :
    HasPrimeWithExpOne (S_val 1834 1837) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1834 1837 ∧ ¬ p ∣ (1837 - 1834) ∧
      ∃ (hNotC : ¬ p ∣ 1837) (hNotB : ¬ p ∣ 1834),
        order_of_C_B_inv_mod_p2 1837 1834 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1834 1837 := by
  have hlt : (1834 : Nat) < 1837 := by decide
  have hcop : ¬ 53 ∣ (1837 - 1834) := by decide
  have heq : (1837 : ZMod 53) ^ 13 = (1834 : ZMod 53) ^ 13 := by decide
  have hne : (1837 : ZMod 2809) ^ 13 ≠ (1834 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1837 := by decide
  have hB : ¬ 53 ∣ 1834 := by decide
  have hexp :=
    has_exp_one_of_zmod 1834 1837 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1834 1837 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1834 1837 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1834 1837 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1834 1837 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1888_1891 :
    HasPrimeWithExpOne (S_val 1888 1891) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1888 1891 ∧ ¬ p ∣ (1891 - 1888) ∧
      ∃ (hNotC : ¬ p ∣ 1891) (hNotB : ¬ p ∣ 1888),
        order_of_C_B_inv_mod_p2 1891 1888 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1888 1891 := by
  have hlt : (1888 : Nat) < 1891 := by decide
  have hcop : ¬ 131 ∣ (1891 - 1888) := by decide
  have heq : (1891 : ZMod 131) ^ 13 = (1888 : ZMod 131) ^ 13 := by decide
  have hne : (1891 : ZMod 17161) ^ 13 ≠ (1888 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 1891 := by decide
  have hB : ¬ 131 ∣ 1888 := by decide
  have hexp :=
    has_exp_one_of_zmod 1888 1891 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1888 1891 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1888 1891 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1888 1891 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1888 1891 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1921_1924 :
    HasPrimeWithExpOne (S_val 1921 1924) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1921 1924 ∧ ¬ p ∣ (1924 - 1921) ∧
      ∃ (hNotC : ¬ p ∣ 1924) (hNotB : ¬ p ∣ 1921),
        order_of_C_B_inv_mod_p2 1924 1921 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1921 1924 := by
  have hlt : (1921 : Nat) < 1924 := by decide
  have hcop : ¬ 53 ∣ (1924 - 1921) := by decide
  have heq : (1924 : ZMod 53) ^ 13 = (1921 : ZMod 53) ^ 13 := by decide
  have hne : (1924 : ZMod 2809) ^ 13 ≠ (1921 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1924 := by decide
  have hB : ¬ 53 ∣ 1921 := by decide
  have hexp :=
    has_exp_one_of_zmod 1921 1924 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1921 1924 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1921 1924 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1921 1924 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1921 1924 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1987_1990 :
    HasPrimeWithExpOne (S_val 1987 1990) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1987 1990 ∧ ¬ p ∣ (1990 - 1987) ∧
      ∃ (hNotC : ¬ p ∣ 1990) (hNotB : ¬ p ∣ 1987),
        order_of_C_B_inv_mod_p2 1990 1987 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1987 1990 := by
  have hlt : (1987 : Nat) < 1990 := by decide
  have hcop : ¬ 79 ∣ (1990 - 1987) := by decide
  have heq : (1990 : ZMod 79) ^ 13 = (1987 : ZMod 79) ^ 13 := by decide
  have hne : (1990 : ZMod 6241) ^ 13 ≠ (1987 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 1990 := by decide
  have hB : ¬ 79 ∣ 1987 := by decide
  have hexp :=
    has_exp_one_of_zmod 1987 1990 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1987 1990 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1987 1990 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1987 1990 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1987 1990 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2039_2042 :
    HasPrimeWithExpOne (S_val 2039 2042) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2039 2042 ∧ ¬ p ∣ (2042 - 2039) ∧
      ∃ (hNotC : ¬ p ∣ 2042) (hNotB : ¬ p ∣ 2039),
        order_of_C_B_inv_mod_p2 2042 2039 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2039 2042 := by
  have hlt : (2039 : Nat) < 2042 := by decide
  have hcop : ¬ 79 ∣ (2042 - 2039) := by decide
  have heq : (2042 : ZMod 79) ^ 13 = (2039 : ZMod 79) ^ 13 := by decide
  have hne : (2042 : ZMod 6241) ^ 13 ≠ (2039 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2042 := by decide
  have hB : ¬ 79 ∣ 2039 := by decide
  have hexp :=
    has_exp_one_of_zmod 2039 2042 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2039 2042 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2039 2042 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2039 2042 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2039 2042 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2096_2099 :
    HasPrimeWithExpOne (S_val 2096 2099) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2096 2099 ∧ ¬ p ∣ (2099 - 2096) ∧
      ∃ (hNotC : ¬ p ∣ 2099) (hNotB : ¬ p ∣ 2096),
        order_of_C_B_inv_mod_p2 2099 2096 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2096 2099 := by
  have hlt : (2096 : Nat) < 2099 := by decide
  have hcop : ¬ 79 ∣ (2099 - 2096) := by decide
  have heq : (2099 : ZMod 79) ^ 13 = (2096 : ZMod 79) ^ 13 := by decide
  have hne : (2099 : ZMod 6241) ^ 13 ≠ (2096 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2099 := by decide
  have hB : ¬ 79 ∣ 2096 := by decide
  have hexp :=
    has_exp_one_of_zmod 2096 2099 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2096 2099 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2096 2099 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2096 2099 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2096 2099 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2147_2150 :
    HasPrimeWithExpOne (S_val 2147 2150) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2147 2150 ∧ ¬ p ∣ (2150 - 2147) ∧
      ∃ (hNotC : ¬ p ∣ 2150) (hNotB : ¬ p ∣ 2147),
        order_of_C_B_inv_mod_p2 2150 2147 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2147 2150 := by
  have hlt : (2147 : Nat) < 2150 := by decide
  have hcop : ¬ 79 ∣ (2150 - 2147) := by decide
  have heq : (2150 : ZMod 79) ^ 13 = (2147 : ZMod 79) ^ 13 := by decide
  have hne : (2150 : ZMod 6241) ^ 13 ≠ (2147 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2150 := by decide
  have hB : ¬ 79 ∣ 2147 := by decide
  have hexp :=
    has_exp_one_of_zmod 2147 2150 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2147 2150 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2147 2150 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2147 2150 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2147 2150 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2186_2189 :
    HasPrimeWithExpOne (S_val 2186 2189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2186 2189 ∧ ¬ p ∣ (2189 - 2186) ∧
      ∃ (hNotC : ¬ p ∣ 2189) (hNotB : ¬ p ∣ 2186),
        order_of_C_B_inv_mod_p2 2189 2186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2186 2189 := by
  have hlt : (2186 : Nat) < 2189 := by decide
  have hcop : ¬ 53 ∣ (2189 - 2186) := by decide
  have heq : (2189 : ZMod 53) ^ 13 = (2186 : ZMod 53) ^ 13 := by decide
  have hne : (2189 : ZMod 2809) ^ 13 ≠ (2186 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2189 := by decide
  have hB : ¬ 53 ∣ 2186 := by decide
  have hexp :=
    has_exp_one_of_zmod 2186 2189 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2186 2189 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2186 2189 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2186 2189 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2186 2189 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2236_2239 :
    HasPrimeWithExpOne (S_val 2236 2239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2236 2239 ∧ ¬ p ∣ (2239 - 2236) ∧
      ∃ (hNotC : ¬ p ∣ 2239) (hNotB : ¬ p ∣ 2236),
        order_of_C_B_inv_mod_p2 2239 2236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2236 2239 := by
  have hlt : (2236 : Nat) < 2239 := by decide
  have hcop : ¬ 53 ∣ (2239 - 2236) := by decide
  have heq : (2239 : ZMod 53) ^ 13 = (2236 : ZMod 53) ^ 13 := by decide
  have hne : (2239 : ZMod 2809) ^ 13 ≠ (2236 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2239 := by decide
  have hB : ¬ 53 ∣ 2236 := by decide
  have hexp :=
    has_exp_one_of_zmod 2236 2239 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2236 2239 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2236 2239 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2236 2239 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2236 2239 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2284_2287 :
    HasPrimeWithExpOne (S_val 2284 2287) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2284 2287 ∧ ¬ p ∣ (2287 - 2284) ∧
      ∃ (hNotC : ¬ p ∣ 2287) (hNotB : ¬ p ∣ 2284),
        order_of_C_B_inv_mod_p2 2287 2284 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2284 2287 := by
  have hlt : (2284 : Nat) < 2287 := by decide
  have hcop : ¬ 53 ∣ (2287 - 2284) := by decide
  have heq : (2287 : ZMod 53) ^ 13 = (2284 : ZMod 53) ^ 13 := by decide
  have hne : (2287 : ZMod 2809) ^ 13 ≠ (2284 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2287 := by decide
  have hB : ¬ 53 ∣ 2284 := by decide
  have hexp :=
    has_exp_one_of_zmod 2284 2287 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2284 2287 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2284 2287 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2284 2287 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2284 2287 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2326_2329 :
    HasPrimeWithExpOne (S_val 2326 2329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2326 2329 ∧ ¬ p ∣ (2329 - 2326) ∧
      ∃ (hNotC : ¬ p ∣ 2329) (hNotB : ¬ p ∣ 2326),
        order_of_C_B_inv_mod_p2 2329 2326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2326 2329 := by
  have hlt : (2326 : Nat) < 2329 := by decide
  have hcop : ¬ 521 ∣ (2329 - 2326) := by decide
  have heq : (2329 : ZMod 521) ^ 13 = (2326 : ZMod 521) ^ 13 := by decide
  have hne : (2329 : ZMod 271441) ^ 13 ≠ (2326 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 2329 := by decide
  have hB : ¬ 521 ∣ 2326 := by decide
  have hexp :=
    has_exp_one_of_zmod 2326 2329 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2326 2329 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2326 2329 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2326 2329 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2326 2329 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2377_2380 :
    HasPrimeWithExpOne (S_val 2377 2380) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2377 2380 ∧ ¬ p ∣ (2380 - 2377) ∧
      ∃ (hNotC : ¬ p ∣ 2380) (hNotB : ¬ p ∣ 2377),
        order_of_C_B_inv_mod_p2 2380 2377 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2377 2380 := by
  have hlt : (2377 : Nat) < 2380 := by decide
  have hcop : ¬ 53 ∣ (2380 - 2377) := by decide
  have heq : (2380 : ZMod 53) ^ 13 = (2377 : ZMod 53) ^ 13 := by decide
  have hne : (2380 : ZMod 2809) ^ 13 ≠ (2377 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2380 := by decide
  have hB : ¬ 53 ∣ 2377 := by decide
  have hexp :=
    has_exp_one_of_zmod 2377 2380 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2377 2380 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2377 2380 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2377 2380 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2377 2380 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2425_2428 :
    HasPrimeWithExpOne (S_val 2425 2428) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2425 2428 ∧ ¬ p ∣ (2428 - 2425) ∧
      ∃ (hNotC : ¬ p ∣ 2428) (hNotB : ¬ p ∣ 2425),
        order_of_C_B_inv_mod_p2 2428 2425 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2425 2428 := by
  have hlt : (2425 : Nat) < 2428 := by decide
  have hcop : ¬ 53 ∣ (2428 - 2425) := by decide
  have heq : (2428 : ZMod 53) ^ 13 = (2425 : ZMod 53) ^ 13 := by decide
  have hne : (2428 : ZMod 2809) ^ 13 ≠ (2425 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2428 := by decide
  have hB : ¬ 53 ∣ 2425 := by decide
  have hexp :=
    has_exp_one_of_zmod 2425 2428 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2425 2428 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2425 2428 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2425 2428 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2425 2428 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2462_2465 :
    HasPrimeWithExpOne (S_val 2462 2465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2462 2465 ∧ ¬ p ∣ (2465 - 2462) ∧
      ∃ (hNotC : ¬ p ∣ 2465) (hNotB : ¬ p ∣ 2462),
        order_of_C_B_inv_mod_p2 2465 2462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2462 2465 := by
  have hlt : (2462 : Nat) < 2465 := by decide
  have hcop : ¬ 79 ∣ (2465 - 2462) := by decide
  have heq : (2465 : ZMod 79) ^ 13 = (2462 : ZMod 79) ^ 13 := by decide
  have hne : (2465 : ZMod 6241) ^ 13 ≠ (2462 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2465 := by decide
  have hB : ¬ 79 ∣ 2462 := by decide
  have hexp :=
    has_exp_one_of_zmod 2462 2465 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2462 2465 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2462 2465 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2462 2465 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2462 2465 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2509_2512 :
    HasPrimeWithExpOne (S_val 2509 2512) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2509 2512 ∧ ¬ p ∣ (2512 - 2509) ∧
      ∃ (hNotC : ¬ p ∣ 2512) (hNotB : ¬ p ∣ 2509),
        order_of_C_B_inv_mod_p2 2512 2509 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2509 2512 := by
  have hlt : (2509 : Nat) < 2512 := by decide
  have hcop : ¬ 53 ∣ (2512 - 2509) := by decide
  have heq : (2512 : ZMod 53) ^ 13 = (2509 : ZMod 53) ^ 13 := by decide
  have hne : (2512 : ZMod 2809) ^ 13 ≠ (2509 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2512 := by decide
  have hB : ¬ 53 ∣ 2509 := by decide
  have hexp :=
    has_exp_one_of_zmod 2509 2512 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2509 2512 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2509 2512 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2509 2512 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2509 2512 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2551_2554 :
    HasPrimeWithExpOne (S_val 2551 2554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2551 2554 ∧ ¬ p ∣ (2554 - 2551) ∧
      ∃ (hNotC : ¬ p ∣ 2554) (hNotB : ¬ p ∣ 2551),
        order_of_C_B_inv_mod_p2 2554 2551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2551 2554 := by
  have hlt : (2551 : Nat) < 2554 := by decide
  have hcop : ¬ 79 ∣ (2554 - 2551) := by decide
  have heq : (2554 : ZMod 79) ^ 13 = (2551 : ZMod 79) ^ 13 := by decide
  have hne : (2554 : ZMod 6241) ^ 13 ≠ (2551 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2554 := by decide
  have hB : ¬ 79 ∣ 2551 := by decide
  have hexp :=
    has_exp_one_of_zmod 2551 2554 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2551 2554 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2551 2554 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2551 2554 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2551 2554 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2602_2605 :
    HasPrimeWithExpOne (S_val 2602 2605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2602 2605 ∧ ¬ p ∣ (2605 - 2602) ∧
      ∃ (hNotC : ¬ p ∣ 2605) (hNotB : ¬ p ∣ 2602),
        order_of_C_B_inv_mod_p2 2605 2602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2602 2605 := by
  have hlt : (2602 : Nat) < 2605 := by decide
  have hcop : ¬ 53 ∣ (2605 - 2602) := by decide
  have heq : (2605 : ZMod 53) ^ 13 = (2602 : ZMod 53) ^ 13 := by decide
  have hne : (2605 : ZMod 2809) ^ 13 ≠ (2602 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2605 := by decide
  have hB : ¬ 53 ∣ 2602 := by decide
  have hexp :=
    has_exp_one_of_zmod 2602 2605 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2602 2605 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2602 2605 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2602 2605 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2602 2605 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2659_2662 :
    HasPrimeWithExpOne (S_val 2659 2662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2659 2662 ∧ ¬ p ∣ (2662 - 2659) ∧
      ∃ (hNotC : ¬ p ∣ 2662) (hNotB : ¬ p ∣ 2659),
        order_of_C_B_inv_mod_p2 2662 2659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2659 2662 := by
  have hlt : (2659 : Nat) < 2662 := by decide
  have hcop : ¬ 547 ∣ (2662 - 2659) := by decide
  have heq : (2662 : ZMod 547) ^ 13 = (2659 : ZMod 547) ^ 13 := by decide
  have hne : (2662 : ZMod 299209) ^ 13 ≠ (2659 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 2662 := by decide
  have hB : ¬ 547 ∣ 2659 := by decide
  have hexp :=
    has_exp_one_of_zmod 2659 2662 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2659 2662 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2659 2662 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2659 2662 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2659 2662 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2699_2702 :
    HasPrimeWithExpOne (S_val 2699 2702) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2699 2702 ∧ ¬ p ∣ (2702 - 2699) ∧
      ∃ (hNotC : ¬ p ∣ 2702) (hNotB : ¬ p ∣ 2699),
        order_of_C_B_inv_mod_p2 2702 2699 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2699 2702 := by
  have hlt : (2699 : Nat) < 2702 := by decide
  have hcop : ¬ 79 ∣ (2702 - 2699) := by decide
  have heq : (2702 : ZMod 79) ^ 13 = (2699 : ZMod 79) ^ 13 := by decide
  have hne : (2702 : ZMod 6241) ^ 13 ≠ (2699 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2702 := by decide
  have hB : ¬ 79 ∣ 2699 := by decide
  have hexp :=
    has_exp_one_of_zmod 2699 2702 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2699 2702 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2699 2702 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2699 2702 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2699 2702 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2743_2746 :
    HasPrimeWithExpOne (S_val 2743 2746) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2743 2746 ∧ ¬ p ∣ (2746 - 2743) ∧
      ∃ (hNotC : ¬ p ∣ 2746) (hNotB : ¬ p ∣ 2743),
        order_of_C_B_inv_mod_p2 2746 2743 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2743 2746 := by
  have hlt : (2743 : Nat) < 2746 := by decide
  have hcop : ¬ 53 ∣ (2746 - 2743) := by decide
  have heq : (2746 : ZMod 53) ^ 13 = (2743 : ZMod 53) ^ 13 := by decide
  have hne : (2746 : ZMod 2809) ^ 13 ≠ (2743 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2746 := by decide
  have hB : ¬ 53 ∣ 2743 := by decide
  have hexp :=
    has_exp_one_of_zmod 2743 2746 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2743 2746 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2743 2746 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2743 2746 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2743 2746 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2788_2791 :
    HasPrimeWithExpOne (S_val 2788 2791) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2788 2791 ∧ ¬ p ∣ (2791 - 2788) ∧
      ∃ (hNotC : ¬ p ∣ 2791) (hNotB : ¬ p ∣ 2788),
        order_of_C_B_inv_mod_p2 2791 2788 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2788 2791 := by
  have hlt : (2788 : Nat) < 2791 := by decide
  have hcop : ¬ 53 ∣ (2791 - 2788) := by decide
  have heq : (2791 : ZMod 53) ^ 13 = (2788 : ZMod 53) ^ 13 := by decide
  have hne : (2791 : ZMod 2809) ^ 13 ≠ (2788 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2791 := by decide
  have hB : ¬ 53 ∣ 2788 := by decide
  have hexp :=
    has_exp_one_of_zmod 2788 2791 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2788 2791 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2788 2791 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2788 2791 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2788 2791 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2831_2834 :
    HasPrimeWithExpOne (S_val 2831 2834) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2831 2834 ∧ ¬ p ∣ (2834 - 2831) ∧
      ∃ (hNotC : ¬ p ∣ 2834) (hNotB : ¬ p ∣ 2831),
        order_of_C_B_inv_mod_p2 2834 2831 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2831 2834 := by
  have hlt : (2831 : Nat) < 2834 := by decide
  have hcop : ¬ 313 ∣ (2834 - 2831) := by decide
  have heq : (2834 : ZMod 313) ^ 13 = (2831 : ZMod 313) ^ 13 := by decide
  have hne : (2834 : ZMod 97969) ^ 13 ≠ (2831 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 2834 := by decide
  have hB : ¬ 313 ∣ 2831 := by decide
  have hexp :=
    has_exp_one_of_zmod 2831 2834 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2831 2834 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2831 2834 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2831 2834 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2831 2834 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2876_2879 :
    HasPrimeWithExpOne (S_val 2876 2879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2876 2879 ∧ ¬ p ∣ (2879 - 2876) ∧
      ∃ (hNotC : ¬ p ∣ 2879) (hNotB : ¬ p ∣ 2876),
        order_of_C_B_inv_mod_p2 2879 2876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2876 2879 := by
  have hlt : (2876 : Nat) < 2879 := by decide
  have hcop : ¬ 157 ∣ (2879 - 2876) := by decide
  have heq : (2879 : ZMod 157) ^ 13 = (2876 : ZMod 157) ^ 13 := by decide
  have hne : (2879 : ZMod 24649) ^ 13 ≠ (2876 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 2879 := by decide
  have hB : ¬ 157 ∣ 2876 := by decide
  have hexp :=
    has_exp_one_of_zmod 2876 2879 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2876 2879 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2876 2879 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2876 2879 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2876 2879 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2935_2938 :
    HasPrimeWithExpOne (S_val 2935 2938) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2935 2938 ∧ ¬ p ∣ (2938 - 2935) ∧
      ∃ (hNotC : ¬ p ∣ 2938) (hNotB : ¬ p ∣ 2935),
        order_of_C_B_inv_mod_p2 2938 2935 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2935 2938 := by
  have hlt : (2935 : Nat) < 2938 := by decide
  have hcop : ¬ 79 ∣ (2938 - 2935) := by decide
  have heq : (2938 : ZMod 79) ^ 13 = (2935 : ZMod 79) ^ 13 := by decide
  have hne : (2938 : ZMod 6241) ^ 13 ≠ (2935 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2938 := by decide
  have hB : ¬ 79 ∣ 2935 := by decide
  have hexp :=
    has_exp_one_of_zmod 2935 2938 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2935 2938 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2935 2938 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2935 2938 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2935 2938 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2986_2989 :
    HasPrimeWithExpOne (S_val 2986 2989) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2986 2989 ∧ ¬ p ∣ (2989 - 2986) ∧
      ∃ (hNotC : ¬ p ∣ 2989) (hNotB : ¬ p ∣ 2986),
        order_of_C_B_inv_mod_p2 2989 2986 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2986 2989 := by
  have hlt : (2986 : Nat) < 2989 := by decide
  have hcop : ¬ 53 ∣ (2989 - 2986) := by decide
  have heq : (2989 : ZMod 53) ^ 13 = (2986 : ZMod 53) ^ 13 := by decide
  have hne : (2989 : ZMod 2809) ^ 13 ≠ (2986 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2989 := by decide
  have hB : ¬ 53 ∣ 2986 := by decide
  have hexp :=
    has_exp_one_of_zmod 2986 2989 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2986 2989 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2986 2989 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2986 2989 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2986 2989 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3044_3047 :
    HasPrimeWithExpOne (S_val 3044 3047) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3044 3047 ∧ ¬ p ∣ (3047 - 3044) ∧
      ∃ (hNotC : ¬ p ∣ 3047) (hNotB : ¬ p ∣ 3044),
        order_of_C_B_inv_mod_p2 3047 3044 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3044 3047 := by
  have hlt : (3044 : Nat) < 3047 := by decide
  have hcop : ¬ 79 ∣ (3047 - 3044) := by decide
  have heq : (3047 : ZMod 79) ^ 13 = (3044 : ZMod 79) ^ 13 := by decide
  have hne : (3047 : ZMod 6241) ^ 13 ≠ (3044 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 3047 := by decide
  have hB : ¬ 79 ∣ 3044 := by decide
  have hexp :=
    has_exp_one_of_zmod 3044 3047 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3044 3047 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3044 3047 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3044 3047 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3044 3047 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3080_3083 :
    HasPrimeWithExpOne (S_val 3080 3083) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3080 3083 ∧ ¬ p ∣ (3083 - 3080) ∧
      ∃ (hNotC : ¬ p ∣ 3083) (hNotB : ¬ p ∣ 3080),
        order_of_C_B_inv_mod_p2 3083 3080 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3080 3083 := by
  have hlt : (3080 : Nat) < 3083 := by decide
  have hcop : ¬ 53 ∣ (3083 - 3080) := by decide
  have heq : (3083 : ZMod 53) ^ 13 = (3080 : ZMod 53) ^ 13 := by decide
  have hne : (3083 : ZMod 2809) ^ 13 ≠ (3080 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3083 := by decide
  have hB : ¬ 53 ∣ 3080 := by decide
  have hexp :=
    has_exp_one_of_zmod 3080 3083 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3080 3083 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3080 3083 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3080 3083 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3080 3083 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3133_3136 :
    HasPrimeWithExpOne (S_val 3133 3136) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3133 3136 ∧ ¬ p ∣ (3136 - 3133) ∧
      ∃ (hNotC : ¬ p ∣ 3136) (hNotB : ¬ p ∣ 3133),
        order_of_C_B_inv_mod_p2 3136 3133 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3133 3136 := by
  have hlt : (3133 : Nat) < 3136 := by decide
  have hcop : ¬ 53 ∣ (3136 - 3133) := by decide
  have heq : (3136 : ZMod 53) ^ 13 = (3133 : ZMod 53) ^ 13 := by decide
  have hne : (3136 : ZMod 2809) ^ 13 ≠ (3133 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3136 := by decide
  have hB : ¬ 53 ∣ 3133 := by decide
  have hexp :=
    has_exp_one_of_zmod 3133 3136 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3133 3136 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3133 3136 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3133 3136 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3133 3136 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3184_3187 :
    HasPrimeWithExpOne (S_val 3184 3187) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3184 3187 ∧ ¬ p ∣ (3187 - 3184) ∧
      ∃ (hNotC : ¬ p ∣ 3187) (hNotB : ¬ p ∣ 3184),
        order_of_C_B_inv_mod_p2 3187 3184 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3184 3187 := by
  have hlt : (3184 : Nat) < 3187 := by decide
  have hcop : ¬ 53 ∣ (3187 - 3184) := by decide
  have heq : (3187 : ZMod 53) ^ 13 = (3184 : ZMod 53) ^ 13 := by decide
  have hne : (3187 : ZMod 2809) ^ 13 ≠ (3184 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3187 := by decide
  have hB : ¬ 53 ∣ 3184 := by decide
  have hexp :=
    has_exp_one_of_zmod 3184 3187 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3184 3187 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3184 3187 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3184 3187 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3184 3187 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3224_3227 :
    HasPrimeWithExpOne (S_val 3224 3227) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3224 3227 ∧ ¬ p ∣ (3227 - 3224) ∧
      ∃ (hNotC : ¬ p ∣ 3227) (hNotB : ¬ p ∣ 3224),
        order_of_C_B_inv_mod_p2 3227 3224 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3224 3227 := by
  have hlt : (3224 : Nat) < 3227 := by decide
  have hcop : ¬ 53 ∣ (3227 - 3224) := by decide
  have heq : (3227 : ZMod 53) ^ 13 = (3224 : ZMod 53) ^ 13 := by decide
  have hne : (3227 : ZMod 2809) ^ 13 ≠ (3224 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3227 := by decide
  have hB : ¬ 53 ∣ 3224 := by decide
  have hexp :=
    has_exp_one_of_zmod 3224 3227 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3224 3227 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3224 3227 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3224 3227 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3224 3227 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3278_3281 :
    HasPrimeWithExpOne (S_val 3278 3281) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3278 3281 ∧ ¬ p ∣ (3281 - 3278) ∧
      ∃ (hNotC : ¬ p ∣ 3281) (hNotB : ¬ p ∣ 3278),
        order_of_C_B_inv_mod_p2 3281 3278 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3278 3281 := by
  have hlt : (3278 : Nat) < 3281 := by decide
  have hcop : ¬ 53 ∣ (3281 - 3278) := by decide
  have heq : (3281 : ZMod 53) ^ 13 = (3278 : ZMod 53) ^ 13 := by decide
  have hne : (3281 : ZMod 2809) ^ 13 ≠ (3278 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3281 := by decide
  have hB : ¬ 53 ∣ 3278 := by decide
  have hexp :=
    has_exp_one_of_zmod 3278 3281 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3278 3281 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3278 3281 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3278 3281 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3278 3281 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3335_3338 :
    HasPrimeWithExpOne (S_val 3335 3338) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3335 3338 ∧ ¬ p ∣ (3338 - 3335) ∧
      ∃ (hNotC : ¬ p ∣ 3338) (hNotB : ¬ p ∣ 3335),
        order_of_C_B_inv_mod_p2 3338 3335 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3335 3338 := by
  have hlt : (3335 : Nat) < 3338 := by decide
  have hcop : ¬ 131 ∣ (3338 - 3335) := by decide
  have heq : (3338 : ZMod 131) ^ 13 = (3335 : ZMod 131) ^ 13 := by decide
  have hne : (3338 : ZMod 17161) ^ 13 ≠ (3335 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 3338 := by decide
  have hB : ¬ 131 ∣ 3335 := by decide
  have hexp :=
    has_exp_one_of_zmod 3335 3338 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3335 3338 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3335 3338 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3335 3338 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3335 3338 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3382_3385 :
    HasPrimeWithExpOne (S_val 3382 3385) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3382 3385 ∧ ¬ p ∣ (3385 - 3382) ∧
      ∃ (hNotC : ¬ p ∣ 3385) (hNotB : ¬ p ∣ 3382),
        order_of_C_B_inv_mod_p2 3385 3382 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3382 3385 := by
  have hlt : (3382 : Nat) < 3385 := by decide
  have hcop : ¬ 79 ∣ (3385 - 3382) := by decide
  have heq : (3385 : ZMod 79) ^ 13 = (3382 : ZMod 79) ^ 13 := by decide
  have hne : (3385 : ZMod 6241) ^ 13 ≠ (3382 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 3385 := by decide
  have hB : ¬ 79 ∣ 3382 := by decide
  have hexp :=
    has_exp_one_of_zmod 3382 3385 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3382 3385 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3382 3385 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3382 3385 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3382 3385 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3424_3427 :
    HasPrimeWithExpOne (S_val 3424 3427) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3424 3427 ∧ ¬ p ∣ (3427 - 3424) ∧
      ∃ (hNotC : ¬ p ∣ 3427) (hNotB : ¬ p ∣ 3424),
        order_of_C_B_inv_mod_p2 3427 3424 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3424 3427 := by
  have hlt : (3424 : Nat) < 3427 := by decide
  have hcop : ¬ 53 ∣ (3427 - 3424) := by decide
  have heq : (3427 : ZMod 53) ^ 13 = (3424 : ZMod 53) ^ 13 := by decide
  have hne : (3427 : ZMod 2809) ^ 13 ≠ (3424 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3427 := by decide
  have hB : ¬ 53 ∣ 3424 := by decide
  have hexp :=
    has_exp_one_of_zmod 3424 3427 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3424 3427 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3424 3427 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3424 3427 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3424 3427 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3475_3478 :
    HasPrimeWithExpOne (S_val 3475 3478) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3475 3478 ∧ ¬ p ∣ (3478 - 3475) ∧
      ∃ (hNotC : ¬ p ∣ 3478) (hNotB : ¬ p ∣ 3475),
        order_of_C_B_inv_mod_p2 3478 3475 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3475 3478 := by
  have hlt : (3475 : Nat) < 3478 := by decide
  have hcop : ¬ 157 ∣ (3478 - 3475) := by decide
  have heq : (3478 : ZMod 157) ^ 13 = (3475 : ZMod 157) ^ 13 := by decide
  have hne : (3478 : ZMod 24649) ^ 13 ≠ (3475 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 3478 := by decide
  have hB : ¬ 157 ∣ 3475 := by decide
  have hexp :=
    has_exp_one_of_zmod 3475 3478 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3475 3478 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3475 3478 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3475 3478 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3475 3478 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3508_3511 :
    HasPrimeWithExpOne (S_val 3508 3511) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3508 3511 ∧ ¬ p ∣ (3511 - 3508) ∧
      ∃ (hNotC : ¬ p ∣ 3511) (hNotB : ¬ p ∣ 3508),
        order_of_C_B_inv_mod_p2 3511 3508 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3508 3511 := by
  have hlt : (3508 : Nat) < 3511 := by decide
  have hcop : ¬ 53 ∣ (3511 - 3508) := by decide
  have heq : (3511 : ZMod 53) ^ 13 = (3508 : ZMod 53) ^ 13 := by decide
  have hne : (3511 : ZMod 2809) ^ 13 ≠ (3508 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3511 := by decide
  have hB : ¬ 53 ∣ 3508 := by decide
  have hexp :=
    has_exp_one_of_zmod 3508 3511 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3508 3511 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3508 3511 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3508 3511 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3508 3511 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3556_3559 :
    HasPrimeWithExpOne (S_val 3556 3559) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3556 3559 ∧ ¬ p ∣ (3559 - 3556) ∧
      ∃ (hNotC : ¬ p ∣ 3559) (hNotB : ¬ p ∣ 3556),
        order_of_C_B_inv_mod_p2 3559 3556 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3556 3559 := by
  have hlt : (3556 : Nat) < 3559 := by decide
  have hcop : ¬ 53 ∣ (3559 - 3556) := by decide
  have heq : (3559 : ZMod 53) ^ 13 = (3556 : ZMod 53) ^ 13 := by decide
  have hne : (3559 : ZMod 2809) ^ 13 ≠ (3556 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3559 := by decide
  have hB : ¬ 53 ∣ 3556 := by decide
  have hexp :=
    has_exp_one_of_zmod 3556 3559 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3556 3559 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3556 3559 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3556 3559 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3556 3559 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3608_3611 :
    HasPrimeWithExpOne (S_val 3608 3611) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3608 3611 ∧ ¬ p ∣ (3611 - 3608) ∧
      ∃ (hNotC : ¬ p ∣ 3611) (hNotB : ¬ p ∣ 3608),
        order_of_C_B_inv_mod_p2 3611 3608 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3608 3611 := by
  have hlt : (3608 : Nat) < 3611 := by decide
  have hcop : ¬ 53 ∣ (3611 - 3608) := by decide
  have heq : (3611 : ZMod 53) ^ 13 = (3608 : ZMod 53) ^ 13 := by decide
  have hne : (3611 : ZMod 2809) ^ 13 ≠ (3608 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3611 := by decide
  have hB : ¬ 53 ∣ 3608 := by decide
  have hexp :=
    has_exp_one_of_zmod 3608 3611 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3608 3611 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3608 3611 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3608 3611 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3608 3611 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3650_3653 :
    HasPrimeWithExpOne (S_val 3650 3653) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3650 3653 ∧ ¬ p ∣ (3653 - 3650) ∧
      ∃ (hNotC : ¬ p ∣ 3653) (hNotB : ¬ p ∣ 3650),
        order_of_C_B_inv_mod_p2 3653 3650 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3650 3653 := by
  have hlt : (3650 : Nat) < 3653 := by decide
  have hcop : ¬ 53 ∣ (3653 - 3650) := by decide
  have heq : (3653 : ZMod 53) ^ 13 = (3650 : ZMod 53) ^ 13 := by decide
  have hne : (3653 : ZMod 2809) ^ 13 ≠ (3650 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3653 := by decide
  have hB : ¬ 53 ∣ 3650 := by decide
  have hexp :=
    has_exp_one_of_zmod 3650 3653 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3650 3653 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3650 3653 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3650 3653 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3650 3653 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3698_3701 :
    HasPrimeWithExpOne (S_val 3698 3701) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3698 3701 ∧ ¬ p ∣ (3701 - 3698) ∧
      ∃ (hNotC : ¬ p ∣ 3701) (hNotB : ¬ p ∣ 3698),
        order_of_C_B_inv_mod_p2 3701 3698 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3698 3701 := by
  have hlt : (3698 : Nat) < 3701 := by decide
  have hcop : ¬ 79 ∣ (3701 - 3698) := by decide
  have heq : (3701 : ZMod 79) ^ 13 = (3698 : ZMod 79) ^ 13 := by decide
  have hne : (3701 : ZMod 6241) ^ 13 ≠ (3698 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 3701 := by decide
  have hB : ¬ 79 ∣ 3698 := by decide
  have hexp :=
    has_exp_one_of_zmod 3698 3701 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3698 3701 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3698 3701 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3698 3701 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3698 3701 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3755_3758 :
    HasPrimeWithExpOne (S_val 3755 3758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3755 3758 ∧ ¬ p ∣ (3758 - 3755) ∧
      ∃ (hNotC : ¬ p ∣ 3758) (hNotB : ¬ p ∣ 3755),
        order_of_C_B_inv_mod_p2 3758 3755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3755 3758 := by
  have hlt : (3755 : Nat) < 3758 := by decide
  have hcop : ¬ 53 ∣ (3758 - 3755) := by decide
  have heq : (3758 : ZMod 53) ^ 13 = (3755 : ZMod 53) ^ 13 := by decide
  have hne : (3758 : ZMod 2809) ^ 13 ≠ (3755 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3758 := by decide
  have hB : ¬ 53 ∣ 3755 := by decide
  have hexp :=
    has_exp_one_of_zmod 3755 3758 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3755 3758 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3755 3758 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3755 3758 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3755 3758 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3803_3806 :
    HasPrimeWithExpOne (S_val 3803 3806) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3803 3806 ∧ ¬ p ∣ (3806 - 3803) ∧
      ∃ (hNotC : ¬ p ∣ 3806) (hNotB : ¬ p ∣ 3803),
        order_of_C_B_inv_mod_p2 3806 3803 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3803 3806 := by
  have hlt : (3803 : Nat) < 3806 := by decide
  have hcop : ¬ 53 ∣ (3806 - 3803) := by decide
  have heq : (3806 : ZMod 53) ^ 13 = (3803 : ZMod 53) ^ 13 := by decide
  have hne : (3806 : ZMod 2809) ^ 13 ≠ (3803 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3806 := by decide
  have hB : ¬ 53 ∣ 3803 := by decide
  have hexp :=
    has_exp_one_of_zmod 3803 3806 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3803 3806 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3803 3806 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3803 3806 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3803 3806 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3848_3851 :
    HasPrimeWithExpOne (S_val 3848 3851) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3848 3851 ∧ ¬ p ∣ (3851 - 3848) ∧
      ∃ (hNotC : ¬ p ∣ 3851) (hNotB : ¬ p ∣ 3848),
        order_of_C_B_inv_mod_p2 3851 3848 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3848 3851 := by
  have hlt : (3848 : Nat) < 3851 := by decide
  have hcop : ¬ 53 ∣ (3851 - 3848) := by decide
  have heq : (3851 : ZMod 53) ^ 13 = (3848 : ZMod 53) ^ 13 := by decide
  have hne : (3851 : ZMod 2809) ^ 13 ≠ (3848 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3851 := by decide
  have hB : ¬ 53 ∣ 3848 := by decide
  have hexp :=
    has_exp_one_of_zmod 3848 3851 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3848 3851 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3848 3851 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3848 3851 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3848 3851 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3889_3892 :
    HasPrimeWithExpOne (S_val 3889 3892) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3889 3892 ∧ ¬ p ∣ (3892 - 3889) ∧
      ∃ (hNotC : ¬ p ∣ 3892) (hNotB : ¬ p ∣ 3889),
        order_of_C_B_inv_mod_p2 3892 3889 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3889 3892 := by
  have hlt : (3889 : Nat) < 3892 := by decide
  have hcop : ¬ 79 ∣ (3892 - 3889) := by decide
  have heq : (3892 : ZMod 79) ^ 13 = (3889 : ZMod 79) ^ 13 := by decide
  have hne : (3892 : ZMod 6241) ^ 13 ≠ (3889 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 3892 := by decide
  have hB : ¬ 79 ∣ 3889 := by decide
  have hexp :=
    has_exp_one_of_zmod 3889 3892 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3889 3892 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3889 3892 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3889 3892 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3889 3892 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3940_3943 :
    HasPrimeWithExpOne (S_val 3940 3943) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3940 3943 ∧ ¬ p ∣ (3943 - 3940) ∧
      ∃ (hNotC : ¬ p ∣ 3943) (hNotB : ¬ p ∣ 3940),
        order_of_C_B_inv_mod_p2 3943 3940 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3940 3943 := by
  have hlt : (3940 : Nat) < 3943 := by decide
  have hcop : ¬ 53 ∣ (3943 - 3940) := by decide
  have heq : (3943 : ZMod 53) ^ 13 = (3940 : ZMod 53) ^ 13 := by decide
  have hne : (3943 : ZMod 2809) ^ 13 ≠ (3940 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3943 := by decide
  have hB : ¬ 53 ∣ 3940 := by decide
  have hexp :=
    has_exp_one_of_zmod 3940 3943 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3940 3943 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3940 3943 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3940 3943 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3940 3943 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3988_3991 :
    HasPrimeWithExpOne (S_val 3988 3991) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3988 3991 ∧ ¬ p ∣ (3991 - 3988) ∧
      ∃ (hNotC : ¬ p ∣ 3991) (hNotB : ¬ p ∣ 3988),
        order_of_C_B_inv_mod_p2 3991 3988 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3988 3991 := by
  have hlt : (3988 : Nat) < 3991 := by decide
  have hcop : ¬ 53 ∣ (3991 - 3988) := by decide
  have heq : (3991 : ZMod 53) ^ 13 = (3988 : ZMod 53) ^ 13 := by decide
  have hne : (3991 : ZMod 2809) ^ 13 ≠ (3988 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3991 := by decide
  have hB : ¬ 53 ∣ 3988 := by decide
  have hexp :=
    has_exp_one_of_zmod 3988 3991 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3988 3991 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3988 3991 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3988 3991 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3988 3991 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4021_4024 :
    HasPrimeWithExpOne (S_val 4021 4024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4021 4024 ∧ ¬ p ∣ (4024 - 4021) ∧
      ∃ (hNotC : ¬ p ∣ 4024) (hNotB : ¬ p ∣ 4021),
        order_of_C_B_inv_mod_p2 4024 4021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4021 4024 := by
  have hlt : (4021 : Nat) < 4024 := by decide
  have hcop : ¬ 53 ∣ (4024 - 4021) := by decide
  have heq : (4024 : ZMod 53) ^ 13 = (4021 : ZMod 53) ^ 13 := by decide
  have hne : (4024 : ZMod 2809) ^ 13 ≠ (4021 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4024 := by decide
  have hB : ¬ 53 ∣ 4021 := by decide
  have hexp :=
    has_exp_one_of_zmod 4021 4024 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4021 4024 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4021 4024 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4021 4024 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4021 4024 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4085_4088 :
    HasPrimeWithExpOne (S_val 4085 4088) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4085 4088 ∧ ¬ p ∣ (4088 - 4085) ∧
      ∃ (hNotC : ¬ p ∣ 4088) (hNotB : ¬ p ∣ 4085),
        order_of_C_B_inv_mod_p2 4088 4085 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4085 4088 := by
  have hlt : (4085 : Nat) < 4088 := by decide
  have hcop : ¬ 53 ∣ (4088 - 4085) := by decide
  have heq : (4088 : ZMod 53) ^ 13 = (4085 : ZMod 53) ^ 13 := by decide
  have hne : (4088 : ZMod 2809) ^ 13 ≠ (4085 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4088 := by decide
  have hB : ¬ 53 ∣ 4085 := by decide
  have hexp :=
    has_exp_one_of_zmod 4085 4088 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4085 4088 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4085 4088 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4085 4088 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4085 4088 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4132_4135 :
    HasPrimeWithExpOne (S_val 4132 4135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4132 4135 ∧ ¬ p ∣ (4135 - 4132) ∧
      ∃ (hNotC : ¬ p ∣ 4135) (hNotB : ¬ p ∣ 4132),
        order_of_C_B_inv_mod_p2 4135 4132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4132 4135 := by
  have hlt : (4132 : Nat) < 4135 := by decide
  have hcop : ¬ 157 ∣ (4135 - 4132) := by decide
  have heq : (4135 : ZMod 157) ^ 13 = (4132 : ZMod 157) ^ 13 := by decide
  have hne : (4135 : ZMod 24649) ^ 13 ≠ (4132 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 4135 := by decide
  have hB : ¬ 157 ∣ 4132 := by decide
  have hexp :=
    has_exp_one_of_zmod 4132 4135 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4132 4135 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4132 4135 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4132 4135 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4132 4135 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4186_4189 :
    HasPrimeWithExpOne (S_val 4186 4189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4186 4189 ∧ ¬ p ∣ (4189 - 4186) ∧
      ∃ (hNotC : ¬ p ∣ 4189) (hNotB : ¬ p ∣ 4186),
        order_of_C_B_inv_mod_p2 4189 4186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4186 4189 := by
  have hlt : (4186 : Nat) < 4189 := by decide
  have hcop : ¬ 157 ∣ (4189 - 4186) := by decide
  have heq : (4189 : ZMod 157) ^ 13 = (4186 : ZMod 157) ^ 13 := by decide
  have hne : (4189 : ZMod 24649) ^ 13 ≠ (4186 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 4189 := by decide
  have hB : ¬ 157 ∣ 4186 := by decide
  have hexp :=
    has_exp_one_of_zmod 4186 4189 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4186 4189 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4186 4189 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4186 4189 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4186 4189 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4246_4249 :
    HasPrimeWithExpOne (S_val 4246 4249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4246 4249 ∧ ¬ p ∣ (4249 - 4246) ∧
      ∃ (hNotC : ¬ p ∣ 4249) (hNotB : ¬ p ∣ 4246),
        order_of_C_B_inv_mod_p2 4249 4246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4246 4249 := by
  have hlt : (4246 : Nat) < 4249 := by decide
  have hcop : ¬ 53 ∣ (4249 - 4246) := by decide
  have heq : (4249 : ZMod 53) ^ 13 = (4246 : ZMod 53) ^ 13 := by decide
  have hne : (4249 : ZMod 2809) ^ 13 ≠ (4246 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4249 := by decide
  have hB : ¬ 53 ∣ 4246 := by decide
  have hexp :=
    has_exp_one_of_zmod 4246 4249 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4246 4249 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4246 4249 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4246 4249 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4246 4249 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4289_4292 :
    HasPrimeWithExpOne (S_val 4289 4292) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4289 4292 ∧ ¬ p ∣ (4292 - 4289) ∧
      ∃ (hNotC : ¬ p ∣ 4292) (hNotB : ¬ p ∣ 4289),
        order_of_C_B_inv_mod_p2 4292 4289 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4289 4292 := by
  have hlt : (4289 : Nat) < 4292 := by decide
  have hcop : ¬ 79 ∣ (4292 - 4289) := by decide
  have heq : (4292 : ZMod 79) ^ 13 = (4289 : ZMod 79) ^ 13 := by decide
  have hne : (4292 : ZMod 6241) ^ 13 ≠ (4289 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 4292 := by decide
  have hB : ¬ 79 ∣ 4289 := by decide
  have hexp :=
    has_exp_one_of_zmod 4289 4292 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4289 4292 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4289 4292 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4289 4292 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4289 4292 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4343_4346 :
    HasPrimeWithExpOne (S_val 4343 4346) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4343 4346 ∧ ¬ p ∣ (4346 - 4343) ∧
      ∃ (hNotC : ¬ p ∣ 4346) (hNotB : ¬ p ∣ 4343),
        order_of_C_B_inv_mod_p2 4346 4343 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4343 4346 := by
  have hlt : (4343 : Nat) < 4346 := by decide
  have hcop : ¬ 157 ∣ (4346 - 4343) := by decide
  have heq : (4346 : ZMod 157) ^ 13 = (4343 : ZMod 157) ^ 13 := by decide
  have hne : (4346 : ZMod 24649) ^ 13 ≠ (4343 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 4346 := by decide
  have hB : ¬ 157 ∣ 4343 := by decide
  have hexp :=
    has_exp_one_of_zmod 4343 4346 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4343 4346 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4343 4346 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4343 4346 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4343 4346 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4390_4393 :
    HasPrimeWithExpOne (S_val 4390 4393) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4390 4393 ∧ ¬ p ∣ (4393 - 4390) ∧
      ∃ (hNotC : ¬ p ∣ 4393) (hNotB : ¬ p ∣ 4390),
        order_of_C_B_inv_mod_p2 4393 4390 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4390 4393 := by
  have hlt : (4390 : Nat) < 4393 := by decide
  have hcop : ¬ 53 ∣ (4393 - 4390) := by decide
  have heq : (4393 : ZMod 53) ^ 13 = (4390 : ZMod 53) ^ 13 := by decide
  have hne : (4393 : ZMod 2809) ^ 13 ≠ (4390 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4393 := by decide
  have hB : ¬ 53 ∣ 4390 := by decide
  have hexp :=
    has_exp_one_of_zmod 4390 4393 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4390 4393 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4390 4393 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4390 4393 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4390 4393 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4439_4442 :
    HasPrimeWithExpOne (S_val 4439 4442) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4439 4442 ∧ ¬ p ∣ (4442 - 4439) ∧
      ∃ (hNotC : ¬ p ∣ 4442) (hNotB : ¬ p ∣ 4439),
        order_of_C_B_inv_mod_p2 4442 4439 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4439 4442 := by
  have hlt : (4439 : Nat) < 4442 := by decide
  have hcop : ¬ 53 ∣ (4442 - 4439) := by decide
  have heq : (4442 : ZMod 53) ^ 13 = (4439 : ZMod 53) ^ 13 := by decide
  have hne : (4442 : ZMod 2809) ^ 13 ≠ (4439 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4442 := by decide
  have hB : ¬ 53 ∣ 4439 := by decide
  have hexp :=
    has_exp_one_of_zmod 4439 4442 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4439 4442 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4439 4442 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4439 4442 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4439 4442 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4484_4487 :
    HasPrimeWithExpOne (S_val 4484 4487) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4484 4487 ∧ ¬ p ∣ (4487 - 4484) ∧
      ∃ (hNotC : ¬ p ∣ 4487) (hNotB : ¬ p ∣ 4484),
        order_of_C_B_inv_mod_p2 4487 4484 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4484 4487 := by
  have hlt : (4484 : Nat) < 4487 := by decide
  have hcop : ¬ 53 ∣ (4487 - 4484) := by decide
  have heq : (4487 : ZMod 53) ^ 13 = (4484 : ZMod 53) ^ 13 := by decide
  have hne : (4487 : ZMod 2809) ^ 13 ≠ (4484 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4487 := by decide
  have hB : ¬ 53 ∣ 4484 := by decide
  have hexp :=
    has_exp_one_of_zmod 4484 4487 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4484 4487 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4484 4487 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4484 4487 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4484 4487 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4529_4532 :
    HasPrimeWithExpOne (S_val 4529 4532) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4529 4532 ∧ ¬ p ∣ (4532 - 4529) ∧
      ∃ (hNotC : ¬ p ∣ 4532) (hNotB : ¬ p ∣ 4529),
        order_of_C_B_inv_mod_p2 4532 4529 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4529 4532 := by
  have hlt : (4529 : Nat) < 4532 := by decide
  have hcop : ¬ 157 ∣ (4532 - 4529) := by decide
  have heq : (4532 : ZMod 157) ^ 13 = (4529 : ZMod 157) ^ 13 := by decide
  have hne : (4532 : ZMod 24649) ^ 13 ≠ (4529 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 4532 := by decide
  have hB : ¬ 157 ∣ 4529 := by decide
  have hexp :=
    has_exp_one_of_zmod 4529 4532 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4529 4532 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4529 4532 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4529 4532 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4529 4532 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4574_4577 :
    HasPrimeWithExpOne (S_val 4574 4577) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4574 4577 ∧ ¬ p ∣ (4577 - 4574) ∧
      ∃ (hNotC : ¬ p ∣ 4577) (hNotB : ¬ p ∣ 4574),
        order_of_C_B_inv_mod_p2 4577 4574 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4574 4577 := by
  have hlt : (4574 : Nat) < 4577 := by decide
  have hcop : ¬ 157 ∣ (4577 - 4574) := by decide
  have heq : (4577 : ZMod 157) ^ 13 = (4574 : ZMod 157) ^ 13 := by decide
  have hne : (4577 : ZMod 24649) ^ 13 ≠ (4574 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 4577 := by decide
  have hB : ¬ 157 ∣ 4574 := by decide
  have hexp :=
    has_exp_one_of_zmod 4574 4577 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4574 4577 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4574 4577 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4574 4577 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4574 4577 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4640_4643 :
    HasPrimeWithExpOne (S_val 4640 4643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4640 4643 ∧ ¬ p ∣ (4643 - 4640) ∧
      ∃ (hNotC : ¬ p ∣ 4643) (hNotB : ¬ p ∣ 4640),
        order_of_C_B_inv_mod_p2 4643 4640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4640 4643 := by
  have hlt : (4640 : Nat) < 4643 := by decide
  have hcop : ¬ 79 ∣ (4643 - 4640) := by decide
  have heq : (4643 : ZMod 79) ^ 13 = (4640 : ZMod 79) ^ 13 := by decide
  have hne : (4643 : ZMod 6241) ^ 13 ≠ (4640 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 4643 := by decide
  have hB : ¬ 79 ∣ 4640 := by decide
  have hexp :=
    has_exp_one_of_zmod 4640 4643 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4640 4643 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4640 4643 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4640 4643 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4640 4643 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4684_4687 :
    HasPrimeWithExpOne (S_val 4684 4687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4684 4687 ∧ ¬ p ∣ (4687 - 4684) ∧
      ∃ (hNotC : ¬ p ∣ 4687) (hNotB : ¬ p ∣ 4684),
        order_of_C_B_inv_mod_p2 4687 4684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4684 4687 := by
  have hlt : (4684 : Nat) < 4687 := by decide
  have hcop : ¬ 79 ∣ (4687 - 4684) := by decide
  have heq : (4687 : ZMod 79) ^ 13 = (4684 : ZMod 79) ^ 13 := by decide
  have hne : (4687 : ZMod 6241) ^ 13 ≠ (4684 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 4687 := by decide
  have hB : ¬ 79 ∣ 4684 := by decide
  have hexp :=
    has_exp_one_of_zmod 4684 4687 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4684 4687 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4684 4687 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4684 4687 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4684 4687 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4738_4741 :
    HasPrimeWithExpOne (S_val 4738 4741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4738 4741 ∧ ¬ p ∣ (4741 - 4738) ∧
      ∃ (hNotC : ¬ p ∣ 4741) (hNotB : ¬ p ∣ 4738),
        order_of_C_B_inv_mod_p2 4741 4738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4738 4741 := by
  have hlt : (4738 : Nat) < 4741 := by decide
  have hcop : ¬ 313 ∣ (4741 - 4738) := by decide
  have heq : (4741 : ZMod 313) ^ 13 = (4738 : ZMod 313) ^ 13 := by decide
  have hne : (4741 : ZMod 97969) ^ 13 ≠ (4738 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 4741 := by decide
  have hB : ¬ 313 ∣ 4738 := by decide
  have hexp :=
    has_exp_one_of_zmod 4738 4741 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4738 4741 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4738 4741 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4738 4741 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4738 4741 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4784_4787 :
    HasPrimeWithExpOne (S_val 4784 4787) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4784 4787 ∧ ¬ p ∣ (4787 - 4784) ∧
      ∃ (hNotC : ¬ p ∣ 4787) (hNotB : ¬ p ∣ 4784),
        order_of_C_B_inv_mod_p2 4787 4784 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4784 4787 := by
  have hlt : (4784 : Nat) < 4787 := by decide
  have hcop : ¬ 131 ∣ (4787 - 4784) := by decide
  have heq : (4787 : ZMod 131) ^ 13 = (4784 : ZMod 131) ^ 13 := by decide
  have hne : (4787 : ZMod 17161) ^ 13 ≠ (4784 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 4787 := by decide
  have hB : ¬ 131 ∣ 4784 := by decide
  have hexp :=
    has_exp_one_of_zmod 4784 4787 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4784 4787 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4784 4787 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4784 4787 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4784 4787 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4834_4837 :
    HasPrimeWithExpOne (S_val 4834 4837) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4834 4837 ∧ ¬ p ∣ (4837 - 4834) ∧
      ∃ (hNotC : ¬ p ∣ 4837) (hNotB : ¬ p ∣ 4834),
        order_of_C_B_inv_mod_p2 4837 4834 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4834 4837 := by
  have hlt : (4834 : Nat) < 4837 := by decide
  have hcop : ¬ 443 ∣ (4837 - 4834) := by decide
  have heq : (4837 : ZMod 443) ^ 13 = (4834 : ZMod 443) ^ 13 := by decide
  have hne : (4837 : ZMod 196249) ^ 13 ≠ (4834 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 4837 := by decide
  have hB : ¬ 443 ∣ 4834 := by decide
  have hexp :=
    has_exp_one_of_zmod 4834 4837 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4834 4837 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4834 4837 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4834 4837 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4834 4837 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4880_4883 :
    HasPrimeWithExpOne (S_val 4880 4883) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4880 4883 ∧ ¬ p ∣ (4883 - 4880) ∧
      ∃ (hNotC : ¬ p ∣ 4883) (hNotB : ¬ p ∣ 4880),
        order_of_C_B_inv_mod_p2 4883 4880 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4880 4883 := by
  have hlt : (4880 : Nat) < 4883 := by decide
  have hcop : ¬ 53 ∣ (4883 - 4880) := by decide
  have heq : (4883 : ZMod 53) ^ 13 = (4880 : ZMod 53) ^ 13 := by decide
  have hne : (4883 : ZMod 2809) ^ 13 ≠ (4880 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4883 := by decide
  have hB : ¬ 53 ∣ 4880 := by decide
  have hexp :=
    has_exp_one_of_zmod 4880 4883 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4880 4883 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4880 4883 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4880 4883 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4880 4883 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4915_4918 :
    HasPrimeWithExpOne (S_val 4915 4918) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4915 4918 ∧ ¬ p ∣ (4918 - 4915) ∧
      ∃ (hNotC : ¬ p ∣ 4918) (hNotB : ¬ p ∣ 4915),
        order_of_C_B_inv_mod_p2 4918 4915 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4915 4918 := by
  have hlt : (4915 : Nat) < 4918 := by decide
  have hcop : ¬ 131 ∣ (4918 - 4915) := by decide
  have heq : (4918 : ZMod 131) ^ 13 = (4915 : ZMod 131) ^ 13 := by decide
  have hne : (4918 : ZMod 17161) ^ 13 ≠ (4915 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 4918 := by decide
  have hB : ¬ 131 ∣ 4915 := by decide
  have hexp :=
    has_exp_one_of_zmod 4915 4918 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4915 4918 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4915 4918 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4915 4918 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4915 4918 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4961_4964 :
    HasPrimeWithExpOne (S_val 4961 4964) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4961 4964 ∧ ¬ p ∣ (4964 - 4961) ∧
      ∃ (hNotC : ¬ p ∣ 4964) (hNotB : ¬ p ∣ 4961),
        order_of_C_B_inv_mod_p2 4964 4961 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4961 4964 := by
  have hlt : (4961 : Nat) < 4964 := by decide
  have hcop : ¬ 53 ∣ (4964 - 4961) := by decide
  have heq : (4964 : ZMod 53) ^ 13 = (4961 : ZMod 53) ^ 13 := by decide
  have hne : (4964 : ZMod 2809) ^ 13 ≠ (4961 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4964 := by decide
  have hB : ¬ 53 ∣ 4961 := by decide
  have hexp :=
    has_exp_one_of_zmod 4961 4964 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4961 4964 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4961 4964 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4961 4964 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4961 4964 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5000_5003 :
    HasPrimeWithExpOne (S_val 5000 5003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5000 5003 ∧ ¬ p ∣ (5003 - 5000) ∧
      ∃ (hNotC : ¬ p ∣ 5003) (hNotB : ¬ p ∣ 5000),
        order_of_C_B_inv_mod_p2 5003 5000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5000 5003 := by
  have hlt : (5000 : Nat) < 5003 := by decide
  have hcop : ¬ 53 ∣ (5003 - 5000) := by decide
  have heq : (5003 : ZMod 53) ^ 13 = (5000 : ZMod 53) ^ 13 := by decide
  have hne : (5003 : ZMod 2809) ^ 13 ≠ (5000 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5003 := by decide
  have hB : ¬ 53 ∣ 5000 := by decide
  have hexp :=
    has_exp_one_of_zmod 5000 5003 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5000 5003 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5000 5003 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5000 5003 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5000 5003 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5027_5030 :
    HasPrimeWithExpOne (S_val 5027 5030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5027 5030 ∧ ¬ p ∣ (5030 - 5027) ∧
      ∃ (hNotC : ¬ p ∣ 5030) (hNotB : ¬ p ∣ 5027),
        order_of_C_B_inv_mod_p2 5030 5027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5027 5030 := by
  have hlt : (5027 : Nat) < 5030 := by decide
  have hcop : ¬ 53 ∣ (5030 - 5027) := by decide
  have heq : (5030 : ZMod 53) ^ 13 = (5027 : ZMod 53) ^ 13 := by decide
  have hne : (5030 : ZMod 2809) ^ 13 ≠ (5027 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5030 := by decide
  have hB : ¬ 53 ∣ 5027 := by decide
  have hexp :=
    has_exp_one_of_zmod 5027 5030 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5027 5030 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5027 5030 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5027 5030 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5027 5030 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5069_5072 :
    HasPrimeWithExpOne (S_val 5069 5072) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5069 5072 ∧ ¬ p ∣ (5072 - 5069) ∧
      ∃ (hNotC : ¬ p ∣ 5072) (hNotB : ¬ p ∣ 5069),
        order_of_C_B_inv_mod_p2 5072 5069 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5069 5072 := by
  have hlt : (5069 : Nat) < 5072 := by decide
  have hcop : ¬ 79 ∣ (5072 - 5069) := by decide
  have heq : (5072 : ZMod 79) ^ 13 = (5069 : ZMod 79) ^ 13 := by decide
  have hne : (5072 : ZMod 6241) ^ 13 ≠ (5069 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5072 := by decide
  have hB : ¬ 79 ∣ 5069 := by decide
  have hexp :=
    has_exp_one_of_zmod 5069 5072 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5069 5072 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5069 5072 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5069 5072 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5069 5072 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5120_5123 :
    HasPrimeWithExpOne (S_val 5120 5123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5120 5123 ∧ ¬ p ∣ (5123 - 5120) ∧
      ∃ (hNotC : ¬ p ∣ 5123) (hNotB : ¬ p ∣ 5120),
        order_of_C_B_inv_mod_p2 5123 5120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5120 5123 := by
  have hlt : (5120 : Nat) < 5123 := by decide
  have hcop : ¬ 53 ∣ (5123 - 5120) := by decide
  have heq : (5123 : ZMod 53) ^ 13 = (5120 : ZMod 53) ^ 13 := by decide
  have hne : (5123 : ZMod 2809) ^ 13 ≠ (5120 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5123 := by decide
  have hB : ¬ 53 ∣ 5120 := by decide
  have hexp :=
    has_exp_one_of_zmod 5120 5123 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5120 5123 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5120 5123 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5120 5123 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5120 5123 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5182_5185 :
    HasPrimeWithExpOne (S_val 5182 5185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5182 5185 ∧ ¬ p ∣ (5185 - 5182) ∧
      ∃ (hNotC : ¬ p ∣ 5185) (hNotB : ¬ p ∣ 5182),
        order_of_C_B_inv_mod_p2 5185 5182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5182 5185 := by
  have hlt : (5182 : Nat) < 5185 := by decide
  have hcop : ¬ 131 ∣ (5185 - 5182) := by decide
  have heq : (5185 : ZMod 131) ^ 13 = (5182 : ZMod 131) ^ 13 := by decide
  have hne : (5185 : ZMod 17161) ^ 13 ≠ (5182 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 5185 := by decide
  have hB : ¬ 131 ∣ 5182 := by decide
  have hexp :=
    has_exp_one_of_zmod 5182 5185 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5182 5185 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5182 5185 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5182 5185 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5182 5185 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5237_5240 :
    HasPrimeWithExpOne (S_val 5237 5240) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5237 5240 ∧ ¬ p ∣ (5240 - 5237) ∧
      ∃ (hNotC : ¬ p ∣ 5240) (hNotB : ¬ p ∣ 5237),
        order_of_C_B_inv_mod_p2 5240 5237 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5237 5240 := by
  have hlt : (5237 : Nat) < 5240 := by decide
  have hcop : ¬ 79 ∣ (5240 - 5237) := by decide
  have heq : (5240 : ZMod 79) ^ 13 = (5237 : ZMod 79) ^ 13 := by decide
  have hne : (5240 : ZMod 6241) ^ 13 ≠ (5237 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5240 := by decide
  have hB : ¬ 79 ∣ 5237 := by decide
  have hexp :=
    has_exp_one_of_zmod 5237 5240 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5237 5240 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5237 5240 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5237 5240 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5237 5240 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5279_5282 :
    HasPrimeWithExpOne (S_val 5279 5282) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5279 5282 ∧ ¬ p ∣ (5282 - 5279) ∧
      ∃ (hNotC : ¬ p ∣ 5282) (hNotB : ¬ p ∣ 5279),
        order_of_C_B_inv_mod_p2 5282 5279 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5279 5282 := by
  have hlt : (5279 : Nat) < 5282 := by decide
  have hcop : ¬ 53 ∣ (5282 - 5279) := by decide
  have heq : (5282 : ZMod 53) ^ 13 = (5279 : ZMod 53) ^ 13 := by decide
  have hne : (5282 : ZMod 2809) ^ 13 ≠ (5279 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5282 := by decide
  have hB : ¬ 53 ∣ 5279 := by decide
  have hexp :=
    has_exp_one_of_zmod 5279 5282 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5279 5282 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5279 5282 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5279 5282 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5279 5282 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5327_5330 :
    HasPrimeWithExpOne (S_val 5327 5330) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5327 5330 ∧ ¬ p ∣ (5330 - 5327) ∧
      ∃ (hNotC : ¬ p ∣ 5330) (hNotB : ¬ p ∣ 5327),
        order_of_C_B_inv_mod_p2 5330 5327 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5327 5330 := by
  have hlt : (5327 : Nat) < 5330 := by decide
  have hcop : ¬ 79 ∣ (5330 - 5327) := by decide
  have heq : (5330 : ZMod 79) ^ 13 = (5327 : ZMod 79) ^ 13 := by decide
  have hne : (5330 : ZMod 6241) ^ 13 ≠ (5327 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5330 := by decide
  have hB : ¬ 79 ∣ 5327 := by decide
  have hexp :=
    has_exp_one_of_zmod 5327 5330 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5327 5330 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5327 5330 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5327 5330 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5327 5330 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5371_5374 :
    HasPrimeWithExpOne (S_val 5371 5374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5371 5374 ∧ ¬ p ∣ (5374 - 5371) ∧
      ∃ (hNotC : ¬ p ∣ 5374) (hNotB : ¬ p ∣ 5371),
        order_of_C_B_inv_mod_p2 5374 5371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5371 5374 := by
  have hlt : (5371 : Nat) < 5374 := by decide
  have hcop : ¬ 53 ∣ (5374 - 5371) := by decide
  have heq : (5374 : ZMod 53) ^ 13 = (5371 : ZMod 53) ^ 13 := by decide
  have hne : (5374 : ZMod 2809) ^ 13 ≠ (5371 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5374 := by decide
  have hB : ¬ 53 ∣ 5371 := by decide
  have hexp :=
    has_exp_one_of_zmod 5371 5374 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5371 5374 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5371 5374 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5371 5374 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5371 5374 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5416_5419 :
    HasPrimeWithExpOne (S_val 5416 5419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5416 5419 ∧ ¬ p ∣ (5419 - 5416) ∧
      ∃ (hNotC : ¬ p ∣ 5419) (hNotB : ¬ p ∣ 5416),
        order_of_C_B_inv_mod_p2 5419 5416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5416 5419 := by
  have hlt : (5416 : Nat) < 5419 := by decide
  have hcop : ¬ 53 ∣ (5419 - 5416) := by decide
  have heq : (5419 : ZMod 53) ^ 13 = (5416 : ZMod 53) ^ 13 := by decide
  have hne : (5419 : ZMod 2809) ^ 13 ≠ (5416 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5419 := by decide
  have hB : ¬ 53 ∣ 5416 := by decide
  have hexp :=
    has_exp_one_of_zmod 5416 5419 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5416 5419 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5416 5419 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5416 5419 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5416 5419 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5456_5459 :
    HasPrimeWithExpOne (S_val 5456 5459) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5456 5459 ∧ ¬ p ∣ (5459 - 5456) ∧
      ∃ (hNotC : ¬ p ∣ 5459) (hNotB : ¬ p ∣ 5456),
        order_of_C_B_inv_mod_p2 5459 5456 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5456 5459 := by
  have hlt : (5456 : Nat) < 5459 := by decide
  have hcop : ¬ 131 ∣ (5459 - 5456) := by decide
  have heq : (5459 : ZMod 131) ^ 13 = (5456 : ZMod 131) ^ 13 := by decide
  have hne : (5459 : ZMod 17161) ^ 13 ≠ (5456 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 5459 := by decide
  have hB : ¬ 131 ∣ 5456 := by decide
  have hexp :=
    has_exp_one_of_zmod 5456 5459 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5456 5459 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5456 5459 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5456 5459 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5456 5459 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5509_5512 :
    HasPrimeWithExpOne (S_val 5509 5512) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5509 5512 ∧ ¬ p ∣ (5512 - 5509) ∧
      ∃ (hNotC : ¬ p ∣ 5512) (hNotB : ¬ p ∣ 5509),
        order_of_C_B_inv_mod_p2 5512 5509 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5509 5512 := by
  have hlt : (5509 : Nat) < 5512 := by decide
  have hcop : ¬ 79 ∣ (5512 - 5509) := by decide
  have heq : (5512 : ZMod 79) ^ 13 = (5509 : ZMod 79) ^ 13 := by decide
  have hne : (5512 : ZMod 6241) ^ 13 ≠ (5509 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5512 := by decide
  have hB : ¬ 79 ∣ 5509 := by decide
  have hexp :=
    has_exp_one_of_zmod 5509 5512 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5509 5512 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5509 5512 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5509 5512 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5509 5512 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5552_5555 :
    HasPrimeWithExpOne (S_val 5552 5555) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5552 5555 ∧ ¬ p ∣ (5555 - 5552) ∧
      ∃ (hNotC : ¬ p ∣ 5555) (hNotB : ¬ p ∣ 5552),
        order_of_C_B_inv_mod_p2 5555 5552 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5552 5555 := by
  have hlt : (5552 : Nat) < 5555 := by decide
  have hcop : ¬ 53 ∣ (5555 - 5552) := by decide
  have heq : (5555 : ZMod 53) ^ 13 = (5552 : ZMod 53) ^ 13 := by decide
  have hne : (5555 : ZMod 2809) ^ 13 ≠ (5552 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5555 := by decide
  have hB : ¬ 53 ∣ 5552 := by decide
  have hexp :=
    has_exp_one_of_zmod 5552 5555 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5552 5555 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5552 5555 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5552 5555 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5552 5555 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5594_5597 :
    HasPrimeWithExpOne (S_val 5594 5597) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5594 5597 ∧ ¬ p ∣ (5597 - 5594) ∧
      ∃ (hNotC : ¬ p ∣ 5597) (hNotB : ¬ p ∣ 5594),
        order_of_C_B_inv_mod_p2 5597 5594 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5594 5597 := by
  have hlt : (5594 : Nat) < 5597 := by decide
  have hcop : ¬ 79 ∣ (5597 - 5594) := by decide
  have heq : (5597 : ZMod 79) ^ 13 = (5594 : ZMod 79) ^ 13 := by decide
  have hne : (5597 : ZMod 6241) ^ 13 ≠ (5594 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5597 := by decide
  have hB : ¬ 79 ∣ 5594 := by decide
  have hexp :=
    has_exp_one_of_zmod 5594 5597 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5594 5597 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5594 5597 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5594 5597 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5594 5597 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5636_5639 :
    HasPrimeWithExpOne (S_val 5636 5639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5636 5639 ∧ ¬ p ∣ (5639 - 5636) ∧
      ∃ (hNotC : ¬ p ∣ 5639) (hNotB : ¬ p ∣ 5636),
        order_of_C_B_inv_mod_p2 5639 5636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5636 5639 := by
  have hlt : (5636 : Nat) < 5639 := by decide
  have hcop : ¬ 53 ∣ (5639 - 5636) := by decide
  have heq : (5639 : ZMod 53) ^ 13 = (5636 : ZMod 53) ^ 13 := by decide
  have hne : (5639 : ZMod 2809) ^ 13 ≠ (5636 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5639 := by decide
  have hB : ¬ 53 ∣ 5636 := by decide
  have hexp :=
    has_exp_one_of_zmod 5636 5639 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5636 5639 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5636 5639 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5636 5639 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5636 5639 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5701_5704 :
    HasPrimeWithExpOne (S_val 5701 5704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5701 5704 ∧ ¬ p ∣ (5704 - 5701) ∧
      ∃ (hNotC : ¬ p ∣ 5704) (hNotB : ¬ p ∣ 5701),
        order_of_C_B_inv_mod_p2 5704 5701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5701 5704 := by
  have hlt : (5701 : Nat) < 5704 := by decide
  have hcop : ¬ 79 ∣ (5704 - 5701) := by decide
  have heq : (5704 : ZMod 79) ^ 13 = (5701 : ZMod 79) ^ 13 := by decide
  have hne : (5704 : ZMod 6241) ^ 13 ≠ (5701 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5704 := by decide
  have hB : ¬ 79 ∣ 5701 := by decide
  have hexp :=
    has_exp_one_of_zmod 5701 5704 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5701 5704 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5701 5704 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5701 5704 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5701 5704 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5746_5749 :
    HasPrimeWithExpOne (S_val 5746 5749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5746 5749 ∧ ¬ p ∣ (5749 - 5746) ∧
      ∃ (hNotC : ¬ p ∣ 5749) (hNotB : ¬ p ∣ 5746),
        order_of_C_B_inv_mod_p2 5749 5746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5746 5749 := by
  have hlt : (5746 : Nat) < 5749 := by decide
  have hcop : ¬ 79 ∣ (5749 - 5746) := by decide
  have heq : (5749 : ZMod 79) ^ 13 = (5746 : ZMod 79) ^ 13 := by decide
  have hne : (5749 : ZMod 6241) ^ 13 ≠ (5746 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 5749 := by decide
  have hB : ¬ 79 ∣ 5746 := by decide
  have hexp :=
    has_exp_one_of_zmod 5746 5749 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5746 5749 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5746 5749 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5746 5749 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5746 5749 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5794_5797 :
    HasPrimeWithExpOne (S_val 5794 5797) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5794 5797 ∧ ¬ p ∣ (5797 - 5794) ∧
      ∃ (hNotC : ¬ p ∣ 5797) (hNotB : ¬ p ∣ 5794),
        order_of_C_B_inv_mod_p2 5797 5794 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5794 5797 := by
  have hlt : (5794 : Nat) < 5797 := by decide
  have hcop : ¬ 443 ∣ (5797 - 5794) := by decide
  have heq : (5797 : ZMod 443) ^ 13 = (5794 : ZMod 443) ^ 13 := by decide
  have hne : (5797 : ZMod 196249) ^ 13 ≠ (5794 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 5797 := by decide
  have hB : ¬ 443 ∣ 5794 := by decide
  have hexp :=
    has_exp_one_of_zmod 5794 5797 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5794 5797 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5794 5797 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5794 5797 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5794 5797 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5837_5840 :
    HasPrimeWithExpOne (S_val 5837 5840) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5837 5840 ∧ ¬ p ∣ (5840 - 5837) ∧
      ∃ (hNotC : ¬ p ∣ 5840) (hNotB : ¬ p ∣ 5837),
        order_of_C_B_inv_mod_p2 5840 5837 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5837 5840 := by
  have hlt : (5837 : Nat) < 5840 := by decide
  have hcop : ¬ 131 ∣ (5840 - 5837) := by decide
  have heq : (5840 : ZMod 131) ^ 13 = (5837 : ZMod 131) ^ 13 := by decide
  have hne : (5840 : ZMod 17161) ^ 13 ≠ (5837 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 5840 := by decide
  have hB : ¬ 131 ∣ 5837 := by decide
  have hexp :=
    has_exp_one_of_zmod 5837 5840 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5837 5840 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5837 5840 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5837 5840 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5837 5840 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5876_5879 :
    HasPrimeWithExpOne (S_val 5876 5879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5876 5879 ∧ ¬ p ∣ (5879 - 5876) ∧
      ∃ (hNotC : ¬ p ∣ 5879) (hNotB : ¬ p ∣ 5876),
        order_of_C_B_inv_mod_p2 5879 5876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5876 5879 := by
  have hlt : (5876 : Nat) < 5879 := by decide
  have hcop : ¬ 53 ∣ (5879 - 5876) := by decide
  have heq : (5879 : ZMod 53) ^ 13 = (5876 : ZMod 53) ^ 13 := by decide
  have hne : (5879 : ZMod 2809) ^ 13 ≠ (5876 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5879 := by decide
  have hB : ¬ 53 ∣ 5876 := by decide
  have hexp :=
    has_exp_one_of_zmod 5876 5879 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5876 5879 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5876 5879 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5876 5879 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5876 5879 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5923_5926 :
    HasPrimeWithExpOne (S_val 5923 5926) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5923 5926 ∧ ¬ p ∣ (5926 - 5923) ∧
      ∃ (hNotC : ¬ p ∣ 5926) (hNotB : ¬ p ∣ 5923),
        order_of_C_B_inv_mod_p2 5926 5923 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5923 5926 := by
  have hlt : (5923 : Nat) < 5926 := by decide
  have hcop : ¬ 53 ∣ (5926 - 5923) := by decide
  have heq : (5926 : ZMod 53) ^ 13 = (5923 : ZMod 53) ^ 13 := by decide
  have hne : (5926 : ZMod 2809) ^ 13 ≠ (5923 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5926 := by decide
  have hB : ¬ 53 ∣ 5923 := by decide
  have hexp :=
    has_exp_one_of_zmod 5923 5926 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5923 5926 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5923 5926 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5923 5926 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5923 5926 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5968_5971 :
    HasPrimeWithExpOne (S_val 5968 5971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5968 5971 ∧ ¬ p ∣ (5971 - 5968) ∧
      ∃ (hNotC : ¬ p ∣ 5971) (hNotB : ¬ p ∣ 5968),
        order_of_C_B_inv_mod_p2 5971 5968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5968 5971 := by
  have hlt : (5968 : Nat) < 5971 := by decide
  have hcop : ¬ 53 ∣ (5971 - 5968) := by decide
  have heq : (5971 : ZMod 53) ^ 13 = (5968 : ZMod 53) ^ 13 := by decide
  have hne : (5971 : ZMod 2809) ^ 13 ≠ (5968 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 5971 := by decide
  have hB : ¬ 53 ∣ 5968 := by decide
  have hexp :=
    has_exp_one_of_zmod 5968 5971 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5968 5971 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5968 5971 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5968 5971 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5968 5971 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6016_6019 :
    HasPrimeWithExpOne (S_val 6016 6019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6016 6019 ∧ ¬ p ∣ (6019 - 6016) ∧
      ∃ (hNotC : ¬ p ∣ 6019) (hNotB : ¬ p ∣ 6016),
        order_of_C_B_inv_mod_p2 6019 6016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6016 6019 := by
  have hlt : (6016 : Nat) < 6019 := by decide
  have hcop : ¬ 79 ∣ (6019 - 6016) := by decide
  have heq : (6019 : ZMod 79) ^ 13 = (6016 : ZMod 79) ^ 13 := by decide
  have hne : (6019 : ZMod 6241) ^ 13 ≠ (6016 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 6019 := by decide
  have hB : ¬ 79 ∣ 6016 := by decide
  have hexp :=
    has_exp_one_of_zmod 6016 6019 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6016 6019 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6016 6019 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6016 6019 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6016 6019 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6061_6064 :
    HasPrimeWithExpOne (S_val 6061 6064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6061 6064 ∧ ¬ p ∣ (6064 - 6061) ∧
      ∃ (hNotC : ¬ p ∣ 6064) (hNotB : ¬ p ∣ 6061),
        order_of_C_B_inv_mod_p2 6064 6061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6061 6064 := by
  have hlt : (6061 : Nat) < 6064 := by decide
  have hcop : ¬ 443 ∣ (6064 - 6061) := by decide
  have heq : (6064 : ZMod 443) ^ 13 = (6061 : ZMod 443) ^ 13 := by decide
  have hne : (6064 : ZMod 196249) ^ 13 ≠ (6061 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 6064 := by decide
  have hB : ¬ 443 ∣ 6061 := by decide
  have hexp :=
    has_exp_one_of_zmod 6061 6064 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6061 6064 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6061 6064 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6061 6064 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6061 6064 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6100_6103 :
    HasPrimeWithExpOne (S_val 6100 6103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6100 6103 ∧ ¬ p ∣ (6103 - 6100) ∧
      ∃ (hNotC : ¬ p ∣ 6103) (hNotB : ¬ p ∣ 6100),
        order_of_C_B_inv_mod_p2 6103 6100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6100 6103 := by
  have hlt : (6100 : Nat) < 6103 := by decide
  have hcop : ¬ 53 ∣ (6103 - 6100) := by decide
  have heq : (6103 : ZMod 53) ^ 13 = (6100 : ZMod 53) ^ 13 := by decide
  have hne : (6103 : ZMod 2809) ^ 13 ≠ (6100 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6103 := by decide
  have hB : ¬ 53 ∣ 6100 := by decide
  have hexp :=
    has_exp_one_of_zmod 6100 6103 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6100 6103 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6100 6103 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6100 6103 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6100 6103 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6158_6161 :
    HasPrimeWithExpOne (S_val 6158 6161) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6158 6161 ∧ ¬ p ∣ (6161 - 6158) ∧
      ∃ (hNotC : ¬ p ∣ 6161) (hNotB : ¬ p ∣ 6158),
        order_of_C_B_inv_mod_p2 6161 6158 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6158 6161 := by
  have hlt : (6158 : Nat) < 6161 := by decide
  have hcop : ¬ 53 ∣ (6161 - 6158) := by decide
  have heq : (6161 : ZMod 53) ^ 13 = (6158 : ZMod 53) ^ 13 := by decide
  have hne : (6161 : ZMod 2809) ^ 13 ≠ (6158 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6161 := by decide
  have hB : ¬ 53 ∣ 6158 := by decide
  have hexp :=
    has_exp_one_of_zmod 6158 6161 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6158 6161 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6158 6161 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6158 6161 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6158 6161 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6205_6208 :
    HasPrimeWithExpOne (S_val 6205 6208) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6205 6208 ∧ ¬ p ∣ (6208 - 6205) ∧
      ∃ (hNotC : ¬ p ∣ 6208) (hNotB : ¬ p ∣ 6205),
        order_of_C_B_inv_mod_p2 6208 6205 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6205 6208 := by
  have hlt : (6205 : Nat) < 6208 := by decide
  have hcop : ¬ 53 ∣ (6208 - 6205) := by decide
  have heq : (6208 : ZMod 53) ^ 13 = (6205 : ZMod 53) ^ 13 := by decide
  have hne : (6208 : ZMod 2809) ^ 13 ≠ (6205 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6208 := by decide
  have hB : ¬ 53 ∣ 6205 := by decide
  have hexp :=
    has_exp_one_of_zmod 6205 6208 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6205 6208 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6205 6208 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6205 6208 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6205 6208 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6244_6247 :
    HasPrimeWithExpOne (S_val 6244 6247) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6244 6247 ∧ ¬ p ∣ (6247 - 6244) ∧
      ∃ (hNotC : ¬ p ∣ 6247) (hNotB : ¬ p ∣ 6244),
        order_of_C_B_inv_mod_p2 6247 6244 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6244 6247 := by
  have hlt : (6244 : Nat) < 6247 := by decide
  have hcop : ¬ 157 ∣ (6247 - 6244) := by decide
  have heq : (6247 : ZMod 157) ^ 13 = (6244 : ZMod 157) ^ 13 := by decide
  have hne : (6247 : ZMod 24649) ^ 13 ≠ (6244 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 6247 := by decide
  have hB : ¬ 157 ∣ 6244 := by decide
  have hexp :=
    has_exp_one_of_zmod 6244 6247 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6244 6247 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6244 6247 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6244 6247 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6244 6247 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6293_6296 :
    HasPrimeWithExpOne (S_val 6293 6296) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6293 6296 ∧ ¬ p ∣ (6296 - 6293) ∧
      ∃ (hNotC : ¬ p ∣ 6296) (hNotB : ¬ p ∣ 6293),
        order_of_C_B_inv_mod_p2 6296 6293 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6293 6296 := by
  have hlt : (6293 : Nat) < 6296 := by decide
  have hcop : ¬ 313 ∣ (6296 - 6293) := by decide
  have heq : (6296 : ZMod 313) ^ 13 = (6293 : ZMod 313) ^ 13 := by decide
  have hne : (6296 : ZMod 97969) ^ 13 ≠ (6293 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 6296 := by decide
  have hB : ¬ 313 ∣ 6293 := by decide
  have hexp :=
    has_exp_one_of_zmod 6293 6296 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6293 6296 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6293 6296 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6293 6296 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6293 6296 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6340_6343 :
    HasPrimeWithExpOne (S_val 6340 6343) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6340 6343 ∧ ¬ p ∣ (6343 - 6340) ∧
      ∃ (hNotC : ¬ p ∣ 6343) (hNotB : ¬ p ∣ 6340),
        order_of_C_B_inv_mod_p2 6343 6340 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6340 6343 := by
  have hlt : (6340 : Nat) < 6343 := by decide
  have hcop : ¬ 443 ∣ (6343 - 6340) := by decide
  have heq : (6343 : ZMod 443) ^ 13 = (6340 : ZMod 443) ^ 13 := by decide
  have hne : (6343 : ZMod 196249) ^ 13 ≠ (6340 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 6343 := by decide
  have hB : ¬ 443 ∣ 6340 := by decide
  have hexp :=
    has_exp_one_of_zmod 6340 6343 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6340 6343 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6340 6343 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6340 6343 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6340 6343 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6382_6385 :
    HasPrimeWithExpOne (S_val 6382 6385) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6382 6385 ∧ ¬ p ∣ (6385 - 6382) ∧
      ∃ (hNotC : ¬ p ∣ 6385) (hNotB : ¬ p ∣ 6382),
        order_of_C_B_inv_mod_p2 6385 6382 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6382 6385 := by
  have hlt : (6382 : Nat) < 6385 := by decide
  have hcop : ¬ 79 ∣ (6385 - 6382) := by decide
  have heq : (6385 : ZMod 79) ^ 13 = (6382 : ZMod 79) ^ 13 := by decide
  have hne : (6385 : ZMod 6241) ^ 13 ≠ (6382 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 6385 := by decide
  have hB : ¬ 79 ∣ 6382 := by decide
  have hexp :=
    has_exp_one_of_zmod 6382 6385 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6382 6385 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6382 6385 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6382 6385 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6382 6385 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6431_6434 :
    HasPrimeWithExpOne (S_val 6431 6434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6431 6434 ∧ ¬ p ∣ (6434 - 6431) ∧
      ∃ (hNotC : ¬ p ∣ 6434) (hNotB : ¬ p ∣ 6431),
        order_of_C_B_inv_mod_p2 6434 6431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6431 6434 := by
  have hlt : (6431 : Nat) < 6434 := by decide
  have hcop : ¬ 53 ∣ (6434 - 6431) := by decide
  have heq : (6434 : ZMod 53) ^ 13 = (6431 : ZMod 53) ^ 13 := by decide
  have hne : (6434 : ZMod 2809) ^ 13 ≠ (6431 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6434 := by decide
  have hB : ¬ 53 ∣ 6431 := by decide
  have hexp :=
    has_exp_one_of_zmod 6431 6434 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6431 6434 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6431 6434 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6431 6434 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6431 6434 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6487_6490 :
    HasPrimeWithExpOne (S_val 6487 6490) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6487 6490 ∧ ¬ p ∣ (6490 - 6487) ∧
      ∃ (hNotC : ¬ p ∣ 6490) (hNotB : ¬ p ∣ 6487),
        order_of_C_B_inv_mod_p2 6490 6487 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6487 6490 := by
  have hlt : (6487 : Nat) < 6490 := by decide
  have hcop : ¬ 131 ∣ (6490 - 6487) := by decide
  have heq : (6490 : ZMod 131) ^ 13 = (6487 : ZMod 131) ^ 13 := by decide
  have hne : (6490 : ZMod 17161) ^ 13 ≠ (6487 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 6490 := by decide
  have hB : ¬ 131 ∣ 6487 := by decide
  have hexp :=
    has_exp_one_of_zmod 6487 6490 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6487 6490 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6487 6490 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6487 6490 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6487 6490 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6524_6527 :
    HasPrimeWithExpOne (S_val 6524 6527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6524 6527 ∧ ¬ p ∣ (6527 - 6524) ∧
      ∃ (hNotC : ¬ p ∣ 6527) (hNotB : ¬ p ∣ 6524),
        order_of_C_B_inv_mod_p2 6527 6524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6524 6527 := by
  have hlt : (6524 : Nat) < 6527 := by decide
  have hcop : ¬ 53 ∣ (6527 - 6524) := by decide
  have heq : (6527 : ZMod 53) ^ 13 = (6524 : ZMod 53) ^ 13 := by decide
  have hne : (6527 : ZMod 2809) ^ 13 ≠ (6524 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6527 := by decide
  have hB : ¬ 53 ∣ 6524 := by decide
  have hexp :=
    has_exp_one_of_zmod 6524 6527 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6524 6527 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6524 6527 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6524 6527 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6524 6527 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6575_6578 :
    HasPrimeWithExpOne (S_val 6575 6578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6575 6578 ∧ ¬ p ∣ (6578 - 6575) ∧
      ∃ (hNotC : ¬ p ∣ 6578) (hNotB : ¬ p ∣ 6575),
        order_of_C_B_inv_mod_p2 6578 6575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6575 6578 := by
  have hlt : (6575 : Nat) < 6578 := by decide
  have hcop : ¬ 79 ∣ (6578 - 6575) := by decide
  have heq : (6578 : ZMod 79) ^ 13 = (6575 : ZMod 79) ^ 13 := by decide
  have hne : (6578 : ZMod 6241) ^ 13 ≠ (6575 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 6578 := by decide
  have hB : ¬ 79 ∣ 6575 := by decide
  have hexp :=
    has_exp_one_of_zmod 6575 6578 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6575 6578 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6575 6578 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6575 6578 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6575 6578 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6619_6622 :
    HasPrimeWithExpOne (S_val 6619 6622) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6619 6622 ∧ ¬ p ∣ (6622 - 6619) ∧
      ∃ (hNotC : ¬ p ∣ 6622) (hNotB : ¬ p ∣ 6619),
        order_of_C_B_inv_mod_p2 6622 6619 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6619 6622 := by
  have hlt : (6619 : Nat) < 6622 := by decide
  have hcop : ¬ 79 ∣ (6622 - 6619) := by decide
  have heq : (6622 : ZMod 79) ^ 13 = (6619 : ZMod 79) ^ 13 := by decide
  have hne : (6622 : ZMod 6241) ^ 13 ≠ (6619 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 6622 := by decide
  have hB : ¬ 79 ∣ 6619 := by decide
  have hexp :=
    has_exp_one_of_zmod 6619 6622 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6619 6622 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6619 6622 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6619 6622 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6619 6622 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6665_6668 :
    HasPrimeWithExpOne (S_val 6665 6668) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6665 6668 ∧ ¬ p ∣ (6668 - 6665) ∧
      ∃ (hNotC : ¬ p ∣ 6668) (hNotB : ¬ p ∣ 6665),
        order_of_C_B_inv_mod_p2 6668 6665 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6665 6668 := by
  have hlt : (6665 : Nat) < 6668 := by decide
  have hcop : ¬ 53 ∣ (6668 - 6665) := by decide
  have heq : (6668 : ZMod 53) ^ 13 = (6665 : ZMod 53) ^ 13 := by decide
  have hne : (6668 : ZMod 2809) ^ 13 ≠ (6665 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6668 := by decide
  have hB : ¬ 53 ∣ 6665 := by decide
  have hexp :=
    has_exp_one_of_zmod 6665 6668 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6665 6668 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6665 6668 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6665 6668 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6665 6668 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6715_6718 :
    HasPrimeWithExpOne (S_val 6715 6718) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6715 6718 ∧ ¬ p ∣ (6718 - 6715) ∧
      ∃ (hNotC : ¬ p ∣ 6718) (hNotB : ¬ p ∣ 6715),
        order_of_C_B_inv_mod_p2 6718 6715 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6715 6718 := by
  have hlt : (6715 : Nat) < 6718 := by decide
  have hcop : ¬ 53 ∣ (6718 - 6715) := by decide
  have heq : (6718 : ZMod 53) ^ 13 = (6715 : ZMod 53) ^ 13 := by decide
  have hne : (6718 : ZMod 2809) ^ 13 ≠ (6715 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6718 := by decide
  have hB : ¬ 53 ∣ 6715 := by decide
  have hexp :=
    has_exp_one_of_zmod 6715 6718 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6715 6718 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6715 6718 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6715 6718 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6715 6718 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6763_6766 :
    HasPrimeWithExpOne (S_val 6763 6766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6763 6766 ∧ ¬ p ∣ (6766 - 6763) ∧
      ∃ (hNotC : ¬ p ∣ 6766) (hNotB : ¬ p ∣ 6763),
        order_of_C_B_inv_mod_p2 6766 6763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6763 6766 := by
  have hlt : (6763 : Nat) < 6766 := by decide
  have hcop : ¬ 53 ∣ (6766 - 6763) := by decide
  have heq : (6766 : ZMod 53) ^ 13 = (6763 : ZMod 53) ^ 13 := by decide
  have hne : (6766 : ZMod 2809) ^ 13 ≠ (6763 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6766 := by decide
  have hB : ¬ 53 ∣ 6763 := by decide
  have hexp :=
    has_exp_one_of_zmod 6763 6766 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6763 6766 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6763 6766 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6763 6766 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6763 6766 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6808_6811 :
    HasPrimeWithExpOne (S_val 6808 6811) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6808 6811 ∧ ¬ p ∣ (6811 - 6808) ∧
      ∃ (hNotC : ¬ p ∣ 6811) (hNotB : ¬ p ∣ 6808),
        order_of_C_B_inv_mod_p2 6811 6808 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6808 6811 := by
  have hlt : (6808 : Nat) < 6811 := by decide
  have hcop : ¬ 79 ∣ (6811 - 6808) := by decide
  have heq : (6811 : ZMod 79) ^ 13 = (6808 : ZMod 79) ^ 13 := by decide
  have hne : (6811 : ZMod 6241) ^ 13 ≠ (6808 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 6811 := by decide
  have hB : ¬ 79 ∣ 6808 := by decide
  have hexp :=
    has_exp_one_of_zmod 6808 6811 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6808 6811 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6808 6811 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6808 6811 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6808 6811 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6866_6869 :
    HasPrimeWithExpOne (S_val 6866 6869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6866 6869 ∧ ¬ p ∣ (6869 - 6866) ∧
      ∃ (hNotC : ¬ p ∣ 6869) (hNotB : ¬ p ∣ 6866),
        order_of_C_B_inv_mod_p2 6869 6866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6866 6869 := by
  have hlt : (6866 : Nat) < 6869 := by decide
  have hcop : ¬ 131 ∣ (6869 - 6866) := by decide
  have heq : (6869 : ZMod 131) ^ 13 = (6866 : ZMod 131) ^ 13 := by decide
  have hne : (6869 : ZMod 17161) ^ 13 ≠ (6866 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 6869 := by decide
  have hB : ¬ 131 ∣ 6866 := by decide
  have hexp :=
    has_exp_one_of_zmod 6866 6869 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6866 6869 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6866 6869 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6866 6869 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6866 6869 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6908_6911 :
    HasPrimeWithExpOne (S_val 6908 6911) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6908 6911 ∧ ¬ p ∣ (6911 - 6908) ∧
      ∃ (hNotC : ¬ p ∣ 6911) (hNotB : ¬ p ∣ 6908),
        order_of_C_B_inv_mod_p2 6911 6908 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6908 6911 := by
  have hlt : (6908 : Nat) < 6911 := by decide
  have hcop : ¬ 53 ∣ (6911 - 6908) := by decide
  have heq : (6911 : ZMod 53) ^ 13 = (6908 : ZMod 53) ^ 13 := by decide
  have hne : (6911 : ZMod 2809) ^ 13 ≠ (6908 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6911 := by decide
  have hB : ¬ 53 ∣ 6908 := by decide
  have hexp :=
    has_exp_one_of_zmod 6908 6911 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6908 6911 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6908 6911 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6908 6911 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6908 6911 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6956_6959 :
    HasPrimeWithExpOne (S_val 6956 6959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6956 6959 ∧ ¬ p ∣ (6959 - 6956) ∧
      ∃ (hNotC : ¬ p ∣ 6959) (hNotB : ¬ p ∣ 6956),
        order_of_C_B_inv_mod_p2 6959 6956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6956 6959 := by
  have hlt : (6956 : Nat) < 6959 := by decide
  have hcop : ¬ 53 ∣ (6959 - 6956) := by decide
  have heq : (6959 : ZMod 53) ^ 13 = (6956 : ZMod 53) ^ 13 := by decide
  have hne : (6959 : ZMod 2809) ^ 13 ≠ (6956 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6959 := by decide
  have hB : ¬ 53 ∣ 6956 := by decide
  have hexp :=
    has_exp_one_of_zmod 6956 6959 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6956 6959 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6956 6959 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6956 6959 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6956 6959 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7000_7003 :
    HasPrimeWithExpOne (S_val 7000 7003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7000 7003 ∧ ¬ p ∣ (7003 - 7000) ∧
      ∃ (hNotC : ¬ p ∣ 7003) (hNotB : ¬ p ∣ 7000),
        order_of_C_B_inv_mod_p2 7003 7000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7000 7003 := by
  have hlt : (7000 : Nat) < 7003 := by decide
  have hcop : ¬ 53 ∣ (7003 - 7000) := by decide
  have heq : (7003 : ZMod 53) ^ 13 = (7000 : ZMod 53) ^ 13 := by decide
  have hne : (7003 : ZMod 2809) ^ 13 ≠ (7000 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7003 := by decide
  have hB : ¬ 53 ∣ 7000 := by decide
  have hexp :=
    has_exp_one_of_zmod 7000 7003 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7000 7003 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7000 7003 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7000 7003 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7000 7003 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7003_7006 :
    HasPrimeWithExpOne (S_val 7003 7006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7003 7006 ∧ ¬ p ∣ (7006 - 7003) ∧
      ∃ (hNotC : ¬ p ∣ 7006) (hNotB : ¬ p ∣ 7003),
        order_of_C_B_inv_mod_p2 7006 7003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7003 7006 := by
  have hlt : (7003 : Nat) < 7006 := by decide
  have hcop : ¬ 131 ∣ (7006 - 7003) := by decide
  have heq : (7006 : ZMod 131) ^ 13 = (7003 : ZMod 131) ^ 13 := by decide
  have hne : (7006 : ZMod 17161) ^ 13 ≠ (7003 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 7006 := by decide
  have hB : ¬ 131 ∣ 7003 := by decide
  have hexp :=
    has_exp_one_of_zmod 7003 7006 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7003 7006 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7003 7006 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7003 7006 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7003 7006 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7049_7052 :
    HasPrimeWithExpOne (S_val 7049 7052) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7049 7052 ∧ ¬ p ∣ (7052 - 7049) ∧
      ∃ (hNotC : ¬ p ∣ 7052) (hNotB : ¬ p ∣ 7049),
        order_of_C_B_inv_mod_p2 7052 7049 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7049 7052 := by
  have hlt : (7049 : Nat) < 7052 := by decide
  have hcop : ¬ 79 ∣ (7052 - 7049) := by decide
  have heq : (7052 : ZMod 79) ^ 13 = (7049 : ZMod 79) ^ 13 := by decide
  have hne : (7052 : ZMod 6241) ^ 13 ≠ (7049 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 7052 := by decide
  have hB : ¬ 79 ∣ 7049 := by decide
  have hexp :=
    has_exp_one_of_zmod 7049 7052 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7049 7052 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7049 7052 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7049 7052 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7049 7052 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7112_7115 :
    HasPrimeWithExpOne (S_val 7112 7115) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7112 7115 ∧ ¬ p ∣ (7115 - 7112) ∧
      ∃ (hNotC : ¬ p ∣ 7115) (hNotB : ¬ p ∣ 7112),
        order_of_C_B_inv_mod_p2 7115 7112 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7112 7115 := by
  have hlt : (7112 : Nat) < 7115 := by decide
  have hcop : ¬ 131 ∣ (7115 - 7112) := by decide
  have heq : (7115 : ZMod 131) ^ 13 = (7112 : ZMod 131) ^ 13 := by decide
  have hne : (7115 : ZMod 17161) ^ 13 ≠ (7112 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 7115 := by decide
  have hB : ¬ 131 ∣ 7112 := by decide
  have hexp :=
    has_exp_one_of_zmod 7112 7115 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7112 7115 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7112 7115 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7112 7115 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7112 7115 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7153_7156 :
    HasPrimeWithExpOne (S_val 7153 7156) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7153 7156 ∧ ¬ p ∣ (7156 - 7153) ∧
      ∃ (hNotC : ¬ p ∣ 7156) (hNotB : ¬ p ∣ 7153),
        order_of_C_B_inv_mod_p2 7156 7153 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7153 7156 := by
  have hlt : (7153 : Nat) < 7156 := by decide
  have hcop : ¬ 313 ∣ (7156 - 7153) := by decide
  have heq : (7156 : ZMod 313) ^ 13 = (7153 : ZMod 313) ^ 13 := by decide
  have hne : (7156 : ZMod 97969) ^ 13 ≠ (7153 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 7156 := by decide
  have hB : ¬ 313 ∣ 7153 := by decide
  have hexp :=
    has_exp_one_of_zmod 7153 7156 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7153 7156 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7153 7156 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7153 7156 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7153 7156 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7198_7201 :
    HasPrimeWithExpOne (S_val 7198 7201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7198 7201 ∧ ¬ p ∣ (7201 - 7198) ∧
      ∃ (hNotC : ¬ p ∣ 7201) (hNotB : ¬ p ∣ 7198),
        order_of_C_B_inv_mod_p2 7201 7198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7198 7201 := by
  have hlt : (7198 : Nat) < 7201 := by decide
  have hcop : ¬ 157 ∣ (7201 - 7198) := by decide
  have heq : (7201 : ZMod 157) ^ 13 = (7198 : ZMod 157) ^ 13 := by decide
  have hne : (7201 : ZMod 24649) ^ 13 ≠ (7198 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 7201 := by decide
  have hB : ¬ 157 ∣ 7198 := by decide
  have hexp :=
    has_exp_one_of_zmod 7198 7201 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7198 7201 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7198 7201 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7198 7201 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7198 7201 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7253_7256 :
    HasPrimeWithExpOne (S_val 7253 7256) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7253 7256 ∧ ¬ p ∣ (7256 - 7253) ∧
      ∃ (hNotC : ¬ p ∣ 7256) (hNotB : ¬ p ∣ 7253),
        order_of_C_B_inv_mod_p2 7256 7253 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7253 7256 := by
  have hlt : (7253 : Nat) < 7256 := by decide
  have hcop : ¬ 53 ∣ (7256 - 7253) := by decide
  have heq : (7256 : ZMod 53) ^ 13 = (7253 : ZMod 53) ^ 13 := by decide
  have hne : (7256 : ZMod 2809) ^ 13 ≠ (7253 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7256 := by decide
  have hB : ¬ 53 ∣ 7253 := by decide
  have hexp :=
    has_exp_one_of_zmod 7253 7256 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7253 7256 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7253 7256 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7253 7256 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7253 7256 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7295_7298 :
    HasPrimeWithExpOne (S_val 7295 7298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7295 7298 ∧ ¬ p ∣ (7298 - 7295) ∧
      ∃ (hNotC : ¬ p ∣ 7298) (hNotB : ¬ p ∣ 7295),
        order_of_C_B_inv_mod_p2 7298 7295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7295 7298 := by
  have hlt : (7295 : Nat) < 7298 := by decide
  have hcop : ¬ 131 ∣ (7298 - 7295) := by decide
  have heq : (7298 : ZMod 131) ^ 13 = (7295 : ZMod 131) ^ 13 := by decide
  have hne : (7298 : ZMod 17161) ^ 13 ≠ (7295 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 7298 := by decide
  have hB : ¬ 131 ∣ 7295 := by decide
  have hexp :=
    has_exp_one_of_zmod 7295 7298 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7295 7298 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7295 7298 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7295 7298 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7295 7298 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7345_7348 :
    HasPrimeWithExpOne (S_val 7345 7348) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7345 7348 ∧ ¬ p ∣ (7348 - 7345) ∧
      ∃ (hNotC : ¬ p ∣ 7348) (hNotB : ¬ p ∣ 7345),
        order_of_C_B_inv_mod_p2 7348 7345 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7345 7348 := by
  have hlt : (7345 : Nat) < 7348 := by decide
  have hcop : ¬ 131 ∣ (7348 - 7345) := by decide
  have heq : (7348 : ZMod 131) ^ 13 = (7345 : ZMod 131) ^ 13 := by decide
  have hne : (7348 : ZMod 17161) ^ 13 ≠ (7345 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 7348 := by decide
  have hB : ¬ 131 ∣ 7345 := by decide
  have hexp :=
    has_exp_one_of_zmod 7345 7348 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7345 7348 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7345 7348 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7345 7348 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7345 7348 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7399_7402 :
    HasPrimeWithExpOne (S_val 7399 7402) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7399 7402 ∧ ¬ p ∣ (7402 - 7399) ∧
      ∃ (hNotC : ¬ p ∣ 7402) (hNotB : ¬ p ∣ 7399),
        order_of_C_B_inv_mod_p2 7402 7399 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7399 7402 := by
  have hlt : (7399 : Nat) < 7402 := by decide
  have hcop : ¬ 53 ∣ (7402 - 7399) := by decide
  have heq : (7402 : ZMod 53) ^ 13 = (7399 : ZMod 53) ^ 13 := by decide
  have hne : (7402 : ZMod 2809) ^ 13 ≠ (7399 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7402 := by decide
  have hB : ¬ 53 ∣ 7399 := by decide
  have hexp :=
    has_exp_one_of_zmod 7399 7402 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7399 7402 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7399 7402 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7399 7402 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7399 7402 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7439_7442 :
    HasPrimeWithExpOne (S_val 7439 7442) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7439 7442 ∧ ¬ p ∣ (7442 - 7439) ∧
      ∃ (hNotC : ¬ p ∣ 7442) (hNotB : ¬ p ∣ 7439),
        order_of_C_B_inv_mod_p2 7442 7439 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7439 7442 := by
  have hlt : (7439 : Nat) < 7442 := by decide
  have hcop : ¬ 79 ∣ (7442 - 7439) := by decide
  have heq : (7442 : ZMod 79) ^ 13 = (7439 : ZMod 79) ^ 13 := by decide
  have hne : (7442 : ZMod 6241) ^ 13 ≠ (7439 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 7442 := by decide
  have hB : ¬ 79 ∣ 7439 := by decide
  have hexp :=
    has_exp_one_of_zmod 7439 7442 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7439 7442 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7439 7442 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7439 7442 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7439 7442 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7492_7495 :
    HasPrimeWithExpOne (S_val 7492 7495) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7492 7495 ∧ ¬ p ∣ (7495 - 7492) ∧
      ∃ (hNotC : ¬ p ∣ 7495) (hNotB : ¬ p ∣ 7492),
        order_of_C_B_inv_mod_p2 7495 7492 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7492 7495 := by
  have hlt : (7492 : Nat) < 7495 := by decide
  have hcop : ¬ 443 ∣ (7495 - 7492) := by decide
  have heq : (7495 : ZMod 443) ^ 13 = (7492 : ZMod 443) ^ 13 := by decide
  have hne : (7495 : ZMod 196249) ^ 13 ≠ (7492 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 7495 := by decide
  have hB : ¬ 443 ∣ 7492 := by decide
  have hexp :=
    has_exp_one_of_zmod 7492 7495 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7492 7495 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7492 7495 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7492 7495 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7492 7495 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7532_7535 :
    HasPrimeWithExpOne (S_val 7532 7535) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7532 7535 ∧ ¬ p ∣ (7535 - 7532) ∧
      ∃ (hNotC : ¬ p ∣ 7535) (hNotB : ¬ p ∣ 7532),
        order_of_C_B_inv_mod_p2 7535 7532 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7532 7535 := by
  have hlt : (7532 : Nat) < 7535 := by decide
  have hcop : ¬ 53 ∣ (7535 - 7532) := by decide
  have heq : (7535 : ZMod 53) ^ 13 = (7532 : ZMod 53) ^ 13 := by decide
  have hne : (7535 : ZMod 2809) ^ 13 ≠ (7532 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7535 := by decide
  have hB : ¬ 53 ∣ 7532 := by decide
  have hexp :=
    has_exp_one_of_zmod 7532 7535 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7532 7535 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7532 7535 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7532 7535 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7532 7535 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7582_7585 :
    HasPrimeWithExpOne (S_val 7582 7585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7582 7585 ∧ ¬ p ∣ (7585 - 7582) ∧
      ∃ (hNotC : ¬ p ∣ 7585) (hNotB : ¬ p ∣ 7582),
        order_of_C_B_inv_mod_p2 7585 7582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7582 7585 := by
  have hlt : (7582 : Nat) < 7585 := by decide
  have hcop : ¬ 547 ∣ (7585 - 7582) := by decide
  have heq : (7585 : ZMod 547) ^ 13 = (7582 : ZMod 547) ^ 13 := by decide
  have hne : (7585 : ZMod 299209) ^ 13 ≠ (7582 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 7585 := by decide
  have hB : ¬ 547 ∣ 7582 := by decide
  have hexp :=
    has_exp_one_of_zmod 7582 7585 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7582 7585 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7582 7585 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7582 7585 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7582 7585 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7625_7628 :
    HasPrimeWithExpOne (S_val 7625 7628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7625 7628 ∧ ¬ p ∣ (7628 - 7625) ∧
      ∃ (hNotC : ¬ p ∣ 7628) (hNotB : ¬ p ∣ 7625),
        order_of_C_B_inv_mod_p2 7628 7625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7625 7628 := by
  have hlt : (7625 : Nat) < 7628 := by decide
  have hcop : ¬ 53 ∣ (7628 - 7625) := by decide
  have heq : (7628 : ZMod 53) ^ 13 = (7625 : ZMod 53) ^ 13 := by decide
  have hne : (7628 : ZMod 2809) ^ 13 ≠ (7625 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7628 := by decide
  have hB : ¬ 53 ∣ 7625 := by decide
  have hexp :=
    has_exp_one_of_zmod 7625 7628 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7625 7628 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7625 7628 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7625 7628 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7625 7628 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7669_7672 :
    HasPrimeWithExpOne (S_val 7669 7672) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7669 7672 ∧ ¬ p ∣ (7672 - 7669) ∧
      ∃ (hNotC : ¬ p ∣ 7672) (hNotB : ¬ p ∣ 7669),
        order_of_C_B_inv_mod_p2 7672 7669 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7669 7672 := by
  have hlt : (7669 : Nat) < 7672 := by decide
  have hcop : ¬ 53 ∣ (7672 - 7669) := by decide
  have heq : (7672 : ZMod 53) ^ 13 = (7669 : ZMod 53) ^ 13 := by decide
  have hne : (7672 : ZMod 2809) ^ 13 ≠ (7669 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7672 := by decide
  have hB : ¬ 53 ∣ 7669 := by decide
  have hexp :=
    has_exp_one_of_zmod 7669 7672 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7669 7672 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7669 7672 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7669 7672 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7669 7672 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7721_7724 :
    HasPrimeWithExpOne (S_val 7721 7724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7721 7724 ∧ ¬ p ∣ (7724 - 7721) ∧
      ∃ (hNotC : ¬ p ∣ 7724) (hNotB : ¬ p ∣ 7721),
        order_of_C_B_inv_mod_p2 7724 7721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7721 7724 := by
  have hlt : (7721 : Nat) < 7724 := by decide
  have hcop : ¬ 79 ∣ (7724 - 7721) := by decide
  have heq : (7724 : ZMod 79) ^ 13 = (7721 : ZMod 79) ^ 13 := by decide
  have hne : (7724 : ZMod 6241) ^ 13 ≠ (7721 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 7724 := by decide
  have hB : ¬ 79 ∣ 7721 := by decide
  have hexp :=
    has_exp_one_of_zmod 7721 7724 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7721 7724 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7721 7724 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7721 7724 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7721 7724 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7759_7762 :
    HasPrimeWithExpOne (S_val 7759 7762) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7759 7762 ∧ ¬ p ∣ (7762 - 7759) ∧
      ∃ (hNotC : ¬ p ∣ 7762) (hNotB : ¬ p ∣ 7759),
        order_of_C_B_inv_mod_p2 7762 7759 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7759 7762 := by
  have hlt : (7759 : Nat) < 7762 := by decide
  have hcop : ¬ 677 ∣ (7762 - 7759) := by decide
  have heq : (7762 : ZMod 677) ^ 13 = (7759 : ZMod 677) ^ 13 := by decide
  have hne : (7762 : ZMod 458329) ^ 13 ≠ (7759 : ZMod 458329) ^ 13 := by decide
  have hC : ¬ 677 ∣ 7762 := by decide
  have hB : ¬ 677 ∣ 7759 := by decide
  have hexp :=
    has_exp_one_of_zmod 7759 7762 677 458329 hlt prime_677 sq_677 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7759 7762 677 hlt prime_677 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7759 7762 677 458329 hlt sq_677 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7759 7762 677 prime_677 ne_13_677 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7759 7762 677 prime_677 hdvd hcop ne_13_677 hlt hC hB hord
  exact ⟨hexp, ⟨677, prime_677, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7804_7807 :
    HasPrimeWithExpOne (S_val 7804 7807) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7804 7807 ∧ ¬ p ∣ (7807 - 7804) ∧
      ∃ (hNotC : ¬ p ∣ 7807) (hNotB : ¬ p ∣ 7804),
        order_of_C_B_inv_mod_p2 7807 7804 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7804 7807 := by
  have hlt : (7804 : Nat) < 7807 := by decide
  have hcop : ¬ 53 ∣ (7807 - 7804) := by decide
  have heq : (7807 : ZMod 53) ^ 13 = (7804 : ZMod 53) ^ 13 := by decide
  have hne : (7807 : ZMod 2809) ^ 13 ≠ (7804 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7807 := by decide
  have hB : ¬ 53 ∣ 7804 := by decide
  have hexp :=
    has_exp_one_of_zmod 7804 7807 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7804 7807 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7804 7807 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7804 7807 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7804 7807 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7852_7855 :
    HasPrimeWithExpOne (S_val 7852 7855) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7852 7855 ∧ ¬ p ∣ (7855 - 7852) ∧
      ∃ (hNotC : ¬ p ∣ 7855) (hNotB : ¬ p ∣ 7852),
        order_of_C_B_inv_mod_p2 7855 7852 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7852 7855 := by
  have hlt : (7852 : Nat) < 7855 := by decide
  have hcop : ¬ 547 ∣ (7855 - 7852) := by decide
  have heq : (7855 : ZMod 547) ^ 13 = (7852 : ZMod 547) ^ 13 := by decide
  have hne : (7855 : ZMod 299209) ^ 13 ≠ (7852 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 7855 := by decide
  have hB : ¬ 547 ∣ 7852 := by decide
  have hexp :=
    has_exp_one_of_zmod 7852 7855 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7852 7855 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7852 7855 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7852 7855 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7852 7855 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7907_7910 :
    HasPrimeWithExpOne (S_val 7907 7910) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7907 7910 ∧ ¬ p ∣ (7910 - 7907) ∧
      ∃ (hNotC : ¬ p ∣ 7910) (hNotB : ¬ p ∣ 7907),
        order_of_C_B_inv_mod_p2 7910 7907 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7907 7910 := by
  have hlt : (7907 : Nat) < 7910 := by decide
  have hcop : ¬ 53 ∣ (7910 - 7907) := by decide
  have heq : (7910 : ZMod 53) ^ 13 = (7907 : ZMod 53) ^ 13 := by decide
  have hne : (7910 : ZMod 2809) ^ 13 ≠ (7907 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7910 := by decide
  have hB : ¬ 53 ∣ 7907 := by decide
  have hexp :=
    has_exp_one_of_zmod 7907 7910 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7907 7910 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7907 7910 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7907 7910 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7907 7910 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7955_7958 :
    HasPrimeWithExpOne (S_val 7955 7958) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7955 7958 ∧ ¬ p ∣ (7958 - 7955) ∧
      ∃ (hNotC : ¬ p ∣ 7958) (hNotB : ¬ p ∣ 7955),
        order_of_C_B_inv_mod_p2 7958 7955 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7955 7958 := by
  have hlt : (7955 : Nat) < 7958 := by decide
  have hcop : ¬ 53 ∣ (7958 - 7955) := by decide
  have heq : (7958 : ZMod 53) ^ 13 = (7955 : ZMod 53) ^ 13 := by decide
  have hne : (7958 : ZMod 2809) ^ 13 ≠ (7955 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7958 := by decide
  have hB : ¬ 53 ∣ 7955 := by decide
  have hexp :=
    has_exp_one_of_zmod 7955 7958 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7955 7958 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7955 7958 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7955 7958 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7955 7958 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8000_8003 :
    HasPrimeWithExpOne (S_val 8000 8003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8000 8003 ∧ ¬ p ∣ (8003 - 8000) ∧
      ∃ (hNotC : ¬ p ∣ 8003) (hNotB : ¬ p ∣ 8000),
        order_of_C_B_inv_mod_p2 8003 8000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8000 8003 := by
  have hlt : (8000 : Nat) < 8003 := by decide
  have hcop : ¬ 131 ∣ (8003 - 8000) := by decide
  have heq : (8003 : ZMod 131) ^ 13 = (8000 : ZMod 131) ^ 13 := by decide
  have hne : (8003 : ZMod 17161) ^ 13 ≠ (8000 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 8003 := by decide
  have hB : ¬ 131 ∣ 8000 := by decide
  have hexp :=
    has_exp_one_of_zmod 8000 8003 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8000 8003 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8000 8003 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8000 8003 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8000 8003 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8008_8011 :
    HasPrimeWithExpOne (S_val 8008 8011) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8008 8011 ∧ ¬ p ∣ (8011 - 8008) ∧
      ∃ (hNotC : ¬ p ∣ 8011) (hNotB : ¬ p ∣ 8008),
        order_of_C_B_inv_mod_p2 8011 8008 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8008 8011 := by
  have hlt : (8008 : Nat) < 8011 := by decide
  have hcop : ¬ 53 ∣ (8011 - 8008) := by decide
  have heq : (8011 : ZMod 53) ^ 13 = (8008 : ZMod 53) ^ 13 := by decide
  have hne : (8011 : ZMod 2809) ^ 13 ≠ (8008 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8011 := by decide
  have hB : ¬ 53 ∣ 8008 := by decide
  have hexp :=
    has_exp_one_of_zmod 8008 8011 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8008 8011 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8008 8011 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8008 8011 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8008 8011 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8060_8063 :
    HasPrimeWithExpOne (S_val 8060 8063) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8060 8063 ∧ ¬ p ∣ (8063 - 8060) ∧
      ∃ (hNotC : ¬ p ∣ 8063) (hNotB : ¬ p ∣ 8060),
        order_of_C_B_inv_mod_p2 8063 8060 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8060 8063 := by
  have hlt : (8060 : Nat) < 8063 := by decide
  have hcop : ¬ 53 ∣ (8063 - 8060) := by decide
  have heq : (8063 : ZMod 53) ^ 13 = (8060 : ZMod 53) ^ 13 := by decide
  have hne : (8063 : ZMod 2809) ^ 13 ≠ (8060 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8063 := by decide
  have hB : ¬ 53 ∣ 8060 := by decide
  have hexp :=
    has_exp_one_of_zmod 8060 8063 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8060 8063 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8060 8063 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8060 8063 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8060 8063 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8102_8105 :
    HasPrimeWithExpOne (S_val 8102 8105) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8102 8105 ∧ ¬ p ∣ (8105 - 8102) ∧
      ∃ (hNotC : ¬ p ∣ 8105) (hNotB : ¬ p ∣ 8102),
        order_of_C_B_inv_mod_p2 8105 8102 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8102 8105 := by
  have hlt : (8102 : Nat) < 8105 := by decide
  have hcop : ¬ 53 ∣ (8105 - 8102) := by decide
  have heq : (8105 : ZMod 53) ^ 13 = (8102 : ZMod 53) ^ 13 := by decide
  have hne : (8105 : ZMod 2809) ^ 13 ≠ (8102 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8105 := by decide
  have hB : ¬ 53 ∣ 8102 := by decide
  have hexp :=
    has_exp_one_of_zmod 8102 8105 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8102 8105 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8102 8105 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8102 8105 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8102 8105 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8144_8147 :
    HasPrimeWithExpOne (S_val 8144 8147) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8144 8147 ∧ ¬ p ∣ (8147 - 8144) ∧
      ∃ (hNotC : ¬ p ∣ 8147) (hNotB : ¬ p ∣ 8144),
        order_of_C_B_inv_mod_p2 8147 8144 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8144 8147 := by
  have hlt : (8144 : Nat) < 8147 := by decide
  have hcop : ¬ 547 ∣ (8147 - 8144) := by decide
  have heq : (8147 : ZMod 547) ^ 13 = (8144 : ZMod 547) ^ 13 := by decide
  have hne : (8147 : ZMod 299209) ^ 13 ≠ (8144 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 8147 := by decide
  have hB : ¬ 547 ∣ 8144 := by decide
  have hexp :=
    has_exp_one_of_zmod 8144 8147 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8144 8147 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8144 8147 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8144 8147 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8144 8147 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8182_8185 :
    HasPrimeWithExpOne (S_val 8182 8185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8182 8185 ∧ ¬ p ∣ (8185 - 8182) ∧
      ∃ (hNotC : ¬ p ∣ 8185) (hNotB : ¬ p ∣ 8182),
        order_of_C_B_inv_mod_p2 8185 8182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8182 8185 := by
  have hlt : (8182 : Nat) < 8185 := by decide
  have hcop : ¬ 131 ∣ (8185 - 8182) := by decide
  have heq : (8185 : ZMod 131) ^ 13 = (8182 : ZMod 131) ^ 13 := by decide
  have hne : (8185 : ZMod 17161) ^ 13 ≠ (8182 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 8185 := by decide
  have hB : ¬ 131 ∣ 8182 := by decide
  have hexp :=
    has_exp_one_of_zmod 8182 8185 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8182 8185 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8182 8185 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8182 8185 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8182 8185 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8228_8231 :
    HasPrimeWithExpOne (S_val 8228 8231) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8228 8231 ∧ ¬ p ∣ (8231 - 8228) ∧
      ∃ (hNotC : ¬ p ∣ 8231) (hNotB : ¬ p ∣ 8228),
        order_of_C_B_inv_mod_p2 8231 8228 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8228 8231 := by
  have hlt : (8228 : Nat) < 8231 := by decide
  have hcop : ¬ 53 ∣ (8231 - 8228) := by decide
  have heq : (8231 : ZMod 53) ^ 13 = (8228 : ZMod 53) ^ 13 := by decide
  have hne : (8231 : ZMod 2809) ^ 13 ≠ (8228 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8231 := by decide
  have hB : ¬ 53 ∣ 8228 := by decide
  have hexp :=
    has_exp_one_of_zmod 8228 8231 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8228 8231 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8228 8231 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8228 8231 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8228 8231 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8279_8282 :
    HasPrimeWithExpOne (S_val 8279 8282) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8279 8282 ∧ ¬ p ∣ (8282 - 8279) ∧
      ∃ (hNotC : ¬ p ∣ 8282) (hNotB : ¬ p ∣ 8279),
        order_of_C_B_inv_mod_p2 8282 8279 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8279 8282 := by
  have hlt : (8279 : Nat) < 8282 := by decide
  have hcop : ¬ 79 ∣ (8282 - 8279) := by decide
  have heq : (8282 : ZMod 79) ^ 13 = (8279 : ZMod 79) ^ 13 := by decide
  have hne : (8282 : ZMod 6241) ^ 13 ≠ (8279 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 8282 := by decide
  have hB : ¬ 79 ∣ 8279 := by decide
  have hexp :=
    has_exp_one_of_zmod 8279 8282 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8279 8282 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8279 8282 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8279 8282 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8279 8282 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8327_8330 :
    HasPrimeWithExpOne (S_val 8327 8330) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8327 8330 ∧ ¬ p ∣ (8330 - 8327) ∧
      ∃ (hNotC : ¬ p ∣ 8330) (hNotB : ¬ p ∣ 8327),
        order_of_C_B_inv_mod_p2 8330 8327 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8327 8330 := by
  have hlt : (8327 : Nat) < 8330 := by decide
  have hcop : ¬ 53 ∣ (8330 - 8327) := by decide
  have heq : (8330 : ZMod 53) ^ 13 = (8327 : ZMod 53) ^ 13 := by decide
  have hne : (8330 : ZMod 2809) ^ 13 ≠ (8327 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8330 := by decide
  have hB : ¬ 53 ∣ 8327 := by decide
  have hexp :=
    has_exp_one_of_zmod 8327 8330 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8327 8330 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8327 8330 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8327 8330 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8327 8330 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8378_8381 :
    HasPrimeWithExpOne (S_val 8378 8381) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8378 8381 ∧ ¬ p ∣ (8381 - 8378) ∧
      ∃ (hNotC : ¬ p ∣ 8381) (hNotB : ¬ p ∣ 8378),
        order_of_C_B_inv_mod_p2 8381 8378 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8378 8381 := by
  have hlt : (8378 : Nat) < 8381 := by decide
  have hcop : ¬ 53 ∣ (8381 - 8378) := by decide
  have heq : (8381 : ZMod 53) ^ 13 = (8378 : ZMod 53) ^ 13 := by decide
  have hne : (8381 : ZMod 2809) ^ 13 ≠ (8378 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8381 := by decide
  have hB : ¬ 53 ∣ 8378 := by decide
  have hexp :=
    has_exp_one_of_zmod 8378 8381 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8378 8381 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8378 8381 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8378 8381 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8378 8381 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8432_8435 :
    HasPrimeWithExpOne (S_val 8432 8435) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8432 8435 ∧ ¬ p ∣ (8435 - 8432) ∧
      ∃ (hNotC : ¬ p ∣ 8435) (hNotB : ¬ p ∣ 8432),
        order_of_C_B_inv_mod_p2 8435 8432 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8432 8435 := by
  have hlt : (8432 : Nat) < 8435 := by decide
  have hcop : ¬ 53 ∣ (8435 - 8432) := by decide
  have heq : (8435 : ZMod 53) ^ 13 = (8432 : ZMod 53) ^ 13 := by decide
  have hne : (8435 : ZMod 2809) ^ 13 ≠ (8432 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8435 := by decide
  have hB : ¬ 53 ∣ 8432 := by decide
  have hexp :=
    has_exp_one_of_zmod 8432 8435 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8432 8435 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8432 8435 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8432 8435 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8432 8435 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8473_8476 :
    HasPrimeWithExpOne (S_val 8473 8476) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8473 8476 ∧ ¬ p ∣ (8476 - 8473) ∧
      ∃ (hNotC : ¬ p ∣ 8476) (hNotB : ¬ p ∣ 8473),
        order_of_C_B_inv_mod_p2 8476 8473 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8473 8476 := by
  have hlt : (8473 : Nat) < 8476 := by decide
  have hcop : ¬ 53 ∣ (8476 - 8473) := by decide
  have heq : (8476 : ZMod 53) ^ 13 = (8473 : ZMod 53) ^ 13 := by decide
  have hne : (8476 : ZMod 2809) ^ 13 ≠ (8473 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8476 := by decide
  have hB : ¬ 53 ∣ 8473 := by decide
  have hexp :=
    has_exp_one_of_zmod 8473 8476 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8473 8476 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8473 8476 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8473 8476 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8473 8476 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8525_8528 :
    HasPrimeWithExpOne (S_val 8525 8528) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8525 8528 ∧ ¬ p ∣ (8528 - 8525) ∧
      ∃ (hNotC : ¬ p ∣ 8528) (hNotB : ¬ p ∣ 8525),
        order_of_C_B_inv_mod_p2 8528 8525 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8525 8528 := by
  have hlt : (8525 : Nat) < 8528 := by decide
  have hcop : ¬ 53 ∣ (8528 - 8525) := by decide
  have heq : (8528 : ZMod 53) ^ 13 = (8525 : ZMod 53) ^ 13 := by decide
  have hne : (8528 : ZMod 2809) ^ 13 ≠ (8525 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8528 := by decide
  have hB : ¬ 53 ∣ 8525 := by decide
  have hexp :=
    has_exp_one_of_zmod 8525 8528 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8525 8528 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8525 8528 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8525 8528 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8525 8528 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8576_8579 :
    HasPrimeWithExpOne (S_val 8576 8579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8576 8579 ∧ ¬ p ∣ (8579 - 8576) ∧
      ∃ (hNotC : ¬ p ∣ 8579) (hNotB : ¬ p ∣ 8576),
        order_of_C_B_inv_mod_p2 8579 8576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8576 8579 := by
  have hlt : (8576 : Nat) < 8579 := by decide
  have hcop : ¬ 521 ∣ (8579 - 8576) := by decide
  have heq : (8579 : ZMod 521) ^ 13 = (8576 : ZMod 521) ^ 13 := by decide
  have hne : (8579 : ZMod 271441) ^ 13 ≠ (8576 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 8579 := by decide
  have hB : ¬ 521 ∣ 8576 := by decide
  have hexp :=
    has_exp_one_of_zmod 8576 8579 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8576 8579 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8576 8579 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8576 8579 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8576 8579 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8612_8615 :
    HasPrimeWithExpOne (S_val 8612 8615) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8612 8615 ∧ ¬ p ∣ (8615 - 8612) ∧
      ∃ (hNotC : ¬ p ∣ 8615) (hNotB : ¬ p ∣ 8612),
        order_of_C_B_inv_mod_p2 8615 8612 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8612 8615 := by
  have hlt : (8612 : Nat) < 8615 := by decide
  have hcop : ¬ 521 ∣ (8615 - 8612) := by decide
  have heq : (8615 : ZMod 521) ^ 13 = (8612 : ZMod 521) ^ 13 := by decide
  have hne : (8615 : ZMod 271441) ^ 13 ≠ (8612 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 8615 := by decide
  have hB : ¬ 521 ∣ 8612 := by decide
  have hexp :=
    has_exp_one_of_zmod 8612 8615 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8612 8615 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8612 8615 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8612 8615 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8612 8615 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8668_8671 :
    HasPrimeWithExpOne (S_val 8668 8671) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8668 8671 ∧ ¬ p ∣ (8671 - 8668) ∧
      ∃ (hNotC : ¬ p ∣ 8671) (hNotB : ¬ p ∣ 8668),
        order_of_C_B_inv_mod_p2 8671 8668 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8668 8671 := by
  have hlt : (8668 : Nat) < 8671 := by decide
  have hcop : ¬ 157 ∣ (8671 - 8668) := by decide
  have heq : (8671 : ZMod 157) ^ 13 = (8668 : ZMod 157) ^ 13 := by decide
  have hne : (8671 : ZMod 24649) ^ 13 ≠ (8668 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 8671 := by decide
  have hB : ¬ 157 ∣ 8668 := by decide
  have hexp :=
    has_exp_one_of_zmod 8668 8671 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8668 8671 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8668 8671 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8668 8671 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8668 8671 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8710_8713 :
    HasPrimeWithExpOne (S_val 8710 8713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8710 8713 ∧ ¬ p ∣ (8713 - 8710) ∧
      ∃ (hNotC : ¬ p ∣ 8713) (hNotB : ¬ p ∣ 8710),
        order_of_C_B_inv_mod_p2 8713 8710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8710 8713 := by
  have hlt : (8710 : Nat) < 8713 := by decide
  have hcop : ¬ 53 ∣ (8713 - 8710) := by decide
  have heq : (8713 : ZMod 53) ^ 13 = (8710 : ZMod 53) ^ 13 := by decide
  have hne : (8713 : ZMod 2809) ^ 13 ≠ (8710 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8713 := by decide
  have hB : ¬ 53 ∣ 8710 := by decide
  have hexp :=
    has_exp_one_of_zmod 8710 8713 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8710 8713 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8710 8713 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8710 8713 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8710 8713 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8753_8756 :
    HasPrimeWithExpOne (S_val 8753 8756) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8753 8756 ∧ ¬ p ∣ (8756 - 8753) ∧
      ∃ (hNotC : ¬ p ∣ 8756) (hNotB : ¬ p ∣ 8753),
        order_of_C_B_inv_mod_p2 8756 8753 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8753 8756 := by
  have hlt : (8753 : Nat) < 8756 := by decide
  have hcop : ¬ 79 ∣ (8756 - 8753) := by decide
  have heq : (8756 : ZMod 79) ^ 13 = (8753 : ZMod 79) ^ 13 := by decide
  have hne : (8756 : ZMod 6241) ^ 13 ≠ (8753 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 8756 := by decide
  have hB : ¬ 79 ∣ 8753 := by decide
  have hexp :=
    has_exp_one_of_zmod 8753 8756 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8753 8756 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8753 8756 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8753 8756 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8753 8756 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8803_8806 :
    HasPrimeWithExpOne (S_val 8803 8806) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8803 8806 ∧ ¬ p ∣ (8806 - 8803) ∧
      ∃ (hNotC : ¬ p ∣ 8806) (hNotB : ¬ p ∣ 8803),
        order_of_C_B_inv_mod_p2 8806 8803 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8803 8806 := by
  have hlt : (8803 : Nat) < 8806 := by decide
  have hcop : ¬ 53 ∣ (8806 - 8803) := by decide
  have heq : (8806 : ZMod 53) ^ 13 = (8803 : ZMod 53) ^ 13 := by decide
  have hne : (8806 : ZMod 2809) ^ 13 ≠ (8803 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8806 := by decide
  have hB : ¬ 53 ∣ 8803 := by decide
  have hexp :=
    has_exp_one_of_zmod 8803 8806 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8803 8806 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8803 8806 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8803 8806 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8803 8806 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8843_8846 :
    HasPrimeWithExpOne (S_val 8843 8846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8843 8846 ∧ ¬ p ∣ (8846 - 8843) ∧
      ∃ (hNotC : ¬ p ∣ 8846) (hNotB : ¬ p ∣ 8843),
        order_of_C_B_inv_mod_p2 8846 8843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8843 8846 := by
  have hlt : (8843 : Nat) < 8846 := by decide
  have hcop : ¬ 53 ∣ (8846 - 8843) := by decide
  have heq : (8846 : ZMod 53) ^ 13 = (8843 : ZMod 53) ^ 13 := by decide
  have hne : (8846 : ZMod 2809) ^ 13 ≠ (8843 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8846 := by decide
  have hB : ¬ 53 ∣ 8843 := by decide
  have hexp :=
    has_exp_one_of_zmod 8843 8846 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8843 8846 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8843 8846 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8843 8846 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8843 8846 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8891_8894 :
    HasPrimeWithExpOne (S_val 8891 8894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8891 8894 ∧ ¬ p ∣ (8894 - 8891) ∧
      ∃ (hNotC : ¬ p ∣ 8894) (hNotB : ¬ p ∣ 8891),
        order_of_C_B_inv_mod_p2 8894 8891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8891 8894 := by
  have hlt : (8891 : Nat) < 8894 := by decide
  have hcop : ¬ 53 ∣ (8894 - 8891) := by decide
  have heq : (8894 : ZMod 53) ^ 13 = (8891 : ZMod 53) ^ 13 := by decide
  have hne : (8894 : ZMod 2809) ^ 13 ≠ (8891 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8894 := by decide
  have hB : ¬ 53 ∣ 8891 := by decide
  have hexp :=
    has_exp_one_of_zmod 8891 8894 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8891 8894 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8891 8894 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8891 8894 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8891 8894 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8944_8947 :
    HasPrimeWithExpOne (S_val 8944 8947) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8944 8947 ∧ ¬ p ∣ (8947 - 8944) ∧
      ∃ (hNotC : ¬ p ∣ 8947) (hNotB : ¬ p ∣ 8944),
        order_of_C_B_inv_mod_p2 8947 8944 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8944 8947 := by
  have hlt : (8944 : Nat) < 8947 := by decide
  have hcop : ¬ 53 ∣ (8947 - 8944) := by decide
  have heq : (8947 : ZMod 53) ^ 13 = (8944 : ZMod 53) ^ 13 := by decide
  have hne : (8947 : ZMod 2809) ^ 13 ≠ (8944 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8947 := by decide
  have hB : ¬ 53 ∣ 8944 := by decide
  have hexp :=
    has_exp_one_of_zmod 8944 8947 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8944 8947 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8944 8947 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8944 8947 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8944 8947 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8998_9001 :
    HasPrimeWithExpOne (S_val 8998 9001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8998 9001 ∧ ¬ p ∣ (9001 - 8998) ∧
      ∃ (hNotC : ¬ p ∣ 9001) (hNotB : ¬ p ∣ 8998),
        order_of_C_B_inv_mod_p2 9001 8998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8998 9001 := by
  have hlt : (8998 : Nat) < 9001 := by decide
  have hcop : ¬ 131 ∣ (9001 - 8998) := by decide
  have heq : (9001 : ZMod 131) ^ 13 = (8998 : ZMod 131) ^ 13 := by decide
  have hne : (9001 : ZMod 17161) ^ 13 ≠ (8998 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 9001 := by decide
  have hB : ¬ 131 ∣ 8998 := by decide
  have hexp :=
    has_exp_one_of_zmod 8998 9001 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8998 9001 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8998 9001 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8998 9001 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8998 9001 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9050_9053 :
    HasPrimeWithExpOne (S_val 9050 9053) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9050 9053 ∧ ¬ p ∣ (9053 - 9050) ∧
      ∃ (hNotC : ¬ p ∣ 9053) (hNotB : ¬ p ∣ 9050),
        order_of_C_B_inv_mod_p2 9053 9050 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9050 9053 := by
  have hlt : (9050 : Nat) < 9053 := by decide
  have hcop : ¬ 53 ∣ (9053 - 9050) := by decide
  have heq : (9053 : ZMod 53) ^ 13 = (9050 : ZMod 53) ^ 13 := by decide
  have hne : (9053 : ZMod 2809) ^ 13 ≠ (9050 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9053 := by decide
  have hB : ¬ 53 ∣ 9050 := by decide
  have hexp :=
    has_exp_one_of_zmod 9050 9053 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9050 9053 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9050 9053 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9050 9053 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9050 9053 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9095_9098 :
    HasPrimeWithExpOne (S_val 9095 9098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9095 9098 ∧ ¬ p ∣ (9098 - 9095) ∧
      ∃ (hNotC : ¬ p ∣ 9098) (hNotB : ¬ p ∣ 9095),
        order_of_C_B_inv_mod_p2 9098 9095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9095 9098 := by
  have hlt : (9095 : Nat) < 9098 := by decide
  have hcop : ¬ 53 ∣ (9098 - 9095) := by decide
  have heq : (9098 : ZMod 53) ^ 13 = (9095 : ZMod 53) ^ 13 := by decide
  have hne : (9098 : ZMod 2809) ^ 13 ≠ (9095 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9098 := by decide
  have hB : ¬ 53 ∣ 9095 := by decide
  have hexp :=
    has_exp_one_of_zmod 9095 9098 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9095 9098 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9095 9098 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9095 9098 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9095 9098 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9134_9137 :
    HasPrimeWithExpOne (S_val 9134 9137) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9134 9137 ∧ ¬ p ∣ (9137 - 9134) ∧
      ∃ (hNotC : ¬ p ∣ 9137) (hNotB : ¬ p ∣ 9134),
        order_of_C_B_inv_mod_p2 9137 9134 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9134 9137 := by
  have hlt : (9134 : Nat) < 9137 := by decide
  have hcop : ¬ 53 ∣ (9137 - 9134) := by decide
  have heq : (9137 : ZMod 53) ^ 13 = (9134 : ZMod 53) ^ 13 := by decide
  have hne : (9137 : ZMod 2809) ^ 13 ≠ (9134 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9137 := by decide
  have hB : ¬ 53 ∣ 9134 := by decide
  have hexp :=
    has_exp_one_of_zmod 9134 9137 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9134 9137 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9134 9137 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9134 9137 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9134 9137 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9178_9181 :
    HasPrimeWithExpOne (S_val 9178 9181) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9178 9181 ∧ ¬ p ∣ (9181 - 9178) ∧
      ∃ (hNotC : ¬ p ∣ 9181) (hNotB : ¬ p ∣ 9178),
        order_of_C_B_inv_mod_p2 9181 9178 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9178 9181 := by
  have hlt : (9178 : Nat) < 9181 := by decide
  have hcop : ¬ 79 ∣ (9181 - 9178) := by decide
  have heq : (9181 : ZMod 79) ^ 13 = (9178 : ZMod 79) ^ 13 := by decide
  have hne : (9181 : ZMod 6241) ^ 13 ≠ (9178 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 9181 := by decide
  have hB : ¬ 79 ∣ 9178 := by decide
  have hexp :=
    has_exp_one_of_zmod 9178 9181 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9178 9181 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9178 9181 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9178 9181 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9178 9181 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9230_9233 :
    HasPrimeWithExpOne (S_val 9230 9233) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9230 9233 ∧ ¬ p ∣ (9233 - 9230) ∧
      ∃ (hNotC : ¬ p ∣ 9233) (hNotB : ¬ p ∣ 9230),
        order_of_C_B_inv_mod_p2 9233 9230 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9230 9233 := by
  have hlt : (9230 : Nat) < 9233 := by decide
  have hcop : ¬ 131 ∣ (9233 - 9230) := by decide
  have heq : (9233 : ZMod 131) ^ 13 = (9230 : ZMod 131) ^ 13 := by decide
  have hne : (9233 : ZMod 17161) ^ 13 ≠ (9230 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 9233 := by decide
  have hB : ¬ 131 ∣ 9230 := by decide
  have hexp :=
    has_exp_one_of_zmod 9230 9233 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9230 9233 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9230 9233 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9230 9233 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9230 9233 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9280_9283 :
    HasPrimeWithExpOne (S_val 9280 9283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9280 9283 ∧ ¬ p ∣ (9283 - 9280) ∧
      ∃ (hNotC : ¬ p ∣ 9283) (hNotB : ¬ p ∣ 9280),
        order_of_C_B_inv_mod_p2 9283 9280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9280 9283 := by
  have hlt : (9280 : Nat) < 9283 := by decide
  have hcop : ¬ 53 ∣ (9283 - 9280) := by decide
  have heq : (9283 : ZMod 53) ^ 13 = (9280 : ZMod 53) ^ 13 := by decide
  have hne : (9283 : ZMod 2809) ^ 13 ≠ (9280 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9283 := by decide
  have hB : ¬ 53 ∣ 9280 := by decide
  have hexp :=
    has_exp_one_of_zmod 9280 9283 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9280 9283 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9280 9283 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9280 9283 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9280 9283 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9326_9329 :
    HasPrimeWithExpOne (S_val 9326 9329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9326 9329 ∧ ¬ p ∣ (9329 - 9326) ∧
      ∃ (hNotC : ¬ p ∣ 9329) (hNotB : ¬ p ∣ 9326),
        order_of_C_B_inv_mod_p2 9329 9326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9326 9329 := by
  have hlt : (9326 : Nat) < 9329 := by decide
  have hcop : ¬ 157 ∣ (9329 - 9326) := by decide
  have heq : (9329 : ZMod 157) ^ 13 = (9326 : ZMod 157) ^ 13 := by decide
  have hne : (9329 : ZMod 24649) ^ 13 ≠ (9326 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 9329 := by decide
  have hB : ¬ 157 ∣ 9326 := by decide
  have hexp :=
    has_exp_one_of_zmod 9326 9329 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9326 9329 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9326 9329 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9326 9329 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9326 9329 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9374_9377 :
    HasPrimeWithExpOne (S_val 9374 9377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9374 9377 ∧ ¬ p ∣ (9377 - 9374) ∧
      ∃ (hNotC : ¬ p ∣ 9377) (hNotB : ¬ p ∣ 9374),
        order_of_C_B_inv_mod_p2 9377 9374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9374 9377 := by
  have hlt : (9374 : Nat) < 9377 := by decide
  have hcop : ¬ 53 ∣ (9377 - 9374) := by decide
  have heq : (9377 : ZMod 53) ^ 13 = (9374 : ZMod 53) ^ 13 := by decide
  have hne : (9377 : ZMod 2809) ^ 13 ≠ (9374 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9377 := by decide
  have hB : ¬ 53 ∣ 9374 := by decide
  have hexp :=
    has_exp_one_of_zmod 9374 9377 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9374 9377 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9374 9377 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9374 9377 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9374 9377 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9433_9436 :
    HasPrimeWithExpOne (S_val 9433 9436) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9433 9436 ∧ ¬ p ∣ (9436 - 9433) ∧
      ∃ (hNotC : ¬ p ∣ 9436) (hNotB : ¬ p ∣ 9433),
        order_of_C_B_inv_mod_p2 9436 9433 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9433 9436 := by
  have hlt : (9433 : Nat) < 9436 := by decide
  have hcop : ¬ 313 ∣ (9436 - 9433) := by decide
  have heq : (9436 : ZMod 313) ^ 13 = (9433 : ZMod 313) ^ 13 := by decide
  have hne : (9436 : ZMod 97969) ^ 13 ≠ (9433 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 9436 := by decide
  have hB : ¬ 313 ∣ 9433 := by decide
  have hexp :=
    has_exp_one_of_zmod 9433 9436 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9433 9436 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9433 9436 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9433 9436 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9433 9436 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9487_9490 :
    HasPrimeWithExpOne (S_val 9487 9490) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9487 9490 ∧ ¬ p ∣ (9490 - 9487) ∧
      ∃ (hNotC : ¬ p ∣ 9490) (hNotB : ¬ p ∣ 9487),
        order_of_C_B_inv_mod_p2 9490 9487 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9487 9490 := by
  have hlt : (9487 : Nat) < 9490 := by decide
  have hcop : ¬ 131 ∣ (9490 - 9487) := by decide
  have heq : (9490 : ZMod 131) ^ 13 = (9487 : ZMod 131) ^ 13 := by decide
  have hne : (9490 : ZMod 17161) ^ 13 ≠ (9487 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 9490 := by decide
  have hB : ¬ 131 ∣ 9487 := by decide
  have hexp :=
    has_exp_one_of_zmod 9487 9490 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9487 9490 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9487 9490 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9487 9490 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9487 9490 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9533_9536 :
    HasPrimeWithExpOne (S_val 9533 9536) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9533 9536 ∧ ¬ p ∣ (9536 - 9533) ∧
      ∃ (hNotC : ¬ p ∣ 9536) (hNotB : ¬ p ∣ 9533),
        order_of_C_B_inv_mod_p2 9536 9533 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9533 9536 := by
  have hlt : (9533 : Nat) < 9536 := by decide
  have hcop : ¬ 53 ∣ (9536 - 9533) := by decide
  have heq : (9536 : ZMod 53) ^ 13 = (9533 : ZMod 53) ^ 13 := by decide
  have hne : (9536 : ZMod 2809) ^ 13 ≠ (9533 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9536 := by decide
  have hB : ¬ 53 ∣ 9533 := by decide
  have hexp :=
    has_exp_one_of_zmod 9533 9536 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9533 9536 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9533 9536 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9533 9536 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9533 9536 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9589_9592 :
    HasPrimeWithExpOne (S_val 9589 9592) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9589 9592 ∧ ¬ p ∣ (9592 - 9589) ∧
      ∃ (hNotC : ¬ p ∣ 9592) (hNotB : ¬ p ∣ 9589),
        order_of_C_B_inv_mod_p2 9592 9589 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9589 9592 := by
  have hlt : (9589 : Nat) < 9592 := by decide
  have hcop : ¬ 443 ∣ (9592 - 9589) := by decide
  have heq : (9592 : ZMod 443) ^ 13 = (9589 : ZMod 443) ^ 13 := by decide
  have hne : (9592 : ZMod 196249) ^ 13 ≠ (9589 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 9592 := by decide
  have hB : ¬ 443 ∣ 9589 := by decide
  have hexp :=
    has_exp_one_of_zmod 9589 9592 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9589 9592 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9589 9592 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9589 9592 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9589 9592 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9638_9641 :
    HasPrimeWithExpOne (S_val 9638 9641) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9638 9641 ∧ ¬ p ∣ (9641 - 9638) ∧
      ∃ (hNotC : ¬ p ∣ 9641) (hNotB : ¬ p ∣ 9638),
        order_of_C_B_inv_mod_p2 9641 9638 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9638 9641 := by
  have hlt : (9638 : Nat) < 9641 := by decide
  have hcop : ¬ 53 ∣ (9641 - 9638) := by decide
  have heq : (9641 : ZMod 53) ^ 13 = (9638 : ZMod 53) ^ 13 := by decide
  have hne : (9641 : ZMod 2809) ^ 13 ≠ (9638 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9641 := by decide
  have hB : ¬ 53 ∣ 9638 := by decide
  have hexp :=
    has_exp_one_of_zmod 9638 9641 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9638 9641 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9638 9641 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9638 9641 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9638 9641 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9686_9689 :
    HasPrimeWithExpOne (S_val 9686 9689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9686 9689 ∧ ¬ p ∣ (9689 - 9686) ∧
      ∃ (hNotC : ¬ p ∣ 9689) (hNotB : ¬ p ∣ 9686),
        order_of_C_B_inv_mod_p2 9689 9686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9686 9689 := by
  have hlt : (9686 : Nat) < 9689 := by decide
  have hcop : ¬ 53 ∣ (9689 - 9686) := by decide
  have heq : (9689 : ZMod 53) ^ 13 = (9686 : ZMod 53) ^ 13 := by decide
  have hne : (9689 : ZMod 2809) ^ 13 ≠ (9686 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9689 := by decide
  have hB : ¬ 53 ∣ 9686 := by decide
  have hexp :=
    has_exp_one_of_zmod 9686 9689 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9686 9689 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9686 9689 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9686 9689 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9686 9689 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9743_9746 :
    HasPrimeWithExpOne (S_val 9743 9746) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9743 9746 ∧ ¬ p ∣ (9746 - 9743) ∧
      ∃ (hNotC : ¬ p ∣ 9746) (hNotB : ¬ p ∣ 9743),
        order_of_C_B_inv_mod_p2 9746 9743 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9743 9746 := by
  have hlt : (9743 : Nat) < 9746 := by decide
  have hcop : ¬ 53 ∣ (9746 - 9743) := by decide
  have heq : (9746 : ZMod 53) ^ 13 = (9743 : ZMod 53) ^ 13 := by decide
  have hne : (9746 : ZMod 2809) ^ 13 ≠ (9743 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9746 := by decide
  have hB : ¬ 53 ∣ 9743 := by decide
  have hexp :=
    has_exp_one_of_zmod 9743 9746 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9743 9746 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9743 9746 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9743 9746 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9743 9746 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9781_9784 :
    HasPrimeWithExpOne (S_val 9781 9784) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9781 9784 ∧ ¬ p ∣ (9784 - 9781) ∧
      ∃ (hNotC : ¬ p ∣ 9784) (hNotB : ¬ p ∣ 9781),
        order_of_C_B_inv_mod_p2 9784 9781 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9781 9784 := by
  have hlt : (9781 : Nat) < 9784 := by decide
  have hcop : ¬ 79 ∣ (9784 - 9781) := by decide
  have heq : (9784 : ZMod 79) ^ 13 = (9781 : ZMod 79) ^ 13 := by decide
  have hne : (9784 : ZMod 6241) ^ 13 ≠ (9781 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 9784 := by decide
  have hB : ¬ 79 ∣ 9781 := by decide
  have hexp :=
    has_exp_one_of_zmod 9781 9784 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9781 9784 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9781 9784 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9781 9784 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9781 9784 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9842_9845 :
    HasPrimeWithExpOne (S_val 9842 9845) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9842 9845 ∧ ¬ p ∣ (9845 - 9842) ∧
      ∃ (hNotC : ¬ p ∣ 9845) (hNotB : ¬ p ∣ 9842),
        order_of_C_B_inv_mod_p2 9845 9842 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9842 9845 := by
  have hlt : (9842 : Nat) < 9845 := by decide
  have hcop : ¬ 53 ∣ (9845 - 9842) := by decide
  have heq : (9845 : ZMod 53) ^ 13 = (9842 : ZMod 53) ^ 13 := by decide
  have hne : (9845 : ZMod 2809) ^ 13 ≠ (9842 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9845 := by decide
  have hB : ¬ 53 ∣ 9842 := by decide
  have hexp :=
    has_exp_one_of_zmod 9842 9845 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9842 9845 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9842 9845 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9842 9845 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9842 9845 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9893_9896 :
    HasPrimeWithExpOne (S_val 9893 9896) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9893 9896 ∧ ¬ p ∣ (9896 - 9893) ∧
      ∃ (hNotC : ¬ p ∣ 9896) (hNotB : ¬ p ∣ 9893),
        order_of_C_B_inv_mod_p2 9896 9893 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9893 9896 := by
  have hlt : (9893 : Nat) < 9896 := by decide
  have hcop : ¬ 79 ∣ (9896 - 9893) := by decide
  have heq : (9896 : ZMod 79) ^ 13 = (9893 : ZMod 79) ^ 13 := by decide
  have hne : (9896 : ZMod 6241) ^ 13 ≠ (9893 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 9896 := by decide
  have hB : ¬ 79 ∣ 9893 := by decide
  have hexp :=
    has_exp_one_of_zmod 9893 9896 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9893 9896 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9893 9896 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9893 9896 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9893 9896 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9943_9946 :
    HasPrimeWithExpOne (S_val 9943 9946) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9943 9946 ∧ ¬ p ∣ (9946 - 9943) ∧
      ∃ (hNotC : ¬ p ∣ 9946) (hNotB : ¬ p ∣ 9943),
        order_of_C_B_inv_mod_p2 9946 9943 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9943 9946 := by
  have hlt : (9943 : Nat) < 9946 := by decide
  have hcop : ¬ 53 ∣ (9946 - 9943) := by decide
  have heq : (9946 : ZMod 53) ^ 13 = (9943 : ZMod 53) ^ 13 := by decide
  have hne : (9946 : ZMod 2809) ^ 13 ≠ (9943 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 9946 := by decide
  have hB : ¬ 53 ∣ 9943 := by decide
  have hexp :=
    has_exp_one_of_zmod 9943 9946 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9943 9946 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9943 9946 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9943 9946 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9943 9946 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 := by
  have hlt : (10000 : Nat) < 10003 := by decide
  have hcop : ¬ 1613 ∣ (10003 - 10000) := by decide
  have heq : (10003 : ZMod 1613) ^ 13 = (10000 : ZMod 1613) ^ 13 := by decide
  have hne : (10003 : ZMod 2601769) ^ 13 ≠ (10000 : ZMod 2601769) ^ 13 := by decide
  have hC : ¬ 1613 ∣ 10003 := by decide
  have hB : ¬ 1613 ∣ 10000 := by decide
  have hexp :=
    has_exp_one_of_zmod 10000 10003 1613 2601769 hlt prime_1613 sq_1613 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 10000 10003 1613 hlt prime_1613 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 10000 10003 1613 2601769 hlt sq_1613 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      10000 10003 1613 prime_1613 ne_13_1613 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      10000 10003 1613 prime_1613 hdvd hcop ne_13_1613 hlt hC hB hord
  exact ⟨hexp, ⟨1613, prime_1613, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-- Two hundred fifty-six named `B ≤ 10000` gap-3 rows.
Not a `∀`. -/
theorem S_has_prime_with_exp_one_B_le_10000_table_rows :
    HasPrimeWithExpOne (S_val 1 4) ∧
    HasPrimeWithExpOne (S_val 4 7) ∧
    HasPrimeWithExpOne (S_val 5 8) ∧
    HasPrimeWithExpOne (S_val 10 13) ∧
    HasPrimeWithExpOne (S_val 13 16) ∧
    HasPrimeWithExpOne (S_val 35 38) ∧
    HasPrimeWithExpOne (S_val 46 49) ∧
    HasPrimeWithExpOne (S_val 59 62) ∧
    HasPrimeWithExpOne (S_val 73 76) ∧
    HasPrimeWithExpOne (S_val 97 100) ∧
    HasPrimeWithExpOne (S_val 100 103) ∧
    HasPrimeWithExpOne (S_val 116 119) ∧
    HasPrimeWithExpOne (S_val 137 140) ∧
    HasPrimeWithExpOne (S_val 152 155) ∧
    HasPrimeWithExpOne (S_val 172 175) ∧
    HasPrimeWithExpOne (S_val 191 194) ∧
    HasPrimeWithExpOne (S_val 205 208) ∧
    HasPrimeWithExpOne (S_val 224 227) ∧
    HasPrimeWithExpOne (S_val 244 247) ∧
    HasPrimeWithExpOne (S_val 260 263) ∧
    HasPrimeWithExpOne (S_val 283 286) ∧
    HasPrimeWithExpOne (S_val 299 302) ∧
    HasPrimeWithExpOne (S_val 316 319) ∧
    HasPrimeWithExpOne (S_val 331 334) ∧
    HasPrimeWithExpOne (S_val 350 353) ∧
    HasPrimeWithExpOne (S_val 364 367) ∧
    HasPrimeWithExpOne (S_val 379 382) ∧
    HasPrimeWithExpOne (S_val 407 410) ∧
    HasPrimeWithExpOne (S_val 430 433) ∧
    HasPrimeWithExpOne (S_val 442 445) ∧
    HasPrimeWithExpOne (S_val 461 464) ∧
    HasPrimeWithExpOne (S_val 472 475) ∧
    HasPrimeWithExpOne (S_val 487 490) ∧
    HasPrimeWithExpOne (S_val 502 505) ∧
    HasPrimeWithExpOne (S_val 521 524) ∧
    HasPrimeWithExpOne (S_val 536 539) ∧
    HasPrimeWithExpOne (S_val 563 566) ∧
    HasPrimeWithExpOne (S_val 578 581) ∧
    HasPrimeWithExpOne (S_val 590 593) ∧
    HasPrimeWithExpOne (S_val 601 604) ∧
    HasPrimeWithExpOne (S_val 617 620) ∧
    HasPrimeWithExpOne (S_val 640 643) ∧
    HasPrimeWithExpOne (S_val 649 652) ∧
    HasPrimeWithExpOne (S_val 664 667) ∧
    HasPrimeWithExpOne (S_val 682 685) ∧
    HasPrimeWithExpOne (S_val 698 701) ∧
    HasPrimeWithExpOne (S_val 715 718) ∧
    HasPrimeWithExpOne (S_val 733 736) ∧
    HasPrimeWithExpOne (S_val 748 751) ∧
    HasPrimeWithExpOne (S_val 763 766) ∧
    HasPrimeWithExpOne (S_val 782 785) ∧
    HasPrimeWithExpOne (S_val 802 805) ∧
    HasPrimeWithExpOne (S_val 815 818) ∧
    HasPrimeWithExpOne (S_val 835 838) ∧
    HasPrimeWithExpOne (S_val 853 856) ∧
    HasPrimeWithExpOne (S_val 878 881) ∧
    HasPrimeWithExpOne (S_val 892 895) ∧
    HasPrimeWithExpOne (S_val 914 917) ∧
    HasPrimeWithExpOne (S_val 934 937) ∧
    HasPrimeWithExpOne (S_val 949 952) ∧
    HasPrimeWithExpOne (S_val 962 965) ∧
    HasPrimeWithExpOne (S_val 985 988) ∧
    HasPrimeWithExpOne (S_val 998 1001) ∧
    HasPrimeWithExpOne (S_val 1000 1003) ∧
    HasPrimeWithExpOne (S_val 1001 1004) ∧
    HasPrimeWithExpOne (S_val 1049 1052) ∧
    HasPrimeWithExpOne (S_val 1097 1100) ∧
    HasPrimeWithExpOne (S_val 1132 1135) ∧
    HasPrimeWithExpOne (S_val 1183 1186) ∧
    HasPrimeWithExpOne (S_val 1223 1226) ∧
    HasPrimeWithExpOne (S_val 1265 1268) ∧
    HasPrimeWithExpOne (S_val 1318 1321) ∧
    HasPrimeWithExpOne (S_val 1360 1363) ∧
    HasPrimeWithExpOne (S_val 1403 1406) ∧
    HasPrimeWithExpOne (S_val 1468 1471) ∧
    HasPrimeWithExpOne (S_val 1516 1519) ∧
    HasPrimeWithExpOne (S_val 1555 1558) ∧
    HasPrimeWithExpOne (S_val 1610 1613) ∧
    HasPrimeWithExpOne (S_val 1654 1657) ∧
    HasPrimeWithExpOne (S_val 1706 1709) ∧
    HasPrimeWithExpOne (S_val 1753 1756) ∧
    HasPrimeWithExpOne (S_val 1790 1793) ∧
    HasPrimeWithExpOne (S_val 1834 1837) ∧
    HasPrimeWithExpOne (S_val 1888 1891) ∧
    HasPrimeWithExpOne (S_val 1921 1924) ∧
    HasPrimeWithExpOne (S_val 1987 1990) ∧
    HasPrimeWithExpOne (S_val 2039 2042) ∧
    HasPrimeWithExpOne (S_val 2096 2099) ∧
    HasPrimeWithExpOne (S_val 2147 2150) ∧
    HasPrimeWithExpOne (S_val 2186 2189) ∧
    HasPrimeWithExpOne (S_val 2236 2239) ∧
    HasPrimeWithExpOne (S_val 2284 2287) ∧
    HasPrimeWithExpOne (S_val 2326 2329) ∧
    HasPrimeWithExpOne (S_val 2377 2380) ∧
    HasPrimeWithExpOne (S_val 2425 2428) ∧
    HasPrimeWithExpOne (S_val 2462 2465) ∧
    HasPrimeWithExpOne (S_val 2509 2512) ∧
    HasPrimeWithExpOne (S_val 2551 2554) ∧
    HasPrimeWithExpOne (S_val 2602 2605) ∧
    HasPrimeWithExpOne (S_val 2659 2662) ∧
    HasPrimeWithExpOne (S_val 2699 2702) ∧
    HasPrimeWithExpOne (S_val 2743 2746) ∧
    HasPrimeWithExpOne (S_val 2788 2791) ∧
    HasPrimeWithExpOne (S_val 2831 2834) ∧
    HasPrimeWithExpOne (S_val 2876 2879) ∧
    HasPrimeWithExpOne (S_val 2935 2938) ∧
    HasPrimeWithExpOne (S_val 2986 2989) ∧
    HasPrimeWithExpOne (S_val 3044 3047) ∧
    HasPrimeWithExpOne (S_val 3080 3083) ∧
    HasPrimeWithExpOne (S_val 3133 3136) ∧
    HasPrimeWithExpOne (S_val 3184 3187) ∧
    HasPrimeWithExpOne (S_val 3224 3227) ∧
    HasPrimeWithExpOne (S_val 3278 3281) ∧
    HasPrimeWithExpOne (S_val 3335 3338) ∧
    HasPrimeWithExpOne (S_val 3382 3385) ∧
    HasPrimeWithExpOne (S_val 3424 3427) ∧
    HasPrimeWithExpOne (S_val 3475 3478) ∧
    HasPrimeWithExpOne (S_val 3508 3511) ∧
    HasPrimeWithExpOne (S_val 3556 3559) ∧
    HasPrimeWithExpOne (S_val 3608 3611) ∧
    HasPrimeWithExpOne (S_val 3650 3653) ∧
    HasPrimeWithExpOne (S_val 3698 3701) ∧
    HasPrimeWithExpOne (S_val 3755 3758) ∧
    HasPrimeWithExpOne (S_val 3803 3806) ∧
    HasPrimeWithExpOne (S_val 3848 3851) ∧
    HasPrimeWithExpOne (S_val 3889 3892) ∧
    HasPrimeWithExpOne (S_val 3940 3943) ∧
    HasPrimeWithExpOne (S_val 3988 3991) ∧
    HasPrimeWithExpOne (S_val 4021 4024) ∧
    HasPrimeWithExpOne (S_val 4085 4088) ∧
    HasPrimeWithExpOne (S_val 4132 4135) ∧
    HasPrimeWithExpOne (S_val 4186 4189) ∧
    HasPrimeWithExpOne (S_val 4246 4249) ∧
    HasPrimeWithExpOne (S_val 4289 4292) ∧
    HasPrimeWithExpOne (S_val 4343 4346) ∧
    HasPrimeWithExpOne (S_val 4390 4393) ∧
    HasPrimeWithExpOne (S_val 4439 4442) ∧
    HasPrimeWithExpOne (S_val 4484 4487) ∧
    HasPrimeWithExpOne (S_val 4529 4532) ∧
    HasPrimeWithExpOne (S_val 4574 4577) ∧
    HasPrimeWithExpOne (S_val 4640 4643) ∧
    HasPrimeWithExpOne (S_val 4684 4687) ∧
    HasPrimeWithExpOne (S_val 4738 4741) ∧
    HasPrimeWithExpOne (S_val 4784 4787) ∧
    HasPrimeWithExpOne (S_val 4834 4837) ∧
    HasPrimeWithExpOne (S_val 4880 4883) ∧
    HasPrimeWithExpOne (S_val 4915 4918) ∧
    HasPrimeWithExpOne (S_val 4961 4964) ∧
    HasPrimeWithExpOne (S_val 5000 5003) ∧
    HasPrimeWithExpOne (S_val 5027 5030) ∧
    HasPrimeWithExpOne (S_val 5069 5072) ∧
    HasPrimeWithExpOne (S_val 5120 5123) ∧
    HasPrimeWithExpOne (S_val 5182 5185) ∧
    HasPrimeWithExpOne (S_val 5237 5240) ∧
    HasPrimeWithExpOne (S_val 5279 5282) ∧
    HasPrimeWithExpOne (S_val 5327 5330) ∧
    HasPrimeWithExpOne (S_val 5371 5374) ∧
    HasPrimeWithExpOne (S_val 5416 5419) ∧
    HasPrimeWithExpOne (S_val 5456 5459) ∧
    HasPrimeWithExpOne (S_val 5509 5512) ∧
    HasPrimeWithExpOne (S_val 5552 5555) ∧
    HasPrimeWithExpOne (S_val 5594 5597) ∧
    HasPrimeWithExpOne (S_val 5636 5639) ∧
    HasPrimeWithExpOne (S_val 5701 5704) ∧
    HasPrimeWithExpOne (S_val 5746 5749) ∧
    HasPrimeWithExpOne (S_val 5794 5797) ∧
    HasPrimeWithExpOne (S_val 5837 5840) ∧
    HasPrimeWithExpOne (S_val 5876 5879) ∧
    HasPrimeWithExpOne (S_val 5923 5926) ∧
    HasPrimeWithExpOne (S_val 5968 5971) ∧
    HasPrimeWithExpOne (S_val 6016 6019) ∧
    HasPrimeWithExpOne (S_val 6061 6064) ∧
    HasPrimeWithExpOne (S_val 6100 6103) ∧
    HasPrimeWithExpOne (S_val 6158 6161) ∧
    HasPrimeWithExpOne (S_val 6205 6208) ∧
    HasPrimeWithExpOne (S_val 6244 6247) ∧
    HasPrimeWithExpOne (S_val 6293 6296) ∧
    HasPrimeWithExpOne (S_val 6340 6343) ∧
    HasPrimeWithExpOne (S_val 6382 6385) ∧
    HasPrimeWithExpOne (S_val 6431 6434) ∧
    HasPrimeWithExpOne (S_val 6487 6490) ∧
    HasPrimeWithExpOne (S_val 6524 6527) ∧
    HasPrimeWithExpOne (S_val 6575 6578) ∧
    HasPrimeWithExpOne (S_val 6619 6622) ∧
    HasPrimeWithExpOne (S_val 6665 6668) ∧
    HasPrimeWithExpOne (S_val 6715 6718) ∧
    HasPrimeWithExpOne (S_val 6763 6766) ∧
    HasPrimeWithExpOne (S_val 6808 6811) ∧
    HasPrimeWithExpOne (S_val 6866 6869) ∧
    HasPrimeWithExpOne (S_val 6908 6911) ∧
    HasPrimeWithExpOne (S_val 6956 6959) ∧
    HasPrimeWithExpOne (S_val 7000 7003) ∧
    HasPrimeWithExpOne (S_val 7003 7006) ∧
    HasPrimeWithExpOne (S_val 7049 7052) ∧
    HasPrimeWithExpOne (S_val 7112 7115) ∧
    HasPrimeWithExpOne (S_val 7153 7156) ∧
    HasPrimeWithExpOne (S_val 7198 7201) ∧
    HasPrimeWithExpOne (S_val 7253 7256) ∧
    HasPrimeWithExpOne (S_val 7295 7298) ∧
    HasPrimeWithExpOne (S_val 7345 7348) ∧
    HasPrimeWithExpOne (S_val 7399 7402) ∧
    HasPrimeWithExpOne (S_val 7439 7442) ∧
    HasPrimeWithExpOne (S_val 7492 7495) ∧
    HasPrimeWithExpOne (S_val 7532 7535) ∧
    HasPrimeWithExpOne (S_val 7582 7585) ∧
    HasPrimeWithExpOne (S_val 7625 7628) ∧
    HasPrimeWithExpOne (S_val 7669 7672) ∧
    HasPrimeWithExpOne (S_val 7721 7724) ∧
    HasPrimeWithExpOne (S_val 7759 7762) ∧
    HasPrimeWithExpOne (S_val 7804 7807) ∧
    HasPrimeWithExpOne (S_val 7852 7855) ∧
    HasPrimeWithExpOne (S_val 7907 7910) ∧
    HasPrimeWithExpOne (S_val 7955 7958) ∧
    HasPrimeWithExpOne (S_val 8000 8003) ∧
    HasPrimeWithExpOne (S_val 8008 8011) ∧
    HasPrimeWithExpOne (S_val 8060 8063) ∧
    HasPrimeWithExpOne (S_val 8102 8105) ∧
    HasPrimeWithExpOne (S_val 8144 8147) ∧
    HasPrimeWithExpOne (S_val 8182 8185) ∧
    HasPrimeWithExpOne (S_val 8228 8231) ∧
    HasPrimeWithExpOne (S_val 8279 8282) ∧
    HasPrimeWithExpOne (S_val 8327 8330) ∧
    HasPrimeWithExpOne (S_val 8378 8381) ∧
    HasPrimeWithExpOne (S_val 8432 8435) ∧
    HasPrimeWithExpOne (S_val 8473 8476) ∧
    HasPrimeWithExpOne (S_val 8525 8528) ∧
    HasPrimeWithExpOne (S_val 8576 8579) ∧
    HasPrimeWithExpOne (S_val 8612 8615) ∧
    HasPrimeWithExpOne (S_val 8668 8671) ∧
    HasPrimeWithExpOne (S_val 8710 8713) ∧
    HasPrimeWithExpOne (S_val 8753 8756) ∧
    HasPrimeWithExpOne (S_val 8803 8806) ∧
    HasPrimeWithExpOne (S_val 8843 8846) ∧
    HasPrimeWithExpOne (S_val 8891 8894) ∧
    HasPrimeWithExpOne (S_val 8944 8947) ∧
    HasPrimeWithExpOne (S_val 8998 9001) ∧
    HasPrimeWithExpOne (S_val 9050 9053) ∧
    HasPrimeWithExpOne (S_val 9095 9098) ∧
    HasPrimeWithExpOne (S_val 9134 9137) ∧
    HasPrimeWithExpOne (S_val 9178 9181) ∧
    HasPrimeWithExpOne (S_val 9230 9233) ∧
    HasPrimeWithExpOne (S_val 9280 9283) ∧
    HasPrimeWithExpOne (S_val 9326 9329) ∧
    HasPrimeWithExpOne (S_val 9374 9377) ∧
    HasPrimeWithExpOne (S_val 9433 9436) ∧
    HasPrimeWithExpOne (S_val 9487 9490) ∧
    HasPrimeWithExpOne (S_val 9533 9536) ∧
    HasPrimeWithExpOne (S_val 9589 9592) ∧
    HasPrimeWithExpOne (S_val 9638 9641) ∧
    HasPrimeWithExpOne (S_val 9686 9689) ∧
    HasPrimeWithExpOne (S_val 9743 9746) ∧
    HasPrimeWithExpOne (S_val 9781 9784) ∧
    HasPrimeWithExpOne (S_val 9842 9845) ∧
    HasPrimeWithExpOne (S_val 9893 9896) ∧
    HasPrimeWithExpOne (S_val 9943 9946) ∧
    HasPrimeWithExpOne (S_val 10000 10003) :=
  ⟨row_1_4.1,
    row_4_7.1,
    row_5_8.1,
    row_10_13.1,
    row_13_16.1,
    row_35_38.1,
    row_46_49.1,
    row_59_62.1,
    row_73_76.1,
    row_97_100.1,
    row_100_103.1,
    row_116_119.1,
    row_137_140.1,
    row_152_155.1,
    row_172_175.1,
    row_191_194.1,
    row_205_208.1,
    row_224_227.1,
    row_244_247.1,
    row_260_263.1,
    row_283_286.1,
    row_299_302.1,
    row_316_319.1,
    row_331_334.1,
    row_350_353.1,
    row_364_367.1,
    row_379_382.1,
    row_407_410.1,
    row_430_433.1,
    row_442_445.1,
    row_461_464.1,
    row_472_475.1,
    row_487_490.1,
    row_502_505.1,
    row_521_524.1,
    row_536_539.1,
    row_563_566.1,
    row_578_581.1,
    row_590_593.1,
    row_601_604.1,
    row_617_620.1,
    row_640_643.1,
    row_649_652.1,
    row_664_667.1,
    row_682_685.1,
    row_698_701.1,
    row_715_718.1,
    row_733_736.1,
    row_748_751.1,
    row_763_766.1,
    row_782_785.1,
    row_802_805.1,
    row_815_818.1,
    row_835_838.1,
    row_853_856.1,
    row_878_881.1,
    row_892_895.1,
    row_914_917.1,
    row_934_937.1,
    row_949_952.1,
    row_962_965.1,
    row_985_988.1,
    row_998_1001.1,
    row_1000_1003.1,
    row_1001_1004.1,
    row_1049_1052.1,
    row_1097_1100.1,
    row_1132_1135.1,
    row_1183_1186.1,
    row_1223_1226.1,
    row_1265_1268.1,
    row_1318_1321.1,
    row_1360_1363.1,
    row_1403_1406.1,
    row_1468_1471.1,
    row_1516_1519.1,
    row_1555_1558.1,
    row_1610_1613.1,
    row_1654_1657.1,
    row_1706_1709.1,
    row_1753_1756.1,
    row_1790_1793.1,
    row_1834_1837.1,
    row_1888_1891.1,
    row_1921_1924.1,
    row_1987_1990.1,
    row_2039_2042.1,
    row_2096_2099.1,
    row_2147_2150.1,
    row_2186_2189.1,
    row_2236_2239.1,
    row_2284_2287.1,
    row_2326_2329.1,
    row_2377_2380.1,
    row_2425_2428.1,
    row_2462_2465.1,
    row_2509_2512.1,
    row_2551_2554.1,
    row_2602_2605.1,
    row_2659_2662.1,
    row_2699_2702.1,
    row_2743_2746.1,
    row_2788_2791.1,
    row_2831_2834.1,
    row_2876_2879.1,
    row_2935_2938.1,
    row_2986_2989.1,
    row_3044_3047.1,
    row_3080_3083.1,
    row_3133_3136.1,
    row_3184_3187.1,
    row_3224_3227.1,
    row_3278_3281.1,
    row_3335_3338.1,
    row_3382_3385.1,
    row_3424_3427.1,
    row_3475_3478.1,
    row_3508_3511.1,
    row_3556_3559.1,
    row_3608_3611.1,
    row_3650_3653.1,
    row_3698_3701.1,
    row_3755_3758.1,
    row_3803_3806.1,
    row_3848_3851.1,
    row_3889_3892.1,
    row_3940_3943.1,
    row_3988_3991.1,
    row_4021_4024.1,
    row_4085_4088.1,
    row_4132_4135.1,
    row_4186_4189.1,
    row_4246_4249.1,
    row_4289_4292.1,
    row_4343_4346.1,
    row_4390_4393.1,
    row_4439_4442.1,
    row_4484_4487.1,
    row_4529_4532.1,
    row_4574_4577.1,
    row_4640_4643.1,
    row_4684_4687.1,
    row_4738_4741.1,
    row_4784_4787.1,
    row_4834_4837.1,
    row_4880_4883.1,
    row_4915_4918.1,
    row_4961_4964.1,
    row_5000_5003.1,
    row_5027_5030.1,
    row_5069_5072.1,
    row_5120_5123.1,
    row_5182_5185.1,
    row_5237_5240.1,
    row_5279_5282.1,
    row_5327_5330.1,
    row_5371_5374.1,
    row_5416_5419.1,
    row_5456_5459.1,
    row_5509_5512.1,
    row_5552_5555.1,
    row_5594_5597.1,
    row_5636_5639.1,
    row_5701_5704.1,
    row_5746_5749.1,
    row_5794_5797.1,
    row_5837_5840.1,
    row_5876_5879.1,
    row_5923_5926.1,
    row_5968_5971.1,
    row_6016_6019.1,
    row_6061_6064.1,
    row_6100_6103.1,
    row_6158_6161.1,
    row_6205_6208.1,
    row_6244_6247.1,
    row_6293_6296.1,
    row_6340_6343.1,
    row_6382_6385.1,
    row_6431_6434.1,
    row_6487_6490.1,
    row_6524_6527.1,
    row_6575_6578.1,
    row_6619_6622.1,
    row_6665_6668.1,
    row_6715_6718.1,
    row_6763_6766.1,
    row_6808_6811.1,
    row_6866_6869.1,
    row_6908_6911.1,
    row_6956_6959.1,
    row_7000_7003.1,
    row_7003_7006.1,
    row_7049_7052.1,
    row_7112_7115.1,
    row_7153_7156.1,
    row_7198_7201.1,
    row_7253_7256.1,
    row_7295_7298.1,
    row_7345_7348.1,
    row_7399_7402.1,
    row_7439_7442.1,
    row_7492_7495.1,
    row_7532_7535.1,
    row_7582_7585.1,
    row_7625_7628.1,
    row_7669_7672.1,
    row_7721_7724.1,
    row_7759_7762.1,
    row_7804_7807.1,
    row_7852_7855.1,
    row_7907_7910.1,
    row_7955_7958.1,
    row_8000_8003.1,
    row_8008_8011.1,
    row_8060_8063.1,
    row_8102_8105.1,
    row_8144_8147.1,
    row_8182_8185.1,
    row_8228_8231.1,
    row_8279_8282.1,
    row_8327_8330.1,
    row_8378_8381.1,
    row_8432_8435.1,
    row_8473_8476.1,
    row_8525_8528.1,
    row_8576_8579.1,
    row_8612_8615.1,
    row_8668_8671.1,
    row_8710_8713.1,
    row_8753_8756.1,
    row_8803_8806.1,
    row_8843_8846.1,
    row_8891_8894.1,
    row_8944_8947.1,
    row_8998_9001.1,
    row_9050_9053.1,
    row_9095_9098.1,
    row_9134_9137.1,
    row_9178_9181.1,
    row_9230_9233.1,
    row_9280_9283.1,
    row_9326_9329.1,
    row_9374_9377.1,
    row_9433_9436.1,
    row_9487_9490.1,
    row_9533_9536.1,
    row_9589_9592.1,
    row_9638_9641.1,
    row_9686_9689.1,
    row_9743_9746.1,
    row_9781_9784.1,
    row_9842_9845.1,
    row_9893_9896.1,
    row_9943_9946.1,
    row_10000_10003.1⟩
/-- Those rows have a primitive prime with order ≠ 13.
Not a `∀`. -/
theorem exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
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
      p ∣ S_val 13 16 ∧ ¬ p ∣ (16 - 13) ∧
      ∃ (hNotC : ¬ p ∣ 16) (hNotB : ¬ p ∣ 13),
        order_of_C_B_inv_mod_p2 16 13 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35 38 ∧ ¬ p ∣ (38 - 35) ∧
      ∃ (hNotC : ¬ p ∣ 38) (hNotB : ¬ p ∣ 35),
        order_of_C_B_inv_mod_p2 38 35 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46 49 ∧ ¬ p ∣ (49 - 46) ∧
      ∃ (hNotC : ¬ p ∣ 49) (hNotB : ¬ p ∣ 46),
        order_of_C_B_inv_mod_p2 49 46 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59 62 ∧ ¬ p ∣ (62 - 59) ∧
      ∃ (hNotC : ¬ p ∣ 62) (hNotB : ¬ p ∣ 59),
        order_of_C_B_inv_mod_p2 62 59 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73 76 ∧ ¬ p ∣ (76 - 73) ∧
      ∃ (hNotC : ¬ p ∣ 76) (hNotB : ¬ p ∣ 73),
        order_of_C_B_inv_mod_p2 76 73 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97 100 ∧ ¬ p ∣ (100 - 97) ∧
      ∃ (hNotC : ¬ p ∣ 100) (hNotB : ¬ p ∣ 97),
        order_of_C_B_inv_mod_p2 100 97 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100 103 ∧ ¬ p ∣ (103 - 100) ∧
      ∃ (hNotC : ¬ p ∣ 103) (hNotB : ¬ p ∣ 100),
        order_of_C_B_inv_mod_p2 103 100 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116 119 ∧ ¬ p ∣ (119 - 116) ∧
      ∃ (hNotC : ¬ p ∣ 119) (hNotB : ¬ p ∣ 116),
        order_of_C_B_inv_mod_p2 119 116 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137 140 ∧ ¬ p ∣ (140 - 137) ∧
      ∃ (hNotC : ¬ p ∣ 140) (hNotB : ¬ p ∣ 137),
        order_of_C_B_inv_mod_p2 140 137 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152 155 ∧ ¬ p ∣ (155 - 152) ∧
      ∃ (hNotC : ¬ p ∣ 155) (hNotB : ¬ p ∣ 152),
        order_of_C_B_inv_mod_p2 155 152 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172 175 ∧ ¬ p ∣ (175 - 172) ∧
      ∃ (hNotC : ¬ p ∣ 175) (hNotB : ¬ p ∣ 172),
        order_of_C_B_inv_mod_p2 175 172 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191 194 ∧ ¬ p ∣ (194 - 191) ∧
      ∃ (hNotC : ¬ p ∣ 194) (hNotB : ¬ p ∣ 191),
        order_of_C_B_inv_mod_p2 194 191 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205 208 ∧ ¬ p ∣ (208 - 205) ∧
      ∃ (hNotC : ¬ p ∣ 208) (hNotB : ¬ p ∣ 205),
        order_of_C_B_inv_mod_p2 208 205 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224 227 ∧ ¬ p ∣ (227 - 224) ∧
      ∃ (hNotC : ¬ p ∣ 227) (hNotB : ¬ p ∣ 224),
        order_of_C_B_inv_mod_p2 227 224 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244 247 ∧ ¬ p ∣ (247 - 244) ∧
      ∃ (hNotC : ¬ p ∣ 247) (hNotB : ¬ p ∣ 244),
        order_of_C_B_inv_mod_p2 247 244 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260 263 ∧ ¬ p ∣ (263 - 260) ∧
      ∃ (hNotC : ¬ p ∣ 263) (hNotB : ¬ p ∣ 260),
        order_of_C_B_inv_mod_p2 263 260 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283 286 ∧ ¬ p ∣ (286 - 283) ∧
      ∃ (hNotC : ¬ p ∣ 286) (hNotB : ¬ p ∣ 283),
        order_of_C_B_inv_mod_p2 286 283 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299 302 ∧ ¬ p ∣ (302 - 299) ∧
      ∃ (hNotC : ¬ p ∣ 302) (hNotB : ¬ p ∣ 299),
        order_of_C_B_inv_mod_p2 302 299 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316 319 ∧ ¬ p ∣ (319 - 316) ∧
      ∃ (hNotC : ¬ p ∣ 319) (hNotB : ¬ p ∣ 316),
        order_of_C_B_inv_mod_p2 319 316 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331 334 ∧ ¬ p ∣ (334 - 331) ∧
      ∃ (hNotC : ¬ p ∣ 334) (hNotB : ¬ p ∣ 331),
        order_of_C_B_inv_mod_p2 334 331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350 353 ∧ ¬ p ∣ (353 - 350) ∧
      ∃ (hNotC : ¬ p ∣ 353) (hNotB : ¬ p ∣ 350),
        order_of_C_B_inv_mod_p2 353 350 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364 367 ∧ ¬ p ∣ (367 - 364) ∧
      ∃ (hNotC : ¬ p ∣ 367) (hNotB : ¬ p ∣ 364),
        order_of_C_B_inv_mod_p2 367 364 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379 382 ∧ ¬ p ∣ (382 - 379) ∧
      ∃ (hNotC : ¬ p ∣ 382) (hNotB : ¬ p ∣ 379),
        order_of_C_B_inv_mod_p2 382 379 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407 410 ∧ ¬ p ∣ (410 - 407) ∧
      ∃ (hNotC : ¬ p ∣ 410) (hNotB : ¬ p ∣ 407),
        order_of_C_B_inv_mod_p2 410 407 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430 433 ∧ ¬ p ∣ (433 - 430) ∧
      ∃ (hNotC : ¬ p ∣ 433) (hNotB : ¬ p ∣ 430),
        order_of_C_B_inv_mod_p2 433 430 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442 445 ∧ ¬ p ∣ (445 - 442) ∧
      ∃ (hNotC : ¬ p ∣ 445) (hNotB : ¬ p ∣ 442),
        order_of_C_B_inv_mod_p2 445 442 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461 464 ∧ ¬ p ∣ (464 - 461) ∧
      ∃ (hNotC : ¬ p ∣ 464) (hNotB : ¬ p ∣ 461),
        order_of_C_B_inv_mod_p2 464 461 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472 475 ∧ ¬ p ∣ (475 - 472) ∧
      ∃ (hNotC : ¬ p ∣ 475) (hNotB : ¬ p ∣ 472),
        order_of_C_B_inv_mod_p2 475 472 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487 490 ∧ ¬ p ∣ (490 - 487) ∧
      ∃ (hNotC : ¬ p ∣ 490) (hNotB : ¬ p ∣ 487),
        order_of_C_B_inv_mod_p2 490 487 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 502 505 ∧ ¬ p ∣ (505 - 502) ∧
      ∃ (hNotC : ¬ p ∣ 505) (hNotB : ¬ p ∣ 502),
        order_of_C_B_inv_mod_p2 505 502 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 521 524 ∧ ¬ p ∣ (524 - 521) ∧
      ∃ (hNotC : ¬ p ∣ 524) (hNotB : ¬ p ∣ 521),
        order_of_C_B_inv_mod_p2 524 521 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 536 539 ∧ ¬ p ∣ (539 - 536) ∧
      ∃ (hNotC : ¬ p ∣ 539) (hNotB : ¬ p ∣ 536),
        order_of_C_B_inv_mod_p2 539 536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 563 566 ∧ ¬ p ∣ (566 - 563) ∧
      ∃ (hNotC : ¬ p ∣ 566) (hNotB : ¬ p ∣ 563),
        order_of_C_B_inv_mod_p2 566 563 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 578 581 ∧ ¬ p ∣ (581 - 578) ∧
      ∃ (hNotC : ¬ p ∣ 581) (hNotB : ¬ p ∣ 578),
        order_of_C_B_inv_mod_p2 581 578 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 590 593 ∧ ¬ p ∣ (593 - 590) ∧
      ∃ (hNotC : ¬ p ∣ 593) (hNotB : ¬ p ∣ 590),
        order_of_C_B_inv_mod_p2 593 590 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 601 604 ∧ ¬ p ∣ (604 - 601) ∧
      ∃ (hNotC : ¬ p ∣ 604) (hNotB : ¬ p ∣ 601),
        order_of_C_B_inv_mod_p2 604 601 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 617 620 ∧ ¬ p ∣ (620 - 617) ∧
      ∃ (hNotC : ¬ p ∣ 620) (hNotB : ¬ p ∣ 617),
        order_of_C_B_inv_mod_p2 620 617 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 640 643 ∧ ¬ p ∣ (643 - 640) ∧
      ∃ (hNotC : ¬ p ∣ 643) (hNotB : ¬ p ∣ 640),
        order_of_C_B_inv_mod_p2 643 640 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 649 652 ∧ ¬ p ∣ (652 - 649) ∧
      ∃ (hNotC : ¬ p ∣ 652) (hNotB : ¬ p ∣ 649),
        order_of_C_B_inv_mod_p2 652 649 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 664 667 ∧ ¬ p ∣ (667 - 664) ∧
      ∃ (hNotC : ¬ p ∣ 667) (hNotB : ¬ p ∣ 664),
        order_of_C_B_inv_mod_p2 667 664 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 682 685 ∧ ¬ p ∣ (685 - 682) ∧
      ∃ (hNotC : ¬ p ∣ 685) (hNotB : ¬ p ∣ 682),
        order_of_C_B_inv_mod_p2 685 682 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 698 701 ∧ ¬ p ∣ (701 - 698) ∧
      ∃ (hNotC : ¬ p ∣ 701) (hNotB : ¬ p ∣ 698),
        order_of_C_B_inv_mod_p2 701 698 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 715 718 ∧ ¬ p ∣ (718 - 715) ∧
      ∃ (hNotC : ¬ p ∣ 718) (hNotB : ¬ p ∣ 715),
        order_of_C_B_inv_mod_p2 718 715 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 733 736 ∧ ¬ p ∣ (736 - 733) ∧
      ∃ (hNotC : ¬ p ∣ 736) (hNotB : ¬ p ∣ 733),
        order_of_C_B_inv_mod_p2 736 733 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 748 751 ∧ ¬ p ∣ (751 - 748) ∧
      ∃ (hNotC : ¬ p ∣ 751) (hNotB : ¬ p ∣ 748),
        order_of_C_B_inv_mod_p2 751 748 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 763 766 ∧ ¬ p ∣ (766 - 763) ∧
      ∃ (hNotC : ¬ p ∣ 766) (hNotB : ¬ p ∣ 763),
        order_of_C_B_inv_mod_p2 766 763 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 782 785 ∧ ¬ p ∣ (785 - 782) ∧
      ∃ (hNotC : ¬ p ∣ 785) (hNotB : ¬ p ∣ 782),
        order_of_C_B_inv_mod_p2 785 782 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 802 805 ∧ ¬ p ∣ (805 - 802) ∧
      ∃ (hNotC : ¬ p ∣ 805) (hNotB : ¬ p ∣ 802),
        order_of_C_B_inv_mod_p2 805 802 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 815 818 ∧ ¬ p ∣ (818 - 815) ∧
      ∃ (hNotC : ¬ p ∣ 818) (hNotB : ¬ p ∣ 815),
        order_of_C_B_inv_mod_p2 818 815 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 835 838 ∧ ¬ p ∣ (838 - 835) ∧
      ∃ (hNotC : ¬ p ∣ 838) (hNotB : ¬ p ∣ 835),
        order_of_C_B_inv_mod_p2 838 835 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 853 856 ∧ ¬ p ∣ (856 - 853) ∧
      ∃ (hNotC : ¬ p ∣ 856) (hNotB : ¬ p ∣ 853),
        order_of_C_B_inv_mod_p2 856 853 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 878 881 ∧ ¬ p ∣ (881 - 878) ∧
      ∃ (hNotC : ¬ p ∣ 881) (hNotB : ¬ p ∣ 878),
        order_of_C_B_inv_mod_p2 881 878 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 892 895 ∧ ¬ p ∣ (895 - 892) ∧
      ∃ (hNotC : ¬ p ∣ 895) (hNotB : ¬ p ∣ 892),
        order_of_C_B_inv_mod_p2 895 892 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 914 917 ∧ ¬ p ∣ (917 - 914) ∧
      ∃ (hNotC : ¬ p ∣ 917) (hNotB : ¬ p ∣ 914),
        order_of_C_B_inv_mod_p2 917 914 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 934 937 ∧ ¬ p ∣ (937 - 934) ∧
      ∃ (hNotC : ¬ p ∣ 937) (hNotB : ¬ p ∣ 934),
        order_of_C_B_inv_mod_p2 937 934 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 949 952 ∧ ¬ p ∣ (952 - 949) ∧
      ∃ (hNotC : ¬ p ∣ 952) (hNotB : ¬ p ∣ 949),
        order_of_C_B_inv_mod_p2 952 949 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 962 965 ∧ ¬ p ∣ (965 - 962) ∧
      ∃ (hNotC : ¬ p ∣ 965) (hNotB : ¬ p ∣ 962),
        order_of_C_B_inv_mod_p2 965 962 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 985 988 ∧ ¬ p ∣ (988 - 985) ∧
      ∃ (hNotC : ¬ p ∣ 988) (hNotB : ¬ p ∣ 985),
        order_of_C_B_inv_mod_p2 988 985 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 998 1001 ∧ ¬ p ∣ (1001 - 998) ∧
      ∃ (hNotC : ¬ p ∣ 1001) (hNotB : ¬ p ∣ 998),
        order_of_C_B_inv_mod_p2 1001 998 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1000 1003 ∧ ¬ p ∣ (1003 - 1000) ∧
      ∃ (hNotC : ¬ p ∣ 1003) (hNotB : ¬ p ∣ 1000),
        order_of_C_B_inv_mod_p2 1003 1000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1001 1004 ∧ ¬ p ∣ (1004 - 1001) ∧
      ∃ (hNotC : ¬ p ∣ 1004) (hNotB : ¬ p ∣ 1001),
        order_of_C_B_inv_mod_p2 1004 1001 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1049 1052 ∧ ¬ p ∣ (1052 - 1049) ∧
      ∃ (hNotC : ¬ p ∣ 1052) (hNotB : ¬ p ∣ 1049),
        order_of_C_B_inv_mod_p2 1052 1049 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1097 1100 ∧ ¬ p ∣ (1100 - 1097) ∧
      ∃ (hNotC : ¬ p ∣ 1100) (hNotB : ¬ p ∣ 1097),
        order_of_C_B_inv_mod_p2 1100 1097 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1132 1135 ∧ ¬ p ∣ (1135 - 1132) ∧
      ∃ (hNotC : ¬ p ∣ 1135) (hNotB : ¬ p ∣ 1132),
        order_of_C_B_inv_mod_p2 1135 1132 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1183 1186 ∧ ¬ p ∣ (1186 - 1183) ∧
      ∃ (hNotC : ¬ p ∣ 1186) (hNotB : ¬ p ∣ 1183),
        order_of_C_B_inv_mod_p2 1186 1183 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1223 1226 ∧ ¬ p ∣ (1226 - 1223) ∧
      ∃ (hNotC : ¬ p ∣ 1226) (hNotB : ¬ p ∣ 1223),
        order_of_C_B_inv_mod_p2 1226 1223 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1265 1268 ∧ ¬ p ∣ (1268 - 1265) ∧
      ∃ (hNotC : ¬ p ∣ 1268) (hNotB : ¬ p ∣ 1265),
        order_of_C_B_inv_mod_p2 1268 1265 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1318 1321 ∧ ¬ p ∣ (1321 - 1318) ∧
      ∃ (hNotC : ¬ p ∣ 1321) (hNotB : ¬ p ∣ 1318),
        order_of_C_B_inv_mod_p2 1321 1318 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1360 1363 ∧ ¬ p ∣ (1363 - 1360) ∧
      ∃ (hNotC : ¬ p ∣ 1363) (hNotB : ¬ p ∣ 1360),
        order_of_C_B_inv_mod_p2 1363 1360 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1403 1406 ∧ ¬ p ∣ (1406 - 1403) ∧
      ∃ (hNotC : ¬ p ∣ 1406) (hNotB : ¬ p ∣ 1403),
        order_of_C_B_inv_mod_p2 1406 1403 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1468 1471 ∧ ¬ p ∣ (1471 - 1468) ∧
      ∃ (hNotC : ¬ p ∣ 1471) (hNotB : ¬ p ∣ 1468),
        order_of_C_B_inv_mod_p2 1471 1468 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1516 1519 ∧ ¬ p ∣ (1519 - 1516) ∧
      ∃ (hNotC : ¬ p ∣ 1519) (hNotB : ¬ p ∣ 1516),
        order_of_C_B_inv_mod_p2 1519 1516 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1555 1558 ∧ ¬ p ∣ (1558 - 1555) ∧
      ∃ (hNotC : ¬ p ∣ 1558) (hNotB : ¬ p ∣ 1555),
        order_of_C_B_inv_mod_p2 1558 1555 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1610 1613 ∧ ¬ p ∣ (1613 - 1610) ∧
      ∃ (hNotC : ¬ p ∣ 1613) (hNotB : ¬ p ∣ 1610),
        order_of_C_B_inv_mod_p2 1613 1610 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1654 1657 ∧ ¬ p ∣ (1657 - 1654) ∧
      ∃ (hNotC : ¬ p ∣ 1657) (hNotB : ¬ p ∣ 1654),
        order_of_C_B_inv_mod_p2 1657 1654 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1706 1709 ∧ ¬ p ∣ (1709 - 1706) ∧
      ∃ (hNotC : ¬ p ∣ 1709) (hNotB : ¬ p ∣ 1706),
        order_of_C_B_inv_mod_p2 1709 1706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1753 1756 ∧ ¬ p ∣ (1756 - 1753) ∧
      ∃ (hNotC : ¬ p ∣ 1756) (hNotB : ¬ p ∣ 1753),
        order_of_C_B_inv_mod_p2 1756 1753 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1790 1793 ∧ ¬ p ∣ (1793 - 1790) ∧
      ∃ (hNotC : ¬ p ∣ 1793) (hNotB : ¬ p ∣ 1790),
        order_of_C_B_inv_mod_p2 1793 1790 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1834 1837 ∧ ¬ p ∣ (1837 - 1834) ∧
      ∃ (hNotC : ¬ p ∣ 1837) (hNotB : ¬ p ∣ 1834),
        order_of_C_B_inv_mod_p2 1837 1834 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1888 1891 ∧ ¬ p ∣ (1891 - 1888) ∧
      ∃ (hNotC : ¬ p ∣ 1891) (hNotB : ¬ p ∣ 1888),
        order_of_C_B_inv_mod_p2 1891 1888 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1921 1924 ∧ ¬ p ∣ (1924 - 1921) ∧
      ∃ (hNotC : ¬ p ∣ 1924) (hNotB : ¬ p ∣ 1921),
        order_of_C_B_inv_mod_p2 1924 1921 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1987 1990 ∧ ¬ p ∣ (1990 - 1987) ∧
      ∃ (hNotC : ¬ p ∣ 1990) (hNotB : ¬ p ∣ 1987),
        order_of_C_B_inv_mod_p2 1990 1987 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2039 2042 ∧ ¬ p ∣ (2042 - 2039) ∧
      ∃ (hNotC : ¬ p ∣ 2042) (hNotB : ¬ p ∣ 2039),
        order_of_C_B_inv_mod_p2 2042 2039 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2096 2099 ∧ ¬ p ∣ (2099 - 2096) ∧
      ∃ (hNotC : ¬ p ∣ 2099) (hNotB : ¬ p ∣ 2096),
        order_of_C_B_inv_mod_p2 2099 2096 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2147 2150 ∧ ¬ p ∣ (2150 - 2147) ∧
      ∃ (hNotC : ¬ p ∣ 2150) (hNotB : ¬ p ∣ 2147),
        order_of_C_B_inv_mod_p2 2150 2147 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2186 2189 ∧ ¬ p ∣ (2189 - 2186) ∧
      ∃ (hNotC : ¬ p ∣ 2189) (hNotB : ¬ p ∣ 2186),
        order_of_C_B_inv_mod_p2 2189 2186 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2236 2239 ∧ ¬ p ∣ (2239 - 2236) ∧
      ∃ (hNotC : ¬ p ∣ 2239) (hNotB : ¬ p ∣ 2236),
        order_of_C_B_inv_mod_p2 2239 2236 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2284 2287 ∧ ¬ p ∣ (2287 - 2284) ∧
      ∃ (hNotC : ¬ p ∣ 2287) (hNotB : ¬ p ∣ 2284),
        order_of_C_B_inv_mod_p2 2287 2284 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2326 2329 ∧ ¬ p ∣ (2329 - 2326) ∧
      ∃ (hNotC : ¬ p ∣ 2329) (hNotB : ¬ p ∣ 2326),
        order_of_C_B_inv_mod_p2 2329 2326 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2377 2380 ∧ ¬ p ∣ (2380 - 2377) ∧
      ∃ (hNotC : ¬ p ∣ 2380) (hNotB : ¬ p ∣ 2377),
        order_of_C_B_inv_mod_p2 2380 2377 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2425 2428 ∧ ¬ p ∣ (2428 - 2425) ∧
      ∃ (hNotC : ¬ p ∣ 2428) (hNotB : ¬ p ∣ 2425),
        order_of_C_B_inv_mod_p2 2428 2425 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2462 2465 ∧ ¬ p ∣ (2465 - 2462) ∧
      ∃ (hNotC : ¬ p ∣ 2465) (hNotB : ¬ p ∣ 2462),
        order_of_C_B_inv_mod_p2 2465 2462 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2509 2512 ∧ ¬ p ∣ (2512 - 2509) ∧
      ∃ (hNotC : ¬ p ∣ 2512) (hNotB : ¬ p ∣ 2509),
        order_of_C_B_inv_mod_p2 2512 2509 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2551 2554 ∧ ¬ p ∣ (2554 - 2551) ∧
      ∃ (hNotC : ¬ p ∣ 2554) (hNotB : ¬ p ∣ 2551),
        order_of_C_B_inv_mod_p2 2554 2551 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2602 2605 ∧ ¬ p ∣ (2605 - 2602) ∧
      ∃ (hNotC : ¬ p ∣ 2605) (hNotB : ¬ p ∣ 2602),
        order_of_C_B_inv_mod_p2 2605 2602 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2659 2662 ∧ ¬ p ∣ (2662 - 2659) ∧
      ∃ (hNotC : ¬ p ∣ 2662) (hNotB : ¬ p ∣ 2659),
        order_of_C_B_inv_mod_p2 2662 2659 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2699 2702 ∧ ¬ p ∣ (2702 - 2699) ∧
      ∃ (hNotC : ¬ p ∣ 2702) (hNotB : ¬ p ∣ 2699),
        order_of_C_B_inv_mod_p2 2702 2699 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2743 2746 ∧ ¬ p ∣ (2746 - 2743) ∧
      ∃ (hNotC : ¬ p ∣ 2746) (hNotB : ¬ p ∣ 2743),
        order_of_C_B_inv_mod_p2 2746 2743 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2788 2791 ∧ ¬ p ∣ (2791 - 2788) ∧
      ∃ (hNotC : ¬ p ∣ 2791) (hNotB : ¬ p ∣ 2788),
        order_of_C_B_inv_mod_p2 2791 2788 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2831 2834 ∧ ¬ p ∣ (2834 - 2831) ∧
      ∃ (hNotC : ¬ p ∣ 2834) (hNotB : ¬ p ∣ 2831),
        order_of_C_B_inv_mod_p2 2834 2831 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2876 2879 ∧ ¬ p ∣ (2879 - 2876) ∧
      ∃ (hNotC : ¬ p ∣ 2879) (hNotB : ¬ p ∣ 2876),
        order_of_C_B_inv_mod_p2 2879 2876 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2935 2938 ∧ ¬ p ∣ (2938 - 2935) ∧
      ∃ (hNotC : ¬ p ∣ 2938) (hNotB : ¬ p ∣ 2935),
        order_of_C_B_inv_mod_p2 2938 2935 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2986 2989 ∧ ¬ p ∣ (2989 - 2986) ∧
      ∃ (hNotC : ¬ p ∣ 2989) (hNotB : ¬ p ∣ 2986),
        order_of_C_B_inv_mod_p2 2989 2986 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3044 3047 ∧ ¬ p ∣ (3047 - 3044) ∧
      ∃ (hNotC : ¬ p ∣ 3047) (hNotB : ¬ p ∣ 3044),
        order_of_C_B_inv_mod_p2 3047 3044 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3080 3083 ∧ ¬ p ∣ (3083 - 3080) ∧
      ∃ (hNotC : ¬ p ∣ 3083) (hNotB : ¬ p ∣ 3080),
        order_of_C_B_inv_mod_p2 3083 3080 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3133 3136 ∧ ¬ p ∣ (3136 - 3133) ∧
      ∃ (hNotC : ¬ p ∣ 3136) (hNotB : ¬ p ∣ 3133),
        order_of_C_B_inv_mod_p2 3136 3133 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3184 3187 ∧ ¬ p ∣ (3187 - 3184) ∧
      ∃ (hNotC : ¬ p ∣ 3187) (hNotB : ¬ p ∣ 3184),
        order_of_C_B_inv_mod_p2 3187 3184 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3224 3227 ∧ ¬ p ∣ (3227 - 3224) ∧
      ∃ (hNotC : ¬ p ∣ 3227) (hNotB : ¬ p ∣ 3224),
        order_of_C_B_inv_mod_p2 3227 3224 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3278 3281 ∧ ¬ p ∣ (3281 - 3278) ∧
      ∃ (hNotC : ¬ p ∣ 3281) (hNotB : ¬ p ∣ 3278),
        order_of_C_B_inv_mod_p2 3281 3278 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3335 3338 ∧ ¬ p ∣ (3338 - 3335) ∧
      ∃ (hNotC : ¬ p ∣ 3338) (hNotB : ¬ p ∣ 3335),
        order_of_C_B_inv_mod_p2 3338 3335 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3382 3385 ∧ ¬ p ∣ (3385 - 3382) ∧
      ∃ (hNotC : ¬ p ∣ 3385) (hNotB : ¬ p ∣ 3382),
        order_of_C_B_inv_mod_p2 3385 3382 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3424 3427 ∧ ¬ p ∣ (3427 - 3424) ∧
      ∃ (hNotC : ¬ p ∣ 3427) (hNotB : ¬ p ∣ 3424),
        order_of_C_B_inv_mod_p2 3427 3424 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3475 3478 ∧ ¬ p ∣ (3478 - 3475) ∧
      ∃ (hNotC : ¬ p ∣ 3478) (hNotB : ¬ p ∣ 3475),
        order_of_C_B_inv_mod_p2 3478 3475 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3508 3511 ∧ ¬ p ∣ (3511 - 3508) ∧
      ∃ (hNotC : ¬ p ∣ 3511) (hNotB : ¬ p ∣ 3508),
        order_of_C_B_inv_mod_p2 3511 3508 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3556 3559 ∧ ¬ p ∣ (3559 - 3556) ∧
      ∃ (hNotC : ¬ p ∣ 3559) (hNotB : ¬ p ∣ 3556),
        order_of_C_B_inv_mod_p2 3559 3556 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3608 3611 ∧ ¬ p ∣ (3611 - 3608) ∧
      ∃ (hNotC : ¬ p ∣ 3611) (hNotB : ¬ p ∣ 3608),
        order_of_C_B_inv_mod_p2 3611 3608 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3650 3653 ∧ ¬ p ∣ (3653 - 3650) ∧
      ∃ (hNotC : ¬ p ∣ 3653) (hNotB : ¬ p ∣ 3650),
        order_of_C_B_inv_mod_p2 3653 3650 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3698 3701 ∧ ¬ p ∣ (3701 - 3698) ∧
      ∃ (hNotC : ¬ p ∣ 3701) (hNotB : ¬ p ∣ 3698),
        order_of_C_B_inv_mod_p2 3701 3698 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3755 3758 ∧ ¬ p ∣ (3758 - 3755) ∧
      ∃ (hNotC : ¬ p ∣ 3758) (hNotB : ¬ p ∣ 3755),
        order_of_C_B_inv_mod_p2 3758 3755 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3803 3806 ∧ ¬ p ∣ (3806 - 3803) ∧
      ∃ (hNotC : ¬ p ∣ 3806) (hNotB : ¬ p ∣ 3803),
        order_of_C_B_inv_mod_p2 3806 3803 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3848 3851 ∧ ¬ p ∣ (3851 - 3848) ∧
      ∃ (hNotC : ¬ p ∣ 3851) (hNotB : ¬ p ∣ 3848),
        order_of_C_B_inv_mod_p2 3851 3848 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3889 3892 ∧ ¬ p ∣ (3892 - 3889) ∧
      ∃ (hNotC : ¬ p ∣ 3892) (hNotB : ¬ p ∣ 3889),
        order_of_C_B_inv_mod_p2 3892 3889 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3940 3943 ∧ ¬ p ∣ (3943 - 3940) ∧
      ∃ (hNotC : ¬ p ∣ 3943) (hNotB : ¬ p ∣ 3940),
        order_of_C_B_inv_mod_p2 3943 3940 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3988 3991 ∧ ¬ p ∣ (3991 - 3988) ∧
      ∃ (hNotC : ¬ p ∣ 3991) (hNotB : ¬ p ∣ 3988),
        order_of_C_B_inv_mod_p2 3991 3988 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4021 4024 ∧ ¬ p ∣ (4024 - 4021) ∧
      ∃ (hNotC : ¬ p ∣ 4024) (hNotB : ¬ p ∣ 4021),
        order_of_C_B_inv_mod_p2 4024 4021 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4085 4088 ∧ ¬ p ∣ (4088 - 4085) ∧
      ∃ (hNotC : ¬ p ∣ 4088) (hNotB : ¬ p ∣ 4085),
        order_of_C_B_inv_mod_p2 4088 4085 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4132 4135 ∧ ¬ p ∣ (4135 - 4132) ∧
      ∃ (hNotC : ¬ p ∣ 4135) (hNotB : ¬ p ∣ 4132),
        order_of_C_B_inv_mod_p2 4135 4132 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4186 4189 ∧ ¬ p ∣ (4189 - 4186) ∧
      ∃ (hNotC : ¬ p ∣ 4189) (hNotB : ¬ p ∣ 4186),
        order_of_C_B_inv_mod_p2 4189 4186 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4246 4249 ∧ ¬ p ∣ (4249 - 4246) ∧
      ∃ (hNotC : ¬ p ∣ 4249) (hNotB : ¬ p ∣ 4246),
        order_of_C_B_inv_mod_p2 4249 4246 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4289 4292 ∧ ¬ p ∣ (4292 - 4289) ∧
      ∃ (hNotC : ¬ p ∣ 4292) (hNotB : ¬ p ∣ 4289),
        order_of_C_B_inv_mod_p2 4292 4289 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4343 4346 ∧ ¬ p ∣ (4346 - 4343) ∧
      ∃ (hNotC : ¬ p ∣ 4346) (hNotB : ¬ p ∣ 4343),
        order_of_C_B_inv_mod_p2 4346 4343 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4390 4393 ∧ ¬ p ∣ (4393 - 4390) ∧
      ∃ (hNotC : ¬ p ∣ 4393) (hNotB : ¬ p ∣ 4390),
        order_of_C_B_inv_mod_p2 4393 4390 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4439 4442 ∧ ¬ p ∣ (4442 - 4439) ∧
      ∃ (hNotC : ¬ p ∣ 4442) (hNotB : ¬ p ∣ 4439),
        order_of_C_B_inv_mod_p2 4442 4439 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4484 4487 ∧ ¬ p ∣ (4487 - 4484) ∧
      ∃ (hNotC : ¬ p ∣ 4487) (hNotB : ¬ p ∣ 4484),
        order_of_C_B_inv_mod_p2 4487 4484 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4529 4532 ∧ ¬ p ∣ (4532 - 4529) ∧
      ∃ (hNotC : ¬ p ∣ 4532) (hNotB : ¬ p ∣ 4529),
        order_of_C_B_inv_mod_p2 4532 4529 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4574 4577 ∧ ¬ p ∣ (4577 - 4574) ∧
      ∃ (hNotC : ¬ p ∣ 4577) (hNotB : ¬ p ∣ 4574),
        order_of_C_B_inv_mod_p2 4577 4574 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4640 4643 ∧ ¬ p ∣ (4643 - 4640) ∧
      ∃ (hNotC : ¬ p ∣ 4643) (hNotB : ¬ p ∣ 4640),
        order_of_C_B_inv_mod_p2 4643 4640 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4684 4687 ∧ ¬ p ∣ (4687 - 4684) ∧
      ∃ (hNotC : ¬ p ∣ 4687) (hNotB : ¬ p ∣ 4684),
        order_of_C_B_inv_mod_p2 4687 4684 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4738 4741 ∧ ¬ p ∣ (4741 - 4738) ∧
      ∃ (hNotC : ¬ p ∣ 4741) (hNotB : ¬ p ∣ 4738),
        order_of_C_B_inv_mod_p2 4741 4738 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4784 4787 ∧ ¬ p ∣ (4787 - 4784) ∧
      ∃ (hNotC : ¬ p ∣ 4787) (hNotB : ¬ p ∣ 4784),
        order_of_C_B_inv_mod_p2 4787 4784 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4834 4837 ∧ ¬ p ∣ (4837 - 4834) ∧
      ∃ (hNotC : ¬ p ∣ 4837) (hNotB : ¬ p ∣ 4834),
        order_of_C_B_inv_mod_p2 4837 4834 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4880 4883 ∧ ¬ p ∣ (4883 - 4880) ∧
      ∃ (hNotC : ¬ p ∣ 4883) (hNotB : ¬ p ∣ 4880),
        order_of_C_B_inv_mod_p2 4883 4880 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4915 4918 ∧ ¬ p ∣ (4918 - 4915) ∧
      ∃ (hNotC : ¬ p ∣ 4918) (hNotB : ¬ p ∣ 4915),
        order_of_C_B_inv_mod_p2 4918 4915 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4961 4964 ∧ ¬ p ∣ (4964 - 4961) ∧
      ∃ (hNotC : ¬ p ∣ 4964) (hNotB : ¬ p ∣ 4961),
        order_of_C_B_inv_mod_p2 4964 4961 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5000 5003 ∧ ¬ p ∣ (5003 - 5000) ∧
      ∃ (hNotC : ¬ p ∣ 5003) (hNotB : ¬ p ∣ 5000),
        order_of_C_B_inv_mod_p2 5003 5000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5027 5030 ∧ ¬ p ∣ (5030 - 5027) ∧
      ∃ (hNotC : ¬ p ∣ 5030) (hNotB : ¬ p ∣ 5027),
        order_of_C_B_inv_mod_p2 5030 5027 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5069 5072 ∧ ¬ p ∣ (5072 - 5069) ∧
      ∃ (hNotC : ¬ p ∣ 5072) (hNotB : ¬ p ∣ 5069),
        order_of_C_B_inv_mod_p2 5072 5069 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5120 5123 ∧ ¬ p ∣ (5123 - 5120) ∧
      ∃ (hNotC : ¬ p ∣ 5123) (hNotB : ¬ p ∣ 5120),
        order_of_C_B_inv_mod_p2 5123 5120 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5182 5185 ∧ ¬ p ∣ (5185 - 5182) ∧
      ∃ (hNotC : ¬ p ∣ 5185) (hNotB : ¬ p ∣ 5182),
        order_of_C_B_inv_mod_p2 5185 5182 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5237 5240 ∧ ¬ p ∣ (5240 - 5237) ∧
      ∃ (hNotC : ¬ p ∣ 5240) (hNotB : ¬ p ∣ 5237),
        order_of_C_B_inv_mod_p2 5240 5237 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5279 5282 ∧ ¬ p ∣ (5282 - 5279) ∧
      ∃ (hNotC : ¬ p ∣ 5282) (hNotB : ¬ p ∣ 5279),
        order_of_C_B_inv_mod_p2 5282 5279 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5327 5330 ∧ ¬ p ∣ (5330 - 5327) ∧
      ∃ (hNotC : ¬ p ∣ 5330) (hNotB : ¬ p ∣ 5327),
        order_of_C_B_inv_mod_p2 5330 5327 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5371 5374 ∧ ¬ p ∣ (5374 - 5371) ∧
      ∃ (hNotC : ¬ p ∣ 5374) (hNotB : ¬ p ∣ 5371),
        order_of_C_B_inv_mod_p2 5374 5371 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5416 5419 ∧ ¬ p ∣ (5419 - 5416) ∧
      ∃ (hNotC : ¬ p ∣ 5419) (hNotB : ¬ p ∣ 5416),
        order_of_C_B_inv_mod_p2 5419 5416 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5456 5459 ∧ ¬ p ∣ (5459 - 5456) ∧
      ∃ (hNotC : ¬ p ∣ 5459) (hNotB : ¬ p ∣ 5456),
        order_of_C_B_inv_mod_p2 5459 5456 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5509 5512 ∧ ¬ p ∣ (5512 - 5509) ∧
      ∃ (hNotC : ¬ p ∣ 5512) (hNotB : ¬ p ∣ 5509),
        order_of_C_B_inv_mod_p2 5512 5509 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5552 5555 ∧ ¬ p ∣ (5555 - 5552) ∧
      ∃ (hNotC : ¬ p ∣ 5555) (hNotB : ¬ p ∣ 5552),
        order_of_C_B_inv_mod_p2 5555 5552 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5594 5597 ∧ ¬ p ∣ (5597 - 5594) ∧
      ∃ (hNotC : ¬ p ∣ 5597) (hNotB : ¬ p ∣ 5594),
        order_of_C_B_inv_mod_p2 5597 5594 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5636 5639 ∧ ¬ p ∣ (5639 - 5636) ∧
      ∃ (hNotC : ¬ p ∣ 5639) (hNotB : ¬ p ∣ 5636),
        order_of_C_B_inv_mod_p2 5639 5636 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5701 5704 ∧ ¬ p ∣ (5704 - 5701) ∧
      ∃ (hNotC : ¬ p ∣ 5704) (hNotB : ¬ p ∣ 5701),
        order_of_C_B_inv_mod_p2 5704 5701 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5746 5749 ∧ ¬ p ∣ (5749 - 5746) ∧
      ∃ (hNotC : ¬ p ∣ 5749) (hNotB : ¬ p ∣ 5746),
        order_of_C_B_inv_mod_p2 5749 5746 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5794 5797 ∧ ¬ p ∣ (5797 - 5794) ∧
      ∃ (hNotC : ¬ p ∣ 5797) (hNotB : ¬ p ∣ 5794),
        order_of_C_B_inv_mod_p2 5797 5794 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5837 5840 ∧ ¬ p ∣ (5840 - 5837) ∧
      ∃ (hNotC : ¬ p ∣ 5840) (hNotB : ¬ p ∣ 5837),
        order_of_C_B_inv_mod_p2 5840 5837 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5876 5879 ∧ ¬ p ∣ (5879 - 5876) ∧
      ∃ (hNotC : ¬ p ∣ 5879) (hNotB : ¬ p ∣ 5876),
        order_of_C_B_inv_mod_p2 5879 5876 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5923 5926 ∧ ¬ p ∣ (5926 - 5923) ∧
      ∃ (hNotC : ¬ p ∣ 5926) (hNotB : ¬ p ∣ 5923),
        order_of_C_B_inv_mod_p2 5926 5923 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5968 5971 ∧ ¬ p ∣ (5971 - 5968) ∧
      ∃ (hNotC : ¬ p ∣ 5971) (hNotB : ¬ p ∣ 5968),
        order_of_C_B_inv_mod_p2 5971 5968 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6016 6019 ∧ ¬ p ∣ (6019 - 6016) ∧
      ∃ (hNotC : ¬ p ∣ 6019) (hNotB : ¬ p ∣ 6016),
        order_of_C_B_inv_mod_p2 6019 6016 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6061 6064 ∧ ¬ p ∣ (6064 - 6061) ∧
      ∃ (hNotC : ¬ p ∣ 6064) (hNotB : ¬ p ∣ 6061),
        order_of_C_B_inv_mod_p2 6064 6061 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6100 6103 ∧ ¬ p ∣ (6103 - 6100) ∧
      ∃ (hNotC : ¬ p ∣ 6103) (hNotB : ¬ p ∣ 6100),
        order_of_C_B_inv_mod_p2 6103 6100 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6158 6161 ∧ ¬ p ∣ (6161 - 6158) ∧
      ∃ (hNotC : ¬ p ∣ 6161) (hNotB : ¬ p ∣ 6158),
        order_of_C_B_inv_mod_p2 6161 6158 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6205 6208 ∧ ¬ p ∣ (6208 - 6205) ∧
      ∃ (hNotC : ¬ p ∣ 6208) (hNotB : ¬ p ∣ 6205),
        order_of_C_B_inv_mod_p2 6208 6205 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6244 6247 ∧ ¬ p ∣ (6247 - 6244) ∧
      ∃ (hNotC : ¬ p ∣ 6247) (hNotB : ¬ p ∣ 6244),
        order_of_C_B_inv_mod_p2 6247 6244 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6293 6296 ∧ ¬ p ∣ (6296 - 6293) ∧
      ∃ (hNotC : ¬ p ∣ 6296) (hNotB : ¬ p ∣ 6293),
        order_of_C_B_inv_mod_p2 6296 6293 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6340 6343 ∧ ¬ p ∣ (6343 - 6340) ∧
      ∃ (hNotC : ¬ p ∣ 6343) (hNotB : ¬ p ∣ 6340),
        order_of_C_B_inv_mod_p2 6343 6340 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6382 6385 ∧ ¬ p ∣ (6385 - 6382) ∧
      ∃ (hNotC : ¬ p ∣ 6385) (hNotB : ¬ p ∣ 6382),
        order_of_C_B_inv_mod_p2 6385 6382 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6431 6434 ∧ ¬ p ∣ (6434 - 6431) ∧
      ∃ (hNotC : ¬ p ∣ 6434) (hNotB : ¬ p ∣ 6431),
        order_of_C_B_inv_mod_p2 6434 6431 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6487 6490 ∧ ¬ p ∣ (6490 - 6487) ∧
      ∃ (hNotC : ¬ p ∣ 6490) (hNotB : ¬ p ∣ 6487),
        order_of_C_B_inv_mod_p2 6490 6487 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6524 6527 ∧ ¬ p ∣ (6527 - 6524) ∧
      ∃ (hNotC : ¬ p ∣ 6527) (hNotB : ¬ p ∣ 6524),
        order_of_C_B_inv_mod_p2 6527 6524 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6575 6578 ∧ ¬ p ∣ (6578 - 6575) ∧
      ∃ (hNotC : ¬ p ∣ 6578) (hNotB : ¬ p ∣ 6575),
        order_of_C_B_inv_mod_p2 6578 6575 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6619 6622 ∧ ¬ p ∣ (6622 - 6619) ∧
      ∃ (hNotC : ¬ p ∣ 6622) (hNotB : ¬ p ∣ 6619),
        order_of_C_B_inv_mod_p2 6622 6619 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6665 6668 ∧ ¬ p ∣ (6668 - 6665) ∧
      ∃ (hNotC : ¬ p ∣ 6668) (hNotB : ¬ p ∣ 6665),
        order_of_C_B_inv_mod_p2 6668 6665 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6715 6718 ∧ ¬ p ∣ (6718 - 6715) ∧
      ∃ (hNotC : ¬ p ∣ 6718) (hNotB : ¬ p ∣ 6715),
        order_of_C_B_inv_mod_p2 6718 6715 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6763 6766 ∧ ¬ p ∣ (6766 - 6763) ∧
      ∃ (hNotC : ¬ p ∣ 6766) (hNotB : ¬ p ∣ 6763),
        order_of_C_B_inv_mod_p2 6766 6763 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6808 6811 ∧ ¬ p ∣ (6811 - 6808) ∧
      ∃ (hNotC : ¬ p ∣ 6811) (hNotB : ¬ p ∣ 6808),
        order_of_C_B_inv_mod_p2 6811 6808 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6866 6869 ∧ ¬ p ∣ (6869 - 6866) ∧
      ∃ (hNotC : ¬ p ∣ 6869) (hNotB : ¬ p ∣ 6866),
        order_of_C_B_inv_mod_p2 6869 6866 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6908 6911 ∧ ¬ p ∣ (6911 - 6908) ∧
      ∃ (hNotC : ¬ p ∣ 6911) (hNotB : ¬ p ∣ 6908),
        order_of_C_B_inv_mod_p2 6911 6908 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6956 6959 ∧ ¬ p ∣ (6959 - 6956) ∧
      ∃ (hNotC : ¬ p ∣ 6959) (hNotB : ¬ p ∣ 6956),
        order_of_C_B_inv_mod_p2 6959 6956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7000 7003 ∧ ¬ p ∣ (7003 - 7000) ∧
      ∃ (hNotC : ¬ p ∣ 7003) (hNotB : ¬ p ∣ 7000),
        order_of_C_B_inv_mod_p2 7003 7000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7003 7006 ∧ ¬ p ∣ (7006 - 7003) ∧
      ∃ (hNotC : ¬ p ∣ 7006) (hNotB : ¬ p ∣ 7003),
        order_of_C_B_inv_mod_p2 7006 7003 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7049 7052 ∧ ¬ p ∣ (7052 - 7049) ∧
      ∃ (hNotC : ¬ p ∣ 7052) (hNotB : ¬ p ∣ 7049),
        order_of_C_B_inv_mod_p2 7052 7049 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7112 7115 ∧ ¬ p ∣ (7115 - 7112) ∧
      ∃ (hNotC : ¬ p ∣ 7115) (hNotB : ¬ p ∣ 7112),
        order_of_C_B_inv_mod_p2 7115 7112 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7153 7156 ∧ ¬ p ∣ (7156 - 7153) ∧
      ∃ (hNotC : ¬ p ∣ 7156) (hNotB : ¬ p ∣ 7153),
        order_of_C_B_inv_mod_p2 7156 7153 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7198 7201 ∧ ¬ p ∣ (7201 - 7198) ∧
      ∃ (hNotC : ¬ p ∣ 7201) (hNotB : ¬ p ∣ 7198),
        order_of_C_B_inv_mod_p2 7201 7198 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7253 7256 ∧ ¬ p ∣ (7256 - 7253) ∧
      ∃ (hNotC : ¬ p ∣ 7256) (hNotB : ¬ p ∣ 7253),
        order_of_C_B_inv_mod_p2 7256 7253 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7295 7298 ∧ ¬ p ∣ (7298 - 7295) ∧
      ∃ (hNotC : ¬ p ∣ 7298) (hNotB : ¬ p ∣ 7295),
        order_of_C_B_inv_mod_p2 7298 7295 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7345 7348 ∧ ¬ p ∣ (7348 - 7345) ∧
      ∃ (hNotC : ¬ p ∣ 7348) (hNotB : ¬ p ∣ 7345),
        order_of_C_B_inv_mod_p2 7348 7345 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7399 7402 ∧ ¬ p ∣ (7402 - 7399) ∧
      ∃ (hNotC : ¬ p ∣ 7402) (hNotB : ¬ p ∣ 7399),
        order_of_C_B_inv_mod_p2 7402 7399 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7439 7442 ∧ ¬ p ∣ (7442 - 7439) ∧
      ∃ (hNotC : ¬ p ∣ 7442) (hNotB : ¬ p ∣ 7439),
        order_of_C_B_inv_mod_p2 7442 7439 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7492 7495 ∧ ¬ p ∣ (7495 - 7492) ∧
      ∃ (hNotC : ¬ p ∣ 7495) (hNotB : ¬ p ∣ 7492),
        order_of_C_B_inv_mod_p2 7495 7492 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7532 7535 ∧ ¬ p ∣ (7535 - 7532) ∧
      ∃ (hNotC : ¬ p ∣ 7535) (hNotB : ¬ p ∣ 7532),
        order_of_C_B_inv_mod_p2 7535 7532 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7582 7585 ∧ ¬ p ∣ (7585 - 7582) ∧
      ∃ (hNotC : ¬ p ∣ 7585) (hNotB : ¬ p ∣ 7582),
        order_of_C_B_inv_mod_p2 7585 7582 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7625 7628 ∧ ¬ p ∣ (7628 - 7625) ∧
      ∃ (hNotC : ¬ p ∣ 7628) (hNotB : ¬ p ∣ 7625),
        order_of_C_B_inv_mod_p2 7628 7625 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7669 7672 ∧ ¬ p ∣ (7672 - 7669) ∧
      ∃ (hNotC : ¬ p ∣ 7672) (hNotB : ¬ p ∣ 7669),
        order_of_C_B_inv_mod_p2 7672 7669 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7721 7724 ∧ ¬ p ∣ (7724 - 7721) ∧
      ∃ (hNotC : ¬ p ∣ 7724) (hNotB : ¬ p ∣ 7721),
        order_of_C_B_inv_mod_p2 7724 7721 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7759 7762 ∧ ¬ p ∣ (7762 - 7759) ∧
      ∃ (hNotC : ¬ p ∣ 7762) (hNotB : ¬ p ∣ 7759),
        order_of_C_B_inv_mod_p2 7762 7759 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7804 7807 ∧ ¬ p ∣ (7807 - 7804) ∧
      ∃ (hNotC : ¬ p ∣ 7807) (hNotB : ¬ p ∣ 7804),
        order_of_C_B_inv_mod_p2 7807 7804 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7852 7855 ∧ ¬ p ∣ (7855 - 7852) ∧
      ∃ (hNotC : ¬ p ∣ 7855) (hNotB : ¬ p ∣ 7852),
        order_of_C_B_inv_mod_p2 7855 7852 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7907 7910 ∧ ¬ p ∣ (7910 - 7907) ∧
      ∃ (hNotC : ¬ p ∣ 7910) (hNotB : ¬ p ∣ 7907),
        order_of_C_B_inv_mod_p2 7910 7907 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7955 7958 ∧ ¬ p ∣ (7958 - 7955) ∧
      ∃ (hNotC : ¬ p ∣ 7958) (hNotB : ¬ p ∣ 7955),
        order_of_C_B_inv_mod_p2 7958 7955 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8000 8003 ∧ ¬ p ∣ (8003 - 8000) ∧
      ∃ (hNotC : ¬ p ∣ 8003) (hNotB : ¬ p ∣ 8000),
        order_of_C_B_inv_mod_p2 8003 8000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8008 8011 ∧ ¬ p ∣ (8011 - 8008) ∧
      ∃ (hNotC : ¬ p ∣ 8011) (hNotB : ¬ p ∣ 8008),
        order_of_C_B_inv_mod_p2 8011 8008 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8060 8063 ∧ ¬ p ∣ (8063 - 8060) ∧
      ∃ (hNotC : ¬ p ∣ 8063) (hNotB : ¬ p ∣ 8060),
        order_of_C_B_inv_mod_p2 8063 8060 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8102 8105 ∧ ¬ p ∣ (8105 - 8102) ∧
      ∃ (hNotC : ¬ p ∣ 8105) (hNotB : ¬ p ∣ 8102),
        order_of_C_B_inv_mod_p2 8105 8102 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8144 8147 ∧ ¬ p ∣ (8147 - 8144) ∧
      ∃ (hNotC : ¬ p ∣ 8147) (hNotB : ¬ p ∣ 8144),
        order_of_C_B_inv_mod_p2 8147 8144 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8182 8185 ∧ ¬ p ∣ (8185 - 8182) ∧
      ∃ (hNotC : ¬ p ∣ 8185) (hNotB : ¬ p ∣ 8182),
        order_of_C_B_inv_mod_p2 8185 8182 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8228 8231 ∧ ¬ p ∣ (8231 - 8228) ∧
      ∃ (hNotC : ¬ p ∣ 8231) (hNotB : ¬ p ∣ 8228),
        order_of_C_B_inv_mod_p2 8231 8228 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8279 8282 ∧ ¬ p ∣ (8282 - 8279) ∧
      ∃ (hNotC : ¬ p ∣ 8282) (hNotB : ¬ p ∣ 8279),
        order_of_C_B_inv_mod_p2 8282 8279 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8327 8330 ∧ ¬ p ∣ (8330 - 8327) ∧
      ∃ (hNotC : ¬ p ∣ 8330) (hNotB : ¬ p ∣ 8327),
        order_of_C_B_inv_mod_p2 8330 8327 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8378 8381 ∧ ¬ p ∣ (8381 - 8378) ∧
      ∃ (hNotC : ¬ p ∣ 8381) (hNotB : ¬ p ∣ 8378),
        order_of_C_B_inv_mod_p2 8381 8378 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8432 8435 ∧ ¬ p ∣ (8435 - 8432) ∧
      ∃ (hNotC : ¬ p ∣ 8435) (hNotB : ¬ p ∣ 8432),
        order_of_C_B_inv_mod_p2 8435 8432 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8473 8476 ∧ ¬ p ∣ (8476 - 8473) ∧
      ∃ (hNotC : ¬ p ∣ 8476) (hNotB : ¬ p ∣ 8473),
        order_of_C_B_inv_mod_p2 8476 8473 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8525 8528 ∧ ¬ p ∣ (8528 - 8525) ∧
      ∃ (hNotC : ¬ p ∣ 8528) (hNotB : ¬ p ∣ 8525),
        order_of_C_B_inv_mod_p2 8528 8525 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8576 8579 ∧ ¬ p ∣ (8579 - 8576) ∧
      ∃ (hNotC : ¬ p ∣ 8579) (hNotB : ¬ p ∣ 8576),
        order_of_C_B_inv_mod_p2 8579 8576 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8612 8615 ∧ ¬ p ∣ (8615 - 8612) ∧
      ∃ (hNotC : ¬ p ∣ 8615) (hNotB : ¬ p ∣ 8612),
        order_of_C_B_inv_mod_p2 8615 8612 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8668 8671 ∧ ¬ p ∣ (8671 - 8668) ∧
      ∃ (hNotC : ¬ p ∣ 8671) (hNotB : ¬ p ∣ 8668),
        order_of_C_B_inv_mod_p2 8671 8668 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8710 8713 ∧ ¬ p ∣ (8713 - 8710) ∧
      ∃ (hNotC : ¬ p ∣ 8713) (hNotB : ¬ p ∣ 8710),
        order_of_C_B_inv_mod_p2 8713 8710 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8753 8756 ∧ ¬ p ∣ (8756 - 8753) ∧
      ∃ (hNotC : ¬ p ∣ 8756) (hNotB : ¬ p ∣ 8753),
        order_of_C_B_inv_mod_p2 8756 8753 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8803 8806 ∧ ¬ p ∣ (8806 - 8803) ∧
      ∃ (hNotC : ¬ p ∣ 8806) (hNotB : ¬ p ∣ 8803),
        order_of_C_B_inv_mod_p2 8806 8803 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8843 8846 ∧ ¬ p ∣ (8846 - 8843) ∧
      ∃ (hNotC : ¬ p ∣ 8846) (hNotB : ¬ p ∣ 8843),
        order_of_C_B_inv_mod_p2 8846 8843 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8891 8894 ∧ ¬ p ∣ (8894 - 8891) ∧
      ∃ (hNotC : ¬ p ∣ 8894) (hNotB : ¬ p ∣ 8891),
        order_of_C_B_inv_mod_p2 8894 8891 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8944 8947 ∧ ¬ p ∣ (8947 - 8944) ∧
      ∃ (hNotC : ¬ p ∣ 8947) (hNotB : ¬ p ∣ 8944),
        order_of_C_B_inv_mod_p2 8947 8944 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8998 9001 ∧ ¬ p ∣ (9001 - 8998) ∧
      ∃ (hNotC : ¬ p ∣ 9001) (hNotB : ¬ p ∣ 8998),
        order_of_C_B_inv_mod_p2 9001 8998 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9050 9053 ∧ ¬ p ∣ (9053 - 9050) ∧
      ∃ (hNotC : ¬ p ∣ 9053) (hNotB : ¬ p ∣ 9050),
        order_of_C_B_inv_mod_p2 9053 9050 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9095 9098 ∧ ¬ p ∣ (9098 - 9095) ∧
      ∃ (hNotC : ¬ p ∣ 9098) (hNotB : ¬ p ∣ 9095),
        order_of_C_B_inv_mod_p2 9098 9095 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9134 9137 ∧ ¬ p ∣ (9137 - 9134) ∧
      ∃ (hNotC : ¬ p ∣ 9137) (hNotB : ¬ p ∣ 9134),
        order_of_C_B_inv_mod_p2 9137 9134 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9178 9181 ∧ ¬ p ∣ (9181 - 9178) ∧
      ∃ (hNotC : ¬ p ∣ 9181) (hNotB : ¬ p ∣ 9178),
        order_of_C_B_inv_mod_p2 9181 9178 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9230 9233 ∧ ¬ p ∣ (9233 - 9230) ∧
      ∃ (hNotC : ¬ p ∣ 9233) (hNotB : ¬ p ∣ 9230),
        order_of_C_B_inv_mod_p2 9233 9230 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9280 9283 ∧ ¬ p ∣ (9283 - 9280) ∧
      ∃ (hNotC : ¬ p ∣ 9283) (hNotB : ¬ p ∣ 9280),
        order_of_C_B_inv_mod_p2 9283 9280 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9326 9329 ∧ ¬ p ∣ (9329 - 9326) ∧
      ∃ (hNotC : ¬ p ∣ 9329) (hNotB : ¬ p ∣ 9326),
        order_of_C_B_inv_mod_p2 9329 9326 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9374 9377 ∧ ¬ p ∣ (9377 - 9374) ∧
      ∃ (hNotC : ¬ p ∣ 9377) (hNotB : ¬ p ∣ 9374),
        order_of_C_B_inv_mod_p2 9377 9374 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9433 9436 ∧ ¬ p ∣ (9436 - 9433) ∧
      ∃ (hNotC : ¬ p ∣ 9436) (hNotB : ¬ p ∣ 9433),
        order_of_C_B_inv_mod_p2 9436 9433 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9487 9490 ∧ ¬ p ∣ (9490 - 9487) ∧
      ∃ (hNotC : ¬ p ∣ 9490) (hNotB : ¬ p ∣ 9487),
        order_of_C_B_inv_mod_p2 9490 9487 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9533 9536 ∧ ¬ p ∣ (9536 - 9533) ∧
      ∃ (hNotC : ¬ p ∣ 9536) (hNotB : ¬ p ∣ 9533),
        order_of_C_B_inv_mod_p2 9536 9533 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9589 9592 ∧ ¬ p ∣ (9592 - 9589) ∧
      ∃ (hNotC : ¬ p ∣ 9592) (hNotB : ¬ p ∣ 9589),
        order_of_C_B_inv_mod_p2 9592 9589 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9638 9641 ∧ ¬ p ∣ (9641 - 9638) ∧
      ∃ (hNotC : ¬ p ∣ 9641) (hNotB : ¬ p ∣ 9638),
        order_of_C_B_inv_mod_p2 9641 9638 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9686 9689 ∧ ¬ p ∣ (9689 - 9686) ∧
      ∃ (hNotC : ¬ p ∣ 9689) (hNotB : ¬ p ∣ 9686),
        order_of_C_B_inv_mod_p2 9689 9686 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9743 9746 ∧ ¬ p ∣ (9746 - 9743) ∧
      ∃ (hNotC : ¬ p ∣ 9746) (hNotB : ¬ p ∣ 9743),
        order_of_C_B_inv_mod_p2 9746 9743 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9781 9784 ∧ ¬ p ∣ (9784 - 9781) ∧
      ∃ (hNotC : ¬ p ∣ 9784) (hNotB : ¬ p ∣ 9781),
        order_of_C_B_inv_mod_p2 9784 9781 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9842 9845 ∧ ¬ p ∣ (9845 - 9842) ∧
      ∃ (hNotC : ¬ p ∣ 9845) (hNotB : ¬ p ∣ 9842),
        order_of_C_B_inv_mod_p2 9845 9842 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9893 9896 ∧ ¬ p ∣ (9896 - 9893) ∧
      ∃ (hNotC : ¬ p ∣ 9896) (hNotB : ¬ p ∣ 9893),
        order_of_C_B_inv_mod_p2 9896 9893 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9943 9946 ∧ ¬ p ∣ (9946 - 9943) ∧
      ∃ (hNotC : ¬ p ∣ 9946) (hNotB : ¬ p ∣ 9943),
        order_of_C_B_inv_mod_p2 9946 9943 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) :=
  ⟨row_1_4.2.1,
    row_4_7.2.1,
    row_5_8.2.1,
    row_10_13.2.1,
    row_13_16.2.1,
    row_35_38.2.1,
    row_46_49.2.1,
    row_59_62.2.1,
    row_73_76.2.1,
    row_97_100.2.1,
    row_100_103.2.1,
    row_116_119.2.1,
    row_137_140.2.1,
    row_152_155.2.1,
    row_172_175.2.1,
    row_191_194.2.1,
    row_205_208.2.1,
    row_224_227.2.1,
    row_244_247.2.1,
    row_260_263.2.1,
    row_283_286.2.1,
    row_299_302.2.1,
    row_316_319.2.1,
    row_331_334.2.1,
    row_350_353.2.1,
    row_364_367.2.1,
    row_379_382.2.1,
    row_407_410.2.1,
    row_430_433.2.1,
    row_442_445.2.1,
    row_461_464.2.1,
    row_472_475.2.1,
    row_487_490.2.1,
    row_502_505.2.1,
    row_521_524.2.1,
    row_536_539.2.1,
    row_563_566.2.1,
    row_578_581.2.1,
    row_590_593.2.1,
    row_601_604.2.1,
    row_617_620.2.1,
    row_640_643.2.1,
    row_649_652.2.1,
    row_664_667.2.1,
    row_682_685.2.1,
    row_698_701.2.1,
    row_715_718.2.1,
    row_733_736.2.1,
    row_748_751.2.1,
    row_763_766.2.1,
    row_782_785.2.1,
    row_802_805.2.1,
    row_815_818.2.1,
    row_835_838.2.1,
    row_853_856.2.1,
    row_878_881.2.1,
    row_892_895.2.1,
    row_914_917.2.1,
    row_934_937.2.1,
    row_949_952.2.1,
    row_962_965.2.1,
    row_985_988.2.1,
    row_998_1001.2.1,
    row_1000_1003.2.1,
    row_1001_1004.2.1,
    row_1049_1052.2.1,
    row_1097_1100.2.1,
    row_1132_1135.2.1,
    row_1183_1186.2.1,
    row_1223_1226.2.1,
    row_1265_1268.2.1,
    row_1318_1321.2.1,
    row_1360_1363.2.1,
    row_1403_1406.2.1,
    row_1468_1471.2.1,
    row_1516_1519.2.1,
    row_1555_1558.2.1,
    row_1610_1613.2.1,
    row_1654_1657.2.1,
    row_1706_1709.2.1,
    row_1753_1756.2.1,
    row_1790_1793.2.1,
    row_1834_1837.2.1,
    row_1888_1891.2.1,
    row_1921_1924.2.1,
    row_1987_1990.2.1,
    row_2039_2042.2.1,
    row_2096_2099.2.1,
    row_2147_2150.2.1,
    row_2186_2189.2.1,
    row_2236_2239.2.1,
    row_2284_2287.2.1,
    row_2326_2329.2.1,
    row_2377_2380.2.1,
    row_2425_2428.2.1,
    row_2462_2465.2.1,
    row_2509_2512.2.1,
    row_2551_2554.2.1,
    row_2602_2605.2.1,
    row_2659_2662.2.1,
    row_2699_2702.2.1,
    row_2743_2746.2.1,
    row_2788_2791.2.1,
    row_2831_2834.2.1,
    row_2876_2879.2.1,
    row_2935_2938.2.1,
    row_2986_2989.2.1,
    row_3044_3047.2.1,
    row_3080_3083.2.1,
    row_3133_3136.2.1,
    row_3184_3187.2.1,
    row_3224_3227.2.1,
    row_3278_3281.2.1,
    row_3335_3338.2.1,
    row_3382_3385.2.1,
    row_3424_3427.2.1,
    row_3475_3478.2.1,
    row_3508_3511.2.1,
    row_3556_3559.2.1,
    row_3608_3611.2.1,
    row_3650_3653.2.1,
    row_3698_3701.2.1,
    row_3755_3758.2.1,
    row_3803_3806.2.1,
    row_3848_3851.2.1,
    row_3889_3892.2.1,
    row_3940_3943.2.1,
    row_3988_3991.2.1,
    row_4021_4024.2.1,
    row_4085_4088.2.1,
    row_4132_4135.2.1,
    row_4186_4189.2.1,
    row_4246_4249.2.1,
    row_4289_4292.2.1,
    row_4343_4346.2.1,
    row_4390_4393.2.1,
    row_4439_4442.2.1,
    row_4484_4487.2.1,
    row_4529_4532.2.1,
    row_4574_4577.2.1,
    row_4640_4643.2.1,
    row_4684_4687.2.1,
    row_4738_4741.2.1,
    row_4784_4787.2.1,
    row_4834_4837.2.1,
    row_4880_4883.2.1,
    row_4915_4918.2.1,
    row_4961_4964.2.1,
    row_5000_5003.2.1,
    row_5027_5030.2.1,
    row_5069_5072.2.1,
    row_5120_5123.2.1,
    row_5182_5185.2.1,
    row_5237_5240.2.1,
    row_5279_5282.2.1,
    row_5327_5330.2.1,
    row_5371_5374.2.1,
    row_5416_5419.2.1,
    row_5456_5459.2.1,
    row_5509_5512.2.1,
    row_5552_5555.2.1,
    row_5594_5597.2.1,
    row_5636_5639.2.1,
    row_5701_5704.2.1,
    row_5746_5749.2.1,
    row_5794_5797.2.1,
    row_5837_5840.2.1,
    row_5876_5879.2.1,
    row_5923_5926.2.1,
    row_5968_5971.2.1,
    row_6016_6019.2.1,
    row_6061_6064.2.1,
    row_6100_6103.2.1,
    row_6158_6161.2.1,
    row_6205_6208.2.1,
    row_6244_6247.2.1,
    row_6293_6296.2.1,
    row_6340_6343.2.1,
    row_6382_6385.2.1,
    row_6431_6434.2.1,
    row_6487_6490.2.1,
    row_6524_6527.2.1,
    row_6575_6578.2.1,
    row_6619_6622.2.1,
    row_6665_6668.2.1,
    row_6715_6718.2.1,
    row_6763_6766.2.1,
    row_6808_6811.2.1,
    row_6866_6869.2.1,
    row_6908_6911.2.1,
    row_6956_6959.2.1,
    row_7000_7003.2.1,
    row_7003_7006.2.1,
    row_7049_7052.2.1,
    row_7112_7115.2.1,
    row_7153_7156.2.1,
    row_7198_7201.2.1,
    row_7253_7256.2.1,
    row_7295_7298.2.1,
    row_7345_7348.2.1,
    row_7399_7402.2.1,
    row_7439_7442.2.1,
    row_7492_7495.2.1,
    row_7532_7535.2.1,
    row_7582_7585.2.1,
    row_7625_7628.2.1,
    row_7669_7672.2.1,
    row_7721_7724.2.1,
    row_7759_7762.2.1,
    row_7804_7807.2.1,
    row_7852_7855.2.1,
    row_7907_7910.2.1,
    row_7955_7958.2.1,
    row_8000_8003.2.1,
    row_8008_8011.2.1,
    row_8060_8063.2.1,
    row_8102_8105.2.1,
    row_8144_8147.2.1,
    row_8182_8185.2.1,
    row_8228_8231.2.1,
    row_8279_8282.2.1,
    row_8327_8330.2.1,
    row_8378_8381.2.1,
    row_8432_8435.2.1,
    row_8473_8476.2.1,
    row_8525_8528.2.1,
    row_8576_8579.2.1,
    row_8612_8615.2.1,
    row_8668_8671.2.1,
    row_8710_8713.2.1,
    row_8753_8756.2.1,
    row_8803_8806.2.1,
    row_8843_8846.2.1,
    row_8891_8894.2.1,
    row_8944_8947.2.1,
    row_8998_9001.2.1,
    row_9050_9053.2.1,
    row_9095_9098.2.1,
    row_9134_9137.2.1,
    row_9178_9181.2.1,
    row_9230_9233.2.1,
    row_9280_9283.2.1,
    row_9326_9329.2.1,
    row_9374_9377.2.1,
    row_9433_9436.2.1,
    row_9487_9490.2.1,
    row_9533_9536.2.1,
    row_9589_9592.2.1,
    row_9638_9641.2.1,
    row_9686_9689.2.1,
    row_9743_9746.2.1,
    row_9781_9784.2.1,
    row_9842_9845.2.1,
    row_9893_9896.2.1,
    row_9943_9946.2.1,
    row_10000_10003.2.1⟩
/-- Those rows have `S` not a fourth power.
Not a `∀`. -/
theorem S_not_fourth_B_le_10000_from_exp_one_table_rows :
    S_not_fourth 1 4 ∧
    S_not_fourth 4 7 ∧
    S_not_fourth 5 8 ∧
    S_not_fourth 10 13 ∧
    S_not_fourth 13 16 ∧
    S_not_fourth 35 38 ∧
    S_not_fourth 46 49 ∧
    S_not_fourth 59 62 ∧
    S_not_fourth 73 76 ∧
    S_not_fourth 97 100 ∧
    S_not_fourth 100 103 ∧
    S_not_fourth 116 119 ∧
    S_not_fourth 137 140 ∧
    S_not_fourth 152 155 ∧
    S_not_fourth 172 175 ∧
    S_not_fourth 191 194 ∧
    S_not_fourth 205 208 ∧
    S_not_fourth 224 227 ∧
    S_not_fourth 244 247 ∧
    S_not_fourth 260 263 ∧
    S_not_fourth 283 286 ∧
    S_not_fourth 299 302 ∧
    S_not_fourth 316 319 ∧
    S_not_fourth 331 334 ∧
    S_not_fourth 350 353 ∧
    S_not_fourth 364 367 ∧
    S_not_fourth 379 382 ∧
    S_not_fourth 407 410 ∧
    S_not_fourth 430 433 ∧
    S_not_fourth 442 445 ∧
    S_not_fourth 461 464 ∧
    S_not_fourth 472 475 ∧
    S_not_fourth 487 490 ∧
    S_not_fourth 502 505 ∧
    S_not_fourth 521 524 ∧
    S_not_fourth 536 539 ∧
    S_not_fourth 563 566 ∧
    S_not_fourth 578 581 ∧
    S_not_fourth 590 593 ∧
    S_not_fourth 601 604 ∧
    S_not_fourth 617 620 ∧
    S_not_fourth 640 643 ∧
    S_not_fourth 649 652 ∧
    S_not_fourth 664 667 ∧
    S_not_fourth 682 685 ∧
    S_not_fourth 698 701 ∧
    S_not_fourth 715 718 ∧
    S_not_fourth 733 736 ∧
    S_not_fourth 748 751 ∧
    S_not_fourth 763 766 ∧
    S_not_fourth 782 785 ∧
    S_not_fourth 802 805 ∧
    S_not_fourth 815 818 ∧
    S_not_fourth 835 838 ∧
    S_not_fourth 853 856 ∧
    S_not_fourth 878 881 ∧
    S_not_fourth 892 895 ∧
    S_not_fourth 914 917 ∧
    S_not_fourth 934 937 ∧
    S_not_fourth 949 952 ∧
    S_not_fourth 962 965 ∧
    S_not_fourth 985 988 ∧
    S_not_fourth 998 1001 ∧
    S_not_fourth 1000 1003 ∧
    S_not_fourth 1001 1004 ∧
    S_not_fourth 1049 1052 ∧
    S_not_fourth 1097 1100 ∧
    S_not_fourth 1132 1135 ∧
    S_not_fourth 1183 1186 ∧
    S_not_fourth 1223 1226 ∧
    S_not_fourth 1265 1268 ∧
    S_not_fourth 1318 1321 ∧
    S_not_fourth 1360 1363 ∧
    S_not_fourth 1403 1406 ∧
    S_not_fourth 1468 1471 ∧
    S_not_fourth 1516 1519 ∧
    S_not_fourth 1555 1558 ∧
    S_not_fourth 1610 1613 ∧
    S_not_fourth 1654 1657 ∧
    S_not_fourth 1706 1709 ∧
    S_not_fourth 1753 1756 ∧
    S_not_fourth 1790 1793 ∧
    S_not_fourth 1834 1837 ∧
    S_not_fourth 1888 1891 ∧
    S_not_fourth 1921 1924 ∧
    S_not_fourth 1987 1990 ∧
    S_not_fourth 2039 2042 ∧
    S_not_fourth 2096 2099 ∧
    S_not_fourth 2147 2150 ∧
    S_not_fourth 2186 2189 ∧
    S_not_fourth 2236 2239 ∧
    S_not_fourth 2284 2287 ∧
    S_not_fourth 2326 2329 ∧
    S_not_fourth 2377 2380 ∧
    S_not_fourth 2425 2428 ∧
    S_not_fourth 2462 2465 ∧
    S_not_fourth 2509 2512 ∧
    S_not_fourth 2551 2554 ∧
    S_not_fourth 2602 2605 ∧
    S_not_fourth 2659 2662 ∧
    S_not_fourth 2699 2702 ∧
    S_not_fourth 2743 2746 ∧
    S_not_fourth 2788 2791 ∧
    S_not_fourth 2831 2834 ∧
    S_not_fourth 2876 2879 ∧
    S_not_fourth 2935 2938 ∧
    S_not_fourth 2986 2989 ∧
    S_not_fourth 3044 3047 ∧
    S_not_fourth 3080 3083 ∧
    S_not_fourth 3133 3136 ∧
    S_not_fourth 3184 3187 ∧
    S_not_fourth 3224 3227 ∧
    S_not_fourth 3278 3281 ∧
    S_not_fourth 3335 3338 ∧
    S_not_fourth 3382 3385 ∧
    S_not_fourth 3424 3427 ∧
    S_not_fourth 3475 3478 ∧
    S_not_fourth 3508 3511 ∧
    S_not_fourth 3556 3559 ∧
    S_not_fourth 3608 3611 ∧
    S_not_fourth 3650 3653 ∧
    S_not_fourth 3698 3701 ∧
    S_not_fourth 3755 3758 ∧
    S_not_fourth 3803 3806 ∧
    S_not_fourth 3848 3851 ∧
    S_not_fourth 3889 3892 ∧
    S_not_fourth 3940 3943 ∧
    S_not_fourth 3988 3991 ∧
    S_not_fourth 4021 4024 ∧
    S_not_fourth 4085 4088 ∧
    S_not_fourth 4132 4135 ∧
    S_not_fourth 4186 4189 ∧
    S_not_fourth 4246 4249 ∧
    S_not_fourth 4289 4292 ∧
    S_not_fourth 4343 4346 ∧
    S_not_fourth 4390 4393 ∧
    S_not_fourth 4439 4442 ∧
    S_not_fourth 4484 4487 ∧
    S_not_fourth 4529 4532 ∧
    S_not_fourth 4574 4577 ∧
    S_not_fourth 4640 4643 ∧
    S_not_fourth 4684 4687 ∧
    S_not_fourth 4738 4741 ∧
    S_not_fourth 4784 4787 ∧
    S_not_fourth 4834 4837 ∧
    S_not_fourth 4880 4883 ∧
    S_not_fourth 4915 4918 ∧
    S_not_fourth 4961 4964 ∧
    S_not_fourth 5000 5003 ∧
    S_not_fourth 5027 5030 ∧
    S_not_fourth 5069 5072 ∧
    S_not_fourth 5120 5123 ∧
    S_not_fourth 5182 5185 ∧
    S_not_fourth 5237 5240 ∧
    S_not_fourth 5279 5282 ∧
    S_not_fourth 5327 5330 ∧
    S_not_fourth 5371 5374 ∧
    S_not_fourth 5416 5419 ∧
    S_not_fourth 5456 5459 ∧
    S_not_fourth 5509 5512 ∧
    S_not_fourth 5552 5555 ∧
    S_not_fourth 5594 5597 ∧
    S_not_fourth 5636 5639 ∧
    S_not_fourth 5701 5704 ∧
    S_not_fourth 5746 5749 ∧
    S_not_fourth 5794 5797 ∧
    S_not_fourth 5837 5840 ∧
    S_not_fourth 5876 5879 ∧
    S_not_fourth 5923 5926 ∧
    S_not_fourth 5968 5971 ∧
    S_not_fourth 6016 6019 ∧
    S_not_fourth 6061 6064 ∧
    S_not_fourth 6100 6103 ∧
    S_not_fourth 6158 6161 ∧
    S_not_fourth 6205 6208 ∧
    S_not_fourth 6244 6247 ∧
    S_not_fourth 6293 6296 ∧
    S_not_fourth 6340 6343 ∧
    S_not_fourth 6382 6385 ∧
    S_not_fourth 6431 6434 ∧
    S_not_fourth 6487 6490 ∧
    S_not_fourth 6524 6527 ∧
    S_not_fourth 6575 6578 ∧
    S_not_fourth 6619 6622 ∧
    S_not_fourth 6665 6668 ∧
    S_not_fourth 6715 6718 ∧
    S_not_fourth 6763 6766 ∧
    S_not_fourth 6808 6811 ∧
    S_not_fourth 6866 6869 ∧
    S_not_fourth 6908 6911 ∧
    S_not_fourth 6956 6959 ∧
    S_not_fourth 7000 7003 ∧
    S_not_fourth 7003 7006 ∧
    S_not_fourth 7049 7052 ∧
    S_not_fourth 7112 7115 ∧
    S_not_fourth 7153 7156 ∧
    S_not_fourth 7198 7201 ∧
    S_not_fourth 7253 7256 ∧
    S_not_fourth 7295 7298 ∧
    S_not_fourth 7345 7348 ∧
    S_not_fourth 7399 7402 ∧
    S_not_fourth 7439 7442 ∧
    S_not_fourth 7492 7495 ∧
    S_not_fourth 7532 7535 ∧
    S_not_fourth 7582 7585 ∧
    S_not_fourth 7625 7628 ∧
    S_not_fourth 7669 7672 ∧
    S_not_fourth 7721 7724 ∧
    S_not_fourth 7759 7762 ∧
    S_not_fourth 7804 7807 ∧
    S_not_fourth 7852 7855 ∧
    S_not_fourth 7907 7910 ∧
    S_not_fourth 7955 7958 ∧
    S_not_fourth 8000 8003 ∧
    S_not_fourth 8008 8011 ∧
    S_not_fourth 8060 8063 ∧
    S_not_fourth 8102 8105 ∧
    S_not_fourth 8144 8147 ∧
    S_not_fourth 8182 8185 ∧
    S_not_fourth 8228 8231 ∧
    S_not_fourth 8279 8282 ∧
    S_not_fourth 8327 8330 ∧
    S_not_fourth 8378 8381 ∧
    S_not_fourth 8432 8435 ∧
    S_not_fourth 8473 8476 ∧
    S_not_fourth 8525 8528 ∧
    S_not_fourth 8576 8579 ∧
    S_not_fourth 8612 8615 ∧
    S_not_fourth 8668 8671 ∧
    S_not_fourth 8710 8713 ∧
    S_not_fourth 8753 8756 ∧
    S_not_fourth 8803 8806 ∧
    S_not_fourth 8843 8846 ∧
    S_not_fourth 8891 8894 ∧
    S_not_fourth 8944 8947 ∧
    S_not_fourth 8998 9001 ∧
    S_not_fourth 9050 9053 ∧
    S_not_fourth 9095 9098 ∧
    S_not_fourth 9134 9137 ∧
    S_not_fourth 9178 9181 ∧
    S_not_fourth 9230 9233 ∧
    S_not_fourth 9280 9283 ∧
    S_not_fourth 9326 9329 ∧
    S_not_fourth 9374 9377 ∧
    S_not_fourth 9433 9436 ∧
    S_not_fourth 9487 9490 ∧
    S_not_fourth 9533 9536 ∧
    S_not_fourth 9589 9592 ∧
    S_not_fourth 9638 9641 ∧
    S_not_fourth 9686 9689 ∧
    S_not_fourth 9743 9746 ∧
    S_not_fourth 9781 9784 ∧
    S_not_fourth 9842 9845 ∧
    S_not_fourth 9893 9896 ∧
    S_not_fourth 9943 9946 ∧
    S_not_fourth 10000 10003 :=
  ⟨row_1_4.2.2,
    row_4_7.2.2,
    row_5_8.2.2,
    row_10_13.2.2,
    row_13_16.2.2,
    row_35_38.2.2,
    row_46_49.2.2,
    row_59_62.2.2,
    row_73_76.2.2,
    row_97_100.2.2,
    row_100_103.2.2,
    row_116_119.2.2,
    row_137_140.2.2,
    row_152_155.2.2,
    row_172_175.2.2,
    row_191_194.2.2,
    row_205_208.2.2,
    row_224_227.2.2,
    row_244_247.2.2,
    row_260_263.2.2,
    row_283_286.2.2,
    row_299_302.2.2,
    row_316_319.2.2,
    row_331_334.2.2,
    row_350_353.2.2,
    row_364_367.2.2,
    row_379_382.2.2,
    row_407_410.2.2,
    row_430_433.2.2,
    row_442_445.2.2,
    row_461_464.2.2,
    row_472_475.2.2,
    row_487_490.2.2,
    row_502_505.2.2,
    row_521_524.2.2,
    row_536_539.2.2,
    row_563_566.2.2,
    row_578_581.2.2,
    row_590_593.2.2,
    row_601_604.2.2,
    row_617_620.2.2,
    row_640_643.2.2,
    row_649_652.2.2,
    row_664_667.2.2,
    row_682_685.2.2,
    row_698_701.2.2,
    row_715_718.2.2,
    row_733_736.2.2,
    row_748_751.2.2,
    row_763_766.2.2,
    row_782_785.2.2,
    row_802_805.2.2,
    row_815_818.2.2,
    row_835_838.2.2,
    row_853_856.2.2,
    row_878_881.2.2,
    row_892_895.2.2,
    row_914_917.2.2,
    row_934_937.2.2,
    row_949_952.2.2,
    row_962_965.2.2,
    row_985_988.2.2,
    row_998_1001.2.2,
    row_1000_1003.2.2,
    row_1001_1004.2.2,
    row_1049_1052.2.2,
    row_1097_1100.2.2,
    row_1132_1135.2.2,
    row_1183_1186.2.2,
    row_1223_1226.2.2,
    row_1265_1268.2.2,
    row_1318_1321.2.2,
    row_1360_1363.2.2,
    row_1403_1406.2.2,
    row_1468_1471.2.2,
    row_1516_1519.2.2,
    row_1555_1558.2.2,
    row_1610_1613.2.2,
    row_1654_1657.2.2,
    row_1706_1709.2.2,
    row_1753_1756.2.2,
    row_1790_1793.2.2,
    row_1834_1837.2.2,
    row_1888_1891.2.2,
    row_1921_1924.2.2,
    row_1987_1990.2.2,
    row_2039_2042.2.2,
    row_2096_2099.2.2,
    row_2147_2150.2.2,
    row_2186_2189.2.2,
    row_2236_2239.2.2,
    row_2284_2287.2.2,
    row_2326_2329.2.2,
    row_2377_2380.2.2,
    row_2425_2428.2.2,
    row_2462_2465.2.2,
    row_2509_2512.2.2,
    row_2551_2554.2.2,
    row_2602_2605.2.2,
    row_2659_2662.2.2,
    row_2699_2702.2.2,
    row_2743_2746.2.2,
    row_2788_2791.2.2,
    row_2831_2834.2.2,
    row_2876_2879.2.2,
    row_2935_2938.2.2,
    row_2986_2989.2.2,
    row_3044_3047.2.2,
    row_3080_3083.2.2,
    row_3133_3136.2.2,
    row_3184_3187.2.2,
    row_3224_3227.2.2,
    row_3278_3281.2.2,
    row_3335_3338.2.2,
    row_3382_3385.2.2,
    row_3424_3427.2.2,
    row_3475_3478.2.2,
    row_3508_3511.2.2,
    row_3556_3559.2.2,
    row_3608_3611.2.2,
    row_3650_3653.2.2,
    row_3698_3701.2.2,
    row_3755_3758.2.2,
    row_3803_3806.2.2,
    row_3848_3851.2.2,
    row_3889_3892.2.2,
    row_3940_3943.2.2,
    row_3988_3991.2.2,
    row_4021_4024.2.2,
    row_4085_4088.2.2,
    row_4132_4135.2.2,
    row_4186_4189.2.2,
    row_4246_4249.2.2,
    row_4289_4292.2.2,
    row_4343_4346.2.2,
    row_4390_4393.2.2,
    row_4439_4442.2.2,
    row_4484_4487.2.2,
    row_4529_4532.2.2,
    row_4574_4577.2.2,
    row_4640_4643.2.2,
    row_4684_4687.2.2,
    row_4738_4741.2.2,
    row_4784_4787.2.2,
    row_4834_4837.2.2,
    row_4880_4883.2.2,
    row_4915_4918.2.2,
    row_4961_4964.2.2,
    row_5000_5003.2.2,
    row_5027_5030.2.2,
    row_5069_5072.2.2,
    row_5120_5123.2.2,
    row_5182_5185.2.2,
    row_5237_5240.2.2,
    row_5279_5282.2.2,
    row_5327_5330.2.2,
    row_5371_5374.2.2,
    row_5416_5419.2.2,
    row_5456_5459.2.2,
    row_5509_5512.2.2,
    row_5552_5555.2.2,
    row_5594_5597.2.2,
    row_5636_5639.2.2,
    row_5701_5704.2.2,
    row_5746_5749.2.2,
    row_5794_5797.2.2,
    row_5837_5840.2.2,
    row_5876_5879.2.2,
    row_5923_5926.2.2,
    row_5968_5971.2.2,
    row_6016_6019.2.2,
    row_6061_6064.2.2,
    row_6100_6103.2.2,
    row_6158_6161.2.2,
    row_6205_6208.2.2,
    row_6244_6247.2.2,
    row_6293_6296.2.2,
    row_6340_6343.2.2,
    row_6382_6385.2.2,
    row_6431_6434.2.2,
    row_6487_6490.2.2,
    row_6524_6527.2.2,
    row_6575_6578.2.2,
    row_6619_6622.2.2,
    row_6665_6668.2.2,
    row_6715_6718.2.2,
    row_6763_6766.2.2,
    row_6808_6811.2.2,
    row_6866_6869.2.2,
    row_6908_6911.2.2,
    row_6956_6959.2.2,
    row_7000_7003.2.2,
    row_7003_7006.2.2,
    row_7049_7052.2.2,
    row_7112_7115.2.2,
    row_7153_7156.2.2,
    row_7198_7201.2.2,
    row_7253_7256.2.2,
    row_7295_7298.2.2,
    row_7345_7348.2.2,
    row_7399_7402.2.2,
    row_7439_7442.2.2,
    row_7492_7495.2.2,
    row_7532_7535.2.2,
    row_7582_7585.2.2,
    row_7625_7628.2.2,
    row_7669_7672.2.2,
    row_7721_7724.2.2,
    row_7759_7762.2.2,
    row_7804_7807.2.2,
    row_7852_7855.2.2,
    row_7907_7910.2.2,
    row_7955_7958.2.2,
    row_8000_8003.2.2,
    row_8008_8011.2.2,
    row_8060_8063.2.2,
    row_8102_8105.2.2,
    row_8144_8147.2.2,
    row_8182_8185.2.2,
    row_8228_8231.2.2,
    row_8279_8282.2.2,
    row_8327_8330.2.2,
    row_8378_8381.2.2,
    row_8432_8435.2.2,
    row_8473_8476.2.2,
    row_8525_8528.2.2,
    row_8576_8579.2.2,
    row_8612_8615.2.2,
    row_8668_8671.2.2,
    row_8710_8713.2.2,
    row_8753_8756.2.2,
    row_8803_8806.2.2,
    row_8843_8846.2.2,
    row_8891_8894.2.2,
    row_8944_8947.2.2,
    row_8998_9001.2.2,
    row_9050_9053.2.2,
    row_9095_9098.2.2,
    row_9134_9137.2.2,
    row_9178_9181.2.2,
    row_9230_9233.2.2,
    row_9280_9283.2.2,
    row_9326_9329.2.2,
    row_9374_9377.2.2,
    row_9433_9436.2.2,
    row_9487_9490.2.2,
    row_9533_9536.2.2,
    row_9589_9592.2.2,
    row_9638_9641.2.2,
    row_9686_9689.2.2,
    row_9743_9746.2.2,
    row_9781_9784.2.2,
    row_9842_9845.2.2,
    row_9893_9896.2.2,
    row_9943_9946.2.2,
    row_10000_10003.2.2⟩
/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; 256 rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower
      (S_val B C)

/-- Uninhabited.  256 rows are not every `B ≤ 10000`.
`B > 10000` needs Bugeaud–Corvaja–Zannier. -/
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
#check HasPrimeWithExpOne
#check S_not_fourth
#check S_has_prime_with_exp_one_B_le_10000_table_rows
#check exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows
#check S_not_fourth_B_le_10000_from_exp_one_table_rows
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_has_prime_with_exp_one_B_le_10000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_10000_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension
