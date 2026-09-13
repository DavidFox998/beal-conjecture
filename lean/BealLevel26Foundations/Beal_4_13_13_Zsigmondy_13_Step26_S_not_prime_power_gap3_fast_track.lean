/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.31.0 — S not a prime power
on C ≥ B+3 is false (gap-3 fast track).

The sketch claimed: if C ≥ B+3 then
S = (C^13 − B^13)/(C − B) is never a
prime power, so Zsigmondy plus ω(S) ≥ 2
gives two distinct primitive primes.

That ∀ is false.  B = 1, C = 5 is
coprime with C = B+4 ≥ B+3, and
S_val 1 5 = 305175781 is prime
(Pratt certificate, witness a = 6).
So S is a prime power on a gap-3 pair
and has exactly one prime factor.

Bugeaud–Shorey P(Φ₁₃) > C does not
force ω ≥ 2: if S itself is prime then
P(S) = S > C holds with ω = 1.  A
B ≤ 100 table with C = B+3..B+100
would have listed (1, 5).  Mathlib
4.12 has no Bugeaud–Shorey library.

Inhabited:
`S_val`, `S_bounds`,
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`hensel_lift_example_B1_C460_p53`,
`zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited`,
`S_not_fourth_of_order_ne_13_inhabited`,
`S_not_power_of_thirteen_inhabited`,
`phi13_derivative_separable_mod_p_inhabited`,
`hensel_unique_lift_of_phi13_root_inhabited`,
`p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited`,
`primes_eq1_mod13_infinite`,
`density_p_div_S`,
`thin_set_p_sq_div_S`,
`S_val_1_5`, `S_val_1_5_prime`,
`S_prime_power_example_B1_C5`,
`prime_power_S_eq_zsigmondy_prime`,
`S_not_prime_power_when_C_ge_B_plus_3_fast_refuted`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted`,
`exists_p_with_order_ne_13_mod_p_sq_example_B1_C5`.

Uninhabited (honest):
`S_not_prime_power_when_C_ge_B_plus_3_fast`
(the sketch ∀, now known false),
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast`,
`not_all_p_lift_when_two_primes`,
`chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
(the remaining ∀ Hensel lock; one pair
is not a ∀; C = B+1 and C = B+2 are
already closed, C ≥ B+3 still needs it
on pairs that are not prime S),
`beal_odd_A_closed_via_zsig_hensel_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`.
Plus Kraus / X0(2q), X0(26) matching,
and Modular W (0 ≠ 0).

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p^2 ∣ S`.
Does **not** inhabit a new Beal `∀`.
Does **not** inhabit the sketch
`S_not_prime_power` ∀ as true.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt
import Mathlib.Tactic

set_option maxRecDepth 10000
set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
  (zsigmondy_exists_primitive_inhabited)
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
    exists_p_of_two_primes_one_not_square_inhabited
    S_not_power_of_thirteen)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan
  (norm_eq_S S_not_power_of_thirteen_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan
  (phi13_derivative_separable_mod_p_inhabited
    hensel_unique_lift_of_phi13_root_inhabited
    p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
    primes_eq1_mod13_infinite
    density_p_div_S
    thin_set_p_sq_div_S)
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt
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

/-! ## Counterexample S(1, 5) = 305175781 -/

/-- Pratt factors of `305175781 − 1`. -/
def S_val_1_5_qs : List Nat := [2, 2, 3, 3, 5, 7, 13, 31, 601]

theorem S_val_1_5 : S_val 1 5 = 305175781 := by decide

theorem S_val_1_5_gt_one : 1 < 305175781 := by decide

theorem S_val_1_5_lt_2pow32 : 305175781 < 2 ^ 32 := by decide

theorem S_val_1_5_coprime_wit : Nat.Coprime 6 305175781 := by decide

theorem S_val_1_5_pratt_prod : S_val_1_5_qs.prod = 305175780 := by decide

theorem S_val_1_5_pratt_primes :
    ∀ q ∈ S_val_1_5_qs, Nat.Prime q := by decide

theorem S_val_1_5_pratt_pow : modPow 6 305175780 305175781 = 1 := by decide

theorem S_val_1_5_pratt_ne :
    ∀ q ∈ S_val_1_5_qs.dedup,
      modPow 6 (305175780 / q) 305175781 ≠ 1 := by decide

/-- Pratt primality of the integer 305175781. -/
theorem prime_305175781 : Nat.Prime 305175781 :=
  prime_of_pratt (n := 305175781) (a := 6) S_val_1_5_qs
    S_val_1_5_gt_one S_val_1_5_lt_2pow32 S_val_1_5_coprime_wit
    S_val_1_5_pratt_prod S_val_1_5_pratt_primes
    S_val_1_5_pratt_pow S_val_1_5_pratt_ne

/-- `S_val 1 5` is prime. -/
theorem S_val_1_5_prime : Nat.Prime (S_val 1 5) := by
  rw [S_val_1_5]
  exact prime_305175781

theorem S_val_1_5_mod_13 : S_val 1 5 % 13 = 1 := by
  rw [S_val_1_5]

/-- Gap-3 pair on which `S` is the prime power `p^1`. -/
theorem S_prime_power_example_B1_C5 :
    Nat.Prime (S_val 1 5) ∧ S_val 1 5 = (S_val 1 5) ^ 1 :=
  ⟨S_val_1_5_prime, (pow_one (S_val 1 5)).symm⟩

/-- If `S = q^k` then every prime dividing `S` equals `q`.
In particular the Zsigmondy primitive prime is `q`. -/
theorem prime_power_S_eq_zsigmondy_prime
    (B C q k p : Nat) (hq : Nat.Prime q) (hp : Nat.Prime p)
    (hS : S_val B C = q ^ k) (hpS : p ∣ S_val B C) :
    p = q := by
  have hdiv : p ∣ q ^ k := by rwa [hS] at hpS
  exact (Nat.prime_dvd_prime_iff_eq hp hq).mp (hp.dvd_of_dvd_pow hdiv)

/-! ## Sketch ∀ names (uninhabited) and their refutations -/

/-- Uninhabited sketch.  False: `S_val 1 5` is prime. -/
def S_not_prime_power_when_C_ge_B_plus_3_fast : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ ∃ p k, Nat.Prime p ∧ S_val B C = p ^ k

/-- Uninhabited sketch.  False on `B = 1`, `C = 5`. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ∃ p1 p2, Nat.Prime p1 ∧ Nat.Prime p2 ∧ p1 ≠ p2 ∧
      p1 ∣ S_val B C ∧ p2 ∣ S_val B C ∧
      ¬ p1 ∣ (C - B) ∧ ¬ p2 ∣ (C - B)

/-- The gap-3 “never a prime power” sketch is false. -/
theorem S_not_prime_power_when_C_ge_B_plus_3_fast_refuted :
    ¬ S_not_prime_power_when_C_ge_B_plus_3_fast := by
  intro h
  have hclaim := h 1 5 (by decide) (Nat.coprime_one_left 5) (by decide)
  exact hclaim ⟨S_val 1 5, 1, S_val_1_5_prime, (pow_one (S_val 1 5)).symm⟩

/-- The gap-3 “two distinct primitive primes” sketch is false. -/
theorem S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted :
    ¬ S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast := by
  intro h
  obtain ⟨p1, p2, hp1, hp2, hne, hd1, hd2, _⟩ :=
    h 1 5 (by decide) (Nat.coprime_one_left 5) (by decide)
  have hpS : Nat.Prime 305175781 := prime_305175781
  rw [S_val_1_5] at hd1 hd2
  have eq1 : p1 = 305175781 := (Nat.prime_dvd_prime_iff_eq hp1 hpS).mp hd1
  have eq2 : p2 = 305175781 := (Nat.prime_dvd_prime_iff_eq hp2 hpS).mp hd2
  exact hne (eq1.trans eq2.symm)

/-! ## On this pair the Hensel lock is open -/

theorem S_val_1_5_not_dvd_gap : ¬ S_val 1 5 ∣ (5 - 1) := by
  rw [S_val_1_5]
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 4)
    (by decide : (4 : Nat) < 305175781)

