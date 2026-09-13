/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.7 — `C ≥ B+k` gives
`A⁴ ≥ 13·k·B¹²` from the 13-term sum
(each term `≥ B¹²` when `C ≥ B`).
`C ≥ B+3` specialises to `A⁴ ≥ 39·B¹²`,
so in reals `A ≥ 39^{1/4} B³ ≈ 2.49 B³`.
For `B ≥ 1` this is already `A ≥ 2 B³ + 1`
because `(2 B³)⁴ = 16 B¹² < 39 B¹²`.
It does *not* force `A ≥ 3 B³`
(`(3 B³)⁴ = 81 B¹²` and `39 < 81`).

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

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13

/-- Same 13-term sum as Step 4:
`C^12 + C^11 B + ⋯ + B^12`. -/
def S_13 (C B : Nat) : Nat :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13 C B

theorem S_13_eq_step4 (C B : Nat) :
    S_13 C B =
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13 C B :=
  rfl

/-- When `C ≥ B`, each of the 13 terms is at
least `B^12`, so the sum is at least `13 B^12`. -/
theorem S_13_ge_13_mul_B_pow12 (C B : Nat) (hCgeB : B ≤ C) :
    S_13 C B ≥ 13 * B ^ 12 := by
  have hterm : ∀ i ∈ Finset.range 13,
      B ^ 12 ≤ C ^ i * B ^ (12 - i) := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hmono : B ^ i ≤ C ^ i := Nat.pow_le_pow_left hCgeB i
    have hpow : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    calc
      B ^ 12 = B ^ i * B ^ (12 - i) := hpow.symm
      _ ≤ C ^ i * B ^ (12 - i) := Nat.mul_le_mul_right _ hmono
  have hsum :
      (Finset.range 13).sum (fun _ => B ^ 12)
        ≤ (Finset.range 13).sum (fun i => C ^ i * B ^ (12 - i)) :=
    Finset.sum_le_sum hterm
  have hcard :
      (Finset.range 13).sum (fun _ => B ^ 12) = 13 * B ^ 12 := by
    rw [Finset.sum_const, Finset.card_range, Nat.nsmul_eq_mul]
  have hphi : S_13 C B = phi13 C B := S_13_eq_phi13 C B
  rw [hphi, phi13]
  exact hcard ▸ hsum

/-- `C ≥ B+k` and `C ≥ B` give `C-B ≥ k` and
`S_13 ≥ 13 B^12`, so
`C^13 - B^13 = (C-B) * S_13 ≥ 13 k B^12`. -/
theorem C13_sub_B13_ge_13_k_mul_B_pow12 (C B k : Nat)
    (hCgeB : B ≤ C) (hCgeBk : B + k ≤ C) :
    C ^ 13 - B ^ 13 ≥ 13 * k * B ^ 12 := by
  have hEq : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  have hSge : 13 * B ^ 12 ≤ S_13 C B :=
    S_13_ge_13_mul_B_pow12 C B hCgeB
  have hCminusBgeK : k ≤ C - B :=
    (Nat.le_sub_iff_add_le hCgeB).mpr (by
      simpa [Nat.add_comm] using hCgeBk)
  have hmul : k * (13 * B ^ 12) ≤ (C - B) * S_13 C B :=
    Nat.mul_le_mul hCminusBgeK hSge
  have hrearr : k * (13 * B ^ 12) = 13 * k * B ^ 12 := by
    rw [← Nat.mul_assoc, Nat.mul_comm k 13]
  calc
    13 * k * B ^ 12 = k * (13 * B ^ 12) := hrearr.symm
    _ ≤ (C - B) * S_13 C B := hmul
    _ = C ^ 13 - B ^ 13 := hEq.symm

/-- On a Beal `4/13/13` tuple with `C ≥ B+k`,
`A^4 = C^13 - B^13 ≥ 13 k B^12`. -/
theorem beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k
    (A B C k : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCgeB : B ≤ C) (hCgeBk : B + k ≤ C) :
    A ^ 4 ≥ 13 * k * B ^ 12 := by
  have hDiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  have hGe : C ^ 13 - B ^ 13 ≥ 13 * k * B ^ 12 :=
    C13_sub_B13_ge_13_k_mul_B_pow12 C B k hCgeB hCgeBk
  omega

/-- Specialise `k = 3`: `C ≥ B+3` implies
`A^4 ≥ 39 B^12` (`13 * 3 = 39`). -/
theorem beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCgeB : B ≤ C) (hCgeB3 : B + 3 ≤ C) :
    A ^ 4 ≥ 39 * B ^ 12 := by
  have hA4 : A ^ 4 ≥ 13 * 3 * B ^ 12 :=
    beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k
      A B C 3 h hCgeB hCgeB3
  have h39 : (13 : Nat) * 3 = 39 := by decide
  simpa [h39] using hA4

/-- `C ≥ B+k` already implies `C ≥ B`. -/
theorem C_ge_B_plus_k_implies_A_pow4_ge_13kB12
    (A B C k : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCgeBk : B + k ≤ C) :
    A ^ 4 ≥ 13 * k * B ^ 12 :=
  beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k A B C k h
    (Nat.le_trans (Nat.le_add_right B k) hCgeBk) hCgeBk

/-- For `B ≥ 1`, `A^4 ≥ 39 B^12 > 16 B^12 = (2 B^3)^4`,
so `A ≥ 2 B^3 + 1`.  Real-size note:
`39^{1/4} ≈ 2.49`, the integer floor of
`A ≥ 39^{1/4} B^3`. -/
theorem beal_4_13_13_A_ge_2_mul_B_pow_3_succ_of_C_ge_B_plus_3
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hCgeB : B ≤ C) (hCgeB3 : B + 3 ≤ C) (hBpos : 1 ≤ B) :
    2 * B ^ 3 + 1 ≤ A := by
  have hA4 : 39 * B ^ 12 ≤ A ^ 4 :=
    beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3
      A B C h hCgeB hCgeB3
  have h16lt39 : 16 * B ^ 12 < 39 * B ^ 12 :=
    Nat.mul_lt_mul_of_pos_right (by decide : (16 : Nat) < 39)
      (Nat.pow_pos hBpos)
  have hpow4 : (2 * B ^ 3) ^ 4 = 16 * B ^ 12 := by
    rw [Nat.mul_pow, ← Nat.pow_mul]
  have hA4gt : (2 * B ^ 3) ^ 4 < A ^ 4 := by omega
  exact Nat.succ_le_of_lt (lt_of_pow_lt_pow_left' (4 : Nat) hA4gt)

/-- `A ≥ 3 B^3` does *not* follow from
`A^4 ≥ 39 B^12`: `(3 B^3)^4 = 81 B^12`
and `39 < 81`. Real bound is `≈ 2.49 B^3`. -/
def beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    B ≤ C → B + 3 ≤ C → 3 * B ^ 3 ≤ A

/-- B ≤ 100 and C ≥ B+3 is still not a closed
slice (no gap-≥3 table). -/
def beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B →
    1 ≤ B → B ≤ 100 → B + 3 ≤ C → False

/-- The general Beal `4/13/13` Prop stays a Prop. -/
def beal_4_13_13 : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C →
    Nat.Coprime A B → Nat.Coprime A C → Nat.Coprime B C →
    A ^ 4 + B ^ 13 = C ^ 13 → False

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
