/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.5 — a primitive prime of `C¹³ − B¹³`
has multiplicative order 13, so `p ≡ 1 [MOD 13]`,
`p ≥ 53`, and `A ≥ 53`.
Keeps v8.19.4 `S_13`, `p ∣ S`, `p ≠ 13`,
`p ∣ A → ¬ p ∣ B`.
Keeps v8.19.3 `zsigmondy_13` inhabited.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
`A ≥ 53` does not close `¬ A⁴ + B¹³ = C¹³`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import Mathlib.Data.Nat.ModEq
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4

/-- Multiplicative order of `a` in `ZMod p`. -/
noncomputable def order_mod_p (a p : Nat) : Nat :=
  orderOf (a : ZMod p)

/-- Modular inverse lift: `B⁻¹ mod p`. -/
def inv_mod (B p : Nat) : Nat :=
  ((B : ZMod p)⁻¹).val

/-- The ratio `C · (B⁻¹ mod p) mod p`. -/
def ratio_mod_p (C B p : Nat) : Nat :=
  C * inv_mod B p % p

theorem order_dvd_p_minus_one_of_prime (p a : Nat)
    (hp : Nat.Prime p) (ha : ¬ p ∣ a) :
    order_mod_p a p ∣ p - 1 := by
  haveI : Fact p.Prime := ⟨hp⟩
  have hne : (a : ZMod p) ≠ 0 :=
    mt (ZMod.natCast_zmod_eq_zero_iff_dvd a p).mp ha
  exact ZMod.orderOf_dvd_card_sub_one hne

theorem C_gt_B_of_not_p_dvd_sub (C B p : Nat)
    (hNotDvdSub : ¬ p ∣ C - B) : B < C := by
  by_contra hle
  have : C - B = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_not_lt hle)
  exact hNotDvdSub (this ▸ dvd_zero p)

theorem ratio_mod_p_cast (C B p : Nat) [Fact p.Prime] :
    (ratio_mod_p C B p : ZMod p) =
      (C : ZMod p) * (B : ZMod p)⁻¹ := by
  unfold ratio_mod_p inv_mod
  rw [ZMod.natCast_mod, Nat.cast_mul, ZMod.natCast_zmod_val]

theorem order_mod_p_ratio (C B p : Nat) [Fact p.Prime] :
    order_mod_p (ratio_mod_p C B p) p =
      orderOf ((C : ZMod p) * (B : ZMod p)⁻¹) := by
  unfold order_mod_p
  rw [ratio_mod_p_cast]

theorem not_p_dvd_ratio_of_not_p_dvd_C (C B p : Nat)
    (hp : Nat.Prime p) (hNotDvdB : ¬ p ∣ B) (hNotDvdC : ¬ p ∣ C) :
    ¬ p ∣ ratio_mod_p C B p := by
  haveI : Fact p.Prime := ⟨hp⟩
  intro hdiv
  have h0 : (ratio_mod_p C B p : ZMod p) = 0 :=
    (ZMod.natCast_zmod_eq_zero_iff_dvd _ p).mpr hdiv
  have hu : (C : ZMod p) * (B : ZMod p)⁻¹ = 0 := by
    rwa [ratio_mod_p_cast] at h0
  have hB0 : (B : ZMod p) ≠ 0 :=
    mt (ZMod.natCast_zmod_eq_zero_iff_dvd B p).mp hNotDvdB
  have hC0 : (C : ZMod p) = 0 := by
    have := mul_eq_zero.mp hu
    exact this.resolve_right (inv_ne_zero hB0)
  exact hNotDvdC ((ZMod.natCast_zmod_eq_zero_iff_dvd C p).mp hC0)

theorem ratio_pow_13_eq_one (C B p : Nat) (hp : Nat.Prime p)
    (hCgtB : B < C) (hNotDvdB : ¬ p ∣ B)
    (hDvdDiff : p ∣ C ^ 13 - B ^ 13) :
    ((C : ZMod p) * (B : ZMod p)⁻¹) ^ 13 = 1 := by
  haveI : Fact p.Prime := ⟨hp⟩
  have hB0 : (B : ZMod p) ≠ 0 :=
    mt (ZMod.natCast_zmod_eq_zero_iff_dvd B p).mp hNotDvdB
  have hz := pow_cast_eq_of_dvd_sub (p := p) hCgtB hDvdDiff
  rw [mul_pow, inv_pow, hz]
  exact mul_inv_cancel₀ (pow_ne_zero (13 : Nat) hB0)

