/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.39.0 — B ≤ 50000 exp-one
extension (188 named gap-3 rows, not a ∀).

Extends the B ≤ 10000 table to
named computational pairs with B ≤ 50000
and C = B+3 (inherited (1,4) and
(10000,10003) keep their witnesses).
Each has a prime p with p | S, p ∤ (C-B),
p² ∤ S, so the Step11 dichotomy gives
order ≠ 13 and S_not_fourth.

This is not every B ≤ 50000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 50000 squarefull
rarity is Bugeaud-type, also a Prop.
The Ljunggren ∀ stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 4000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension

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
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension
  (prime_157 sq_157 ne_13_157
    prime_677 sq_677 ne_13_677
    prime_1613 sq_1613 ne_13_1613)

/-! ## Extra small primes (numerals; `decide` only) -/
theorem prime_859 : Nat.Prime 859 := by decide
theorem sq_859 : (737881 : Nat) = 859 * 859 := by decide
theorem ne_13_859 : (859 : Nat) ≠ 13 := by decide

theorem prime_911 : Nat.Prime 911 := by decide
theorem sq_911 : (829921 : Nat) = 911 * 911 := by decide
theorem ne_13_911 : (911 : Nat) ≠ 13 := by decide

theorem prime_937 : Nat.Prime 937 := by decide
theorem sq_937 : (877969 : Nat) = 937 * 937 := by decide
theorem ne_13_937 : (937 : Nat) ≠ 13 := by decide

theorem prime_1093 : Nat.Prime 1093 := by decide
theorem sq_1093 : (1194649 : Nat) = 1093 * 1093 := by decide
theorem ne_13_1093 : (1093 : Nat) ≠ 13 := by decide

theorem prime_1171 : Nat.Prime 1171 := by decide
theorem sq_1171 : (1371241 : Nat) = 1171 * 1171 := by decide
theorem ne_13_1171 : (1171 : Nat) ≠ 13 := by decide

theorem prime_1249 : Nat.Prime 1249 := by decide
theorem sq_1249 : (1560001 : Nat) = 1249 * 1249 := by decide
theorem ne_13_1249 : (1249 : Nat) ≠ 13 := by decide

theorem prime_1301 : Nat.Prime 1301 := by decide
theorem sq_1301 : (1692601 : Nat) = 1301 * 1301 := by decide
theorem ne_13_1301 : (1301 : Nat) ≠ 13 := by decide

theorem prime_1327 : Nat.Prime 1327 := by decide
theorem sq_1327 : (1760929 : Nat) = 1327 * 1327 := by decide
theorem ne_13_1327 : (1327 : Nat) ≠ 13 := by decide

theorem prime_1483 : Nat.Prime 1483 := by decide
theorem sq_1483 : (2199289 : Nat) = 1483 * 1483 := by decide
theorem ne_13_1483 : (1483 : Nat) ≠ 13 := by decide

