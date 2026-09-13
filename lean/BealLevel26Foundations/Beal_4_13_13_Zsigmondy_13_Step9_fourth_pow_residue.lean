/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.9 — `A⁴ ≡ k¹³ [MOD B]` is a
fourth-power residue.  For odd `A`,
`A⁴ ≡ 1 [MOD 4]` and `A⁴ ≡ 1 [MOD 8]`,
while odd `k` has `k¹³ ≡ k` at those
moduli.  So `B % 4 = 0` forces `k % 4 = 1`
and `B % 8 = 0` forces `k % 8 = 1`.

Keeps v8.19.8 `k` odd, `gcd(k,B)=1` when
`C ≥ B`, `gcd(A,B)=1`, `A⁴ % B = k¹³ % B`.
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

Without odd `A`, `k % 4 = 1` can fail
(`A` even gives `A⁴ ≡ 0 [MOD 16]`).
That unrestricted Prop stays uninhabited.
The residue does not close the equation.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime

/-- If `a ≡ b [MOD n]` and `d ∣ n` then `a ≡ b [MOD d]`. -/
theorem mod_eq_of_mod_eq_of_dvd {a b n d : Nat}
    (hdvd : d ∣ n) (h : a % n = b % n) : a % d = b % d := by
  have : (a % n) % d = (b % n) % d := congrArg (fun t => t % d) h
  rwa [Nat.mod_mod_of_dvd a hdvd, Nat.mod_mod_of_dvd b hdvd] at this

/-- Odd fourth powers are `1 [MOD 4]`. -/
theorem odd_fourth_mod4 (A : Nat) (hOdd : Odd A) : A ^ 4 % 4 = 1 := by
  have h2 : A % 2 = 1 := Nat.odd_iff.mp hOdd
  have hmod2 : A % 4 % 2 = A % 2 := Nat.mod_mod_of_dvd A (by decide : (2 : Nat) ∣ 4)
  have hlt : A % 4 < 4 := Nat.mod_lt A (by decide)
  rw [Nat.pow_mod]
  interval_cases A % 4
  · omega
  · decide
  · omega
  · decide

/-- Odd fourth powers are `1 [MOD 8]`. -/
theorem odd_fourth_mod8 (A : Nat) (hOdd : Odd A) : A ^ 4 % 8 = 1 := by
  have h2 : A % 2 = 1 := Nat.odd_iff.mp hOdd
  have hmod2 : A % 8 % 2 = A % 2 := Nat.mod_mod_of_dvd A (by decide : (2 : Nat) ∣ 8)
  have hlt : A % 8 < 8 := Nat.mod_lt A (by decide)
  rw [Nat.pow_mod]
  interval_cases A % 8
  · omega
  · decide
  · omega
  · decide
  · omega
  · decide
  · omega
  · decide

/-- Odd `k` has `k^13 ≡ k [MOD 4]`. -/
theorem odd_pow13_mod4 (k : Nat) (hOdd : Odd k) : k ^ 13 % 4 = k % 4 := by
  have h2 : k % 2 = 1 := Nat.odd_iff.mp hOdd
  have hmod2 : k % 4 % 2 = k % 2 := Nat.mod_mod_of_dvd k (by decide : (2 : Nat) ∣ 4)
  have hlt : k % 4 < 4 := Nat.mod_lt k (by decide)
  rw [Nat.pow_mod]
  interval_cases k % 4
  · omega
  · decide
  · omega
  · decide

/-- Odd `k` has `k^13 ≡ k [MOD 8]` (`k² ≡ 1 [MOD 8]`). -/
theorem odd_pow13_mod8 (k : Nat) (hOdd : Odd k) : k ^ 13 % 8 = k % 8 := by
  have h2 : k % 2 = 1 := Nat.odd_iff.mp hOdd
  have hmod2 : k % 8 % 2 = k % 2 := Nat.mod_mod_of_dvd k (by decide : (2 : Nat) ∣ 8)
  have hlt : k % 8 < 8 := Nat.mod_lt k (by decide)
  rw [Nat.pow_mod]
  interval_cases k % 8
  · omega
  · decide
  · omega
  · decide
  · omega
  · decide
  · omega
  · decide

/-- Odd `A` and `A^4 ≡ k^13 [MOD B]` with `4 ∣ B`
force `k % 4 = 1`. -/
theorem k_mod4_eq_1_of_fourth_pow_residue (A B k : Nat)
    (hOddA : Odd A) (hOddk : Odd k) (hB4 : B % 4 = 0)
    (hcong : A ^ 4 % B = k ^ 13 % B) : k % 4 = 1 := by
  have hdvd : 4 ∣ B := (Nat.dvd_iff_mod_eq_zero (4 : Nat) B).mpr hB4
  have hmod : A ^ 4 % 4 = k ^ 13 % 4 :=
    mod_eq_of_mod_eq_of_dvd hdvd hcong
  have hA4 : A ^ 4 % 4 = 1 := odd_fourth_mod4 A hOddA
  have hk13 : k ^ 13 % 4 = k % 4 := odd_pow13_mod4 k hOddk
  omega

/-- Odd `A` and `A^4 ≡ k^13 [MOD B]` with `8 ∣ B`
force `k % 8 = 1`. -/
theorem k_mod8_eq_1_of_fourth_pow_residue (A B k : Nat)
    (hOddA : Odd A) (hOddk : Odd k) (hB8 : B % 8 = 0)
    (hcong : A ^ 4 % B = k ^ 13 % B) : k % 8 = 1 := by
  have hdvd : 8 ∣ B := (Nat.dvd_iff_mod_eq_zero (8 : Nat) B).mpr hB8
  have hmod : A ^ 4 % 8 = k ^ 13 % 8 :=
    mod_eq_of_mod_eq_of_dvd hdvd hcong
  have hA4 : A ^ 4 % 8 = 1 := odd_fourth_mod8 A hOddA
  have hk13 : k ^ 13 % 8 = k % 8 := odd_pow13_mod8 k hOddk
  omega

/-- On a Beal `4/13/13` tuple with odd `A` and
`B % 4 = 0`, `k = C − B` satisfies `k % 4 = 1`. -/
theorem beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hB4 : B % 4 = 0) :
    (C - B) % 4 = 1 :=
  k_mod4_eq_1_of_fourth_pow_residue A B (C - B) hOddA
    (beal_4_13_13_k_odd A B C h hOddA) hB4
    (beal_4_13_13_A_pow4_mod_B_eq_k_pow13 A B C h)

/-- On a Beal `4/13/13` tuple with odd `A` and
`B % 8 = 0`, `k = C − B` satisfies `k % 8 = 1`. -/
theorem beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hB8 : B % 8 = 0) :
    (C - B) % 8 = 1 :=
  k_mod8_eq_1_of_fourth_pow_residue A B (C - B) hOddA
    (beal_4_13_13_k_odd A B C h hOddA) hB8
    (beal_4_13_13_A_pow4_mod_B_eq_k_pow13 A B C h)

/-- `B % 4 = 0` makes `B` even, so `Coprime C B`
already forces `A` odd. -/
theorem beal_4_13_13_k_mod4_eq_1_of_coprime_B_mod4_eq_0
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCop : Nat.Coprime C B) (hB4 : B % 4 = 0) :
    (C - B) % 4 = 1 := by
  have hCopAB : Nat.Coprime A B :=
    beal_4_13_13_gcd_A_B_eq_one A B C h hCop
  have hAodd : Odd A := by
    rcases Nat.even_or_odd A with hAe | hAo
    · have hBe : Even B := by
        rw [Nat.even_iff]
        have : B % 2 = B % 4 % 2 :=
          (Nat.mod_mod_of_dvd B (by decide : (2 : Nat) ∣ 4)).symm
        omega
      exact absurd hCopAB
        (Nat.not_coprime_of_dvd_of_dvd (by decide : (1 : Nat) < 2)
          ((Nat.dvd_iff_mod_eq_zero (2 : Nat) A).mpr (Nat.even_iff.mp hAe))
          ((Nat.dvd_iff_mod_eq_zero (2 : Nat) B).mpr (Nat.even_iff.mp hBe)))
    · exact hAo
  exact beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0 A B C h hAodd hB4

theorem beal_4_13_13_k_mod8_eq_1_of_coprime_B_mod8_eq_0
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCop : Nat.Coprime C B) (hB8 : B % 8 = 0) :
    (C - B) % 8 = 1 := by
  have hB4 : B % 4 = 0 := by
    have : B % 4 = B % 8 % 4 :=
      (Nat.mod_mod_of_dvd B (by decide : (4 : Nat) ∣ 8)).symm
    omega
  have hCopAB : Nat.Coprime A B :=
    beal_4_13_13_gcd_A_B_eq_one A B C h hCop
  have hAodd : Odd A := by
    rcases Nat.even_or_odd A with hAe | hAo
    · have hBe : Even B := by
        rw [Nat.even_iff]
        have : B % 2 = B % 4 % 2 :=
          (Nat.mod_mod_of_dvd B (by decide : (2 : Nat) ∣ 4)).symm
        omega
      exact absurd hCopAB
        (Nat.not_coprime_of_dvd_of_dvd (by decide : (1 : Nat) < 2)
          ((Nat.dvd_iff_mod_eq_zero (2 : Nat) A).mpr (Nat.even_iff.mp hAe))
          ((Nat.dvd_iff_mod_eq_zero (2 : Nat) B).mpr (Nat.even_iff.mp hBe)))
    · exact hAo
  exact beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0 A B C h hAodd hB8

/-! ## Sketch names (v8.19.9) -/

/-- Every fourth power is `0` or `1 [MOD 4]`. -/
theorem fourth_pow_mod_4 (A : Nat) : A ^ 4 % 4 = 0 ∨ A ^ 4 % 4 = 1 := by
  have hlt : A % 4 < 4 := Nat.mod_lt A (by decide)
  rw [Nat.pow_mod]
  interval_cases A % 4
  · decide
  · decide
  · decide
  · decide

theorem fourth_pow_mod_8_odd (A : Nat) (hOdd : Odd A) : A ^ 4 % 8 = 1 :=
  odd_fourth_mod8 A hOdd

theorem odd_pow_mod_4 (k : Nat) (hOdd : Odd k) : k ^ 13 % 4 = k % 4 :=
  odd_pow13_mod4 k hOdd

theorem k_pow13_mod_8_odd (k : Nat) (hOdd : Odd k) : k ^ 13 % 8 = k % 8 :=
  odd_pow13_mod8 k hOdd

theorem k_mod_4_eq_1_of_B_divisible_by_4 (A B k : Nat)
    (hOddA : Odd A) (hOddK : Odd k) (hBmod4_0 : B % 4 = 0)
    (hCong : A ^ 4 % B = k ^ 13 % B) : k % 4 = 1 :=
  k_mod4_eq_1_of_fourth_pow_residue A B k hOddA hOddK hBmod4_0 hCong

theorem k_mod_8_eq_1_of_B_divisible_by_8 (A B k : Nat)
    (hOddA : Odd A) (hOddK : Odd k) (hBmod8_0 : B % 8 = 0)
    (hCong : A ^ 4 % B = k ^ 13 % B) : k % 8 = 1 :=
  k_mod8_eq_1_of_fourth_pow_residue A B k hOddA hOddK hBmod8_0 hCong

theorem beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0 (A B k : Nat)
    (hOddA : Odd A) (hOddK : Odd k) (hB4 : B % 4 = 0)
    (hCong : A ^ 4 % B = k ^ 13 % B) : k % 4 = 1 :=
  k_mod_4_eq_1_of_B_divisible_by_4 A B k hOddA hOddK hB4 hCong

theorem beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0 (A B k : Nat)
    (hOddA : Odd A) (hOddK : Odd k) (hB8 : B % 8 = 0)
    (hCong : A ^ 4 % B = k ^ 13 % B) : k % 8 = 1 :=
  k_mod_8_eq_1_of_B_divisible_by_8 A B k hOddA hOddK hB8 hCong

/-- v8.19.8 congruence, packaged with odd `A`. -/
theorem beal_4_13_13_A4_cong_k13_mod_B_restricts_B
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13) (hOddA : Odd A) :
    A ^ 4 % B = (C - B) ^ 13 % B := by
  let _ := hOddA
  exact beal_4_13_13_A_pow4_mod_B_eq_k_pow13 A B C h

/-- Uninhabited.  Without odd `A`, `B % 4 = 0`
does not force `k % 4 = 1`. -/
def k_mod4_eq_1_of_B_mod4_eq_0_without_odd_A : Prop :=
  ∀ A B k : Nat,
    A ^ 4 % B = k ^ 13 % B → B % 4 = 0 → k % 4 = 1

/-- The residue does not close `¬ A⁴ + B¹³ = C¹³`. -/
def beal_odd_A_ge3_closed_of_fourth_pow_residue : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B →
    B % 8 = 0 → (C - B) % 8 = 1 → False

/-- The general Beal `4/13/13` Prop stays a Prop. -/
def beal_4_13_13 : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C →
    Nat.Coprime A B → Nat.Coprime A C → Nat.Coprime B C →
    A ^ 4 + B ^ 13 = C ^ 13 → False

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue
