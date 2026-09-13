/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.8 — `k = C − B` is odd when `A`
is odd; `gcd(k,B) = 1` when `Coprime C B`
and `C ≥ B`; `gcd(A,B) = 1` from
`Coprime C B` and the equation; and
`A⁴ ≡ k¹³ [MOD B]`.

Keeps v8.19.7 `C ≥ B+k → A⁴ ≥ 13 k B¹²`,
`A⁴ ≥ 39 B¹²`, `A ≥ 2 B³ + 1` for `B ≥ 1`.
Keeps v8.19.6 `B ≤ 100` with `C = B+1`
and `C = B+2` closed.
Keeps v8.19.5 `p ≡ 1 [MOD 13]`, `p ≥ 53`,
`A ≥ 53`.
Keeps v8.19.4 `S_13`, `p ∣ S`, `p ≠ 13`,
`p ∣ A → ¬ p ∣ B`.
Keeps v8.19.3 `zsigmondy_13` inhabited.
Keeps v8.19.2 `C ≥ B+2 → A⁴ ≥ 26 B¹²`.
Keeps v8.19.0 `genus_X0_2_rat = 0` and
`ExistsNewformLevel2` as `0 ≠ 0`.

`gcd(C−B, B) = gcd(C, B)` needs `C ≥ B`.
Without that, `C = 1`, `B = 2` is coprime
but `gcd(0, 2) = 2`.  That unrestricted
Prop stays uninhabited.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime

/-- From `A^4 + B^13 = C^13`, the thirteenth
powers are comparable, so `B ≤ C`. -/
theorem B_le_C_of_beal_4_13_13 {A B C : Nat}
    (h : A ^ 4 + B ^ 13 = C ^ 13) : B ≤ C := by
  have hle : B ^ 13 ≤ C ^ 13 := by
    have : B ^ 13 ≤ A ^ 4 + B ^ 13 := Nat.le_add_left _ _
    rwa [h] at this
  exact (Nat.pow_le_pow_iff_left (by decide : (13 : Nat) ≠ 0)).mp hle

/-- `C = B + (C − B)` once `B ≤ C`. -/
theorem C_eq_B_add_k (B C k : Nat) (hBC : B ≤ C) (hk : k = C - B) :
    C = B + k := by
  rw [hk, Nat.add_comm, Nat.sub_add_cancel hBC]

/-- Odd `A` forces `k = C − B` odd: `A^4` is odd,
so `C` and `B` have opposite parity. -/
theorem k_odd_of_odd_A (A B C k : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hOddA : Odd A)
    (hk : k = C - B) : Odd k := by
  have hA4odd : Odd (A ^ 4) := hOddA.pow
  have hBC : B ≤ C := B_le_C_of_beal_4_13_13 h
  rw [hk]
  rcases Nat.even_or_odd B with hBe | hBo
  · have hB13e : Even (B ^ 13) := hBe.pow_of_ne_zero (by decide)
    have hC13o : Odd (C ^ 13) := by
      have : Odd (A ^ 4 + B ^ 13) := hA4odd.add_even hB13e
      rwa [h] at this
    have hCo : Odd C := by
      rw [Nat.odd_iff]
      have hpow : C ^ 13 % 2 = 1 := Nat.odd_iff.mp hC13o
      rw [Nat.pow_mod] at hpow
      have hlt : C % 2 < 2 := Nat.mod_lt C (by decide)
      interval_cases C % 2
      · simp at hpow
      · rfl
    exact Nat.Odd.sub_even hBC hCo hBe
  · have hB13o : Odd (B ^ 13) := hBo.pow
    have hC13e : Even (C ^ 13) := by
      have : Even (A ^ 4 + B ^ 13) := hA4odd.add_odd hB13o
      rwa [h] at this
    have hCe : Even C := by
      rw [Nat.even_iff]
      have hpow : C ^ 13 % 2 = 0 := Nat.even_iff.mp hC13e
      rw [Nat.pow_mod] at hpow
      have hlt : C % 2 < 2 := Nat.mod_lt C (by decide)
      interval_cases C % 2
      · rfl
      · simp at hpow
    exact Nat.Even.sub_odd hBC hCe hBo

/-- `gcd(C − B, B) = gcd(C, B)` when `C ≥ B`. -/
theorem gcd_k_B_eq_gcd_C_B (B C k : Nat)
    (hBC : B ≤ C) (hk : k = C - B) :
    Nat.gcd k B = Nat.gcd C B := by
  rw [hk]
  exact Nat.gcd_sub_self_left hBC

/-- Coprime `C,B` and `C ≥ B` give coprime `k,B`.
Needs `C ≥ B`: `C = 1`, `B = 2` is coprime but
`gcd(0, 2) = 2`. -/
theorem gcd_k_B_eq_one_of_coprime_C_B (B C k : Nat)
    (hCoprime : Nat.Coprime C B) (hBC : B ≤ C)
    (hk : k = C - B) : Nat.Coprime k B := by
  unfold Nat.Coprime at *
  rwa [gcd_k_B_eq_gcd_C_B B C k hBC hk]

/-- A common prime of `A` and `B` would divide `C`,
against `Coprime C B`. -/
theorem gcd_A_B_eq_one_of_coprime_C_B (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCoprimeCB : Nat.Coprime C B) : Nat.Coprime A B := by
  by_contra hNot
  obtain ⟨p, hp, hpA, hpB⟩ := Nat.Prime.not_coprime_iff_dvd.mp hNot
  have hpA4 : p ∣ A ^ 4 := dvd_pow hpA (by decide : (4 : Nat) ≠ 0)
  have hpB13 : p ∣ B ^ 13 := dvd_pow hpB (by decide : (13 : Nat) ≠ 0)
  have hpC13 : p ∣ C ^ 13 := by
    have : p ∣ A ^ 4 + B ^ 13 := dvd_add hpA4 hpB13
    rwa [h] at this
  have hpC : p ∣ C := Nat.Prime.dvd_of_dvd_pow hp hpC13
  exact Nat.not_coprime_of_dvd_of_dvd hp.one_lt hpC hpB hCoprimeCB

/-- `(B + k)^13 ≡ k^13 [MOD B]`. -/
theorem add_pow13_mod_eq_pow13_mod (B k : Nat) :
    (B + k) ^ 13 % B = k ^ 13 % B := by
  have hbk : (B + k) % B = k % B := by
    rw [Nat.add_mod, Nat.mod_self, Nat.zero_add, Nat.mod_mod]
  rw [Nat.pow_mod, hbk, ← Nat.pow_mod]

/-- On a Beal `4/13/13` tuple, `A^4 ≡ k^13 [MOD B]`
for `k = C − B`. -/
theorem A_pow4_congr_k_pow13_mod_B (A B C k : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hk : k = C - B) :
    A ^ 4 % B = k ^ 13 % B := by
  have hBC : B ≤ C := B_le_C_of_beal_4_13_13 h
  have hCeq : C = B + k := C_eq_B_add_k B C k hBC hk
  have hsum : (A ^ 4 + B ^ 13) % B = C ^ 13 % B := by rw [h]
  have hB13 : B ^ 13 % B = 0 := by
    rw [Nat.pow_mod, Nat.mod_self, Nat.zero_pow (by decide : (0 : Nat) < 13),
      Nat.zero_mod]
  have hA4 : A ^ 4 % B = C ^ 13 % B := by
    rw [Nat.add_mod, hB13, Nat.add_zero, Nat.mod_mod] at hsum
    exact hsum
  calc
    A ^ 4 % B = C ^ 13 % B := hA4
    _ = (B + k) ^ 13 % B := by rw [hCeq]
    _ = k ^ 13 % B := add_pow13_mod_eq_pow13_mod B k

theorem beal_4_13_13_k_odd (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hOddA : Odd A) :
    Odd (C - B) :=
  k_odd_of_odd_A A B C (C - B) h hOddA rfl

theorem beal_4_13_13_gcd_k_B_eq_one (B C : Nat)
    (hCoprime : Nat.Coprime C B) (hBC : B ≤ C) :
    Nat.Coprime (C - B) B :=
  gcd_k_B_eq_one_of_coprime_C_B B C (C - B) hCoprime hBC rfl

/-- Packaged from the equation: `C ≥ B` is free. -/
theorem beal_4_13_13_gcd_k_B_eq_one_of_eq (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCoprime : Nat.Coprime C B) : Nat.Coprime (C - B) B :=
  beal_4_13_13_gcd_k_B_eq_one B C hCoprime (B_le_C_of_beal_4_13_13 h)

theorem beal_4_13_13_gcd_A_B_eq_one (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCoprimeCB : Nat.Coprime C B) : Nat.Coprime A B :=
  gcd_A_B_eq_one_of_coprime_C_B A B C h hCoprimeCB

theorem beal_4_13_13_A_pow4_mod_B_eq_k_pow13 (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) :
    A ^ 4 % B = (C - B) ^ 13 % B :=
  A_pow4_congr_k_pow13_mod_B A B C (C - B) h rfl

/-- Uninhabited.  `Coprime C B` alone does not
give `Coprime (C − B) B` (`C = 1`, `B = 2`). -/
def beal_4_13_13_gcd_k_B_eq_one_of_coprime_only : Prop :=
  ∀ B C : Nat, Nat.Coprime C B → Nat.Coprime (C - B) B

/-- These congruences do not close `¬ A⁴ + B¹³ = C¹³`. -/
def beal_odd_A_ge3_closed_of_k_odd_coprime : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B → False

/-- The general Beal `4/13/13` Prop stays a Prop. -/
def beal_4_13_13 : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C →
    Nat.Coprime A B → Nat.Coprime A C → Nat.Coprime B C →
    A ^ 4 + B ^ 13 = C ^ 13 → False

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
