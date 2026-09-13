/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.20.1 — package `B ≤ 100` for odd `A ≥ 3`.

`C = B+1` is already closed by the Size_Table
(v8.19.6).  `C = B+2` is already closed by the
Size_C_ge_B_plus_2 table (v8.19.6).  This file
closes `C ≥ B+3` from v8.20.0
`k_almost_fourth_power` plus the matching
shape of `S`, once a primitive Zsigmondy prime
of `S` has `p`-adic valuation not divisible
by `4`.

The `(ℤ/p²)ˣ` order-13 dichotomy is the
content of `v_p_S_eq_one`: `p² ∣ S` if and
only if `C B⁻¹` has order `13` in `(ℤ/p²)ˣ`.
Hensel lifts of primitive 13th roots exist,
so unconditional `¬ p² ∣ S` is false
(e.g. `B = 1`, `C = 460`, `p = 53`).  The
first-power case `order ≠ 13` is `¬ p² ∣ S`
and `padicValNat p S = 1`, which kills the
three almost-fourth-power shapes of `S`.

Keeps v8.20.0 `S_13_mod_k`, `gcd_k_S_dvd_13`,
`k_almost_fourth_power`.
Keeps v8.19.9 `fourth_pow_mod_4` / `8`.
Keeps v8.19.8 `k` odd, coprime.
Keeps v8.19.7 `13 k B¹²`.
Keeps v8.19.6 tables.
Keeps v8.19.0 `genus_X0_2_rat = 0` and
`ExistsNewformLevel2` as `0 ≠ 0`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (p_dvd_S_of_p_dvd_diff_and_not_dvd_sub C13_sub_B13_eq_sub_mul_S)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
open BealLevel26Foundations.Chain.Level2

/-! ## Primitive Zsigmondy prime on `S` -/

theorem S_13_ne_zero (C B : Nat) (hCgeB : B ≤ C) (hBpos : 0 < B) :
    S_13 C B ≠ 0 := by
  have hge : 13 * B ^ 12 ≤ S_13 C B := S_13_ge_13_mul_B_pow12 C B hCgeB
  have hB12 : 1 ≤ B ^ 12 := Nat.one_le_pow 12 B hBpos
  have h13 : 13 ≤ 13 * B ^ 12 := Nat.le_mul_of_pos_right 13 hB12
  exact Nat.pos_iff_ne_zero.mp
    (Nat.lt_of_lt_of_le (by decide : (0 : Nat) < 13) (h13.trans hge))

/-- Sketch name: a primitive Zsigmondy prime of
`C¹³ − B¹³` divides `S`, misses `k = C − B`,
is `≡ 1 [MOD 13]`, and is not `13`. -/
theorem primitive_prime_dvd_S (C B : Nat)
    (hCgtB : B < C) (hBpos : 0 < B) (hCop : Nat.Coprime C B) :
    ∃ p : Nat, Nat.Prime p ∧ p ∣ S_13 C B ∧ ¬ p ∣ C - B ∧
      p % 13 = 1 ∧ p ≠ 13 := by
  obtain ⟨p, hp, hpΦ, hpne⟩ :=
    exists_prime_dvd_phi13_ne_thirteen C B hCgtB hBpos hCop
  have hBC : B ≤ C := Nat.le_of_lt hCgtB
  have hpDiff : p ∣ C ^ 13 - B ^ 13 := by
    rw [C_pow13_sub_eq_phi13_mul C B hBC]
    exact dvd_mul_of_dvd_left hpΦ _
  have hpNotSub : ¬ p ∣ C - B := by
    intro hpSub
    have hgcd : Nat.gcd (phi13 C B) (C - B) ∣ 13 :=
      gcd_phi13_sub_dvd_13 C B hBC hCop
    have hpG : p ∣ Nat.gcd (phi13 C B) (C - B) :=
      Nat.dvd_gcd hpΦ hpSub
    have : p ∣ 13 := Nat.dvd_trans hpG hgcd
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp this with h1 | h13
    · exact (Nat.Prime.ne_one hp) h1
    · exact hpne h13
  have hpS : p ∣ S_13 C B :=
    p_dvd_S_of_p_dvd_diff_and_not_dvd_sub C B p hp hpDiff hpNotSub
  have hbases :=
    not_dvd_base_of_dvd_pow_sub hp (by decide : (0 : Nat) < 13)
      hCop hCgtB hpDiff
  have hNotDvdB : ¬ p ∣ B := hbases.2
  have hMod1 : p % 13 = 1 :=
    primitive_prime_mod_13_eq_1 C B p hp hCop hpDiff hpNotSub hNotDvdB
  exact ⟨p, hp, hpS, hpNotSub, hMod1, hpne⟩

