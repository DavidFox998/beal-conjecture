/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.25.0 — Hensel dichotomy
`S_not_fourth` plan.

Unconditional `v_p(S) = 1` is false.
`Φ₁₃' ≠ 0` at a primitive 13th root
mod `p ≠ 13` makes Hensel **lift**,
which is when `v_p(S) ≥ 2` can happen.
The pair `B = 1`, `C = 460`, `p = 53`
is a concrete lift: `p² ∣ S`.

Step11 lock: `p² ∣ S` iff the ratio
`C B⁻¹` has order `13` in `(ℤ/p²)ˣ`.
`S_not_fourth` is then the exists-`p`
form of `v_p` not a multiple of 4,
which follows from order `≠ 13`.

Inhabited:
`S_val`, `S_bounds`,
`primitive_prime_not_dvd_bases`,
`zsigmondy_exists_primitive_inhabited`,
`gcd_k_S_dvd_13_honest`,
`k_shape_1_13_13cubed`,
`zsigmondy_vp_S_eq_one_inhabited`
(Hensel-conditional order `≠ 13`),
`p_sq_dvd_S_iff_order_13_mod_p_sq`,
`hensel_lift_example_B1_C460_p53`,
`C_eq_B_plus_1_or_2_closed`,
`S_not_fourth`,
`S_not_fourth_of_order_ne_13`,
`beal_odd_A_closed_via_zsig_hensel`
(exists-`p` order hypothesis).

