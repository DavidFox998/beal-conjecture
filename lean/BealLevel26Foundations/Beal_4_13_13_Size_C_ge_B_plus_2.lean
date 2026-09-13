/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.2 — `C ≥ B+2` size bound for `4,13,13`.
`C¹³ − B¹³ = (C−B) · (13-term sum)`, each term
`≥ B¹²`, and `C−B ≥ 2`, so the difference is
`≥ 26 B¹²`.  Not `interval_cases` on unbounded
`C−B`.  The `C = B+2` table `B ∈ [1, 100]`
kernel-checks the inequality.

Does **not** inhabit `zsigmondy_13`.
Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import Mathlib.Algebra.GeomSum
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Size_C_ge_B_plus_2

/-- Displayed difference `C¹³ − B¹³`. -/
def C_pow13_sub_B_pow13 (C B : Nat) : Nat :=
  C ^ 13 - B ^ 13

theorem C_pow13_sub_B_pow13_eq (C B : Nat) :
    C_pow13_sub_B_pow13 C B = C ^ 13 - B ^ 13 :=
  rfl

/-- `C ≥ B+2` gives `C¹³ − B¹³ ≥ 26 B¹²` for every
`B`, not only `B ≤ 100`.  Same 13-term sum as
v8.19.1, times `C−B ≥ 2`. -/
theorem C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2
    {B C : Nat} (hCge : B + 2 ≤ C) :
    26 * B ^ 12 ≤ C ^ 13 - B ^ 13 := by
  have hBC : B ≤ C := Nat.le_trans (Nat.le_add_right B 2) hCge
  have hC : C - B + B = C := Nat.sub_add_cancel hBC
  have hgeom :
      (∑ i ∈ Finset.range 13,
          (C - B + B) ^ i * B ^ (13 - 1 - i)) * (C - B) + B ^ 13
        = (C - B + B) ^ 13 :=
    geom_sum₂_mul_add (C - B) B 13
  have hS :
      (∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i)) * (C - B)
          + B ^ 13
        = C ^ 13 := by
    simpa [hC] using hgeom
  have hdiff :
      C ^ 13 - B ^ 13
        = (∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i))
            * (C - B) := by
    rw [← hS, Nat.add_comm, Nat.add_sub_cancel_left]
  have hterm : ∀ i ∈ Finset.range 13,
      B ^ 12 ≤ C ^ i * B ^ (13 - 1 - i) := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hpow : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    have hmono : B ^ i ≤ C ^ i :=
      Nat.pow_le_pow_left hBC i
    have : B ^ i * B ^ (12 - i) ≤ C ^ i * B ^ (12 - i) :=
      Nat.mul_le_mul_right _ hmono
    have hidx : 13 - 1 - i = 12 - i := by
      simp
    simpa [hidx, hpow] using this
  have hsum :
      13 * B ^ 12
        ≤ ∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i) := by
    have :
        ∑ i ∈ Finset.range 13, B ^ 12
          ≤ ∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i) :=
      Finset.sum_le_sum hterm
    simpa [Finset.sum_const, Finset.card_range] using this
  have hge2 : 2 ≤ C - B := by
    have : B + 2 ≤ C := hCge
    omega
  have hprod :
      13 * B ^ 12 * 2
        ≤ (∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i))
            * (C - B) :=
    Nat.mul_le_mul hsum hge2
  have h26 : 13 * B ^ 12 * 2 = 26 * B ^ 12 := by
    ring
  rw [hdiff, ← h26]
  exact hprod

/-- User-named `B ≤ 100` slice.  Follows from the
general bound; not `interval_cases` on `C−B`. -/
theorem C13_sub_B13_ge_26_mul_B12_of_C_ge_B_plus_2_B_le_100
    (B C : Nat) (hB1 : 1 ≤ B) (hB100 : B ≤ 100)
    (hCge : B + 2 ≤ C) (_hCgtB : B < C) :
    26 * B ^ 12 ≤ C_pow13_sub_B_pow13 C B := by
  let _ := hB1
  let _ := hB100
  simpa [C_pow13_sub_B_pow13] using
    C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2 hCge

/-- From `A⁴ + B¹³ = C¹³` and `C ≥ B+2`. -/
theorem beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2
    {A B C : Nat} (heq : A ^ 4 + B ^ 13 = C ^ 13)
    (hCge : B + 2 ≤ C) :
    26 * B ^ 12 ≤ A ^ 4 := by
  have hdiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← heq, Nat.add_comm, Nat.add_sub_cancel_left]
  exact (C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2 hCge).trans_eq
    hdiff

theorem beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2_B_le_100
    (A B C : Nat) (heq : A ^ 4 + B ^ 13 = C ^ 13)
    (hB1 : 1 ≤ B) (hB100 : B ≤ 100) (hCge : B + 2 ≤ C) :
    26 * B ^ 12 ≤ A ^ 4 := by
  let _ := hB1
  let _ := hB100
  exact beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2 heq hCge

/-- First twenty `C = B+2` rows `(B, C, C¹³−B¹³)`. -/
def beal_size_B_le_100_C_eq_B_plus_2_table : List (Nat × Nat × Nat) :=
  [(1, 3, 1594322), (2, 4, 67100672), (3, 5, 1219108802),
    (4, 6, 12993585152), (5, 7, 95668307282),
    (6, 8, 536695119872), (7, 9, 2444976817922),
    (8, 10, 9450244186112), (9, 11, 31980846315602),
    (10, 12, 96993205379072), (11, 13, 268352394448322),
    (12, 14, 686721567875072), (13, 15, 1643319961767122),
    (14, 16, 3709884854116352), (15, 17, 7958382964546562),
    (16, 18, 16319365238300672), (17, 19, 32148405429351122),
    (18, 20, 61097035134328832), (19, 21, 112419394276862402),
    (20, 22, 200890057883082752)]

def sizeDiff13_C_eq_B_plus_2 (B : Nat) : Nat :=
  (B + 2) ^ 13 - B ^ 13

set_option maxHeartbeats 8000000

/-- Kernel-check: `C = B+2` difference is at least
`26 B¹²` for every `B ∈ [1, 100]`. -/
theorem size_table_C_eq_B_plus_2_lower_bound_B_le_100 :
    ∀ B ∈ Finset.Icc 1 100,
      26 * B ^ 12 ≤ sizeDiff13_C_eq_B_plus_2 B := by
  decide

theorem size_table_C_eq_B_plus_2_head :
    beal_size_B_le_100_C_eq_B_plus_2_table.head? =
      some (1, 3, 1594322) := by
  decide

theorem size_table_C_eq_B_plus_2_B1 :
    sizeDiff13_C_eq_B_plus_2 1 = 1594322 := by
  decide

end BealLevel26Foundations.Beal_4_13_13_Size_C_ge_B_plus_2
