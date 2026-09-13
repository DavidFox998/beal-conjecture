/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_601_700

open BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_601 :
    Nat.Prime 5779217 ∧ 5779217 % (601 * 601) = 1 ∧
      5779217 ≤ 100000000 ∧ 5 ≤ 5779217 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 601, 601]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_607 :
    Nat.Prime 10316573 ∧ 10316573 % (607 * 607) = 1 ∧
      10316573 ≤ 100000000 ∧ 5 ≤ 10316573 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 7, 607, 607]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_613 :
    Nat.Prime 12776147 ∧ 12776147 % (613 * 613) = 1 ∧
      12776147 ≤ 100000000 ∧ 5 ≤ 12776147 :=
  ⟨prime_of_pratt (a := 2) [2, 17, 613, 613]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_617 :
    Nat.Prime 4568269 ∧ 4568269 % (617 * 617) = 1 ∧
      4568269 ≤ 100000000 ∧ 5 ≤ 4568269 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 617, 617]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_619 :
    Nat.Prime 4597933 ∧ 4597933 % (619 * 619) = 1 ∧
      4597933 ≤ 100000000 ∧ 5 ≤ 4597933 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 619, 619]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_631 :
    Nat.Prime 4777933 ∧ 4777933 % (631 * 631) = 1 ∧
      4777933 ≤ 100000000 ∧ 5 ≤ 4777933 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 631, 631]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_641 :
    Nat.Prime 7395859 ∧ 7395859 % (641 * 641) = 1 ∧
      7395859 ≤ 100000000 ∧ 5 ≤ 7395859 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 641, 641]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_643 :
    Nat.Prime 4961389 ∧ 4961389 % (643 * 643) = 1 ∧
      4961389 ≤ 100000000 ∧ 5 ≤ 4961389 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 643, 643]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_647 :
    Nat.Prime 1674437 ∧ 1674437 % (647 * 647) = 1 ∧
      1674437 ≤ 100000000 ∧ 5 ≤ 1674437 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 647, 647]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_653 :
    Nat.Prime 1705637 ∧ 1705637 % (653 * 653) = 1 ∧
      1705637 ≤ 100000000 ∧ 5 ≤ 1705637 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 653, 653]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_659 :
    Nat.Prime 5211373 ∧ 5211373 % (659 * 659) = 1 ∧
      5211373 ≤ 100000000 ∧ 5 ≤ 5211373 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 659, 659]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_661 :
    Nat.Prime 2621527 ∧ 2621527 % (661 * 661) = 1 ∧
      2621527 ≤ 100000000 ∧ 5 ≤ 2621527 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 661, 661]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_673 :
    Nat.Prime 9964439 ∧ 9964439 % (673 * 673) = 1 ∧
      9964439 ≤ 100000000 ∧ 5 ≤ 9964439 :=
  ⟨prime_of_pratt (a := 7) [2, 11, 673, 673]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_677 :
    Nat.Prime 1833317 ∧ 1833317 % (677 * 677) = 1 ∧
      1833317 ≤ 100000000 ∧ 5 ≤ 1833317 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 677, 677]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_683 :
    Nat.Prime 1865957 ∧ 1865957 % (683 * 683) = 1 ∧
      1865957 ≤ 100000000 ∧ 5 ≤ 1865957 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 683, 683]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_691 :
    Nat.Prime 2864887 ∧ 2864887 % (691 * 691) = 1 ∧
      2864887 ≤ 100000000 ∧ 5 ≤ 2864887 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 691, 691]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_601_700 {ℓ : Nat}
    (h : ℓ ∈ primes601to700) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨5779217, q2_witness_601⟩
  · exact ⟨10316573, q2_witness_607⟩
  · exact ⟨12776147, q2_witness_613⟩
  · exact ⟨4568269, q2_witness_617⟩
  · exact ⟨4597933, q2_witness_619⟩
  · exact ⟨4777933, q2_witness_631⟩
  · exact ⟨7395859, q2_witness_641⟩
  · exact ⟨4961389, q2_witness_643⟩
  · exact ⟨1674437, q2_witness_647⟩
  · exact ⟨1705637, q2_witness_653⟩
  · exact ⟨5211373, q2_witness_659⟩
  · exact ⟨2621527, q2_witness_661⟩
  · exact ⟨9964439, q2_witness_673⟩
  · exact ⟨1833317, q2_witness_677⟩
  · exact ⟨1865957, q2_witness_683⟩
  · exact ⟨2864887, q2_witness_691⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_601_700
