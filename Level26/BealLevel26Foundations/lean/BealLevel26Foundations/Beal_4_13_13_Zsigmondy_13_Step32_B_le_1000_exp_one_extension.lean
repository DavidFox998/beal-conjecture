/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.37.0 — B ≤ 1000 exp-one
extension (64 named gap-3 rows, not a ∀).

Extends the eight-row B ≤ 100 table to
64 computational pairs with B ≤ 1000
and C = B+3 (except the inherited
(1,4) row).  Each has a prime p with
p | S, p ∤ (C-B), p² ∤ S, so the
Step11 dichotomy gives order ≠ 13
and S_not_fourth.

This is not every B ≤ 1000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 1000 squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren ∀ stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 2000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 S_not_fourth S_not_fourth_of_order_ne_13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (HasPrimeWithExpOne exists_p_with_order_ne_13_of_has_exp_one)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
  (has_exp_one_of_zmod p_dvd_S_val_of_pow13_eq not_p_sq_dvd_S_val_of_pow13_ne
    prime_53 prime_79 prime_599 prime_2731 sq_53 sq_79 sq_599
    S_val_1_4_has_prime_with_exp_one
    S_val_4_7_has_prime_with_exp_one
    S_val_5_8_has_prime_with_exp_one
    S_val_10_13_has_prime_with_exp_one
    S_val_100_103_has_prime_with_exp_one
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
    ne_13_2731)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one
  (S_not_fourth_B1_C4 S_not_fourth_B4_C7 S_not_fourth_B5_C8
    S_not_fourth_B10_C13 S_not_fourth_B100_C103
    exists_p_with_order_ne_13_mod_p_sq_example_B4_C7
    exists_p_with_order_ne_13_mod_p_sq_example_B5_C8
    exists_p_with_order_ne_13_mod_p_sq_example_B10_C13
    exists_p_with_order_ne_13_mod_p_sq_example_B100_C103
    ne_13_53 ne_13_79 ne_13_599)

/-! ## Shared primes (small numerals; `decide` only) -/
theorem prime_131 : Nat.Prime 131 := by decide
theorem sq_131 : (17161 : Nat) = 131 * 131 := by decide
theorem ne_13_131 : (131 : Nat) ≠ 13 := by decide

theorem prime_313 : Nat.Prime 313 := by decide
theorem sq_313 : (97969 : Nat) = 313 * 313 := by decide
theorem ne_13_313 : (313 : Nat) ≠ 13 := by decide

theorem prime_443 : Nat.Prime 443 := by decide
theorem sq_443 : (196249 : Nat) = 443 * 443 := by decide
theorem ne_13_443 : (443 : Nat) ≠ 13 := by decide

theorem prime_521 : Nat.Prime 521 := by decide
theorem sq_521 : (271441 : Nat) = 521 * 521 := by decide
theorem ne_13_521 : (521 : Nat) ≠ 13 := by decide

theorem prime_547 : Nat.Prime 547 := by decide
theorem sq_547 : (299209 : Nat) = 547 * 547 := by decide
theorem ne_13_547 : (547 : Nat) ≠ 13 := by decide

/-! ## Sixty-four named rows -/
theorem row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  ⟨S_val_1_4_has_prime_with_exp_one, exists_p_with_order_ne_13_mod_p_sq_example_B1_C4, S_not_fourth_B1_C4⟩
theorem row_4_7 :
    HasPrimeWithExpOne (S_val 4 7) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4 7 ∧ ¬ p ∣ (7 - 4) ∧
      ∃ (hNotC : ¬ p ∣ 7) (hNotB : ¬ p ∣ 4),
        order_of_C_B_inv_mod_p2 7 4 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4 7 :=
  ⟨S_val_4_7_has_prime_with_exp_one, exists_p_with_order_ne_13_mod_p_sq_example_B4_C7, S_not_fourth_B4_C7⟩
theorem row_5_8 :
    HasPrimeWithExpOne (S_val 5 8) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5 8 ∧ ¬ p ∣ (8 - 5) ∧
      ∃ (hNotC : ¬ p ∣ 8) (hNotB : ¬ p ∣ 5),
        order_of_C_B_inv_mod_p2 8 5 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5 8 :=
  ⟨S_val_5_8_has_prime_with_exp_one, exists_p_with_order_ne_13_mod_p_sq_example_B5_C8, S_not_fourth_B5_C8⟩
