/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400

set_option maxHeartbeats 400000

def primes301to400 : Finset Nat :=
  { 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397 }

theorem q1_witness_307 :
    Nat.Prime 1229 ∧ 1229 % 307 = 1 ∧ 1229 ≤ 20000 ∧ 5 ≤ 1229 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_311 :
    Nat.Prime 1867 ∧ 1867 % 311 = 1 ∧ 1867 ≤ 20000 ∧ 5 ≤ 1867 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_313 :
    Nat.Prime 1879 ∧ 1879 % 313 = 1 ∧ 1879 ≤ 20000 ∧ 5 ≤ 1879 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_317 :
    Nat.Prime 8243 ∧ 8243 % 317 = 1 ∧ 8243 ≤ 20000 ∧ 5 ≤ 8243 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_331 :
    Nat.Prime 1987 ∧ 1987 % 331 = 1 ∧ 1987 ≤ 20000 ∧ 5 ≤ 1987 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_337 :
    Nat.Prime 3371 ∧ 3371 % 337 = 1 ∧ 3371 ≤ 20000 ∧ 5 ≤ 3371 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_347 :
    Nat.Prime 2083 ∧ 2083 % 347 = 1 ∧ 2083 ≤ 20000 ∧ 5 ≤ 2083 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_349 :
    Nat.Prime 3491 ∧ 3491 % 349 = 1 ∧ 3491 ≤ 20000 ∧ 5 ≤ 3491 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_353 :
    Nat.Prime 4943 ∧ 4943 % 353 = 1 ∧ 4943 ≤ 20000 ∧ 5 ≤ 4943 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_359 :
    Nat.Prime 719 ∧ 719 % 359 = 1 ∧ 719 ≤ 20000 ∧ 5 ≤ 719 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_367 :
    Nat.Prime 2203 ∧ 2203 % 367 = 1 ∧ 2203 ≤ 20000 ∧ 5 ≤ 2203 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_373 :
    Nat.Prime 1493 ∧ 1493 % 373 = 1 ∧ 1493 ≤ 20000 ∧ 5 ≤ 1493 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_379 :
    Nat.Prime 4549 ∧ 4549 % 379 = 1 ∧ 4549 ≤ 20000 ∧ 5 ≤ 4549 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_383 :
    Nat.Prime 4597 ∧ 4597 % 383 = 1 ∧ 4597 ≤ 20000 ∧ 5 ≤ 4597 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_389 :
    Nat.Prime 9337 ∧ 9337 % 389 = 1 ∧ 9337 ≤ 20000 ∧ 5 ≤ 9337 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_397 :
    Nat.Prime 2383 ∧ 2383 % 397 = 1 ∧ 2383 ≤ 20000 ∧ 5 ≤ 2383 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_301_400 {ℓ : Nat}
    (h : ℓ ∈ primes301to400) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨1229, q1_witness_307⟩
  · exact ⟨1867, q1_witness_311⟩
  · exact ⟨1879, q1_witness_313⟩
  · exact ⟨8243, q1_witness_317⟩
  · exact ⟨1987, q1_witness_331⟩
  · exact ⟨3371, q1_witness_337⟩
  · exact ⟨2083, q1_witness_347⟩
  · exact ⟨3491, q1_witness_349⟩
  · exact ⟨4943, q1_witness_353⟩
  · exact ⟨719, q1_witness_359⟩
  · exact ⟨2203, q1_witness_367⟩
  · exact ⟨1493, q1_witness_373⟩
  · exact ⟨4549, q1_witness_379⟩
  · exact ⟨4597, q1_witness_383⟩
  · exact ⟨9337, q1_witness_389⟩
  · exact ⟨2383, q1_witness_397⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400
