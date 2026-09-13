/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.4 — `p ∣ S` from a primitive
prime of `C¹³ − B¹³`, and `p ∣ B` with
`p ∣ S` contradicts `Nat.Coprime C B`.
Keeps v8.19.3 `zsigmondy_13` inhabited.
The attempt `p ∣ S ∧ p ∣ A → p ∣ B` is
the opposite of the coprime direction and
stays uninhabited.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
import Mathlib.Data.Nat.ModEq
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13

/-- The 13-term cyclotomic sum `Φ₁₃(C,B)`. -/
def S_13 (C B : Nat) : Nat :=
  C ^ 12 + C ^ 11 * B + C ^ 10 * B ^ 2 + C ^ 9 * B ^ 3
    + C ^ 8 * B ^ 4 + C ^ 7 * B ^ 5 + C ^ 6 * B ^ 6
    + C ^ 5 * B ^ 7 + C ^ 4 * B ^ 8 + C ^ 3 * B ^ 9
    + C ^ 2 * B ^ 10 + C * B ^ 11 + B ^ 12

/-- Tail after the `C¹²` term, so `S₁₃ = C¹² + B · S_13_tail`. -/
def S_13_tail (C B : Nat) : Nat :=
  C ^ 11 + C ^ 10 * B + C ^ 9 * B ^ 2 + C ^ 8 * B ^ 3
    + C ^ 7 * B ^ 4 + C ^ 6 * B ^ 5 + C ^ 5 * B ^ 6
    + C ^ 4 * B ^ 7 + C ^ 3 * B ^ 8 + C ^ 2 * B ^ 9
    + C * B ^ 10 + B ^ 11

theorem S_13_eq_C_pow12_add_B_mul_tail (C B : Nat) :
    S_13 C B = C ^ 12 + B * S_13_tail C B := by
  unfold S_13 S_13_tail
  ring

theorem S_13_eq_phi13 (C B : Nat) :
    S_13 C B = phi13 C B := by
  unfold S_13 phi13
  simp [Finset.sum_range_succ, Finset.sum_range_zero]
  ring

theorem C13_sub_B13_eq_sub_mul_S (C B : Nat) :
    C ^ 13 - B ^ 13 = (C - B) * S_13 C B := by
  cases' le_or_lt B C with hBC hlt
  · rw [S_13_eq_phi13, C_pow13_sub_eq_phi13_mul C B hBC, Nat.mul_comm]
  · have hpow : C ^ 13 ≤ B ^ 13 :=
      Nat.pow_le_pow_left (Nat.le_of_lt hlt) 13
    have h1 : C ^ 13 - B ^ 13 = 0 := Nat.sub_eq_zero_of_le hpow
    have h2 : C - B = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_lt hlt)
    simp [h1, h2]

theorem p_dvd_S_of_p_dvd_diff_and_not_dvd_sub
    (C B p : Nat) (hp : Nat.Prime p)
    (hDvdDiff : p ∣ C ^ 13 - B ^ 13) (hNotDvdSub : ¬ p ∣ C - B) :
    p ∣ S_13 C B := by
  have hEq : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  have hDvdProd : p ∣ (C - B) * S_13 C B := by
    rwa [← hEq]
  exact (hp.dvd_mul.mp hDvdProd).resolve_left hNotDvdSub