theorem row_10_13 :
    HasPrimeWithExpOne (S_val 10 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10 13 ∧ ¬ p ∣ (13 - 10) ∧
      ∃ (hNotC : ¬ p ∣ 13) (hNotB : ¬ p ∣ 10),
        order_of_C_B_inv_mod_p2 13 10 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10 13 :=
  ⟨S_val_10_13_has_prime_with_exp_one, exists_p_with_order_ne_13_mod_p_sq_example_B10_C13, S_not_fourth_B10_C13⟩
theorem row_13_16 :
    HasPrimeWithExpOne (S_val 13 16) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13 16 ∧ ¬ p ∣ (16 - 13) ∧
      ∃ (hNotC : ¬ p ∣ 16) (hNotB : ¬ p ∣ 13),
        order_of_C_B_inv_mod_p2 16 13 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13 16 := by
  have hlt : (13 : Nat) < 16 := by decide
  have hcop : ¬ 53 ∣ (16 - 13) := by decide
  have heq : (16 : ZMod 53) ^ 13 = (13 : ZMod 53) ^ 13 := by decide
  have hne : (16 : ZMod 2809) ^ 13 ≠ (13 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 16 := by decide
  have hB : ¬ 53 ∣ 13 := by decide
  have hexp :=
    has_exp_one_of_zmod 13 16 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 13 16 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 13 16 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      13 16 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      13 16 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_35_38 :
    HasPrimeWithExpOne (S_val 35 38) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35 38 ∧ ¬ p ∣ (38 - 35) ∧
      ∃ (hNotC : ¬ p ∣ 38) (hNotB : ¬ p ∣ 35),
        order_of_C_B_inv_mod_p2 38 35 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35 38 := by
  have hlt : (35 : Nat) < 38 := by decide
  have hcop : ¬ 443 ∣ (38 - 35) := by decide
  have heq : (38 : ZMod 443) ^ 13 = (35 : ZMod 443) ^ 13 := by decide
  have hne : (38 : ZMod 196249) ^ 13 ≠ (35 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 38 := by decide
  have hB : ¬ 443 ∣ 35 := by decide
  have hexp :=
    has_exp_one_of_zmod 35 38 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 35 38 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 35 38 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      35 38 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      35 38 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_46_49 :
    HasPrimeWithExpOne (S_val 46 49) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46 49 ∧ ¬ p ∣ (49 - 46) ∧
      ∃ (hNotC : ¬ p ∣ 49) (hNotB : ¬ p ∣ 46),
        order_of_C_B_inv_mod_p2 49 46 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46 49 := by
  have hlt : (46 : Nat) < 49 := by decide
  have hcop : ¬ 53 ∣ (49 - 46) := by decide
  have heq : (49 : ZMod 53) ^ 13 = (46 : ZMod 53) ^ 13 := by decide
  have hne : (49 : ZMod 2809) ^ 13 ≠ (46 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 49 := by decide
  have hB : ¬ 53 ∣ 46 := by decide
  have hexp :=
    has_exp_one_of_zmod 46 49 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 46 49 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 46 49 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      46 49 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      46 49 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_59_62 :
    HasPrimeWithExpOne (S_val 59 62) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59 62 ∧ ¬ p ∣ (62 - 59) ∧
      ∃ (hNotC : ¬ p ∣ 62) (hNotB : ¬ p ∣ 59),
        order_of_C_B_inv_mod_p2 62 59 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59 62 := by
  have hlt : (59 : Nat) < 62 := by decide
  have hcop : ¬ 53 ∣ (62 - 59) := by decide
  have heq : (62 : ZMod 53) ^ 13 = (59 : ZMod 53) ^ 13 := by decide
  have hne : (62 : ZMod 2809) ^ 13 ≠ (59 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 62 := by decide
  have hB : ¬ 53 ∣ 59 := by decide
  have hexp :=
    has_exp_one_of_zmod 59 62 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 59 62 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 59 62 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      59 62 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      59 62 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_73_76 :
    HasPrimeWithExpOne (S_val 73 76) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73 76 ∧ ¬ p ∣ (76 - 73) ∧
      ∃ (hNotC : ¬ p ∣ 76) (hNotB : ¬ p ∣ 73),
        order_of_C_B_inv_mod_p2 76 73 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73 76 := by
  have hlt : (73 : Nat) < 76 := by decide
  have hcop : ¬ 131 ∣ (76 - 73) := by decide
  have heq : (76 : ZMod 131) ^ 13 = (73 : ZMod 131) ^ 13 := by decide
  have hne : (76 : ZMod 17161) ^ 13 ≠ (73 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 76 := by decide
  have hB : ¬ 131 ∣ 73 := by decide
  have hexp :=
    has_exp_one_of_zmod 73 76 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 73 76 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 73 76 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      73 76 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      73 76 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_97_100 :
    HasPrimeWithExpOne (S_val 97 100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97 100 ∧ ¬ p ∣ (100 - 97) ∧
      ∃ (hNotC : ¬ p ∣ 100) (hNotB : ¬ p ∣ 97),
        order_of_C_B_inv_mod_p2 100 97 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97 100 := by
  have hlt : (97 : Nat) < 100 := by decide
  have hcop : ¬ 53 ∣ (100 - 97) := by decide
  have heq : (100 : ZMod 53) ^ 13 = (97 : ZMod 53) ^ 13 := by decide
  have hne : (100 : ZMod 2809) ^ 13 ≠ (97 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 100 := by decide
  have hB : ¬ 53 ∣ 97 := by decide
  have hexp :=
    has_exp_one_of_zmod 97 100 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 97 100 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 97 100 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      97 100 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      97 100 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_100_103 :
    HasPrimeWithExpOne (S_val 100 103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100 103 ∧ ¬ p ∣ (103 - 100) ∧
      ∃ (hNotC : ¬ p ∣ 103) (hNotB : ¬ p ∣ 100),
        order_of_C_B_inv_mod_p2 103 100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100 103 :=
  ⟨S_val_100_103_has_prime_with_exp_one, exists_p_with_order_ne_13_mod_p_sq_example_B100_C103, S_not_fourth_B100_C103⟩
theorem row_116_119 :
    HasPrimeWithExpOne (S_val 116 119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116 119 ∧ ¬ p ∣ (119 - 116) ∧
      ∃ (hNotC : ¬ p ∣ 119) (hNotB : ¬ p ∣ 116),
        order_of_C_B_inv_mod_p2 119 116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116 119 := by
  have hlt : (116 : Nat) < 119 := by decide
  have hcop : ¬ 53 ∣ (119 - 116) := by decide
  have heq : (119 : ZMod 53) ^ 13 = (116 : ZMod 53) ^ 13 := by decide
  have hne : (119 : ZMod 2809) ^ 13 ≠ (116 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 119 := by decide
  have hB : ¬ 53 ∣ 116 := by decide
  have hexp :=
    has_exp_one_of_zmod 116 119 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 116 119 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 116 119 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      116 119 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      116 119 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_137_140 :
    HasPrimeWithExpOne (S_val 137 140) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137 140 ∧ ¬ p ∣ (140 - 137) ∧
      ∃ (hNotC : ¬ p ∣ 140) (hNotB : ¬ p ∣ 137),
        order_of_C_B_inv_mod_p2 140 137 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137 140 := by
  have hlt : (137 : Nat) < 140 := by decide
  have hcop : ¬ 79 ∣ (140 - 137) := by decide
  have heq : (140 : ZMod 79) ^ 13 = (137 : ZMod 79) ^ 13 := by decide
  have hne : (140 : ZMod 6241) ^ 13 ≠ (137 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 140 := by decide
  have hB : ¬ 79 ∣ 137 := by decide
  have hexp :=
    has_exp_one_of_zmod 137 140 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 137 140 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 137 140 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      137 140 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      137 140 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_152_155 :
    HasPrimeWithExpOne (S_val 152 155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152 155 ∧ ¬ p ∣ (155 - 152) ∧
      ∃ (hNotC : ¬ p ∣ 155) (hNotB : ¬ p ∣ 152),
        order_of_C_B_inv_mod_p2 155 152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152 155 := by
  have hlt : (152 : Nat) < 155 := by decide
  have hcop : ¬ 53 ∣ (155 - 152) := by decide
  have heq : (155 : ZMod 53) ^ 13 = (152 : ZMod 53) ^ 13 := by decide
  have hne : (155 : ZMod 2809) ^ 13 ≠ (152 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 155 := by decide
  have hB : ¬ 53 ∣ 152 := by decide
  have hexp :=
    has_exp_one_of_zmod 152 155 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 152 155 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 152 155 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      152 155 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      152 155 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_172_175 :
    HasPrimeWithExpOne (S_val 172 175) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172 175 ∧ ¬ p ∣ (175 - 172) ∧
      ∃ (hNotC : ¬ p ∣ 175) (hNotB : ¬ p ∣ 172),
        order_of_C_B_inv_mod_p2 175 172 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172 175 := by
  have hlt : (172 : Nat) < 175 := by decide
  have hcop : ¬ 53 ∣ (175 - 172) := by decide
  have heq : (175 : ZMod 53) ^ 13 = (172 : ZMod 53) ^ 13 := by decide
  have hne : (175 : ZMod 2809) ^ 13 ≠ (172 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 175 := by decide
  have hB : ¬ 53 ∣ 172 := by decide
  have hexp :=
    has_exp_one_of_zmod 172 175 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 172 175 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 172 175 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      172 175 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      172 175 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_191_194 :
    HasPrimeWithExpOne (S_val 191 194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191 194 ∧ ¬ p ∣ (194 - 191) ∧
      ∃ (hNotC : ¬ p ∣ 194) (hNotB : ¬ p ∣ 191),
        order_of_C_B_inv_mod_p2 194 191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191 194 := by
  have hlt : (191 : Nat) < 194 := by decide
  have hcop : ¬ 53 ∣ (194 - 191) := by decide
  have heq : (194 : ZMod 53) ^ 13 = (191 : ZMod 53) ^ 13 := by decide
  have hne : (194 : ZMod 2809) ^ 13 ≠ (191 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 194 := by decide
  have hB : ¬ 53 ∣ 191 := by decide
  have hexp :=
    has_exp_one_of_zmod 191 194 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 191 194 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 191 194 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      191 194 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      191 194 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_205_208 :
    HasPrimeWithExpOne (S_val 205 208) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205 208 ∧ ¬ p ∣ (208 - 205) ∧
      ∃ (hNotC : ¬ p ∣ 208) (hNotB : ¬ p ∣ 205),
        order_of_C_B_inv_mod_p2 208 205 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205 208 := by
  have hlt : (205 : Nat) < 208 := by decide
  have hcop : ¬ 53 ∣ (208 - 205) := by decide
  have heq : (208 : ZMod 53) ^ 13 = (205 : ZMod 53) ^ 13 := by decide
  have hne : (208 : ZMod 2809) ^ 13 ≠ (205 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 208 := by decide
  have hB : ¬ 53 ∣ 205 := by decide
  have hexp :=
    has_exp_one_of_zmod 205 208 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 205 208 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 205 208 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      205 208 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      205 208 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_224_227 :
    HasPrimeWithExpOne (S_val 224 227) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224 227 ∧ ¬ p ∣ (227 - 224) ∧
      ∃ (hNotC : ¬ p ∣ 227) (hNotB : ¬ p ∣ 224),
        order_of_C_B_inv_mod_p2 227 224 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224 227 := by
  have hlt : (224 : Nat) < 227 := by decide
  have hcop : ¬ 521 ∣ (227 - 224) := by decide
  have heq : (227 : ZMod 521) ^ 13 = (224 : ZMod 521) ^ 13 := by decide
  have hne : (227 : ZMod 271441) ^ 13 ≠ (224 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 227 := by decide
  have hB : ¬ 521 ∣ 224 := by decide
  have hexp :=
    has_exp_one_of_zmod 224 227 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 224 227 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 224 227 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      224 227 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      224 227 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_244_247 :
    HasPrimeWithExpOne (S_val 244 247) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244 247 ∧ ¬ p ∣ (247 - 244) ∧
      ∃ (hNotC : ¬ p ∣ 247) (hNotB : ¬ p ∣ 244),
        order_of_C_B_inv_mod_p2 247 244 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244 247 := by
  have hlt : (244 : Nat) < 247 := by decide
  have hcop : ¬ 53 ∣ (247 - 244) := by decide
  have heq : (247 : ZMod 53) ^ 13 = (244 : ZMod 53) ^ 13 := by decide
  have hne : (247 : ZMod 2809) ^ 13 ≠ (244 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 247 := by decide
  have hB : ¬ 53 ∣ 244 := by decide
  have hexp :=
    has_exp_one_of_zmod 244 247 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 244 247 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 244 247 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      244 247 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      244 247 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_260_263 :
    HasPrimeWithExpOne (S_val 260 263) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260 263 ∧ ¬ p ∣ (263 - 260) ∧
      ∃ (hNotC : ¬ p ∣ 263) (hNotB : ¬ p ∣ 260),
        order_of_C_B_inv_mod_p2 263 260 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260 263 := by
  have hlt : (260 : Nat) < 263 := by decide
  have hcop : ¬ 79 ∣ (263 - 260) := by decide
  have heq : (263 : ZMod 79) ^ 13 = (260 : ZMod 79) ^ 13 := by decide
  have hne : (263 : ZMod 6241) ^ 13 ≠ (260 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 263 := by decide
  have hB : ¬ 79 ∣ 260 := by decide
  have hexp :=
    has_exp_one_of_zmod 260 263 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 260 263 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 260 263 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      260 263 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      260 263 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_283_286 :
    HasPrimeWithExpOne (S_val 283 286) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283 286 ∧ ¬ p ∣ (286 - 283) ∧
      ∃ (hNotC : ¬ p ∣ 286) (hNotB : ¬ p ∣ 283),
        order_of_C_B_inv_mod_p2 286 283 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283 286 := by
  have hlt : (283 : Nat) < 286 := by decide
  have hcop : ¬ 53 ∣ (286 - 283) := by decide
  have heq : (286 : ZMod 53) ^ 13 = (283 : ZMod 53) ^ 13 := by decide
  have hne : (286 : ZMod 2809) ^ 13 ≠ (283 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 286 := by decide
  have hB : ¬ 53 ∣ 283 := by decide
  have hexp :=
    has_exp_one_of_zmod 283 286 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 283 286 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 283 286 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      283 286 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      283 286 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_299_302 :
    HasPrimeWithExpOne (S_val 299 302) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299 302 ∧ ¬ p ∣ (302 - 299) ∧
      ∃ (hNotC : ¬ p ∣ 302) (hNotB : ¬ p ∣ 299),
        order_of_C_B_inv_mod_p2 302 299 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299 302 := by
  have hlt : (299 : Nat) < 302 := by decide
  have hcop : ¬ 79 ∣ (302 - 299) := by decide
  have heq : (302 : ZMod 79) ^ 13 = (299 : ZMod 79) ^ 13 := by decide
  have hne : (302 : ZMod 6241) ^ 13 ≠ (299 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 302 := by decide
  have hB : ¬ 79 ∣ 299 := by decide
  have hexp :=
    has_exp_one_of_zmod 299 302 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 299 302 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 299 302 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      299 302 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      299 302 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_316_319 :
    HasPrimeWithExpOne (S_val 316 319) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316 319 ∧ ¬ p ∣ (319 - 316) ∧
      ∃ (hNotC : ¬ p ∣ 319) (hNotB : ¬ p ∣ 316),
        order_of_C_B_inv_mod_p2 319 316 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316 319 := by
  have hlt : (316 : Nat) < 319 := by decide
  have hcop : ¬ 131 ∣ (319 - 316) := by decide
  have heq : (319 : ZMod 131) ^ 13 = (316 : ZMod 131) ^ 13 := by decide
  have hne : (319 : ZMod 17161) ^ 13 ≠ (316 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 319 := by decide
  have hB : ¬ 131 ∣ 316 := by decide
  have hexp :=
    has_exp_one_of_zmod 316 319 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 316 319 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 316 319 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      316 319 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      316 319 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_331_334 :
    HasPrimeWithExpOne (S_val 331 334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331 334 ∧ ¬ p ∣ (334 - 331) ∧
      ∃ (hNotC : ¬ p ∣ 334) (hNotB : ¬ p ∣ 331),
        order_of_C_B_inv_mod_p2 334 331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331 334 := by
  have hlt : (331 : Nat) < 334 := by decide
  have hcop : ¬ 53 ∣ (334 - 331) := by decide
  have heq : (334 : ZMod 53) ^ 13 = (331 : ZMod 53) ^ 13 := by decide
  have hne : (334 : ZMod 2809) ^ 13 ≠ (331 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 334 := by decide
  have hB : ¬ 53 ∣ 331 := by decide
  have hexp :=
    has_exp_one_of_zmod 331 334 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 331 334 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 331 334 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      331 334 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      331 334 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_350_353 :
    HasPrimeWithExpOne (S_val 350 353) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350 353 ∧ ¬ p ∣ (353 - 350) ∧
      ∃ (hNotC : ¬ p ∣ 353) (hNotB : ¬ p ∣ 350),
        order_of_C_B_inv_mod_p2 353 350 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350 353 := by
  have hlt : (350 : Nat) < 353 := by decide
  have hcop : ¬ 53 ∣ (353 - 350) := by decide
  have heq : (353 : ZMod 53) ^ 13 = (350 : ZMod 53) ^ 13 := by decide
  have hne : (353 : ZMod 2809) ^ 13 ≠ (350 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 353 := by decide
  have hB : ¬ 53 ∣ 350 := by decide
  have hexp :=
    has_exp_one_of_zmod 350 353 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 350 353 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 350 353 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      350 353 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      350 353 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_364_367 :
    HasPrimeWithExpOne (S_val 364 367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364 367 ∧ ¬ p ∣ (367 - 364) ∧
      ∃ (hNotC : ¬ p ∣ 367) (hNotB : ¬ p ∣ 364),
        order_of_C_B_inv_mod_p2 367 364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364 367 := by
  have hlt : (364 : Nat) < 367 := by decide
  have hcop : ¬ 53 ∣ (367 - 364) := by decide
  have heq : (367 : ZMod 53) ^ 13 = (364 : ZMod 53) ^ 13 := by decide
  have hne : (367 : ZMod 2809) ^ 13 ≠ (364 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 367 := by decide
  have hB : ¬ 53 ∣ 364 := by decide
  have hexp :=
    has_exp_one_of_zmod 364 367 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 364 367 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 364 367 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      364 367 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      364 367 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_379_382 :
    HasPrimeWithExpOne (S_val 379 382) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379 382 ∧ ¬ p ∣ (382 - 379) ∧
      ∃ (hNotC : ¬ p ∣ 382) (hNotB : ¬ p ∣ 379),
        order_of_C_B_inv_mod_p2 382 379 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379 382 := by
  have hlt : (379 : Nat) < 382 := by decide
  have hcop : ¬ 79 ∣ (382 - 379) := by decide
  have heq : (382 : ZMod 79) ^ 13 = (379 : ZMod 79) ^ 13 := by decide
  have hne : (382 : ZMod 6241) ^ 13 ≠ (379 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 382 := by decide
  have hB : ¬ 79 ∣ 379 := by decide
  have hexp :=
    has_exp_one_of_zmod 379 382 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 379 382 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 379 382 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      379 382 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      379 382 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_407_410 :
    HasPrimeWithExpOne (S_val 407 410) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407 410 ∧ ¬ p ∣ (410 - 407) ∧
      ∃ (hNotC : ¬ p ∣ 410) (hNotB : ¬ p ∣ 407),
        order_of_C_B_inv_mod_p2 410 407 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 407 410 := by
  have hlt : (407 : Nat) < 410 := by decide
  have hcop : ¬ 79 ∣ (410 - 407) := by decide
  have heq : (410 : ZMod 79) ^ 13 = (407 : ZMod 79) ^ 13 := by decide
  have hne : (410 : ZMod 6241) ^ 13 ≠ (407 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 410 := by decide
  have hB : ¬ 79 ∣ 407 := by decide
  have hexp :=
    has_exp_one_of_zmod 407 410 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 407 410 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 407 410 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      407 410 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      407 410 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_430_433 :
    HasPrimeWithExpOne (S_val 430 433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430 433 ∧ ¬ p ∣ (433 - 430) ∧
      ∃ (hNotC : ¬ p ∣ 433) (hNotB : ¬ p ∣ 430),
        order_of_C_B_inv_mod_p2 433 430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 430 433 := by
  have hlt : (430 : Nat) < 433 := by decide
  have hcop : ¬ 53 ∣ (433 - 430) := by decide
  have heq : (433 : ZMod 53) ^ 13 = (430 : ZMod 53) ^ 13 := by decide
  have hne : (433 : ZMod 2809) ^ 13 ≠ (430 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 433 := by decide
  have hB : ¬ 53 ∣ 430 := by decide
  have hexp :=
    has_exp_one_of_zmod 430 433 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 430 433 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 430 433 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      430 433 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      430 433 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_442_445 :
    HasPrimeWithExpOne (S_val 442 445) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442 445 ∧ ¬ p ∣ (445 - 442) ∧
      ∃ (hNotC : ¬ p ∣ 445) (hNotB : ¬ p ∣ 442),
        order_of_C_B_inv_mod_p2 445 442 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 442 445 := by
  have hlt : (442 : Nat) < 445 := by decide
  have hcop : ¬ 53 ∣ (445 - 442) := by decide
  have heq : (445 : ZMod 53) ^ 13 = (442 : ZMod 53) ^ 13 := by decide
  have hne : (445 : ZMod 2809) ^ 13 ≠ (442 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 445 := by decide
  have hB : ¬ 53 ∣ 442 := by decide
  have hexp :=
    has_exp_one_of_zmod 442 445 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 442 445 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 442 445 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      442 445 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      442 445 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_461_464 :
    HasPrimeWithExpOne (S_val 461 464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461 464 ∧ ¬ p ∣ (464 - 461) ∧
      ∃ (hNotC : ¬ p ∣ 464) (hNotB : ¬ p ∣ 461),
        order_of_C_B_inv_mod_p2 464 461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 461 464 := by
  have hlt : (461 : Nat) < 464 := by decide
  have hcop : ¬ 53 ∣ (464 - 461) := by decide
  have heq : (464 : ZMod 53) ^ 13 = (461 : ZMod 53) ^ 13 := by decide
  have hne : (464 : ZMod 2809) ^ 13 ≠ (461 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 464 := by decide
  have hB : ¬ 53 ∣ 461 := by decide
  have hexp :=
    has_exp_one_of_zmod 461 464 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 461 464 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 461 464 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      461 464 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      461 464 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_472_475 :
    HasPrimeWithExpOne (S_val 472 475) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472 475 ∧ ¬ p ∣ (475 - 472) ∧
      ∃ (hNotC : ¬ p ∣ 475) (hNotB : ¬ p ∣ 472),
        order_of_C_B_inv_mod_p2 475 472 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 472 475 := by
  have hlt : (472 : Nat) < 475 := by decide
  have hcop : ¬ 443 ∣ (475 - 472) := by decide
  have heq : (475 : ZMod 443) ^ 13 = (472 : ZMod 443) ^ 13 := by decide
  have hne : (475 : ZMod 196249) ^ 13 ≠ (472 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 475 := by decide
  have hB : ¬ 443 ∣ 472 := by decide
  have hexp :=
    has_exp_one_of_zmod 472 475 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 472 475 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 472 475 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      472 475 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      472 475 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_487_490 :
    HasPrimeWithExpOne (S_val 487 490) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487 490 ∧ ¬ p ∣ (490 - 487) ∧
      ∃ (hNotC : ¬ p ∣ 490) (hNotB : ¬ p ∣ 487),
        order_of_C_B_inv_mod_p2 490 487 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 487 490 := by
  have hlt : (487 : Nat) < 490 := by decide
  have hcop : ¬ 53 ∣ (490 - 487) := by decide
  have heq : (490 : ZMod 53) ^ 13 = (487 : ZMod 53) ^ 13 := by decide
  have hne : (490 : ZMod 2809) ^ 13 ≠ (487 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 490 := by decide
  have hB : ¬ 53 ∣ 487 := by decide
  have hexp :=
    has_exp_one_of_zmod 487 490 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 487 490 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 487 490 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      487 490 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      487 490 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_502_505 :
    HasPrimeWithExpOne (S_val 502 505) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 502 505 ∧ ¬ p ∣ (505 - 502) ∧
      ∃ (hNotC : ¬ p ∣ 505) (hNotB : ¬ p ∣ 502),
        order_of_C_B_inv_mod_p2 505 502 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 502 505 := by
  have hlt : (502 : Nat) < 505 := by decide
  have hcop : ¬ 547 ∣ (505 - 502) := by decide
  have heq : (505 : ZMod 547) ^ 13 = (502 : ZMod 547) ^ 13 := by decide
  have hne : (505 : ZMod 299209) ^ 13 ≠ (502 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 505 := by decide
  have hB : ¬ 547 ∣ 502 := by decide
  have hexp :=
    has_exp_one_of_zmod 502 505 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 502 505 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 502 505 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      502 505 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      502 505 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_521_524 :
    HasPrimeWithExpOne (S_val 521 524) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 521 524 ∧ ¬ p ∣ (524 - 521) ∧
      ∃ (hNotC : ¬ p ∣ 524) (hNotB : ¬ p ∣ 521),
        order_of_C_B_inv_mod_p2 524 521 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 521 524 := by
  have hlt : (521 : Nat) < 524 := by decide
  have hcop : ¬ 53 ∣ (524 - 521) := by decide
  have heq : (524 : ZMod 53) ^ 13 = (521 : ZMod 53) ^ 13 := by decide
  have hne : (524 : ZMod 2809) ^ 13 ≠ (521 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 524 := by decide
  have hB : ¬ 53 ∣ 521 := by decide
  have hexp :=
    has_exp_one_of_zmod 521 524 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 521 524 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 521 524 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      521 524 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      521 524 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_536_539 :
    HasPrimeWithExpOne (S_val 536 539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 536 539 ∧ ¬ p ∣ (539 - 536) ∧
      ∃ (hNotC : ¬ p ∣ 539) (hNotB : ¬ p ∣ 536),
        order_of_C_B_inv_mod_p2 539 536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 536 539 := by
  have hlt : (536 : Nat) < 539 := by decide
  have hcop : ¬ 53 ∣ (539 - 536) := by decide
  have heq : (539 : ZMod 53) ^ 13 = (536 : ZMod 53) ^ 13 := by decide
  have hne : (539 : ZMod 2809) ^ 13 ≠ (536 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 539 := by decide
  have hB : ¬ 53 ∣ 536 := by decide
  have hexp :=
    has_exp_one_of_zmod 536 539 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 536 539 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 536 539 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      536 539 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      536 539 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_563_566 :
    HasPrimeWithExpOne (S_val 563 566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 563 566 ∧ ¬ p ∣ (566 - 563) ∧
      ∃ (hNotC : ¬ p ∣ 566) (hNotB : ¬ p ∣ 563),
        order_of_C_B_inv_mod_p2 566 563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 563 566 := by
  have hlt : (563 : Nat) < 566 := by decide
  have hcop : ¬ 313 ∣ (566 - 563) := by decide
  have heq : (566 : ZMod 313) ^ 13 = (563 : ZMod 313) ^ 13 := by decide
  have hne : (566 : ZMod 97969) ^ 13 ≠ (563 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 566 := by decide
  have hB : ¬ 313 ∣ 563 := by decide
  have hexp :=
    has_exp_one_of_zmod 563 566 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 563 566 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 563 566 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      563 566 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      563 566 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_578_581 :
    HasPrimeWithExpOne (S_val 578 581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 578 581 ∧ ¬ p ∣ (581 - 578) ∧
      ∃ (hNotC : ¬ p ∣ 581) (hNotB : ¬ p ∣ 578),
        order_of_C_B_inv_mod_p2 581 578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 578 581 := by
  have hlt : (578 : Nat) < 581 := by decide
  have hcop : ¬ 131 ∣ (581 - 578) := by decide
  have heq : (581 : ZMod 131) ^ 13 = (578 : ZMod 131) ^ 13 := by decide
  have hne : (581 : ZMod 17161) ^ 13 ≠ (578 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 581 := by decide
  have hB : ¬ 131 ∣ 578 := by decide
  have hexp :=
    has_exp_one_of_zmod 578 581 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 578 581 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 578 581 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      578 581 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      578 581 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_590_593 :
    HasPrimeWithExpOne (S_val 590 593) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 590 593 ∧ ¬ p ∣ (593 - 590) ∧
      ∃ (hNotC : ¬ p ∣ 593) (hNotB : ¬ p ∣ 590),
        order_of_C_B_inv_mod_p2 593 590 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 590 593 := by
  have hlt : (590 : Nat) < 593 := by decide
  have hcop : ¬ 313 ∣ (593 - 590) := by decide
  have heq : (593 : ZMod 313) ^ 13 = (590 : ZMod 313) ^ 13 := by decide
  have hne : (593 : ZMod 97969) ^ 13 ≠ (590 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 593 := by decide
  have hB : ¬ 313 ∣ 590 := by decide
  have hexp :=
    has_exp_one_of_zmod 590 593 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 590 593 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 590 593 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      590 593 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      590 593 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_601_604 :
    HasPrimeWithExpOne (S_val 601 604) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 601 604 ∧ ¬ p ∣ (604 - 601) ∧
      ∃ (hNotC : ¬ p ∣ 604) (hNotB : ¬ p ∣ 601),
        order_of_C_B_inv_mod_p2 604 601 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 601 604 := by
  have hlt : (601 : Nat) < 604 := by decide
  have hcop : ¬ 53 ∣ (604 - 601) := by decide
  have heq : (604 : ZMod 53) ^ 13 = (601 : ZMod 53) ^ 13 := by decide
  have hne : (604 : ZMod 2809) ^ 13 ≠ (601 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 604 := by decide
  have hB : ¬ 53 ∣ 601 := by decide
  have hexp :=
    has_exp_one_of_zmod 601 604 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 601 604 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 601 604 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      601 604 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      601 604 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_617_620 :
    HasPrimeWithExpOne (S_val 617 620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 617 620 ∧ ¬ p ∣ (620 - 617) ∧
      ∃ (hNotC : ¬ p ∣ 620) (hNotB : ¬ p ∣ 617),
        order_of_C_B_inv_mod_p2 620 617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 617 620 := by
  have hlt : (617 : Nat) < 620 := by decide
  have hcop : ¬ 79 ∣ (620 - 617) := by decide
  have heq : (620 : ZMod 79) ^ 13 = (617 : ZMod 79) ^ 13 := by decide
  have hne : (620 : ZMod 6241) ^ 13 ≠ (617 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 620 := by decide
  have hB : ¬ 79 ∣ 617 := by decide
  have hexp :=
    has_exp_one_of_zmod 617 620 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 617 620 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 617 620 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      617 620 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      617 620 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_640_643 :
    HasPrimeWithExpOne (S_val 640 643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 640 643 ∧ ¬ p ∣ (643 - 640) ∧
      ∃ (hNotC : ¬ p ∣ 643) (hNotB : ¬ p ∣ 640),
        order_of_C_B_inv_mod_p2 643 640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 640 643 := by
  have hlt : (640 : Nat) < 643 := by decide
  have hcop : ¬ 53 ∣ (643 - 640) := by decide
  have heq : (643 : ZMod 53) ^ 13 = (640 : ZMod 53) ^ 13 := by decide
  have hne : (643 : ZMod 2809) ^ 13 ≠ (640 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 643 := by decide
  have hB : ¬ 53 ∣ 640 := by decide
  have hexp :=
    has_exp_one_of_zmod 640 643 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 640 643 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 640 643 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      640 643 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      640 643 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_649_652 :
    HasPrimeWithExpOne (S_val 649 652) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 649 652 ∧ ¬ p ∣ (652 - 649) ∧
      ∃ (hNotC : ¬ p ∣ 652) (hNotB : ¬ p ∣ 649),
        order_of_C_B_inv_mod_p2 652 649 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 649 652 := by
  have hlt : (649 : Nat) < 652 := by decide
  have hcop : ¬ 53 ∣ (652 - 649) := by decide
  have heq : (652 : ZMod 53) ^ 13 = (649 : ZMod 53) ^ 13 := by decide
  have hne : (652 : ZMod 2809) ^ 13 ≠ (649 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 652 := by decide
  have hB : ¬ 53 ∣ 649 := by decide
  have hexp :=
    has_exp_one_of_zmod 649 652 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 649 652 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 649 652 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      649 652 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      649 652 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_664_667 :
    HasPrimeWithExpOne (S_val 664 667) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 664 667 ∧ ¬ p ∣ (667 - 664) ∧
      ∃ (hNotC : ¬ p ∣ 667) (hNotB : ¬ p ∣ 664),
        order_of_C_B_inv_mod_p2 667 664 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 664 667 := by
  have hlt : (664 : Nat) < 667 := by decide
  have hcop : ¬ 131 ∣ (667 - 664) := by decide
  have heq : (667 : ZMod 131) ^ 13 = (664 : ZMod 131) ^ 13 := by decide
  have hne : (667 : ZMod 17161) ^ 13 ≠ (664 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 667 := by decide
  have hB : ¬ 131 ∣ 664 := by decide
  have hexp :=
    has_exp_one_of_zmod 664 667 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 664 667 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 664 667 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      664 667 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      664 667 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_682_685 :
    HasPrimeWithExpOne (S_val 682 685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 682 685 ∧ ¬ p ∣ (685 - 682) ∧
      ∃ (hNotC : ¬ p ∣ 685) (hNotB : ¬ p ∣ 682),
        order_of_C_B_inv_mod_p2 685 682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 682 685 := by
  have hlt : (682 : Nat) < 685 := by decide
  have hcop : ¬ 53 ∣ (685 - 682) := by decide
  have heq : (685 : ZMod 53) ^ 13 = (682 : ZMod 53) ^ 13 := by decide
  have hne : (685 : ZMod 2809) ^ 13 ≠ (682 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 685 := by decide
  have hB : ¬ 53 ∣ 682 := by decide
  have hexp :=
    has_exp_one_of_zmod 682 685 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 682 685 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 682 685 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      682 685 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      682 685 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_698_701 :
    HasPrimeWithExpOne (S_val 698 701) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 698 701 ∧ ¬ p ∣ (701 - 698) ∧
      ∃ (hNotC : ¬ p ∣ 701) (hNotB : ¬ p ∣ 698),
        order_of_C_B_inv_mod_p2 701 698 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 698 701 := by
  have hlt : (698 : Nat) < 701 := by decide
  have hcop : ¬ 131 ∣ (701 - 698) := by decide
  have heq : (701 : ZMod 131) ^ 13 = (698 : ZMod 131) ^ 13 := by decide
  have hne : (701 : ZMod 17161) ^ 13 ≠ (698 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 701 := by decide
  have hB : ¬ 131 ∣ 698 := by decide
  have hexp :=
    has_exp_one_of_zmod 698 701 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 698 701 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 698 701 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      698 701 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      698 701 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_715_718 :
    HasPrimeWithExpOne (S_val 715 718) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 715 718 ∧ ¬ p ∣ (718 - 715) ∧
      ∃ (hNotC : ¬ p ∣ 718) (hNotB : ¬ p ∣ 715),
        order_of_C_B_inv_mod_p2 718 715 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 715 718 := by
  have hlt : (715 : Nat) < 718 := by decide
  have hcop : ¬ 131 ∣ (718 - 715) := by decide
  have heq : (718 : ZMod 131) ^ 13 = (715 : ZMod 131) ^ 13 := by decide
  have hne : (718 : ZMod 17161) ^ 13 ≠ (715 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 718 := by decide
  have hB : ¬ 131 ∣ 715 := by decide
  have hexp :=
    has_exp_one_of_zmod 715 718 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 715 718 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 715 718 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      715 718 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      715 718 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_733_736 :
    HasPrimeWithExpOne (S_val 733 736) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 733 736 ∧ ¬ p ∣ (736 - 733) ∧
      ∃ (hNotC : ¬ p ∣ 736) (hNotB : ¬ p ∣ 733),
        order_of_C_B_inv_mod_p2 736 733 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 733 736 := by
  have hlt : (733 : Nat) < 736 := by decide
  have hcop : ¬ 53 ∣ (736 - 733) := by decide
  have heq : (736 : ZMod 53) ^ 13 = (733 : ZMod 53) ^ 13 := by decide
  have hne : (736 : ZMod 2809) ^ 13 ≠ (733 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 736 := by decide
  have hB : ¬ 53 ∣ 733 := by decide
  have hexp :=
    has_exp_one_of_zmod 733 736 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 733 736 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 733 736 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      733 736 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      733 736 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_748_751 :
    HasPrimeWithExpOne (S_val 748 751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 748 751 ∧ ¬ p ∣ (751 - 748) ∧
      ∃ (hNotC : ¬ p ∣ 751) (hNotB : ¬ p ∣ 748),
        order_of_C_B_inv_mod_p2 751 748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 748 751 := by
  have hlt : (748 : Nat) < 751 := by decide
  have hcop : ¬ 53 ∣ (751 - 748) := by decide
  have heq : (751 : ZMod 53) ^ 13 = (748 : ZMod 53) ^ 13 := by decide
  have hne : (751 : ZMod 2809) ^ 13 ≠ (748 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 751 := by decide
  have hB : ¬ 53 ∣ 748 := by decide
  have hexp :=
    has_exp_one_of_zmod 748 751 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 748 751 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 748 751 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      748 751 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      748 751 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_763_766 :
    HasPrimeWithExpOne (S_val 763 766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 763 766 ∧ ¬ p ∣ (766 - 763) ∧
      ∃ (hNotC : ¬ p ∣ 766) (hNotB : ¬ p ∣ 763),
        order_of_C_B_inv_mod_p2 766 763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 763 766 := by
  have hlt : (763 : Nat) < 766 := by decide
  have hcop : ¬ 521 ∣ (766 - 763) := by decide
  have heq : (766 : ZMod 521) ^ 13 = (763 : ZMod 521) ^ 13 := by decide
  have hne : (766 : ZMod 271441) ^ 13 ≠ (763 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 766 := by decide
  have hB : ¬ 521 ∣ 763 := by decide
  have hexp :=
    has_exp_one_of_zmod 763 766 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 763 766 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 763 766 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      763 766 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      763 766 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_782_785 :
    HasPrimeWithExpOne (S_val 782 785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 782 785 ∧ ¬ p ∣ (785 - 782) ∧
      ∃ (hNotC : ¬ p ∣ 785) (hNotB : ¬ p ∣ 782),
        order_of_C_B_inv_mod_p2 785 782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 782 785 := by
  have hlt : (782 : Nat) < 785 := by decide
  have hcop : ¬ 53 ∣ (785 - 782) := by decide
  have heq : (785 : ZMod 53) ^ 13 = (782 : ZMod 53) ^ 13 := by decide
  have hne : (785 : ZMod 2809) ^ 13 ≠ (782 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 785 := by decide
  have hB : ¬ 53 ∣ 782 := by decide
  have hexp :=
    has_exp_one_of_zmod 782 785 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 782 785 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 782 785 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      782 785 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      782 785 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_802_805 :
    HasPrimeWithExpOne (S_val 802 805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 802 805 ∧ ¬ p ∣ (805 - 802) ∧
      ∃ (hNotC : ¬ p ∣ 805) (hNotB : ¬ p ∣ 802),
        order_of_C_B_inv_mod_p2 805 802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 802 805 := by
  have hlt : (802 : Nat) < 805 := by decide
  have hcop : ¬ 79 ∣ (805 - 802) := by decide
  have heq : (805 : ZMod 79) ^ 13 = (802 : ZMod 79) ^ 13 := by decide
  have hne : (805 : ZMod 6241) ^ 13 ≠ (802 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 805 := by decide
  have hB : ¬ 79 ∣ 802 := by decide
  have hexp :=
    has_exp_one_of_zmod 802 805 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 802 805 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 802 805 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      802 805 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      802 805 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_815_818 :
    HasPrimeWithExpOne (S_val 815 818) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 815 818 ∧ ¬ p ∣ (818 - 815) ∧
      ∃ (hNotC : ¬ p ∣ 818) (hNotB : ¬ p ∣ 815),
        order_of_C_B_inv_mod_p2 818 815 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 815 818 := by
  have hlt : (815 : Nat) < 818 := by decide
  have hcop : ¬ 521 ∣ (818 - 815) := by decide
  have heq : (818 : ZMod 521) ^ 13 = (815 : ZMod 521) ^ 13 := by decide
  have hne : (818 : ZMod 271441) ^ 13 ≠ (815 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 818 := by decide
  have hB : ¬ 521 ∣ 815 := by decide
  have hexp :=
    has_exp_one_of_zmod 815 818 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 815 818 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 815 818 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      815 818 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      815 818 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_835_838 :
    HasPrimeWithExpOne (S_val 835 838) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 835 838 ∧ ¬ p ∣ (838 - 835) ∧
      ∃ (hNotC : ¬ p ∣ 838) (hNotB : ¬ p ∣ 835),
        order_of_C_B_inv_mod_p2 838 835 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 835 838 := by
  have hlt : (835 : Nat) < 838 := by decide
  have hcop : ¬ 53 ∣ (838 - 835) := by decide
  have heq : (838 : ZMod 53) ^ 13 = (835 : ZMod 53) ^ 13 := by decide
  have hne : (838 : ZMod 2809) ^ 13 ≠ (835 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 838 := by decide
  have hB : ¬ 53 ∣ 835 := by decide
  have hexp :=
    has_exp_one_of_zmod 835 838 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 835 838 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 835 838 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      835 838 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      835 838 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_853_856 :
    HasPrimeWithExpOne (S_val 853 856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 853 856 ∧ ¬ p ∣ (856 - 853) ∧
      ∃ (hNotC : ¬ p ∣ 856) (hNotB : ¬ p ∣ 853),
        order_of_C_B_inv_mod_p2 856 853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 853 856 := by
  have hlt : (853 : Nat) < 856 := by decide
  have hcop : ¬ 53 ∣ (856 - 853) := by decide
  have heq : (856 : ZMod 53) ^ 13 = (853 : ZMod 53) ^ 13 := by decide
  have hne : (856 : ZMod 2809) ^ 13 ≠ (853 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 856 := by decide
  have hB : ¬ 53 ∣ 853 := by decide
  have hexp :=
    has_exp_one_of_zmod 853 856 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 853 856 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 853 856 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      853 856 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      853 856 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_878_881 :
    HasPrimeWithExpOne (S_val 878 881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 878 881 ∧ ¬ p ∣ (881 - 878) ∧
      ∃ (hNotC : ¬ p ∣ 881) (hNotB : ¬ p ∣ 878),
        order_of_C_B_inv_mod_p2 881 878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 878 881 := by
  have hlt : (878 : Nat) < 881 := by decide
  have hcop : ¬ 443 ∣ (881 - 878) := by decide
  have heq : (881 : ZMod 443) ^ 13 = (878 : ZMod 443) ^ 13 := by decide
  have hne : (881 : ZMod 196249) ^ 13 ≠ (878 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 881 := by decide
  have hB : ¬ 443 ∣ 878 := by decide
  have hexp :=
    has_exp_one_of_zmod 878 881 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 878 881 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 878 881 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      878 881 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      878 881 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_892_895 :
    HasPrimeWithExpOne (S_val 892 895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 892 895 ∧ ¬ p ∣ (895 - 892) ∧
      ∃ (hNotC : ¬ p ∣ 895) (hNotB : ¬ p ∣ 892),
        order_of_C_B_inv_mod_p2 895 892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 892 895 := by
  have hlt : (892 : Nat) < 895 := by decide
  have hcop : ¬ 53 ∣ (895 - 892) := by decide
  have heq : (895 : ZMod 53) ^ 13 = (892 : ZMod 53) ^ 13 := by decide
  have hne : (895 : ZMod 2809) ^ 13 ≠ (892 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 895 := by decide
  have hB : ¬ 53 ∣ 892 := by decide
  have hexp :=
    has_exp_one_of_zmod 892 895 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 892 895 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 892 895 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      892 895 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      892 895 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_914_917 :
    HasPrimeWithExpOne (S_val 914 917) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 914 917 ∧ ¬ p ∣ (917 - 914) ∧
      ∃ (hNotC : ¬ p ∣ 917) (hNotB : ¬ p ∣ 914),
        order_of_C_B_inv_mod_p2 917 914 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 914 917 := by
  have hlt : (914 : Nat) < 917 := by decide
  have hcop : ¬ 53 ∣ (917 - 914) := by decide
  have heq : (917 : ZMod 53) ^ 13 = (914 : ZMod 53) ^ 13 := by decide
  have hne : (917 : ZMod 2809) ^ 13 ≠ (914 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 917 := by decide
  have hB : ¬ 53 ∣ 914 := by decide
  have hexp :=
    has_exp_one_of_zmod 914 917 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 914 917 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 914 917 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      914 917 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      914 917 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_934_937 :
    HasPrimeWithExpOne (S_val 934 937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 934 937 ∧ ¬ p ∣ (937 - 934) ∧
      ∃ (hNotC : ¬ p ∣ 937) (hNotB : ¬ p ∣ 934),
        order_of_C_B_inv_mod_p2 937 934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 934 937 := by
  have hlt : (934 : Nat) < 937 := by decide
  have hcop : ¬ 599 ∣ (937 - 934) := by decide
  have heq : (937 : ZMod 599) ^ 13 = (934 : ZMod 599) ^ 13 := by decide
  have hne : (937 : ZMod 358801) ^ 13 ≠ (934 : ZMod 358801) ^ 13 := by decide
  have hC : ¬ 599 ∣ 937 := by decide
  have hB : ¬ 599 ∣ 934 := by decide
  have hexp :=
    has_exp_one_of_zmod 934 937 599 358801 hlt prime_599 sq_599 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 934 937 599 hlt prime_599 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 934 937 599 358801 hlt sq_599 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      934 937 599 prime_599 ne_13_599 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      934 937 599 prime_599 hdvd hcop ne_13_599 hlt hC hB hord
  exact ⟨hexp, ⟨599, prime_599, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_949_952 :
    HasPrimeWithExpOne (S_val 949 952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 949 952 ∧ ¬ p ∣ (952 - 949) ∧
      ∃ (hNotC : ¬ p ∣ 952) (hNotB : ¬ p ∣ 949),
        order_of_C_B_inv_mod_p2 952 949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 949 952 := by
  have hlt : (949 : Nat) < 952 := by decide
  have hcop : ¬ 599 ∣ (952 - 949) := by decide
  have heq : (952 : ZMod 599) ^ 13 = (949 : ZMod 599) ^ 13 := by decide
  have hne : (952 : ZMod 358801) ^ 13 ≠ (949 : ZMod 358801) ^ 13 := by decide
  have hC : ¬ 599 ∣ 952 := by decide
  have hB : ¬ 599 ∣ 949 := by decide
  have hexp :=
    has_exp_one_of_zmod 949 952 599 358801 hlt prime_599 sq_599 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 949 952 599 hlt prime_599 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 949 952 599 358801 hlt sq_599 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      949 952 599 prime_599 ne_13_599 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      949 952 599 prime_599 hdvd hcop ne_13_599 hlt hC hB hord
  exact ⟨hexp, ⟨599, prime_599, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_962_965 :
    HasPrimeWithExpOne (S_val 962 965) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 962 965 ∧ ¬ p ∣ (965 - 962) ∧
      ∃ (hNotC : ¬ p ∣ 965) (hNotB : ¬ p ∣ 962),
        order_of_C_B_inv_mod_p2 965 962 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 962 965 := by
  have hlt : (962 : Nat) < 965 := by decide
  have hcop : ¬ 79 ∣ (965 - 962) := by decide
  have heq : (965 : ZMod 79) ^ 13 = (962 : ZMod 79) ^ 13 := by decide
  have hne : (965 : ZMod 6241) ^ 13 ≠ (962 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 965 := by decide
  have hB : ¬ 79 ∣ 962 := by decide
  have hexp :=
    has_exp_one_of_zmod 962 965 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 962 965 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 962 965 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      962 965 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      962 965 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_985_988 :
    HasPrimeWithExpOne (S_val 985 988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 985 988 ∧ ¬ p ∣ (988 - 985) ∧
      ∃ (hNotC : ¬ p ∣ 988) (hNotB : ¬ p ∣ 985),
        order_of_C_B_inv_mod_p2 988 985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 985 988 := by
  have hlt : (985 : Nat) < 988 := by decide
  have hcop : ¬ 131 ∣ (988 - 985) := by decide
  have heq : (988 : ZMod 131) ^ 13 = (985 : ZMod 131) ^ 13 := by decide
  have hne : (988 : ZMod 17161) ^ 13 ≠ (985 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 988 := by decide
  have hB : ¬ 131 ∣ 985 := by decide
  have hexp :=
    has_exp_one_of_zmod 985 988 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 985 988 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 985 988 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      985 988 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      985 988 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_998_1001 :
    HasPrimeWithExpOne (S_val 998 1001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 998 1001 ∧ ¬ p ∣ (1001 - 998) ∧
      ∃ (hNotC : ¬ p ∣ 1001) (hNotB : ¬ p ∣ 998),
        order_of_C_B_inv_mod_p2 1001 998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 998 1001 := by
  have hlt : (998 : Nat) < 1001 := by decide
  have hcop : ¬ 53 ∣ (1001 - 998) := by decide
  have heq : (1001 : ZMod 53) ^ 13 = (998 : ZMod 53) ^ 13 := by decide
  have hne : (1001 : ZMod 2809) ^ 13 ≠ (998 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1001 := by decide
  have hB : ¬ 53 ∣ 998 := by decide
  have hexp :=
    has_exp_one_of_zmod 998 1001 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 998 1001 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 998 1001 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      998 1001 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      998 1001 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1000_1003 :
    HasPrimeWithExpOne (S_val 1000 1003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1000 1003 ∧ ¬ p ∣ (1003 - 1000) ∧
      ∃ (hNotC : ¬ p ∣ 1003) (hNotB : ¬ p ∣ 1000),
        order_of_C_B_inv_mod_p2 1003 1000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1000 1003 := by
  have hlt : (1000 : Nat) < 1003 := by decide
  have hcop : ¬ 53 ∣ (1003 - 1000) := by decide
  have heq : (1003 : ZMod 53) ^ 13 = (1000 : ZMod 53) ^ 13 := by decide
  have hne : (1003 : ZMod 2809) ^ 13 ≠ (1000 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1003 := by decide
  have hB : ¬ 53 ∣ 1000 := by decide
  have hexp :=
    has_exp_one_of_zmod 1000 1003 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1000 1003 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1000 1003 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1000 1003 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1000 1003 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-- Sixty-four named `B ≤ 1000` gap-3 rows.
Not a `∀`. -/
theorem S_has_prime_with_exp_one_B_le_1000_table_rows :
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
    HasPrimeWithExpOne (S_val 1000 1003) :=
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
    row_1000_1003.1⟩
/-- Sixty-four named rows have a primitive
prime with order ≠ 13.  Not a `∀`. -/
theorem exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows :
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
        order_of_C_B_inv_mod_p2 1003 1000 p hp hNotC hNotB ≠ 13) :=
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
    row_1000_1003.2.1⟩
/-- Sixty-four named rows have `S` not a
fourth power.  Not a `∀`. -/
theorem S_not_fourth_B_le_1000_from_exp_one_table_rows :
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
    S_not_fourth 1000 1003 :=
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
    row_1000_1003.2.2⟩
/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; 64 rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower
      (S_val B C)

/-- Uninhabited.  64 rows are not every `B ≤ 1000`.
`B > 1000` needs Bugeaud–Corvaja–Zannier. -/
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
#check S_has_prime_with_exp_one_B_le_1000_table_rows
#check exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows
#check S_not_fourth_B_le_1000_from_exp_one_table_rows
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_has_prime_with_exp_one_B_le_1000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_1000_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension
