/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.23.1 — plan Zsigmondy `v_p(S) = 1`
to close the last odd lock.

Inhabited:
`S_val`, `S_bounds`,
`thirteen_dvd_S_of_13_nmid_B`,
`gcd_k_S_dvd_13` (honest wrap:
`C = B+k`, `0 < k`, `Coprime k B`;
**not** the sketch `hEq : True`),
`k_shape_1_13_13cubed`
(`g ∈ {1, 13, 2197}` with
`gcd(k,S) ∣ 13`; **not**
`∃ g, g ∣ 13`, which drops `13³`).

Keeps v8.23.0 `S_bounds_13_B12_le_S_le_13_C12`
/ `k_almost_fourth_power_shape`,
v8.22.1 `oddPart_rec` / `2q`,
v8.22.0 radical `N'`,
v8.21.1 `frey_curve_conductor`,
v8.21.0 `k` bounds,
v8.20.1 `B ≤ 100` (with the honest
`S_not_fourth` hypothesis on `C ≥ B+3`),
v8.20.0 `gcd(k,S) ∣ 13`,
`genus_X0_2_rat = 0`.

Uninhabited (honest):
`zsigmondy_exists_primitive`,
`zsigmondy_vp_S_eq_one`,
`zsig_p_not_dvd_k_of_gcd`,
`S_times_g_not_fourth_of_vp1`,
`beal_odd_A_ge3_B_gt_100_closed_via_zsig`,
`beal_odd_A_closed_v8_23_1`,
`beal_4_13_13_full_closed_mod_modular_v8_23_1`,
`beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan`.
Plus Kraus / `X₀(2q)`, `X₀(26)` matching,
and Modular W (`0 ≠ 0`).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p² ∣ S`
(Hensel lifts exist).  Conditional
`v_p(S) = 1` when `p` is a Zsigmondy
primitive prime with `p ∤ (C−B)` stays
an uninhabited Prop.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import BealLevel26Foundations.Chain.Level2
import Mathlib.Algebra.CharP.Basic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.ModEq
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Set.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (S_13 C13_sub_B13_eq_sub_mul_S)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
  (S_eq_div_of_B_lt_C S_bounds_13_B12_le_S_le_13_C12
    k_almost_fourth_power_shape k_le_A4_div_13_B12
    B_gt_100_k_bounded k_ge_B_imp_A_ge_9B3)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (oddPart_rec rad oddPart_def rad_dvd_pow
    even_not_pow2_has_odd_prime_q level_2q_of_odd_prime_dvd_A
    kraus_criterion_q_ne_13 X0_2q_no_Frey_match
    beal_even_A_closed_v8_22_1)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (even_not_pow2_has_odd_prime frey_conductor_even_A
    minimal_level_26_of_13_dvd_A X0_26_no_matching_newform)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift
    ribet_level_lowering_to_2 X0_2_no_newforms)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (beal_4_13_13_B_le_100_closed)

/-! ## Inhabited S-value, bounds, 13 | S, k-shape -/

/-- Sketch name: `S = (C¹³ − B¹³)/(C − B)`.
Equals `S_13 C B` when `B < C`. -/
def S_val (B C : Nat) : Nat :=
  (C ^ 13 - B ^ 13) / (C - B)

theorem S_val_eq_S_13_of_B_lt_C (B C : Nat) (hBltC : B < C) :
    S_val B C = S_13 C B :=
  S_eq_div_of_B_lt_C B C hBltC

/-- When `B < C`, `13 B¹² ≤ S_val ≤ 13 C¹²`. -/
theorem S_bounds (B C : Nat) (hBltC : B < C) :
    13 * B ^ 12 ≤ S_val B C ∧ S_val B C ≤ 13 * C ^ 12 := by
  simpa [S_val] using S_bounds_13_B12_le_S_le_13_C12 B C hBltC

theorem thirteen_pow_three : (13 : Nat) ^ 3 = 2197 := by
  decide

theorem zmod13_eq_of_mod_eq (B C : Nat)
    (h : B % 13 = C % 13) :
    (B : ZMod 13) = (C : ZMod 13) := by
  have hB : (B : ZMod 13) = ((B % 13 : Nat) : ZMod 13) :=
    (ZMod.natCast_mod B 13).symm
  have hC : (C : ZMod 13) = ((C % 13 : Nat) : ZMod 13) :=
    (ZMod.natCast_mod C 13).symm
  rw [hB, hC, h]

/-- `13 ∤ B` and `B ≡ C [MOD 13]` force `13 ∤ C`. -/
theorem thirteen_nmid_C_of_nmid_B (B C : Nat)
    (h13nmidB : ¬ 13 ∣ B) (hBeqCmod13 : B % 13 = C % 13) :
    ¬ 13 ∣ C := by
  intro hC
  have hBmod : B % 13 = 0 := by
    rw [hBeqCmod13]
    exact Nat.mod_eq_zero_of_dvd hC
  exact h13nmidB (Nat.dvd_of_mod_eq_zero hBmod)

theorem S_13_zmod13_eq_zero_of_cong (B C : Nat)
    (h : B % 13 = C % 13) :
    (S_13 C B : ZMod 13) = 0 := by
  have hCB : (C : ZMod 13) = (B : ZMod 13) :=
    (zmod13_eq_of_mod_eq B C h).symm
  unfold S_13
  simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_pow]
  rw [hCB]
  have h13 : (13 : ZMod 13) = 0 := CharP.cast_eq_zero (ZMod 13) 13
  ring_nf
  rw [h13, mul_zero]

/-- When `13 ∤ B`, `B < C`, and `B ≡ C [MOD 13]`,
the cyclotomic sum is `0` in `ℤ/13ℤ`.
The congruence `C ≡ B` already makes every
term `≡ B¹²`, so the 13-term sum vanishes;
`¬ 13 ∣ B` records the comment that then
also `13 ∤ C`. -/
theorem thirteen_dvd_S_of_13_nmid_B (B C : Nat)
    (h13nmidB : ¬ 13 ∣ B) (hBltC : B < C)
    (hBeqCmod13 : B % 13 = C % 13) :
    13 ∣ S_val B C := by
  have _h13nmidC : ¬ 13 ∣ C :=
    thirteen_nmid_C_of_nmid_B B C h13nmidB hBeqCmod13
  have hS : S_val B C = S_13 C B :=
    S_val_eq_S_13_of_B_lt_C B C hBltC
  have h0 : (S_13 C B : ZMod 13) = 0 :=
    S_13_zmod13_eq_zero_of_cong B C hBeqCmod13
  have hdvd : 13 ∣ S_13 C B :=
    (ZMod.natCast_zmod_eq_zero_iff_dvd (S_13 C B) 13).mp h0
  rwa [hS]

/-- Honest wrap of v8.20.0 `gcd(k,S) ∣ 13`.
Needs `C = B+k`, `0 < k` (so `B < C` and
`S_val = S_13`), and `Coprime k B`.
The sketch `hEq : True` is junk and is
not used. -/
theorem gcd_k_S_dvd_13 (B k C : Nat)
    (hC : C = B + k) (hkpos : 0 < k)
    (hCoprimeKB : Nat.Coprime k B) :
    Nat.gcd k (S_val B C) ∣ 13 := by
  have hBltC : B < C := by
    rw [hC]
    exact Nat.lt_add_of_pos_right hkpos
  have hS :
      S_val B C =
        BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 C B := by
    rw [S_val_eq_S_13_of_B_lt_C B C hBltC]
    rfl
  exact
    BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_dvd_13
      B k C (S_val B C) hC hS hCoprimeKB

/-- `A⁴ = k S` and `gcd(k,S) ∣ 13` force
`k = g · u⁴` for `g ∈ {1, 13, 13³}`.
The gcd hypothesis is required: without
it the claim is false. -/
theorem k_shape_1_13_13cubed (A B C k : Nat)
    (hA4 : A ^ 4 = k * S_val B C)
    (hgcd : Nat.gcd k (S_val B C) ∣ 13) :
    ∃ g, g ∈ ({1, 13, 2197} : Set Nat) ∧
      ∃ u, k = g * u ^ 4 := by
  have h :=
    k_almost_fourth_power_shape A k (S_val B C) hA4 hgcd
  rcases h with ⟨u, hu⟩ | ⟨u, hu⟩ | ⟨u, hu⟩
  · refine ⟨1, ?_, u, ?_⟩
    · simp
    · rw [hu]; ring
  · exact ⟨13, by simp, u, hu⟩
  · refine ⟨2197, by simp, u, ?_⟩
    rw [hu, thirteen_pow_three]

/-! ## Honesty lock and uninhabited Zsigmondy / v_p arrows -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Existence of a primitive
Zsigmondy prime of `S` with `p ≡ 1 [MOD 13]`
and `p ∤ (C−B)`.  A nearby inhabited fact
is Step11 `primitive_prime_dvd_S`; this
bundled sketch name stays a plan Prop. -/
def zsigmondy_exists_primitive : Prop :=
  ∀ B C : Nat, B < C → Nat.Coprime B C →
    ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
      ¬ p ∣ (C - B) ∧ p % 13 = 1

/-- Uninhabited.  Bundled `v_p(S) = 1` from
only `p ∣ S`, `p ∤ (C−B)`, `p ≠ 13`.
Unconditional `¬ p² ∣ S` is false (Hensel).
Step11 `v_p_S_eq_one` needs the extra
order-`≠ 13` hypothesis and is not this
bundle. -/
def zsigmondy_vp_S_eq_one : Prop :=
  ∀ B C p : Nat,
    Nat.Prime p → p ∣ S_val B C →
    ¬ p ∣ (C - B) → p ≠ 13 →
    Nat.factorization (S_val B C) p = 1

/-- Uninhabited.  `gcd(k,S) ∣ 13` and
`p ≡ 1 [MOD 13]` force `p ∤ k`. -/
def zsig_p_not_dvd_k_of_gcd : Prop :=
  ∀ k B C p : Nat,
    Nat.Prime p → p ∣ S_val B C → p % 13 = 1 →
    Nat.gcd k (S_val B C) ∣ 13 →
    ¬ p ∣ k

/-- Uninhabited.  `S · g` is not a fourth
power from a genuine `v_p(S) = 1`
hypothesis.  `True` is not that lock. -/
def S_times_g_not_fourth_of_vp1 : Prop :=
  ∀ B C g p : Nat,
    Nat.Prime p → p ∣ S_val B C →
    Nat.factorization (S_val B C) p = 1 →
    p % 13 = 1 → g ∣ 2197 →
    ¬ ∃ w, S_val B C * g = w ^ 4

/-- Uninhabited.  `B > 100` still needs
Zsigmondy `v_p = 1` plus Modular W. -/
def beal_odd_A_ge3_B_gt_100_closed_via_zsig : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → 100 < B →
    False

/-- Uninhabited.  Odd-`A` close packages
the uninhabited `B > 100` lock.  Does
**not** inhabit a bare `B ≤ 100` close
without the honest `S_not_fourth`
hypothesis on `C ≥ B+3`. -/
def beal_odd_A_closed_v8_23_1 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A →
    False

/-- Uninhabited.  Even-`A` close is still
a Prop from v8.22.1. -/
def beal_4_13_13_full_closed_mod_modular_v8_23_1 : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

#check S_val
#check S_bounds
#check thirteen_dvd_S_of_13_nmid_B
#check gcd_k_S_dvd_13
#check k_shape_1_13_13cubed
#check S_bounds_13_B12_le_S_le_13_C12
#check k_almost_fourth_power_shape
#check oddPart_rec
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check even_not_pow2_has_odd_prime
#check frey_conductor_even_A
#check minimal_level_26_of_13_dvd_A
#check frey_curve_conductor
#check B_gt_100_k_bounded
#check beal_4_13_13_B_le_100_closed
#check zsigmondy_exists_primitive
#check zsigmondy_vp_S_eq_one
#check zsig_p_not_dvd_k_of_gcd
#check S_times_g_not_fourth_of_vp1
#check beal_odd_A_ge3_B_gt_100_closed_via_zsig
#check beal_odd_A_closed_v8_23_1
#check beal_4_13_13_full_closed_mod_modular_v8_23_1
#check beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check X0_26_no_matching_newform
#check modular_W_lift
#check ribet_level_lowering_to_2
#check X0_2_no_newforms
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_bounds
#print axioms thirteen_dvd_S_of_13_nmid_B
#print axioms gcd_k_S_dvd_13
#print axioms k_shape_1_13_13cubed
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
