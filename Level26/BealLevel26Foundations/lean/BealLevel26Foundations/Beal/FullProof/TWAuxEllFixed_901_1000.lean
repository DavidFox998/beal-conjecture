/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes901to1000`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_901_1000
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_901_1000

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_901_1000
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_907 : TWAuxEllFixed 907 26 where
  Q1ell := 5443
  Q2ell := 9871789
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_907).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_907 : TWAuxEllFixedExists 907 26 :=
  ⟨twaux_26_907⟩

def twaux_10000_907 : TWAuxEllFixed 907 10000 where
  Q1ell := 27211
  Q2ell := 9871789
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_907).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_907 : TWAuxEllFixedExists 907 10000 :=
  ⟨twaux_10000_907⟩

def twaux_26_911 : TWAuxEllFixed 911 26 where
  Q1ell := 1823
  Q2ell := 13278737
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_911).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_911 : TWAuxEllFixedExists 911 26 :=
  ⟨twaux_26_911⟩

def twaux_10000_911 : TWAuxEllFixed 911 10000 where
  Q1ell := 23687
  Q2ell := 13278737
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_911).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_911 : TWAuxEllFixedExists 911 10000 :=
  ⟨twaux_10000_911⟩

def twaux_26_919 : TWAuxEllFixed 919 26 where
  Q1ell := 3677
  Q2ell := 59119271
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_919).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_919 : TWAuxEllFixedExists 919 26 :=
  ⟨twaux_26_919⟩

def twaux_10000_919 : TWAuxEllFixed 919 10000 where
  Q1ell := 20219
  Q2ell := 59119271
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_919).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_919 : TWAuxEllFixedExists 919 10000 :=
  ⟨twaux_10000_919⟩

def twaux_26_929 : TWAuxEllFixed 929 26 where
  Q1ell := 7433
  Q2ell := 13808657
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_929).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_929 : TWAuxEllFixedExists 929 26 :=
  ⟨twaux_26_929⟩

def twaux_10000_929 : TWAuxEllFixed 929 10000 where
  Q1ell := 11149
  Q2ell := 13808657
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_929).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_929 : TWAuxEllFixedExists 929 10000 :=
  ⟨twaux_10000_929⟩

def twaux_26_937 : TWAuxEllFixed 937 26 where
  Q1ell := 5623
  Q2ell := 15803443
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_937).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_937 : TWAuxEllFixedExists 937 26 :=
  ⟨twaux_26_937⟩

def twaux_10000_937 : TWAuxEllFixed 937 10000 where
  Q1ell := 26237
  Q2ell := 15803443
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_937).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_937 : TWAuxEllFixedExists 937 10000 :=
  ⟨twaux_10000_937⟩

def twaux_26_941 : TWAuxEllFixed 941 26 where
  Q1ell := 5647
  Q2ell := 14167697
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_941).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_941 : TWAuxEllFixedExists 941 26 :=
  ⟨twaux_26_941⟩

def twaux_10000_941 : TWAuxEllFixed 941 10000 where
  Q1ell := 30113
  Q2ell := 14167697
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_941).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_941 : TWAuxEllFixedExists 941 10000 :=
  ⟨twaux_10000_941⟩

def twaux_26_947 : TWAuxEllFixed 947 26 where
  Q1ell := 5683
  Q2ell := 3587237
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_947).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_947 : TWAuxEllFixedExists 947 26 :=
  ⟨twaux_26_947⟩

def twaux_10000_947 : TWAuxEllFixed 947 10000 where
  Q1ell := 13259
  Q2ell := 3587237
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_947).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_947 : TWAuxEllFixedExists 947 10000 :=
  ⟨twaux_10000_947⟩

def twaux_26_953 : TWAuxEllFixed 953 26 where
  Q1ell := 1907
  Q2ell := 9082091
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_953).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_953 : TWAuxEllFixedExists 953 26 :=
  ⟨twaux_26_953⟩

def twaux_10000_953 : TWAuxEllFixed 953 10000 where
  Q1ell := 11437
  Q2ell := 9082091
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_953).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_953 : TWAuxEllFixedExists 953 10000 :=
  ⟨twaux_10000_953⟩

def twaux_26_967 : TWAuxEllFixed 967 26 where
  Q1ell := 15473
  Q2ell := 11221069
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_967).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_967 : TWAuxEllFixedExists 967 26 :=
  ⟨twaux_26_967⟩

def twaux_10000_967 : TWAuxEllFixed 967 10000 where
  Q1ell := 15473
  Q2ell := 11221069
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_967).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_967 : TWAuxEllFixedExists 967 10000 :=
  ⟨twaux_10000_967⟩

def twaux_26_971 : TWAuxEllFixed 971 26 where
  Q1ell := 5827
  Q2ell := 9428411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_971).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_971 : TWAuxEllFixedExists 971 26 :=
  ⟨twaux_26_971⟩

def twaux_10000_971 : TWAuxEllFixed 971 10000 where
  Q1ell := 19421
  Q2ell := 9428411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_971).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_971 : TWAuxEllFixedExists 971 10000 :=
  ⟨twaux_10000_971⟩

def twaux_26_977 : TWAuxEllFixed 977 26 where
  Q1ell := 7817
  Q2ell := 17181523
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_977).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_977 : TWAuxEllFixedExists 977 26 :=
  ⟨twaux_26_977⟩

def twaux_10000_977 : TWAuxEllFixed 977 10000 where
  Q1ell := 13679
  Q2ell := 17181523
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_977).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_977 : TWAuxEllFixedExists 977 10000 :=
  ⟨twaux_10000_977⟩

def twaux_26_983 : TWAuxEllFixed 983 26 where
  Q1ell := 13763
  Q2ell := 3865157
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_983).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_983 : TWAuxEllFixedExists 983 26 :=
  ⟨twaux_26_983⟩

def twaux_10000_983 : TWAuxEllFixed 983 10000 where
  Q1ell := 13763
  Q2ell := 3865157
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_983).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_983 : TWAuxEllFixedExists 983 10000 :=
  ⟨twaux_10000_983⟩

def twaux_26_991 : TWAuxEllFixed 991 26 where
  Q1ell := 17839
  Q2ell := 47139889
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_991).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_991 : TWAuxEllFixedExists 991 26 :=
  ⟨twaux_26_991⟩

def twaux_10000_991 : TWAuxEllFixed 991 10000 where
  Q1ell := 17839
  Q2ell := 47139889
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_991).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_991 : TWAuxEllFixedExists 991 10000 :=
  ⟨twaux_10000_991⟩

def twaux_26_997 : TWAuxEllFixed 997 26 where
  Q1ell := 3989
  Q2ell := 47712433
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_997).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_997 : TWAuxEllFixedExists 997 26 :=
  ⟨twaux_26_997⟩

def twaux_10000_997 : TWAuxEllFixed 997 10000 where
  Q1ell := 23929
  Q2ell := 47712433
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_997).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_997 : TWAuxEllFixedExists 997 10000 :=
  ⟨twaux_10000_997⟩

theorem TWAuxEllFixedExists_26_901_1000 {ℓ : Nat}
    (h : ℓ ∈ primes901to1000) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_907
  · exact twaux_exists_26_911
  · exact twaux_exists_26_919
  · exact twaux_exists_26_929
  · exact twaux_exists_26_937
  · exact twaux_exists_26_941
  · exact twaux_exists_26_947
  · exact twaux_exists_26_953
  · exact twaux_exists_26_967
  · exact twaux_exists_26_971
  · exact twaux_exists_26_977
  · exact twaux_exists_26_983
  · exact twaux_exists_26_991
  · exact twaux_exists_26_997

theorem TWAuxEllFixedExists_10000_901_1000 {ℓ : Nat}
    (h : ℓ ∈ primes901to1000) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_907
  · exact twaux_exists_10000_911
  · exact twaux_exists_10000_919
  · exact twaux_exists_10000_929
  · exact twaux_exists_10000_937
  · exact twaux_exists_10000_941
  · exact twaux_exists_10000_947
  · exact twaux_exists_10000_953
  · exact twaux_exists_10000_967
  · exact twaux_exists_10000_971
  · exact twaux_exists_10000_977
  · exact twaux_exists_10000_983
  · exact twaux_exists_10000_991
  · exact twaux_exists_10000_997

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_901_1000
