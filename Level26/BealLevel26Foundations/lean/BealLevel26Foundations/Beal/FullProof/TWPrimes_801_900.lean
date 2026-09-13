/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900

set_option maxHeartbeats 400000

def primes801to900 : Finset Nat :=
  { 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887 }

theorem q1_witness_809 :
    Nat.Prime 1619 ∧ 1619 % 809 = 1 ∧ 1619 ≤ 20000 ∧ 5 ≤ 1619 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_811 :
    Nat.Prime 8111 ∧ 8111 % 811 = 1 ∧ 8111 ≤ 20000 ∧ 5 ≤ 8111 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_821 :
    Nat.Prime 6569 ∧ 6569 % 821 = 1 ∧ 6569 ≤ 20000 ∧ 5 ≤ 6569 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_823 :
    Nat.Prime 8231 ∧ 8231 % 823 = 1 ∧ 8231 ≤ 20000 ∧ 5 ≤ 8231 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_827 :
    Nat.Prime 11579 ∧ 11579 % 827 = 1 ∧ 11579 ≤ 20000 ∧ 5 ≤ 11579 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_829 :
    Nat.Prime 8291 ∧ 8291 % 829 = 1 ∧ 8291 ≤ 20000 ∧ 5 ≤ 8291 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_839 :
    Nat.Prime 10069 ∧ 10069 % 839 = 1 ∧ 10069 ≤ 20000 ∧ 5 ≤ 10069 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_853 :
    Nat.Prime 3413 ∧ 3413 % 853 = 1 ∧ 3413 ≤ 20000 ∧ 5 ≤ 3413 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_857 :
    Nat.Prime 6857 ∧ 6857 % 857 = 1 ∧ 6857 ≤ 20000 ∧ 5 ≤ 6857 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_859 :
    Nat.Prime 18899 ∧ 18899 % 859 = 1 ∧ 18899 ≤ 20000 ∧ 5 ≤ 18899 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_863 :
    Nat.Prime 5179 ∧ 5179 % 863 = 1 ∧ 5179 ≤ 20000 ∧ 5 ≤ 5179 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_877 :
    Nat.Prime 14033 ∧ 14033 % 877 = 1 ∧ 14033 ≤ 20000 ∧ 5 ≤ 14033 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_881 :
    Nat.Prime 15859 ∧ 15859 % 881 = 1 ∧ 15859 ≤ 20000 ∧ 5 ≤ 15859 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_883 :
    Nat.Prime 3533 ∧ 3533 % 883 = 1 ∧ 3533 ≤ 20000 ∧ 5 ≤ 3533 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_887 :
    Nat.Prime 5323 ∧ 5323 % 887 = 1 ∧ 5323 ≤ 20000 ∧ 5 ≤ 5323 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_801_900 {ℓ : Nat}
    (h : ℓ ∈ primes801to900) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨1619, q1_witness_809⟩
  · exact ⟨8111, q1_witness_811⟩
  · exact ⟨6569, q1_witness_821⟩
  · exact ⟨8231, q1_witness_823⟩
  · exact ⟨11579, q1_witness_827⟩
  · exact ⟨8291, q1_witness_829⟩
  · exact ⟨10069, q1_witness_839⟩
  · exact ⟨3413, q1_witness_853⟩
  · exact ⟨6857, q1_witness_857⟩
  · exact ⟨18899, q1_witness_859⟩
  · exact ⟨5179, q1_witness_863⟩
  · exact ⟨14033, q1_witness_877⟩
  · exact ⟨15859, q1_witness_881⟩
  · exact ⟨3533, q1_witness_883⟩
  · exact ⟨5323, q1_witness_887⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900
