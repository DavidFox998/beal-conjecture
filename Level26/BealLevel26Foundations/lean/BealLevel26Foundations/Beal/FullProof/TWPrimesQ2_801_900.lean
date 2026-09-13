/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_801_900

open BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_809 :
    Nat.Prime 7853773 ∧ 7853773 % (809 * 809) = 1 ∧
      7853773 ≤ 100000000 ∧ 5 ≤ 7853773 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 809, 809]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_811 :
    Nat.Prime 11838979 ∧ 11838979 % (811 * 811) = 1 ∧
      11838979 ≤ 100000000 ∧ 5 ≤ 11838979 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 3, 811, 811]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_821 :
    Nat.Prime 12132739 ∧ 12132739 % (821 * 821) = 1 ∧
      12132739 ≤ 100000000 ∧ 5 ≤ 12132739 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 821, 821]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_823 :
    Nat.Prime 28447819 ∧ 28447819 % (823 * 823) = 1 ∧
      28447819 ≤ 100000000 ∧ 5 ≤ 28447819 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 7, 823, 823]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_827 :
    Nat.Prime 2735717 ∧ 2735717 % (827 * 827) = 1 ∧
      2735717 ≤ 100000000 ∧ 5 ≤ 2735717 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 827, 827]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_829 :
    Nat.Prime 4123447 ∧ 4123447 % (829 * 829) = 1 ∧
      4123447 ≤ 100000000 ∧ 5 ≤ 4123447 :=
  ⟨prime_of_pratt (a := 5) [2, 3, 829, 829]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_839 :
    Nat.Prime 7039211 ∧ 7039211 % (839 * 839) = 1 ∧
      7039211 ≤ 100000000 ∧ 5 ≤ 7039211 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 839, 839]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_853 :
    Nat.Prime 8731309 ∧ 8731309 % (853 * 853) = 1 ∧
      8731309 ≤ 100000000 ∧ 5 ≤ 8731309 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 853, 853]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_857 :
    Nat.Prime 13220083 ∧ 13220083 % (857 * 857) = 1 ∧
      13220083 ≤ 100000000 ∧ 5 ≤ 13220083 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 857, 857]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_859 :
    Nat.Prime 4427287 ∧ 4427287 % (859 * 859) = 1 ∧
      4427287 ≤ 100000000 ∧ 5 ≤ 4427287 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 859, 859]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_863 :
    Nat.Prime 16384919 ∧ 16384919 % (863 * 863) = 1 ∧
      16384919 ≤ 100000000 ∧ 5 ≤ 16384919 :=
  ⟨prime_of_pratt (a := 11) [2, 11, 863, 863]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_877 :
    Nat.Prime 23073871 ∧ 23073871 % (877 * 877) = 1 ∧
      23073871 ≤ 100000000 ∧ 5 ≤ 23073871 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 5, 877, 877]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_881 :
    Nat.Prime 23284831 ∧ 23284831 % (881 * 881) = 1 ∧
      23284831 ≤ 100000000 ∧ 5 ≤ 23284831 :=
  ⟨prime_of_pratt (a := 6) [2, 3, 5, 881, 881]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_883 :
    Nat.Prime 3118757 ∧ 3118757 % (883 * 883) = 1 ∧
      3118757 ≤ 100000000 ∧ 5 ≤ 3118757 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 883, 883]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_887 :
    Nat.Prime 3147077 ∧ 3147077 % (887 * 887) = 1 ∧
      3147077 ≤ 100000000 ∧ 5 ≤ 3147077 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 887, 887]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_801_900 {ℓ : Nat}
    (h : ℓ ∈ primes801to900) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨7853773, q2_witness_809⟩
  · exact ⟨11838979, q2_witness_811⟩
  · exact ⟨12132739, q2_witness_821⟩
  · exact ⟨28447819, q2_witness_823⟩
  · exact ⟨2735717, q2_witness_827⟩
  · exact ⟨4123447, q2_witness_829⟩
  · exact ⟨7039211, q2_witness_839⟩
  · exact ⟨8731309, q2_witness_853⟩
  · exact ⟨13220083, q2_witness_857⟩
  · exact ⟨4427287, q2_witness_859⟩
  · exact ⟨16384919, q2_witness_863⟩
  · exact ⟨23073871, q2_witness_877⟩
  · exact ⟨23284831, q2_witness_881⟩
  · exact ⟨3118757, q2_witness_883⟩
  · exact ⟨3147077, q2_witness_887⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_801_900
