/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.22.1 — plan X₀(2q) / Darmon–Merel / Kraus
for even not-pow2 `A` with an odd prime `q ≠ 13`.

Inhabited (Mathlib 4.12 local compat):
`oddPart_rec` (strip factors of `2`),
`rad` (product of distinct prime factors;
**not** the identity placeholder),
`oddPart_def` (`oddPart_rec n = n / 2^{v₂(n)}`),
`rad_dvd_pow`,
`even_not_pow2_has_odd_prime_q`,
`level_2q_of_odd_prime_dvd_A`.

Keeps v8.22.0
`even_not_pow2_has_odd_prime`,
`frey_conductor_even_A`,
`minimal_level_26_of_13_dvd_A`,
`level_at_least_6_of_even_not_pow2`.

Uninhabited (honest):
`kraus_criterion_q_ne_13`,
`X0_2q_no_Frey_match`,
`beal_even_not_pow2_general_q_False`,
`beal_even_not_pow2_closed_v8_22_1`,
`beal_even_A_closed_v8_22_1`,
`beal_4_13_13_odd_only_remaining`,
`beal_4_13_13_X0_2q_Darmon_Merel_plan`.
Plus v8.22.0 matching lock and
v8.21.1 Modular W last lock
(`X0_2_no_newforms` is `0 ≠ 0`).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit `∀ f, True → False`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (IsPowerOfTwo even_not_pow2_has_odd_prime
    frey_conductor_even_A minimal_level_26_of_13_dvd_A
    level_at_least_6_of_even_not_pow2
    q_dvd_oddPart_of_odd_prime_dvd
    ribet_level_lowering_to_Nprime
    X0_26_no_matching_newform
    conductor_26_elliptic_curves_list
    beal_even_not_pow2_implies_level_26_newform
    beal_even_not_pow2_13dvdA_False
    beal_even_not_pow2_general_False
    beal_even_A_closed
    beal_4_13_13_X0_26_RibetMazur_plan)

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift
    ribet_level_lowering_to_2 X0_2_no_newforms
    beal_from_ribet_upside_down beal_4_13_13_size)

/-! ## Mathlib 4.12 local `oddPart` / `rad` -/

/-- Recursive 2-adic stripping.  Mathlib 4.12 has no
`Nat.oddPart`. -/
def oddPart_rec : Nat → Nat
  | 0 => 0
  | n + 1 =>
    if (n + 1) % 2 = 0 then oddPart_rec ((n + 1) / 2) else n + 1
termination_by n => n
decreasing_by
  simp_wf
  exact Nat.div_lt_self (Nat.succ_pos _) (by decide : 1 < 2)

/-- Radical as the product of distinct prime factors.
Mathlib 4.12 has no `Nat.rad`.  This is **not**
the identity placeholder `rad n := n`. -/
def rad (n : Nat) : Nat :=
  n.primeFactors.prod id

