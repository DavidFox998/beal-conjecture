/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes801to900`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_801_900
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_801_900

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_801_900
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_809 : TWAuxEllFixed 809 26 where
  Q1ell := 1619
  Q2ell := 7853773
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_809).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_809 : TWAuxEllFixedExists 809 26 :=
  ⟨twaux_26_809⟩

def twaux_10000_809 : TWAuxEllFixed 809 10000 where
  Q1ell := 14563
  Q2ell := 7853773
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_809).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_809 : TWAuxEllFixedExists 809 10000 :=
  ⟨twaux_10000_809⟩

def twaux_26_811 : TWAuxEllFixed 811 26 where
  Q1ell := 8111
  Q2ell := 11838979
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_811).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_811 : TWAuxEllFixedExists 811 26 :=
  ⟨twaux_26_811⟩

def twaux_10000_811 : TWAuxEllFixed 811 10000 where
  Q1ell := 22709
  Q2ell := 11838979
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_811).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_811 : TWAuxEllFixedExists 811 10000 :=
  ⟨twaux_10000_811⟩

def twaux_26_821 : TWAuxEllFixed 821 26 where
  Q1ell := 6569
  Q2ell := 12132739
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_821).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_821 : TWAuxEllFixedExists 821 26 :=
  ⟨twaux_26_821⟩

def twaux_10000_821 : TWAuxEllFixed 821 10000 where
  Q1ell := 14779
  Q2ell := 12132739
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_821).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_821 : TWAuxEllFixedExists 821 10000 :=
  ⟨twaux_10000_821⟩

def twaux_26_823 : TWAuxEllFixed 823 26 where
  Q1ell := 8231
  Q2ell := 28447819
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_823).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_823 : TWAuxEllFixedExists 823 26 :=
  ⟨twaux_26_823⟩

def twaux_10000_823 : TWAuxEllFixed 823 10000 where
  Q1ell := 19753
  Q2ell := 28447819
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_823).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_823 : TWAuxEllFixedExists 823 10000 :=
  ⟨twaux_10000_823⟩

def twaux_26_827 : TWAuxEllFixed 827 26 where
  Q1ell := 11579
  Q2ell := 2735717
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_827).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_827 : TWAuxEllFixedExists 827 26 :=
  ⟨twaux_26_827⟩

def twaux_10000_827 : TWAuxEllFixed 827 10000 where
  Q1ell := 11579
  Q2ell := 2735717
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_827).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_827 : TWAuxEllFixedExists 827 10000 :=
  ⟨twaux_10000_827⟩

def twaux_26_829 : TWAuxEllFixed 829 26 where
  Q1ell := 8291
  Q2ell := 4123447
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_829).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_829 : TWAuxEllFixedExists 829 26 :=
  ⟨twaux_26_829⟩

def twaux_10000_829 : TWAuxEllFixed 829 10000 where
  Q1ell := 14923
  Q2ell := 4123447
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_829).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_829 : TWAuxEllFixedExists 829 10000 :=
  ⟨twaux_10000_829⟩

def twaux_26_839 : TWAuxEllFixed 839 26 where
  Q1ell := 10069
  Q2ell := 7039211
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_839).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_839 : TWAuxEllFixedExists 839 26 :=
  ⟨twaux_26_839⟩

def twaux_10000_839 : TWAuxEllFixed 839 10000 where
  Q1ell := 10069
  Q2ell := 7039211
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_839).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_839 : TWAuxEllFixedExists 839 10000 :=
  ⟨twaux_10000_839⟩

def twaux_26_853 : TWAuxEllFixed 853 26 where
  Q1ell := 3413
  Q2ell := 8731309
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_853).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_853 : TWAuxEllFixedExists 853 26 :=
  ⟨twaux_26_853⟩

def twaux_10000_853 : TWAuxEllFixed 853 10000 where
  Q1ell := 13649
  Q2ell := 8731309
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_853).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_853 : TWAuxEllFixedExists 853 10000 :=
  ⟨twaux_10000_853⟩

def twaux_26_857 : TWAuxEllFixed 857 26 where
  Q1ell := 6857
  Q2ell := 13220083
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_857).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_857 : TWAuxEllFixedExists 857 26 :=
  ⟨twaux_26_857⟩

def twaux_10000_857 : TWAuxEllFixed 857 10000 where
  Q1ell := 15427
  Q2ell := 13220083
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_857).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_857 : TWAuxEllFixedExists 857 10000 :=
  ⟨twaux_10000_857⟩

def twaux_26_859 : TWAuxEllFixed 859 26 where
  Q1ell := 18899
  Q2ell := 4427287
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_859).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_859 : TWAuxEllFixedExists 859 26 :=
  ⟨twaux_26_859⟩

def twaux_10000_859 : TWAuxEllFixed 859 10000 where
  Q1ell := 18899
  Q2ell := 4427287
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_859).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_859 : TWAuxEllFixedExists 859 10000 :=
  ⟨twaux_10000_859⟩

def twaux_26_863 : TWAuxEllFixed 863 26 where
  Q1ell := 5179
  Q2ell := 16384919
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_863).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_863 : TWAuxEllFixedExists 863 26 :=
  ⟨twaux_26_863⟩

def twaux_10000_863 : TWAuxEllFixed 863 10000 where
  Q1ell := 10357
  Q2ell := 16384919
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_863).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_863 : TWAuxEllFixedExists 863 10000 :=
  ⟨twaux_10000_863⟩

def twaux_26_877 : TWAuxEllFixed 877 26 where
  Q1ell := 14033
  Q2ell := 23073871
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_877).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_877 : TWAuxEllFixedExists 877 26 :=
  ⟨twaux_26_877⟩

def twaux_10000_877 : TWAuxEllFixed 877 10000 where
  Q1ell := 14033
  Q2ell := 23073871
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_877).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_877 : TWAuxEllFixedExists 877 10000 :=
  ⟨twaux_10000_877⟩

def twaux_26_881 : TWAuxEllFixed 881 26 where
  Q1ell := 15859
  Q2ell := 23284831
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_881).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_881 : TWAuxEllFixedExists 881 26 :=
  ⟨twaux_26_881⟩

def twaux_10000_881 : TWAuxEllFixed 881 10000 where
  Q1ell := 15859
  Q2ell := 23284831
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_881).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_881 : TWAuxEllFixedExists 881 10000 :=
  ⟨twaux_10000_881⟩

def twaux_26_883 : TWAuxEllFixed 883 26 where
  Q1ell := 3533
  Q2ell := 3118757
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_883).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_883 : TWAuxEllFixedExists 883 26 :=
  ⟨twaux_26_883⟩

def twaux_10000_883 : TWAuxEllFixed 883 10000 where
  Q1ell := 10597
  Q2ell := 3118757
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_883).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_883 : TWAuxEllFixedExists 883 10000 :=
  ⟨twaux_10000_883⟩

def twaux_26_887 : TWAuxEllFixed 887 26 where
  Q1ell := 5323
  Q2ell := 3147077
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_887).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_887 : TWAuxEllFixedExists 887 26 :=
  ⟨twaux_26_887⟩

def twaux_10000_887 : TWAuxEllFixed 887 10000 where
  Q1ell := 23063
  Q2ell := 3147077
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_887).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_887 : TWAuxEllFixedExists 887 10000 :=
  ⟨twaux_10000_887⟩

theorem TWAuxEllFixedExists_26_801_900 {ℓ : Nat}
    (h : ℓ ∈ primes801to900) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_809
  · exact twaux_exists_26_811
  · exact twaux_exists_26_821
  · exact twaux_exists_26_823
  · exact twaux_exists_26_827
  · exact twaux_exists_26_829
  · exact twaux_exists_26_839
  · exact twaux_exists_26_853
  · exact twaux_exists_26_857
  · exact twaux_exists_26_859
  · exact twaux_exists_26_863
  · exact twaux_exists_26_877
  · exact twaux_exists_26_881
  · exact twaux_exists_26_883
  · exact twaux_exists_26_887

theorem TWAuxEllFixedExists_10000_801_900 {ℓ : Nat}
    (h : ℓ ∈ primes801to900) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_809
  · exact twaux_exists_10000_811
  · exact twaux_exists_10000_821
  · exact twaux_exists_10000_823
  · exact twaux_exists_10000_827
  · exact twaux_exists_10000_829
  · exact twaux_exists_10000_839
  · exact twaux_exists_10000_853
  · exact twaux_exists_10000_857
  · exact twaux_exists_10000_859
  · exact twaux_exists_10000_863
  · exact twaux_exists_10000_877
  · exact twaux_exists_10000_881
  · exact twaux_exists_10000_883
  · exact twaux_exists_10000_887

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_801_900