theorem ratio_ne_one (C B p : Nat) (hp : Nat.Prime p)
    (hCgtB : B < C) (hNotDvdB : ¬ p ∣ B)
    (hNotDvdSub : ¬ p ∣ C - B) :
    (C : ZMod p) * (B : ZMod p)⁻¹ ≠ 1 := by
  haveI : Fact p.Prime := ⟨hp⟩
  intro hu
  have hB0 : (B : ZMod p) ≠ 0 :=
    mt (ZMod.natCast_zmod_eq_zero_iff_dvd B p).mp hNotDvdB
  have hEq : (C : ZMod p) = (B : ZMod p) := by
    have hmul :
        (C : ZMod p) * (B : ZMod p)⁻¹ * (B : ZMod p) = (B : ZMod p) := by
      simpa using congrArg (fun x : ZMod p => x * (B : ZMod p)) hu
    rwa [inv_mul_cancel_right₀ hB0] at hmul
  have hmod : B ≡ C [MOD p] :=
    (ZMod.natCast_eq_natCast_iff B C p).mp hEq.symm
  exact hNotDvdSub ((Nat.modEq_iff_dvd' (Nat.le_of_lt hCgtB)).mp hmod)

theorem order_eq_13_of_primitive_prime_13 (C B p : Nat)
    (hp : Nat.Prime p) (_hCoprimeCB : Nat.Coprime C B)
    (hNotDvdB : ¬ p ∣ B) (_hNotDvdC : ¬ p ∣ C)
    (hDvdDiff : p ∣ C ^ 13 - B ^ 13) (hNotDvdSub : ¬ p ∣ C - B) :
    order_mod_p (ratio_mod_p C B p) p = 13 := by
  haveI : Fact p.Prime := ⟨hp⟩
  have hCgtB : B < C := C_gt_B_of_not_p_dvd_sub C B p hNotDvdSub
  let u : ZMod p := (C : ZMod p) * (B : ZMod p)⁻¹
  have hu13 : u ^ 13 = 1 :=
    ratio_pow_13_eq_one C B p hp hCgtB hNotDvdB hDvdDiff
  have hu1 : u ≠ 1 :=
    ratio_ne_one C B p hp hCgtB hNotDvdB hNotDvdSub
  have hord : orderOf u ∣ 13 := orderOf_dvd_of_pow_eq_one hu13
  have h13 : orderOf u = 13 := by
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp hord with h1 | h13
    · exact absurd (orderOf_eq_one_iff.mp h1) hu1
    · exact h13
  rwa [order_mod_p_ratio]

theorem primitive_prime_mod_13_eq_1 (C B p : Nat)
    (hp : Nat.Prime p) (hCoprimeCB : Nat.Coprime C B)
    (hDvdDiff : p ∣ C ^ 13 - B ^ 13) (hNotDvdSub : ¬ p ∣ C - B)
    (hNotDvdB : ¬ p ∣ B) : p % 13 = 1 := by
  haveI : Fact p.Prime := ⟨hp⟩
  have hCgtB : B < C := C_gt_B_of_not_p_dvd_sub C B p hNotDvdSub
  have hNotDvdC : ¬ p ∣ C :=
    (not_dvd_base_of_dvd_pow_sub hp (by decide : (0 : Nat) < 13)
      hCoprimeCB hCgtB hDvdDiff).1
  have hOrderEq13 :
      order_mod_p (ratio_mod_p C B p) p = 13 :=
    order_eq_13_of_primitive_prime_13 C B p hp hCoprimeCB
      hNotDvdB hNotDvdC hDvdDiff hNotDvdSub
  have hNotRatio : ¬ p ∣ ratio_mod_p C B p :=
    not_p_dvd_ratio_of_not_p_dvd_C C B p hp hNotDvdB hNotDvdC
  have hOrderDvd :
      order_mod_p (ratio_mod_p C B p) p ∣ p - 1 :=
    order_dvd_p_minus_one_of_prime p (ratio_mod_p C B p) hp hNotRatio
  have h13 : 13 ∣ p - 1 := by
    rwa [hOrderEq13] at hOrderDvd
  have hmod : 1 ≡ p [MOD 13] :=
    (Nat.modEq_iff_dvd' hp.one_le).mpr h13
  have : 1 % 13 = p % 13 := hmod
  simpa using this.symm

theorem primitive_prime_ge_53 (_C _B p : Nat) (hp : Nat.Prime p)
    (hMod1 : p % 13 = 1) (_hNe13 : p ≠ 13) : 53 ≤ p := by
  by_contra h
  have hlt : p < 53 := Nat.lt_of_not_ge h
  have heq : p = 13 * (p / 13) + 1 := by
    have := Nat.div_add_mod p 13
    rw [hMod1] at this
    exact this.symm
  have hdiv : p / 13 ≤ 3 := by
    have : 13 * (p / 13) + 1 < 53 := by rwa [← heq]
    omega
  interval_cases p / 13
  · rw [heq] at hp
    exact Nat.not_prime_one hp
  · rw [heq] at hp
    exact (by decide : ¬ Nat.Prime 14) hp
  · rw [heq] at hp
    exact (by decide : ¬ Nat.Prime 27) hp
  · rw [heq] at hp
    exact (by decide : ¬ Nat.Prime 40) hp

theorem beal_odd_A_ge3_primitive_prime_ge_53 (A B C p : Nat)
    (_h : A ^ 4 + B ^ 13 = C ^ 13)
    (_hOddA : Odd A ∧ 3 ≤ A) (hCoprime : Nat.Coprime C B)
    (hp : Nat.Prime p) (hDvdDiff : p ∣ C ^ 13 - B ^ 13)
    (hNotDvdSub : ¬ p ∣ C - B) (hNotDvdB : ¬ p ∣ B) : 53 ≤ p := by
  have hMod1 : p % 13 = 1 :=
    primitive_prime_mod_13_eq_1 C B p hp hCoprime hDvdDiff hNotDvdSub hNotDvdB
  have hNe13 : p ≠ 13 := by
    intro hEq
    subst hEq
    exact (by decide : (13 : Nat) % 13 ≠ 1) hMod1
  exact primitive_prime_ge_53 C B p hp hMod1 hNe13

theorem C_gt_B_of_beal_pos_A (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hA : 0 < A) : B < C := by
  have hlt : B ^ 13 < C ^ 13 := by
    rw [← h]
    exact Nat.lt_add_of_pos_left (Nat.pow_pos hA)
  exact lt_of_pow_lt_pow_left' (13 : Nat) hlt

theorem B_pos_of_beal_odd_A_ge3 (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hCoprime : Nat.Coprime C B) : 1 ≤ B := by
  cases B with
  | zero =>
    have hC1 : C = 1 := by
      have hgcd : Nat.gcd C 0 = 1 := hCoprime
      simpa [Nat.gcd_zero_right] using hgcd
    have hA4 : A ^ 4 = 1 := by
      simpa [hC1] using h
    have hA1 : A = 1 := by
      cases' A with a
      · simp at hA4
      · cases' a with a
        · rfl
        · have h16 : 16 ≤ (a.succ.succ) ^ 4 :=
            Nat.pow_le_pow_left (by omega : 2 ≤ a.succ.succ) 4
          have : (a.succ.succ) ^ 4 = 1 := hA4
          omega
    omega
  | succ b =>
    exact Nat.succ_le_succ (Nat.zero_le _)

theorem beal_odd_A_ge3_exists_prime_ge_53 (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hCoprime : Nat.Coprime C B) :
    ∃ p : Nat, Nat.Prime p ∧ p ∣ A ∧ 53 ≤ p := by
  have hBpos : 1 ≤ B := B_pos_of_beal_odd_A_ge3 A B C h hOddA hCoprime
  have hApos : 0 < A := Nat.zero_lt_of_lt hOddA.2
  have hBltC : B < C := C_gt_B_of_beal_pos_A A B C h hApos
  obtain ⟨p, hp, hDvdA, hNotSub⟩ :=
    beal_odd_A_ge3_size_gap A B C h hOddA hBpos hBltC hCoprime
  have hNotDvdB : ¬ p ∣ B :=
    not_p_dvd_B_of_p_dvd_A_and_coprime A B C p h hp hCoprime hDvdA
  have hDiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  have hDvdDiff : p ∣ C ^ 13 - B ^ 13 := by
    rw [hDiff]
    exact dvd_pow hDvdA (by decide : (4 : Nat) ≠ 0)
  exact ⟨p, hp, hDvdA,
    beal_odd_A_ge3_primitive_prime_ge_53 A B C p h hOddA hCoprime
      hp hDvdDiff hNotSub hNotDvdB⟩

theorem beal_odd_A_ge3_A_ge_53 (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hCoprime : Nat.Coprime C B) : 53 ≤ A := by
  obtain ⟨p, _hp, hDvdA, hpge⟩ :=
    beal_odd_A_ge3_exists_prime_ge_53 A B C h hOddA hCoprime
  have hApos : 0 < A := Nat.zero_lt_of_lt hOddA.2
  exact le_trans hpge (Nat.le_of_dvd hApos hDvdA)

/-- Uninhabited.  `A ≥ 53` does not close
`¬ A⁴ + B¹³ = C¹³`. -/
def beal_odd_A_ge3_closed_of_A_ge_53 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → 53 ≤ A → False

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
