/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_5_100

open BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_5 :
    Nat.Prime 101 ∧ 101 % (5 * 5) = 1 ∧
      101 ≤ 100000000 ∧ 5 ≤ 101 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 5, 5]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_7 :
    Nat.Prime 197 ∧ 197 % (7 * 7) = 1 ∧
      197 ≤ 100000000 ∧ 5 ≤ 197 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 7]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_11 :
    Nat.Prime 727 ∧ 727 % (11 * 11) = 1 ∧
      727 ≤ 100000000 ∧ 5 ≤ 727 :=
  ⟨prime_of_pratt (a := 5) [2, 3, 11, 11]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_13 :
    Nat.Prime 677 ∧ 677 % (13 * 13) = 1 ∧
      677 ≤ 100000000 ∧ 5 ≤ 677 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 13, 13]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_17 :
    Nat.Prime 3469 ∧ 3469 % (17 * 17) = 1 ∧
      3469 ≤ 100000000 ∧ 5 ≤ 3469 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 17, 17]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_19 :
    Nat.Prime 10831 ∧ 10831 % (19 * 19) = 1 ∧
      10831 ≤ 100000000 ∧ 5 ≤ 10831 :=
  ⟨prime_of_pratt (a := 7) [2, 3, 5, 19, 19]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_23 :
    Nat.Prime 12697 ∧ 12697 % (23 * 23) = 1 ∧
      12697 ≤ 100000000 ∧ 5 ≤ 12697 :=
  ⟨prime_of_pratt (a := 7) [2, 2, 2, 3, 23, 23]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_29 :
    Nat.Prime 10093 ∧ 10093 % (29 * 29) = 1 ∧
      10093 ≤ 100000000 ∧ 5 ≤ 10093 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 29, 29]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_31 :
    Nat.Prime 15377 ∧ 15377 % (31 * 31) = 1 ∧
      15377 ≤ 100000000 ∧ 5 ≤ 15377 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 31, 31]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_37 :
    Nat.Prime 5477 ∧ 5477 % (37 * 37) = 1 ∧
      5477 ≤ 100000000 ∧ 5 ≤ 5477 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 37, 37]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_41 :
    Nat.Prime 16811 ∧ 16811 % (41 * 41) = 1 ∧
      16811 ≤ 100000000 ∧ 5 ≤ 16811 :=
  ⟨prime_of_pratt (a := 7) [2, 5, 41, 41]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_43 :
    Nat.Prime 22189 ∧ 22189 % (43 * 43) = 1 ∧
      22189 ≤ 100000000 ∧ 5 ≤ 22189 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 43, 43]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_47 :
    Nat.Prime 8837 ∧ 8837 % (47 * 47) = 1 ∧
      8837 ≤ 100000000 ∧ 5 ≤ 8837 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 47, 47]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_53 :
    Nat.Prime 78653 ∧ 78653 % (53 * 53) = 1 ∧
      78653 ≤ 100000000 ∧ 5 ≤ 78653 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 7, 53, 53]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_59 :
    Nat.Prime 20887 ∧ 20887 % (59 * 59) = 1 ∧
      20887 ≤ 100000000 ∧ 5 ≤ 20887 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 59, 59]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_61 :
    Nat.Prime 171167 ∧ 171167 % (61 * 61) = 1 ∧
      171167 ≤ 100000000 ∧ 5 ≤ 171167 :=
  ⟨prime_of_pratt (a := 5) [2, 23, 61, 61]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_67 :
    Nat.Prime 17957 ∧ 17957 % (67 * 67) = 1 ∧
      17957 ≤ 100000000 ∧ 5 ≤ 17957 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 67, 67]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_71 :
    Nat.Prime 50411 ∧ 50411 % (71 * 71) = 1 ∧
      50411 ≤ 100000000 ∧ 5 ≤ 50411 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 71, 71]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_73 :
    Nat.Prime 21317 ∧ 21317 % (73 * 73) = 1 ∧
      21317 ≤ 100000000 ∧ 5 ≤ 21317 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 73, 73]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_79 :
    Nat.Prime 37447 ∧ 37447 % (79 * 79) = 1 ∧
      37447 ≤ 100000000 ∧ 5 ≤ 37447 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 79, 79]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_83 :
    Nat.Prime 68891 ∧ 68891 % (83 * 83) = 1 ∧
      68891 ≤ 100000000 ∧ 5 ≤ 68891 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 83, 83]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_89 :
    Nat.Prime 47527 ∧ 47527 % (89 * 89) = 1 ∧
      47527 ≤ 100000000 ∧ 5 ≤ 47527 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 89, 89]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_97 :
    Nat.Prime 112909 ∧ 112909 % (97 * 97) = 1 ∧
      112909 ≤ 100000000 ∧ 5 ≤ 112909 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 97, 97]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_5_100 {ℓ : Nat}
    (h : ℓ ∈ primes5to100) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨101, q2_witness_5⟩
  · exact ⟨197, q2_witness_7⟩
  · exact ⟨727, q2_witness_11⟩
  · exact ⟨677, q2_witness_13⟩
  · exact ⟨3469, q2_witness_17⟩
  · exact ⟨10831, q2_witness_19⟩
  · exact ⟨12697, q2_witness_23⟩
  · exact ⟨10093, q2_witness_29⟩
  · exact ⟨15377, q2_witness_31⟩
  · exact ⟨5477, q2_witness_37⟩
  · exact ⟨16811, q2_witness_41⟩
  · exact ⟨22189, q2_witness_43⟩
  · exact ⟨8837, q2_witness_47⟩
  · exact ⟨78653, q2_witness_53⟩
  · exact ⟨20887, q2_witness_59⟩
  · exact ⟨171167, q2_witness_61⟩
  · exact ⟨17957, q2_witness_67⟩
  · exact ⟨50411, q2_witness_71⟩
  · exact ⟨21317, q2_witness_73⟩
  · exact ⟨37447, q2_witness_79⟩
  · exact ⟨68891, q2_witness_83⟩
  · exact ⟨47527, q2_witness_89⟩
  · exact ⟨112909, q2_witness_97⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_5_100
