/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000

set_option maxHeartbeats 400000

def primes901to1000 : Finset Nat :=
  { 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997 }

theorem q1_witness_907 :
    Nat.Prime 5443 ∧ 5443 % 907 = 1 ∧ 5443 ≤ 20000 ∧ 5 ≤ 5443 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_911 :
    Nat.Prime 1823 ∧ 1823 % 911 = 1 ∧ 1823 ≤ 20000 ∧ 5 ≤ 1823 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_919 :
    Nat.Prime 3677 ∧ 3677 % 919 = 1 ∧ 3677 ≤ 20000 ∧ 5 ≤ 3677 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_929 :
    Nat.Prime 7433 ∧ 7433 % 929 = 1 ∧ 7433 ≤ 20000 ∧ 5 ≤ 7433 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_937 :
    Nat.Prime 5623 ∧ 5623 % 937 = 1 ∧ 5623 ≤ 20000 ∧ 5 ≤ 5623 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_941 :
    Nat.Prime 5647 ∧ 5647 % 941 = 1 ∧ 5647 ≤ 20000 ∧ 5 ≤ 5647 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_947 :
    Nat.Prime 5683 ∧ 5683 % 947 = 1 ∧ 5683 ≤ 20000 ∧ 5 ≤ 5683 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_953 :
    Nat.Prime 1907 ∧ 1907 % 953 = 1 ∧ 1907 ≤ 20000 ∧ 5 ≤ 1907 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_967 :
    Nat.Prime 15473 ∧ 15473 % 967 = 1 ∧ 15473 ≤ 20000 ∧ 5 ≤ 15473 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_971 :
    Nat.Prime 5827 ∧ 5827 % 971 = 1 ∧ 5827 ≤ 20000 ∧ 5 ≤ 5827 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_977 :
    Nat.Prime 7817 ∧ 7817 % 977 = 1 ∧ 7817 ≤ 20000 ∧ 5 ≤ 7817 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_983 :
    Nat.Prime 13763 ∧ 13763 % 983 = 1 ∧ 13763 ≤ 20000 ∧ 5 ≤ 13763 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_991 :
    Nat.Prime 17839 ∧ 17839 % 991 = 1 ∧ 17839 ≤ 20000 ∧ 5 ≤ 17839 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_997 :
    Nat.Prime 3989 ∧ 3989 % 997 = 1 ∧ 3989 ≤ 20000 ∧ 5 ≤ 3989 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_901_1000 {ℓ : Nat}
    (h : ℓ ∈ primes901to1000) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨5443, q1_witness_907⟩
  · exact ⟨1823, q1_witness_911⟩
  · exact ⟨3677, q1_witness_919⟩
  · exact ⟨7433, q1_witness_929⟩
  · exact ⟨5623, q1_witness_937⟩
  · exact ⟨5647, q1_witness_941⟩
  · exact ⟨5683, q1_witness_947⟩
  · exact ⟨1907, q1_witness_953⟩
  · exact ⟨15473, q1_witness_967⟩
  · exact ⟨5827, q1_witness_971⟩
  · exact ⟨7817, q1_witness_977⟩
  · exact ⟨13763, q1_witness_983⟩
  · exact ⟨17839, q1_witness_991⟩
  · exact ⟨3989, q1_witness_997⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000