/-! ## One hundred eighty-eight named rows -/
theorem row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.row_1_4
theorem row_196_199 :
    HasPrimeWithExpOne (S_val 196 199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196 199 := by
  have hlt : (196 : Nat) < 199 := by decide
  have hcop : ¬ 53 ∣ (199 - 196) := by decide
  have heq : (199 : ZMod 53) ^ 13 = (196 : ZMod 53) ^ 13 := by decide
  have hne : (199 : ZMod 2809) ^ 13 ≠ (196 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 199 := by decide
  have hB : ¬ 53 ∣ 196 := by decide
  have hexp :=
    has_exp_one_of_zmod 196 199 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 196 199 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 196 199 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      196 199 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      196 199 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_386_389 :
    HasPrimeWithExpOne (S_val 386 389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386 389 := by
  have hlt : (386 : Nat) < 389 := by decide
  have hcop : ¬ 521 ∣ (389 - 386) := by decide
  have heq : (389 : ZMod 521) ^ 13 = (386 : ZMod 521) ^ 13 := by decide
  have hne : (389 : ZMod 271441) ^ 13 ≠ (386 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 389 := by decide
  have hB : ¬ 521 ∣ 386 := by decide
  have hexp :=
    has_exp_one_of_zmod 386 389 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 386 389 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 386 389 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      386 389 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      386 389 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_587_590 :
    HasPrimeWithExpOne (S_val 587 590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 587 590 := by
  have hlt : (587 : Nat) < 590 := by decide
  have hcop : ¬ 53 ∣ (590 - 587) := by decide
  have heq : (590 : ZMod 53) ^ 13 = (587 : ZMod 53) ^ 13 := by decide
  have hne : (590 : ZMod 2809) ^ 13 ≠ (587 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 590 := by decide
  have hB : ¬ 53 ∣ 587 := by decide
  have hexp :=
    has_exp_one_of_zmod 587 590 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 587 590 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 587 590 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      587 590 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      587 590 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1171_1174 :
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1171 1174 := by
  have hlt : (1171 : Nat) < 1174 := by decide
  have hcop : ¬ 53 ∣ (1174 - 1171) := by decide
  have heq : (1174 : ZMod 53) ^ 13 = (1171 : ZMod 53) ^ 13 := by decide
  have hne : (1174 : ZMod 2809) ^ 13 ≠ (1171 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 1174 := by decide
  have hB : ¬ 53 ∣ 1171 := by decide
  have hexp :=
    has_exp_one_of_zmod 1171 1174 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1171 1174 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1171 1174 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1171 1174 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1171 1174 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1366_1369 :
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1366 1369 := by
  have hlt : (1366 : Nat) < 1369 := by decide
  have hcop : ¬ 79 ∣ (1369 - 1366) := by decide
  have heq : (1369 : ZMod 79) ^ 13 = (1366 : ZMod 79) ^ 13 := by decide
  have hne : (1369 : ZMod 6241) ^ 13 ≠ (1366 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 1369 := by decide
  have hB : ¬ 79 ∣ 1366 := by decide
  have hexp :=
    has_exp_one_of_zmod 1366 1369 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1366 1369 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1366 1369 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1366 1369 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1366 1369 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1559_1562 :
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1559 1562 := by
  have hlt : (1559 : Nat) < 1562 := by decide
  have hcop : ¬ 79 ∣ (1562 - 1559) := by decide
  have heq : (1562 : ZMod 79) ^ 13 = (1559 : ZMod 79) ^ 13 := by decide
  have hne : (1562 : ZMod 6241) ^ 13 ≠ (1559 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 1562 := by decide
  have hB : ¬ 79 ∣ 1559 := by decide
  have hexp :=
    has_exp_one_of_zmod 1559 1562 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1559 1562 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1559 1562 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1559 1562 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1559 1562 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_1756_1759 :
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1756 1759 := by
  have hlt : (1756 : Nat) < 1759 := by decide
  have hcop : ¬ 79 ∣ (1759 - 1756) := by decide
  have heq : (1759 : ZMod 79) ^ 13 = (1756 : ZMod 79) ^ 13 := by decide
  have hne : (1759 : ZMod 6241) ^ 13 ≠ (1756 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 1759 := by decide
  have hB : ¬ 79 ∣ 1756 := by decide
  have hexp :=
    has_exp_one_of_zmod 1756 1759 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 1756 1759 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 1756 1759 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      1756 1759 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      1756 1759 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2146_2149 :
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2146 2149 := by
  have hlt : (2146 : Nat) < 2149 := by decide
  have hcop : ¬ 79 ∣ (2149 - 2146) := by decide
  have heq : (2149 : ZMod 79) ^ 13 = (2146 : ZMod 79) ^ 13 := by decide
  have hne : (2149 : ZMod 6241) ^ 13 ≠ (2146 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 2149 := by decide
  have hB : ¬ 79 ∣ 2146 := by decide
  have hexp :=
    has_exp_one_of_zmod 2146 2149 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2146 2149 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2146 2149 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2146 2149 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2146 2149 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2536_2539 :
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2536 2539 := by
  have hlt : (2536 : Nat) < 2539 := by decide
  have hcop : ¬ 53 ∣ (2539 - 2536) := by decide
  have heq : (2539 : ZMod 53) ^ 13 = (2536 : ZMod 53) ^ 13 := by decide
  have hne : (2539 : ZMod 2809) ^ 13 ≠ (2536 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 2539 := by decide
  have hB : ¬ 53 ∣ 2536 := by decide
  have hexp :=
    has_exp_one_of_zmod 2536 2539 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2536 2539 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2536 2539 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2536 2539 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2536 2539 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_2731_2734 :
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2731 2734 := by
  have hlt : (2731 : Nat) < 2734 := by decide
  have hcop : ¬ 599 ∣ (2734 - 2731) := by decide
  have heq : (2734 : ZMod 599) ^ 13 = (2731 : ZMod 599) ^ 13 := by decide
  have hne : (2734 : ZMod 358801) ^ 13 ≠ (2731 : ZMod 358801) ^ 13 := by decide
  have hC : ¬ 599 ∣ 2734 := by decide
  have hB : ¬ 599 ∣ 2731 := by decide
  have hexp :=
    has_exp_one_of_zmod 2731 2734 599 358801 hlt prime_599 sq_599 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 2731 2734 599 hlt prime_599 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 2731 2734 599 358801 hlt sq_599 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      2731 2734 599 prime_599 ne_13_599 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      2731 2734 599 prime_599 hdvd hcop ne_13_599 hlt hC hB hord
  exact ⟨hexp, ⟨599, prime_599, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3313_3316 :
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3313 3316 := by
  have hlt : (3313 : Nat) < 3316 := by decide
  have hcop : ¬ 131 ∣ (3316 - 3313) := by decide
  have heq : (3316 : ZMod 131) ^ 13 = (3313 : ZMod 131) ^ 13 := by decide
  have hne : (3316 : ZMod 17161) ^ 13 ≠ (3313 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 3316 := by decide
  have hB : ¬ 131 ∣ 3313 := by decide
  have hexp :=
    has_exp_one_of_zmod 3313 3316 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3313 3316 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3313 3316 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3313 3316 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3313 3316 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3511_3514 :
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3511 3514 := by
  have hlt : (3511 : Nat) < 3514 := by decide
  have hcop : ¬ 53 ∣ (3514 - 3511) := by decide
  have heq : (3514 : ZMod 53) ^ 13 = (3511 : ZMod 53) ^ 13 := by decide
  have hne : (3514 : ZMod 2809) ^ 13 ≠ (3511 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3514 := by decide
  have hB : ¬ 53 ∣ 3511 := by decide
  have hexp :=
    has_exp_one_of_zmod 3511 3514 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3511 3514 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3511 3514 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3511 3514 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3511 3514 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3706_3709 :
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3706 3709 := by
  have hlt : (3706 : Nat) < 3709 := by decide
  have hcop : ¬ 131 ∣ (3709 - 3706) := by decide
  have heq : (3709 : ZMod 131) ^ 13 = (3706 : ZMod 131) ^ 13 := by decide
  have hne : (3709 : ZMod 17161) ^ 13 ≠ (3706 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 3709 := by decide
  have hB : ¬ 131 ∣ 3706 := by decide
  have hexp :=
    has_exp_one_of_zmod 3706 3709 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3706 3709 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3706 3709 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3706 3709 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3706 3709 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_3901_3904 :
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3901 3904 := by
  have hlt : (3901 : Nat) < 3904 := by decide
  have hcop : ¬ 53 ∣ (3904 - 3901) := by decide
  have heq : (3904 : ZMod 53) ^ 13 = (3901 : ZMod 53) ^ 13 := by decide
  have hne : (3904 : ZMod 2809) ^ 13 ≠ (3901 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 3904 := by decide
  have hB : ¬ 53 ∣ 3901 := by decide
  have hexp :=
    has_exp_one_of_zmod 3901 3904 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 3901 3904 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 3901 3904 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      3901 3904 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      3901 3904 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4682_4685 :
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4682 4685 := by
  have hlt : (4682 : Nat) < 4685 := by decide
  have hcop : ¬ 53 ∣ (4685 - 4682) := by decide
  have heq : (4685 : ZMod 53) ^ 13 = (4682 : ZMod 53) ^ 13 := by decide
  have hne : (4685 : ZMod 2809) ^ 13 ≠ (4682 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 4685 := by decide
  have hB : ¬ 53 ∣ 4682 := by decide
  have hexp :=
    has_exp_one_of_zmod 4682 4685 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4682 4685 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4682 4685 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4682 4685 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4682 4685 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_4876_4879 :
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4876 4879 := by
  have hlt : (4876 : Nat) < 4879 := by decide
  have hcop : ¬ 677 ∣ (4879 - 4876) := by decide
  have heq : (4879 : ZMod 677) ^ 13 = (4876 : ZMod 677) ^ 13 := by decide
  have hne : (4879 : ZMod 458329) ^ 13 ≠ (4876 : ZMod 458329) ^ 13 := by decide
  have hC : ¬ 677 ∣ 4879 := by decide
  have hB : ¬ 677 ∣ 4876 := by decide
  have hexp :=
    has_exp_one_of_zmod 4876 4879 677 458329 hlt prime_677 sq_677 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 4876 4879 677 hlt prime_677 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 4876 4879 677 458329 hlt sq_677 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      4876 4879 677 prime_677 ne_13_677 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      4876 4879 677 prime_677 hdvd hcop ne_13_677 hlt hC hB hord
  exact ⟨hexp, ⟨677, prime_677, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5071_5074 :
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5071 5074 := by
  have hlt : (5071 : Nat) < 5074 := by decide
  have hcop : ¬ 547 ∣ (5074 - 5071) := by decide
  have heq : (5074 : ZMod 547) ^ 13 = (5071 : ZMod 547) ^ 13 := by decide
  have hne : (5074 : ZMod 299209) ^ 13 ≠ (5071 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 5074 := by decide
  have hB : ¬ 547 ∣ 5071 := by decide
  have hexp :=
    has_exp_one_of_zmod 5071 5074 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5071 5074 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5071 5074 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5071 5074 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5071 5074 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5461_5464 :
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5461 5464 := by
  have hlt : (5461 : Nat) < 5464 := by decide
  have hcop : ¬ 131 ∣ (5464 - 5461) := by decide
  have heq : (5464 : ZMod 131) ^ 13 = (5461 : ZMod 131) ^ 13 := by decide
  have hne : (5464 : ZMod 17161) ^ 13 ≠ (5461 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 5464 := by decide
  have hB : ¬ 131 ∣ 5461 := by decide
  have hexp :=
    has_exp_one_of_zmod 5461 5464 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5461 5464 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5461 5464 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5461 5464 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5461 5464 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_5849_5852 :
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5849 5852 := by
  have hlt : (5849 : Nat) < 5852 := by decide
  have hcop : ¬ 131 ∣ (5852 - 5849) := by decide
  have heq : (5852 : ZMod 131) ^ 13 = (5849 : ZMod 131) ^ 13 := by decide
  have hne : (5852 : ZMod 17161) ^ 13 ≠ (5849 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 5852 := by decide
  have hB : ¬ 131 ∣ 5849 := by decide
  have hexp :=
    has_exp_one_of_zmod 5849 5852 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 5849 5852 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 5849 5852 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      5849 5852 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      5849 5852 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6046_6049 :
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6046 6049 := by
  have hlt : (6046 : Nat) < 6049 := by decide
  have hcop : ¬ 79 ∣ (6049 - 6046) := by decide
  have heq : (6049 : ZMod 79) ^ 13 = (6046 : ZMod 79) ^ 13 := by decide
  have hne : (6049 : ZMod 6241) ^ 13 ≠ (6046 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 6049 := by decide
  have hB : ¬ 79 ∣ 6046 := by decide
  have hexp :=
    has_exp_one_of_zmod 6046 6049 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6046 6049 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6046 6049 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6046 6049 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6046 6049 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6241_6244 :
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6241 6244 := by
  have hlt : (6241 : Nat) < 6244 := by decide
  have hcop : ¬ 53 ∣ (6244 - 6241) := by decide
  have heq : (6244 : ZMod 53) ^ 13 = (6241 : ZMod 53) ^ 13 := by decide
  have hne : (6244 : ZMod 2809) ^ 13 ≠ (6241 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6244 := by decide
  have hB : ¬ 53 ∣ 6241 := by decide
  have hexp :=
    has_exp_one_of_zmod 6241 6244 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6241 6244 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6241 6244 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6241 6244 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6241 6244 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_6631_6634 :
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6631 6634 := by
  have hlt : (6631 : Nat) < 6634 := by decide
  have hcop : ¬ 53 ∣ (6634 - 6631) := by decide
  have heq : (6634 : ZMod 53) ^ 13 = (6631 : ZMod 53) ^ 13 := by decide
  have hne : (6634 : ZMod 2809) ^ 13 ≠ (6631 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 6634 := by decide
  have hB : ¬ 53 ∣ 6631 := by decide
  have hexp :=
    has_exp_one_of_zmod 6631 6634 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 6631 6634 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 6631 6634 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      6631 6634 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      6631 6634 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7411_7414 :
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7411 7414 := by
  have hlt : (7411 : Nat) < 7414 := by decide
  have hcop : ¬ 53 ∣ (7414 - 7411) := by decide
  have heq : (7414 : ZMod 53) ^ 13 = (7411 : ZMod 53) ^ 13 := by decide
  have hne : (7414 : ZMod 2809) ^ 13 ≠ (7411 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7414 := by decide
  have hB : ¬ 53 ∣ 7411 := by decide
  have hexp :=
    has_exp_one_of_zmod 7411 7414 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7411 7414 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7411 7414 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7411 7414 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7411 7414 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7606_7609 :
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7606 7609 := by
  have hlt : (7606 : Nat) < 7609 := by decide
  have hcop : ¬ 157 ∣ (7609 - 7606) := by decide
  have heq : (7609 : ZMod 157) ^ 13 = (7606 : ZMod 157) ^ 13 := by decide
  have hne : (7609 : ZMod 24649) ^ 13 ≠ (7606 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 7609 := by decide
  have hB : ¬ 157 ∣ 7606 := by decide
  have hexp :=
    has_exp_one_of_zmod 7606 7609 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7606 7609 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7606 7609 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7606 7609 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7606 7609 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7801_7804 :
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7801 7804 := by
  have hlt : (7801 : Nat) < 7804 := by decide
  have hcop : ¬ 53 ∣ (7804 - 7801) := by decide
  have heq : (7804 : ZMod 53) ^ 13 = (7801 : ZMod 53) ^ 13 := by decide
  have hne : (7804 : ZMod 2809) ^ 13 ≠ (7801 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 7804 := by decide
  have hB : ¬ 53 ∣ 7801 := by decide
  have hexp :=
    has_exp_one_of_zmod 7801 7804 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7801 7804 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7801 7804 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7801 7804 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7801 7804 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_7997_8000 :
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7997 8000 := by
  have hlt : (7997 : Nat) < 8000 := by decide
  have hcop : ¬ 79 ∣ (8000 - 7997) := by decide
  have heq : (8000 : ZMod 79) ^ 13 = (7997 : ZMod 79) ^ 13 := by decide
  have hne : (8000 : ZMod 6241) ^ 13 ≠ (7997 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 8000 := by decide
  have hB : ¬ 79 ∣ 7997 := by decide
  have hexp :=
    has_exp_one_of_zmod 7997 8000 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 7997 8000 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 7997 8000 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      7997 8000 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      7997 8000 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8194_8197 :
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8194 8197 := by
  have hlt : (8194 : Nat) < 8197 := by decide
  have hcop : ¬ 53 ∣ (8197 - 8194) := by decide
  have heq : (8197 : ZMod 53) ^ 13 = (8194 : ZMod 53) ^ 13 := by decide
  have hne : (8197 : ZMod 2809) ^ 13 ≠ (8194 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 8197 := by decide
  have hB : ¬ 53 ∣ 8194 := by decide
  have hexp :=
    has_exp_one_of_zmod 8194 8197 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8194 8197 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8194 8197 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8194 8197 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8194 8197 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_8582_8585 :
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8582 8585 := by
  have hlt : (8582 : Nat) < 8585 := by decide
  have hcop : ¬ 157 ∣ (8585 - 8582) := by decide
  have heq : (8585 : ZMod 157) ^ 13 = (8582 : ZMod 157) ^ 13 := by decide
  have hne : (8585 : ZMod 24649) ^ 13 ≠ (8582 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 8585 := by decide
  have hB : ¬ 157 ∣ 8582 := by decide
  have hexp :=
    has_exp_one_of_zmod 8582 8585 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 8582 8585 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 8582 8585 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      8582 8585 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      8582 8585 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9163_9166 :
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9163 9166 := by
  have hlt : (9163 : Nat) < 9166 := by decide
  have hcop : ¬ 677 ∣ (9166 - 9163) := by decide
  have heq : (9166 : ZMod 677) ^ 13 = (9163 : ZMod 677) ^ 13 := by decide
  have hne : (9166 : ZMod 458329) ^ 13 ≠ (9163 : ZMod 458329) ^ 13 := by decide
  have hC : ¬ 677 ∣ 9166 := by decide
  have hB : ¬ 677 ∣ 9163 := by decide
  have hexp :=
    has_exp_one_of_zmod 9163 9166 677 458329 hlt prime_677 sq_677 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9163 9166 677 hlt prime_677 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9163 9166 677 458329 hlt sq_677 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9163 9166 677 prime_677 ne_13_677 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9163 9166 677 prime_677 hdvd hcop ne_13_677 hlt hC hB hord
  exact ⟨hexp, ⟨677, prime_677, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9361_9364 :
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9361 9364 := by
  have hlt : (9361 : Nat) < 9364 := by decide
  have hcop : ¬ 131 ∣ (9364 - 9361) := by decide
  have heq : (9364 : ZMod 131) ^ 13 = (9361 : ZMod 131) ^ 13 := by decide
  have hne : (9364 : ZMod 17161) ^ 13 ≠ (9361 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 9364 := by decide
  have hB : ¬ 131 ∣ 9361 := by decide
  have hexp :=
    has_exp_one_of_zmod 9361 9364 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9361 9364 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9361 9364 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9361 9364 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9361 9364 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_9751_9754 :
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9751 9754 := by
  have hlt : (9751 : Nat) < 9754 := by decide
  have hcop : ¬ 79 ∣ (9754 - 9751) := by decide
  have heq : (9754 : ZMod 79) ^ 13 = (9751 : ZMod 79) ^ 13 := by decide
  have hne : (9754 : ZMod 6241) ^ 13 ≠ (9751 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 9754 := by decide
  have hB : ¬ 79 ∣ 9751 := by decide
  have hexp :=
    has_exp_one_of_zmod 9751 9754 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 9751 9754 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 9751 9754 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      9751 9754 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      9751 9754 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.row_10000_10003
theorem row_10141_10144 :
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10141 10144 := by
  have hlt : (10141 : Nat) < 10144 := by decide
  have hcop : ¬ 53 ∣ (10144 - 10141) := by decide
  have heq : (10144 : ZMod 53) ^ 13 = (10141 : ZMod 53) ^ 13 := by decide
  have hne : (10144 : ZMod 2809) ^ 13 ≠ (10141 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 10144 := by decide
  have hB : ¬ 53 ∣ 10141 := by decide
  have hexp :=
    has_exp_one_of_zmod 10141 10144 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 10141 10144 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 10141 10144 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      10141 10144 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      10141 10144 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_10531_10534 :
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10531 10534 := by
  have hlt : (10531 : Nat) < 10534 := by decide
  have hcop : ¬ 53 ∣ (10534 - 10531) := by decide
  have heq : (10534 : ZMod 53) ^ 13 = (10531 : ZMod 53) ^ 13 := by decide
  have hne : (10534 : ZMod 2809) ^ 13 ≠ (10531 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 10534 := by decide
  have hB : ¬ 53 ∣ 10531 := by decide
  have hexp :=
    has_exp_one_of_zmod 10531 10534 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 10531 10534 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 10531 10534 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      10531 10534 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      10531 10534 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_10726_10729 :
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10726 10729 := by
  have hlt : (10726 : Nat) < 10729 := by decide
  have hcop : ¬ 157 ∣ (10729 - 10726) := by decide
  have heq : (10729 : ZMod 157) ^ 13 = (10726 : ZMod 157) ^ 13 := by decide
  have hne : (10729 : ZMod 24649) ^ 13 ≠ (10726 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 10729 := by decide
  have hB : ¬ 157 ∣ 10726 := by decide
  have hexp :=
    has_exp_one_of_zmod 10726 10729 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 10726 10729 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 10726 10729 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      10726 10729 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      10726 10729 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_11311_11314 :
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11311 11314 := by
  have hlt : (11311 : Nat) < 11314 := by decide
  have hcop : ¬ 79 ∣ (11314 - 11311) := by decide
  have heq : (11314 : ZMod 79) ^ 13 = (11311 : ZMod 79) ^ 13 := by decide
  have hne : (11314 : ZMod 6241) ^ 13 ≠ (11311 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 11314 := by decide
  have hB : ¬ 79 ∣ 11311 := by decide
  have hexp :=
    has_exp_one_of_zmod 11311 11314 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 11311 11314 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 11311 11314 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      11311 11314 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      11311 11314 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_11506_11509 :
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11506 11509 := by
  have hlt : (11506 : Nat) < 11509 := by decide
  have hcop : ¬ 53 ∣ (11509 - 11506) := by decide
  have heq : (11509 : ZMod 53) ^ 13 = (11506 : ZMod 53) ^ 13 := by decide
  have hne : (11509 : ZMod 2809) ^ 13 ≠ (11506 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 11509 := by decide
  have hB : ¬ 53 ∣ 11506 := by decide
  have hexp :=
    has_exp_one_of_zmod 11506 11509 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 11506 11509 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 11506 11509 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      11506 11509 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      11506 11509 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_11896_11899 :
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11896 11899 := by
  have hlt : (11896 : Nat) < 11899 := by decide
  have hcop : ¬ 157 ∣ (11899 - 11896) := by decide
  have heq : (11899 : ZMod 157) ^ 13 = (11896 : ZMod 157) ^ 13 := by decide
  have hne : (11899 : ZMod 24649) ^ 13 ≠ (11896 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 11899 := by decide
  have hB : ¬ 157 ∣ 11896 := by decide
  have hexp :=
    has_exp_one_of_zmod 11896 11899 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 11896 11899 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 11896 11899 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      11896 11899 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      11896 11899 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_12091_12094 :
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12091 12094 := by
  have hlt : (12091 : Nat) < 12094 := by decide
  have hcop : ¬ 1093 ∣ (12094 - 12091) := by decide
  have heq : (12094 : ZMod 1093) ^ 13 = (12091 : ZMod 1093) ^ 13 := by decide
  have hne : (12094 : ZMod 1194649) ^ 13 ≠ (12091 : ZMod 1194649) ^ 13 := by decide
  have hC : ¬ 1093 ∣ 12094 := by decide
  have hB : ¬ 1093 ∣ 12091 := by decide
  have hexp :=
    has_exp_one_of_zmod 12091 12094 1093 1194649 hlt prime_1093 sq_1093 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 12091 12094 1093 hlt prime_1093 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 12091 12094 1093 1194649 hlt sq_1093 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      12091 12094 1093 prime_1093 ne_13_1093 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      12091 12094 1093 prime_1093 hdvd hcop ne_13_1093 hlt hC hB hord
  exact ⟨hexp, ⟨1093, prime_1093, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_12871_12874 :
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12871 12874 := by
  have hlt : (12871 : Nat) < 12874 := by decide
  have hcop : ¬ 53 ∣ (12874 - 12871) := by decide
  have heq : (12874 : ZMod 53) ^ 13 = (12871 : ZMod 53) ^ 13 := by decide
  have hne : (12874 : ZMod 2809) ^ 13 ≠ (12871 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 12874 := by decide
  have hB : ¬ 53 ∣ 12871 := by decide
  have hexp :=
    has_exp_one_of_zmod 12871 12874 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 12871 12874 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 12871 12874 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      12871 12874 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      12871 12874 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_13066_13069 :
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13066 13069 := by
  have hlt : (13066 : Nat) < 13069 := by decide
  have hcop : ¬ 313 ∣ (13069 - 13066) := by decide
  have heq : (13069 : ZMod 313) ^ 13 = (13066 : ZMod 313) ^ 13 := by decide
  have hne : (13069 : ZMod 97969) ^ 13 ≠ (13066 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 13069 := by decide
  have hB : ¬ 313 ∣ 13066 := by decide
  have hexp :=
    has_exp_one_of_zmod 13066 13069 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 13066 13069 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 13066 13069 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      13066 13069 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      13066 13069 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_13258_13261 :
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13258 13261 := by
  have hlt : (13258 : Nat) < 13261 := by decide
  have hcop : ¬ 157 ∣ (13261 - 13258) := by decide
  have heq : (13261 : ZMod 157) ^ 13 = (13258 : ZMod 157) ^ 13 := by decide
  have hne : (13261 : ZMod 24649) ^ 13 ≠ (13258 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 13261 := by decide
  have hB : ¬ 157 ∣ 13258 := by decide
  have hexp :=
    has_exp_one_of_zmod 13258 13261 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 13258 13261 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 13258 13261 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      13258 13261 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      13258 13261 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_13457_13460 :
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13457 13460 := by
  have hlt : (13457 : Nat) < 13460 := by decide
  have hcop : ¬ 911 ∣ (13460 - 13457) := by decide
  have heq : (13460 : ZMod 911) ^ 13 = (13457 : ZMod 911) ^ 13 := by decide
  have hne : (13460 : ZMod 829921) ^ 13 ≠ (13457 : ZMod 829921) ^ 13 := by decide
  have hC : ¬ 911 ∣ 13460 := by decide
  have hB : ¬ 911 ∣ 13457 := by decide
  have hexp :=
    has_exp_one_of_zmod 13457 13460 911 829921 hlt prime_911 sq_911 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 13457 13460 911 hlt prime_911 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 13457 13460 911 829921 hlt sq_911 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      13457 13460 911 prime_911 ne_13_911 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      13457 13460 911 prime_911 hdvd hcop ne_13_911 hlt hC hB hord
  exact ⟨hexp, ⟨911, prime_911, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_13651_13654 :
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13651 13654 := by
  have hlt : (13651 : Nat) < 13654 := by decide
  have hcop : ¬ 79 ∣ (13654 - 13651) := by decide
  have heq : (13654 : ZMod 79) ^ 13 = (13651 : ZMod 79) ^ 13 := by decide
  have hne : (13654 : ZMod 6241) ^ 13 ≠ (13651 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 13654 := by decide
  have hB : ¬ 79 ∣ 13651 := by decide
  have hexp :=
    has_exp_one_of_zmod 13651 13654 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 13651 13654 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 13651 13654 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      13651 13654 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      13651 13654 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_13846_13849 :
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13846 13849 := by
  have hlt : (13846 : Nat) < 13849 := by decide
  have hcop : ¬ 53 ∣ (13849 - 13846) := by decide
  have heq : (13849 : ZMod 53) ^ 13 = (13846 : ZMod 53) ^ 13 := by decide
  have hne : (13849 : ZMod 2809) ^ 13 ≠ (13846 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 13849 := by decide
  have hB : ¬ 53 ∣ 13846 := by decide
  have hexp :=
    has_exp_one_of_zmod 13846 13849 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 13846 13849 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 13846 13849 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      13846 13849 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      13846 13849 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_14041_14044 :
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14041 14044 := by
  have hlt : (14041 : Nat) < 14044 := by decide
  have hcop : ¬ 79 ∣ (14044 - 14041) := by decide
  have heq : (14044 : ZMod 79) ^ 13 = (14041 : ZMod 79) ^ 13 := by decide
  have hne : (14044 : ZMod 6241) ^ 13 ≠ (14041 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 14044 := by decide
  have hB : ¬ 79 ∣ 14041 := by decide
  have hexp :=
    has_exp_one_of_zmod 14041 14044 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 14041 14044 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 14041 14044 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      14041 14044 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      14041 14044 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_14236_14239 :
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14236 14239 := by
  have hlt : (14236 : Nat) < 14239 := by decide
  have hcop : ¬ 53 ∣ (14239 - 14236) := by decide
  have heq : (14239 : ZMod 53) ^ 13 = (14236 : ZMod 53) ^ 13 := by decide
  have hne : (14239 : ZMod 2809) ^ 13 ≠ (14236 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 14239 := by decide
  have hB : ¬ 53 ∣ 14236 := by decide
  have hexp :=
    has_exp_one_of_zmod 14236 14239 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 14236 14239 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 14236 14239 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      14236 14239 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      14236 14239 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_14431_14434 :
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14431 14434 := by
  have hlt : (14431 : Nat) < 14434 := by decide
  have hcop : ¬ 79 ∣ (14434 - 14431) := by decide
  have heq : (14434 : ZMod 79) ^ 13 = (14431 : ZMod 79) ^ 13 := by decide
  have hne : (14434 : ZMod 6241) ^ 13 ≠ (14431 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 14434 := by decide
  have hB : ¬ 79 ∣ 14431 := by decide
  have hexp :=
    has_exp_one_of_zmod 14431 14434 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 14431 14434 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 14431 14434 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      14431 14434 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      14431 14434 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_14626_14629 :
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14626 14629 := by
  have hlt : (14626 : Nat) < 14629 := by decide
  have hcop : ¬ 131 ∣ (14629 - 14626) := by decide
  have heq : (14629 : ZMod 131) ^ 13 = (14626 : ZMod 131) ^ 13 := by decide
  have hne : (14629 : ZMod 17161) ^ 13 ≠ (14626 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 14629 := by decide
  have hB : ¬ 131 ∣ 14626 := by decide
  have hexp :=
    has_exp_one_of_zmod 14626 14629 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 14626 14629 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 14626 14629 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      14626 14629 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      14626 14629 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_14821_14824 :
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14821 14824 := by
  have hlt : (14821 : Nat) < 14824 := by decide
  have hcop : ¬ 157 ∣ (14824 - 14821) := by decide
  have heq : (14824 : ZMod 157) ^ 13 = (14821 : ZMod 157) ^ 13 := by decide
  have hne : (14824 : ZMod 24649) ^ 13 ≠ (14821 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 14824 := by decide
  have hB : ¬ 157 ∣ 14821 := by decide
  have hexp :=
    has_exp_one_of_zmod 14821 14824 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 14821 14824 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 14821 14824 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      14821 14824 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      14821 14824 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_15016_15019 :
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15016 15019 := by
  have hlt : (15016 : Nat) < 15019 := by decide
  have hcop : ¬ 1613 ∣ (15019 - 15016) := by decide
  have heq : (15019 : ZMod 1613) ^ 13 = (15016 : ZMod 1613) ^ 13 := by decide
  have hne : (15019 : ZMod 2601769) ^ 13 ≠ (15016 : ZMod 2601769) ^ 13 := by decide
  have hC : ¬ 1613 ∣ 15019 := by decide
  have hB : ¬ 1613 ∣ 15016 := by decide
  have hexp :=
    has_exp_one_of_zmod 15016 15019 1613 2601769 hlt prime_1613 sq_1613 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 15016 15019 1613 hlt prime_1613 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 15016 15019 1613 2601769 hlt sq_1613 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      15016 15019 1613 prime_1613 ne_13_1613 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      15016 15019 1613 prime_1613 hdvd hcop ne_13_1613 hlt hC hB hord
  exact ⟨hexp, ⟨1613, prime_1613, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_15211_15214 :
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15211 15214 := by
  have hlt : (15211 : Nat) < 15214 := by decide
  have hcop : ¬ 859 ∣ (15214 - 15211) := by decide
  have heq : (15214 : ZMod 859) ^ 13 = (15211 : ZMod 859) ^ 13 := by decide
  have hne : (15214 : ZMod 737881) ^ 13 ≠ (15211 : ZMod 737881) ^ 13 := by decide
  have hC : ¬ 859 ∣ 15214 := by decide
  have hB : ¬ 859 ∣ 15211 := by decide
  have hexp :=
    has_exp_one_of_zmod 15211 15214 859 737881 hlt prime_859 sq_859 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 15211 15214 859 hlt prime_859 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 15211 15214 859 737881 hlt sq_859 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      15211 15214 859 prime_859 ne_13_859 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      15211 15214 859 prime_859 hdvd hcop ne_13_859 hlt hC hB hord
  exact ⟨hexp, ⟨859, prime_859, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_15406_15409 :
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15406 15409 := by
  have hlt : (15406 : Nat) < 15409 := by decide
  have hcop : ¬ 521 ∣ (15409 - 15406) := by decide
  have heq : (15409 : ZMod 521) ^ 13 = (15406 : ZMod 521) ^ 13 := by decide
  have hne : (15409 : ZMod 271441) ^ 13 ≠ (15406 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 15409 := by decide
  have hB : ¬ 521 ∣ 15406 := by decide
  have hexp :=
    has_exp_one_of_zmod 15406 15409 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 15406 15409 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 15406 15409 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      15406 15409 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      15406 15409 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_15991_15994 :
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15991 15994 := by
  have hlt : (15991 : Nat) < 15994 := by decide
  have hcop : ¬ 131 ∣ (15994 - 15991) := by decide
  have heq : (15994 : ZMod 131) ^ 13 = (15991 : ZMod 131) ^ 13 := by decide
  have hne : (15994 : ZMod 17161) ^ 13 ≠ (15991 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 15994 := by decide
  have hB : ¬ 131 ∣ 15991 := by decide
  have hexp :=
    has_exp_one_of_zmod 15991 15994 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 15991 15994 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 15991 15994 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      15991 15994 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      15991 15994 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_16186_16189 :
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16186 16189 := by
  have hlt : (16186 : Nat) < 16189 := by decide
  have hcop : ¬ 131 ∣ (16189 - 16186) := by decide
  have heq : (16189 : ZMod 131) ^ 13 = (16186 : ZMod 131) ^ 13 := by decide
  have hne : (16189 : ZMod 17161) ^ 13 ≠ (16186 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 16189 := by decide
  have hB : ¬ 131 ∣ 16186 := by decide
  have hexp :=
    has_exp_one_of_zmod 16186 16189 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 16186 16189 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 16186 16189 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      16186 16189 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      16186 16189 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_16381_16384 :
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16381 16384 := by
  have hlt : (16381 : Nat) < 16384 := by decide
  have hcop : ¬ 53 ∣ (16384 - 16381) := by decide
  have heq : (16384 : ZMod 53) ^ 13 = (16381 : ZMod 53) ^ 13 := by decide
  have hne : (16384 : ZMod 2809) ^ 13 ≠ (16381 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 16384 := by decide
  have hB : ¬ 53 ∣ 16381 := by decide
  have hexp :=
    has_exp_one_of_zmod 16381 16384 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 16381 16384 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 16381 16384 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      16381 16384 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      16381 16384 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_16576_16579 :
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16576 16579 := by
  have hlt : (16576 : Nat) < 16579 := by decide
  have hcop : ¬ 53 ∣ (16579 - 16576) := by decide
  have heq : (16579 : ZMod 53) ^ 13 = (16576 : ZMod 53) ^ 13 := by decide
  have hne : (16579 : ZMod 2809) ^ 13 ≠ (16576 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 16579 := by decide
  have hB : ¬ 53 ∣ 16576 := by decide
  have hexp :=
    has_exp_one_of_zmod 16576 16579 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 16576 16579 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 16576 16579 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      16576 16579 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      16576 16579 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_16771_16774 :
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16771 16774 := by
  have hlt : (16771 : Nat) < 16774 := by decide
  have hcop : ¬ 79 ∣ (16774 - 16771) := by decide
  have heq : (16774 : ZMod 79) ^ 13 = (16771 : ZMod 79) ^ 13 := by decide
  have hne : (16774 : ZMod 6241) ^ 13 ≠ (16771 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 16774 := by decide
  have hB : ¬ 79 ∣ 16771 := by decide
  have hexp :=
    has_exp_one_of_zmod 16771 16774 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 16771 16774 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 16771 16774 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      16771 16774 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      16771 16774 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_16966_16969 :
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16966 16969 := by
  have hlt : (16966 : Nat) < 16969 := by decide
  have hcop : ¬ 53 ∣ (16969 - 16966) := by decide
  have heq : (16969 : ZMod 53) ^ 13 = (16966 : ZMod 53) ^ 13 := by decide
  have hne : (16969 : ZMod 2809) ^ 13 ≠ (16966 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 16969 := by decide
  have hB : ¬ 53 ∣ 16966 := by decide
  have hexp :=
    has_exp_one_of_zmod 16966 16969 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 16966 16969 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 16966 16969 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      16966 16969 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      16966 16969 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_17161_17164 :
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17161 17164 := by
  have hlt : (17161 : Nat) < 17164 := by decide
  have hcop : ¬ 79 ∣ (17164 - 17161) := by decide
  have heq : (17164 : ZMod 79) ^ 13 = (17161 : ZMod 79) ^ 13 := by decide
  have hne : (17164 : ZMod 6241) ^ 13 ≠ (17161 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 17164 := by decide
  have hB : ¬ 79 ∣ 17161 := by decide
  have hexp :=
    has_exp_one_of_zmod 17161 17164 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 17161 17164 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 17161 17164 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      17161 17164 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      17161 17164 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_17354_17357 :
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17354 17357 := by
  have hlt : (17354 : Nat) < 17357 := by decide
  have hcop : ¬ 79 ∣ (17357 - 17354) := by decide
  have heq : (17357 : ZMod 79) ^ 13 = (17354 : ZMod 79) ^ 13 := by decide
  have hne : (17357 : ZMod 6241) ^ 13 ≠ (17354 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 17357 := by decide
  have hB : ¬ 79 ∣ 17354 := by decide
  have hexp :=
    has_exp_one_of_zmod 17354 17357 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 17354 17357 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 17354 17357 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      17354 17357 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      17354 17357 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_17551_17554 :
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17551 17554 := by
  have hlt : (17551 : Nat) < 17554 := by decide
  have hcop : ¬ 79 ∣ (17554 - 17551) := by decide
  have heq : (17554 : ZMod 79) ^ 13 = (17551 : ZMod 79) ^ 13 := by decide
  have hne : (17554 : ZMod 6241) ^ 13 ≠ (17551 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 17554 := by decide
  have hB : ¬ 79 ∣ 17551 := by decide
  have hexp :=
    has_exp_one_of_zmod 17551 17554 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 17551 17554 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 17551 17554 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      17551 17554 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      17551 17554 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_17746_17749 :
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17746 17749 := by
  have hlt : (17746 : Nat) < 17749 := by decide
  have hcop : ¬ 53 ∣ (17749 - 17746) := by decide
  have heq : (17749 : ZMod 53) ^ 13 = (17746 : ZMod 53) ^ 13 := by decide
  have hne : (17749 : ZMod 2809) ^ 13 ≠ (17746 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 17749 := by decide
  have hB : ¬ 53 ∣ 17746 := by decide
  have hexp :=
    has_exp_one_of_zmod 17746 17749 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 17746 17749 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 17746 17749 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      17746 17749 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      17746 17749 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_17938_17941 :
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17938 17941 := by
  have hlt : (17938 : Nat) < 17941 := by decide
  have hcop : ¬ 521 ∣ (17941 - 17938) := by decide
  have heq : (17941 : ZMod 521) ^ 13 = (17938 : ZMod 521) ^ 13 := by decide
  have hne : (17941 : ZMod 271441) ^ 13 ≠ (17938 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 17941 := by decide
  have hB : ¬ 521 ∣ 17938 := by decide
  have hexp :=
    has_exp_one_of_zmod 17938 17941 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 17938 17941 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 17938 17941 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      17938 17941 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      17938 17941 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_18136_18139 :
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18136 18139 := by
  have hlt : (18136 : Nat) < 18139 := by decide
  have hcop : ¬ 53 ∣ (18139 - 18136) := by decide
  have heq : (18139 : ZMod 53) ^ 13 = (18136 : ZMod 53) ^ 13 := by decide
  have hne : (18139 : ZMod 2809) ^ 13 ≠ (18136 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 18139 := by decide
  have hB : ¬ 53 ∣ 18136 := by decide
  have hexp :=
    has_exp_one_of_zmod 18136 18139 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 18136 18139 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 18136 18139 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      18136 18139 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      18136 18139 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_18331_18334 :
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18331 18334 := by
  have hlt : (18331 : Nat) < 18334 := by decide
  have hcop : ¬ 53 ∣ (18334 - 18331) := by decide
  have heq : (18334 : ZMod 53) ^ 13 = (18331 : ZMod 53) ^ 13 := by decide
  have hne : (18334 : ZMod 2809) ^ 13 ≠ (18331 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 18334 := by decide
  have hB : ¬ 53 ∣ 18331 := by decide
  have hexp :=
    has_exp_one_of_zmod 18331 18334 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 18331 18334 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 18331 18334 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      18331 18334 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      18331 18334 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_18526_18529 :
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18526 18529 := by
  have hlt : (18526 : Nat) < 18529 := by decide
  have hcop : ¬ 131 ∣ (18529 - 18526) := by decide
  have heq : (18529 : ZMod 131) ^ 13 = (18526 : ZMod 131) ^ 13 := by decide
  have hne : (18529 : ZMod 17161) ^ 13 ≠ (18526 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 18529 := by decide
  have hB : ¬ 131 ∣ 18526 := by decide
  have hexp :=
    has_exp_one_of_zmod 18526 18529 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 18526 18529 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 18526 18529 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      18526 18529 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      18526 18529 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_18721_18724 :
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18721 18724 := by
  have hlt : (18721 : Nat) < 18724 := by decide
  have hcop : ¬ 131 ∣ (18724 - 18721) := by decide
  have heq : (18724 : ZMod 131) ^ 13 = (18721 : ZMod 131) ^ 13 := by decide
  have hne : (18724 : ZMod 17161) ^ 13 ≠ (18721 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 18724 := by decide
  have hB : ¬ 131 ∣ 18721 := by decide
  have hexp :=
    has_exp_one_of_zmod 18721 18724 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 18721 18724 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 18721 18724 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      18721 18724 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      18721 18724 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_19310_19313 :
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19310 19313 := by
  have hlt : (19310 : Nat) < 19313 := by decide
  have hcop : ¬ 53 ∣ (19313 - 19310) := by decide
  have heq : (19313 : ZMod 53) ^ 13 = (19310 : ZMod 53) ^ 13 := by decide
  have hne : (19313 : ZMod 2809) ^ 13 ≠ (19310 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 19313 := by decide
  have hB : ¬ 53 ∣ 19310 := by decide
  have hexp :=
    has_exp_one_of_zmod 19310 19313 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 19310 19313 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 19310 19313 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      19310 19313 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      19310 19313 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_19501_19504 :
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19501 19504 := by
  have hlt : (19501 : Nat) < 19504 := by decide
  have hcop : ¬ 157 ∣ (19504 - 19501) := by decide
  have heq : (19504 : ZMod 157) ^ 13 = (19501 : ZMod 157) ^ 13 := by decide
  have hne : (19504 : ZMod 24649) ^ 13 ≠ (19501 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 19504 := by decide
  have hB : ¬ 157 ∣ 19501 := by decide
  have hexp :=
    has_exp_one_of_zmod 19501 19504 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 19501 19504 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 19501 19504 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      19501 19504 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      19501 19504 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_19694_19697 :
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19694 19697 := by
  have hlt : (19694 : Nat) < 19697 := by decide
  have hcop : ¬ 79 ∣ (19697 - 19694) := by decide
  have heq : (19697 : ZMod 79) ^ 13 = (19694 : ZMod 79) ^ 13 := by decide
  have hne : (19697 : ZMod 6241) ^ 13 ≠ (19694 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 19697 := by decide
  have hB : ¬ 79 ∣ 19694 := by decide
  have hexp :=
    has_exp_one_of_zmod 19694 19697 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 19694 19697 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 19694 19697 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      19694 19697 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      19694 19697 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_19891_19894 :
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19891 19894 := by
  have hlt : (19891 : Nat) < 19894 := by decide
  have hcop : ¬ 79 ∣ (19894 - 19891) := by decide
  have heq : (19894 : ZMod 79) ^ 13 = (19891 : ZMod 79) ^ 13 := by decide
  have hne : (19894 : ZMod 6241) ^ 13 ≠ (19891 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 19894 := by decide
  have hB : ¬ 79 ∣ 19891 := by decide
  have hexp :=
    has_exp_one_of_zmod 19891 19894 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 19891 19894 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 19891 19894 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      19891 19894 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      19891 19894 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_20086_20089 :
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20086 20089 := by
  have hlt : (20086 : Nat) < 20089 := by decide
  have hcop : ¬ 131 ∣ (20089 - 20086) := by decide
  have heq : (20089 : ZMod 131) ^ 13 = (20086 : ZMod 131) ^ 13 := by decide
  have hne : (20089 : ZMod 17161) ^ 13 ≠ (20086 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 20089 := by decide
  have hB : ¬ 131 ∣ 20086 := by decide
  have hexp :=
    has_exp_one_of_zmod 20086 20089 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 20086 20089 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 20086 20089 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      20086 20089 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      20086 20089 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_20281_20284 :
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20281 20284 := by
  have hlt : (20281 : Nat) < 20284 := by decide
  have hcop : ¬ 547 ∣ (20284 - 20281) := by decide
  have heq : (20284 : ZMod 547) ^ 13 = (20281 : ZMod 547) ^ 13 := by decide
  have hne : (20284 : ZMod 299209) ^ 13 ≠ (20281 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 20284 := by decide
  have hB : ¬ 547 ∣ 20281 := by decide
  have hexp :=
    has_exp_one_of_zmod 20281 20284 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 20281 20284 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 20281 20284 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      20281 20284 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      20281 20284 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_20476_20479 :
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20476 20479 := by
  have hlt : (20476 : Nat) < 20479 := by decide
  have hcop : ¬ 53 ∣ (20479 - 20476) := by decide
  have heq : (20479 : ZMod 53) ^ 13 = (20476 : ZMod 53) ^ 13 := by decide
  have hne : (20479 : ZMod 2809) ^ 13 ≠ (20476 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 20479 := by decide
  have hB : ¬ 53 ∣ 20476 := by decide
  have hexp :=
    has_exp_one_of_zmod 20476 20479 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 20476 20479 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 20476 20479 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      20476 20479 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      20476 20479 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_20671_20674 :
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20671 20674 := by
  have hlt : (20671 : Nat) < 20674 := by decide
  have hcop : ¬ 157 ∣ (20674 - 20671) := by decide
  have heq : (20674 : ZMod 157) ^ 13 = (20671 : ZMod 157) ^ 13 := by decide
  have hne : (20674 : ZMod 24649) ^ 13 ≠ (20671 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 20674 := by decide
  have hB : ¬ 157 ∣ 20671 := by decide
  have hexp :=
    has_exp_one_of_zmod 20671 20674 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 20671 20674 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 20671 20674 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      20671 20674 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      20671 20674 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_20866_20869 :
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20866 20869 := by
  have hlt : (20866 : Nat) < 20869 := by decide
  have hcop : ¬ 53 ∣ (20869 - 20866) := by decide
  have heq : (20869 : ZMod 53) ^ 13 = (20866 : ZMod 53) ^ 13 := by decide
  have hne : (20869 : ZMod 2809) ^ 13 ≠ (20866 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 20869 := by decide
  have hB : ¬ 53 ∣ 20866 := by decide
  have hexp :=
    has_exp_one_of_zmod 20866 20869 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 20866 20869 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 20866 20869 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      20866 20869 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      20866 20869 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_21061_21064 :
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21061 21064 := by
  have hlt : (21061 : Nat) < 21064 := by decide
  have hcop : ¬ 521 ∣ (21064 - 21061) := by decide
  have heq : (21064 : ZMod 521) ^ 13 = (21061 : ZMod 521) ^ 13 := by decide
  have hne : (21064 : ZMod 271441) ^ 13 ≠ (21061 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 21064 := by decide
  have hB : ¬ 521 ∣ 21061 := by decide
  have hexp :=
    has_exp_one_of_zmod 21061 21064 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 21061 21064 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 21061 21064 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      21061 21064 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      21061 21064 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_21256_21259 :
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21256 21259 := by
  have hlt : (21256 : Nat) < 21259 := by decide
  have hcop : ¬ 443 ∣ (21259 - 21256) := by decide
  have heq : (21259 : ZMod 443) ^ 13 = (21256 : ZMod 443) ^ 13 := by decide
  have hne : (21259 : ZMod 196249) ^ 13 ≠ (21256 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 21259 := by decide
  have hB : ¬ 443 ∣ 21256 := by decide
  have hexp :=
    has_exp_one_of_zmod 21256 21259 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 21256 21259 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 21256 21259 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      21256 21259 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      21256 21259 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_21451_21454 :
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21451 21454 := by
  have hlt : (21451 : Nat) < 21454 := by decide
  have hcop : ¬ 79 ∣ (21454 - 21451) := by decide
  have heq : (21454 : ZMod 79) ^ 13 = (21451 : ZMod 79) ^ 13 := by decide
  have hne : (21454 : ZMod 6241) ^ 13 ≠ (21451 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 21454 := by decide
  have hB : ¬ 79 ∣ 21451 := by decide
  have hexp :=
    has_exp_one_of_zmod 21451 21454 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 21451 21454 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 21451 21454 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      21451 21454 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      21451 21454 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_21841_21844 :
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21841 21844 := by
  have hlt : (21841 : Nat) < 21844 := by decide
  have hcop : ¬ 53 ∣ (21844 - 21841) := by decide
  have heq : (21844 : ZMod 53) ^ 13 = (21841 : ZMod 53) ^ 13 := by decide
  have hne : (21844 : ZMod 2809) ^ 13 ≠ (21841 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 21844 := by decide
  have hB : ¬ 53 ∣ 21841 := by decide
  have hexp :=
    has_exp_one_of_zmod 21841 21844 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 21841 21844 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 21841 21844 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      21841 21844 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      21841 21844 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_22229_22232 :
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22229 22232 := by
  have hlt : (22229 : Nat) < 22232 := by decide
  have hcop : ¬ 131 ∣ (22232 - 22229) := by decide
  have heq : (22232 : ZMod 131) ^ 13 = (22229 : ZMod 131) ^ 13 := by decide
  have hne : (22232 : ZMod 17161) ^ 13 ≠ (22229 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 22232 := by decide
  have hB : ¬ 131 ∣ 22229 := by decide
  have hexp :=
    has_exp_one_of_zmod 22229 22232 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 22229 22232 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 22229 22232 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      22229 22232 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      22229 22232 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_22621_22624 :
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22621 22624 := by
  have hlt : (22621 : Nat) < 22624 := by decide
  have hcop : ¬ 547 ∣ (22624 - 22621) := by decide
  have heq : (22624 : ZMod 547) ^ 13 = (22621 : ZMod 547) ^ 13 := by decide
  have hne : (22624 : ZMod 299209) ^ 13 ≠ (22621 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 22624 := by decide
  have hB : ¬ 547 ∣ 22621 := by decide
  have hexp :=
    has_exp_one_of_zmod 22621 22624 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 22621 22624 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 22621 22624 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      22621 22624 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      22621 22624 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_22814_22817 :
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22814 22817 := by
  have hlt : (22814 : Nat) < 22817 := by decide
  have hcop : ¬ 79 ∣ (22817 - 22814) := by decide
  have heq : (22817 : ZMod 79) ^ 13 = (22814 : ZMod 79) ^ 13 := by decide
  have hne : (22817 : ZMod 6241) ^ 13 ≠ (22814 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 22817 := by decide
  have hB : ¬ 79 ∣ 22814 := by decide
  have hexp :=
    has_exp_one_of_zmod 22814 22817 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 22814 22817 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 22814 22817 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      22814 22817 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      22814 22817 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_23206_23209 :
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23206 23209 := by
  have hlt : (23206 : Nat) < 23209 := by decide
  have hcop : ¬ 53 ∣ (23209 - 23206) := by decide
  have heq : (23209 : ZMod 53) ^ 13 = (23206 : ZMod 53) ^ 13 := by decide
  have hne : (23209 : ZMod 2809) ^ 13 ≠ (23206 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 23209 := by decide
  have hB : ¬ 53 ∣ 23206 := by decide
  have hexp :=
    has_exp_one_of_zmod 23206 23209 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 23206 23209 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 23206 23209 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      23206 23209 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      23206 23209 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_23791_23794 :
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23791 23794 := by
  have hlt : (23791 : Nat) < 23794 := by decide
  have hcop : ¬ 79 ∣ (23794 - 23791) := by decide
  have heq : (23794 : ZMod 79) ^ 13 = (23791 : ZMod 79) ^ 13 := by decide
  have hne : (23794 : ZMod 6241) ^ 13 ≠ (23791 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 23794 := by decide
  have hB : ¬ 79 ∣ 23791 := by decide
  have hexp :=
    has_exp_one_of_zmod 23791 23794 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 23791 23794 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 23791 23794 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      23791 23794 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      23791 23794 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_24181_24184 :
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24181 24184 := by
  have hlt : (24181 : Nat) < 24184 := by decide
  have hcop : ¬ 53 ∣ (24184 - 24181) := by decide
  have heq : (24184 : ZMod 53) ^ 13 = (24181 : ZMod 53) ^ 13 := by decide
  have hne : (24184 : ZMod 2809) ^ 13 ≠ (24181 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 24184 := by decide
  have hB : ¬ 53 ∣ 24181 := by decide
  have hexp :=
    has_exp_one_of_zmod 24181 24184 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 24181 24184 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 24181 24184 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      24181 24184 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      24181 24184 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_24374_24377 :
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24374 24377 := by
  have hlt : (24374 : Nat) < 24377 := by decide
  have hcop : ¬ 79 ∣ (24377 - 24374) := by decide
  have heq : (24377 : ZMod 79) ^ 13 = (24374 : ZMod 79) ^ 13 := by decide
  have hne : (24377 : ZMod 6241) ^ 13 ≠ (24374 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 24377 := by decide
  have hB : ¬ 79 ∣ 24374 := by decide
  have hexp :=
    has_exp_one_of_zmod 24374 24377 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 24374 24377 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 24374 24377 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      24374 24377 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      24374 24377 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_24571_24574 :
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24571 24574 := by
  have hlt : (24571 : Nat) < 24574 := by decide
  have hcop : ¬ 53 ∣ (24574 - 24571) := by decide
  have heq : (24574 : ZMod 53) ^ 13 = (24571 : ZMod 53) ^ 13 := by decide
  have hne : (24574 : ZMod 2809) ^ 13 ≠ (24571 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 24574 := by decide
  have hB : ¬ 53 ∣ 24571 := by decide
  have hexp :=
    has_exp_one_of_zmod 24571 24574 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 24571 24574 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 24571 24574 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      24571 24574 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      24571 24574 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_24764_24767 :
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24764 24767 := by
  have hlt : (24764 : Nat) < 24767 := by decide
  have hcop : ¬ 53 ∣ (24767 - 24764) := by decide
  have heq : (24767 : ZMod 53) ^ 13 = (24764 : ZMod 53) ^ 13 := by decide
  have hne : (24767 : ZMod 2809) ^ 13 ≠ (24764 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 24767 := by decide
  have hB : ¬ 53 ∣ 24764 := by decide
  have hexp :=
    has_exp_one_of_zmod 24764 24767 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 24764 24767 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 24764 24767 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      24764 24767 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      24764 24767 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_25156_25159 :
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25156 25159 := by
  have hlt : (25156 : Nat) < 25159 := by decide
  have hcop : ¬ 79 ∣ (25159 - 25156) := by decide
  have heq : (25159 : ZMod 79) ^ 13 = (25156 : ZMod 79) ^ 13 := by decide
  have hne : (25159 : ZMod 6241) ^ 13 ≠ (25156 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 25159 := by decide
  have hB : ¬ 79 ∣ 25156 := by decide
  have hexp :=
    has_exp_one_of_zmod 25156 25159 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 25156 25159 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 25156 25159 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      25156 25159 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      25156 25159 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_25351_25354 :
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25351 25354 := by
  have hlt : (25351 : Nat) < 25354 := by decide
  have hcop : ¬ 131 ∣ (25354 - 25351) := by decide
  have heq : (25354 : ZMod 131) ^ 13 = (25351 : ZMod 131) ^ 13 := by decide
  have hne : (25354 : ZMod 17161) ^ 13 ≠ (25351 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 25354 := by decide
  have hB : ¬ 131 ∣ 25351 := by decide
  have hexp :=
    has_exp_one_of_zmod 25351 25354 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 25351 25354 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 25351 25354 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      25351 25354 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      25351 25354 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_26132_26135 :
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26132 26135 := by
  have hlt : (26132 : Nat) < 26135 := by decide
  have hcop : ¬ 79 ∣ (26135 - 26132) := by decide
  have heq : (26135 : ZMod 79) ^ 13 = (26132 : ZMod 79) ^ 13 := by decide
  have hne : (26135 : ZMod 6241) ^ 13 ≠ (26132 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 26135 := by decide
  have hB : ¬ 79 ∣ 26132 := by decide
  have hexp :=
    has_exp_one_of_zmod 26132 26135 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 26132 26135 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 26132 26135 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      26132 26135 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      26132 26135 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_26326_26329 :
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26326 26329 := by
  have hlt : (26326 : Nat) < 26329 := by decide
  have hcop : ¬ 521 ∣ (26329 - 26326) := by decide
  have heq : (26329 : ZMod 521) ^ 13 = (26326 : ZMod 521) ^ 13 := by decide
  have hne : (26329 : ZMod 271441) ^ 13 ≠ (26326 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 26329 := by decide
  have hB : ¬ 521 ∣ 26326 := by decide
  have hexp :=
    has_exp_one_of_zmod 26326 26329 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 26326 26329 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 26326 26329 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      26326 26329 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      26326 26329 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_26716_26719 :
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26716 26719 := by
  have hlt : (26716 : Nat) < 26719 := by decide
  have hcop : ¬ 53 ∣ (26719 - 26716) := by decide
  have heq : (26719 : ZMod 53) ^ 13 = (26716 : ZMod 53) ^ 13 := by decide
  have hne : (26719 : ZMod 2809) ^ 13 ≠ (26716 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 26719 := by decide
  have hB : ¬ 53 ∣ 26716 := by decide
  have hexp :=
    has_exp_one_of_zmod 26716 26719 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 26716 26719 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 26716 26719 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      26716 26719 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      26716 26719 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_26911_26914 :
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26911 26914 := by
  have hlt : (26911 : Nat) < 26914 := by decide
  have hcop : ¬ 53 ∣ (26914 - 26911) := by decide
  have heq : (26914 : ZMod 53) ^ 13 = (26911 : ZMod 53) ^ 13 := by decide
  have hne : (26914 : ZMod 2809) ^ 13 ≠ (26911 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 26914 := by decide
  have hB : ¬ 53 ∣ 26911 := by decide
  have hexp :=
    has_exp_one_of_zmod 26911 26914 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 26911 26914 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 26911 26914 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      26911 26914 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      26911 26914 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_27301_27304 :
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27301 27304 := by
  have hlt : (27301 : Nat) < 27304 := by decide
  have hcop : ¬ 53 ∣ (27304 - 27301) := by decide
  have heq : (27304 : ZMod 53) ^ 13 = (27301 : ZMod 53) ^ 13 := by decide
  have hne : (27304 : ZMod 2809) ^ 13 ≠ (27301 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 27304 := by decide
  have hB : ¬ 53 ∣ 27301 := by decide
  have hexp :=
    has_exp_one_of_zmod 27301 27304 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 27301 27304 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 27301 27304 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      27301 27304 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      27301 27304 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_27496_27499 :
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27496 27499 := by
  have hlt : (27496 : Nat) < 27499 := by decide
  have hcop : ¬ 157 ∣ (27499 - 27496) := by decide
  have heq : (27499 : ZMod 157) ^ 13 = (27496 : ZMod 157) ^ 13 := by decide
  have hne : (27499 : ZMod 24649) ^ 13 ≠ (27496 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 27499 := by decide
  have hB : ¬ 157 ∣ 27496 := by decide
  have hexp :=
    has_exp_one_of_zmod 27496 27499 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 27496 27499 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 27496 27499 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      27496 27499 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      27496 27499 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_27692_27695 :
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27692 27695 := by
  have hlt : (27692 : Nat) < 27695 := by decide
  have hcop : ¬ 79 ∣ (27695 - 27692) := by decide
  have heq : (27695 : ZMod 79) ^ 13 = (27692 : ZMod 79) ^ 13 := by decide
  have hne : (27695 : ZMod 6241) ^ 13 ≠ (27692 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 27695 := by decide
  have hB : ¬ 79 ∣ 27692 := by decide
  have hexp :=
    has_exp_one_of_zmod 27692 27695 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 27692 27695 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 27692 27695 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      27692 27695 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      27692 27695 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_28081_28084 :
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28081 28084 := by
  have hlt : (28081 : Nat) < 28084 := by decide
  have hcop : ¬ 53 ∣ (28084 - 28081) := by decide
  have heq : (28084 : ZMod 53) ^ 13 = (28081 : ZMod 53) ^ 13 := by decide
  have hne : (28084 : ZMod 2809) ^ 13 ≠ (28081 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 28084 := by decide
  have hB : ¬ 53 ∣ 28081 := by decide
  have hexp :=
    has_exp_one_of_zmod 28081 28084 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 28081 28084 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 28081 28084 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      28081 28084 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      28081 28084 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_28280_28283 :
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28280 28283 := by
  have hlt : (28280 : Nat) < 28283 := by decide
  have hcop : ¬ 937 ∣ (28283 - 28280) := by decide
  have heq : (28283 : ZMod 937) ^ 13 = (28280 : ZMod 937) ^ 13 := by decide
  have hne : (28283 : ZMod 877969) ^ 13 ≠ (28280 : ZMod 877969) ^ 13 := by decide
  have hC : ¬ 937 ∣ 28283 := by decide
  have hB : ¬ 937 ∣ 28280 := by decide
  have hexp :=
    has_exp_one_of_zmod 28280 28283 937 877969 hlt prime_937 sq_937 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 28280 28283 937 hlt prime_937 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 28280 28283 937 877969 hlt sq_937 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      28280 28283 937 prime_937 ne_13_937 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      28280 28283 937 prime_937 hdvd hcop ne_13_937 hlt hC hB hord
  exact ⟨hexp, ⟨937, prime_937, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_28471_28474 :
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28471 28474 := by
  have hlt : (28471 : Nat) < 28474 := by decide
  have hcop : ¬ 53 ∣ (28474 - 28471) := by decide
  have heq : (28474 : ZMod 53) ^ 13 = (28471 : ZMod 53) ^ 13 := by decide
  have hne : (28474 : ZMod 2809) ^ 13 ≠ (28471 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 28474 := by decide
  have hB : ¬ 53 ∣ 28471 := by decide
  have hexp :=
    has_exp_one_of_zmod 28471 28474 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 28471 28474 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 28471 28474 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      28471 28474 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      28471 28474 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_28666_28669 :
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28666 28669 := by
  have hlt : (28666 : Nat) < 28669 := by decide
  have hcop : ¬ 53 ∣ (28669 - 28666) := by decide
  have heq : (28669 : ZMod 53) ^ 13 = (28666 : ZMod 53) ^ 13 := by decide
  have hne : (28669 : ZMod 2809) ^ 13 ≠ (28666 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 28669 := by decide
  have hB : ¬ 53 ∣ 28666 := by decide
  have hexp :=
    has_exp_one_of_zmod 28666 28669 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 28666 28669 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 28666 28669 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      28666 28669 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      28666 28669 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_29056_29059 :
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29056 29059 := by
  have hlt : (29056 : Nat) < 29059 := by decide
  have hcop : ¬ 79 ∣ (29059 - 29056) := by decide
  have heq : (29059 : ZMod 79) ^ 13 = (29056 : ZMod 79) ^ 13 := by decide
  have hne : (29059 : ZMod 6241) ^ 13 ≠ (29056 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 29059 := by decide
  have hB : ¬ 79 ∣ 29056 := by decide
  have hexp :=
    has_exp_one_of_zmod 29056 29059 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 29056 29059 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 29056 29059 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      29056 29059 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      29056 29059 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_29251_29254 :
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29251 29254 := by
  have hlt : (29251 : Nat) < 29254 := by decide
  have hcop : ¬ 131 ∣ (29254 - 29251) := by decide
  have heq : (29254 : ZMod 131) ^ 13 = (29251 : ZMod 131) ^ 13 := by decide
  have hne : (29254 : ZMod 17161) ^ 13 ≠ (29251 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 29254 := by decide
  have hB : ¬ 131 ∣ 29251 := by decide
  have hexp :=
    has_exp_one_of_zmod 29251 29254 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 29251 29254 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 29251 29254 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      29251 29254 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      29251 29254 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_29446_29449 :
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29446 29449 := by
  have hlt : (29446 : Nat) < 29449 := by decide
  have hcop : ¬ 79 ∣ (29449 - 29446) := by decide
  have heq : (29449 : ZMod 79) ^ 13 = (29446 : ZMod 79) ^ 13 := by decide
  have hne : (29449 : ZMod 6241) ^ 13 ≠ (29446 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 29449 := by decide
  have hB : ¬ 79 ∣ 29446 := by decide
  have hexp :=
    has_exp_one_of_zmod 29446 29449 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 29446 29449 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 29446 29449 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      29446 29449 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      29446 29449 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_29641_29644 :
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29641 29644 := by
  have hlt : (29641 : Nat) < 29644 := by decide
  have hcop : ¬ 157 ∣ (29644 - 29641) := by decide
  have heq : (29644 : ZMod 157) ^ 13 = (29641 : ZMod 157) ^ 13 := by decide
  have hne : (29644 : ZMod 24649) ^ 13 ≠ (29641 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 29644 := by decide
  have hB : ¬ 157 ∣ 29641 := by decide
  have hexp :=
    has_exp_one_of_zmod 29641 29644 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 29641 29644 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 29641 29644 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      29641 29644 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      29641 29644 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_29836_29839 :
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29836 29839 := by
  have hlt : (29836 : Nat) < 29839 := by decide
  have hcop : ¬ 79 ∣ (29839 - 29836) := by decide
  have heq : (29839 : ZMod 79) ^ 13 = (29836 : ZMod 79) ^ 13 := by decide
  have hne : (29839 : ZMod 6241) ^ 13 ≠ (29836 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 29839 := by decide
  have hB : ¬ 79 ∣ 29836 := by decide
  have hexp :=
    has_exp_one_of_zmod 29836 29839 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 29836 29839 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 29836 29839 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      29836 29839 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      29836 29839 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_30031_30034 :
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30031 30034 := by
  have hlt : (30031 : Nat) < 30034 := by decide
  have hcop : ¬ 313 ∣ (30034 - 30031) := by decide
  have heq : (30034 : ZMod 313) ^ 13 = (30031 : ZMod 313) ^ 13 := by decide
  have hne : (30034 : ZMod 97969) ^ 13 ≠ (30031 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 30034 := by decide
  have hB : ¬ 313 ∣ 30031 := by decide
  have hexp :=
    has_exp_one_of_zmod 30031 30034 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 30031 30034 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 30031 30034 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      30031 30034 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      30031 30034 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_30223_30226 :
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30223 30226 := by
  have hlt : (30223 : Nat) < 30226 := by decide
  have hcop : ¬ 53 ∣ (30226 - 30223) := by decide
  have heq : (30226 : ZMod 53) ^ 13 = (30223 : ZMod 53) ^ 13 := by decide
  have hne : (30226 : ZMod 2809) ^ 13 ≠ (30223 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 30226 := by decide
  have hB : ¬ 53 ∣ 30223 := by decide
  have hexp :=
    has_exp_one_of_zmod 30223 30226 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 30223 30226 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 30223 30226 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      30223 30226 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      30223 30226 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_30421_30424 :
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30421 30424 := by
  have hlt : (30421 : Nat) < 30424 := by decide
  have hcop : ¬ 313 ∣ (30424 - 30421) := by decide
  have heq : (30424 : ZMod 313) ^ 13 = (30421 : ZMod 313) ^ 13 := by decide
  have hne : (30424 : ZMod 97969) ^ 13 ≠ (30421 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 30424 := by decide
  have hB : ¬ 313 ∣ 30421 := by decide
  have hexp :=
    has_exp_one_of_zmod 30421 30424 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 30421 30424 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 30421 30424 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      30421 30424 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      30421 30424 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_30617_30620 :
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30617 30620 := by
  have hlt : (30617 : Nat) < 30620 := by decide
  have hcop : ¬ 937 ∣ (30620 - 30617) := by decide
  have heq : (30620 : ZMod 937) ^ 13 = (30617 : ZMod 937) ^ 13 := by decide
  have hne : (30620 : ZMod 877969) ^ 13 ≠ (30617 : ZMod 877969) ^ 13 := by decide
  have hC : ¬ 937 ∣ 30620 := by decide
  have hB : ¬ 937 ∣ 30617 := by decide
  have hexp :=
    has_exp_one_of_zmod 30617 30620 937 877969 hlt prime_937 sq_937 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 30617 30620 937 hlt prime_937 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 30617 30620 937 877969 hlt sq_937 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      30617 30620 937 prime_937 ne_13_937 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      30617 30620 937 prime_937 hdvd hcop ne_13_937 hlt hC hB hord
  exact ⟨hexp, ⟨937, prime_937, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_30811_30814 :
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30811 30814 := by
  have hlt : (30811 : Nat) < 30814 := by decide
  have hcop : ¬ 53 ∣ (30814 - 30811) := by decide
  have heq : (30814 : ZMod 53) ^ 13 = (30811 : ZMod 53) ^ 13 := by decide
  have hne : (30814 : ZMod 2809) ^ 13 ≠ (30811 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 30814 := by decide
  have hB : ¬ 53 ∣ 30811 := by decide
  have hexp :=
    has_exp_one_of_zmod 30811 30814 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 30811 30814 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 30811 30814 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      30811 30814 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      30811 30814 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_31006_31009 :
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31006 31009 := by
  have hlt : (31006 : Nat) < 31009 := by decide
  have hcop : ¬ 131 ∣ (31009 - 31006) := by decide
  have heq : (31009 : ZMod 131) ^ 13 = (31006 : ZMod 131) ^ 13 := by decide
  have hne : (31009 : ZMod 17161) ^ 13 ≠ (31006 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 31009 := by decide
  have hB : ¬ 131 ∣ 31006 := by decide
  have hexp :=
    has_exp_one_of_zmod 31006 31009 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 31006 31009 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 31006 31009 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      31006 31009 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      31006 31009 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_31201_31204 :
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31201 31204 := by
  have hlt : (31201 : Nat) < 31204 := by decide
  have hcop : ¬ 53 ∣ (31204 - 31201) := by decide
  have heq : (31204 : ZMod 53) ^ 13 = (31201 : ZMod 53) ^ 13 := by decide
  have hne : (31204 : ZMod 2809) ^ 13 ≠ (31201 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 31204 := by decide
  have hB : ¬ 53 ∣ 31201 := by decide
  have hexp :=
    has_exp_one_of_zmod 31201 31204 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 31201 31204 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 31201 31204 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      31201 31204 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      31201 31204 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_31591_31594 :
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31591 31594 := by
  have hlt : (31591 : Nat) < 31594 := by decide
  have hcop : ¬ 443 ∣ (31594 - 31591) := by decide
  have heq : (31594 : ZMod 443) ^ 13 = (31591 : ZMod 443) ^ 13 := by decide
  have hne : (31594 : ZMod 196249) ^ 13 ≠ (31591 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 31594 := by decide
  have hB : ¬ 443 ∣ 31591 := by decide
  have hexp :=
    has_exp_one_of_zmod 31591 31594 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 31591 31594 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 31591 31594 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      31591 31594 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      31591 31594 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_31979_31982 :
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31979 31982 := by
  have hlt : (31979 : Nat) < 31982 := by decide
  have hcop : ¬ 79 ∣ (31982 - 31979) := by decide
  have heq : (31982 : ZMod 79) ^ 13 = (31979 : ZMod 79) ^ 13 := by decide
  have hne : (31982 : ZMod 6241) ^ 13 ≠ (31979 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 31982 := by decide
  have hB : ¬ 79 ∣ 31979 := by decide
  have hexp :=
    has_exp_one_of_zmod 31979 31982 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 31979 31982 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 31979 31982 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      31979 31982 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      31979 31982 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_32176_32179 :
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32176 32179 := by
  have hlt : (32176 : Nat) < 32179 := by decide
  have hcop : ¬ 53 ∣ (32179 - 32176) := by decide
  have heq : (32179 : ZMod 53) ^ 13 = (32176 : ZMod 53) ^ 13 := by decide
  have hne : (32179 : ZMod 2809) ^ 13 ≠ (32176 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 32179 := by decide
  have hB : ¬ 53 ∣ 32176 := by decide
  have hexp :=
    has_exp_one_of_zmod 32176 32179 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 32176 32179 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 32176 32179 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      32176 32179 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      32176 32179 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_32371_32374 :
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32371 32374 := by
  have hlt : (32371 : Nat) < 32374 := by decide
  have hcop : ¬ 157 ∣ (32374 - 32371) := by decide
  have heq : (32374 : ZMod 157) ^ 13 = (32371 : ZMod 157) ^ 13 := by decide
  have hne : (32374 : ZMod 24649) ^ 13 ≠ (32371 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 32374 := by decide
  have hB : ¬ 157 ∣ 32371 := by decide
  have hexp :=
    has_exp_one_of_zmod 32371 32374 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 32371 32374 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 32371 32374 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      32371 32374 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      32371 32374 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_32566_32569 :
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32566 32569 := by
  have hlt : (32566 : Nat) < 32569 := by decide
  have hcop : ¬ 79 ∣ (32569 - 32566) := by decide
  have heq : (32569 : ZMod 79) ^ 13 = (32566 : ZMod 79) ^ 13 := by decide
  have hne : (32569 : ZMod 6241) ^ 13 ≠ (32566 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 32569 := by decide
  have hB : ¬ 79 ∣ 32566 := by decide
  have hexp :=
    has_exp_one_of_zmod 32566 32569 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 32566 32569 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 32566 32569 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      32566 32569 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      32566 32569 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_32956_32959 :
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32956 32959 := by
  have hlt : (32956 : Nat) < 32959 := by decide
  have hcop : ¬ 79 ∣ (32959 - 32956) := by decide
  have heq : (32959 : ZMod 79) ^ 13 = (32956 : ZMod 79) ^ 13 := by decide
  have hne : (32959 : ZMod 6241) ^ 13 ≠ (32956 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 32959 := by decide
  have hB : ¬ 79 ∣ 32956 := by decide
  have hexp :=
    has_exp_one_of_zmod 32956 32959 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 32956 32959 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 32956 32959 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      32956 32959 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      32956 32959 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_33152_33155 :
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33152 33155 := by
  have hlt : (33152 : Nat) < 33155 := by decide
  have hcop : ¬ 131 ∣ (33155 - 33152) := by decide
  have heq : (33155 : ZMod 131) ^ 13 = (33152 : ZMod 131) ^ 13 := by decide
  have hne : (33155 : ZMod 17161) ^ 13 ≠ (33152 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 33155 := by decide
  have hB : ¬ 131 ∣ 33152 := by decide
  have hexp :=
    has_exp_one_of_zmod 33152 33155 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 33152 33155 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 33152 33155 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      33152 33155 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      33152 33155 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_33541_33544 :
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33541 33544 := by
  have hlt : (33541 : Nat) < 33544 := by decide
  have hcop : ¬ 53 ∣ (33544 - 33541) := by decide
  have heq : (33544 : ZMod 53) ^ 13 = (33541 : ZMod 53) ^ 13 := by decide
  have hne : (33544 : ZMod 2809) ^ 13 ≠ (33541 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 33544 := by decide
  have hB : ¬ 53 ∣ 33541 := by decide
  have hexp :=
    has_exp_one_of_zmod 33541 33544 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 33541 33544 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 33541 33544 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      33541 33544 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      33541 33544 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_33736_33739 :
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33736 33739 := by
  have hlt : (33736 : Nat) < 33739 := by decide
  have hcop : ¬ 1301 ∣ (33739 - 33736) := by decide
  have heq : (33739 : ZMod 1301) ^ 13 = (33736 : ZMod 1301) ^ 13 := by decide
  have hne : (33739 : ZMod 1692601) ^ 13 ≠ (33736 : ZMod 1692601) ^ 13 := by decide
  have hC : ¬ 1301 ∣ 33739 := by decide
  have hB : ¬ 1301 ∣ 33736 := by decide
  have hexp :=
    has_exp_one_of_zmod 33736 33739 1301 1692601 hlt prime_1301 sq_1301 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 33736 33739 1301 hlt prime_1301 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 33736 33739 1301 1692601 hlt sq_1301 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      33736 33739 1301 prime_1301 ne_13_1301 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      33736 33739 1301 prime_1301 hdvd hcop ne_13_1301 hlt hC hB hord
  exact ⟨hexp, ⟨1301, prime_1301, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_34124_34127 :
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34124 34127 := by
  have hlt : (34124 : Nat) < 34127 := by decide
  have hcop : ¬ 53 ∣ (34127 - 34124) := by decide
  have heq : (34127 : ZMod 53) ^ 13 = (34124 : ZMod 53) ^ 13 := by decide
  have hne : (34127 : ZMod 2809) ^ 13 ≠ (34124 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 34127 := by decide
  have hB : ¬ 53 ∣ 34124 := by decide
  have hexp :=
    has_exp_one_of_zmod 34124 34127 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 34124 34127 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 34124 34127 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      34124 34127 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      34124 34127 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_34516_34519 :
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34516 34519 := by
  have hlt : (34516 : Nat) < 34519 := by decide
  have hcop : ¬ 53 ∣ (34519 - 34516) := by decide
  have heq : (34519 : ZMod 53) ^ 13 = (34516 : ZMod 53) ^ 13 := by decide
  have hne : (34519 : ZMod 2809) ^ 13 ≠ (34516 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 34519 := by decide
  have hB : ¬ 53 ∣ 34516 := by decide
  have hexp :=
    has_exp_one_of_zmod 34516 34519 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 34516 34519 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 34516 34519 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      34516 34519 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      34516 34519 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_34708_34711 :
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34708 34711 := by
  have hlt : (34708 : Nat) < 34711 := by decide
  have hcop : ¬ 53 ∣ (34711 - 34708) := by decide
  have heq : (34711 : ZMod 53) ^ 13 = (34708 : ZMod 53) ^ 13 := by decide
  have hne : (34711 : ZMod 2809) ^ 13 ≠ (34708 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 34711 := by decide
  have hB : ¬ 53 ∣ 34708 := by decide
  have hexp :=
    has_exp_one_of_zmod 34708 34711 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 34708 34711 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 34708 34711 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      34708 34711 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      34708 34711 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_34906_34909 :
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34906 34909 := by
  have hlt : (34906 : Nat) < 34909 := by decide
  have hcop : ¬ 53 ∣ (34909 - 34906) := by decide
  have heq : (34909 : ZMod 53) ^ 13 = (34906 : ZMod 53) ^ 13 := by decide
  have hne : (34909 : ZMod 2809) ^ 13 ≠ (34906 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 34909 := by decide
  have hB : ¬ 53 ∣ 34906 := by decide
  have hexp :=
    has_exp_one_of_zmod 34906 34909 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 34906 34909 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 34906 34909 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      34906 34909 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      34906 34909 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_35296_35299 :
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35296 35299 := by
  have hlt : (35296 : Nat) < 35299 := by decide
  have hcop : ¬ 79 ∣ (35299 - 35296) := by decide
  have heq : (35299 : ZMod 79) ^ 13 = (35296 : ZMod 79) ^ 13 := by decide
  have hne : (35299 : ZMod 6241) ^ 13 ≠ (35296 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 35299 := by decide
  have hB : ¬ 79 ∣ 35296 := by decide
  have hexp :=
    has_exp_one_of_zmod 35296 35299 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 35296 35299 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 35296 35299 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      35296 35299 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      35296 35299 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_35489_35492 :
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35489 35492 := by
  have hlt : (35489 : Nat) < 35492 := by decide
  have hcop : ¬ 53 ∣ (35492 - 35489) := by decide
  have heq : (35492 : ZMod 53) ^ 13 = (35489 : ZMod 53) ^ 13 := by decide
  have hne : (35492 : ZMod 2809) ^ 13 ≠ (35489 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 35492 := by decide
  have hB : ¬ 53 ∣ 35489 := by decide
  have hexp :=
    has_exp_one_of_zmod 35489 35492 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 35489 35492 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 35489 35492 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      35489 35492 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      35489 35492 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_35686_35689 :
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35686 35689 := by
  have hlt : (35686 : Nat) < 35689 := by decide
  have hcop : ¬ 131 ∣ (35689 - 35686) := by decide
  have heq : (35689 : ZMod 131) ^ 13 = (35686 : ZMod 131) ^ 13 := by decide
  have hne : (35689 : ZMod 17161) ^ 13 ≠ (35686 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 35689 := by decide
  have hB : ¬ 131 ∣ 35686 := by decide
  have hexp :=
    has_exp_one_of_zmod 35686 35689 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 35686 35689 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 35686 35689 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      35686 35689 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      35686 35689 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_36077_36080 :
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36077 36080 := by
  have hlt : (36077 : Nat) < 36080 := by decide
  have hcop : ¬ 53 ∣ (36080 - 36077) := by decide
  have heq : (36080 : ZMod 53) ^ 13 = (36077 : ZMod 53) ^ 13 := by decide
  have hne : (36080 : ZMod 2809) ^ 13 ≠ (36077 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 36080 := by decide
  have hB : ¬ 53 ∣ 36077 := by decide
  have hexp :=
    has_exp_one_of_zmod 36077 36080 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 36077 36080 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 36077 36080 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      36077 36080 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      36077 36080 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_36272_36275 :
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36272 36275 := by
  have hlt : (36272 : Nat) < 36275 := by decide
  have hcop : ¬ 313 ∣ (36275 - 36272) := by decide
  have heq : (36275 : ZMod 313) ^ 13 = (36272 : ZMod 313) ^ 13 := by decide
  have hne : (36275 : ZMod 97969) ^ 13 ≠ (36272 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 36275 := by decide
  have hB : ¬ 313 ∣ 36272 := by decide
  have hexp :=
    has_exp_one_of_zmod 36272 36275 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 36272 36275 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 36272 36275 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      36272 36275 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      36272 36275 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_36856_36859 :
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36856 36859 := by
  have hlt : (36856 : Nat) < 36859 := by decide
  have hcop : ¬ 79 ∣ (36859 - 36856) := by decide
  have heq : (36859 : ZMod 79) ^ 13 = (36856 : ZMod 79) ^ 13 := by decide
  have hne : (36859 : ZMod 6241) ^ 13 ≠ (36856 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 36859 := by decide
  have hB : ¬ 79 ∣ 36856 := by decide
  have hexp :=
    has_exp_one_of_zmod 36856 36859 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 36856 36859 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 36856 36859 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      36856 36859 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      36856 36859 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_37051_37054 :
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37051 37054 := by
  have hlt : (37051 : Nat) < 37054 := by decide
  have hcop : ¬ 53 ∣ (37054 - 37051) := by decide
  have heq : (37054 : ZMod 53) ^ 13 = (37051 : ZMod 53) ^ 13 := by decide
  have hne : (37054 : ZMod 2809) ^ 13 ≠ (37051 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 37054 := by decide
  have hB : ¬ 53 ∣ 37051 := by decide
  have hexp :=
    has_exp_one_of_zmod 37051 37054 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 37051 37054 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 37051 37054 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      37051 37054 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      37051 37054 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_37246_37249 :
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37246 37249 := by
  have hlt : (37246 : Nat) < 37249 := by decide
  have hcop : ¬ 53 ∣ (37249 - 37246) := by decide
  have heq : (37249 : ZMod 53) ^ 13 = (37246 : ZMod 53) ^ 13 := by decide
  have hne : (37249 : ZMod 2809) ^ 13 ≠ (37246 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 37249 := by decide
  have hB : ¬ 53 ∣ 37246 := by decide
  have hexp :=
    has_exp_one_of_zmod 37246 37249 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 37246 37249 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 37246 37249 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      37246 37249 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      37246 37249 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_37441_37444 :
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37441 37444 := by
  have hlt : (37441 : Nat) < 37444 := by decide
  have hcop : ¬ 1301 ∣ (37444 - 37441) := by decide
  have heq : (37444 : ZMod 1301) ^ 13 = (37441 : ZMod 1301) ^ 13 := by decide
  have hne : (37444 : ZMod 1692601) ^ 13 ≠ (37441 : ZMod 1692601) ^ 13 := by decide
  have hC : ¬ 1301 ∣ 37444 := by decide
  have hB : ¬ 1301 ∣ 37441 := by decide
  have hexp :=
    has_exp_one_of_zmod 37441 37444 1301 1692601 hlt prime_1301 sq_1301 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 37441 37444 1301 hlt prime_1301 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 37441 37444 1301 1692601 hlt sq_1301 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      37441 37444 1301 prime_1301 ne_13_1301 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      37441 37444 1301 prime_1301 hdvd hcop ne_13_1301 hlt hC hB hord
  exact ⟨hexp, ⟨1301, prime_1301, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_37636_37639 :
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37636 37639 := by
  have hlt : (37636 : Nat) < 37639 := by decide
  have hcop : ¬ 53 ∣ (37639 - 37636) := by decide
  have heq : (37639 : ZMod 53) ^ 13 = (37636 : ZMod 53) ^ 13 := by decide
  have hne : (37639 : ZMod 2809) ^ 13 ≠ (37636 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 37639 := by decide
  have hB : ¬ 53 ∣ 37636 := by decide
  have hexp :=
    has_exp_one_of_zmod 37636 37639 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 37636 37639 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 37636 37639 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      37636 37639 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      37636 37639 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_38027_38030 :
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38027 38030 := by
  have hlt : (38027 : Nat) < 38030 := by decide
  have hcop : ¬ 157 ∣ (38030 - 38027) := by decide
  have heq : (38030 : ZMod 157) ^ 13 = (38027 : ZMod 157) ^ 13 := by decide
  have hne : (38030 : ZMod 24649) ^ 13 ≠ (38027 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 38030 := by decide
  have hB : ¬ 157 ∣ 38027 := by decide
  have hexp :=
    has_exp_one_of_zmod 38027 38030 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 38027 38030 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 38027 38030 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      38027 38030 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      38027 38030 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_38221_38224 :
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38221 38224 := by
  have hlt : (38221 : Nat) < 38224 := by decide
  have hcop : ¬ 79 ∣ (38224 - 38221) := by decide
  have heq : (38224 : ZMod 79) ^ 13 = (38221 : ZMod 79) ^ 13 := by decide
  have hne : (38224 : ZMod 6241) ^ 13 ≠ (38221 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 38224 := by decide
  have hB : ¬ 79 ∣ 38221 := by decide
  have hexp :=
    has_exp_one_of_zmod 38221 38224 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 38221 38224 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 38221 38224 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      38221 38224 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      38221 38224 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_38416_38419 :
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38416 38419 := by
  have hlt : (38416 : Nat) < 38419 := by decide
  have hcop : ¬ 53 ∣ (38419 - 38416) := by decide
  have heq : (38419 : ZMod 53) ^ 13 = (38416 : ZMod 53) ^ 13 := by decide
  have hne : (38419 : ZMod 2809) ^ 13 ≠ (38416 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 38419 := by decide
  have hB : ¬ 53 ∣ 38416 := by decide
  have hexp :=
    has_exp_one_of_zmod 38416 38419 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 38416 38419 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 38416 38419 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      38416 38419 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      38416 38419 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_38611_38614 :
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38611 38614 := by
  have hlt : (38611 : Nat) < 38614 := by decide
  have hcop : ¬ 1171 ∣ (38614 - 38611) := by decide
  have heq : (38614 : ZMod 1171) ^ 13 = (38611 : ZMod 1171) ^ 13 := by decide
  have hne : (38614 : ZMod 1371241) ^ 13 ≠ (38611 : ZMod 1371241) ^ 13 := by decide
  have hC : ¬ 1171 ∣ 38614 := by decide
  have hB : ¬ 1171 ∣ 38611 := by decide
  have hexp :=
    has_exp_one_of_zmod 38611 38614 1171 1371241 hlt prime_1171 sq_1171 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 38611 38614 1171 hlt prime_1171 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 38611 38614 1171 1371241 hlt sq_1171 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      38611 38614 1171 prime_1171 ne_13_1171 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      38611 38614 1171 prime_1171 hdvd hcop ne_13_1171 hlt hC hB hord
  exact ⟨hexp, ⟨1171, prime_1171, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_38806_38809 :
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38806 38809 := by
  have hlt : (38806 : Nat) < 38809 := by decide
  have hcop : ¬ 53 ∣ (38809 - 38806) := by decide
  have heq : (38809 : ZMod 53) ^ 13 = (38806 : ZMod 53) ^ 13 := by decide
  have hne : (38809 : ZMod 2809) ^ 13 ≠ (38806 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 38809 := by decide
  have hB : ¬ 53 ∣ 38806 := by decide
  have hexp :=
    has_exp_one_of_zmod 38806 38809 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 38806 38809 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 38806 38809 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      38806 38809 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      38806 38809 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_39001_39004 :
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39001 39004 := by
  have hlt : (39001 : Nat) < 39004 := by decide
  have hcop : ¬ 53 ∣ (39004 - 39001) := by decide
  have heq : (39004 : ZMod 53) ^ 13 = (39001 : ZMod 53) ^ 13 := by decide
  have hne : (39004 : ZMod 2809) ^ 13 ≠ (39001 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 39004 := by decide
  have hB : ¬ 53 ∣ 39001 := by decide
  have hexp :=
    has_exp_one_of_zmod 39001 39004 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 39001 39004 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 39001 39004 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      39001 39004 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      39001 39004 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_39196_39199 :
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39196 39199 := by
  have hlt : (39196 : Nat) < 39199 := by decide
  have hcop : ¬ 79 ∣ (39199 - 39196) := by decide
  have heq : (39199 : ZMod 79) ^ 13 = (39196 : ZMod 79) ^ 13 := by decide
  have hne : (39199 : ZMod 6241) ^ 13 ≠ (39196 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 39199 := by decide
  have hB : ¬ 79 ∣ 39196 := by decide
  have hexp :=
    has_exp_one_of_zmod 39196 39199 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 39196 39199 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 39196 39199 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      39196 39199 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      39196 39199 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_39584_39587 :
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39584 39587 := by
  have hlt : (39584 : Nat) < 39587 := by decide
  have hcop : ¬ 53 ∣ (39587 - 39584) := by decide
  have heq : (39587 : ZMod 53) ^ 13 = (39584 : ZMod 53) ^ 13 := by decide
  have hne : (39587 : ZMod 2809) ^ 13 ≠ (39584 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 39587 := by decide
  have hB : ¬ 53 ∣ 39584 := by decide
  have hexp :=
    has_exp_one_of_zmod 39584 39587 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 39584 39587 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 39584 39587 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      39584 39587 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      39584 39587 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_39782_39785 :
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39782 39785 := by
  have hlt : (39782 : Nat) < 39785 := by decide
  have hcop : ¬ 53 ∣ (39785 - 39782) := by decide
  have heq : (39785 : ZMod 53) ^ 13 = (39782 : ZMod 53) ^ 13 := by decide
  have hne : (39785 : ZMod 2809) ^ 13 ≠ (39782 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 39785 := by decide
  have hB : ¬ 53 ∣ 39782 := by decide
  have hexp :=
    has_exp_one_of_zmod 39782 39785 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 39782 39785 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 39782 39785 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      39782 39785 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      39782 39785 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_40171_40174 :
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40171 40174 := by
  have hlt : (40171 : Nat) < 40174 := by decide
  have hcop : ¬ 131 ∣ (40174 - 40171) := by decide
  have heq : (40174 : ZMod 131) ^ 13 = (40171 : ZMod 131) ^ 13 := by decide
  have hne : (40174 : ZMod 17161) ^ 13 ≠ (40171 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 40174 := by decide
  have hB : ¬ 131 ∣ 40171 := by decide
  have hexp :=
    has_exp_one_of_zmod 40171 40174 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 40171 40174 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 40171 40174 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      40171 40174 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      40171 40174 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_40561_40564 :
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40561 40564 := by
  have hlt : (40561 : Nat) < 40564 := by decide
  have hcop : ¬ 79 ∣ (40564 - 40561) := by decide
  have heq : (40564 : ZMod 79) ^ 13 = (40561 : ZMod 79) ^ 13 := by decide
  have hne : (40564 : ZMod 6241) ^ 13 ≠ (40561 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 40564 := by decide
  have hB : ¬ 79 ∣ 40561 := by decide
  have hexp :=
    has_exp_one_of_zmod 40561 40564 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 40561 40564 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 40561 40564 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      40561 40564 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      40561 40564 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_40949_40952 :
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40949 40952 := by
  have hlt : (40949 : Nat) < 40952 := by decide
  have hcop : ¬ 547 ∣ (40952 - 40949) := by decide
  have heq : (40952 : ZMod 547) ^ 13 = (40949 : ZMod 547) ^ 13 := by decide
  have hne : (40952 : ZMod 299209) ^ 13 ≠ (40949 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 40952 := by decide
  have hB : ¬ 547 ∣ 40949 := by decide
  have hexp :=
    has_exp_one_of_zmod 40949 40952 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 40949 40952 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 40949 40952 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      40949 40952 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      40949 40952 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_41146_41149 :
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41146 41149 := by
  have hlt : (41146 : Nat) < 41149 := by decide
  have hcop : ¬ 53 ∣ (41149 - 41146) := by decide
  have heq : (41149 : ZMod 53) ^ 13 = (41146 : ZMod 53) ^ 13 := by decide
  have hne : (41149 : ZMod 2809) ^ 13 ≠ (41146 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 41149 := by decide
  have hB : ¬ 53 ∣ 41146 := by decide
  have hexp :=
    has_exp_one_of_zmod 41146 41149 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 41146 41149 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 41146 41149 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      41146 41149 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      41146 41149 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_41341_41344 :
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41341 41344 := by
  have hlt : (41341 : Nat) < 41344 := by decide
  have hcop : ¬ 157 ∣ (41344 - 41341) := by decide
  have heq : (41344 : ZMod 157) ^ 13 = (41341 : ZMod 157) ^ 13 := by decide
  have hne : (41344 : ZMod 24649) ^ 13 ≠ (41341 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 41344 := by decide
  have hB : ¬ 157 ∣ 41341 := by decide
  have hexp :=
    has_exp_one_of_zmod 41341 41344 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 41341 41344 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 41341 41344 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      41341 41344 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      41341 41344 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_41536_41539 :
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41536 41539 := by
  have hlt : (41536 : Nat) < 41539 := by decide
  have hcop : ¬ 53 ∣ (41539 - 41536) := by decide
  have heq : (41539 : ZMod 53) ^ 13 = (41536 : ZMod 53) ^ 13 := by decide
  have hne : (41539 : ZMod 2809) ^ 13 ≠ (41536 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 41539 := by decide
  have hB : ¬ 53 ∣ 41536 := by decide
  have hexp :=
    has_exp_one_of_zmod 41536 41539 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 41536 41539 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 41536 41539 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      41536 41539 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      41536 41539 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_41731_41734 :
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41731 41734 := by
  have hlt : (41731 : Nat) < 41734 := by decide
  have hcop : ¬ 131 ∣ (41734 - 41731) := by decide
  have heq : (41734 : ZMod 131) ^ 13 = (41731 : ZMod 131) ^ 13 := by decide
  have hne : (41734 : ZMod 17161) ^ 13 ≠ (41731 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 41734 := by decide
  have hB : ¬ 131 ∣ 41731 := by decide
  have hexp :=
    has_exp_one_of_zmod 41731 41734 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 41731 41734 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 41731 41734 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      41731 41734 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      41731 41734 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_41926_41929 :
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41926 41929 := by
  have hlt : (41926 : Nat) < 41929 := by decide
  have hcop : ¬ 1483 ∣ (41929 - 41926) := by decide
  have heq : (41929 : ZMod 1483) ^ 13 = (41926 : ZMod 1483) ^ 13 := by decide
  have hne : (41929 : ZMod 2199289) ^ 13 ≠ (41926 : ZMod 2199289) ^ 13 := by decide
  have hC : ¬ 1483 ∣ 41929 := by decide
  have hB : ¬ 1483 ∣ 41926 := by decide
  have hexp :=
    has_exp_one_of_zmod 41926 41929 1483 2199289 hlt prime_1483 sq_1483 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 41926 41929 1483 hlt prime_1483 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 41926 41929 1483 2199289 hlt sq_1483 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      41926 41929 1483 prime_1483 ne_13_1483 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      41926 41929 1483 prime_1483 hdvd hcop ne_13_1483 hlt hC hB hord
  exact ⟨hexp, ⟨1483, prime_1483, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_42121_42124 :
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42121 42124 := by
  have hlt : (42121 : Nat) < 42124 := by decide
  have hcop : ¬ 79 ∣ (42124 - 42121) := by decide
  have heq : (42124 : ZMod 79) ^ 13 = (42121 : ZMod 79) ^ 13 := by decide
  have hne : (42124 : ZMod 6241) ^ 13 ≠ (42121 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 42124 := by decide
  have hB : ¬ 79 ∣ 42121 := by decide
  have hexp :=
    has_exp_one_of_zmod 42121 42124 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 42121 42124 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 42121 42124 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      42121 42124 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      42121 42124 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_42511_42514 :
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42511 42514 := by
  have hlt : (42511 : Nat) < 42514 := by decide
  have hcop : ¬ 53 ∣ (42514 - 42511) := by decide
  have heq : (42514 : ZMod 53) ^ 13 = (42511 : ZMod 53) ^ 13 := by decide
  have hne : (42514 : ZMod 2809) ^ 13 ≠ (42511 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 42514 := by decide
  have hB : ¬ 53 ∣ 42511 := by decide
  have hexp :=
    has_exp_one_of_zmod 42511 42514 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 42511 42514 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 42511 42514 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      42511 42514 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      42511 42514 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_42706_42709 :
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42706 42709 := by
  have hlt : (42706 : Nat) < 42709 := by decide
  have hcop : ¬ 313 ∣ (42709 - 42706) := by decide
  have heq : (42709 : ZMod 313) ^ 13 = (42706 : ZMod 313) ^ 13 := by decide
  have hne : (42709 : ZMod 97969) ^ 13 ≠ (42706 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 42709 := by decide
  have hB : ¬ 313 ∣ 42706 := by decide
  have hexp :=
    has_exp_one_of_zmod 42706 42709 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 42706 42709 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 42706 42709 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      42706 42709 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      42706 42709 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_42899_42902 :
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42899 42902 := by
  have hlt : (42899 : Nat) < 42902 := by decide
  have hcop : ¬ 1327 ∣ (42902 - 42899) := by decide
  have heq : (42902 : ZMod 1327) ^ 13 = (42899 : ZMod 1327) ^ 13 := by decide
  have hne : (42902 : ZMod 1760929) ^ 13 ≠ (42899 : ZMod 1760929) ^ 13 := by decide
  have hC : ¬ 1327 ∣ 42902 := by decide
  have hB : ¬ 1327 ∣ 42899 := by decide
  have hexp :=
    has_exp_one_of_zmod 42899 42902 1327 1760929 hlt prime_1327 sq_1327 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 42899 42902 1327 hlt prime_1327 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 42899 42902 1327 1760929 hlt sq_1327 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      42899 42902 1327 prime_1327 ne_13_1327 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      42899 42902 1327 prime_1327 hdvd hcop ne_13_1327 hlt hC hB hord
  exact ⟨hexp, ⟨1327, prime_1327, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_43097_43100 :
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43097 43100 := by
  have hlt : (43097 : Nat) < 43100 := by decide
  have hcop : ¬ 79 ∣ (43100 - 43097) := by decide
  have heq : (43100 : ZMod 79) ^ 13 = (43097 : ZMod 79) ^ 13 := by decide
  have hne : (43100 : ZMod 6241) ^ 13 ≠ (43097 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 43100 := by decide
  have hB : ¬ 79 ∣ 43097 := by decide
  have hexp :=
    has_exp_one_of_zmod 43097 43100 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 43097 43100 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 43097 43100 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      43097 43100 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      43097 43100 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_43876_43879 :
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43876 43879 := by
  have hlt : (43876 : Nat) < 43879 := by decide
  have hcop : ¬ 53 ∣ (43879 - 43876) := by decide
  have heq : (43879 : ZMod 53) ^ 13 = (43876 : ZMod 53) ^ 13 := by decide
  have hne : (43879 : ZMod 2809) ^ 13 ≠ (43876 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 43879 := by decide
  have hB : ¬ 53 ∣ 43876 := by decide
  have hexp :=
    has_exp_one_of_zmod 43876 43879 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 43876 43879 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 43876 43879 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      43876 43879 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      43876 43879 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_44071_44074 :
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44071 44074 := by
  have hlt : (44071 : Nat) < 44074 := by decide
  have hcop : ¬ 131 ∣ (44074 - 44071) := by decide
  have heq : (44074 : ZMod 131) ^ 13 = (44071 : ZMod 131) ^ 13 := by decide
  have hne : (44074 : ZMod 17161) ^ 13 ≠ (44071 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 44074 := by decide
  have hB : ¬ 131 ∣ 44071 := by decide
  have hexp :=
    has_exp_one_of_zmod 44071 44074 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 44071 44074 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 44071 44074 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      44071 44074 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      44071 44074 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_44266_44269 :
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44266 44269 := by
  have hlt : (44266 : Nat) < 44269 := by decide
  have hcop : ¬ 131 ∣ (44269 - 44266) := by decide
  have heq : (44269 : ZMod 131) ^ 13 = (44266 : ZMod 131) ^ 13 := by decide
  have hne : (44269 : ZMod 17161) ^ 13 ≠ (44266 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 44269 := by decide
  have hB : ¬ 131 ∣ 44266 := by decide
  have hexp :=
    has_exp_one_of_zmod 44266 44269 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 44266 44269 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 44266 44269 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      44266 44269 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      44266 44269 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_44461_44464 :
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44461 44464 := by
  have hlt : (44461 : Nat) < 44464 := by decide
  have hcop : ¬ 79 ∣ (44464 - 44461) := by decide
  have heq : (44464 : ZMod 79) ^ 13 = (44461 : ZMod 79) ^ 13 := by decide
  have hne : (44464 : ZMod 6241) ^ 13 ≠ (44461 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 44464 := by decide
  have hB : ¬ 79 ∣ 44461 := by decide
  have hexp :=
    has_exp_one_of_zmod 44461 44464 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 44461 44464 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 44461 44464 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      44461 44464 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      44461 44464 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_44656_44659 :
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44656 44659 := by
  have hlt : (44656 : Nat) < 44659 := by decide
  have hcop : ¬ 521 ∣ (44659 - 44656) := by decide
  have heq : (44659 : ZMod 521) ^ 13 = (44656 : ZMod 521) ^ 13 := by decide
  have hne : (44659 : ZMod 271441) ^ 13 ≠ (44656 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 44659 := by decide
  have hB : ¬ 521 ∣ 44656 := by decide
  have hexp :=
    has_exp_one_of_zmod 44656 44659 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 44656 44659 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 44656 44659 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      44656 44659 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      44656 44659 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_44851_44854 :
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44851 44854 := by
  have hlt : (44851 : Nat) < 44854 := by decide
  have hcop : ¬ 53 ∣ (44854 - 44851) := by decide
  have heq : (44854 : ZMod 53) ^ 13 = (44851 : ZMod 53) ^ 13 := by decide
  have hne : (44854 : ZMod 2809) ^ 13 ≠ (44851 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 44854 := by decide
  have hB : ¬ 53 ∣ 44851 := by decide
  have hexp :=
    has_exp_one_of_zmod 44851 44854 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 44851 44854 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 44851 44854 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      44851 44854 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      44851 44854 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_45046_45049 :
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45046 45049 := by
  have hlt : (45046 : Nat) < 45049 := by decide
  have hcop : ¬ 521 ∣ (45049 - 45046) := by decide
  have heq : (45049 : ZMod 521) ^ 13 = (45046 : ZMod 521) ^ 13 := by decide
  have hne : (45049 : ZMod 271441) ^ 13 ≠ (45046 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 45049 := by decide
  have hB : ¬ 521 ∣ 45046 := by decide
  have hexp :=
    has_exp_one_of_zmod 45046 45049 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 45046 45049 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 45046 45049 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      45046 45049 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      45046 45049 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_45241_45244 :
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45241 45244 := by
  have hlt : (45241 : Nat) < 45244 := by decide
  have hcop : ¬ 53 ∣ (45244 - 45241) := by decide
  have heq : (45244 : ZMod 53) ^ 13 = (45241 : ZMod 53) ^ 13 := by decide
  have hne : (45244 : ZMod 2809) ^ 13 ≠ (45241 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 45244 := by decide
  have hB : ¬ 53 ∣ 45241 := by decide
  have hexp :=
    has_exp_one_of_zmod 45241 45244 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 45241 45244 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 45241 45244 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      45241 45244 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      45241 45244 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_45436_45439 :
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45436 45439 := by
  have hlt : (45436 : Nat) < 45439 := by decide
  have hcop : ¬ 157 ∣ (45439 - 45436) := by decide
  have heq : (45439 : ZMod 157) ^ 13 = (45436 : ZMod 157) ^ 13 := by decide
  have hne : (45439 : ZMod 24649) ^ 13 ≠ (45436 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 45439 := by decide
  have hB : ¬ 157 ∣ 45436 := by decide
  have hexp :=
    has_exp_one_of_zmod 45436 45439 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 45436 45439 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 45436 45439 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      45436 45439 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      45436 45439 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_45631_45634 :
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45631 45634 := by
  have hlt : (45631 : Nat) < 45634 := by decide
  have hcop : ¬ 131 ∣ (45634 - 45631) := by decide
  have heq : (45634 : ZMod 131) ^ 13 = (45631 : ZMod 131) ^ 13 := by decide
  have hne : (45634 : ZMod 17161) ^ 13 ≠ (45631 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 45634 := by decide
  have hB : ¬ 131 ∣ 45631 := by decide
  have hexp :=
    has_exp_one_of_zmod 45631 45634 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 45631 45634 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 45631 45634 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      45631 45634 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      45631 45634 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_46021_46024 :
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46021 46024 := by
  have hlt : (46021 : Nat) < 46024 := by decide
  have hcop : ¬ 547 ∣ (46024 - 46021) := by decide
  have heq : (46024 : ZMod 547) ^ 13 = (46021 : ZMod 547) ^ 13 := by decide
  have hne : (46024 : ZMod 299209) ^ 13 ≠ (46021 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 46024 := by decide
  have hB : ¬ 547 ∣ 46021 := by decide
  have hexp :=
    has_exp_one_of_zmod 46021 46024 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 46021 46024 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 46021 46024 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      46021 46024 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      46021 46024 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_46412_46415 :
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46412 46415 := by
  have hlt : (46412 : Nat) < 46415 := by decide
  have hcop : ¬ 53 ∣ (46415 - 46412) := by decide
  have heq : (46415 : ZMod 53) ^ 13 = (46412 : ZMod 53) ^ 13 := by decide
  have hne : (46415 : ZMod 2809) ^ 13 ≠ (46412 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 46415 := by decide
  have hB : ¬ 53 ∣ 46412 := by decide
  have hexp :=
    has_exp_one_of_zmod 46412 46415 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 46412 46415 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 46412 46415 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      46412 46415 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      46412 46415 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_46609_46612 :
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46609 46612 := by
  have hlt : (46609 : Nat) < 46612 := by decide
  have hcop : ¬ 521 ∣ (46612 - 46609) := by decide
  have heq : (46612 : ZMod 521) ^ 13 = (46609 : ZMod 521) ^ 13 := by decide
  have hne : (46612 : ZMod 271441) ^ 13 ≠ (46609 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 46612 := by decide
  have hB : ¬ 521 ∣ 46609 := by decide
  have hexp :=
    has_exp_one_of_zmod 46609 46612 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 46609 46612 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 46609 46612 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      46609 46612 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      46609 46612 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_46801_46804 :
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46801 46804 := by
  have hlt : (46801 : Nat) < 46804 := by decide
  have hcop : ¬ 443 ∣ (46804 - 46801) := by decide
  have heq : (46804 : ZMod 443) ^ 13 = (46801 : ZMod 443) ^ 13 := by decide
  have hne : (46804 : ZMod 196249) ^ 13 ≠ (46801 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 46804 := by decide
  have hB : ¬ 443 ∣ 46801 := by decide
  have hexp :=
    has_exp_one_of_zmod 46801 46804 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 46801 46804 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 46801 46804 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      46801 46804 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      46801 46804 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_46996_46999 :
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46996 46999 := by
  have hlt : (46996 : Nat) < 46999 := by decide
  have hcop : ¬ 1249 ∣ (46999 - 46996) := by decide
  have heq : (46999 : ZMod 1249) ^ 13 = (46996 : ZMod 1249) ^ 13 := by decide
  have hne : (46999 : ZMod 1560001) ^ 13 ≠ (46996 : ZMod 1560001) ^ 13 := by decide
  have hC : ¬ 1249 ∣ 46999 := by decide
  have hB : ¬ 1249 ∣ 46996 := by decide
  have hexp :=
    has_exp_one_of_zmod 46996 46999 1249 1560001 hlt prime_1249 sq_1249 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 46996 46999 1249 hlt prime_1249 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 46996 46999 1249 1560001 hlt sq_1249 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      46996 46999 1249 prime_1249 ne_13_1249 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      46996 46999 1249 prime_1249 hdvd hcop ne_13_1249 hlt hC hB hord
  exact ⟨hexp, ⟨1249, prime_1249, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_47191_47194 :
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47191 47194 := by
  have hlt : (47191 : Nat) < 47194 := by decide
  have hcop : ¬ 157 ∣ (47194 - 47191) := by decide
  have heq : (47194 : ZMod 157) ^ 13 = (47191 : ZMod 157) ^ 13 := by decide
  have hne : (47194 : ZMod 24649) ^ 13 ≠ (47191 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 47194 := by decide
  have hB : ¬ 157 ∣ 47191 := by decide
  have hexp :=
    has_exp_one_of_zmod 47191 47194 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 47191 47194 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 47191 47194 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      47191 47194 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      47191 47194 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_47386_47389 :
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47386 47389 := by
  have hlt : (47386 : Nat) < 47389 := by decide
  have hcop : ¬ 53 ∣ (47389 - 47386) := by decide
  have heq : (47389 : ZMod 53) ^ 13 = (47386 : ZMod 53) ^ 13 := by decide
  have hne : (47389 : ZMod 2809) ^ 13 ≠ (47386 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 47389 := by decide
  have hB : ¬ 53 ∣ 47386 := by decide
  have hexp :=
    has_exp_one_of_zmod 47386 47389 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 47386 47389 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 47386 47389 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      47386 47389 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      47386 47389 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_47581_47584 :
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47581 47584 := by
  have hlt : (47581 : Nat) < 47584 := by decide
  have hcop : ¬ 53 ∣ (47584 - 47581) := by decide
  have heq : (47584 : ZMod 53) ^ 13 = (47581 : ZMod 53) ^ 13 := by decide
  have hne : (47584 : ZMod 2809) ^ 13 ≠ (47581 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 47584 := by decide
  have hB : ¬ 53 ∣ 47581 := by decide
  have hexp :=
    has_exp_one_of_zmod 47581 47584 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 47581 47584 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 47581 47584 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      47581 47584 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      47581 47584 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_47971_47974 :
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47971 47974 := by
  have hlt : (47971 : Nat) < 47974 := by decide
  have hcop : ¬ 53 ∣ (47974 - 47971) := by decide
  have heq : (47974 : ZMod 53) ^ 13 = (47971 : ZMod 53) ^ 13 := by decide
  have hne : (47974 : ZMod 2809) ^ 13 ≠ (47971 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 47974 := by decide
  have hB : ¬ 53 ∣ 47971 := by decide
  have hexp :=
    has_exp_one_of_zmod 47971 47974 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 47971 47974 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 47971 47974 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      47971 47974 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      47971 47974 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_48166_48169 :
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48166 48169 := by
  have hlt : (48166 : Nat) < 48169 := by decide
  have hcop : ¬ 313 ∣ (48169 - 48166) := by decide
  have heq : (48169 : ZMod 313) ^ 13 = (48166 : ZMod 313) ^ 13 := by decide
  have hne : (48169 : ZMod 97969) ^ 13 ≠ (48166 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 48169 := by decide
  have hB : ¬ 313 ∣ 48166 := by decide
  have hexp :=
    has_exp_one_of_zmod 48166 48169 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 48166 48169 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 48166 48169 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      48166 48169 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      48166 48169 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_48361_48364 :
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48361 48364 := by
  have hlt : (48361 : Nat) < 48364 := by decide
  have hcop : ¬ 79 ∣ (48364 - 48361) := by decide
  have heq : (48364 : ZMod 79) ^ 13 = (48361 : ZMod 79) ^ 13 := by decide
  have hne : (48364 : ZMod 6241) ^ 13 ≠ (48361 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 48364 := by decide
  have hB : ¬ 79 ∣ 48361 := by decide
  have hexp :=
    has_exp_one_of_zmod 48361 48364 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 48361 48364 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 48361 48364 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      48361 48364 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      48361 48364 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_48554_48557 :
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48554 48557 := by
  have hlt : (48554 : Nat) < 48557 := by decide
  have hcop : ¬ 53 ∣ (48557 - 48554) := by decide
  have heq : (48557 : ZMod 53) ^ 13 = (48554 : ZMod 53) ^ 13 := by decide
  have hne : (48557 : ZMod 2809) ^ 13 ≠ (48554 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 48557 := by decide
  have hB : ¬ 53 ∣ 48554 := by decide
  have hexp :=
    has_exp_one_of_zmod 48554 48557 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 48554 48557 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 48554 48557 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      48554 48557 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      48554 48557 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_48751_48754 :
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48751 48754 := by
  have hlt : (48751 : Nat) < 48754 := by decide
  have hcop : ¬ 53 ∣ (48754 - 48751) := by decide
  have heq : (48754 : ZMod 53) ^ 13 = (48751 : ZMod 53) ^ 13 := by decide
  have hne : (48754 : ZMod 2809) ^ 13 ≠ (48751 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 48754 := by decide
  have hB : ¬ 53 ∣ 48751 := by decide
  have hexp :=
    has_exp_one_of_zmod 48751 48754 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 48751 48754 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 48751 48754 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      48751 48754 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      48751 48754 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_49141_49144 :
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49141 49144 := by
  have hlt : (49141 : Nat) < 49144 := by decide
  have hcop : ¬ 53 ∣ (49144 - 49141) := by decide
  have heq : (49144 : ZMod 53) ^ 13 = (49141 : ZMod 53) ^ 13 := by decide
  have hne : (49144 : ZMod 2809) ^ 13 ≠ (49141 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 49144 := by decide
  have hB : ¬ 53 ∣ 49141 := by decide
  have hexp :=
    has_exp_one_of_zmod 49141 49144 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 49141 49144 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 49141 49144 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      49141 49144 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      49141 49144 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_49336_49339 :
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49336 49339 := by
  have hlt : (49336 : Nat) < 49339 := by decide
  have hcop : ¬ 53 ∣ (49339 - 49336) := by decide
  have heq : (49339 : ZMod 53) ^ 13 = (49336 : ZMod 53) ^ 13 := by decide
  have hne : (49339 : ZMod 2809) ^ 13 ≠ (49336 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 49339 := by decide
  have hB : ¬ 53 ∣ 49336 := by decide
  have hexp :=
    has_exp_one_of_zmod 49336 49339 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 49336 49339 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 49336 49339 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      49336 49339 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      49336 49339 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_49531_49534 :
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49531 49534 := by
  have hlt : (49531 : Nat) < 49534 := by decide
  have hcop : ¬ 313 ∣ (49534 - 49531) := by decide
  have heq : (49534 : ZMod 313) ^ 13 = (49531 : ZMod 313) ^ 13 := by decide
  have hne : (49534 : ZMod 97969) ^ 13 ≠ (49531 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 49534 := by decide
  have hB : ¬ 313 ∣ 49531 := by decide
  have hexp :=
    has_exp_one_of_zmod 49531 49534 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 49531 49534 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 49531 49534 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      49531 49534 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      49531 49534 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_50000_50003 :
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50000 50003 := by
  have hlt : (50000 : Nat) < 50003 := by decide
  have hcop : ¬ 313 ∣ (50003 - 50000) := by decide
  have heq : (50003 : ZMod 313) ^ 13 = (50000 : ZMod 313) ^ 13 := by decide
  have hne : (50003 : ZMod 97969) ^ 13 ≠ (50000 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 50003 := by decide
  have hB : ¬ 313 ∣ 50000 := by decide
  have hexp :=
    has_exp_one_of_zmod 50000 50003 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 50000 50003 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 50000 50003 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      50000 50003 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      50000 50003 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-- One hundred eighty-eight named `B ≤ 50000` gap-3 rows.
Not a `∀`. -/
theorem S_has_prime_with_exp_one_B_le_50000_table_rows :
    HasPrimeWithExpOne (S_val 1 4) ∧
    HasPrimeWithExpOne (S_val 196 199) ∧
    HasPrimeWithExpOne (S_val 386 389) ∧
    HasPrimeWithExpOne (S_val 587 590) ∧
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    HasPrimeWithExpOne (S_val 50000 50003) :=
  ⟨row_1_4.1,
    row_196_199.1,
    row_386_389.1,
    row_587_590.1,
    row_1171_1174.1,
    row_1366_1369.1,
    row_1559_1562.1,
    row_1756_1759.1,
    row_2146_2149.1,
    row_2536_2539.1,
    row_2731_2734.1,
    row_3313_3316.1,
    row_3511_3514.1,
    row_3706_3709.1,
    row_3901_3904.1,
    row_4682_4685.1,
    row_4876_4879.1,
    row_5071_5074.1,
    row_5461_5464.1,
    row_5849_5852.1,
    row_6046_6049.1,
    row_6241_6244.1,
    row_6631_6634.1,
    row_7411_7414.1,
    row_7606_7609.1,
    row_7801_7804.1,
    row_7997_8000.1,
    row_8194_8197.1,
    row_8582_8585.1,
    row_9163_9166.1,
    row_9361_9364.1,
    row_9751_9754.1,
    row_10000_10003.1,
    row_10141_10144.1,
    row_10531_10534.1,
    row_10726_10729.1,
    row_11311_11314.1,
    row_11506_11509.1,
    row_11896_11899.1,
    row_12091_12094.1,
    row_12871_12874.1,
    row_13066_13069.1,
    row_13258_13261.1,
    row_13457_13460.1,
    row_13651_13654.1,
    row_13846_13849.1,
    row_14041_14044.1,
    row_14236_14239.1,
    row_14431_14434.1,
    row_14626_14629.1,
    row_14821_14824.1,
    row_15016_15019.1,
    row_15211_15214.1,
    row_15406_15409.1,
    row_15991_15994.1,
    row_16186_16189.1,
    row_16381_16384.1,
    row_16576_16579.1,
    row_16771_16774.1,
    row_16966_16969.1,
    row_17161_17164.1,
    row_17354_17357.1,
    row_17551_17554.1,
    row_17746_17749.1,
    row_17938_17941.1,
    row_18136_18139.1,
    row_18331_18334.1,
    row_18526_18529.1,
    row_18721_18724.1,
    row_19310_19313.1,
    row_19501_19504.1,
    row_19694_19697.1,
    row_19891_19894.1,
    row_20086_20089.1,
    row_20281_20284.1,
    row_20476_20479.1,
    row_20671_20674.1,
    row_20866_20869.1,
    row_21061_21064.1,
    row_21256_21259.1,
    row_21451_21454.1,
    row_21841_21844.1,
    row_22229_22232.1,
    row_22621_22624.1,
    row_22814_22817.1,
    row_23206_23209.1,
    row_23791_23794.1,
    row_24181_24184.1,
    row_24374_24377.1,
    row_24571_24574.1,
    row_24764_24767.1,
    row_25156_25159.1,
    row_25351_25354.1,
    row_26132_26135.1,
    row_26326_26329.1,
    row_26716_26719.1,
    row_26911_26914.1,
    row_27301_27304.1,
    row_27496_27499.1,
    row_27692_27695.1,
    row_28081_28084.1,
    row_28280_28283.1,
    row_28471_28474.1,
    row_28666_28669.1,
    row_29056_29059.1,
    row_29251_29254.1,
    row_29446_29449.1,
    row_29641_29644.1,
    row_29836_29839.1,
    row_30031_30034.1,
    row_30223_30226.1,
    row_30421_30424.1,
    row_30617_30620.1,
    row_30811_30814.1,
    row_31006_31009.1,
    row_31201_31204.1,
    row_31591_31594.1,
    row_31979_31982.1,
    row_32176_32179.1,
    row_32371_32374.1,
    row_32566_32569.1,
    row_32956_32959.1,
    row_33152_33155.1,
    row_33541_33544.1,
    row_33736_33739.1,
    row_34124_34127.1,
    row_34516_34519.1,
    row_34708_34711.1,
    row_34906_34909.1,
    row_35296_35299.1,
    row_35489_35492.1,
    row_35686_35689.1,
    row_36077_36080.1,
    row_36272_36275.1,
    row_36856_36859.1,
    row_37051_37054.1,
    row_37246_37249.1,
    row_37441_37444.1,
    row_37636_37639.1,
    row_38027_38030.1,
    row_38221_38224.1,
    row_38416_38419.1,
    row_38611_38614.1,
    row_38806_38809.1,
    row_39001_39004.1,
    row_39196_39199.1,
    row_39584_39587.1,
    row_39782_39785.1,
    row_40171_40174.1,
    row_40561_40564.1,
    row_40949_40952.1,
    row_41146_41149.1,
    row_41341_41344.1,
    row_41536_41539.1,
    row_41731_41734.1,
    row_41926_41929.1,
    row_42121_42124.1,
    row_42511_42514.1,
    row_42706_42709.1,
    row_42899_42902.1,
    row_43097_43100.1,
    row_43876_43879.1,
    row_44071_44074.1,
    row_44266_44269.1,
    row_44461_44464.1,
    row_44656_44659.1,
    row_44851_44854.1,
    row_45046_45049.1,
    row_45241_45244.1,
    row_45436_45439.1,
    row_45631_45634.1,
    row_46021_46024.1,
    row_46412_46415.1,
    row_46609_46612.1,
    row_46801_46804.1,
    row_46996_46999.1,
    row_47191_47194.1,
    row_47386_47389.1,
    row_47581_47584.1,
    row_47971_47974.1,
    row_48166_48169.1,
    row_48361_48364.1,
    row_48554_48557.1,
    row_48751_48754.1,
    row_49141_49144.1,
    row_49336_49339.1,
    row_49531_49534.1,
    row_50000_50003.1⟩
/-- Those rows have a primitive prime with order ≠ 13.
Not a `∀`. -/
theorem exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) :=
  ⟨row_1_4.2.1,
    row_196_199.2.1,
    row_386_389.2.1,
    row_587_590.2.1,
    row_1171_1174.2.1,
    row_1366_1369.2.1,
    row_1559_1562.2.1,
    row_1756_1759.2.1,
    row_2146_2149.2.1,
    row_2536_2539.2.1,
    row_2731_2734.2.1,
    row_3313_3316.2.1,
    row_3511_3514.2.1,
    row_3706_3709.2.1,
    row_3901_3904.2.1,
    row_4682_4685.2.1,
    row_4876_4879.2.1,
    row_5071_5074.2.1,
    row_5461_5464.2.1,
    row_5849_5852.2.1,
    row_6046_6049.2.1,
    row_6241_6244.2.1,
    row_6631_6634.2.1,
    row_7411_7414.2.1,
    row_7606_7609.2.1,
    row_7801_7804.2.1,
    row_7997_8000.2.1,
    row_8194_8197.2.1,
    row_8582_8585.2.1,
    row_9163_9166.2.1,
    row_9361_9364.2.1,
    row_9751_9754.2.1,
    row_10000_10003.2.1,
    row_10141_10144.2.1,
    row_10531_10534.2.1,
    row_10726_10729.2.1,
    row_11311_11314.2.1,
    row_11506_11509.2.1,
    row_11896_11899.2.1,
    row_12091_12094.2.1,
    row_12871_12874.2.1,
    row_13066_13069.2.1,
    row_13258_13261.2.1,
    row_13457_13460.2.1,
    row_13651_13654.2.1,
    row_13846_13849.2.1,
    row_14041_14044.2.1,
    row_14236_14239.2.1,
    row_14431_14434.2.1,
    row_14626_14629.2.1,
    row_14821_14824.2.1,
    row_15016_15019.2.1,
    row_15211_15214.2.1,
    row_15406_15409.2.1,
    row_15991_15994.2.1,
    row_16186_16189.2.1,
    row_16381_16384.2.1,
    row_16576_16579.2.1,
    row_16771_16774.2.1,
    row_16966_16969.2.1,
    row_17161_17164.2.1,
    row_17354_17357.2.1,
    row_17551_17554.2.1,
    row_17746_17749.2.1,
    row_17938_17941.2.1,
    row_18136_18139.2.1,
    row_18331_18334.2.1,
    row_18526_18529.2.1,
    row_18721_18724.2.1,
    row_19310_19313.2.1,
    row_19501_19504.2.1,
    row_19694_19697.2.1,
    row_19891_19894.2.1,
    row_20086_20089.2.1,
    row_20281_20284.2.1,
    row_20476_20479.2.1,
    row_20671_20674.2.1,
    row_20866_20869.2.1,
    row_21061_21064.2.1,
    row_21256_21259.2.1,
    row_21451_21454.2.1,
    row_21841_21844.2.1,
    row_22229_22232.2.1,
    row_22621_22624.2.1,
    row_22814_22817.2.1,
    row_23206_23209.2.1,
    row_23791_23794.2.1,
    row_24181_24184.2.1,
    row_24374_24377.2.1,
    row_24571_24574.2.1,
    row_24764_24767.2.1,
    row_25156_25159.2.1,
    row_25351_25354.2.1,
    row_26132_26135.2.1,
    row_26326_26329.2.1,
    row_26716_26719.2.1,
    row_26911_26914.2.1,
    row_27301_27304.2.1,
    row_27496_27499.2.1,
    row_27692_27695.2.1,
    row_28081_28084.2.1,
    row_28280_28283.2.1,
    row_28471_28474.2.1,
    row_28666_28669.2.1,
    row_29056_29059.2.1,
    row_29251_29254.2.1,
    row_29446_29449.2.1,
    row_29641_29644.2.1,
    row_29836_29839.2.1,
    row_30031_30034.2.1,
    row_30223_30226.2.1,
    row_30421_30424.2.1,
    row_30617_30620.2.1,
    row_30811_30814.2.1,
    row_31006_31009.2.1,
    row_31201_31204.2.1,
    row_31591_31594.2.1,
    row_31979_31982.2.1,
    row_32176_32179.2.1,
    row_32371_32374.2.1,
    row_32566_32569.2.1,
    row_32956_32959.2.1,
    row_33152_33155.2.1,
    row_33541_33544.2.1,
    row_33736_33739.2.1,
    row_34124_34127.2.1,
    row_34516_34519.2.1,
    row_34708_34711.2.1,
    row_34906_34909.2.1,
    row_35296_35299.2.1,
    row_35489_35492.2.1,
    row_35686_35689.2.1,
    row_36077_36080.2.1,
    row_36272_36275.2.1,
    row_36856_36859.2.1,
    row_37051_37054.2.1,
    row_37246_37249.2.1,
    row_37441_37444.2.1,
    row_37636_37639.2.1,
    row_38027_38030.2.1,
    row_38221_38224.2.1,
    row_38416_38419.2.1,
    row_38611_38614.2.1,
    row_38806_38809.2.1,
    row_39001_39004.2.1,
    row_39196_39199.2.1,
    row_39584_39587.2.1,
    row_39782_39785.2.1,
    row_40171_40174.2.1,
    row_40561_40564.2.1,
    row_40949_40952.2.1,
    row_41146_41149.2.1,
    row_41341_41344.2.1,
    row_41536_41539.2.1,
    row_41731_41734.2.1,
    row_41926_41929.2.1,
    row_42121_42124.2.1,
    row_42511_42514.2.1,
    row_42706_42709.2.1,
    row_42899_42902.2.1,
    row_43097_43100.2.1,
    row_43876_43879.2.1,
    row_44071_44074.2.1,
    row_44266_44269.2.1,
    row_44461_44464.2.1,
    row_44656_44659.2.1,
    row_44851_44854.2.1,
    row_45046_45049.2.1,
    row_45241_45244.2.1,
    row_45436_45439.2.1,
    row_45631_45634.2.1,
    row_46021_46024.2.1,
    row_46412_46415.2.1,
    row_46609_46612.2.1,
    row_46801_46804.2.1,
    row_46996_46999.2.1,
    row_47191_47194.2.1,
    row_47386_47389.2.1,
    row_47581_47584.2.1,
    row_47971_47974.2.1,
    row_48166_48169.2.1,
    row_48361_48364.2.1,
    row_48554_48557.2.1,
    row_48751_48754.2.1,
    row_49141_49144.2.1,
    row_49336_49339.2.1,
    row_49531_49534.2.1,
    row_50000_50003.2.1⟩
/-- Those rows have `S` not a fourth power.
Not a `∀`. -/
theorem S_not_fourth_B_le_50000_from_exp_one_table_rows :
    S_not_fourth 1 4 ∧
    S_not_fourth 196 199 ∧
    S_not_fourth 386 389 ∧
    S_not_fourth 587 590 ∧
    S_not_fourth 1171 1174 ∧
    S_not_fourth 1366 1369 ∧
    S_not_fourth 1559 1562 ∧
    S_not_fourth 1756 1759 ∧
    S_not_fourth 2146 2149 ∧
    S_not_fourth 2536 2539 ∧
    S_not_fourth 2731 2734 ∧
    S_not_fourth 3313 3316 ∧
    S_not_fourth 3511 3514 ∧
    S_not_fourth 3706 3709 ∧
    S_not_fourth 3901 3904 ∧
    S_not_fourth 4682 4685 ∧
    S_not_fourth 4876 4879 ∧
    S_not_fourth 5071 5074 ∧
    S_not_fourth 5461 5464 ∧
    S_not_fourth 5849 5852 ∧
    S_not_fourth 6046 6049 ∧
    S_not_fourth 6241 6244 ∧
    S_not_fourth 6631 6634 ∧
    S_not_fourth 7411 7414 ∧
    S_not_fourth 7606 7609 ∧
    S_not_fourth 7801 7804 ∧
    S_not_fourth 7997 8000 ∧
    S_not_fourth 8194 8197 ∧
    S_not_fourth 8582 8585 ∧
    S_not_fourth 9163 9166 ∧
    S_not_fourth 9361 9364 ∧
    S_not_fourth 9751 9754 ∧
    S_not_fourth 10000 10003 ∧
    S_not_fourth 10141 10144 ∧
    S_not_fourth 10531 10534 ∧
    S_not_fourth 10726 10729 ∧
    S_not_fourth 11311 11314 ∧
    S_not_fourth 11506 11509 ∧
    S_not_fourth 11896 11899 ∧
    S_not_fourth 12091 12094 ∧
    S_not_fourth 12871 12874 ∧
    S_not_fourth 13066 13069 ∧
    S_not_fourth 13258 13261 ∧
    S_not_fourth 13457 13460 ∧
    S_not_fourth 13651 13654 ∧
    S_not_fourth 13846 13849 ∧
    S_not_fourth 14041 14044 ∧
    S_not_fourth 14236 14239 ∧
    S_not_fourth 14431 14434 ∧
    S_not_fourth 14626 14629 ∧
    S_not_fourth 14821 14824 ∧
    S_not_fourth 15016 15019 ∧
    S_not_fourth 15211 15214 ∧
    S_not_fourth 15406 15409 ∧
    S_not_fourth 15991 15994 ∧
    S_not_fourth 16186 16189 ∧
    S_not_fourth 16381 16384 ∧
    S_not_fourth 16576 16579 ∧
    S_not_fourth 16771 16774 ∧
    S_not_fourth 16966 16969 ∧
    S_not_fourth 17161 17164 ∧
    S_not_fourth 17354 17357 ∧
    S_not_fourth 17551 17554 ∧
    S_not_fourth 17746 17749 ∧
    S_not_fourth 17938 17941 ∧
    S_not_fourth 18136 18139 ∧
    S_not_fourth 18331 18334 ∧
    S_not_fourth 18526 18529 ∧
    S_not_fourth 18721 18724 ∧
    S_not_fourth 19310 19313 ∧
    S_not_fourth 19501 19504 ∧
    S_not_fourth 19694 19697 ∧
    S_not_fourth 19891 19894 ∧
    S_not_fourth 20086 20089 ∧
    S_not_fourth 20281 20284 ∧
    S_not_fourth 20476 20479 ∧
    S_not_fourth 20671 20674 ∧
    S_not_fourth 20866 20869 ∧
    S_not_fourth 21061 21064 ∧
    S_not_fourth 21256 21259 ∧
    S_not_fourth 21451 21454 ∧
    S_not_fourth 21841 21844 ∧
    S_not_fourth 22229 22232 ∧
    S_not_fourth 22621 22624 ∧
    S_not_fourth 22814 22817 ∧
    S_not_fourth 23206 23209 ∧
    S_not_fourth 23791 23794 ∧
    S_not_fourth 24181 24184 ∧
    S_not_fourth 24374 24377 ∧
    S_not_fourth 24571 24574 ∧
    S_not_fourth 24764 24767 ∧
    S_not_fourth 25156 25159 ∧
    S_not_fourth 25351 25354 ∧
    S_not_fourth 26132 26135 ∧
    S_not_fourth 26326 26329 ∧
    S_not_fourth 26716 26719 ∧
    S_not_fourth 26911 26914 ∧
    S_not_fourth 27301 27304 ∧
    S_not_fourth 27496 27499 ∧
    S_not_fourth 27692 27695 ∧
    S_not_fourth 28081 28084 ∧
    S_not_fourth 28280 28283 ∧
    S_not_fourth 28471 28474 ∧
    S_not_fourth 28666 28669 ∧
    S_not_fourth 29056 29059 ∧
    S_not_fourth 29251 29254 ∧
    S_not_fourth 29446 29449 ∧
    S_not_fourth 29641 29644 ∧
    S_not_fourth 29836 29839 ∧
    S_not_fourth 30031 30034 ∧
    S_not_fourth 30223 30226 ∧
    S_not_fourth 30421 30424 ∧
    S_not_fourth 30617 30620 ∧
    S_not_fourth 30811 30814 ∧
    S_not_fourth 31006 31009 ∧
    S_not_fourth 31201 31204 ∧
    S_not_fourth 31591 31594 ∧
    S_not_fourth 31979 31982 ∧
    S_not_fourth 32176 32179 ∧
    S_not_fourth 32371 32374 ∧
    S_not_fourth 32566 32569 ∧
    S_not_fourth 32956 32959 ∧
    S_not_fourth 33152 33155 ∧
    S_not_fourth 33541 33544 ∧
    S_not_fourth 33736 33739 ∧
    S_not_fourth 34124 34127 ∧
    S_not_fourth 34516 34519 ∧
    S_not_fourth 34708 34711 ∧
    S_not_fourth 34906 34909 ∧
    S_not_fourth 35296 35299 ∧
    S_not_fourth 35489 35492 ∧
    S_not_fourth 35686 35689 ∧
    S_not_fourth 36077 36080 ∧
    S_not_fourth 36272 36275 ∧
    S_not_fourth 36856 36859 ∧
    S_not_fourth 37051 37054 ∧
    S_not_fourth 37246 37249 ∧
    S_not_fourth 37441 37444 ∧
    S_not_fourth 37636 37639 ∧
    S_not_fourth 38027 38030 ∧
    S_not_fourth 38221 38224 ∧
    S_not_fourth 38416 38419 ∧
    S_not_fourth 38611 38614 ∧
    S_not_fourth 38806 38809 ∧
    S_not_fourth 39001 39004 ∧
    S_not_fourth 39196 39199 ∧
    S_not_fourth 39584 39587 ∧
    S_not_fourth 39782 39785 ∧
    S_not_fourth 40171 40174 ∧
    S_not_fourth 40561 40564 ∧
    S_not_fourth 40949 40952 ∧
    S_not_fourth 41146 41149 ∧
    S_not_fourth 41341 41344 ∧
    S_not_fourth 41536 41539 ∧
    S_not_fourth 41731 41734 ∧
    S_not_fourth 41926 41929 ∧
    S_not_fourth 42121 42124 ∧
    S_not_fourth 42511 42514 ∧
    S_not_fourth 42706 42709 ∧
    S_not_fourth 42899 42902 ∧
    S_not_fourth 43097 43100 ∧
    S_not_fourth 43876 43879 ∧
    S_not_fourth 44071 44074 ∧
    S_not_fourth 44266 44269 ∧
    S_not_fourth 44461 44464 ∧
    S_not_fourth 44656 44659 ∧
    S_not_fourth 44851 44854 ∧
    S_not_fourth 45046 45049 ∧
    S_not_fourth 45241 45244 ∧
    S_not_fourth 45436 45439 ∧
    S_not_fourth 45631 45634 ∧
    S_not_fourth 46021 46024 ∧
    S_not_fourth 46412 46415 ∧
    S_not_fourth 46609 46612 ∧
    S_not_fourth 46801 46804 ∧
    S_not_fourth 46996 46999 ∧
    S_not_fourth 47191 47194 ∧
    S_not_fourth 47386 47389 ∧
    S_not_fourth 47581 47584 ∧
    S_not_fourth 47971 47974 ∧
    S_not_fourth 48166 48169 ∧
    S_not_fourth 48361 48364 ∧
    S_not_fourth 48554 48557 ∧
    S_not_fourth 48751 48754 ∧
    S_not_fourth 49141 49144 ∧
    S_not_fourth 49336 49339 ∧
    S_not_fourth 49531 49534 ∧
    S_not_fourth 50000 50003 :=
  ⟨row_1_4.2.2,
    row_196_199.2.2,
    row_386_389.2.2,
    row_587_590.2.2,
    row_1171_1174.2.2,
    row_1366_1369.2.2,
    row_1559_1562.2.2,
    row_1756_1759.2.2,
    row_2146_2149.2.2,
    row_2536_2539.2.2,
    row_2731_2734.2.2,
    row_3313_3316.2.2,
    row_3511_3514.2.2,
    row_3706_3709.2.2,
    row_3901_3904.2.2,
    row_4682_4685.2.2,
    row_4876_4879.2.2,
    row_5071_5074.2.2,
    row_5461_5464.2.2,
    row_5849_5852.2.2,
    row_6046_6049.2.2,
    row_6241_6244.2.2,
    row_6631_6634.2.2,
    row_7411_7414.2.2,
    row_7606_7609.2.2,
    row_7801_7804.2.2,
    row_7997_8000.2.2,
    row_8194_8197.2.2,
    row_8582_8585.2.2,
    row_9163_9166.2.2,
    row_9361_9364.2.2,
    row_9751_9754.2.2,
    row_10000_10003.2.2,
    row_10141_10144.2.2,
    row_10531_10534.2.2,
    row_10726_10729.2.2,
    row_11311_11314.2.2,
    row_11506_11509.2.2,
    row_11896_11899.2.2,
    row_12091_12094.2.2,
    row_12871_12874.2.2,
    row_13066_13069.2.2,
    row_13258_13261.2.2,
    row_13457_13460.2.2,
    row_13651_13654.2.2,
    row_13846_13849.2.2,
    row_14041_14044.2.2,
    row_14236_14239.2.2,
    row_14431_14434.2.2,
    row_14626_14629.2.2,
    row_14821_14824.2.2,
    row_15016_15019.2.2,
    row_15211_15214.2.2,
    row_15406_15409.2.2,
    row_15991_15994.2.2,
    row_16186_16189.2.2,
    row_16381_16384.2.2,
    row_16576_16579.2.2,
    row_16771_16774.2.2,
    row_16966_16969.2.2,
    row_17161_17164.2.2,
    row_17354_17357.2.2,
    row_17551_17554.2.2,
    row_17746_17749.2.2,
    row_17938_17941.2.2,
    row_18136_18139.2.2,
    row_18331_18334.2.2,
    row_18526_18529.2.2,
    row_18721_18724.2.2,
    row_19310_19313.2.2,
    row_19501_19504.2.2,
    row_19694_19697.2.2,
    row_19891_19894.2.2,
    row_20086_20089.2.2,
    row_20281_20284.2.2,
    row_20476_20479.2.2,
    row_20671_20674.2.2,
    row_20866_20869.2.2,
    row_21061_21064.2.2,
    row_21256_21259.2.2,
    row_21451_21454.2.2,
    row_21841_21844.2.2,
    row_22229_22232.2.2,
    row_22621_22624.2.2,
    row_22814_22817.2.2,
    row_23206_23209.2.2,
    row_23791_23794.2.2,
    row_24181_24184.2.2,
    row_24374_24377.2.2,
    row_24571_24574.2.2,
    row_24764_24767.2.2,
    row_25156_25159.2.2,
    row_25351_25354.2.2,
    row_26132_26135.2.2,
    row_26326_26329.2.2,
    row_26716_26719.2.2,
    row_26911_26914.2.2,
    row_27301_27304.2.2,
    row_27496_27499.2.2,
    row_27692_27695.2.2,
    row_28081_28084.2.2,
    row_28280_28283.2.2,
    row_28471_28474.2.2,
    row_28666_28669.2.2,
    row_29056_29059.2.2,
    row_29251_29254.2.2,
    row_29446_29449.2.2,
    row_29641_29644.2.2,
    row_29836_29839.2.2,
    row_30031_30034.2.2,
    row_30223_30226.2.2,
    row_30421_30424.2.2,
    row_30617_30620.2.2,
    row_30811_30814.2.2,
    row_31006_31009.2.2,
    row_31201_31204.2.2,
    row_31591_31594.2.2,
    row_31979_31982.2.2,
    row_32176_32179.2.2,
    row_32371_32374.2.2,
    row_32566_32569.2.2,
    row_32956_32959.2.2,
    row_33152_33155.2.2,
    row_33541_33544.2.2,
    row_33736_33739.2.2,
    row_34124_34127.2.2,
    row_34516_34519.2.2,
    row_34708_34711.2.2,
    row_34906_34909.2.2,
    row_35296_35299.2.2,
    row_35489_35492.2.2,
    row_35686_35689.2.2,
    row_36077_36080.2.2,
    row_36272_36275.2.2,
    row_36856_36859.2.2,
    row_37051_37054.2.2,
    row_37246_37249.2.2,
    row_37441_37444.2.2,
    row_37636_37639.2.2,
    row_38027_38030.2.2,
    row_38221_38224.2.2,
    row_38416_38419.2.2,
    row_38611_38614.2.2,
    row_38806_38809.2.2,
    row_39001_39004.2.2,
    row_39196_39199.2.2,
    row_39584_39587.2.2,
    row_39782_39785.2.2,
    row_40171_40174.2.2,
    row_40561_40564.2.2,
    row_40949_40952.2.2,
    row_41146_41149.2.2,
    row_41341_41344.2.2,
    row_41536_41539.2.2,
    row_41731_41734.2.2,
    row_41926_41929.2.2,
    row_42121_42124.2.2,
    row_42511_42514.2.2,
    row_42706_42709.2.2,
    row_42899_42902.2.2,
    row_43097_43100.2.2,
    row_43876_43879.2.2,
    row_44071_44074.2.2,
    row_44266_44269.2.2,
    row_44461_44464.2.2,
    row_44656_44659.2.2,
    row_44851_44854.2.2,
    row_45046_45049.2.2,
    row_45241_45244.2.2,
    row_45436_45439.2.2,
    row_45631_45634.2.2,
    row_46021_46024.2.2,
    row_46412_46415.2.2,
    row_46609_46612.2.2,
    row_46801_46804.2.2,
    row_46996_46999.2.2,
    row_47191_47194.2.2,
    row_47386_47389.2.2,
    row_47581_47584.2.2,
    row_47971_47974.2.2,
    row_48166_48169.2.2,
    row_48361_48364.2.2,
    row_48554_48557.2.2,
    row_48751_48754.2.2,
    row_49141_49144.2.2,
    row_49336_49339.2.2,
    row_49531_49534.2.2,
    row_50000_50003.2.2⟩
/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; 188 rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower
      (S_val B C)

/-- Uninhabited.  188 rows are not every `B ≤ 50000`.
`B > 50000` needs Bugeaud–Corvaja–Zannier. -/
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
#check S_has_prime_with_exp_one_B_le_50000_table_rows
#check exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows
#check S_not_fourth_B_le_50000_from_exp_one_table_rows
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_has_prime_with_exp_one_B_le_50000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_50000_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension
