/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.24.0 — inhabit Zsigmondy primitive
existence and the `v_p = 1` arithmetic,
and close odd `A ≥ 3` **from** a genuine
`v_p(S) = 1` hypothesis.

Mathlib 4.12 has no
`Mathlib.NumberTheory.Zsigmondy`.
Existence wraps Step11
`primitive_prime_dvd_S`.

Inhabited:
`S_val`, `S_bounds`,
`thirteen_dvd_S_of_BeqC_mod13`,
`gcd_k_S_dvd_13_honest`
(`C = B+k`, `0 < k`, `Coprime k B`;
**not** the sketch `hEq : True`),
`k_shape_1_13_13cubed`
(`g ∈ {1, 13, 2197}` with
`gcd(k,S) ∣ 13`),
`zsigmondy_exists_primitive_inhabited`,
`zsig_p_not_dvd_k_of_gcd_inhabited`,
`S_times_g_not_fourth_of_vp1_inhabited`
(needs a real `factorization p = 1`;
**not** `hvp1 : True`),
`zsigmondy_vp_S_eq_one_inhabited`
(Step11 order in `(ZMod (p^2))ˣ` is not 13;
**not** `hPrim : True`),
`beal_odd_A_ge3_closed_of_vp1`,
`beal_odd_A_ge3_B_gt_100_closed_of_vp1`.

Keeps v8.23.1 S-bounds / k-shape,
v8.22.1 `oddPart_rec` / `2q`,
v8.22.0 radical `N'`,
v8.21.1 `frey_curve_conductor`,
v8.20.1 `B ≤ 100` (with the honest
`S_not_fourth` hypothesis on `C ≥ B+3`),
`genus_X0_2_rat = 0`.

Uninhabited (honest):
unconditional bundled `v_p(S) = 1`
from only `p ∣ S`, `p ∤ (C−B)`, `p ≠ 13`
(Hensel lifts exist);
bare `beal_odd_A_ge3_B_le_100_closed`
without `S_not_fourth` on `C ≥ B+3`;
bare `beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited`
without `v_p = 1`;
`beal_odd_A_closed_v8_24_0`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0`,
`beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan`.
Plus Kraus / `X₀(2q)`, `X₀(26)` matching,
and Modular W (`0 ≠ 0`).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p² ∣ S`.
Does **not** inhabit a new Beal `∀`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Set.Basic
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds thirteen_pow_three
    thirteen_dvd_S_of_13_nmid_B gcd_k_S_dvd_13 k_shape_1_13_13cubed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
  (S_bounds_13_B12_le_S_le_13_C12 k_almost_fourth_power_shape)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (oddPart_rec even_not_pow2_has_odd_prime_q
    level_2q_of_odd_prime_dvd_A
    kraus_criterion_q_ne_13 X0_2q_no_Frey_match
    beal_even_A_closed_v8_22_1)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (even_not_pow2_has_odd_prime frey_conductor_even_A
    minimal_level_26_of_13_dvd_A X0_26_no_matching_newform)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift
    ribet_level_lowering_to_2 X0_2_no_newforms)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (primitive_prime_dvd_S v_p_S_eq_one v_p_S_eq_one_of_not_square
    order_mod_p2 coprime_pow_two_of_not_dvd
    beal_4_13_13_B_le_100_closed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
  (B_le_C_of_beal_4_13_13 C_eq_B_add_k
    gcd_k_B_eq_one_of_coprime_C_B)

/-! ## Inhabited wraps from v8.23.1 -/

theorem thirteen_dvd_S_of_BeqC_mod13 (B C : Nat)
    (hBltC : B < C) (hBeq : B % 13 = C % 13)
    (h13nmidB : ¬ 13 ∣ B) :
    13 ∣ S_val B C :=
  thirteen_dvd_S_of_13_nmid_B B C h13nmidB hBltC hBeq

/-- Honest wrap: `C = B+k`, `0 < k`, `Coprime k B`.
The sketch `hEq : True` is junk and is not used. -/
theorem gcd_k_S_dvd_13_honest (B C k : Nat)
    (hCeq : C = B + k) (hkpos : 0 < k)
    (hCop : Nat.Coprime k B) (_hBltC : B < C) :
    Nat.gcd k (S_val B C) ∣ 13 :=
  gcd_k_S_dvd_13 B k C hCeq hkpos hCop

/-! ## Zsigmondy existence and gcd / fourth-power arithmetic -/

/-- A primitive prime of `C¹³ − B¹³` divides `S`,
misses `C−B`, is `≡ 1 [MOD 13]`, and is not `13`.
Wraps Step11 `primitive_prime_dvd_S`. -/
theorem zsigmondy_exists_primitive_inhabited
    (B C : Nat) (hBltC : B < C) (hCop : Nat.Coprime B C)
    (hBge1 : 1 ≤ B) :
    ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      p % 13 = 1 ∧ p ≠ 13 := by
  have hBpos : 0 < B := hBge1
  obtain ⟨p, hp, hpS, hpnot, hpmod, hpne⟩ :=
    primitive_prime_dvd_S C B hBltC hBpos hCop.symm
  refine ⟨p, hp, ?_, hpnot, hpmod, hpne⟩
  rwa [S_val_eq_S_13_of_B_lt_C B C hBltC]

theorem p_mod_13_eq_1_ne_thirteen (p : Nat) (hpmod : p % 13 = 1) :
    p ≠ 13 := by
  intro h
  have : (13 : Nat) % 13 = 1 := by rwa [h] at hpmod
  exact (by decide : (13 : Nat) % 13 ≠ 1) this

/-- `gcd(k,S) ∣ 13` and `p ≡ 1 [MOD 13]` force `p ∤ k`. -/
theorem zsig_p_not_dvd_k_of_gcd_inhabited
    (k B C p : Nat) (hPrime : Nat.Prime p)
    (hpS : p ∣ S_val B C) (hpmod : p % 13 = 1)
    (hgcd : Nat.gcd k (S_val B C) ∣ 13) :
    ¬ p ∣ k := by
  have hpne13 : p ≠ 13 := p_mod_13_eq_1_ne_thirteen p hpmod
  intro hpdivk
  have hpdivgcd : p ∣ Nat.gcd k (S_val B C) :=
    Nat.dvd_gcd hpdivk hpS
  have hpdiv13 : p ∣ 13 := Nat.dvd_trans hpdivgcd hgcd
  rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp hpdiv13 with h1 | h13
  · exact Nat.Prime.ne_one hPrime h1
  · exact hpne13 h13

theorem g_mem_imp_dvd_2197 (g : Nat)
    (hgmem : g ∈ ({1, 13, 2197} : Set Nat)) :
    g ∣ 2197 := by
  have hg : g = 1 ∨ g = 13 ∨ g = 2197 := by
    simpa [Set.mem_insert, Set.mem_singleton] using hgmem
  rcases hg with rfl | rfl | rfl
  · exact ⟨2197, by decide⟩
  · exact ⟨169, by decide⟩
  · exact ⟨1, by decide⟩

/-- Conditional `v_p(S) = 1` from the Step11
`(ℤ/p²)ˣ` order-`≠ 13` dichotomy.
**Not** the sketch `hPrim : True`.
Unconditional `¬ p² ∣ S` is false (Hensel). -/
theorem zsigmondy_vp_S_eq_one_inhabited
    (B C p : Nat) (hPrime : Nat.Prime p)
    (hpS : p ∣ S_val B C) (hpnot : ¬ p ∣ (C - B))
    (_hp13 : p ≠ 13) (hBltC : B < C)
    (hNotDvdC : ¬ p ∣ C) (hNotDvdB : ¬ p ∣ B)
    (hOrd : order_mod_p2 C B p
        (coprime_pow_two_of_not_dvd hPrime hNotDvdC)
        (coprime_pow_two_of_not_dvd hPrime hNotDvdB) ≠ 13) :
    Nat.factorization (S_val B C) p = 1 := by
  have hS : S_val B C =
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13 C B :=
    S_val_eq_S_13_of_B_lt_C B C hBltC
  have hp2 :
      ¬ p ^ 2 ∣
        BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13 C B :=
    v_p_S_eq_one C B p hPrime hBltC hNotDvdC hNotDvdB hpnot hOrd
  have hSne : S_val B C ≠ 0 := by
    intro h0
    have hp2zero : p ^ 2 ∣
        BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13 C B := by
      rw [← hS, h0]
      exact dvd_zero _
    exact hp2 hp2zero
  have hp2S : ¬ p ^ 2 ∣ S_val B C := by
    rwa [hS]
  have hpad : padicValNat p (S_val B C) = 1 :=
    v_p_S_eq_one_of_not_square p (S_val B C) hPrime hSne hpS hp2S
  haveI : Fact p.Prime := ⟨hPrime⟩
  have hfact : Nat.factorization (S_val B C) p = padicValNat p (S_val B C) := by
    simp [Nat.factorization_def, hPrime]
  exact hfact.trans hpad

/-- `S · g` is not a fourth power when a prime
`p ≡ 1 [MOD 13]` dividing `S` has `v_p(S) = 1`
and `g ∣ 13³`.  Needs a genuine `v_p = 1`
hypothesis; `True` is not that lock. -/
theorem S_times_g_not_fourth_of_vp1_inhabited
    (B C g p : Nat) (hPrime : Nat.Prime p)
    (_hpS : p ∣ S_val B C)
    (hvp1 : Nat.factorization (S_val B C) p = 1)
    (hpmod : p % 13 = 1) (hg2197 : g ∣ 2197) :
    ¬ ∃ w, S_val B C * g = w ^ 4 := by
  have hpne13 : p ≠ 13 := p_mod_13_eq_1_ne_thirteen p hpmod
  have hSne : S_val B C ≠ 0 := by
    intro h0
    rw [h0] at hvp1
    have : (0 : Nat).factorization p = 0 := by simp
    exact (by decide : (1 : Nat) ≠ 0) (hvp1.symm.trans this)
  have hgpos : 0 < g :=
    Nat.pos_of_dvd_of_pos hg2197 (by decide : (0 : Nat) < 2197)
  have hgne : g ≠ 0 := Nat.ne_of_gt hgpos
  have hgnotdvd : ¬ p ∣ g := by
    intro hpdvdg
    have hpdiv2197 : p ∣ 2197 := Nat.dvd_trans hpdvdg hg2197
    have hpow : (13 : Nat) ^ 3 = 2197 := thirteen_pow_three
    have : p ∣ 13 ^ 3 := by rwa [hpow]
    have hp13 : p ∣ 13 := Nat.Prime.dvd_of_dvd_pow hPrime this
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp hp13 with h1 | heq
    · exact Nat.Prime.ne_one hPrime h1
    · exact hpne13 heq
  intro h
  rcases h with ⟨w, hw⟩
  have hmul := Nat.factorization_mul hSne hgne
  have hg0 : Nat.factorization g p = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hgnotdvd
  have hleft : Nat.factorization (S_val B C * g) p = 1 := by
    rw [hmul, Finsupp.add_apply, hvp1, hg0]
  have hright : Nat.factorization (w ^ 4) p = 4 * Nat.factorization w p := by
    rw [Nat.factorization_pow, Finsupp.smul_apply, nsmul_eq_mul, Nat.cast_id]
  have h4 : 4 ∣ Nat.factorization (S_val B C * g) p := by
    rw [hw, hright]
    exact dvd_mul_right 4 _
  have : 4 ∣ 1 := by rwa [hleft] at h4
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 1)
    (by decide : (1 : Nat) < 4) this

/-! ## Odd-`A` close **from** a genuine `v_p = 1` -/

theorem B_lt_C_of_beal_A_ge3 (A B C : Nat)
    (hEq : A ^ 4 + B ^ 13 = C ^ 13) (hAge3 : 3 ≤ A) :
    B < C := by
  have hApos : 0 < A := Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 3) hAge3
  have hA4pos : 0 < A ^ 4 := Nat.pos_pow_of_pos 4 hApos
  have hC13 : B ^ 13 < C ^ 13 := by
    have : B ^ 13 < A ^ 4 + B ^ 13 := Nat.lt_add_of_pos_left hA4pos
    rwa [hEq] at this
  exact (Nat.pow_lt_pow_iff_left (by decide : (13 : Nat) ≠ 0)).mp hC13

theorem B_ge_one_of_beal_A_ge3 (A B C : Nat)
    (hEq : A ^ 4 + B ^ 13 = C ^ 13) (hAge3 : 3 ≤ A)
    (hCop : Nat.Coprime B C) :
    1 ≤ B := by
  by_contra hB0
  have hB : B = 0 := Nat.lt_one_iff.mp (Nat.not_le.mp hB0)
  have hC1 : C = 1 := (Nat.coprime_zero_left C).mp (by rwa [hB] at hCop)
  have hA4 : A ^ 4 = 1 := by
    have h : A ^ 4 + 0 ^ 13 = 1 ^ 13 := by
      simpa [hB, hC1] using hEq
    simpa using h
  have hAle1 : A ≤ 1 := by
    have hle : A ^ 4 ≤ 1 ^ 4 := by
      rw [hA4]
      simp
    exact (Nat.pow_le_pow_iff_left (by decide : (4 : Nat) ≠ 0)).mp hle
  exact Nat.not_le.mpr
    (Nat.lt_of_lt_of_le (by decide : (1 : Nat) < 3) hAge3) hAle1

/-- Odd `A ≥ 3` is impossible once a prime
`p ≡ 1 [MOD 13]` dividing `S` has `v_p(S) = 1`.
This is the honest Zsigmondy close: it needs
that valuation, not `True`. -/
theorem beal_odd_A_ge3_closed_of_vp1
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (_hOddA : Odd A) (hAge3 : 3 ≤ A) (hCop : Nat.Coprime B C)
    (hvp1 : ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
      Nat.factorization (S_val B C) p = 1 ∧ p % 13 = 1) :
    False := by
  have hBltC : B < C := B_lt_C_of_beal_A_ge3 A B C hEq hAge3
  have hBge1 : 1 ≤ B := B_ge_one_of_beal_A_ge3 A B C hEq hAge3 hCop
  let k := C - B
  have hC : C = B + k := C_eq_B_add_k B C k (Nat.le_of_lt hBltC) rfl
  have hkpos : 0 < k := Nat.sub_pos_of_lt hBltC
  have hCopk : Nat.Coprime k B :=
    gcd_k_B_eq_one_of_coprime_C_B B C k hCop.symm (Nat.le_of_lt hBltC) rfl
  have hgcd : Nat.gcd k (S_val B C) ∣ 13 :=
    gcd_k_S_dvd_13_honest B C k hC hkpos hCopk hBltC
  have hA4S :
      A ^ 4 = k *
        BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 C B :=
    BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_mul_S_eq_A_pow4
      A B C k hEq hC
  have hA4 : A ^ 4 = k * S_val B C := by
    rwa [S_val_eq_S_13_of_B_lt_C B C hBltC]
  rcases k_shape_1_13_13cubed A B C k hA4 hgcd with ⟨g, hgmem, u, hku⟩
  have hg2197 : g ∣ 2197 := g_mem_imp_dvd_2197 g hgmem
  rcases hvp1 with ⟨p, hPrime, hpS, hfact, hpmod⟩
  have hNotFourth :=
    S_times_g_not_fourth_of_vp1_inhabited B C g p hPrime hpS hfact hpmod hg2197
  have hupos : 0 < u := by
    refine Nat.pos_of_ne_zero ?_
    intro hu0
    have hk0 : k = 0 := by
      rw [hku, hu0]
      simp
    exact Nat.ne_of_gt hkpos hk0
  have hu4 : u ^ 4 ∣ A ^ 4 := by
    rw [hA4, hku]
    have : g * u ^ 4 * S_val B C = u ^ 4 * (g * S_val B C) := by
      ac_rfl
    rw [this]
    exact Nat.dvd_mul_right _ _
  have hAne : A ≠ 0 :=
    Nat.ne_of_gt (Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 3) hAge3)
  have huA : u ∣ A := by
    have hA4ne : A ^ 4 ≠ 0 := pow_ne_zero 4 hAne
    have hu4ne : u ^ 4 ≠ 0 := pow_ne_zero 4 (Nat.ne_of_gt hupos)
    have hle4 := (Nat.factorization_le_iff_dvd hu4ne hA4ne).mpr hu4
    refine (Nat.factorization_le_iff_dvd (Nat.ne_of_gt hupos) hAne).mp ?_
    intro q
    have hle := hle4 q
    have hlu : Nat.factorization (u ^ 4) q = 4 * Nat.factorization u q := by
      rw [Nat.factorization_pow, Finsupp.smul_apply, nsmul_eq_mul, Nat.cast_id]
    have hlA : Nat.factorization (A ^ 4) q = 4 * Nat.factorization A q := by
      rw [Nat.factorization_pow, Finsupp.smul_apply, nsmul_eq_mul, Nat.cast_id]
    rw [hlu, hlA] at hle
    exact Nat.le_of_mul_le_mul_left hle (by decide : (0 : Nat) < 4)
  have hSgFourth : ∃ w, S_val B C * g = w ^ 4 := by
    refine ⟨A / u, ?_⟩
    set w := A / u
    have hAu : A = u * w := (Nat.mul_div_cancel' huA).symm
    have hpow : (u * w) ^ 4 = u ^ 4 * w ^ 4 := Nat.mul_pow u w 4
    have hprod : A ^ 4 = u ^ 4 * (g * S_val B C) := by
      rw [hA4, hku]
      ac_rfl
    have hmul4 : u ^ 4 * w ^ 4 = u ^ 4 * (g * S_val B C) := by
      rw [← hpow, ← hAu, hprod]
    have hw : w ^ 4 = g * S_val B C :=
      Nat.eq_of_mul_eq_mul_left (Nat.pos_pow_of_pos 4 hupos) hmul4
    rw [Nat.mul_comm]
    exact hw.symm
  exact hNotFourth hSgFourth

/-- Same close with the sketch's `B > 100` slot.
The valuation hypothesis is still required. -/
theorem beal_odd_A_ge3_B_gt_100_closed_of_vp1
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hAge3 : 3 ≤ A) (_hBgt100 : 100 < B)
    (hCop : Nat.Coprime B C)
    (hvp1 : ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
      Nat.factorization (S_val B C) p = 1 ∧ p % 13 = 1) :
    False :=
  beal_odd_A_ge3_closed_of_vp1 A B C hEq hOddA hAge3 hCop hvp1