/-- A primitive prime of `C¹³ − B¹³` cannot be `13`.
Needs `p ∣ C¹³ − B¹³`: Fermat gives
`C¹³ − B¹³ ≡ C − B [MOD 13]`. -/
theorem primitive_prime_ne_13 (C B p : Nat) (_hp : Nat.Prime p)
    (hDvdDiff : p ∣ C ^ 13 - B ^ 13)
    (hPrim : ∀ k : Nat, 0 < k → k < 13 → ¬ p ∣ C ^ k - B ^ k) :
    p ≠ 13 := by
  intro hEq
  subst hEq
  have hNot1 : ¬ 13 ∣ C - B := by
    have hNot : ¬ 13 ∣ C ^ 1 - B ^ 1 :=
      hPrim 1 (by decide) (by decide)
    simpa [pow_one] using hNot
  cases' le_or_lt B C with hBC hlt
  · haveI : Fact (Nat.Prime 13) := ⟨by decide⟩
    have hferC : (C : ZMod 13) ^ 13 = (C : ZMod 13) := ZMod.pow_card _
    have hferB : (B : ZMod 13) ^ 13 = (B : ZMod 13) := ZMod.pow_card _
    have hle : B ^ 13 ≤ C ^ 13 := Nat.pow_le_pow_left hBC 13
    have hmod : B ^ 13 ≡ C ^ 13 [MOD 13] :=
      (Nat.modEq_iff_dvd' hle).mpr hDvdDiff
    have hz : ((B ^ 13 : Nat) : ZMod 13) = ((C ^ 13 : Nat) : ZMod 13) :=
      (ZMod.natCast_eq_natCast_iff (B ^ 13) (C ^ 13) 13).mpr hmod
    have hCB : (B : ZMod 13) = (C : ZMod 13) := by
      rw [← hferB, ← hferC, ← Nat.cast_pow, ← Nat.cast_pow, hz]
    exact hNot1 ((Nat.modEq_iff_dvd' hBC).mp
      ((ZMod.natCast_eq_natCast_iff B C 13).mp hCB))
  · have : C - B = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_lt hlt)
    exact hNot1 (this ▸ dvd_zero 13)

theorem p_dvd_A_pow4_of_p_dvd_diff (A B C p : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hDvdDiff : p ∣ C ^ 13 - B ^ 13) : p ∣ A ^ 4 := by
  have hDiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  rwa [hDiff] at hDvdDiff

theorem S_mod_B_eq_C_pow12 (C B : Nat) :
    S_13 C B % B = C ^ 12 % B := by
  have h := S_13_eq_C_pow12_add_B_mul_tail C B
  rw [h, Nat.mul_comm B, Nat.add_mul_mod_self_right]

theorem S_modEq_C_pow12 (C B : Nat) :
    S_13 C B ≡ C ^ 12 [MOD B] :=
  S_mod_B_eq_C_pow12 C B

theorem beal_odd_A_ge3_p_dvd_C_of_p_dvd_B_and_p_dvd_S
    (B C p : Nat) (hp : Nat.Prime p)
    (hDvdB : p ∣ B) (hDvdS : p ∣ S_13 C B) : p ∣ C := by
  have hmod : S_13 C B ≡ C ^ 12 [MOD B] := S_modEq_C_pow12 C B
  have hmodp : S_13 C B ≡ C ^ 12 [MOD p] := hmod.of_dvd hDvdB
  have hS0 : S_13 C B ≡ 0 [MOD p] :=
    (Nat.modEq_zero_iff_dvd).mpr hDvdS
  have hC12 : C ^ 12 ≡ 0 [MOD p] := hmodp.symm.trans hS0
  have hpC12 : p ∣ C ^ 12 := (Nat.modEq_zero_iff_dvd).mp hC12
  exact Nat.Prime.dvd_of_dvd_pow hp hpC12

theorem beal_odd_A_ge3_p_dvd_B_contradiction
    (A B C p : Nat) (_h : A ^ 4 + B ^ 13 = C ^ 13)
    (_hOddA : Odd A ∧ 3 ≤ A) (hCoprime : Nat.Coprime C B)
    (hp : Nat.Prime p) (_hDvdA : p ∣ A) (_hNotDvdSub : ¬ p ∣ C - B)
    (hDvdS : p ∣ S_13 C B) (_hNe13 : p ≠ 13) (hDvdB : p ∣ B) :
    False := by
  have hDvdC : p ∣ C :=
    beal_odd_A_ge3_p_dvd_C_of_p_dvd_B_and_p_dvd_S B C p hp hDvdB hDvdS
  have hGcd : p ∣ Nat.gcd C B := Nat.dvd_gcd hDvdC hDvdB
  have h1 : Nat.gcd C B = 1 := hCoprime
  rw [h1] at hGcd
  have : p ≤ 1 := Nat.le_of_dvd (by decide : (0 : Nat) < 1) hGcd
  exact Nat.not_lt_of_ge this hp.one_lt

/-- Direct from the Beal equation: `p ∣ A` and
`p ∣ B` force `p ∣ C`, against `Coprime C B`. -/
theorem not_p_dvd_B_of_p_dvd_A_and_coprime
    (A B C p : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hp : Nat.Prime p) (hCoprime : Nat.Coprime C B)
    (hDvdA : p ∣ A) : ¬ p ∣ B := by
  intro hDvdB
  have hA4 : p ∣ A ^ 4 := dvd_pow hDvdA (by decide : (4 : Nat) ≠ 0)
  have hB13 : p ∣ B ^ 13 := dvd_pow hDvdB (by decide : (13 : Nat) ≠ 0)
  have hC13 : p ∣ C ^ 13 := by
    have : p ∣ A ^ 4 + B ^ 13 := dvd_add hA4 hB13
    rwa [h] at this
  have hDvdC : p ∣ C := Nat.Prime.dvd_of_dvd_pow hp hC13
  exact Nat.not_coprime_of_dvd_of_dvd hp.one_lt hDvdC hDvdB hCoprime

theorem beal_odd_A_ge3_size_gap_p_dvd_S
    (A B C p : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hp : Nat.Prime p) (hDvdA : p ∣ A)
    (hNotDvdSub : ¬ p ∣ C - B) : p ∣ S_13 C B := by
  have hDiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  have hDvdDiff : p ∣ C ^ 13 - B ^ 13 := by
    rw [hDiff]
    exact dvd_pow hDvdA (by decide : (4 : Nat) ≠ 0)
  exact p_dvd_S_of_p_dvd_diff_and_not_dvd_sub C B p hp hDvdDiff hNotDvdSub

theorem beal_odd_A_ge3_size_gap_p_ne_13
    (A B C p : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hp : Nat.Prime p) (hDvdA : p ∣ A)
    (hPrim : ∀ k : Nat, 0 < k → k < 13 → ¬ p ∣ C ^ k - B ^ k) :
    p ≠ 13 := by
  have hDiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  have hDvdDiff : p ∣ C ^ 13 - B ^ 13 := by
    rw [hDiff]
    exact dvd_pow hDvdA (by decide : (4 : Nat) ≠ 0)
  exact primitive_prime_ne_13 C B p hp hDvdDiff hPrim

/-- Package: size-gap prime divides `S`, is not `13`
when it is primitive, and does not divide `B`. -/
theorem beal_odd_A_ge3_size_gap_p_dvd_S_ne_13_not_dvd_B
    (A B C p : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (_hOddA : Odd A ∧ 3 ≤ A) (hp : Nat.Prime p)
    (hCoprime : Nat.Coprime C B) (hDvdA : p ∣ A)
    (hNotDvdSub : ¬ p ∣ C - B)
    (hPrim : ∀ k : Nat, 0 < k → k < 13 → ¬ p ∣ C ^ k - B ^ k) :
    p ∣ S_13 C B ∧ p ≠ 13 ∧ ¬ p ∣ B :=
  ⟨beal_odd_A_ge3_size_gap_p_dvd_S A B C p h hp hDvdA hNotDvdSub,
    beal_odd_A_ge3_size_gap_p_ne_13 A B C p h hp hDvdA hPrim,
    not_p_dvd_B_of_p_dvd_A_and_coprime A B C p h hp hCoprime hDvdA⟩

/-- Uninhabited.  `p ∣ S` and `p ∣ A` do **not**
force `p ∣ B`.  Coprimality goes the other way:
`p ∣ A` and the equation give `¬ p ∣ B`. -/
def p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt : Prop :=
  ∀ A B C p : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Prime p → Nat.Coprime C B →
    p ∣ S_13 C B → p ∣ A → p ≠ 13 → p ∣ B

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
