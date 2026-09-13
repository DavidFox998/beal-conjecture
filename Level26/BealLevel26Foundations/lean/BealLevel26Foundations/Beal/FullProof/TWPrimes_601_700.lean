/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700

set_option maxHeartbeats 400000

def primes601to700 : Finset Nat :=
  { 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691 }

theorem q1_witness_601 :
    Nat.Prime 3607 ∧ 3607 % 601 = 1 ∧ 3607 ≤ 20000 ∧ 5 ≤ 3607 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_607 :
    Nat.Prime 3643 ∧ 3643 % 607 = 1 ∧ 3643 ≤ 20000 ∧ 5 ≤ 3643 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_613 :
    Nat.Prime 6131 ∧ 6131 % 613 = 1 ∧ 6131 ≤ 20000 ∧ 5 ≤ 6131 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_617 :
    Nat.Prime 4937 ∧ 4937 % 617 = 1 ∧ 4937 ≤ 20000 ∧ 5 ≤ 4937 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_619 :
    Nat.Prime 2477 ∧ 2477 % 619 = 1 ∧ 2477 ≤ 20000 ∧ 5 ≤ 2477 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_631 :
    Nat.Prime 6311 ∧ 6311 % 631 = 1 ∧ 6311 ≤ 20000 ∧ 5 ≤ 6311 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_641 :
    Nat.Prime 1283 ∧ 1283 % 641 = 1 ∧ 1283 ≤ 20000 ∧ 5 ≤ 1283 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_643 :
    Nat.Prime 7717 ∧ 7717 % 643 = 1 ∧ 7717 ≤ 20000 ∧ 5 ≤ 7717 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_647 :
    Nat.Prime 9059 ∧ 9059 % 647 = 1 ∧ 9059 ≤ 20000 ∧ 5 ≤ 9059 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_653 :
    Nat.Prime 1307 ∧ 1307 % 653 = 1 ∧ 1307 ≤ 20000 ∧ 5 ≤ 1307 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_659 :
    Nat.Prime 1319 ∧ 1319 % 659 = 1 ∧ 1319 ≤ 20000 ∧ 5 ≤ 1319 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_661 :
    Nat.Prime 3967 ∧ 3967 % 661 = 1 ∧ 3967 ≤ 20000 ∧ 5 ≤ 3967 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_673 :
    Nat.Prime 2693 ∧ 2693 % 673 = 1 ∧ 2693 ≤ 20000 ∧ 5 ≤ 2693 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_677 :
    Nat.Prime 5417 ∧ 5417 % 677 = 1 ∧ 5417 ≤ 20000 ∧ 5 ≤ 5417 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_683 :
    Nat.Prime 1367 ∧ 1367 % 683 = 1 ∧ 1367 ≤ 20000 ∧ 5 ≤ 1367 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_691 :
    Nat.Prime 6911 ∧ 6911 % 691 = 1 ∧ 6911 ≤ 20000 ∧ 5 ≤ 6911 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_601_700 {ℓ : Nat}
    (h : ℓ ∈ primes601to700) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨3607, q1_witness_601⟩
  · exact ⟨3643, q1_witness_607⟩
  · exact ⟨6131, q1_witness_613⟩
  · exact ⟨4937, q1_witness_617⟩
  · exact ⟨2477, q1_witness_619⟩
  · exact ⟨6311, q1_witness_631⟩
  · exact ⟨1283, q1_witness_641⟩
  · exact ⟨7717, q1_witness_643⟩
  · exact ⟨9059, q1_witness_647⟩
  · exact ⟨1307, q1_witness_653⟩
  · exact ⟨1319, q1_witness_659⟩
  · exact ⟨3967, q1_witness_661⟩
  · exact ⟨2693, q1_witness_673⟩
  · exact ⟨5417, q1_witness_677⟩
  · exact ⟨1367, q1_witness_683⟩
  · exact ⟨6911, q1_witness_691⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700
