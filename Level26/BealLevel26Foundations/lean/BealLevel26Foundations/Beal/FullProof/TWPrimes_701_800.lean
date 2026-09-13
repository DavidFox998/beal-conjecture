/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800

set_option maxHeartbeats 400000

def primes701to800 : Finset Nat :=
  { 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797 }

theorem q1_witness_701 :
    Nat.Prime 12619 ∧ 12619 % 701 = 1 ∧ 12619 ≤ 20000 ∧ 5 ≤ 12619 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_709 :
    Nat.Prime 2837 ∧ 2837 % 709 = 1 ∧ 2837 ≤ 20000 ∧ 5 ≤ 2837 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_719 :
    Nat.Prime 1439 ∧ 1439 % 719 = 1 ∧ 1439 ≤ 20000 ∧ 5 ≤ 1439 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_727 :
    Nat.Prime 2909 ∧ 2909 % 727 = 1 ∧ 2909 ≤ 20000 ∧ 5 ≤ 2909 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_733 :
    Nat.Prime 7331 ∧ 7331 % 733 = 1 ∧ 7331 ≤ 20000 ∧ 5 ≤ 7331 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_739 :
    Nat.Prime 2957 ∧ 2957 % 739 = 1 ∧ 2957 ≤ 20000 ∧ 5 ≤ 2957 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_743 :
    Nat.Prime 1487 ∧ 1487 % 743 = 1 ∧ 1487 ≤ 20000 ∧ 5 ≤ 1487 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_751 :
    Nat.Prime 4507 ∧ 4507 % 751 = 1 ∧ 4507 ≤ 20000 ∧ 5 ≤ 4507 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_757 :
    Nat.Prime 12113 ∧ 12113 % 757 = 1 ∧ 12113 ≤ 20000 ∧ 5 ≤ 12113 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_761 :
    Nat.Prime 1523 ∧ 1523 % 761 = 1 ∧ 1523 ≤ 20000 ∧ 5 ≤ 1523 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_769 :
    Nat.Prime 7691 ∧ 7691 % 769 = 1 ∧ 7691 ≤ 20000 ∧ 5 ≤ 7691 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_773 :
    Nat.Prime 4639 ∧ 4639 % 773 = 1 ∧ 4639 ≤ 20000 ∧ 5 ≤ 4639 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_787 :
    Nat.Prime 4723 ∧ 4723 % 787 = 1 ∧ 4723 ≤ 20000 ∧ 5 ≤ 4723 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_797 :
    Nat.Prime 4783 ∧ 4783 % 797 = 1 ∧ 4783 ≤ 20000 ∧ 5 ≤ 4783 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_701_800 {ℓ : Nat}
    (h : ℓ ∈ primes701to800) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨12619, q1_witness_701⟩
  · exact ⟨2837, q1_witness_709⟩
  · exact ⟨1439, q1_witness_719⟩
  · exact ⟨2909, q1_witness_727⟩
  · exact ⟨7331, q1_witness_733⟩
  · exact ⟨2957, q1_witness_739⟩
  · exact ⟨1487, q1_witness_743⟩
  · exact ⟨4507, q1_witness_751⟩
  · exact ⟨12113, q1_witness_757⟩
  · exact ⟨1523, q1_witness_761⟩
  · exact ⟨7691, q1_witness_769⟩
  · exact ⟨4639, q1_witness_773⟩
  · exact ⟨4723, q1_witness_787⟩
  · exact ⟨4783, q1_witness_797⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800
