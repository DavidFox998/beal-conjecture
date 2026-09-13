/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.21.0 — plan a bound on `k = C − B`
when `B > 100`, using `A ≥ 53` from a
Zsigmondy prime `p ≥ 53` on `S` that
divides `A`, and `A⁴ = k · S` with
`S ≥ 13 B¹²`.

Inhabited:
`A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A`,
`k_ge_B_imp_A_large` (`k ≥ B` and `C ≥ 2 B`
give `S ≥ 8191 B¹²`, so `A ≥ 9 B³`),
`k_lt_B_imp_S_between`
(`13 B¹² ≤ S ≤ 13 C¹²`).

Uninhabited (honest):
`beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular`
needs `S_not_fourth_power` (unconditional
`¬ p² ∣ S` is false by Hensel) plus the
missing `Modular W → ExistsNewformLevel2`
(`0 ≠ 0`) arrow that would inhabit
`beal_mixed_pow2_implies_level_2_newform`;
`beal_4_13_13_B_gt_100_slice_uninhabited`
takes primitive `p ≡ 1 [MOD 13]` and
`¬ p² ∣ S` as a hypothesis;
`beal_from_ribet_upside_down`,
`beal_4_13_13_size`.

Keeps v8.20.1 `B ≤ 100` closed
(Size_Table, Size_C_ge_B_plus_2_Table,
`B_le_100_k_ge_3_no_S_fourth_pow`).
Keeps v8.20.0 `S_13_mod_k`,
`gcd_k_S_dvd_13`, `k_almost_fourth_power`.
Keeps v8.19.9 residues, v8.19.8 odd
coprime, v8.19.7 bounds.
Keeps v8.19.0 `genus_X0_2_rat = 0` and
`ExistsNewformLevel2` as `0 ≠ 0`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
import BealLevel26Foundations.Beal.FullProof.X0_2_Genus
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (S_13_eq_phi13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
  (k_mul_S_eq_A_pow4)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k
  (S_13_mod_k gcd_k_S_dvd_13 k_almost_fourth_power)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (B_le_100_k_ge_3_no_S_fourth_pow beal_4_13_13_B_le_100_closed
    S_not_fourth_power)
open BealLevel26Foundations.Chain.Level2

/-! ## `A ≥ 53` from a prime of `S` that divides `A` -/

/-- A Zsigmondy prime of `S` with `p ≥ 53` and
`p ∣ A` forces `A ≥ 53`. -/
theorem A_ge_53_of_S_prime (A p : Nat)
    (hApos : 0 < A) (_hp : Nat.Prime p) (hDvd : p ∣ A)
    (hpge : 53 ≤ p) : 53 ≤ A :=
  le_trans hpge (Nat.le_of_dvd hApos hDvd)

/-- Packaged Beal form: the primitive prime on
`S` that divides `A` is at least `53`. -/
theorem A_ge_53_of_S_prime_beal (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hCop : Nat.Coprime C B) :
    53 ≤ A :=
  beal_odd_A_ge3_A_ge_53 A B C h hOddA hCop

/-! ## `k ≤ A⁴ / (13 B¹²)` from `A⁴ = k · S` -/

theorem k_le_A_pow4_div_13_B_pow12 (A B k S : Nat)
    (hprod : A ^ 4 = k * S) (hSge : 13 * B ^ 12 ≤ S)
    (hBpos : 0 < B) : k ≤ A ^ 4 / (13 * B ^ 12) := by
  have hB12 : 0 < B ^ 12 :=
    Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 1)
      (Nat.one_le_pow 12 B hBpos)
  have hdiv : 0 < 13 * B ^ 12 :=
    Nat.mul_pos (by decide : (0 : Nat) < 13) hB12
  have hmul : k * (13 * B ^ 12) ≤ A ^ 4 := by
    calc
      k * (13 * B ^ 12) ≤ k * S := Nat.mul_le_mul_left k hSge
      _ = A ^ 4 := hprod.symm
  exact (Nat.le_div_iff_mul_le hdiv).mpr hmul

/-- For `B > 100`, the same bound freezes the
`B¹²` slot at `100¹²`. -/
theorem B_gt_100_imp_k_bounded_by_A (A B C k : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hC : C = B + k)
    (hBgt : 100 < B) :
    k ≤ A ^ 4 / (13 * 100 ^ 12) := by
  have _hBpos : 0 < B := Nat.zero_lt_of_lt hBgt
  have hBC : B ≤ C := by
    rw [hC]
    exact Nat.le_add_right B k
  have hprod : A ^ 4 = k * S_13 C B :=
    k_mul_S_eq_A_pow4 A B C k h hC
  have hSge : 13 * B ^ 12 ≤ S_13 C B :=
    S_13_ge_13_mul_B_pow12 C B hBC
  have h100 : 100 ≤ B := Nat.le_of_succ_le hBgt
  have hpow : 100 ^ 12 ≤ B ^ 12 := Nat.pow_le_pow_left h100 12
  have h13 : 13 * 100 ^ 12 ≤ 13 * B ^ 12 :=
    Nat.mul_le_mul_left 13 hpow
  have h100pow : 0 < 100 ^ 12 :=
    Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 1)
      (Nat.one_le_pow 12 100 (by decide : (0 : Nat) < 100))
  have hdiv : 0 < 13 * 100 ^ 12 :=
    Nat.mul_pos (by decide : (0 : Nat) < 13) h100pow
  have hmul : k * (13 * 100 ^ 12) ≤ A ^ 4 := by
    calc
      k * (13 * 100 ^ 12) ≤ k * (13 * B ^ 12) :=
        Nat.mul_le_mul_left k h13
      _ ≤ k * S_13 C B := Nat.mul_le_mul_left k hSge
      _ = A ^ 4 := hprod.symm
  exact (Nat.le_div_iff_mul_le hdiv).mpr hmul

/-! ## `k ≥ B` forces `A ≥ 9 B³` when `B > 100` -/

theorem two_pow_sum_range_13 :
    (Finset.range 13).sum (fun i => (2 : Nat) ^ i) = 8191 := by
  decide

/-- `C ≥ 2 B` makes every cyclotomic term at
least `2ⁱ B¹²`, so `S ≥ 8191 B¹²`. -/
theorem S_13_ge_8191_mul_B_pow12_of_C_ge_2B (C B : Nat)
    (hCge : 2 * B ≤ C) : 8191 * B ^ 12 ≤ S_13 C B := by
  have hterm : ∀ i ∈ Finset.range 13,
      2 ^ i * B ^ 12 ≤ C ^ i * B ^ (12 - i) := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have h2B : 2 * B ≤ C := hCge
    have hmono : (2 * B) ^ i ≤ C ^ i := Nat.pow_le_pow_left h2B i
    have hpow2 : (2 * B) ^ i = 2 ^ i * B ^ i := Nat.mul_pow 2 B i
    have hB : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    calc
      2 ^ i * B ^ 12 = 2 ^ i * (B ^ i * B ^ (12 - i)) := by rw [hB]
      _ = (2 ^ i * B ^ i) * B ^ (12 - i) := by rw [Nat.mul_assoc]
      _ = (2 * B) ^ i * B ^ (12 - i) := by rw [hpow2]
      _ ≤ C ^ i * B ^ (12 - i) := Nat.mul_le_mul_right _ hmono
  have hsum :
      (Finset.range 13).sum (fun i => 2 ^ i * B ^ 12)
        ≤ (Finset.range 13).sum (fun i => C ^ i * B ^ (12 - i)) :=
    Finset.sum_le_sum hterm
  have hcard :
      (Finset.range 13).sum (fun i => 2 ^ i * B ^ 12) =
        8191 * B ^ 12 := by
    rw [← Finset.sum_mul, two_pow_sum_range_13]
  have hphi : S_13 C B = phi13 C B := S_13_eq_phi13 C B
  rw [hphi, phi13, ← hcard]
  exact hsum

