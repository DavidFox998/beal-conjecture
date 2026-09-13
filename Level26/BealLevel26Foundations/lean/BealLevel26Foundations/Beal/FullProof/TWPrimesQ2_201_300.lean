/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_201_300

open BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_211 :
    Nat.Prime 534253 ∧ 534253 % (211 * 211) = 1 ∧
      534253 ≤ 100000000 ∧ 5 ≤ 534253 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 211, 211]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_223 :
    Nat.Prime 497291 ∧ 497291 % (223 * 223) = 1 ∧
      497291 ≤ 100000000 ∧ 5 ≤ 497291 :=
  ⟨prime_of_pratt (a := 6) [2, 5, 223, 223]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_227 :
    Nat.Prime 618349 ∧ 618349 % (227 * 227) = 1 ∧
      618349 ≤ 100000000 ∧ 5 ≤ 618349 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 227, 227]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_229 :
    Nat.Prime 524411 ∧ 524411 % (229 * 229) = 1 ∧
      524411 ≤ 100000000 ∧ 5 ≤ 524411 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 229, 229]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_233 :
    Nat.Prime 217157 ∧ 217157 % (233 * 233) = 1 ∧
      217157 ≤ 100000000 ∧ 5 ≤ 217157 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 233, 233]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_239 :
    Nat.Prime 571211 ∧ 571211 % (239 * 239) = 1 ∧
      571211 ≤ 100000000 ∧ 5 ≤ 571211 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 239, 239]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_241 :
    Nat.Prime 348487 ∧ 348487 % (241 * 241) = 1 ∧
      348487 ≤ 100000000 ∧ 5 ≤ 348487 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 241, 241]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_251 :
    Nat.Prime 1008017 ∧ 1008017 % (251 * 251) = 1 ∧
      1008017 ≤ 100000000 ∧ 5 ≤ 1008017 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 251, 251]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_257 :
    Nat.Prime 1981471 ∧ 1981471 % (257 * 257) = 1 ∧
      1981471 ≤ 100000000 ∧ 5 ≤ 1981471 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 5, 257, 257]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_263 :
    Nat.Prime 1936733 ∧ 1936733 % (263 * 263) = 1 ∧
      1936733 ≤ 100000000 ∧ 5 ≤ 1936733 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 263, 263]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_269 :
    Nat.Prime 434167 ∧ 434167 % (269 * 269) = 1 ∧
      434167 ≤ 100000000 ∧ 5 ≤ 434167 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 269, 269]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_271 :
    Nat.Prime 734411 ∧ 734411 % (271 * 271) = 1 ∧
      734411 ≤ 100000000 ∧ 5 ≤ 734411 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 271, 271]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_277 :
    Nat.Prime 3069161 ∧ 3069161 % (277 * 277) = 1 ∧
      3069161 ≤ 100000000 ∧ 5 ≤ 3069161 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 5, 277, 277]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_281 :
    Nat.Prime 789611 ∧ 789611 % (281 * 281) = 1 ∧
      789611 ≤ 100000000 ∧ 5 ≤ 789611 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 281, 281]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_283 :
    Nat.Prime 961069 ∧ 961069 % (283 * 283) = 1 ∧
      961069 ≤ 100000000 ∧ 5 ≤ 961069 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 283, 283]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_293 :
    Nat.Prime 2403773 ∧ 2403773 % (293 * 293) = 1 ∧
      2403773 ≤ 100000000 ∧ 5 ≤ 2403773 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 293, 293]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_201_300 {ℓ : Nat}
    (h : ℓ ∈ primes201to300) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨534253, q2_witness_211⟩
  · exact ⟨497291, q2_witness_223⟩
  · exact ⟨618349, q2_witness_227⟩
  · exact ⟨524411, q2_witness_229⟩
  · exact ⟨217157, q2_witness_233⟩
  · exact ⟨571211, q2_witness_239⟩
  · exact ⟨348487, q2_witness_241⟩
  · exact ⟨1008017, q2_witness_251⟩
  · exact ⟨1981471, q2_witness_257⟩
  · exact ⟨1936733, q2_witness_263⟩
  · exact ⟨434167, q2_witness_269⟩
  · exact ⟨734411, q2_witness_271⟩
  · exact ⟨3069161, q2_witness_277⟩
  · exact ⟨789611, q2_witness_281⟩
  · exact ⟨961069, q2_witness_283⟩
  · exact ⟨2403773, q2_witness_293⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_201_300
