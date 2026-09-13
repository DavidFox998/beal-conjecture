/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.28.0 — Phi13 / Z[ζ13]
prime-ideal plan.

The sketch writes S = Φ₁₃(C,B) as the
field norm N_{Q(ζ13)/Q}(C − B ζ), notes
that Q(ζ13) has class number 1 so
Z[ζ13] is a PID, and hopes that
C − B ζ is not a prime power there,
hence two rational primes of S.

Mathlib 4.12 has no class group of
Q(ζ13) and no Dedekind factorization
in Z[ζ13].  The inhabited pieces are
the displayed homogeneous cyclotomic
sum (already `phi13`), its equality
with `S_val`, the recorded class
number 1, and a primitive prime of
the displayed norm.  Two distinct
prime ideals, and two rational primes
from those ideals, stay Props: a
power of one prime ideal has
prime-power norm, and two primes
above the same p still give one
rational prime.

Size `S ≤ 13 C¹²` still does **not**
rule out two Hensel lifts.

Inhabited:
`S_val`, `S_bounds`,
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`hensel_lift_example_B1_C460_p53`,
`zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited`,
`S_not_fourth_of_order_ne_13_inhabited`,
`exists_p_of_two_primes_one_not_square_inhabited`,
`S_not_power_of_thirteen_inhabited`,
`norm_eq_S`, `zeta13_class_number_one`,
`zeta13_prime_ideal_factorization_exists`.

Uninhabited (honest):
`S_not_prime_power_when_C_ge_B_plus_3`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3`,
`zeta13_two_prime_ideals_give_two_rational_primes`,
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

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13 (phi13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4 (S_13 S_13_eq_phi13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds k_shape_1_13_13cubed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
  (zsigmondy_exists_primitive_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2
    hensel_lift_example_B1_C460_p53
    C_eq_B_plus_1_or_2_closed
    S_not_fourth
    S_not_fourth_of_order_ne_13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan
  (p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan
  (zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
    S_not_fourth_of_order_ne_13_inhabited
    exists_p_of_two_primes_one_not_square_inhabited
    S_not_power_of_thirteen)
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
  (beal_4_13_13_B_le_100_closed)

/-! ## Displayed cyclotomic norm and recorded class number -/

/-- Displayed homogeneous `Φ₁₃(C,B)`.
This is the 13-term cyclotomic sum, equal
to the field norm `N(C − B ζ)` when `ζ`
is a primitive 13th root of unity.
Mathlib 4.12 does not supply that field
norm; the sum is the honest stand-in. -/
def Norm_C_minus_B_zeta (B C : Nat) : Nat :=
  phi13 C B

/-- When `B < C`, the displayed norm is
`S_val`.  This is the inhabited fragment
of `N(C − B ζ) = S`. -/
theorem norm_eq_S (B C : Nat) (hBltC : B < C) :
    Norm_C_minus_B_zeta B C = S_val B C := by
  rw [Norm_C_minus_B_zeta, S_val_eq_S_13_of_B_lt_C B C hBltC,
    S_13_eq_phi13]

/-- Recorded class number of `Q(ζ₁₃)`.
Washington tables: class number 1.
Not a Mathlib class-group computation,
and not `IsPID (𝓞 Q(ζ₁₃))`. -/
def class_number_Q_zeta13 : Nat := 1

theorem zeta13_class_number_one :
    class_number_Q_zeta13 = 1 :=
  rfl

/-- A primitive prime of `S` divides the
displayed norm and does not divide
`C − B`.  This is the rational-norm
shadow of a prime-ideal factor of
`C − B ζ`.  It does **not** produce two
ideals or two rational primes. -/
theorem zeta13_prime_ideal_factorization_exists
    (B C : Nat) (hBltC : B < C) (hCop : Nat.Coprime B C)
    (hBge1 : 1 ≤ B) :
    ∃ p, Nat.Prime p ∧ p ∣ Norm_C_minus_B_zeta B C ∧
      ¬ p ∣ (C - B) ∧ p ≠ 13 := by
  rw [norm_eq_S B C hBltC]
  obtain ⟨p, hp, hpS, hpnot, _hpmod, hpne⟩ :=
    zsigmondy_exists_primitive_inhabited B C hBltC hCop hBge1
  exact ⟨p, hp, hpS, hpnot, hpne⟩

theorem S_not_power_of_thirteen_inhabited
    (B C : Nat) (hBltC : B < C) (hCop : Nat.Coprime B C)
    (hBge1 : 1 ≤ B) :
    ¬ ∃ k, S_val B C = 13 ^ k :=
  S_not_power_of_thirteen B C hBltC hCop hBge1

/-! ## Honesty lock: two ideals / two primes / exists-`p` stay Props -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  `S` may still be `q^k`
for a single primitive prime `q`. -/
def S_not_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    ¬ ∃ p k, Nat.Prime p ∧ S_val B C = p ^ k

/-- Uninhabited.  Zsigmondy gives one
primitive prime, not two.  Even if `S`
is not a prime power it can be
`13^a · q^b`. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    ∃ p1 p2, Nat.Prime p1 ∧ Nat.Prime p2 ∧ p1 ≠ p2 ∧
      p1 ∣ S_val B C ∧ p2 ∣ S_val B C ∧
      ¬ p1 ∣ (C - B) ∧ ¬ p2 ∣ (C - B)

/-- Uninhabited.  Same lock in the PID:
`C − B ζ` may still be a prime power
in `Z[ζ13]`.  Two primes above one `p`
would still give one rational prime.
Not `∃ P1 P2, True`. -/
def S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    ∃ p1 p2, Nat.Prime p1 ∧ Nat.Prime p2 ∧ p1 ≠ p2 ∧
      p1 ∣ Norm_C_minus_B_zeta B C ∧
      p2 ∣ Norm_C_minus_B_zeta B C ∧
      ¬ p1 ∣ (C - B) ∧ ¬ p2 ∣ (C - B)

/-- Uninhabited.  Two prime ideals need
not lie over distinct rational primes. -/
def zeta13_two_prime_ideals_give_two_rational_primes : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3 →
    S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3

/-- Uninhabited.  Two independent lifts
can both succeed.  Size `S ≤ 13 C¹²`
does not rule out `53² · 79² ∣ S`. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  The remaining Hensel lock
for both `B ≤ 100` with `C ≥ B+3` and
`B > 100`. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13

/-- Uninhabited.  Sketch odd-`A` close from
bare `C ≥ B+3` without the Hensel lock. -/
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
#check p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#check hensel_lift_example_B1_C460_p53
#check zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#check S_not_fourth_of_order_ne_13_inhabited
#check exists_p_of_two_primes_one_not_square_inhabited
#check S_not_power_of_thirteen_inhabited
#check Norm_C_minus_B_zeta
#check norm_eq_S
#check zeta13_class_number_one
#check zeta13_prime_ideal_factorization_exists
#check C_eq_B_plus_1_or_2_closed
#check S_not_prime_power_when_C_ge_B_plus_3
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3
#check S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3
#check zeta13_two_prime_ideals_give_two_rational_primes
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
#print axioms p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#print axioms hensel_lift_example_B1_C460_p53
#print axioms zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#print axioms S_not_fourth_of_order_ne_13_inhabited
#print axioms exists_p_of_two_primes_one_not_square_inhabited
#print axioms S_not_power_of_thirteen_inhabited
#print axioms norm_eq_S
#print axioms zeta13_class_number_one
#print axioms zeta13_prime_ideal_factorization_exists
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan
