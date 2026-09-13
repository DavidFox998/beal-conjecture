/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes5to100`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_5_100
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_5_100

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_5_100
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
/-- Pratt certificates for the seven residuals
whose table `Q₂` is `≤ 10000`. -/
theorem q2_gt_10000_5 :
    Nat.Prime 10151 ∧ 10151 % (5 * 5) = 1 ∧
      10151 ≤ 100000000 ∧ 5 ≤ 10151 ∧ 10000 < 10151 :=
  ⟨prime_of_pratt (a := 7) [2, 5, 5, 7, 29]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

theorem q2_gt_10000_7 :
    Nat.Prime 10193 ∧ 10193 % (7 * 7) = 1 ∧
      10193 ≤ 100000000 ∧ 5 ≤ 10193 ∧ 10000 < 10193 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 7, 7, 13]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

theorem q2_gt_10000_11 :
    Nat.Prime 10891 ∧ 10891 % (11 * 11) = 1 ∧
      10891 ≤ 100000000 ∧ 5 ≤ 10891 ∧ 10000 < 10891 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 5, 11, 11]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

theorem q2_gt_10000_13 :
    Nat.Prime 10141 ∧ 10141 % (13 * 13) = 1 ∧
      10141 ≤ 100000000 ∧ 5 ≤ 10141 ∧ 10000 < 10141 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 5, 13, 13]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

theorem q2_gt_10000_17 :
    Nat.Prime 13873 ∧ 13873 % (17 * 17) = 1 ∧
      13873 ≤ 100000000 ∧ 5 ≤ 13873 ∧ 10000 < 13873 :=
  ⟨prime_of_pratt (a := 5) [2, 2, 2, 2, 3, 17, 17]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

theorem q2_gt_10000_37 :
    Nat.Prime 13691 ∧ 13691 % (37 * 37) = 1 ∧
      13691 ≤ 100000000 ∧ 5 ≤ 13691 ∧ 10000 < 13691 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 37, 37]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

theorem q2_gt_10000_47 :
    Nat.Prime 22091 ∧ 22091 % (47 * 47) = 1 ∧
      22091 ≤ 100000000 ∧ 5 ≤ 22091 ∧ 10000 < 22091 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 47, 47]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩

def twaux_26_5 : TWAuxEllFixed 5 26 where
  Q1ell := 31
  Q2ell := 101
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_5).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_5 : TWAuxEllFixedExists 5 26 :=
  ⟨twaux_26_5⟩

def twaux_10000_5 : TWAuxEllFixed 5 10000 where
  Q1ell := 10061
  Q2ell := 10151
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_5).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_5 : TWAuxEllFixedExists 5 10000 :=
  ⟨twaux_10000_5⟩

def twaux_26_7 : TWAuxEllFixed 7 26 where
  Q1ell := 29
  Q2ell := 197
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_7).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_7 : TWAuxEllFixedExists 7 26 :=
  ⟨twaux_26_7⟩

def twaux_10000_7 : TWAuxEllFixed 7 10000 where
  Q1ell := 10039
  Q2ell := 10193
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_7).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_7 : TWAuxEllFixedExists 7 10000 :=
  ⟨twaux_10000_7⟩

def twaux_26_11 : TWAuxEllFixed 11 26 where
  Q1ell := 67
  Q2ell := 727
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_11).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_11 : TWAuxEllFixedExists 11 26 :=
  ⟨twaux_26_11⟩

def twaux_10000_11 : TWAuxEllFixed 11 10000 where
  Q1ell := 10099
  Q2ell := 10891
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_11).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_11 : TWAuxEllFixedExists 11 10000 :=
  ⟨twaux_10000_11⟩

def twaux_26_13 : TWAuxEllFixed 13 26 where
  Q1ell := 53
  Q2ell := 677
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_13).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_13 : TWAuxEllFixedExists 13 26 :=
  ⟨twaux_26_13⟩

def twaux_10000_13 : TWAuxEllFixed 13 10000 where
  Q1ell := 10037
  Q2ell := 10141
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_13).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_13 : TWAuxEllFixedExists 13 10000 :=
  ⟨twaux_10000_13⟩

def twaux_26_17 : TWAuxEllFixed 17 26 where
  Q1ell := 103
  Q2ell := 3469
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_17).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_17 : TWAuxEllFixedExists 17 26 :=
  ⟨twaux_26_17⟩

def twaux_10000_17 : TWAuxEllFixed 17 10000 where
  Q1ell := 10099
  Q2ell := 13873
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_17).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_17 : TWAuxEllFixedExists 17 10000 :=
  ⟨twaux_10000_17⟩

def twaux_26_19 : TWAuxEllFixed 19 26 where
  Q1ell := 191
  Q2ell := 10831
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_19).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_19 : TWAuxEllFixedExists 19 26 :=
  ⟨twaux_26_19⟩

def twaux_10000_19 : TWAuxEllFixed 19 10000 where
  Q1ell := 10223
  Q2ell := 10831
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_19).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_19 : TWAuxEllFixedExists 19 10000 :=
  ⟨twaux_10000_19⟩

def twaux_26_23 : TWAuxEllFixed 23 26 where
  Q1ell := 47
  Q2ell := 12697
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_23).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_23 : TWAuxEllFixedExists 23 26 :=
  ⟨twaux_26_23⟩

def twaux_10000_23 : TWAuxEllFixed 23 10000 where
  Q1ell := 10259
  Q2ell := 12697
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_23).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_23 : TWAuxEllFixedExists 23 10000 :=
  ⟨twaux_10000_23⟩

def twaux_26_29 : TWAuxEllFixed 29 26 where
  Q1ell := 59
  Q2ell := 10093
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_29).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_29 : TWAuxEllFixedExists 29 26 :=
  ⟨twaux_26_29⟩

def twaux_10000_29 : TWAuxEllFixed 29 10000 where
  Q1ell := 10151
  Q2ell := 10093
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_29).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_29 : TWAuxEllFixedExists 29 10000 :=
  ⟨twaux_10000_29⟩

def twaux_26_31 : TWAuxEllFixed 31 26 where
  Q1ell := 311
  Q2ell := 15377
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_31).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_31 : TWAuxEllFixedExists 31 26 :=
  ⟨twaux_26_31⟩

def twaux_10000_31 : TWAuxEllFixed 31 10000 where
  Q1ell := 10169
  Q2ell := 15377
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_31).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_31 : TWAuxEllFixedExists 31 10000 :=
  ⟨twaux_10000_31⟩

def twaux_26_37 : TWAuxEllFixed 37 26 where
  Q1ell := 149
  Q2ell := 5477
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_37).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_37 : TWAuxEllFixedExists 37 26 :=
  ⟨twaux_26_37⟩

def twaux_10000_37 : TWAuxEllFixed 37 10000 where
  Q1ell := 10139
  Q2ell := 13691
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_37).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_37 : TWAuxEllFixedExists 37 10000 :=
  ⟨twaux_10000_37⟩

def twaux_26_41 : TWAuxEllFixed 41 26 where
  Q1ell := 83
  Q2ell := 16811
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_41).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_41 : TWAuxEllFixedExists 41 26 :=
  ⟨twaux_26_41⟩

def twaux_10000_41 : TWAuxEllFixed 41 10000 where
  Q1ell := 10169
  Q2ell := 16811
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_41).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_41 : TWAuxEllFixedExists 41 10000 :=
  ⟨twaux_10000_41⟩

def twaux_26_43 : TWAuxEllFixed 43 26 where
  Q1ell := 173
  Q2ell := 22189
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_43).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_43 : TWAuxEllFixedExists 43 26 :=
  ⟨twaux_26_43⟩

def twaux_10000_43 : TWAuxEllFixed 43 10000 where
  Q1ell := 10321
  Q2ell := 22189
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_43).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_43 : TWAuxEllFixedExists 43 10000 :=
  ⟨twaux_10000_43⟩

def twaux_26_47 : TWAuxEllFixed 47 26 where
  Q1ell := 283
  Q2ell := 8837
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_47).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_47 : TWAuxEllFixedExists 47 26 :=
  ⟨twaux_26_47⟩

def twaux_10000_47 : TWAuxEllFixed 47 10000 where
  Q1ell := 10247
  Q2ell := 22091
  Q1_prime := by norm_num
  Q2_prime := (q2_gt_10000_47).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_47 : TWAuxEllFixedExists 47 10000 :=
  ⟨twaux_10000_47⟩

def twaux_26_53 : TWAuxEllFixed 53 26 where
  Q1ell := 107
  Q2ell := 78653
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_53).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_53 : TWAuxEllFixedExists 53 26 :=
  ⟨twaux_26_53⟩

def twaux_10000_53 : TWAuxEllFixed 53 10000 where
  Q1ell := 10177
  Q2ell := 78653
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_53).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_53 : TWAuxEllFixedExists 53 10000 :=
  ⟨twaux_10000_53⟩

def twaux_26_59 : TWAuxEllFixed 59 26 where
  Q1ell := 709
  Q2ell := 20887
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_59).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_59 : TWAuxEllFixedExists 59 26 :=
  ⟨twaux_26_59⟩

def twaux_10000_59 : TWAuxEllFixed 59 10000 where
  Q1ell := 10267
  Q2ell := 20887
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_59).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_59 : TWAuxEllFixedExists 59 10000 :=
  ⟨twaux_10000_59⟩

def twaux_26_61 : TWAuxEllFixed 61 26 where
  Q1ell := 367
  Q2ell := 171167
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_61).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_61 : TWAuxEllFixedExists 61 26 :=
  ⟨twaux_26_61⟩

def twaux_10000_61 : TWAuxEllFixed 61 10000 where
  Q1ell := 10859
  Q2ell := 171167
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_61).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_61 : TWAuxEllFixedExists 61 10000 :=
  ⟨twaux_10000_61⟩

def twaux_26_67 : TWAuxEllFixed 67 26 where
  Q1ell := 269
  Q2ell := 17957
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_67).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_67 : TWAuxEllFixedExists 67 26 :=
  ⟨twaux_26_67⟩

def twaux_10000_67 : TWAuxEllFixed 67 10000 where
  Q1ell := 10453
  Q2ell := 17957
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_67).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_67 : TWAuxEllFixedExists 67 10000 :=
  ⟨twaux_10000_67⟩

def twaux_26_71 : TWAuxEllFixed 71 26 where
  Q1ell := 569
  Q2ell := 50411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_71).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_71 : TWAuxEllFixedExists 71 26 :=
  ⟨twaux_26_71⟩

def twaux_10000_71 : TWAuxEllFixed 71 10000 where
  Q1ell := 10651
  Q2ell := 50411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_71).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_71 : TWAuxEllFixedExists 71 10000 :=
  ⟨twaux_10000_71⟩

def twaux_26_73 : TWAuxEllFixed 73 26 where
  Q1ell := 293
  Q2ell := 21317
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_73).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_73 : TWAuxEllFixedExists 73 26 :=
  ⟨twaux_26_73⟩

def twaux_10000_73 : TWAuxEllFixed 73 10000 where
  Q1ell := 10513
  Q2ell := 21317
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_73).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_73 : TWAuxEllFixedExists 73 10000 :=
  ⟨twaux_10000_73⟩

def twaux_26_79 : TWAuxEllFixed 79 26 where
  Q1ell := 317
  Q2ell := 37447
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_79).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_79 : TWAuxEllFixedExists 79 26 :=
  ⟨twaux_26_79⟩

def twaux_10000_79 : TWAuxEllFixed 79 10000 where
  Q1ell := 10271
  Q2ell := 37447
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_79).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_79 : TWAuxEllFixedExists 79 10000 :=
  ⟨twaux_10000_79⟩

def twaux_26_83 : TWAuxEllFixed 83 26 where
  Q1ell := 167
  Q2ell := 68891
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_83).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_83 : TWAuxEllFixedExists 83 26 :=
  ⟨twaux_26_83⟩

def twaux_10000_83 : TWAuxEllFixed 83 10000 where
  Q1ell := 10459
  Q2ell := 68891
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_83).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_83 : TWAuxEllFixedExists 83 10000 :=
  ⟨twaux_10000_83⟩

def twaux_26_89 : TWAuxEllFixed 89 26 where
  Q1ell := 179
  Q2ell := 47527
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_89).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_89 : TWAuxEllFixedExists 89 26 :=
  ⟨twaux_26_89⟩

def twaux_10000_89 : TWAuxEllFixed 89 10000 where
  Q1ell := 10859
  Q2ell := 47527
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_89).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_89 : TWAuxEllFixedExists 89 10000 :=
  ⟨twaux_10000_89⟩

def twaux_26_97 : TWAuxEllFixed 97 26 where
  Q1ell := 389
  Q2ell := 112909
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_97).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_97 : TWAuxEllFixedExists 97 26 :=
  ⟨twaux_26_97⟩

def twaux_10000_97 : TWAuxEllFixed 97 10000 where
  Q1ell := 10477
  Q2ell := 112909
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_97).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_97 : TWAuxEllFixedExists 97 10000 :=
  ⟨twaux_10000_97⟩

theorem TWAuxEllFixedExists_26_5_100 {ℓ : Nat}
    (h : ℓ ∈ primes5to100) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_5
  · exact twaux_exists_26_7
  · exact twaux_exists_26_11
  · exact twaux_exists_26_13
  · exact twaux_exists_26_17
  · exact twaux_exists_26_19
  · exact twaux_exists_26_23
  · exact twaux_exists_26_29
  · exact twaux_exists_26_31
  · exact twaux_exists_26_37
  · exact twaux_exists_26_41
  · exact twaux_exists_26_43
  · exact twaux_exists_26_47
  · exact twaux_exists_26_53
  · exact twaux_exists_26_59
  · exact twaux_exists_26_61
  · exact twaux_exists_26_67
  · exact twaux_exists_26_71
  · exact twaux_exists_26_73
  · exact twaux_exists_26_79
  · exact twaux_exists_26_83
  · exact twaux_exists_26_89
  · exact twaux_exists_26_97

theorem TWAuxEllFixedExists_10000_5_100 {ℓ : Nat}
    (h : ℓ ∈ primes5to100) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_5
  · exact twaux_exists_10000_7
  · exact twaux_exists_10000_11
  · exact twaux_exists_10000_13
  · exact twaux_exists_10000_17
  · exact twaux_exists_10000_19
  · exact twaux_exists_10000_23
  · exact twaux_exists_10000_29
  · exact twaux_exists_10000_31
  · exact twaux_exists_10000_37
  · exact twaux_exists_10000_41
  · exact twaux_exists_10000_43
  · exact twaux_exists_10000_47
  · exact twaux_exists_10000_53
  · exact twaux_exists_10000_59
  · exact twaux_exists_10000_61
  · exact twaux_exists_10000_67
  · exact twaux_exists_10000_71
  · exact twaux_exists_10000_73
  · exact twaux_exists_10000_79
  · exact twaux_exists_10000_83
  · exact twaux_exists_10000_89
  · exact twaux_exists_10000_97

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_5_100