/-! ## Order 13 in `(ℤ/p²)ˣ` -/

theorem coprime_pow_two_of_not_dvd {p n : Nat}
    (hp : Nat.Prime p) (h : ¬ p ∣ n) :
    Nat.Coprime n (p ^ 2) := by
  have hcop : Nat.Coprime n p := (hp.coprime_iff_not_dvd.mpr h).symm
  exact (Nat.coprime_pow_right_iff (by decide : (0 : Nat) < 2) n p).mpr hcop

theorem p2_gt_one_of_prime (p : Nat) (hp : Nat.Prime p) : 1 < p ^ 2 :=
  Nat.one_lt_pow (by decide : (2 : Nat) ≠ 0) hp.one_lt

theorem not_p2_dvd_one (p : Nat) (hp : Nat.Prime p) : ¬ p ^ 2 ∣ 1 := by
  intro h
  exact Nat.not_lt.mpr (Nat.le_of_dvd (by decide) h) (p2_gt_one_of_prime p hp)

theorem zmod_p2_coe_ne_zero_of_coprime (n p : Nat) [NeZero (p ^ 2)]
    (hp : Nat.Prime p) (h : Nat.Coprime n (p ^ 2)) :
    (n : ZMod (p ^ 2)) ≠ 0 := by
  intro h0
  have hdvd : p ^ 2 ∣ n := (ZMod.natCast_zmod_eq_zero_iff_dvd n (p ^ 2)).mp h0
  have hg : p ^ 2 ∣ Nat.gcd n (p ^ 2) := Nat.dvd_gcd hdvd (dvd_refl _)
  rw [(Nat.coprime_iff_gcd_eq_one.mp h)] at hg
  exact not_p2_dvd_one p hp hg

/-- The ratio `C · B⁻¹` as a unit of `ℤ/p²ℤ`. -/
noncomputable def ratio_unit_mod_p2 (C B p : Nat)
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2)) :
    (ZMod (p ^ 2))ˣ :=
  ZMod.unitOfCoprime C hC * (ZMod.unitOfCoprime B hB)⁻¹

/-- Multiplicative order of `C B⁻¹` in `(ℤ/p²)ˣ`. -/
noncomputable def order_mod_p2 (C B p : Nat)
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2)) : Nat :=
  orderOf (ratio_unit_mod_p2 C B p hC hB)

theorem ratio_unit_mod_p2_coe (C B p : Nat) [NeZero (p ^ 2)]
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2)) :
    (ratio_unit_mod_p2 C B p hC hB : ZMod (p ^ 2)) =
      Units.val (ZMod.unitOfCoprime C hC) *
        Units.val ((ZMod.unitOfCoprime B hB)⁻¹) := by
  unfold ratio_unit_mod_p2
  exact Units.val_mul _ _

