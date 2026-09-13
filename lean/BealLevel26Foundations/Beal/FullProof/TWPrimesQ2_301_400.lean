/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_301_400

open BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_307 :
    Nat.Prime 2638973 ∧ 2638973 % (307 * 307) = 1 ∧
      2638973 ≤ 100000000 ∧ 5 ≤ 2638973 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 307, 307]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_311 :
    Nat.Prime 1547537 ∧ 1547537 % (311 * 311) = 1 ∧
      1547537 ≤ 100000000 ∧ 5 ≤ 1547537 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 311, 311]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_313 :
    Nat.Prime 979691 ∧ 979691 % (313 * 313) = 1 ∧
      979691 ≤ 100000000 ∧ 5 ≤ 979691 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 313, 313]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_317 :
    Nat.Prime 401957 ∧ 401957 % (317 * 317) = 1 ∧
      401957 ≤ 100000000 ∧ 5 ≤ 401957 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 317, 317]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_331 :
    Nat.Prime 1752977 ∧ 1752977 % (331 * 331) = 1 ∧
      1752977 ≤ 100000000 ∧ 5 ≤ 1752977 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 331, 331]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_337 :
    Nat.Prime 454277 ∧ 454277 % (337 * 337) = 1 ∧
      454277 ≤ 100000000 ∧ 5 ≤ 454277 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 337, 337]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_347 :
    Nat.Prime 1444909 ∧ 1444909 % (347 * 347) = 1 ∧
      1444909 ≤ 100000000 ∧ 5 ≤ 1444909 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 347, 347]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_349 :
    Nat.Prime 4384837 ∧ 4384837 % (349 * 349) = 1 ∧
      4384837 ≤ 100000000 ∧ 5 ≤ 4384837 :=
  ⟨prime_of_pratt (a := 5) [2, 2, 3, 3, 349, 349]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_353 :
    Nat.Prime 3489053 ∧ 3489053 % (353 * 353) = 1 ∧
      3489053 ≤ 100000000 ∧ 5 ≤ 3489053 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 353, 353]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_359 :
    Nat.Prime 773287 ∧ 773287 % (359 * 359) = 1 ∧
      773287 ≤ 100000000 ∧ 5 ≤ 773287 :=
  ⟨prime_of_pratt (a := 5) [2, 3, 359, 359]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_367 :
    Nat.Prime 1616269 ∧ 1616269 % (367 * 367) = 1 ∧
      1616269 ≤ 100000000 ∧ 5 ≤ 1616269 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 367, 367]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_373 :
    Nat.Prime 2504323 ∧ 2504323 % (373 * 373) = 1 ∧
      2504323 ≤ 100000000 ∧ 5 ≤ 2504323 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 373, 373]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_379 :
    Nat.Prime 1436411 ∧ 1436411 % (379 * 379) = 1 ∧
      1436411 ≤ 100000000 ∧ 5 ≤ 1436411 :=
  ⟨prime_of_pratt (a := 6) [2, 5, 379, 379]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_383 :
    Nat.Prime 3520537 ∧ 3520537 % (383 * 383) = 1 ∧
      3520537 ≤ 100000000 ∧ 5 ≤ 3520537 :=
  ⟨prime_of_pratt (a := 5) [2, 2, 2, 3, 383, 383]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_389 :
    Nat.Prime 907927 ∧ 907927 % (389 * 389) = 1 ∧
      907927 ≤ 100000000 ∧ 5 ≤ 907927 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 389, 389]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_397 :
    Nat.Prime 2836963 ∧ 2836963 % (397 * 397) = 1 ∧
      2836963 ≤ 100000000 ∧ 5 ≤ 2836963 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 397, 397]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_301_400 {ℓ : Nat}
    (h : ℓ ∈ primes301to400) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨2638973, q2_witness_307⟩
  · exact ⟨1547537, q2_witness_311⟩
  · exact ⟨979691, q2_witness_313⟩
  · exact ⟨401957, q2_witness_317⟩
  · exact ⟨1752977, q2_witness_331⟩
  · exact ⟨454277, q2_witness_337⟩
  · exact ⟨1444909, q2_witness_347⟩
  · exact ⟨4384837, q2_witness_349⟩
  · exact ⟨3489053, q2_witness_353⟩
  · exact ⟨773287, q2_witness_359⟩
  · exact ⟨1616269, q2_witness_367⟩
  · exact ⟨2504323, q2_witness_373⟩
  · exact ⟨1436411, q2_witness_379⟩
  · exact ⟨3520537, q2_witness_383⟩
  · exact ⟨907927, q2_witness_389⟩
  · exact ⟨2836963, q2_witness_397⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_301_400
