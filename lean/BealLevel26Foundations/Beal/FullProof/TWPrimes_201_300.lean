/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300

set_option maxHeartbeats 400000

def primes201to300 : Finset Nat :=
  { 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293 }

theorem q1_witness_211 :
    Nat.Prime 2111 ∧ 2111 % 211 = 1 ∧ 2111 ≤ 20000 ∧ 5 ≤ 2111 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_223 :
    Nat.Prime 2677 ∧ 2677 % 223 = 1 ∧ 2677 ≤ 20000 ∧ 5 ≤ 2677 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_227 :
    Nat.Prime 5449 ∧ 5449 % 227 = 1 ∧ 5449 ≤ 20000 ∧ 5 ≤ 5449 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_229 :
    Nat.Prime 2749 ∧ 2749 % 229 = 1 ∧ 2749 ≤ 20000 ∧ 5 ≤ 2749 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_233 :
    Nat.Prime 467 ∧ 467 % 233 = 1 ∧ 467 ≤ 20000 ∧ 5 ≤ 467 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_239 :
    Nat.Prime 479 ∧ 479 % 239 = 1 ∧ 479 ≤ 20000 ∧ 5 ≤ 479 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_241 :
    Nat.Prime 1447 ∧ 1447 % 241 = 1 ∧ 1447 ≤ 20000 ∧ 5 ≤ 1447 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_251 :
    Nat.Prime 503 ∧ 503 % 251 = 1 ∧ 503 ≤ 20000 ∧ 5 ≤ 503 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_257 :
    Nat.Prime 1543 ∧ 1543 % 257 = 1 ∧ 1543 ≤ 20000 ∧ 5 ≤ 1543 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_263 :
    Nat.Prime 1579 ∧ 1579 % 263 = 1 ∧ 1579 ≤ 20000 ∧ 5 ≤ 1579 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_269 :
    Nat.Prime 2153 ∧ 2153 % 269 = 1 ∧ 2153 ≤ 20000 ∧ 5 ≤ 2153 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_271 :
    Nat.Prime 1627 ∧ 1627 % 271 = 1 ∧ 1627 ≤ 20000 ∧ 5 ≤ 1627 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_277 :
    Nat.Prime 1109 ∧ 1109 % 277 = 1 ∧ 1109 ≤ 20000 ∧ 5 ≤ 1109 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_281 :
    Nat.Prime 563 ∧ 563 % 281 = 1 ∧ 563 ≤ 20000 ∧ 5 ≤ 563 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_283 :
    Nat.Prime 1699 ∧ 1699 % 283 = 1 ∧ 1699 ≤ 20000 ∧ 5 ≤ 1699 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem q1_witness_293 :
    Nat.Prime 587 ∧ 587 % 293 = 1 ∧ 587 ≤ 20000 ∧ 5 ≤ 587 :=
  ⟨by norm_num, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_201_300 {ℓ : Nat}
    (h : ℓ ∈ primes201to300) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  fin_cases h
  · exact ⟨2111, q1_witness_211⟩
  · exact ⟨2677, q1_witness_223⟩
  · exact ⟨5449, q1_witness_227⟩
  · exact ⟨2749, q1_witness_229⟩
  · exact ⟨467, q1_witness_233⟩
  · exact ⟨479, q1_witness_239⟩
  · exact ⟨1447, q1_witness_241⟩
  · exact ⟨503, q1_witness_251⟩
  · exact ⟨1543, q1_witness_257⟩
  · exact ⟨1579, q1_witness_263⟩
  · exact ⟨2153, q1_witness_269⟩
  · exact ⟨1627, q1_witness_271⟩
  · exact ⟨1109, q1_witness_277⟩
  · exact ⟨563, q1_witness_281⟩
  · exact ⟨1699, q1_witness_283⟩
  · exact ⟨587, q1_witness_293⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300
