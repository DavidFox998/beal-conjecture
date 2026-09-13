/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_101_200

open BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048

theorem q2_witness_101 :
    Nat.Prime 224423 ∧ 224423 % (101 * 101) = 1 ∧
      224423 ≤ 100000000 ∧ 5 ≤ 224423 :=
  ⟨prime_of_pratt (a := 5) [2, 11, 101, 101]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_103 :
    Nat.Prime 42437 ∧ 42437 % (103 * 103) = 1 ∧
      42437 ≤ 100000000 ∧ 5 ≤ 42437 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 103, 103]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_107 :
    Nat.Prime 206083 ∧ 206083 % (107 * 107) = 1 ∧
      206083 ≤ 100000000 ∧ 5 ≤ 206083 :=
  ⟨prime_of_pratt (a := 2) [2, 3, 3, 107, 107]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_109 :
    Nat.Prime 71287 ∧ 71287 % (109 * 109) = 1 ∧
      71287 ≤ 100000000 ∧ 5 ≤ 71287 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 109, 109]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_113 :
    Nat.Prime 127691 ∧ 127691 % (113 * 113) = 1 ∧
      127691 ≤ 100000000 ∧ 5 ≤ 127691 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 113, 113]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_127 :
    Nat.Prime 193549 ∧ 193549 % (127 * 127) = 1 ∧
      193549 ≤ 100000000 ∧ 5 ≤ 193549 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 127, 127]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_131 :
    Nat.Prime 102967 ∧ 102967 % (131 * 131) = 1 ∧
      102967 ≤ 100000000 ∧ 5 ≤ 102967 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 131, 131]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_137 :
    Nat.Prime 525533 ∧ 525533 % (137 * 137) = 1 ∧
      525533 ≤ 100000000 ∧ 5 ≤ 525533 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 7, 137, 137]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_139 :
    Nat.Prime 309137 ∧ 309137 % (139 * 139) = 1 ∧
      309137 ≤ 100000000 ∧ 5 ≤ 309137 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 139, 139]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_149 :
    Nat.Prime 222011 ∧ 222011 % (149 * 149) = 1 ∧
      222011 ≤ 100000000 ∧ 5 ≤ 222011 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 149, 149]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_151 :
    Nat.Prime 273613 ∧ 273613 % (151 * 151) = 1 ∧
      273613 ≤ 100000000 ∧ 5 ≤ 273613 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 3, 151, 151]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_157 :
    Nat.Prime 98597 ∧ 98597 % (157 * 157) = 1 ∧
      98597 ≤ 100000000 ∧ 5 ≤ 98597 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 157, 157]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_163 :
    Nat.Prime 106277 ∧ 106277 % (163 * 163) = 1 ∧
      106277 ≤ 100000000 ∧ 5 ≤ 106277 :=
  ⟨prime_of_pratt (a := 2) [2, 2, 163, 163]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_167 :
    Nat.Prime 278891 ∧ 278891 % (167 * 167) = 1 ∧
      278891 ≤ 100000000 ∧ 5 ≤ 278891 :=
  ⟨prime_of_pratt (a := 2) [2, 5, 167, 167]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_173 :
    Nat.Prime 538723 ∧ 538723 % (173 * 173) = 1 ∧
      538723 ≤ 100000000 ∧ 5 ≤ 538723 :=
  ⟨prime_of_pratt (a := 5) [2, 3, 3, 173, 173]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_179 :
    Nat.Prime 512657 ∧ 512657 % (179 * 179) = 1 ∧
      512657 ≤ 100000000 ∧ 5 ≤ 512657 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 2, 2, 179, 179]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_181 :
    Nat.Prime 720743 ∧ 720743 % (181 * 181) = 1 ∧
      720743 ≤ 100000000 ∧ 5 ≤ 720743 :=
  ⟨prime_of_pratt (a := 7) [2, 11, 181, 181]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_191 :
    Nat.Prime 218887 ∧ 218887 % (191 * 191) = 1 ∧
      218887 ≤ 100000000 ∧ 5 ≤ 218887 :=
  ⟨prime_of_pratt (a := 3) [2, 3, 191, 191]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_193 :
    Nat.Prime 148997 ∧ 148997 % (193 * 193) = 1 ∧
      148997 ≤ 100000000 ∧ 5 ≤ 148997 :=
  ⟨prime_of_pratt (a := 3) [2, 2, 193, 193]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_197 :
    Nat.Prime 853799 ∧ 853799 % (197 * 197) = 1 ∧
      853799 ≤ 100000000 ∧ 5 ≤ 853799 :=
  ⟨prime_of_pratt (a := 11) [2, 11, 197, 197]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem q2_witness_199 :
    Nat.Prime 237607 ∧ 237607 % (199 * 199) = 1 ∧
      237607 ≤ 100000000 ∧ 5 ≤ 237607 :=
  ⟨prime_of_pratt (a := 6) [2, 3, 199, 199]
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide⟩

theorem exists_prime_one_mod_ell_sq_101_200 {ℓ : Nat}
    (h : ℓ ∈ primes101to200) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧ Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  fin_cases h
  · exact ⟨224423, q2_witness_101⟩
  · exact ⟨42437, q2_witness_103⟩
  · exact ⟨206083, q2_witness_107⟩
  · exact ⟨71287, q2_witness_109⟩
  · exact ⟨127691, q2_witness_113⟩
  · exact ⟨193549, q2_witness_127⟩
  · exact ⟨102967, q2_witness_131⟩
  · exact ⟨525533, q2_witness_137⟩
  · exact ⟨309137, q2_witness_139⟩
  · exact ⟨222011, q2_witness_149⟩
  · exact ⟨273613, q2_witness_151⟩
  · exact ⟨98597, q2_witness_157⟩
  · exact ⟨106277, q2_witness_163⟩
  · exact ⟨278891, q2_witness_167⟩
  · exact ⟨538723, q2_witness_173⟩
  · exact ⟨512657, q2_witness_179⟩
  · exact ⟨720743, q2_witness_181⟩
  · exact ⟨218887, q2_witness_191⟩
  · exact ⟨148997, q2_witness_193⟩
  · exact ⟨853799, q2_witness_197⟩
  · exact ⟨237607, q2_witness_199⟩

end BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_101_200