theorem factorization_two_of_even {m : Nat} (hm : m ≠ 0)
    (h2 : 2 ∣ m) :
    m.factorization 2 = (m / 2).factorization 2 + 1 := by
  have hhalf : m / 2 ≠ 0 := by
    intro hz
    have hmul0 : 2 * (m / 2) = 0 := by rw [hz]
    exact hm ((Nat.mul_div_cancel' h2).symm.trans hmul0)
  have hadd :=
    Nat.factorization_mul (by decide : (2 : Nat) ≠ 0) hhalf
  have h2fac : (2 : Nat).factorization 2 = 1 := by
    rw [Nat.prime_two.factorization, Finsupp.single_eq_same]
  have hsum : (2 * (m / 2)).factorization 2 =
      (m / 2).factorization 2 + 1 := by
    rw [hadd, Finsupp.add_apply, h2fac, add_comm]
  have heq : 2 * (m / 2) = m := Nat.mul_div_cancel' h2
  have hleft : m.factorization 2 = (2 * (m / 2)).factorization 2 :=
    congrArg (fun t => t.factorization 2) heq.symm
  exact hleft.trans hsum

theorem oddPart_rec_zero : oddPart_rec 0 = 0 := by
  simp [oddPart_rec]

theorem oddPart_rec_even {m : Nat} (h2 : 2 ∣ m) (hm : m ≠ 0) :
    oddPart_rec m = oddPart_rec (m / 2) := by
  cases m with
  | zero => exact absurd rfl hm
  | succ n =>
    have hmod : (n + 1) % 2 = 0 := Nat.mod_eq_zero_of_dvd h2
    simp [oddPart_rec, hmod]

theorem oddPart_rec_odd {m : Nat} (h2 : ¬ 2 ∣ m) :
    oddPart_rec m = m := by
  cases m with
  | zero => exact absurd (dvd_zero 2) h2
  | succ n =>
    have hmod : (n + 1) % 2 ≠ 0 := mt Nat.dvd_of_mod_eq_zero h2
    simp [oddPart_rec, hmod]

theorem factorization_two_eq_zero_of_odd {m : Nat} (hm : m ≠ 0)
    (hodd : ¬ 2 ∣ m) : m.factorization 2 = 0 := by
  by_contra hne
  have hpos : 1 ≤ m.factorization 2 :=
    Nat.succ_le_of_lt (Nat.pos_of_ne_zero hne)
  exact hodd
    ((Nat.Prime.dvd_iff_one_le_factorization Nat.prime_two hm).mpr hpos)

/-- `oddPart_rec n = n / 2^{v₂(n)}`. -/
theorem oddPart_def (n : Nat) :
    oddPart_rec n = n / (2 ^ n.factorization 2) := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
    by_cases hn0 : n = 0
    · simp [hn0, oddPart_rec]
    · by_cases h2 : 2 ∣ n
      · have hlt : n / 2 < n :=
          Nat.div_lt_self (Nat.pos_of_ne_zero hn0) (by decide : 1 < 2)
        have ih' := ih (n / 2) hlt
        have hv := factorization_two_of_even hn0 h2
        have hden :
            2 ^ n.factorization 2 =
              2 * 2 ^ (n / 2).factorization 2 := by
          rw [hv, pow_succ, mul_comm]
        have hdiv :
            (n / 2) / (2 ^ (n / 2).factorization 2) =
              n / (2 ^ n.factorization 2) := by
          have hmul :=
            Nat.mul_div_mul_left (n / 2)
              (2 ^ (n / 2).factorization 2) (by decide : 0 < 2)
          have hcong :
              2 * (n / 2) / (2 * 2 ^ (n / 2).factorization 2) =
                n / (2 ^ n.factorization 2) := by
            congr 1
            · exact Nat.mul_div_cancel' h2
            · exact hden.symm
          exact hmul.symm.trans hcong
        rw [oddPart_rec_even h2 hn0, ih', hdiv]
      · rw [oddPart_rec_odd h2,
          factorization_two_eq_zero_of_odd hn0 h2,
          pow_zero, Nat.div_one]

theorem oddPart_rec_eq_ord_compl (n : Nat) :
    oddPart_rec n = ord_compl[2] n :=
  oddPart_def n

theorem rad_dvd (n : Nat) : rad n ∣ n := by
  by_cases hn : n = 0
  · subst hn
    exact Nat.dvd_zero _
  · have hprod := Nat.factorization_prod_pow_eq_self hn
    unfold rad
    have : n.primeFactors.prod id ∣
        n.factorization.prod (fun p e => p ^ e) := by
      rw [Finsupp.prod]
      refine Finset.prod_dvd_prod_of_dvd _ _ ?_
      intro p hp
      have he : n.factorization p ≠ 0 :=
        Finsupp.mem_support_iff.mp hp
      exact dvd_pow_self p he
    rwa [hprod] at this

theorem rad_dvd_pow (n : Nat) : rad n ∣ n ^ 2 :=
  dvd_trans (rad_dvd n) (dvd_pow_self n (by decide : 2 ≠ 0))

/-! ## Inhabited even-not-pow2 `2q` radical facts -/

theorem even_not_pow2_has_odd_prime_q (A : Nat)
    (hEven : Even A) (hNotPow2 : ¬ IsPowerOfTwo A) :
    ∃ q, Nat.Prime q ∧ 3 ≤ q ∧ q ∣ oddPart_rec A := by
  obtain ⟨q, hq, hodd, hqdvd, hqge⟩ :=
    even_not_pow2_has_odd_prime A hEven hNotPow2
  refine ⟨q, hq, hqge, ?_⟩
  by_cases hA0 : A = 0
  · simp [hA0, oddPart_rec]
  · have hA : 0 < A := Nat.pos_of_ne_zero hA0
    have hqodd := q_dvd_oddPart_of_odd_prime_dvd hA hq hodd hqdvd
    rwa [oddPart_rec_eq_ord_compl]

/-- Displayed `N' = 2 q` divides `2 · rad(oddPart_rec A)`
when `q` is an odd-part prime.  Needs `0 < A`
(`A = 0` makes `rad(oddPart_rec 0) = 1`). -/
theorem level_2q_of_odd_prime_dvd_A (A q : Nat)
    (hPrime : Nat.Prime q) (hqdvd : q ∣ oddPart_rec A)
    (_hEven : Even A) (hA : 0 < A) :
    ∃ Nprime, Nprime = 2 * q ∧
      Nprime ∣ 2 * rad (oddPart_rec A) := by
  have hoddpos : 0 < oddPart_rec A := by
    rw [oddPart_rec_eq_ord_compl]
    exact Nat.ord_compl_pos 2 (Nat.pos_iff_ne_zero.mp hA)
  have hqmem : q ∈ (oddPart_rec A).primeFactors :=
    Nat.mem_primeFactors.2 ⟨hPrime, hqdvd, hoddpos.ne.symm⟩
  have hqrad : q ∣ rad (oddPart_rec A) :=
    Finset.dvd_prod_of_mem id hqmem
  refine ⟨2 * q, rfl, Nat.mul_dvd_mul_left 2 hqrad⟩

/-! ## Honesty lock and uninhabited Darmon–Merel / Kraus arrows -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Kraus residual-match at level `2q`
for signature `(4,13,13)` when `q ≠ 13`.
Not `∀ f, True → False`. -/
def kraus_criterion_q_ne_13 : Prop :=
  ∀ q : Nat, Nat.Prime q → q ≠ 13 →
    ∀ A B C : Nat,
      A ^ 4 + B ^ 13 = C ^ 13 →
      Even A → q ∣ oddPart_rec A →
      False

/-- Uninhabited.  No matching Frey newform on
`X₀(2q)` for `q ≠ 13`.  Not the vacuous `True`. -/
def X0_2q_no_Frey_match : Prop :=
  ∀ q : Nat, Nat.Prime q → q ≠ 13 →
    ∀ A B C : Nat,
      A ^ 4 + B ^ 13 = C ^ 13 →
      Even A → q ∣ oddPart_rec A →
      False

/-- Uninhabited.  Needs Kraus / Darmon–Merel at `2q`. -/
def beal_even_not_pow2_general_q_False : Prop :=
  ∀ A B C q : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A →
    Nat.Prime q → q ≠ 13 → q ∣ oddPart_rec A →
    False

/-- Uninhabited.  Combines the uninhabited `13 ∣ A`
level-26 lock with the uninhabited `q ≠ 13` lock. -/
def beal_even_not_pow2_closed_v8_22_1 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → ¬ IsPowerOfTwo A →
    False

/-- Uninhabited.  Combines the uninhabited pow2
level-2 lock with the uninhabited not-pow2 lock. -/
def beal_even_A_closed_v8_22_1 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A →
    False

/-- Uninhabited.  Even-`A` close is still a Prop,
so this does **not** force `Odd A`. -/
def beal_4_13_13_odd_only_remaining : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → Odd A

/-- Uninhabited public API.  Needs v8.21.1 Modular W,
v8.22.0 level-26 matching, and this file's `2q` Kraus. -/
def beal_4_13_13_X0_2q_Darmon_Merel_plan : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

#check oddPart_rec
#check rad
#check oddPart_def
#check rad_dvd_pow
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check even_not_pow2_has_odd_prime
#check frey_conductor_even_A
#check minimal_level_26_of_13_dvd_A
#check level_at_least_6_of_even_not_pow2
#check frey_curve_conductor
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check beal_even_not_pow2_general_q_False
#check beal_even_not_pow2_closed_v8_22_1
#check beal_even_A_closed_v8_22_1
#check beal_4_13_13_odd_only_remaining
#check beal_4_13_13_X0_2q_Darmon_Merel_plan
#check X0_26_no_matching_newform
#check conductor_26_elliptic_curves_list
#check modular_W_lift
#check ribet_level_lowering_to_2
#check X0_2_no_newforms
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms oddPart_def
#print axioms rad_dvd_pow
#print axioms even_not_pow2_has_odd_prime_q
#print axioms level_2q_of_odd_prime_dvd_A
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