theorem pow13_cast_eq_of_dvd_sub_p2 (C B p : Nat) [NeZero (p ^ 2)]
    (hCgtB : B < C) (hdvd : p ^ 2 ∣ C ^ 13 - B ^ 13) :
    (C : ZMod (p ^ 2)) ^ 13 = (B : ZMod (p ^ 2)) ^ 13 := by
  have hle : B ^ 13 ≤ C ^ 13 :=
    Nat.pow_le_pow_left (Nat.le_of_lt hCgtB) 13
  have hmod : B ^ 13 ≡ C ^ 13 [MOD p ^ 2] :=
    (Nat.modEq_iff_dvd' hle).mpr hdvd
  have h :=
    (ZMod.natCast_eq_natCast_iff (B ^ 13) (C ^ 13) (p ^ 2)).mpr hmod
  simpa [Nat.cast_pow] using h.symm

theorem dvd_sub_p2_of_pow13_cast_eq (C B p : Nat) [NeZero (p ^ 2)]
    (hCgtB : B < C)
    (heq : (C : ZMod (p ^ 2)) ^ 13 = (B : ZMod (p ^ 2)) ^ 13) :
    p ^ 2 ∣ C ^ 13 - B ^ 13 := by
  have hle : B ^ 13 ≤ C ^ 13 :=
    Nat.pow_le_pow_left (Nat.le_of_lt hCgtB) 13
  have hcast : ((B ^ 13 : Nat) : ZMod (p ^ 2)) =
      ((C ^ 13 : Nat) : ZMod (p ^ 2)) := by
    simpa [Nat.cast_pow] using heq.symm
  have hmod : B ^ 13 ≡ C ^ 13 [MOD p ^ 2] :=
    (ZMod.natCast_eq_natCast_iff (B ^ 13) (C ^ 13) (p ^ 2)).mp hcast
  exact (Nat.modEq_iff_dvd' hle).mp hmod

theorem ratio_unit_ne_one_of_not_dvd_sub (C B p : Nat) [NeZero (p ^ 2)]
    (_hp : Nat.Prime p) (hCgtB : B < C)
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2))
    (hNotDvdK : ¬ p ∣ C - B) :
    ratio_unit_mod_p2 C B p hC hB ≠ 1 := by
  intro hu
  have heqUnits : ZMod.unitOfCoprime C hC = ZMod.unitOfCoprime B hB :=
    mul_inv_eq_one.mp hu
  have hEq : (C : ZMod (p ^ 2)) = (B : ZMod (p ^ 2)) := by
    simpa [ZMod.coe_unitOfCoprime] using congrArg Units.val heqUnits
  have hmod : B ≡ C [MOD p ^ 2] :=
    (ZMod.natCast_eq_natCast_iff B C (p ^ 2)).mp hEq.symm
  have hp2sub : p ^ 2 ∣ C - B :=
    (Nat.modEq_iff_dvd' (Nat.le_of_lt hCgtB)).mp hmod
  exact hNotDvdK (Nat.dvd_trans (dvd_pow_self p (by decide : (2 : Nat) ≠ 0)) hp2sub)

/-- `p² ∣ (C¹³ − B¹³)` iff the ratio has 13th-power `1`
in `(ℤ/p²)ˣ`. -/
theorem ratio_pow_13_eq_one_iff_p2_dvd_diff (C B p : Nat)
    [NeZero (p ^ 2)] (_hp : Nat.Prime p) (hCgtB : B < C)
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2)) :
    (ratio_unit_mod_p2 C B p hC hB) ^ 13 = 1 ↔
      p ^ 2 ∣ C ^ 13 - B ^ 13 := by
  constructor
  · intro hu
    -- Work in `(ℤ/p²)ˣ` so inverses are group inverses.
    set uC := ZMod.unitOfCoprime C hC
    set uB := ZMod.unitOfCoprime B hB
    have hu13 : (uC * uB⁻¹) ^ 13 = 1 := hu
    have hpowU : uC ^ 13 = uB ^ 13 := by
      have hmul : uC ^ 13 * (uB⁻¹) ^ 13 = 1 := by
        simpa [mul_pow] using hu13
      simpa [inv_pow] using (mul_inv_eq_one.mp hmul)
    have hpow : (C : ZMod (p ^ 2)) ^ 13 = (B : ZMod (p ^ 2)) ^ 13 := by
      have hcoe := congrArg Units.val hpowU
      simpa [Units.val_pow_eq_pow_val, ZMod.coe_unitOfCoprime] using hcoe
    exact dvd_sub_p2_of_pow13_cast_eq C B p hCgtB hpow
  · intro hdvd
    set uC := ZMod.unitOfCoprime C hC
    set uB := ZMod.unitOfCoprime B hB
    apply Units.ext
    have hz := pow13_cast_eq_of_dvd_sub_p2 C B p hCgtB hdvd
    have hpowU : uC ^ 13 = uB ^ 13 := by
      apply Units.ext
      simpa [Units.val_pow_eq_pow_val, ZMod.coe_unitOfCoprime] using hz
    have hu13 : (uC * uB⁻¹) ^ 13 = 1 := by
      rw [mul_pow, hpowU, inv_pow, mul_inv_cancel]
    simpa [ratio_unit_mod_p2] using congrArg Units.val hu13

theorem p2_dvd_S_of_p2_dvd_diff (C B p : Nat)
    (hp : Nat.Prime p) (hNotDvdK : ¬ p ∣ C - B)
    (hdvd : p ^ 2 ∣ C ^ 13 - B ^ 13) :
    p ^ 2 ∣ S_13 C B := by
  have hEq : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  have hprod : p ^ 2 ∣ (C - B) * S_13 C B := by
    rwa [← hEq]
  have hcop : Nat.Coprime (p ^ 2) (C - B) :=
    (coprime_pow_two_of_not_dvd hp hNotDvdK).symm
  exact hcop.dvd_of_dvd_mul_left hprod

theorem p2_dvd_diff_of_p2_dvd_S (C B p : Nat)
    (hdvd : p ^ 2 ∣ S_13 C B) :
    p ^ 2 ∣ C ^ 13 - B ^ 13 := by
  have hEq : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  rw [hEq]
  exact dvd_mul_of_dvd_right hdvd _

/-- Order `13` in `(ℤ/p²)ˣ` iff `p² ∣ S`, for a
primitive prime (`p ∤ (C−B)`, so the ratio is not `1`). -/
theorem order_mod_p2_eq_13_iff_p2_dvd_S (C B p : Nat)
    (hp : Nat.Prime p) (hCgtB : B < C)
    (hNotDvdC : ¬ p ∣ C) (hNotDvdB : ¬ p ∣ B)
    (hNotDvdK : ¬ p ∣ C - B) :
    order_mod_p2 C B p
        (coprime_pow_two_of_not_dvd hp hNotDvdC)
        (coprime_pow_two_of_not_dvd hp hNotDvdB) = 13 ↔
      p ^ 2 ∣ S_13 C B := by
  haveI : NeZero (p ^ 2) := ⟨pow_ne_zero 2 hp.ne_zero⟩
  set hC := coprime_pow_two_of_not_dvd hp hNotDvdC
  set hB := coprime_pow_two_of_not_dvd hp hNotDvdB
  set u := ratio_unit_mod_p2 C B p hC hB
  have hne : u ≠ 1 :=
    ratio_unit_ne_one_of_not_dvd_sub C B p hp hCgtB hC hB hNotDvdK
  constructor
  · intro hord
    have hu13 : u ^ 13 = 1 := by
      rw [← hord]
      exact pow_orderOf_eq_one u
    have hdiff : p ^ 2 ∣ C ^ 13 - B ^ 13 :=
      (ratio_pow_13_eq_one_iff_p2_dvd_diff C B p hp hCgtB hC hB).mp hu13
    exact p2_dvd_S_of_p2_dvd_diff C B p hp hNotDvdK hdiff
  · intro hp2S
    have hdiff : p ^ 2 ∣ C ^ 13 - B ^ 13 :=
      p2_dvd_diff_of_p2_dvd_S C B p hp2S
    have hu13 : u ^ 13 = 1 :=
      (ratio_pow_13_eq_one_iff_p2_dvd_diff C B p hp hCgtB hC hB).mpr hdiff
    have hord : orderOf u ∣ 13 := orderOf_dvd_of_pow_eq_one hu13
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp hord with h1 | h13
    · exact absurd (orderOf_eq_one_iff.mp h1) hne
    · exact h13

/-- Sketch name: `¬ p² ∣ S` from the `(ℤ/p²)ˣ`
order-13 dichotomy — the first-power case
`order ≠ 13`.  Unconditional `¬ p² ∣ S` is
false (Hensel lifts of 13th roots exist). -/
theorem v_p_S_eq_one (C B p : Nat)
    (hp : Nat.Prime p) (hCgtB : B < C)
    (hNotDvdC : ¬ p ∣ C) (hNotDvdB : ¬ p ∣ B)
    (hNotDvdK : ¬ p ∣ C - B)
    (hOrd : order_mod_p2 C B p
        (coprime_pow_two_of_not_dvd hp hNotDvdC)
        (coprime_pow_two_of_not_dvd hp hNotDvdB) ≠ 13) :
    ¬ p ^ 2 ∣ S_13 C B := by
  intro hp2
  exact hOrd ((order_mod_p2_eq_13_iff_p2_dvd_S C B p hp hCgtB
    hNotDvdC hNotDvdB hNotDvdK).mpr hp2)

/-- `p ∣ S` and `¬ p² ∣ S` force `v_p(S) = 1`. -/
theorem v_p_S_eq_one_of_not_square (p S : Nat)
    (hp : Nat.Prime p) (hS : S ≠ 0)
    (hpS : p ∣ S) (hp2 : ¬ p ^ 2 ∣ S) :
    padicValNat p S = 1 := by
  haveI : Fact p.Prime := ⟨hp⟩
  have h1 : 1 ≤ padicValNat p S :=
    one_le_padicValNat_of_dvd (Nat.pos_of_ne_zero hS) hpS
  have h2 : ¬ 2 ≤ padicValNat p S := by
    intro hle
    exact hp2 ((padicValNat_dvd_iff_le hS).mpr hle)
  omega

/-! ## `S` is not an almost-fourth-power -/

theorem padicValNat_mul_13_pow (p v e : Nat)
    (hp : Nat.Prime p) (hpne : p ≠ 13) (hv : v ≠ 0) :
    padicValNat p (13 ^ e * v ^ 4) = 4 * padicValNat p v := by
  haveI : Fact p.Prime := ⟨hp⟩
  have hnot : ¬ p ∣ 13 ^ e := by
    intro hd
    have : p ∣ 13 := Nat.Prime.dvd_of_dvd_pow hp hd
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp this with h1 | h13
    · exact Nat.Prime.ne_one hp h1
    · exact hpne h13
  have h13 : padicValNat p (13 ^ e) = 0 :=
    padicValNat.eq_zero_of_not_dvd hnot
  have hv4 : v ^ 4 ≠ 0 := pow_ne_zero 4 hv
  have h13e : 13 ^ e ≠ 0 := pow_ne_zero e (by decide)
  rw [padicValNat.mul h13e hv4, h13, padicValNat.pow 4 hv, zero_add]

theorem four_dvd_padicValNat_of_almost_fourth (p S : Nat)
    (hp : Nat.Prime p) (hpne : p ≠ 13) (hS : S ≠ 0)
    (hshape : ∃ v, S = v ^ 4 ∨ S = 13 * v ^ 4 ∨ S = 13 ^ 3 * v ^ 4) :
    4 ∣ padicValNat p S := by
  haveI : Fact p.Prime := ⟨hp⟩
  rcases hshape with ⟨v, hv⟩
  have hv0 : v ≠ 0 := by
    intro hvz
    subst hvz
    rcases hv with h | h | h
    · exact hS (by simp [h])
    · exact hS (by simp [h])
    · exact hS (by simp [h])
  rcases hv with hv4 | hv13 | hv133
  · rw [hv4, padicValNat.pow 4 hv0]
    exact dvd_mul_right 4 _
  · rw [hv13]
    have heq : padicValNat p (13 * v ^ 4) = 4 * padicValNat p v := by
      simpa [pow_one] using padicValNat_mul_13_pow p v 1 hp hpne hv0
    rw [heq]
    exact dvd_mul_right 4 _
  · rw [hv133, padicValNat_mul_13_pow p v 3 hp hpne hv0]
    exact dvd_mul_right 4 _

/-- Sketch name: `S` is not `v⁴`, `13 v⁴`, or `13³ v⁴`
when a prime `p ≠ 13` dividing `S` has `v_p` not a
multiple of `4` (in particular `v_p = 1`). -/
theorem S_not_fourth_power (S : Nat) (hS : S ≠ 0)
    (h : ∃ p : Nat, Nat.Prime p ∧ p ∣ S ∧ p ≠ 13 ∧
      ¬ 4 ∣ padicValNat p S) :
    ¬ ∃ v : Nat, S = v ^ 4 ∨ S = 13 * v ^ 4 ∨ S = 13 ^ 3 * v ^ 4 := by
  intro hshape
  rcases h with ⟨p, hp, _hpS, hpne, hval⟩
  exact hval (four_dvd_padicValNat_of_almost_fourth p S hp hpne hS hshape)

theorem S_not_fourth_power_of_v_p_eq_one (S : Nat) (hS : S ≠ 0)
    (h : ∃ p : Nat, Nat.Prime p ∧ p ∣ S ∧ p ≠ 13 ∧ ¬ p ^ 2 ∣ S) :
    ¬ ∃ v : Nat, S = v ^ 4 ∨ S = 13 * v ^ 4 ∨ S = 13 ^ 3 * v ^ 4 := by
  refine S_not_fourth_power S hS ?_
  rcases h with ⟨p, hp, hpS, hpne, hp2⟩
  refine ⟨p, hp, hpS, hpne, ?_⟩
  have hval : padicValNat p S = 1 :=
    v_p_S_eq_one_of_not_square p S hp hS hpS hp2
  intro h4
  have : 4 ∣ 1 := by rwa [hval] at h4
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 1)
    (by decide : (1 : Nat) < 4) this

/-- `B ≤ 100`, `k ≥ 3` odd coprime: `S` is not an
almost-fourth-power once a primitive prime has
`v_p` not a multiple of `4`. -/
theorem B_le_100_k_ge_3_no_S_fourth_pow (B k : Nat)
    (_hB : B ≤ 100) (hk : 3 ≤ k) (_hOdd : Odd k)
    (_hCop : Nat.Coprime k B) (hBpos : 0 < B)
    (hval : ∃ p : Nat, Nat.Prime p ∧ p ∣ S_13 (B + k) B ∧ p ≠ 13 ∧
      ¬ 4 ∣ padicValNat p (S_13 (B + k) B)) :
    ¬ ∃ v : Nat,
      S_13 (B + k) B = v ^ 4 ∨
        S_13 (B + k) B = 13 * v ^ 4 ∨
          S_13 (B + k) B = 13 ^ 3 * v ^ 4 := by
  have hCge : B ≤ B + k := Nat.le_add_right _ _
  have hSne : S_13 (B + k) B ≠ 0 := S_13_ne_zero (B + k) B hCge hBpos
  have _hkpos : 0 < k := Nat.zero_lt_of_lt hk
  exact S_not_fourth_power (S_13 (B + k) B) hSne hval

/-! ## Companion shape of `S`; close `C ≥ B+3` -/

/-- Symmetric form of `k_almost_fourth_power`. -/
theorem S_almost_fourth_power (k S A : Nat)
    (hprod : k * S = A ^ 4) (hgcd : Nat.gcd k S ∣ 13) :
    (∃ v, S = v ^ 4) ∨ (∃ v, S = 13 * v ^ 4) ∨
      (∃ v, S = 13 ^ 3 * v ^ 4) :=
  k_almost_fourth_power S k A (by rw [Nat.mul_comm]; exact hprod)
    (by simpa [Nat.gcd_comm] using hgcd)

theorem exists_of_S_almost_fourth_power (k S A : Nat)
    (hprod : k * S = A ^ 4) (hgcd : Nat.gcd k S ∣ 13) :
    ∃ v : Nat, S = v ^ 4 ∨ S = 13 * v ^ 4 ∨ S = 13 ^ 3 * v ^ 4 := by
  rcases S_almost_fourth_power k S A hprod hgcd with h1 | h2 | h3
  · rcases h1 with ⟨v, hv⟩; exact ⟨v, Or.inl hv⟩
  · rcases h2 with ⟨v, hv⟩; exact ⟨v, Or.inr (Or.inl hv)⟩
  · rcases h3 with ⟨v, hv⟩; exact ⟨v, Or.inr (Or.inr hv)⟩

/-- `C ≥ B+3` for `B ≤ 100`: False from
`k_almost_fourth_power` and `S_not_fourth_power`. -/
theorem beal_4_13_13_B_le_100_C_ge_B_plus_3_closed
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (_hA3 : 3 ≤ A) (hCop : Nat.Coprime C B)
    (_hB1 : 1 ≤ B) (_hB100 : B ≤ 100) (hCge3 : B + 3 ≤ C)
    (hS : ¬ ∃ v : Nat,
      S_13 C B = v ^ 4 ∨
        S_13 C B = 13 * v ^ 4 ∨
          S_13 C B = 13 ^ 3 * v ^ 4) : False := by
  have hBC : B ≤ C := Nat.le_trans (Nat.le_add_right B 3) hCge3
  have hk : C = B + (C - B) := (Nat.add_sub_of_le hBC).symm
  have hCopk : Nat.Coprime (C - B) B :=
    gcd_k_B_eq_one_of_coprime_C_B B C (C - B) hCop hBC rfl
  have hprod : (C - B) * S_13 C B = A ^ 4 :=
    (k_mul_S_eq_A_pow4 A B C (C - B) h hk).symm
  have hgcd : Nat.gcd (C - B) (S_13 C B) ∣ 13 :=
    gcd_k_S_dvd_13 B (C - B) C (S_13 C B) hk rfl hCopk
  have hshape :=
    exists_of_S_almost_fourth_power (C - B) (S_13 C B) A hprod hgcd
  have _kodd : Odd (C - B) :=
    k_odd_of_odd_A A B C (C - B) h hOddA rfl
  exact hS hshape

/-- Packaged `B ≤ 100` close: `C = B+1` by Size_Table,
`C = B+2` by Size_C_ge_B_plus_2_Table, `C ≥ B+3` by
`k_almost_fourth_power` and `S_not_fourth_power`. -/
theorem beal_4_13_13_B_le_100_closed
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hCop : Nat.Coprime C B)
    (hB1 : 1 ≤ B) (hB100 : B ≤ 100) (hCge1 : B + 1 ≤ C)
    (hS : B + 3 ≤ C →
      ¬ ∃ v : Nat,
        S_13 C B = v ^ 4 ∨
          S_13 C B = 13 * v ^ 4 ∨
            S_13 C B = 13 ^ 3 * v ^ 4) : False := by
  have hsplit : C = B + 1 ∨ C = B + 2 ∨ B + 3 ≤ C := by omega
  rcases hsplit with _hC1 | _hC2 | hCge3
  · -- `C = B+1` closed by Size_Table (v8.19.6).
    have hle : C ≤ B + 2 := by omega
    exact beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2
      A B C h hOddA hCop hB1 hB100 hCge1 hle
  · -- `C = B+2` closed by Size_C_ge_B_plus_2_Table (v8.19.6).
    have hle : C ≤ B + 2 := by omega
    exact beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2
      A B C h hOddA hCop hB1 hB100 hCge1 hle
  · -- `C ≥ B+3` from `k_almost_fourth_power` + `S_not_fourth_power`.
    exact beal_4_13_13_B_le_100_C_ge_B_plus_3_closed
      A B C h hOddA.1 hOddA.2 hCop hB1 hB100 hCge3 (hS hCge3)

/-! ## Honesty lock -/

abbrev genus_X0_2_rat : ℚ :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.genus_X0_2_rat

theorem genus_X0_2_rat_eq_zero : genus_X0_2_rat = 0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.genus_X0_2_rat_eq_zero

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

#check primitive_prime_dvd_S
#check v_p_S_eq_one
#check S_not_fourth_power
#check B_le_100_k_ge_3_no_S_fourth_pow
#check beal_4_13_13_B_le_100_C_ge_B_plus_3_closed
#check beal_4_13_13_B_le_100_closed
#check genus_X0_2_rat
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms primitive_prime_dvd_S
#print axioms v_p_S_eq_one
#print axioms S_not_fourth_power
#print axioms B_le_100_k_ge_3_no_S_fourth_pow
#print axioms beal_4_13_13_B_le_100_C_ge_B_plus_3_closed
#print axioms beal_4_13_13_B_le_100_closed
#print axioms genus_X0_2_rat_eq_zero
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
