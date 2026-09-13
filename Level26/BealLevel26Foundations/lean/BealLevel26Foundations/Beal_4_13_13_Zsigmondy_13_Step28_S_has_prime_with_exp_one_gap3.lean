/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.33.0 — S has a prime with
exponent 1 on C ≥ B+3 stays a Prop,
with B = 1, C = 5 as the prime example.

HasPrimeWithExpOne n means some prime
p divides n to exponent exactly 1
(¬ p² ∣ n).  That is the negation of
IsSquarefull.  A prime is never
squarefull, so S_val 1 5 has exp one.

The Step11 dichotomy says
p² ∣ S ↔ order = 13 in (ℤ/p²)ˣ.
So a primitive prime with exp one
gives order ≠ 13.  That glue is
inhabited.  The ∀ “every coprime
gap-3 pair has an exp-one prime”
stays a Prop: a B ≤ 100 table is
not shipped, and B > 100 needs
Bugeaud–Corvaja–Zannier (Mathlib
4.12 has neither).

Even ¬ IsProperPrimePower does not
give exp one: S = p1² · p2² is not
a proper prime power and still has
every exponent ≥ 2.

Inhabited:
`IsProperPrimePower`,
`not_isProperPrimePower_of_prime`,
`proper_prime_power_imp_sq_dvd`,
`IsSquarefull`, `HasPrimeWithExpOne`,
`not_squarefull_of_prime`,
`hasPrimeWithExpOne_iff_not_squarefull`,
`hasPrimeWithExpOne_of_prime`,
`S_val_1_5`, `S_val_1_5_prime`,
`S_val_1_5_not_proper_prime_power`,
`S_val_1_5_has_prime_with_exp_one`,
`S_has_prime_with_exp_one_example_B1_C5`,
`exists_p_with_order_ne_13_of_has_exp_one`,
`exists_p_with_order_ne_13_mod_p_sq_example_B1_C5`,
Step20–26 wraps.

Uninhabited (honest):
`S_not_proper_prime_power_when_C_ge_B_plus_3`,
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
(equivalent to exp-one plus the
dichotomy glue, still a ∀),
`not_all_p_lift_when_two_primes`,
`chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3`,
three bare odd-A / full-close names,
Kraus / X0(2q) / X0(26) / Modular W
(`ExistsNewformLevel2` is `0 ≠ 0`).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p^2 ∣ S`.
Does **not** inhabit a new Beal `∀`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3
import Mathlib.Tactic

set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2
    hensel_lift_example_B1_C460_p53
    C_eq_B_plus_1_or_2_closed
    p_sq_dvd_S_iff_order_13_mod_p_sq)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan
  (p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan
  (zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
    S_not_fourth_of_order_ne_13_inhabited
    exists_p_of_two_primes_one_not_square_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan
  (norm_eq_S S_not_power_of_thirteen_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan
  (phi13_derivative_separable_mod_p_inhabited
    hensel_unique_lift_of_phi13_root_inhabited
    p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
    primes_eq1_mod13_infinite
    density_p_div_S
    thin_set_p_sq_div_S)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track
  (S_val_1_5 S_val_1_5_prime S_prime_power_example_B1_C5
    prime_power_S_eq_zsigmondy_prime
    S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
    S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
    S_val_1_5_not_dvd_gap S_val_1_5_not_p_sq_dvd
    S_val_1_5_not_dvd_C S_val_1_5_not_dvd_B
    S_val_1_5_ne_thirteen)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3
  (IsProperPrimePower
    not_isProperPrimePower_of_prime
    proper_prime_power_imp_sq_dvd
    S_val_1_5_not_proper_prime_power)
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

/-! ## Squarefull vs exponent one -/

/-- Every prime dividing `n` has exponent at least 2. -/
def IsSquarefull (n : Nat) : Prop :=
  ∀ p, Nat.Prime p → p ∣ n → p ^ 2 ∣ n

/-- Some prime divides `n` to exponent exactly 1. -/
def HasPrimeWithExpOne (n : Nat) : Prop :=
  ∃ p, Nat.Prime p ∧ p ∣ n ∧ ¬ p ^ 2 ∣ n

theorem hasPrimeWithExpOne_iff_not_squarefull (n : Nat) :
    HasPrimeWithExpOne n ↔ ¬ IsSquarefull n := by
  unfold HasPrimeWithExpOne IsSquarefull
  push_neg
  rfl

/-- A prime is not squarefull: `p ∣ p` but `p² ∤ p`. -/
theorem not_squarefull_of_prime {n : Nat} (hn : Nat.Prime n) :
    ¬ IsSquarefull n := by
  intro h
  have hsq : n ^ 2 ∣ n := h n hn (dvd_refl n)
  have hlt : n < n ^ 2 := by
    rw [pow_two]
    exact Nat.lt_mul_self_iff.mpr hn.one_lt
  exact Nat.not_dvd_of_pos_of_lt hn.pos hlt hsq

theorem hasPrimeWithExpOne_of_prime {n : Nat} (hn : Nat.Prime n) :
    HasPrimeWithExpOne n :=
  (hasPrimeWithExpOne_iff_not_squarefull n).mpr (not_squarefull_of_prime hn)

/-- `S_val 1 5` is prime, hence has exponent one. -/
theorem S_val_1_5_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 1 5) :=
  hasPrimeWithExpOne_of_prime S_val_1_5_prime

/-- On `B = 1`, `C = 5` the unique prime of `S` does not
square-divide `S` and does not divide the gap. -/
theorem S_has_prime_with_exp_one_example_B1_C5 :
    ∃ p, Nat.Prime p ∧ p ∣ S_val 1 5 ∧
      ¬ p ∣ (5 - 1) ∧ ¬ p ^ 2 ∣ S_val 1 5 :=
  ⟨S_val 1 5, S_val_1_5_prime, Nat.dvd_refl _,
    S_val_1_5_not_dvd_gap, S_val_1_5_not_p_sq_dvd⟩

/--
Glue: a primitive prime with `p² ∤ S` has order ≠ 13
in `(ℤ/p²)ˣ`, by the Step11 dichotomy.
This is not the `∀ B C` Hensel lock.
-/
theorem exists_p_with_order_ne_13_of_has_exp_one
    (B C p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hBltC : B < C) (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B)
    (hpS : p ∣ S_val B C) (hpnot : ¬ p ∣ (C - B))
    (hpnotSq : ¬ p ^ 2 ∣ S_val B C) :
    order_of_C_B_inv_mod_p2 C B p hPrime hNotC hNotB ≠ 13 := by
  intro hord
  have hiff :=
    p_sq_dvd_S_iff_order_13_mod_p_sq B C p hPrime hp13
      hBltC hNotC hNotB hpnot
  exact hpnotSq (hiff.mpr hord)

/-! ## Honesty lock: gap-3 ∀ and exists-`p` stay Props -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; `B = 1`, `C = 5` is `k = 1`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ IsProperPrimePower (S_val B C)

/-- Uninhabited.  Table `B ≤ 100` plus Bugeaud–Corvaja–Zannier
for `B > 100` are not in Mathlib 4.12.  Equivalent to
`exists_p` once the dichotomy glue is applied, still a `∀`. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    HasPrimeWithExpOne (S_val B C) ∧
      ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
        ¬ p ∣ (C - B) ∧ ¬ p ^ 2 ∣ S_val B C

/-- Uninhabited.  Two independent lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  Density heuristic, not a proof. -/
def chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
      ¬ p ∣ (C - B) ∧ ¬ p ^ 2 ∣ S_val B C

/-- Uninhabited.  The remaining `∀ B C` Hensel lock.
Follows from `S_has_prime_with_exp_one_when_C_ge_B_plus_3`
plus `exists_p_with_order_ne_13_of_has_exp_one`, once that
∀ is closed.  Extra `¬ p ∣ C`, `¬ p ∣ B`, `p ≠ 13` are
the primitive/dichotomy hyps. -/
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

/-- Uninhabited.  Even-`A` close is still a Prop. -/
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
#check phi13_derivative_separable_mod_p_inhabited
#check hensel_unique_lift_of_phi13_root_inhabited
#check p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
#check primes_eq1_mod13_infinite
#check density_p_div_S
#check thin_set_p_sq_div_S
#check S_val_1_5
#check S_val_1_5_prime
#check S_prime_power_example_B1_C5
#check prime_power_S_eq_zsigmondy_prime
#check S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted
#check exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
#check IsProperPrimePower
#check not_isProperPrimePower_of_prime
#check proper_prime_power_imp_sq_dvd
#check S_val_1_5_not_proper_prime_power
#check IsSquarefull
#check HasPrimeWithExpOne
#check not_squarefull_of_prime
#check hasPrimeWithExpOne_iff_not_squarefull
#check hasPrimeWithExpOne_of_prime
#check S_val_1_5_has_prime_with_exp_one
#check S_has_prime_with_exp_one_example_B1_C5
#check exists_p_with_order_ne_13_of_has_exp_one
#check S_not_proper_prime_power_when_C_ge_B_plus_3
#check S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check not_all_p_lift_when_two_primes
#check chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3
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
#print axioms S_val_1_5_prime
#print axioms S_val_1_5_not_proper_prime_power
#print axioms not_squarefull_of_prime
#print axioms hasPrimeWithExpOne_iff_not_squarefull
#print axioms hasPrimeWithExpOne_of_prime
#print axioms S_val_1_5_has_prime_with_exp_one
#print axioms S_has_prime_with_exp_one_example_B1_C5
#print axioms exists_p_with_order_ne_13_of_has_exp_one
#print axioms exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
