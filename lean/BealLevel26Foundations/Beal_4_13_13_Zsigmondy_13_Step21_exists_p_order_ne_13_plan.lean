/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.26.0 — exists-`p` order-`≠ 13`
plan.

The sketch tries to inhabit
`exists_p_with_order_ne_13_mod_p_sq`
from “two distinct primitive primes”
plus “not both lift”.  Zsigmondy gives
**one** primitive prime, not two.
Two independent Hensel lifts can both
succeed; `B=1`, `C=460`, `p=53` already
shows one lift.  Unconditional
“both `p² ∣ S` → False” is not a theorem.

Inhabited:
`S_val`, `S_bounds`,
`primitive_prime_not_dvd_bases`,
`zsigmondy_exists_primitive_inhabited`,
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`hensel_lift_example_B1_C460_p53`,
`zsigmondy_vp_S_eq_one_of_order_ne_13`,
`S_not_fourth_of_order_ne_13`,
`exists_p_of_two_primes_one_not_square`
(honest fragment of the sketch glue).

Uninhabited (honest):
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
(the remaining Hensel lock),
`beal_odd_A_closed_via_zsig_hensel_inhabited`,
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

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds k_shape_1_13_13cubed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
  (zsigmondy_exists_primitive_inhabited
    zsigmondy_vp_S_eq_one_inhabited
    p_mod_13_eq_1_ne_thirteen
    B_lt_C_of_beal_A_ge3 B_ge_one_of_beal_A_ge3)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real
  (primitive_prime_not_dvd_bases)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2
    p_sq_dvd_S_iff_order_13_mod_p_sq
    hensel_lift_example_B1_C460_p53
    C_eq_B_plus_1_or_2_closed
    S_not_fourth
    S_not_fourth_of_order_ne_13
    beal_odd_A_closed_via_zsig_hensel)
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
    beal_4_13_13_B_le_100_closed)

/-! ## Inhabited wraps: dichotomy, lift example, `v_p=1` -/

/-- Sketch name of the Step11 dichotomy
on `S_val`.  Wraps Step20
`p_sq_dvd_S_iff_order_13_mod_p_sq`. -/
theorem p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
    (B C p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hBltC : B < C) (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B)
    (hpnot : ¬ p ∣ (C - B)) :
    p ^ 2 ∣ S_val B C ↔
      order_of_C_B_inv_mod_p2 C B p hPrime hNotC hNotB = 13 :=
  p_sq_dvd_S_iff_order_13_mod_p_sq B C p hPrime hp13
    hBltC hNotC hNotB hpnot

/-- Conditional `v_p(S) = 1` from order
`≠ 13` in `(ℤ/p²)ˣ`.  **Not** the sketch
`hPrim : True`. -/
theorem zsigmondy_vp_S_eq_one_of_order_ne_13
    (B C p : Nat) (hPrime : Nat.Prime p)
    (hpS : p ∣ S_val B C) (hpnot : ¬ p ∣ (C - B))
    (hp13 : p ≠ 13) (hBltC : B < C)
    (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B)
    (hOrd : order_of_C_B_inv_mod_p2 C B p hPrime hNotC hNotB ≠ 13) :
    Nat.factorization (S_val B C) p = 1 :=
  zsigmondy_vp_S_eq_one_inhabited B C p hPrime hpS hpnot hp13
    hBltC hNotC hNotB hOrd