theorem nine_pow_four : (9 : Nat) ^ 4 = 6561 := by decide

/-- `k ≥ B` gives `C ≥ 2 B`, hence `S ≥ 8191 B¹²`
and `A⁴ ≥ 8191 B¹³ ≥ 6561 B¹² = (9 B³)⁴`. -/
theorem k_ge_B_imp_A_large (A B C k : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hC : C = B + k)
    (hkB : B ≤ k) (_hBgt : 100 < B) : 9 * B ^ 3 ≤ A := by
  have hCge : 2 * B ≤ C := by
    rw [hC, Nat.two_mul]
    exact Nat.add_le_add_left hkB B
  have hSge : 8191 * B ^ 12 ≤ S_13 C B :=
    S_13_ge_8191_mul_B_pow12_of_C_ge_2B C B hCge
  have hprod : A ^ 4 = k * S_13 C B :=
    k_mul_S_eq_A_pow4 A B C k h hC
  have hA4 : 8191 * B ^ 13 ≤ A ^ 4 := by
    have hB13 : B * (8191 * B ^ 12) = 8191 * B ^ 13 := by
      have hpow : B ^ 12 * B = B ^ 13 := (Nat.pow_succ B 12).symm
      rw [← Nat.mul_assoc, Nat.mul_comm B 8191, Nat.mul_assoc,
        Nat.mul_comm B (B ^ 12), hpow]
    calc
      8191 * B ^ 13 = B * (8191 * B ^ 12) := hB13.symm
      _ ≤ k * (8191 * B ^ 12) := Nat.mul_le_mul_right _ hkB
      _ ≤ k * S_13 C B := Nat.mul_le_mul_left k hSge
      _ = A ^ 4 := hprod.symm
  have h6561 : 6561 * B ^ 12 ≤ 8191 * B ^ 13 := by
    have hBpos : 0 < B := Nat.zero_lt_of_lt _hBgt
    have hcoeff : 6561 ≤ 8191 * B :=
      (Nat.le_mul_of_pos_right 8191 hBpos).trans'
        (by decide : (6561 : Nat) ≤ 8191)
    calc
      6561 * B ^ 12 ≤ (8191 * B) * B ^ 12 :=
        Nat.mul_le_mul_right (B ^ 12) hcoeff
      _ = 8191 * (B * B ^ 12) := Nat.mul_assoc _ _ _
      _ = 8191 * (B ^ 12 * B) := by rw [Nat.mul_comm B]
      _ = 8191 * B ^ 13 := by rw [(Nat.pow_succ B 12).symm]
  have hpow : (9 * B ^ 3) ^ 4 ≤ A ^ 4 := by
    have hexpand : (9 * B ^ 3) ^ 4 = 6561 * B ^ 12 := by
      rw [Nat.mul_pow, nine_pow_four, ← Nat.pow_mul]
    exact hexpand ▸ (h6561.trans hA4)
  exact (Nat.pow_le_pow_iff_left (by decide : (4 : Nat) ≠ 0)).mp hpow

/-! ## `k < B` sandwich on `S` -/

theorem S_13_le_13_mul_C_pow12 (C B : Nat) (hCgeB : B ≤ C) :
    S_13 C B ≤ 13 * C ^ 12 := by
  have hterm : ∀ i ∈ Finset.range 13,
      C ^ i * B ^ (12 - i) ≤ C ^ 12 := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hmono : B ^ (12 - i) ≤ C ^ (12 - i) :=
      Nat.pow_le_pow_left hCgeB (12 - i)
    have hpow : C ^ i * C ^ (12 - i) = C ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    calc
      C ^ i * B ^ (12 - i) ≤ C ^ i * C ^ (12 - i) :=
        Nat.mul_le_mul_left _ hmono
      _ = C ^ 12 := hpow
  have hsum :
      (Finset.range 13).sum (fun i => C ^ i * B ^ (12 - i))
        ≤ (Finset.range 13).sum (fun _ => C ^ 12) :=
    Finset.sum_le_sum hterm
  have hcard :
      (Finset.range 13).sum (fun _ => C ^ 12) = 13 * C ^ 12 := by
    rw [Finset.sum_const, Finset.card_range, Nat.nsmul_eq_mul]
  have hphi : S_13 C B = phi13 C B := S_13_eq_phi13 C B
  rw [hphi, phi13]
  exact hcard ▸ hsum

