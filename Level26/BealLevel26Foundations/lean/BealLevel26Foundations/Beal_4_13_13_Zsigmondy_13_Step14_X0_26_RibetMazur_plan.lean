/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.22.0 — plan X₀(26) / RibetMazur
for even `A` that is not a power of two.

Inhabited:
`even_not_pow2_has_odd_prime` (`A = 2^r d`,
`d` odd `> 1` has an odd prime `q ≥ 3`);
`frey_conductor_even_A` (`rad A = 2 · rad(oddPart A)`,
displayed `N' = 2 · rad(oddPart A)`);
`minimal_level_26_of_13_dvd_A` (`13 ∣ A` even
→ `26 ∣ N'`);
`level_at_least_6_of_even_not_pow2`.

Uninhabited (honest):
`ribet_level_lowering_to_Nprime`,
`X0_26_no_matching_newform`,
`conductor_26_elliptic_curves_list`,
`beal_even_not_pow2_implies_level_26_newform`,
`beal_even_not_pow2_13dvdA_False`,
`beal_even_not_pow2_general_False`,
`beal_even_A_closed`,
`beal_4_13_13_X0_26_RibetMazur_plan`.
Plus v8.21.1 last lock:
`beal_mixed_pow2_implies_level_2_newform`,
`modular_W_lift`, `ribet_level_lowering_to_2`,
`X0_2_no_newforms` (`0 ≠ 0`),
`beal_from_ribet_upside_down`,
`beal_4_13_13_size`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor beal_mixed_pow2_implies_level_2_newform
    modular_W_lift ribet_level_lowering_to_2 X0_2_no_newforms
    beal_from_ribet_upside_down beal_4_13_13_size)

/-- Local copy of RibetMazur's `A = 2^e`.  This file
does **not** import `RibetMazur`. -/
def IsPowerOfTwo (A : Nat) : Prop :=
  ∃ e : Nat, A = 2 ^ e

/-- Radical as the product of distinct prime factors. -/
def rad1 (A : Nat) : Nat :=
  A.primeFactors.prod id

/-- Odd part: `ord_compl[2] A`.  Mathlib 4.12 has no
`Nat.oddPart` / `Nat.rad`. -/
def oddPart (A : Nat) : Nat :=
  ord_compl[2] A

/-- Displayed even-odd radical `N' = 2 · rad(oddPart A)`. -/
def frey_conductor_even_A_N (A : Nat) : Nat :=
  2 * rad1 (oddPart A)

/-! ## Inhabited even-not-pow2 radical facts -/

