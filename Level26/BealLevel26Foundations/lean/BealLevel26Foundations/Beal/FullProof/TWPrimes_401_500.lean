/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500

set_option maxHeartbeats 400000

def primes401to500 : Finset Nat :=
  { 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499 }

theorem q1_witness_401 :
    Nat.Prime 3209 ∧ 3209 % 401 = 1 ∧ 3209 ≤ 20000 ∧ 5 ≤ 3209 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_409 :
    Nat.Prime 1637 ∧ 1637 % 409 = 1 ∧ 1637 ≤ 20000 ∧ 5 ≤ 1637 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_419 :
    Nat.Prime 839 ∧ 839 % 419 = 1 ∧ 839 ≤ 20000 ∧ 5 ≤ 839 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_421 :
    Nat.Prime 4211 ∧ 4211 % 421 = 1 ∧ 4211 ≤ 20000 ∧ 5 ≤ 4211 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_431 :
    Nat.Prime 863 ∧ 863 % 431 = 1 ∧ 863 ≤ 20000 ∧ 5 ≤ 863 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_433 :
    Nat.Prime 1733 ∧ 1733 % 433 = 1 ∧ 1733 ≤ 20000 ∧ 5 ≤ 1733 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_439 :
    Nat.Prime 4391 ∧ 4391 % 439 = 1 ∧ 4391 ≤ 20000 ∧ 5 ≤ 4391 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_443 :
    Nat.Prime 887 ∧ 887 % 443 = 1 ∧ 887 ≤ 20000 ∧ 5 ≤ 887 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_449 :
    Nat.Prime 3593 ∧ 3593 % 449 = 1 ∧ 3593 ≤ 20000 ∧ 5 ≤ 3593 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_457 :
    Nat.Prime 13711 ∧ 13711 % 457 = 1 ∧ 13711 ≤ 20000 ∧ 5 ≤ 13711 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_461 :
    Nat.Prime 2767 ∧ 2767 % 461 = 1 ∧ 2767 ≤ 20000 ∧ 5 ≤ 2767 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_463 :
    Nat.Prime 5557 ∧ 5557 % 463 = 1 ∧ 5557 ≤ 20000 ∧ 5 ≤ 5557 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_467 :
    Nat.Prime 2803 ∧ 2803 % 467 = 1 ∧ 2803 ≤ 20000 ∧ 5 ≤ 2803 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_479 :
    Nat.Prime 3833 ∧ 3833 % 479 = 1 ∧ 3833 ≤ 20000 ∧ 5 ≤ 3833 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_487 :
    Nat.Prime 1949 ∧ 1949 % 487 = 1 ∧ 1949 ≤ 20000 ∧ 5 ≤ 1949 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_491 :
    Nat.Prime 983 ∧ 983 % 491 = 1 ∧ 983 ≤ 20000 ∧ 5 ≤ 983 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_499 :
    Nat.Prime 1997 ∧ 1997 % 499 = 1 ∧ 1997 ≤ 20000 ∧ 5 ≤ 1997 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_401_500 {ℓ : Nat}
    (h : ℓ ∈ primes401to500) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨3209, q1_witness_401⟩
  · exact ⟨1637, q1_witness_409⟩
  · exact ⟨839, q1_witness_419⟩
  · exact ⟨4211, q1_witness_421⟩
  · exact ⟨863, q1_witness_431⟩
  · exact ⟨1733, q1_witness_433⟩
  · exact ⟨4391, q1_witness_439⟩
  · exact ⟨887, q1_witness_443⟩
  · exact ⟨3593, q1_witness_449⟩
  · exact ⟨13711, q1_witness_457⟩
  · exact ⟨2767, q1_witness_461⟩
  · exact ⟨5557, q1_witness_463⟩
  · exact ⟨2803, q1_witness_467⟩
  · exact ⟨3833, q1_witness_479⟩
  · exact ⟨1949, q1_witness_487⟩
  · exact ⟨983, q1_witness_491⟩
  · exact ⟨1997, q1_witness_499⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500
