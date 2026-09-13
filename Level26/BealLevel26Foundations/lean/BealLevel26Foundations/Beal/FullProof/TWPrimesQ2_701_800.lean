/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_701_800

open BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_701 :
    Nat.Prime 7862417 ∧ 7862417 % (701 * 701) = 1 ∧
      7862417 ≤ 100000000 ∧ 5 ≤ 7862417 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 701, 701]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_709 :
    Nat.Prime 8042897 ∧ 8042897 % (709 * 709) = 1 ∧
      8042897 ≤ 100000000 ∧ 5 ≤ 8042897 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 709, 709]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_719 :
    Nat.Prime 8271377 ∧ 8271377 % (719 * 719) = 1 ∧
      8271377 ≤ 100000000 ∧ 5 ≤ 8271377 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 719, 719]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_727 :
    Nat.Prime 21141161 ∧ 21141161 % (727 * 727) = 1 ∧
      21141161 ≤ 100000000 ∧ 5 ≤ 21141161 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 5, 727, 727]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_733 :
    Nat.Prime 18267827 ∧ 18267827 % (733 * 733) = 1 ∧
      18267827 ≤ 100000000 ∧ 5 ≤ 18267827 :=
  ⟨prime_of_pratt (a := 5) [2, 17, 733, 733]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_739 :
    Nat.Prime 6553453 ∧ 6553453 % (739 * 739) = 1 ∧
      6553453 ≤ 100000000 ∧ 5 ≤ 6553453 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 739, 739]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_743 :
    Nat.Prime 6624589 ∧ 6624589 % (743 * 743) = 1 ∧
      6624589 ≤ 100000000 ∧ 5 ≤ 6624589 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 743, 743]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_751 :
    Nat.Prime 10152019 ∧ 10152019 % (751 * 751) = 1 ∧
      10152019 ≤ 100000000 ∧ 5 ≤ 10152019 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 751, 751]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_757 :
    Nat.Prime 13753177 ∧ 13753177 % (757 * 757) = 1 ∧
      13753177 ≤ 100000000 ∧ 5 ≤ 13753177 :=
  ⟨prime_of_pratt (a := 5) [2, 2, 2, 3, 757, 757]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_761 :
    Nat.Prime 5791211 ∧ 5791211 % (761 * 761) = 1 ∧
      5791211 ≤ 100000000 ∧ 5 ≤ 5791211 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 761, 761]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_769 :
    Nat.Prime 13009943 ∧ 13009943 % (769 * 769) = 1 ∧
      13009943 ≤ 100000000 ∧ 5 ≤ 13009943 :=
  ⟨prime_of_pratt (a := 7) [2, 11, 769, 769]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_773 :
    Nat.Prime 2390117 ∧ 2390117 % (773 * 773) = 1 ∧
      2390117 ≤ 100000000 ∧ 5 ≤ 2390117 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 773, 773]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_787 :
    Nat.Prime 17342333 ∧ 17342333 % (787 * 787) = 1 ∧
      17342333 ≤ 100000000 ∧ 5 ≤ 17342333 :=
  ⟨prime_of_pratt (a := 5) [2, 2, 7, 787, 787]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_797 :
    Nat.Prime 6352091 ∧ 6352091 % (797 * 797) = 1 ∧
      6352091 ≤ 100000000 ∧ 5 ≤ 6352091 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 797, 797]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_701_800 {ℓ : Nat}
    (h : ℓ ∈ primes701to800) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨7862417, q2_witness_701⟩
  · exact ⟨8042897, q2_witness_709⟩
  · exact ⟨8271377, q2_witness_719⟩
  · exact ⟨21141161, q2_witness_727⟩
  · exact ⟨18267827, q2_witness_733⟩
  · exact ⟨6553453, q2_witness_739⟩
  · exact ⟨6624589, q2_witness_743⟩
  · exact ⟨10152019, q2_witness_751⟩
  · exact ⟨13753177, q2_witness_757⟩
  · exact ⟨5791211, q2_witness_761⟩
  · exact ⟨13009943, q2_witness_769⟩
  · exact ⟨2390117, q2_witness_773⟩
  · exact ⟨17342333, q2_witness_787⟩
  · exact ⟨6352091, q2_witness_797⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_701_800