theorem even_not_pow2_has_odd_prime (A : Nat)
    (hEven : Even A) (hNotPow2 : ¬ IsPowerOfTwo A) :
    ∃ q, Nat.Prime q ∧ Odd q ∧ q ∣ A ∧ 3 ≤ q := by
  by_cases hA0 : A = 0
  · refine ⟨3, ?_, ?_, ?_, le_rfl⟩
    · exact Nat.prime_three
    · exact Nat.odd_iff.mpr rfl
    · simp [hA0]
  · by_cases huniq : ∀ {d : Nat}, Nat.Prime d → d ∣ A → d = 2
    · have hpow : A = 2 ^ A.primeFactorsList.length :=
        Nat.eq_prime_pow_of_unique_prime_dvd hA0 fun {_} hp hd => huniq hp hd
      exact absurd ⟨A.primeFactorsList.length, hpow⟩ hNotPow2
    · push_neg at huniq
      rcases huniq with ⟨q, hq, hqdvd, hqne⟩
      have hodd : Odd q := (hq.eq_two_or_odd').resolve_left hqne
      have hqge : 3 ≤ q :=
        Nat.succ_le_of_lt (lt_of_le_of_ne hq.two_le (Ne.symm hqne))
      exact ⟨q, hq, hodd, hqdvd, hqge⟩

theorem two_mem_primeFactors_of_even {A : Nat}
    (hA : 0 < A) (hEven : Even A) : 2 ∈ A.primeFactors :=
  Nat.mem_primeFactors.2
    ⟨Nat.prime_two, even_iff_two_dvd.mp hEven, Nat.pos_iff_ne_zero.mp hA⟩

theorem oddPart_pos {A : Nat} (hA : 0 < A) : 0 < oddPart A :=
  Nat.ord_compl_pos 2 (Nat.pos_iff_ne_zero.mp hA)

theorem not_two_dvd_oddPart {A : Nat} (hA : 0 < A) :
    ¬ 2 ∣ oddPart A :=
  Nat.not_dvd_ord_compl Nat.prime_two (Nat.pos_iff_ne_zero.mp hA)

theorem primeFactors_eq_two_union_oddPart {A : Nat}
    (hA : 0 < A) (hEven : Even A) :
    A.primeFactors = {2} ∪ (oddPart A).primeFactors := by
  have hAne : A ≠ 0 := Nat.pos_iff_ne_zero.mp hA
  have hprod : ord_proj[2] A * oddPart A = A :=
    Nat.ord_proj_mul_ord_compl_eq_self A 2
  have h2dvd : 2 ∣ A := even_iff_two_dvd.mp hEven
  have hv : A.factorization 2 ≠ 0 := by
    have hle : 1 ≤ A.factorization 2 :=
      (Nat.Prime.dvd_iff_one_le_factorization Nat.prime_two hAne).mp h2dvd
    exact Nat.pos_iff_ne_zero.mp hle
  have hproj : (ord_proj[2] A).primeFactors = {2} := by
    have hpow : ord_proj[2] A = 2 ^ A.factorization 2 := rfl
    rw [hpow]
    exact Nat.primeFactors_prime_pow hv Nat.prime_two
  have hmul :=
    Nat.primeFactors_mul (Nat.ord_proj_pos A 2).ne' (oddPart_pos hA).ne'
  have hunion :
      (ord_proj[2] A * oddPart A).primeFactors =
        (ord_proj[2] A).primeFactors ∪ (oddPart A).primeFactors := hmul
  rw [hprod, hproj] at hunion
  exact hunion

theorem two_not_mem_oddPart_primeFactors {A : Nat} (hA : 0 < A) :
    2 ∉ (oddPart A).primeFactors := by
  intro h
  exact not_two_dvd_oddPart hA (Nat.dvd_of_mem_primeFactors h)

/-- Honest even-`A` radical: `rad A = 2 · rad(oddPart A)`.
Displayed Frey slot is `frey_conductor_even_A_N A`.
This is **not** a post-Ribet theorem that the lowered
conductor equals that slot. -/
theorem frey_conductor_even_A (A B C : Nat)
    (_hEq : A ^ 4 + B ^ 13 = C ^ 13) (hEvenA : Even A)
    (hA : 0 < A) :
    rad1 A = 2 * rad1 (oddPart A) := by
  have hpf := primeFactors_eq_two_union_oddPart hA hEvenA
  have hdis :
      Disjoint ({2} : Finset Nat) (oddPart A).primeFactors :=
    Finset.disjoint_singleton_left.mpr (two_not_mem_oddPart_primeFactors hA)
  unfold rad1
  rw [hpf, Finset.prod_union hdis, Finset.prod_singleton, id]

theorem prime_thirteen : Nat.Prime 13 := by decide

theorem not_thirteen_dvd_ord_proj_two {A : Nat} :
    ¬ 13 ∣ ord_proj[2] A := by
  intro h2
  have hpow : ord_proj[2] A = 2 ^ A.factorization 2 := rfl
  have h13two : 13 ∣ 2 :=
    prime_thirteen.dvd_of_dvd_pow (hpow ▸ h2)
  have heq : 13 = 2 :=
    (Nat.prime_dvd_prime_iff_eq prime_thirteen Nat.prime_two).mp h13two
  exact (by decide : (13 : Nat) ≠ 2) heq

theorem thirteen_dvd_oddPart_of_dvd_A {A : Nat}
    (_hA : 0 < A) (h13 : 13 ∣ A) : 13 ∣ oddPart A := by
  have hprod : ord_proj[2] A * oddPart A = A :=
    Nat.ord_proj_mul_ord_compl_eq_self A 2
  have h13m : 13 ∣ ord_proj[2] A * oddPart A := by
    rw [hprod]; exact h13
  exact (prime_thirteen.dvd_mul.mp h13m).resolve_left
    not_thirteen_dvd_ord_proj_two

theorem thirteen_mem_oddPart_primeFactors {A : Nat}
    (hA : 0 < A) (h13 : 13 ∣ A) :
    13 ∈ (oddPart A).primeFactors :=
  Nat.mem_primeFactors.2
    ⟨prime_thirteen, thirteen_dvd_oddPart_of_dvd_A hA h13,
      (oddPart_pos hA).ne.symm⟩

theorem thirteen_dvd_rad_oddPart {A : Nat}
    (hA : 0 < A) (h13 : 13 ∣ A) :
    13 ∣ rad1 (oddPart A) :=
  Finset.dvd_prod_of_mem id (thirteen_mem_oddPart_primeFactors hA h13)

/-- If `13 ∣ A` and `A` is even, the displayed
`N' = 2 · rad(oddPart A)` is a multiple of `26`. -/
theorem minimal_level_26_of_13_dvd_A (A : Nat)
    (h13dvdA : 13 ∣ A) (_hEvenA : Even A) (hA : 0 < A) :
    26 ∣ (2 * rad1 (oddPart A)) := by
  have h13rad := thirteen_dvd_rad_oddPart hA h13dvdA
  have : 2 * 13 ∣ 2 * rad1 (oddPart A) :=
    Nat.mul_dvd_mul_left 2 h13rad
  exact this

theorem q_dvd_oddPart_of_odd_prime_dvd {A q : Nat}
    (_hA : 0 < A) (hq : Nat.Prime q) (hodd : Odd q) (hdvd : q ∣ A) :
    q ∣ oddPart A := by
  have hprod : ord_proj[2] A * oddPart A = A :=
    Nat.ord_proj_mul_ord_compl_eq_self A 2
  have hqm : q ∣ ord_proj[2] A * oddPart A := by
    rw [hprod]; exact hdvd
  refine (hq.dvd_mul.mp hqm).resolve_left ?_
  intro h2
  have hpow : ord_proj[2] A = 2 ^ A.factorization 2 := rfl
  have hq2 : q = 2 :=
    (Nat.prime_dvd_prime_iff_eq hq Nat.prime_two).mp
      (hq.dvd_of_dvd_pow (hpow ▸ h2))
  exact hodd.not_two_dvd_nat (hq2 ▸ dvd_rfl)

/-- Even not-pow2 gives an odd prime `q ∣ A` and
`2 q ≤ 2 · rad(oddPart A)` (so displayed `N' ≥ 6`). -/
theorem level_at_least_6_of_even_not_pow2 (A : Nat)
    (hEven : Even A) (hNotPow2 : ¬ IsPowerOfTwo A)
    (hA : 0 < A) :
    ∃ q, Nat.Prime q ∧ Odd q ∧ q ∣ A ∧
      2 * q ≤ 2 * rad1 (oddPart A) := by
  obtain ⟨q, hq, hodd, hqdvd, _hqge⟩ :=
    even_not_pow2_has_odd_prime A hEven hNotPow2
  have hqoddP : q ∣ oddPart A :=
    q_dvd_oddPart_of_odd_prime_dvd hA hq hodd hqdvd
  have hqmem : q ∈ (oddPart A).primeFactors :=
    Nat.mem_primeFactors.2 ⟨hq, hqoddP, (oddPart_pos hA).ne.symm⟩
  have hqrad : q ∣ rad1 (oddPart A) :=
    Finset.dvd_prod_of_mem id hqmem
  have hradpos : 0 < rad1 (oddPart A) := by
    unfold rad1
    exact Finset.prod_pos fun p hp =>
      (Nat.prime_of_mem_primeFactors hp).pos
  have hqle : q ≤ rad1 (oddPart A) :=
    Nat.le_of_dvd hradpos hqrad
  exact ⟨q, hq, hodd, hqdvd, Nat.mul_le_mul_left 2 hqle⟩

/-! ## Honesty lock and uninhabited Ribet / X₀(26) arrows -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ribet removing primes of `B,C`
whose exponent is a multiple of 13. -/
def ribet_level_lowering_to_Nprime : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A →
    False

/-- Uninhabited.  No matching newform of level 26
for the even-not-pow2 Frey residual.  There **are**
newforms at level 26 (`26a1`, `26b1`); the lock is
matching, not vanishing. -/
def X0_26_no_matching_newform : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A → 13 ∣ A →
    False

/-- Uninhabited.  LMFDB/Cremona `26a1`/`26b1` do not
match the Frey residual of signature `(4,13,13)`. -/
def conductor_26_elliptic_curves_list : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → 13 ∣ A →
    False

/-- Uninhabited.  Modular W plus Ribet to `N' = 26`
when `13 ∣ A`. -/
def beal_even_not_pow2_implies_level_26_newform : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A → 13 ∣ A →
    False

/-- Uninhabited.  Needs the missing matching lock
at level 26. -/
def beal_even_not_pow2_13dvdA_False : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A → 13 ∣ A →
    False

/-- Uninhabited.  General `N' = 2 q` needs
X₀(2q) / Kraus / Darmon–Merel. -/
def beal_even_not_pow2_general_False : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A →
    False

/-- Uninhabited.  Combines the uninhabited pow2
level-2 lock with the uninhabited not-pow2 lock. -/
def beal_even_A_closed : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A →
    False

/-- Uninhabited public API.  Needs v8.21.1 Modular W
and this file's level-26 matching. -/
def beal_4_13_13_X0_26_RibetMazur_plan : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

#check even_not_pow2_has_odd_prime
#check frey_conductor_even_A
#check minimal_level_26_of_13_dvd_A
#check level_at_least_6_of_even_not_pow2
#check frey_curve_conductor
#check ribet_level_lowering_to_Nprime
#check X0_26_no_matching_newform
#check conductor_26_elliptic_curves_list
#check beal_even_not_pow2_implies_level_26_newform
#check beal_even_not_pow2_13dvdA_False
#check beal_even_not_pow2_general_False
#check beal_even_A_closed
#check beal_4_13_13_X0_26_RibetMazur_plan
#check beal_mixed_pow2_implies_level_2_newform
#check modular_W_lift
#check ribet_level_lowering_to_2
#check X0_2_no_newforms
#check beal_from_ribet_upside_down
#check beal_4_13_13_size
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms even_not_pow2_has_odd_prime
#print axioms frey_conductor_even_A
#print axioms minimal_level_26_of_13_dvd_A
#print axioms level_at_least_6_of_even_not_pow2
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