theorem S_val_1_5_not_dvd_C : ¬ S_val 1 5 ∣ 5 := by
  rw [S_val_1_5]
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : Nat) < 5)
    (by decide : (5 : Nat) < 305175781)

theorem S_val_1_5_not_dvd_B : ¬ S_val 1 5 ∣ 1 :=
  Nat.Prime.not_dvd_one S_val_1_5_prime

theorem S_val_1_5_ne_thirteen : S_val 1 5 ≠ 13 := by
  rw [S_val_1_5]
  decide

theorem S_val_1_5_not_p_sq_dvd : ¬ (S_val 1 5) ^ 2 ∣ S_val 1 5 := by
  have hp : Nat.Prime (S_val 1 5) := S_val_1_5_prime
  have hlt : S_val 1 5 < (S_val 1 5) ^ 2 := by
    rw [pow_two]
    exact Nat.lt_mul_self_iff.mpr hp.one_lt
  exact Nat.not_dvd_of_pos_of_lt hp.pos hlt

/--
On `B = 1`, `C = 5` the unique prime of `S` does
not square-divide `S`, so the Step11 dichotomy
gives order ≠ 13 in `(ℤ/p²)ˣ`.  This is one pair,
not the `∀ B C` Hensel lock.
-/
theorem exists_p_with_order_ne_13_mod_p_sq_example_B1_C5 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 5 ∧ ¬ p ∣ (5 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 5) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 5 1 p hp hNotC hNotB ≠ 13 := by
  refine ⟨S_val 1 5, S_val_1_5_prime, Nat.dvd_refl _,
    S_val_1_5_not_dvd_gap, S_val_1_5_not_dvd_C, S_val_1_5_not_dvd_B, ?_⟩
  intro hord
  have hiff :=
    p_sq_dvd_S_iff_order_13_mod_p_sq (B := 1) (C := 5) (p := S_val 1 5)
      S_val_1_5_prime S_val_1_5_ne_thirteen (by decide)
      S_val_1_5_not_dvd_C S_val_1_5_not_dvd_B S_val_1_5_not_dvd_gap
  exact S_val_1_5_not_p_sq_dvd (hiff.mpr hord)

/-! ## Honesty lock: sketch ∀ and exists-`p` stay Props -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Two independent lifts can both
succeed.  Size `S ≤ 13 C¹²` does not rule out
`53² · 79² ∣ S`. -/
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
Need `C · B⁻¹ ≢ t*` modulo `p²` for at least one
primitive prime.  The pair `B = 1`, `C = 5` is
settled above; that is not a `∀`. -/
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
#check norm_eq_S
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
#check S_not_prime_power_when_C_ge_B_plus_3_fast
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast
#check S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted
#check exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
#check C_eq_B_plus_1_or_2_closed
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
#print axioms p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#print axioms hensel_lift_example_B1_C460_p53
#print axioms zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#print axioms S_not_fourth_of_order_ne_13_inhabited
#print axioms S_not_power_of_thirteen_inhabited
#print axioms phi13_derivative_separable_mod_p_inhabited
#print axioms hensel_unique_lift_of_phi13_root_inhabited
#print axioms p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
#print axioms primes_eq1_mod13_infinite
#print axioms density_p_div_S
#print axioms thin_set_p_sq_div_S
#print axioms S_val_1_5
#print axioms S_val_1_5_prime
#print axioms S_prime_power_example_B1_C5
#print axioms prime_power_S_eq_zsigmondy_prime
#print axioms S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
#print axioms S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted
#print axioms exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track
