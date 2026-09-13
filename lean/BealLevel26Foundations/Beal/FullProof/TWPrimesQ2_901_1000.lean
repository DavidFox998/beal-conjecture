/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_901_1000

open BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_907 :
    Nat.Prime 9871789 ∧ 9871789 % (907 * 907) = 1 ∧
      9871789 ≤ 100000000 ∧ 5 ≤ 9871789 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 907, 907]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_911 :
    Nat.Prime 13278737 ∧ 13278737 % (911 * 911) = 1 ∧
      13278737 ≤ 100000000 ∧ 5 ≤ 13278737 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 911, 911]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_919 :
    Nat.Prime 59119271 ∧ 59119271 % (919 * 919) = 1 ∧
      59119271 ≤ 100000000 ∧ 5 ≤ 59119271 :=
  ⟨prime_of_pratt (a := 7) [2, 5, 7, 919, 919]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_929 :
    Nat.Prime 13808657 ∧ 13808657 % (929 * 929) = 1 ∧
      13808657 ≤ 100000000 ∧ 5 ≤ 13808657 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 929, 929]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_937 :
    Nat.Prime 15803443 ∧ 15803443 % (937 * 937) = 1 ∧
      15803443 ≤ 100000000 ∧ 5 ≤ 15803443 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 937, 937]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_941 :
    Nat.Prime 14167697 ∧ 14167697 % (941 * 941) = 1 ∧
      14167697 ≤ 100000000 ∧ 5 ≤ 14167697 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 941, 941]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_947 :
    Nat.Prime 3587237 ∧ 3587237 % (947 * 947) = 1 ∧
      3587237 ≤ 100000000 ∧ 5 ≤ 3587237 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 947, 947]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_953 :
    Nat.Prime 9082091 ∧ 9082091 % (953 * 953) = 1 ∧
      9082091 ≤ 100000000 ∧ 5 ≤ 9082091 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 953, 953]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_967 :
    Nat.Prime 11221069 ∧ 11221069 % (967 * 967) = 1 ∧
      11221069 ≤ 100000000 ∧ 5 ≤ 11221069 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 967, 967]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_971 :
    Nat.Prime 9428411 ∧ 9428411 % (971 * 971) = 1 ∧
      9428411 ≤ 100000000 ∧ 5 ≤ 9428411 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 971, 971]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_977 :
    Nat.Prime 17181523 ∧ 17181523 % (977 * 977) = 1 ∧
      17181523 ≤ 100000000 ∧ 5 ≤ 17181523 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 977, 977]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_983 :
    Nat.Prime 3865157 ∧ 3865157 % (983 * 983) = 1 ∧
      3865157 ≤ 100000000 ∧ 5 ≤ 3865157 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 983, 983]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_991 :
    Nat.Prime 47139889 ∧ 47139889 % (991 * 991) = 1 ∧
      47139889 ≤ 100000000 ∧ 5 ≤ 47139889 :=
  ⟨prime_of_pratt (a := 14) [2, 2, 2, 2, 3, 991, 991]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_997 :
    Nat.Prime 47712433 ∧ 47712433 % (997 * 997) = 1 ∧
      47712433 ≤ 100000000 ∧ 5 ≤ 47712433 :=
  ⟨prime_of_pratt (a := 7) [2, 2, 2, 2, 3, 997, 997]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_901_1000 {ℓ : Nat}
    (h : ℓ ∈ primes901to1000) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨9871789, q2_witness_907⟩
  · exact ⟨13278737, q2_witness_911⟩
  · exact ⟨59119271, q2_witness_919⟩
  · exact ⟨13808657, q2_witness_929⟩
  · exact ⟨15803443, q2_witness_937⟩
  · exact ⟨14167697, q2_witness_941⟩
  · exact ⟨3587237, q2_witness_947⟩
  · exact ⟨9082091, q2_witness_953⟩
  · exact ⟨11221069, q2_witness_967⟩
  · exact ⟨9428411, q2_witness_971⟩
  · exact ⟨17181523, q2_witness_977⟩
  · exact ⟨3865157, q2_witness_983⟩
  · exact ⟨47139889, q2_witness_991⟩
  · exact ⟨47712433, q2_witness_997⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_901_1000