/-! ## Honesty lock and uninhabited bare closes -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Bundled `v_p(S) = 1` from only
`p ∣ S`, `p ∤ (C−B)`, `p ≠ 13`.  Hensel lifts
make this false as an unconditional claim. -/
def zsigmondy_vp_S_eq_one_unconditional : Prop :=
  ∀ B C p : Nat,
    Nat.Prime p → p ∣ S_val B C →
    ¬ p ∣ (C - B) → p ≠ 13 →
    Nat.factorization (S_val B C) p = 1

/-- Uninhabited.  Bare `B ≤ 100` close still needs
the honest `S_not_fourth` hypothesis on `C ≥ B+3`. -/
def beal_odd_A_ge3_B_le_100_closed : Prop :=
  ∀ A B C : Nat,
    Odd A → 3 ≤ A → B ≤ 100 →
    A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited.  Sketch close without `v_p = 1`. -/
def beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → 100 < B → Nat.Coprime B C →
    False

/-- Uninhabited.  Packages the uninhabited
bare `B ≤ 100` and `B > 100` locks. -/
def beal_odd_A_closed_v8_24_0 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C →
    False

/-- Uninhabited.  Even-`A` close is still a Prop
from v8.22.1. -/
def beal_4_13_13_full_closed_mod_modular_v8_24_0 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

#check S_val
#check S_bounds
#check thirteen_dvd_S_of_BeqC_mod13
#check gcd_k_S_dvd_13_honest
#check k_shape_1_13_13cubed
#check zsigmondy_exists_primitive_inhabited
#check zsigmondy_vp_S_eq_one_inhabited
#check zsig_p_not_dvd_k_of_gcd_inhabited
#check S_times_g_not_fourth_of_vp1_inhabited
#check beal_odd_A_ge3_closed_of_vp1
#check beal_odd_A_ge3_B_gt_100_closed_of_vp1
#check S_bounds_13_B12_le_S_le_13_C12
#check oddPart_rec
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check frey_conductor_even_A
#check frey_curve_conductor
#check beal_4_13_13_B_le_100_closed
#check zsigmondy_vp_S_eq_one_unconditional
#check beal_odd_A_ge3_B_le_100_closed
#check beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited
#check beal_odd_A_closed_v8_24_0
#check beal_4_13_13_full_closed_mod_modular_v8_24_0
#check beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check X0_26_no_matching_newform
#check modular_W_lift
#check beal_even_A_closed_v8_22_1
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_bounds
#print axioms thirteen_dvd_S_of_BeqC_mod13
#print axioms gcd_k_S_dvd_13_honest
#print axioms k_shape_1_13_13cubed
#print axioms zsigmondy_exists_primitive_inhabited
#print axioms zsig_p_not_dvd_k_of_gcd_inhabited
#print axioms S_times_g_not_fourth_of_vp1_inhabited
#print axioms zsigmondy_vp_S_eq_one_inhabited
#print axioms beal_odd_A_ge3_closed_of_vp1
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
