/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200

set_option maxHeartbeats 400000

def primes101to200 : Finset Nat :=
  { 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199 }

theorem q1_witness_101 :
    Nat.Prime 607 ∧ 607 % 101 = 1 ∧ 607 ≤ 20000 ∧ 5 ≤ 607 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_103 :
    Nat.Prime 619 ∧ 619 % 103 = 1 ∧ 619 ≤ 20000 ∧ 5 ≤ 619 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_107 :
    Nat.Prime 643 ∧ 643 % 107 = 1 ∧ 643 ≤ 20000 ∧ 5 ≤ 643 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_109 :
    Nat.Prime 1091 ∧ 1091 % 109 = 1 ∧ 1091 ≤ 20000 ∧ 5 ≤ 1091 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_113 :
    Nat.Prime 227 ∧ 227 % 113 = 1 ∧ 227 ≤ 20000 ∧ 5 ≤ 227 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_127 :
    Nat.Prime 509 ∧ 509 % 127 = 1 ∧ 509 ≤ 20000 ∧ 5 ≤ 509 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_131 :
    Nat.Prime 263 ∧ 263 % 131 = 1 ∧ 263 ≤ 20000 ∧ 5 ≤ 263 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_137 :
    Nat.Prime 823 ∧ 823 % 137 = 1 ∧ 823 ≤ 20000 ∧ 5 ≤ 823 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_139 :
    Nat.Prime 557 ∧ 557 % 139 = 1 ∧ 557 ≤ 20000 ∧ 5 ≤ 557 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_149 :
    Nat.Prime 1193 ∧ 1193 % 149 = 1 ∧ 1193 ≤ 20000 ∧ 5 ≤ 1193 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_151 :
    Nat.Prime 907 ∧ 907 % 151 = 1 ∧ 907 ≤ 20000 ∧ 5 ≤ 907 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_157 :
    Nat.Prime 1571 ∧ 1571 % 157 = 1 ∧ 1571 ≤ 20000 ∧ 5 ≤ 1571 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_163 :
    Nat.Prime 653 ∧ 653 % 163 = 1 ∧ 653 ≤ 20000 ∧ 5 ≤ 653 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_167 :
    Nat.Prime 2339 ∧ 2339 % 167 = 1 ∧ 2339 ≤ 20000 ∧ 5 ≤ 2339 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_173 :
    Nat.Prime 347 ∧ 347 % 173 = 1 ∧ 347 ≤ 20000 ∧ 5 ≤ 347 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_179 :
    Nat.Prime 359 ∧ 359 % 179 = 1 ∧ 359 ≤ 20000 ∧ 5 ≤ 359 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_181 :
    Nat.Prime 1087 ∧ 1087 % 181 = 1 ∧ 1087 ≤ 20000 ∧ 5 ≤ 1087 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_191 :
    Nat.Prime 383 ∧ 383 % 191 = 1 ∧ 383 ≤ 20000 ∧ 5 ≤ 383 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_193 :
    Nat.Prime 773 ∧ 773 % 193 = 1 ∧ 773 ≤ 20000 ∧ 5 ≤ 773 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_197 :
    Nat.Prime 3547 ∧ 3547 % 197 = 1 ∧ 3547 ≤ 20000 ∧ 5 ≤ 3547 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_199 :
    Nat.Prime 797 ∧ 797 % 199 = 1 ∧ 797 ≤ 20000 ∧ 5 ≤ 797 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_101_200 {ℓ : Nat}
    (h : ℓ ∈ primes101to200) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨607, q1_witness_101⟩
  · exact ⟨619, q1_witness_103⟩
  · exact ⟨643, q1_witness_107⟩
  · exact ⟨1091, q1_witness_109⟩
  · exact ⟨227, q1_witness_113⟩
  · exact ⟨509, q1_witness_127⟩
  · exact ⟨263, q1_witness_131⟩
  · exact ⟨823, q1_witness_137⟩
  · exact ⟨557, q1_witness_139⟩
  · exact ⟨1193, q1_witness_149⟩
  · exact ⟨907, q1_witness_151⟩
  · exact ⟨1571, q1_witness_157⟩
  · exact ⟨653, q1_witness_163⟩
  · exact ⟨2339, q1_witness_167⟩
  · exact ⟨347, q1_witness_173⟩
  · exact ⟨359, q1_witness_179⟩
  · exact ⟨1087, q1_witness_181⟩
  · exact ⟨383, q1_witness_191⟩
  · exact ⟨773, q1_witness_193⟩
  · exact ⟨3547, q1_witness_197⟩
  · exact ⟨797, q1_witness_199⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200
