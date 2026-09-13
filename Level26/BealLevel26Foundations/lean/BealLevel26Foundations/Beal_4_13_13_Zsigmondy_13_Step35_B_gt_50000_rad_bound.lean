/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.40.0 — B > 50000 rad-bound
infrastructure (not a ∀ close).

Inhabited:
`S_le_13_C_pow12`,
`sqrt_S_le_sqrt_13_C_pow12`,
`sqrt_13_C12_le_4_C6` (Nat envelope of
√13 C⁶, since 13 ≤ 16),
`sqrt_S_le_4_C6`,
`S_val_eq_phi13`,
`rad_sq_dvd_of_squarefull`,
`rad_le_sqrt_of_squarefull`,
`not_squarefull_of_rad_gt_sqrt`,
`primitive_prime_ge_53_wrap`,
`P_phi13`,
`rad_gt_C_of_P_phi13_gt_C`.

Bugeaud `P(Φ₁₃) > C` for gap-3
`B > 50000` stays a Prop.  The missing
piece `rad > √13 C⁶` (enough to beat
`rad ≤ √S ≤ √(13 C¹²)`) also stays a
Prop, so squarefull rarity and
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stay Props.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
  (phi13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (S_13 S_13_eq_phi13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds S_val_eq_S_13_of_B_lt_C)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (rad)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (IsSquarefull HasPrimeWithExpOne)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
  (primitive_prime_ge_53)

/-! ## S ≤ 13 C¹² and the Nat square-root envelope -/

theorem S_le_13_C_pow12 (B C : Nat) (hBltC : B < C) :
    S_val B C ≤ 13 * C ^ 12 :=
  (S_bounds B C hBltC).2

theorem S_val_eq_phi13 (B C : Nat) (hBltC : B < C) :
    S_val B C = phi13 C B := by
  rw [S_val_eq_S_13_of_B_lt_C B C hBltC, S_13_eq_phi13]

theorem C_pow12_eq_C6_sq (C : Nat) : C ^ 12 = (C ^ 6) ^ 2 := by
  rw [← pow_mul]

theorem thirteen_C12_le_sixteen_C12 (C : Nat) :
    13 * C ^ 12 ≤ 16 * C ^ 12 :=
  Nat.mul_le_mul_right (C ^ 12) (by decide : (13 : Nat) ≤ 16)

theorem sixteen_C12_eq_4C6_sq (C : Nat) :
    16 * C ^ 12 = (4 * C ^ 6) ^ 2 := by
  have h16 : (16 : Nat) = 4 ^ 2 := by decide
  rw [h16, C_pow12_eq_C6_sq, mul_pow]

/-- Real bound is `√S ≤ √13 C⁶`.  In `ℕ`,
`Nat.sqrt (13 C¹²) ≤ 4 C⁶` because `13 ≤ 16`. -/
theorem sqrt_13_C12_le_4_C6 (C : Nat) :
    Nat.sqrt (13 * C ^ 12) ≤ 4 * C ^ 6 := by
  have h := Nat.sqrt_le_sqrt (thirteen_C12_le_sixteen_C12 C)
  have heq : Nat.sqrt (16 * C ^ 12) = 4 * C ^ 6 := by
    rw [sixteen_C12_eq_4C6_sq, Nat.sqrt_eq']
  exact h.trans_eq heq

theorem sqrt_S_le_sqrt_13_C_pow12 (B C : Nat) (hBltC : B < C) :
    Nat.sqrt (S_val B C) ≤ Nat.sqrt (13 * C ^ 12) :=
  Nat.sqrt_le_sqrt (S_le_13_C_pow12 B C hBltC)

theorem sqrt_S_le_4_C6 (B C : Nat) (hBltC : B < C) :
    Nat.sqrt (S_val B C) ≤ 4 * C ^ 6 :=
  (sqrt_S_le_sqrt_13_C_pow12 B C hBltC).trans (sqrt_13_C12_le_4_C6 C)

/-! ## Squarefull ⇒ rad² ∣ n ⇒ rad ≤ √n -/

theorem rad_sq_dvd_of_squarefull {n : Nat} (hn : n ≠ 0)
    (hsq : IsSquarefull n) : rad n ^ 2 ∣ n := by
  unfold rad
  have hpow : (n.primeFactors.prod id) ^ 2 =
      n.primeFactors.prod (fun p => p ^ 2) := by
    rw [← Finset.prod_pow n.primeFactors 2 id]
    simp [id]
  rw [hpow]
  have hdiv :
      n.primeFactors.prod (fun p => p ^ 2) ∣
        n.factorization.prod (fun p e => p ^ e) := by
    unfold Finsupp.prod
    rw [Nat.support_factorization]
    refine Finset.prod_dvd_prod_of_dvd
      (fun p : Nat => p ^ 2)
      (fun p : Nat => p ^ n.factorization p) ?_
    intro p hp
    have hP : Nat.Prime p := Nat.prime_of_mem_primeFactors hp
    have hdvd : p ∣ n := Nat.dvd_of_mem_primeFactors hp
    have h2 : p ^ 2 ∣ n := hsq p hP hdvd
    have hv : 2 ≤ n.factorization p :=
      (hP.pow_dvd_iff_le_factorization hn).mp h2
    exact pow_dvd_pow p hv
  rwa [Nat.factorization_prod_pow_eq_self hn] at hdiv

theorem rad_le_sqrt_of_squarefull {n : Nat} (hn : 0 < n)
    (hsq : IsSquarefull n) : rad n ≤ Nat.sqrt n := by
  have hdiv := rad_sq_dvd_of_squarefull (Nat.pos_iff_ne_zero.mp hn) hsq
  have hle : rad n ^ 2 ≤ n := Nat.le_of_dvd hn hdiv
  exact (Nat.le_sqrt').mpr hle

/-- If `√n < rad n` then `n` is not squarefull. -/
theorem not_squarefull_of_rad_gt_sqrt {n : Nat} (hn : 0 < n)
    (h : Nat.sqrt n < rad n) : ¬ IsSquarefull n := by
  intro hsq
  exact Nat.not_le.mpr h (rad_le_sqrt_of_squarefull hn hsq)

/-! ## Primitive prime ≥ 53 (wrap) -/

theorem primitive_prime_ge_53_wrap (C B p : Nat) (hp : Nat.Prime p)
    (hMod1 : p % 13 = 1) (hNe13 : p ≠ 13) : 53 ≤ p :=
  primitive_prime_ge_53 C B p hp hMod1 hNe13

/-! ## P(Φ₁₃) > C ⇒ rad(S) > C -/

/-- Greatest prime factor of `S = Φ₁₃(C,B)`.
Empty support (n = 0 or 1) gives `0`. -/
def P_phi13 (B C : Nat) : Nat :=
  (S_val B C).primeFactors.sup id

/-- A prime factor is ≤ the product of the factors. -/
theorem prime_le_rad_of_mem {n p : Nat}
    (hp : p ∈ n.primeFactors) : p ≤ rad n := by
  unfold rad
  exact Finset.single_le_prod'
    (fun q hq => (Nat.prime_of_mem_primeFactors hq).one_le) hp

theorem exists_eq_P_of_one_lt {n : Nat} (hn : 1 < n) :
    ∃ p, p ∈ n.primeFactors ∧ n.primeFactors.sup id = p := by
  have hs : n.primeFactors.Nonempty :=
    Nat.nonempty_primeFactors.mpr hn
  obtain ⟨p, hp, hEq⟩ :=
    Finset.exists_mem_eq_sup n.primeFactors hs id
  exact ⟨p, hp, hEq⟩

theorem rad_gt_of_greatest_prime_gt {n k : Nat} (hn : 1 < n)
    (hP : k < n.primeFactors.sup id) : k < rad n := by
  obtain ⟨p, hp, hEq⟩ := exists_eq_P_of_one_lt hn
  have hp_le : p ≤ rad n := prime_le_rad_of_mem hp
  have : k < p := by rwa [hEq] at hP
  exact this.trans_le hp_le

theorem S_val_gt_one_of_gap3 (B C : Nat) (hgap : B + 3 ≤ C) :
    1 < S_val B C := by
  have hBltC : B < C :=
    (Nat.lt_add_of_pos_right (by decide : (0 : Nat) < 3)).trans_le hgap
  have hbounds := S_bounds B C hBltC
  cases' Nat.eq_zero_or_pos B with hB0 hBpos
  · subst hB0
    have hC : 3 ≤ C := by simpa using hgap
    have hCpos : 0 < C :=
      Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 3) hC
    have hS : S_val 0 C = C ^ 12 := by
      unfold S_val
      have hz : (0 : Nat) ^ 13 = 0 :=
        Nat.zero_pow (by decide : (0 : Nat) < 13)
      simp only [hz, Nat.sub_zero]
      have h13 : C ^ 13 = C * C ^ 12 := pow_succ' C 12
      rw [h13, Nat.mul_div_right _ hCpos]
    rw [hS]
    exact Nat.lt_of_lt_of_le (by decide : (1 : Nat) < 3 ^ 12)
      (Nat.pow_le_pow_left hC 12)
  · have hlow : 13 * B ^ 12 ≤ S_val B C := hbounds.1
    have hone : (1 : Nat) ≤ B ^ 12 := Nat.one_le_pow 12 B hBpos
    have h13 : 13 ≤ 13 * B ^ 12 := by
      simpa using Nat.mul_le_mul_left 13 hone
    exact Nat.lt_of_lt_of_le (by decide : (1 : Nat) < 13)
      (h13.trans hlow)

theorem rad_gt_C_of_P_phi13_gt_C (B C : Nat)
    (hgap : B + 3 ≤ C) (hP : C < P_phi13 B C) :
    C < rad (S_val B C) := by
  have hS : 1 < S_val B C := S_val_gt_one_of_gap3 B C hgap
  exact rad_gt_of_greatest_prime_gt hS hP

/-! ## Honesty: still-missing analytic close -/

/-- Uninhabited.  Bugeaud–Corvaja–Zannier:
`P(Φ₁₃(C,B)) > C` on gap-3 coprime pairs
with `B > 50000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_50000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 50000 < B →
    C < P_phi13 B C

/-- Uninhabited.  The contradiction step:
squarefull + `B > 50000` would need
`rad(S) > √(13 C¹²)`.  Infrastructure
gives only `rad ≤ √S ≤ √(13 C¹²)` when
squarefull, and `rad > C` from
`P(Φ₁₃) > C`.  `C < √(13 C¹²)` is easy;
`rad > √(13 C¹²)` is not. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 50000 < B →
    IsSquarefull (S_val B C) →
    Nat.sqrt (13 * C ^ 12) < rad (S_val B C)

/-- Uninhabited.  Ljunggren-type. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower
      (S_val B C)

/-- Uninhabited.  `B > 50000` still needs
`rad > √13 C⁶` (or a direct exp-one prime). -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    HasPrimeWithExpOne (S_val B C) ∧
      ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
        ¬ p ∣ (C - B) ∧ ¬ p ^ 2 ∣ S_val B C

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧ ¬ p ∣ (C - B)

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → B + 3 ≤ C → False

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → False

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

#check S_le_13_C_pow12
#check sqrt_S_le_sqrt_13_C_pow12
#check sqrt_S_le_4_C6
#check rad_le_sqrt_of_squarefull
#check rad_gt_C_of_P_phi13_gt_C
#check primitive_prime_ge_53_wrap
#check bugeaud_P_phi13_gt_C_when_B_gt_50000
#check rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000
#check S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_le_13_C_pow12
#print axioms sqrt_S_le_4_C6
#print axioms rad_le_sqrt_of_squarefull
#print axioms rad_gt_C_of_P_phi13_gt_C
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound
