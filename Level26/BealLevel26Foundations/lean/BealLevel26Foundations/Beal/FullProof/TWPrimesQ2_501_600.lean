/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_501_600

open BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_503 :
    Nat.Prime 2530091 ∧ 2530091 % (503 * 503) = 1 ∧
      2530091 ≤ 100000000 ∧ 5 ≤ 2530091 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 503, 503]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_509 :
    Nat.Prime 2590811 ∧ 2590811 % (509 * 509) = 1 ∧
      2590811 ≤ 100000000 ∧ 5 ≤ 2590811 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 509, 509]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_521 :
    Nat.Prime 4343057 ∧ 4343057 % (521 * 521) = 1 ∧
      4343057 ≤ 100000000 ∧ 5 ≤ 4343057 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 521, 521]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_523 :
    Nat.Prime 6017639 ∧ 6017639 % (523 * 523) = 1 ∧
      6017639 ≤ 100000000 ∧ 5 ≤ 6017639 :=
  ⟨prime_of_pratt (a := 11) [2, 11, 523, 523]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_541 :
    Nat.Prime 6438983 ∧ 6438983 % (541 * 541) = 1 ∧
      6438983 ≤ 100000000 ∧ 5 ≤ 6438983 :=
  ⟨prime_of_pratt (a := 10) [2, 11, 541, 541]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_547 :
    Nat.Prime 1196837 ∧ 1196837 % (547 * 547) = 1 ∧
      1196837 ≤ 100000000 ∧ 5 ≤ 1196837 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 547, 547]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_557 :
    Nat.Prime 18614941 ∧ 18614941 % (557 * 557) = 1 ∧
      18614941 ≤ 100000000 ∧ 5 ≤ 18614941 :=
  ⟨prime_of_pratt (a := 6) [2, 2, 3, 5, 557, 557]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_563 :
    Nat.Prime 6973319 ∧ 6973319 % (563 * 563) = 1 ∧
      6973319 ≤ 100000000 ∧ 5 ≤ 6973319 :=
  ⟨prime_of_pratt (a := 11) [2, 11, 563, 563]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_569 :
    Nat.Prime 7122743 ∧ 7122743 % (569 * 569) = 1 ∧
      7122743 ≤ 100000000 ∧ 5 ≤ 7122743 :=
  ⟨prime_of_pratt (a := 5) [2, 11, 569, 569]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_571 :
    Nat.Prime 9129149 ∧ 9129149 % (571 * 571) = 1 ∧
      9129149 ≤ 100000000 ∧ 5 ≤ 9129149 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 571, 571]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_577 :
    Nat.Prime 7324439 ∧ 7324439 % (577 * 577) = 1 ∧
      7324439 ≤ 100000000 ∧ 5 ≤ 7324439 :=
  ⟨prime_of_pratt (a := 11) [2, 11, 577, 577]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_587 :
    Nat.Prime 1378277 ∧ 1378277 % (587 * 587) = 1 ∧
      1378277 ≤ 100000000 ∧ 5 ≤ 1378277 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 587, 587]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_593 :
    Nat.Prime 6329683 ∧ 6329683 % (593 * 593) = 1 ∧
      6329683 ≤ 100000000 ∧ 5 ≤ 6329683 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 593, 593]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_599 :
    Nat.Prime 15069643 ∧ 15069643 % (599 * 599) = 1 ∧
      15069643 ≤ 100000000 ∧ 5 ≤ 15069643 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 7, 599, 599]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_501_600 {ℓ : Nat}
    (h : ℓ ∈ primes501to600) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨2530091, q2_witness_503⟩
  · exact ⟨2590811, q2_witness_509⟩
  · exact ⟨4343057, q2_witness_521⟩
  · exact ⟨6017639, q2_witness_523⟩
  · exact ⟨6438983, q2_witness_541⟩
  · exact ⟨1196837, q2_witness_547⟩
  · exact ⟨18614941, q2_witness_557⟩
  · exact ⟨6973319, q2_witness_563⟩
  · exact ⟨7122743, q2_witness_569⟩
  · exact ⟨9129149, q2_witness_571⟩
  · exact ⟨7324439, q2_witness_577⟩
  · exact ⟨1378277, q2_witness_587⟩
  · exact ⟨6329683, q2_witness_593⟩
  · exact ⟨15069643, q2_witness_599⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_501_600
