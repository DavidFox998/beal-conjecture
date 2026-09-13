/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600

set_option maxHeartbeats 400000

def primes501to600 : Finset Nat :=
  { 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599 }

theorem q1_witness_503 :
    Nat.Prime 3019 ∧ 3019 % 503 = 1 ∧ 3019 ≤ 20000 ∧ 5 ≤ 3019 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_509 :
    Nat.Prime 1019 ∧ 1019 % 509 = 1 ∧ 1019 ≤ 20000 ∧ 5 ≤ 1019 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_521 :
    Nat.Prime 16673 ∧ 16673 % 521 = 1 ∧ 16673 ≤ 20000 ∧ 5 ≤ 16673 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_523 :
    Nat.Prime 5231 ∧ 5231 % 523 = 1 ∧ 5231 ≤ 20000 ∧ 5 ≤ 5231 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_541 :
    Nat.Prime 9739 ∧ 9739 % 541 = 1 ∧ 9739 ≤ 20000 ∧ 5 ≤ 9739 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_547 :
    Nat.Prime 5471 ∧ 5471 % 547 = 1 ∧ 5471 ≤ 20000 ∧ 5 ≤ 5471 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_557 :
    Nat.Prime 3343 ∧ 3343 % 557 = 1 ∧ 3343 ≤ 20000 ∧ 5 ≤ 3343 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_563 :
    Nat.Prime 7883 ∧ 7883 % 563 = 1 ∧ 7883 ≤ 20000 ∧ 5 ≤ 7883 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_569 :
    Nat.Prime 6829 ∧ 6829 % 569 = 1 ∧ 6829 ≤ 20000 ∧ 5 ≤ 6829 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_571 :
    Nat.Prime 5711 ∧ 5711 % 571 = 1 ∧ 5711 ≤ 20000 ∧ 5 ≤ 5711 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_577 :
    Nat.Prime 2309 ∧ 2309 % 577 = 1 ∧ 2309 ≤ 20000 ∧ 5 ≤ 2309 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_587 :
    Nat.Prime 8219 ∧ 8219 % 587 = 1 ∧ 8219 ≤ 20000 ∧ 5 ≤ 8219 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_593 :
    Nat.Prime 1187 ∧ 1187 % 593 = 1 ∧ 1187 ≤ 20000 ∧ 5 ≤ 1187 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_599 :
    Nat.Prime 4793 ∧ 4793 % 599 = 1 ∧ 4793 ≤ 20000 ∧ 5 ≤ 4793 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_501_600 {ℓ : Nat}
    (h : ℓ ∈ primes501to600) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨3019, q1_witness_503⟩
  · exact ⟨1019, q1_witness_509⟩
  · exact ⟨16673, q1_witness_521⟩
  · exact ⟨5231, q1_witness_523⟩
  · exact ⟨9739, q1_witness_541⟩
  · exact ⟨5471, q1_witness_547⟩
  · exact ⟨3343, q1_witness_557⟩
  · exact ⟨7883, q1_witness_563⟩
  · exact ⟨6829, q1_witness_569⟩
  · exact ⟨5711, q1_witness_571⟩
  · exact ⟨2309, q1_witness_577⟩
  · exact ⟨8219, q1_witness_587⟩
  · exact ⟨1187, q1_witness_593⟩
  · exact ⟨4793, q1_witness_599⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600