Uninhabited (honest):
`exists_p_with_order_ne_13_mod_p_sq`
(the remaining Hensel lock for both
`B ≤ 100`, `C ≥ B+3` and `B > 100`),
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`.
Plus Kraus / `X0(2q)`, `X0(26)` matching,
and Modular W (`0 ≠ 0`).

`B ≤ 100` is not a table close:
`C = B+1` and `C = B+2` are closed;
`C ≥ B+3` still needs `S_not_fourth`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p^2 ∣ S`.
Does **not** inhabit a new Beal `∀`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds k_shape_1_13_13cubed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
  (thirteen_dvd_S_of_BeqC_mod13 gcd_k_S_dvd_13_honest
    zsigmondy_exists_primitive_inhabited
    zsigmondy_vp_S_eq_one_inhabited
    zsig_p_not_dvd_k_of_gcd_inhabited
    S_times_g_not_fourth_of_vp1_inhabited
    beal_odd_A_ge3_closed_of_vp1
    p_mod_13_eq_1_ne_thirteen
    B_lt_C_of_beal_A_ge3 B_ge_one_of_beal_A_ge3)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real
  (primitive_prime_not_dvd_bases
    beal_odd_A_ge3_closed_of_vp1_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
  (S_bounds_13_B12_le_S_le_13_C12)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (oddPart_rec even_not_pow2_has_odd_prime_q
    level_2q_of_odd_prime_dvd_A
    kraus_criterion_q_ne_13 X0_2q_no_Frey_match
    beal_even_A_closed_v8_22_1)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (frey_conductor_even_A X0_26_no_matching_newform)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (order_mod_p2 coprime_pow_two_of_not_dvd
    order_mod_p2_eq_13_iff_p2_dvd_S
    beal_4_13_13_B_le_100_closed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed
  (beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
  (primitive_prime_mod_13_eq_1)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (C13_sub_B13_eq_sub_mul_S S_13)

/-! ## Order of `C B⁻¹` in `(ℤ/p²)ˣ` -/

/-- Informal sketch name: the multiplicative
order of `C * B⁻¹` in `(ℤ/p²)ˣ`. -/
noncomputable abbrev order_of_C_B_inv_mod_p2
    (C B p : Nat) (hp : Nat.Prime p)
    (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B) : Nat :=
  order_mod_p2 C B p
    (coprime_pow_two_of_not_dvd hp hNotC)
    (coprime_pow_two_of_not_dvd hp hNotB)

/-! ## Step11 dichotomy on `S_val` -/

/-- `p² ∣ S` iff the ratio has order `13`
in `(ℤ/p²)ˣ`.  Wraps Step11
`order_mod_p2_eq_13_iff_p2_dvd_S`
onto `S_val`.  Needs `B < C` and the
primitive-prime misses `B`, `C`, `C−B`.
`p ≠ 13` is the cyclotomic side-condition
from the sketch; the iff itself is the
order dichotomy. -/
theorem p_sq_dvd_S_iff_order_13_mod_p_sq
    (B C p : Nat) (hPrime : Nat.Prime p) (_hp13 : p ≠ 13)
    (hBltC : B < C) (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B)
    (hpnot : ¬ p ∣ (C - B)) :
    p ^ 2 ∣ S_val B C ↔
      order_of_C_B_inv_mod_p2 C B p hPrime hNotC hNotB = 13 := by
  rw [S_val_eq_S_13_of_B_lt_C B C hBltC]
  exact (order_mod_p2_eq_13_iff_p2_dvd_S C B p hPrime hBltC
    hNotC hNotB hpnot).symm

/-! ## Concrete Hensel lift `B=1`, `C=460`, `p=53` -/

theorem pow13_mod_eq {n a r : Nat} [NeZero n]
    (h : (a : ZMod n) ^ 13 = (r : ZMod n)) :
    a ^ 13 ≡ r [MOD n] := by
  have hcast : ((a ^ 13 : Nat) : ZMod n) = (r : ZMod n) := by
    rwa [Nat.cast_pow]
  exact (ZMod.natCast_eq_natCast_iff (a ^ 13) r n).mp hcast

/-- `S_val 1 460` is divisible by `53` and
by `53² = 2809`.  So unconditional
`¬ p² ∣ S` is false: this primitive
13th root lifts. -/
theorem hensel_lift_example_B1_C460_p53 :
    S_val 1 460 % 53 = 0 ∧ S_val 1 460 % (53 ^ 2) = 0 := by
  have hBlt : (1 : Nat) < 460 := by decide
  have hS : S_val 1 460 = S_13 460 1 :=
    S_val_eq_S_13_of_B_lt_C 1 460 hBlt
  have hfac : 460 ^ 13 - 1 ^ 13 = (460 - 1) * S_13 460 1 :=
    C13_sub_B13_eq_sub_mul_S 460 1
  have hone : (1 : Nat) ^ 13 = 1 := Nat.one_pow 13
  have hsub : (460 : Nat) - 1 = 459 := by decide
  have hprod : 460 ^ 13 - 1 = 459 * S_val 1 460 := by
    calc 460 ^ 13 - 1
        = 460 ^ 13 - 1 ^ 13 := by rw [hone]
      _ = (460 - 1) * S_13 460 1 := hfac
      _ = 459 * S_13 460 1 := by rw [hsub]
      _ = 459 * S_val 1 460 := by rw [hS]
  have hle : 1 ≤ 460 ^ 13 :=
    Nat.one_le_pow 13 460 (by decide : (0 : Nat) < 460)
  have h53S : 53 ∣ S_val 1 460 := by
    have hz : (460 : ZMod 53) ^ 13 = 1 := by decide
    have hmod : 460 ^ 13 ≡ 1 [MOD 53] := pow13_mod_eq hz
    have hdiff : 53 ∣ 460 ^ 13 - 1 :=
      (Nat.modEq_iff_dvd' hle).mp hmod
    have hmul : 53 ∣ 459 * S_val 1 460 := by
      rwa [← hprod]
    have hPrime : Nat.Prime 53 := by decide
    rcases hPrime.dvd_mul.mp hmul with h459 | hSdiv
    · exact absurd h459 (by decide : ¬ (53 : Nat) ∣ 459)
    · exact hSdiv
  have h2809S : 53 ^ 2 ∣ S_val 1 460 := by
    have hz : (460 : ZMod 2809) ^ 13 = 1 := by decide
    have hmod : 460 ^ 13 ≡ 1 [MOD 2809] := pow13_mod_eq hz
    have hdiff : 2809 ∣ 460 ^ 13 - 1 :=
      (Nat.modEq_iff_dvd' hle).mp hmod
    have hmul : 2809 ∣ 459 * S_val 1 460 := by
      rwa [← hprod]
    have hcop : Nat.Coprime 2809 459 := by decide
    have hdiv : 2809 ∣ S_val 1 460 :=
      hcop.dvd_of_dvd_mul_left hmul
    exact hdiv
  constructor
  · exact Nat.mod_eq_zero_of_dvd h53S
  · exact Nat.mod_eq_zero_of_dvd h2809S

/-! ## `C = B+1` / `C = B+2` table close (`B ≤ 100`) -/

/-- `C ∈ {B+1, B+2}` is closed for odd
`A ≥ 3` and `B ≤ 100`.  This is the
table slice, not a `B ≤ 100` close
for `C ≥ B+3`. -/
theorem C_eq_B_plus_1_or_2_closed
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hAge3 : 3 ≤ A) (hCop : Nat.Coprime B C)
    (hB100 : B ≤ 100) (hCle : C ≤ B + 2) : False := by
  have hBltC : B < C := B_lt_C_of_beal_A_ge3 A B C hEq hAge3
  have hBge1 : 1 ≤ B := B_ge_one_of_beal_A_ge3 A B C hEq hAge3 hCop
  have hCge1 : B + 1 ≤ C := Nat.succ_le_of_lt hBltC
  exact beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2
    A B C hEq ⟨hOddA, hAge3⟩ hCop.symm hBge1 hB100 hCge1 hCle

/-! ## `S_not_fourth` from order `≠ 13` -/

/-- A prime dividing `S` whose `p`-adic
valuation is not a multiple of 4. -/
def S_not_fourth (B C : Nat) : Prop :=
  ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
    ¬ 4 ∣ Nat.factorization (S_val B C) p

/-- Order `≠ 13` in `(ℤ/p²)ˣ` gives
`v_p(S) = 1`, hence `¬ 4 ∣ v_p(S)`. -/
theorem S_not_fourth_of_order_ne_13
    (B C p : Nat) (hPrime : Nat.Prime p)
    (hpS : p ∣ S_val B C) (hpnot : ¬ p ∣ (C - B))
    (hp13 : p ≠ 13) (hBltC : B < C)
    (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B)
    (hOrd : order_of_C_B_inv_mod_p2 C B p hPrime hNotC hNotB ≠ 13) :
    S_not_fourth B C := by
  refine ⟨p, hPrime, hpS, ?_⟩
  have hvp :=
    zsigmondy_vp_S_eq_one_inhabited B C p hPrime hpS hpnot hp13
      hBltC hNotC hNotB hOrd
  rw [hvp]
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 1)
    (by decide : (1 : Nat) < 4)

/-- Exists-`p` Hensel close: one primitive
prime whose ratio does **not** have order
`13` in `(ℤ/p²)ˣ` is enough.  Weaker than
the Step19 forall-`p` glue. -/
theorem beal_odd_A_closed_via_zsig_hensel
    (A B C : Nat) (hEq : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A) (hAge3 : 3 ≤ A) (hCop : Nat.Coprime B C)
    (hExistsOrderNe :
      ∃ (p : Nat) (hp : Nat.Prime p),
        p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
        ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
          order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13) :
    False := by
  rcases hExistsOrderNe with
    ⟨p, hp, hpS, hpnot, hNotC, hNotB, hOrd⟩
  have hBltC : B < C := B_lt_C_of_beal_A_ge3 A B C hEq hAge3
  have hpDiff : p ∣ C ^ 13 - B ^ 13 := by
    have hS : S_val B C = S_13 C B :=
      S_val_eq_S_13_of_B_lt_C B C hBltC
    have hfac : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
      C13_sub_B13_eq_sub_mul_S C B
    rw [hfac, ← hS]
    exact dvd_mul_of_dvd_right hpS _
  have hpmod : p % 13 = 1 :=
    primitive_prime_mod_13_eq_1 C B p hp hCop.symm hpDiff hpnot hNotB
  have hp13 : p ≠ 13 := p_mod_13_eq_1_ne_thirteen p hpmod
  have hvp1 :=
    zsigmondy_vp_S_eq_one_inhabited B C p hp hpS hpnot hp13
      hBltC hNotC hNotB hOrd
  exact beal_odd_A_ge3_closed_of_vp1 A B C hEq hOddA hAge3 hCop
    ⟨p, hp, hpS, hvp1, hpmod⟩

/-! ## Honesty lock and uninhabited bare closes -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  The remaining Hensel lock
for both `B ≤ 100` with `C ≥ B+3` and
`B > 100`: some primitive prime of `S`
must fail to lift to order `13` in
`(ℤ/p²)ˣ`.  The pair `B=1`, `C=460`,
`p=53` shows that a lift is possible,
so this is not automatic from Zsigmondy. -/
def exists_p_with_order_ne_13_mod_p_sq : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13

/-- Uninhabited.  Sketch bare odd-`A` close. -/
def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C →
    False

/-- Uninhabited.  Even-`A` close is still a Prop
from v8.22.1. -/
def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

/-- Uninhabited public API.  Bare odd-`A` close
without Hensel would be a new Beal `∀`. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

#check S_val
#check S_bounds
#check thirteen_dvd_S_of_BeqC_mod13
#check gcd_k_S_dvd_13_honest
#check k_shape_1_13_13cubed
#check zsigmondy_exists_primitive_inhabited
#check zsigmondy_vp_S_eq_one_inhabited
#check zsig_p_not_dvd_k_of_gcd_inhabited
#check S_times_g_not_fourth_of_vp1_inhabited
#check primitive_prime_not_dvd_bases
#check beal_odd_A_ge3_closed_of_vp1_inhabited
#check p_sq_dvd_S_iff_order_13_mod_p_sq
#check hensel_lift_example_B1_C460_p53
#check C_eq_B_plus_1_or_2_closed
#check S_not_fourth
#check S_not_fourth_of_order_ne_13
#check beal_odd_A_closed_via_zsig_hensel
#check exists_p_with_order_ne_13_mod_p_sq
#check S_bounds_13_B12_le_S_le_13_C12
#check oddPart_rec
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check frey_conductor_even_A
#check frey_curve_conductor
#check beal_4_13_13_B_le_100_closed
#check beal_odd_A_closed_v8_24_0_inhabited
#check beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited
#check beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check X0_26_no_matching_newform
#check modular_W_lift
#check beal_even_A_closed_v8_22_1
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_bounds
#print axioms gcd_k_S_dvd_13_honest
#print axioms k_shape_1_13_13cubed
#print axioms zsigmondy_exists_primitive_inhabited
#print axioms primitive_prime_not_dvd_bases
#print axioms zsigmondy_vp_S_eq_one_inhabited
#print axioms p_sq_dvd_S_iff_order_13_mod_p_sq
#print axioms hensel_lift_example_B1_C460_p53
#print axioms C_eq_B_plus_1_or_2_closed
#print axioms S_not_fourth_of_order_ne_13
#print axioms beal_odd_A_closed_via_zsig_hensel
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
