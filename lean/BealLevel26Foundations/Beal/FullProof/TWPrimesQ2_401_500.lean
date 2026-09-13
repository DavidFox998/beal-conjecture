/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_401_500

open BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_401 :
    Nat.Prime 4824031 ∧ 4824031 % (401 * 401) = 1 ∧
      4824031 ≤ 100000000 ∧ 5 ≤ 4824031 :=
  ⟨prime_of_pratt (a := 6) [2, 3, 5, 401, 401]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_409 :
    Nat.Prime 6022117 ∧ 6022117 % (409 * 409) = 1 ∧
      6022117 ≤ 100000000 ∧ 5 ≤ 6022117 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 3, 409, 409]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_419 :
    Nat.Prime 2106733 ∧ 2106733 % (419 * 419) = 1 ∧
      2106733 ≤ 100000000 ∧ 5 ≤ 2106733 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 419, 419]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_421 :
    Nat.Prime 2126893 ∧ 2126893 % (421 * 421) = 1 ∧
      2126893 ≤ 100000000 ∧ 5 ≤ 2126893 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 421, 421]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_431 :
    Nat.Prime 1114567 ∧ 1114567 % (431 * 431) = 1 ∧
      1114567 ≤ 100000000 ∧ 5 ≤ 1114567 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 431, 431]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_433 :
    Nat.Prime 3374803 ∧ 3374803 % (433 * 433) = 1 ∧
      3374803 ≤ 100000000 ∧ 5 ≤ 3374803 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 433, 433]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_439 :
    Nat.Prime 1156327 ∧ 1156327 % (439 * 439) = 1 ∧
      1156327 ≤ 100000000 ∧ 5 ≤ 1156327 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 439, 439]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_443 :
    Nat.Prime 3532483 ∧ 3532483 % (443 * 443) = 1 ∧
      3532483 ≤ 100000000 ∧ 5 ≤ 3532483 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 443, 443]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_449 :
    Nat.Prime 3628819 ∧ 3628819 % (449 * 449) = 1 ∧
      3628819 ≤ 100000000 ∧ 5 ≤ 3628819 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 449, 449]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_457 :
    Nat.Prime 5012377 ∧ 5012377 % (457 * 457) = 1 ∧
      5012377 ≤ 100000000 ∧ 5 ≤ 5012377 :=
  ⟨prime_of_pratt (a := 5) [2, 2, 2, 3, 457, 457]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_461 :
    Nat.Prime 2550253 ∧ 2550253 % (461 * 461) = 1 ∧
      2550253 ≤ 100000000 ∧ 5 ≤ 2550253 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 461, 461]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_463 :
    Nat.Prime 17578259 ∧ 17578259 % (463 * 463) = 1 ∧
      17578259 ≤ 100000000 ∧ 5 ≤ 17578259 :=
  ⟨prime_of_pratt (a := 2) [2, 41, 463, 463]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_467 :
    Nat.Prime 4797959 ∧ 4797959 % (467 * 467) = 1 ∧
      4797959 ≤ 100000000 ∧ 5 ≤ 4797959 :=
  ⟨prime_of_pratt (a := 11) [2, 11, 467, 467]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_479 :
    Nat.Prime 5047703 ∧ 5047703 % (479 * 479) = 1 ∧
      5047703 ≤ 100000000 ∧ 5 ≤ 5047703 :=
  ⟨prime_of_pratt (a := 5) [2, 11, 479, 479]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_487 :
    Nat.Prime 9486761 ∧ 9486761 % (487 * 487) = 1 ∧
      9486761 ≤ 100000000 ∧ 5 ≤ 9486761 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 5, 487, 487]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_491 :
    Nat.Prime 2892973 ∧ 2892973 % (491 * 491) = 1 ∧
      2892973 ≤ 100000000 ∧ 5 ≤ 2892973 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 491, 491]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_499 :
    Nat.Prime 6972029 ∧ 6972029 % (499 * 499) = 1 ∧
      6972029 ≤ 100000000 ∧ 5 ≤ 6972029 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 7, 499, 499]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_401_500 {ℓ : Nat}
    (h : ℓ ∈ primes401to500) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨4824031, q2_witness_401⟩
  · exact ⟨6022117, q2_witness_409⟩
  · exact ⟨2106733, q2_witness_419⟩
  · exact ⟨2126893, q2_witness_421⟩
  · exact ⟨1114567, q2_witness_431⟩
  · exact ⟨3374803, q2_witness_433⟩
  · exact ⟨1156327, q2_witness_439⟩
  · exact ⟨3532483, q2_witness_443⟩
  · exact ⟨3628819, q2_witness_449⟩
  · exact ⟨5012377, q2_witness_457⟩
  · exact ⟨2550253, q2_witness_461⟩
  · exact ⟨17578259, q2_witness_463⟩
  · exact ⟨4797959, q2_witness_467⟩
  · exact ⟨5047703, q2_witness_479⟩
  · exact ⟨9486761, q2_witness_487⟩
  · exact ⟨2892973, q2_witness_491⟩
  · exact ⟨6972029, q2_witness_499⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_401_500