/-- Honest fragment of the sketch glue:
if two distinct primitive primes divide
`S` and at least one fails `p² ∣ S`,
then some ratio has order `≠ 13` in
`(ℤ/p²)ˣ`.  Does **not** produce the
two primes, and does **not** forbid
two lifts. -/
theorem exists_p_of_two_primes_one_not_square
    (B C : Nat) (hBltC : B < C) (hCop : Nat.Coprime B C)
    (p1 p2 : Nat) (hPrime1 : Nat.Prime p1) (hPrime2 : Nat.Prime p2)
    (_hne : p1 ≠ p2) (hp1S : p1 ∣ S_val B C) (hp2S : p2 ∣ S_val B C)
    (hp1not : ¬ p1 ∣ (C - B)) (hp2not : ¬ p2 ∣ (C - B))
    (hp1ne13 : p1 ≠ 13) (hp2ne13 : p2 ≠ 13)
    (hOneNotSq : ¬ p1 ^ 2 ∣ S_val B C ∨ ¬ p2 ^ 2 ∣ S_val B C) :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13 := by
  rcases hOneNotSq with h1 | h2
  · have hbases :=
      primitive_prime_not_dvd_bases B C p1 hPrime1 hBltC hCop hp1S
    have hord :
        order_of_C_B_inv_mod_p2 C B p1 hPrime1 hbases.1 hbases.2 ≠ 13 := by
      intro heq
      have hp2 :=
        (p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited B C p1 hPrime1
          hp1ne13 hBltC hbases.1 hbases.2 hp1not).mpr heq
      exact h1 hp2
    exact ⟨p1, hPrime1, hp1S, hp1not, hbases.1, hbases.2, hord⟩
  · have hbases :=
      primitive_prime_not_dvd_bases B C p2 hPrime2 hBltC hCop hp2S
    have hord :
        order_of_C_B_inv_mod_p2 C B p2 hPrime2 hbases.1 hbases.2 ≠ 13 := by
      intro heq
      have hp2 :=
        (p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited B C p2 hPrime2
          hp2ne13 hBltC hbases.1 hbases.2 hp2not).mpr heq
      exact h2 hp2
    exact ⟨p2, hPrime2, hp2S, hp2not, hbases.1, hbases.2, hord⟩

/-! ## Honesty lock: sketch two-prime / exists-`p` stay Props -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Zsigmondy gives one
primitive prime of `C¹³ − B¹³`, not two.
`C ≥ B+3` makes `S` large; it does not
split `S` into two primitive primes. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    ∃ p1 p2, Nat.Prime p1 ∧ Nat.Prime p2 ∧ p1 ≠ p2 ∧
      p1 ∣ S_val B C ∧ p2 ∣ S_val B C ∧
      ¬ p1 ∣ (C - B) ∧ ¬ p2 ∣ (C - B)

/-- Uninhabited.  Two distinct primitive
primes can both lift; the statement
“`p1² ∣ S` and `p2² ∣ S` → False” is
not a theorem.  `B=1`, `C=460`, `p=53`
already shows one lift. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  The remaining Hensel lock
for both `B ≤ 100` with `C ≥ B+3` and
`B > 100`.  The sketch would follow from
the two Props above; those stay uninhabited. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13

/-- Uninhabited.  Sketch odd-`A` close from
bare `C ≥ B+3` without the Hensel lock.
Together with `C = B+1` / `C = B+2` that
would be a new Beal `∀` for odd `A`. -/
def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → B + 3 ≤ C →
    False

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

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

#check S_val
#check S_bounds
#check k_shape_1_13_13cubed
#check zsigmondy_exists_primitive_inhabited
#check primitive_prime_not_dvd_bases
#check p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#check hensel_lift_example_B1_C460_p53
#check zsigmondy_vp_S_eq_one_of_order_ne_13
#check S_not_fourth
#check S_not_fourth_of_order_ne_13
#check exists_p_of_two_primes_one_not_square
#check C_eq_B_plus_1_or_2_closed
#check beal_odd_A_closed_via_zsig_hensel
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3
#check not_all_p_lift_when_two_primes
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check beal_odd_A_closed_via_zsig_hensel_inhabited
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
#print axioms zsigmondy_exists_primitive_inhabited
#print axioms primitive_prime_not_dvd_bases
#print axioms p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#print axioms hensel_lift_example_B1_C460_p53
#print axioms zsigmondy_vp_S_eq_one_of_order_ne_13
#print axioms S_not_fourth_of_order_ne_13
#print axioms exists_p_of_two_primes_one_not_square
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan
