/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — Finite `Q₁ ≡ 1 [MOD ℓ]` and `Q₂ ≡ 1 [MOD ℓ²]`
tables for every residual in `InTWEll1000`.  Not Dirichlet and
not `∀ N ≤ 10000`.  `primes_le_1000` is the union of the ten
Finsets; completeness `Nat.Prime → 5 ≤ ℓ ≤ 1000` is
kernel-checked only on `[5, 100]` via `Finset.filter`
(`interval_cases` hits max recursion).  Search window for
`Q₁ > N` is `N + 21000` (`ℓ = 941` needs `30113`).

Does **not** inhabit `ExistsNewformLevel2` (`0 ≠ 0`).
Does **not** drop `ModularImpliesLevel2Newform`.
-/

import BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100
import BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200
import BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300
import BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400
import BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500
import BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600
import BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700
import BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800
import BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900
import BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_5_100
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_101_200
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_201_300
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_301_400
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_401_500
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_501_600
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_601_700
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_701_800
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_801_900
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_901_1000
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimes

open BealLevel26Foundations.Beal.FullProof.TWPrimes_5_100
open BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200
open BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300
open BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400
open BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500
open BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600
open BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700
open BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800
open BealLevel26Foundations.Beal.FullProof.TWPrimes_801_900
open BealLevel26Foundations.Beal.FullProof.TWPrimes_901_1000
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_5_100
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_101_200
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_201_300
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_301_400
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_401_500
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_501_600
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_601_700
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_701_800
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_801_900
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_901_1000

/-- Membership in the 166-row table of primes in `[5, 1000]`.
The converse (`Nat.Prime ℓ → 5 ≤ ℓ → ℓ ≤ 1000 → InTWEll1000 ℓ`)
is kernel-checked only on `[5, 100]`.  `interval_cases` on
the remaining hundreds hits max recursion / heartbeats. -/
def InTWEll1000 (ℓ : Nat) : Prop :=
  ℓ ∈ primes5to100 ∨ ℓ ∈ primes101to200 ∨ ℓ ∈ primes201to300 ∨
    ℓ ∈ primes301to400 ∨ ℓ ∈ primes401to500 ∨ ℓ ∈ primes501to600 ∨
    ℓ ∈ primes601to700 ∨ ℓ ∈ primes701to800 ∨ ℓ ∈ primes801to900 ∨
    ℓ ∈ primes901to1000

/-- Right-associated union so `mem` matches `InTWEll1000`.
`fin_cases ℓ ∈ primes_le_1000` is the enumeration; it does
not prove every `Nat.Prime` in `[5, 1000]` is a member. -/
def primes_le_1000 : Finset Nat :=
  primes5to100 ∪ (primes101to200 ∪ (primes201to300 ∪
    (primes301to400 ∪ (primes401to500 ∪ (primes501to600 ∪
      (primes601to700 ∪ (primes701to800 ∪
        (primes801to900 ∪ primes901to1000))))))))

theorem InTWEll1000_iff_mem {ℓ : Nat} :
    InTWEll1000 ℓ ↔ ℓ ∈ primes_le_1000 := by
  simp only [InTWEll1000, primes_le_1000, Finset.mem_union]

theorem InTWEll1000_of_prime_5_100 {ℓ : Nat}
    (hp : Nat.Prime ℓ) (hlo : 5 ≤ ℓ) (hhi : ℓ ≤ 100) :
    InTWEll1000 ℓ :=
  Or.inl (mem_primes5to100_of_prime hp hlo hhi)

/-- Uninhabited.  `interval_cases` on `[101, 1000]` hits
max recursion.  `[5, 100]` is `InTWEll1000_of_prime_5_100`. -/
def InTWEll1000_complete : Prop :=
  ∀ ℓ : Nat, ℓ.Prime → 5 ≤ ℓ → ℓ ≤ 1000 → InTWEll1000 ℓ

/-- Smallest prime `Q₁ ≤ 20000` with `Q₁ ≡ 1 [MOD ℓ]`
for every residual in the 166-row table.  Not Dirichlet
and not a proof that every `Nat.Prime` in `[5, 1000]`
is in the table. -/
theorem exists_prime_one_mod_ell_all {ℓ : Nat}
    (h : InTWEll1000 ℓ) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
  · exact exists_prime_one_mod_ell_5_100 h
  · exact exists_prime_one_mod_ell_101_200 h
  · exact exists_prime_one_mod_ell_201_300 h
  · exact exists_prime_one_mod_ell_301_400 h
  · exact exists_prime_one_mod_ell_401_500 h
  · exact exists_prime_one_mod_ell_501_600 h
  · exact exists_prime_one_mod_ell_601_700 h
  · exact exists_prime_one_mod_ell_701_800 h
  · exact exists_prime_one_mod_ell_801_900 h
  · exact exists_prime_one_mod_ell_901_1000 h

/-- Smallest prime `Q₂ ≤ 10⁸` with `Q₂ ≡ 1 [MOD ℓ²]`
for every residual in the 166-row table.  The 56
residuals that missed `5·10⁶` are included; the
largest witness is `59119271` at `ℓ = 919`. -/
theorem exists_prime_one_mod_ell_sq_all {ℓ : Nat}
    (h : InTWEll1000 ℓ) :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (ℓ * ℓ) = 1 ∧
      Q2 ≤ 100000000 ∧ 5 ≤ Q2 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
  · exact exists_prime_one_mod_ell_sq_5_100 h
  · exact exists_prime_one_mod_ell_sq_101_200 h
  · exact exists_prime_one_mod_ell_sq_201_300 h
  · exact exists_prime_one_mod_ell_sq_301_400 h
  · exact exists_prime_one_mod_ell_sq_401_500 h
  · exact exists_prime_one_mod_ell_sq_501_600 h
  · exact exists_prime_one_mod_ell_sq_601_700 h
  · exact exists_prime_one_mod_ell_sq_701_800 h
  · exact exists_prime_one_mod_ell_sq_801_900 h
  · exact exists_prime_one_mod_ell_sq_901_1000 h

theorem Q1_not_dvd_N_of_Q1_gt_N {Q1 N : Nat}
    (hN : 0 < N) (hgt : N < Q1) : ¬ Q1 ∣ N := by
  intro h
  exact Nat.not_le.mpr hgt (Nat.le_of_dvd hN h)

/-- Computable search for a prime `p` with `N < p ≤ bound`
and `p ≡ 1 [MOD ℓ]`.  May return `none`. -/
def find_next_prime_one_mod_gt (ℓ N bound : Nat) : Option Nat :=
  (List.range (bound + 1)).find? fun p =>
    N < p ∧ Nat.Prime p ∧ p % ℓ = 1

theorem find_next_prime_one_mod_gt_spec {ℓ N bound p : Nat}
    (h : find_next_prime_one_mod_gt ℓ N bound = some p) :
    N < p ∧ p.Prime ∧ p % ℓ = 1 ∧ p ≤ bound := by
  have hmem := List.mem_of_find?_eq_some h
  have hpred : N < p ∧ Nat.Prime p ∧ p % ℓ = 1 := by
    have := List.find?_some h
    exact of_decide_eq_true this
  have hle : p ≤ bound := Nat.lt_succ_iff.mp (List.mem_range.mp hmem)
  exact ⟨hpred.1, hpred.2.1, hpred.2.2, hle⟩

/-- Honest search window.  `ℓ = 941` at `N = 10000`
needs `Q₁ = 30113 = N + 20113`. -/
def next_Q1_search_bound : Nat := 21000

/-- Search `p` in `(N, N + 21000]` with `p ≡ 1 [MOD ℓ]`
and `Nat.Prime p`.  Fallback `N + ℓ + 1` is not a witness. -/
def next_Q1_gt_N (ℓ N : Nat) : Nat :=
  (find_next_prime_one_mod_gt ℓ N (N + next_Q1_search_bound)).getD
    (N + ℓ + 1)

/-- Uninhabited.  A prime `≡ 1 [MOD ℓ]` in `(N, N+21000]`
for every `N ≤ 10000` is not a 166-row table.  The
inhabited slices are `N = 26` and `N = 10000` on
`InTWEll1000`.  `N + 20000` is false at `ℓ = 941`. -/
def find_next_prime_one_mod_gt_exists : Prop :=
  ∀ ℓ N : Nat, ℓ.Prime → 5 ≤ ℓ → ℓ ≤ 1000 → N ≤ 10000 →
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ N < Q1 ∧ Q1 ≤ N + 21000

/-- Uninhabited alias of the `∀ N ≤ 10000` search. -/
def next_Q1_gt_N_exists : Prop :=
  find_next_prime_one_mod_gt_exists

end BealLevel26Foundations.Beal.FullProof.TWPrimes