/-- `k < B` is the `C < 2 B` slice:
`13 B¹² ≤ S ≤ 13 C¹²`. -/
theorem k_lt_B_imp_S_between (C B k : Nat)
    (hC : C = B + k) (hkB : k < B) (_hBpos : 0 < B) :
    13 * B ^ 12 ≤ S_13 C B ∧ S_13 C B ≤ 13 * C ^ 12 := by
  have hBC : B ≤ C := by
    rw [hC]
    exact Nat.le_add_right B k
  have _hC2 : C < 2 * B := by
    rw [hC, Nat.two_mul]
    exact Nat.add_lt_add_left hkB B
  exact ⟨S_13_ge_13_mul_B_pow12 C B hBC,
    S_13_le_13_mul_C_pow12 C B hBC⟩

/-! ## Honesty lock and uninhabited slice -/

abbrev genus_X0_2_rat : ℚ :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.genus_X0_2_rat

theorem genus_X0_2_rat_eq_zero : genus_X0_2_rat = 0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.genus_X0_2_rat_eq_zero

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Closing `B > 100` still needs
`S_not_fourth_power` (unconditional `¬ p² ∣ S`
is false by Hensel) and the missing
`Modular W → ExistsNewformLevel2` (`0 ≠ 0`)
arrow that would inhabit
`beal_mixed_pow2_implies_level_2_newform`. -/
def beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B →
    100 < B →
    (¬ ∃ v : Nat,
      S_13 C B = v ^ 4 ∨
        S_13 C B = 13 * v ^ 4 ∨
          S_13 C B = 13 ^ 3 * v ^ 4) →
    ExistsNewformLevel2 →
    False

/-- Uninhabited.  A primitive `p ≡ 1 [MOD 13]`
with `¬ p² ∣ S` is a hypothesis; Hensel
lifts of 13th roots exist. -/
def beal_4_13_13_B_gt_100_slice_uninhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B →
    100 < B →
    (∃ p : Nat, Nat.Prime p ∧ p % 13 = 1 ∧
      ¬ p ^ 2 ∣ S_13 C B) →
    False

/-- Uninhabited.  Unconditional `¬` still needs
`ModularImpliesLevel2Newform`. -/
def beal_from_ribet_upside_down : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited.  The general size gap stays open. -/
def beal_4_13_13_size : Prop :=
  ∀ A B C : Nat,
    0 < A → 0 < B → 0 < C →
    Odd A →
    A ^ 4 + B ^ 13 = C ^ 13 → False

#check A_ge_53_of_S_prime
#check k_le_A_pow4_div_13_B_pow12
#check B_gt_100_imp_k_bounded_by_A
#check k_ge_B_imp_A_large
#check k_lt_B_imp_S_between
#check B_le_100_k_ge_3_no_S_fourth_pow
#check S_13_mod_k
#check gcd_k_S_dvd_13
#check k_almost_fourth_power
#check beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular
#check beal_4_13_13_B_gt_100_slice_uninhabited
#check beal_from_ribet_upside_down
#check beal_4_13_13_size
#check genus_X0_2_rat
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms A_ge_53_of_S_prime
#print axioms k_le_A_pow4_div_13_B_pow12
#print axioms B_gt_100_imp_k_bounded_by_A
#print axioms k_ge_B_imp_A_large
#print axioms k_lt_B_imp_S_between
#print axioms genus_X0_2_rat_eq_zero
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan
