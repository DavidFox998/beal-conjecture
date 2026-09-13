/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100

set_option maxHeartbeats 2000000

def primes5to100 : Finset Nat :=
  { 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97 }

theorem q1_witness_5 :
    Nat.Prime 11 ∧ 11 % 5 = 1 ∧ 11 ≤ 20000 ∧ 5 ≤ 11 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_7 :
    Nat.Prime 29 ∧ 29 % 7 = 1 ∧ 29 ≤ 20000 ∧ 5 ≤ 29 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_11 :
    Nat.Prime 23 ∧ 23 % 11 = 1 ∧ 23 ≤ 20000 ∧ 5 ≤ 23 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_13 :
    Nat.Prime 53 ∧ 53 % 13 = 1 ∧ 53 ≤ 20000 ∧ 5 ≤ 53 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_17 :
    Nat.Prime 103 ∧ 103 % 17 = 1 ∧ 103 ≤ 20000 ∧ 5 ≤ 103 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_19 :
    Nat.Prime 191 ∧ 191 % 19 = 1 ∧ 191 ≤ 20000 ∧ 5 ≤ 191 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_23 :
    Nat.Prime 47 ∧ 47 % 23 = 1 ∧ 47 ≤ 20000 ∧ 5 ≤ 47 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_29 :
    Nat.Prime 59 ∧ 59 % 29 = 1 ∧ 59 ≤ 20000 ∧ 5 ≤ 59 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_31 :
    Nat.Prime 311 ∧ 311 % 31 = 1 ∧ 311 ≤ 20000 ∧ 5 ≤ 311 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_37 :
    Nat.Prime 149 ∧ 149 % 37 = 1 ∧ 149 ≤ 20000 ∧ 5 ≤ 149 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_41 :
    Nat.Prime 83 ∧ 83 % 41 = 1 ∧ 83 ≤ 20000 ∧ 5 ≤ 83 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_43 :
    Nat.Prime 173 ∧ 173 % 43 = 1 ∧ 173 ≤ 20000 ∧ 5 ≤ 173 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_47 :
    Nat.Prime 283 ∧ 283 % 47 = 1 ∧ 283 ≤ 20000 ∧ 5 ≤ 283 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_53 :
    Nat.Prime 107 ∧ 107 % 53 = 1 ∧ 107 ≤ 20000 ∧ 5 ≤ 107 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_59 :
    Nat.Prime 709 ∧ 709 % 59 = 1 ∧ 709 ≤ 20000 ∧ 5 ≤ 709 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_61 :
    Nat.Prime 367 ∧ 367 % 61 = 1 ∧ 367 ≤ 20000 ∧ 5 ≤ 367 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_67 :
    Nat.Prime 269 ∧ 269 % 67 = 1 ∧ 269 ≤ 20000 ∧ 5 ≤ 269 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_71 :
    Nat.Prime 569 ∧ 569 % 71 = 1 ∧ 569 ≤ 20000 ∧ 5 ≤ 569 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_73 :
    Nat.Prime 293 ∧ 293 % 73 = 1 ∧ 293 ≤ 20000 ∧ 5 ≤ 293 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_79 :
    Nat.Prime 317 ∧ 317 % 79 = 1 ∧ 317 ≤ 20000 ∧ 5 ≤ 317 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_83 :
    Nat.Prime 167 ∧ 167 % 83 = 1 ∧ 167 ≤ 20000 ∧ 5 ≤ 167 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_89 :
    Nat.Prime 179 ∧ 179 % 89 = 1 ∧ 179 ≤ 20000 ∧ 5 ≤ 179 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_97 :
    Nat.Prime 389 ∧ 389 % 97 = 1 ∧ 389 ≤ 20000 ∧ 5 ≤ 389 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

/-- Kernel-checked completeness on `[5, 100]`.
`Finset.Icc` plus `filter Nat.Prime`, not `interval_cases`.
Larger hundreds still hit max recursion. -/
theorem primes5to100_eq_Icc_filter :
    (Finset.Icc 5 100).filter Nat.Prime = primes5to100 := by
  decide

theorem mem_primes5to100_of_prime {ℓ : Nat}
    (hp : Nat.Prime ℓ) (hlo : 5 ≤ ℓ) (hhi : ℓ ≤ 100) :
    ℓ ∈ primes5to100 := by
  have : ℓ ∈ (Finset.Icc 5 100).filter Nat.Prime :=
    Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hlo, hhi⟩, hp⟩
  rwa [primes5to100_eq_Icc_filter] at this

theorem exists_prime_one_mod_ell_5_100 {ℓ : Nat}
    (h : ℓ ∈ primes5to100) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨11, q1_witness_5⟩
  · exact ⟨29, q1_witness_7⟩
  · exact ⟨23, q1_witness_11⟩
  · exact ⟨53, q1_witness_13⟩
  · exact ⟨103, q1_witness_17⟩
  · exact ⟨191, q1_witness_19⟩
  · exact ⟨47, q1_witness_23⟩
  · exact ⟨59, q1_witness_29⟩
  · exact ⟨311, q1_witness_31⟩
  · exact ⟨149, q1_witness_37⟩
  · exact ⟨83, q1_witness_41⟩
  · exact ⟨173, q1_witness_43⟩
  · exact ⟨283, q1_witness_47⟩
  · exact ⟨107, q1_witness_53⟩
  · exact ⟨709, q1_witness_59⟩
  · exact ⟨367, q1_witness_61⟩
  · exact ⟨269, q1_witness_67⟩
  · exact ⟨569, q1_witness_71⟩
  · exact ⟨293, q1_witness_73⟩
  · exact ⟨317, q1_witness_79⟩
  · exact ⟨167, q1_witness_83⟩
  · exact ⟨179, q1_witness_89⟩
  · exact ⟨389, q1_witness_97⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100
