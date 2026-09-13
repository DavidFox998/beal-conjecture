/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.35.0 — S not a proper prime
power on the B ≤ 100 exp-one table
(from Step29, not a ∀ close).

HasPrimeWithExpOne n means some prime
p divides n with p² ∤ n.  A proper
prime power is n = q^k with k ≥ 2,
which forces q² ∣ n.  So exp-one
implies ¬ IsProperPrimePower.

The eight named Step29 rows therefore
are not proper prime powers:
(1,4) p=2731, (1,5) Pratt prime,
(1,8) p=79, (2,5) Pratt prime,
(4,7) p=53, (5,8) p=53,
(10,13) p=53, (100,103) p=599.

This is not “every B ≤ 100”.
S_not_proper_prime_power_when_C_ge_B_plus_3
stays a Prop (Ljunggren / Bugeaud
for B > 100).  The gap-3 exp-one ∀
also stays a Prop.

The Step11 glue
exists_p_with_order_ne_13_of_has_exp_one
is already inhabited in Step28.

Inhabited: the glue
not_proper_prime_power_of_has_exp_one,
eight row wraps, the packed table,
Step29 wraps.

Uninhabited: Ljunggren ∀, exp-one ∀,
exists_p ∀, not_all_p_lift, three bare
odd-A / full-close names, Kraus /
X0(2q) / X0(26) / Modular W
(ExistsNewformLevel2 is 0 ≠ 0).

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
import Mathlib.Tactic

set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 hensel_lift_example_B1_C460_p53)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3
  (IsProperPrimePower not_isProperPrimePower_of_prime
    proper_prime_power_imp_sq_dvd S_val_1_5_not_proper_prime_power)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (HasPrimeWithExpOne S_val_1_5_has_prime_with_exp_one
    exists_p_with_order_ne_13_of_has_exp_one)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
  (S_val_1_4_has_prime_with_exp_one
    S_val_1_8_has_prime_with_exp_one
    S_val_2_5_has_prime_with_exp_one
    S_val_4_7_has_prime_with_exp_one
    S_val_5_8_has_prime_with_exp_one
    S_val_10_13_has_prime_with_exp_one
    S_val_100_103_has_prime_with_exp_one
    S_has_prime_with_exp_one_B_le_100_table_rows
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C4)

/-! ## Exp-one implies not a proper prime power -/

/-- If some prime divides `n` to exponent 1 then `n`
is not `q^k` for `k ≥ 2`: that would force `q² ∣ n`. -/
theorem not_proper_prime_power_of_has_exp_one {n : Nat}
    (h : HasPrimeWithExpOne n) : ¬ IsProperPrimePower n := by
  rintro ⟨q, k, hq, hk, heq⟩
  rcases h with ⟨p, hp, hpdiv, hpnot⟩
  have hpq : p ∣ q := hp.dvd_of_dvd_pow (heq ▸ hpdiv)
  have hp_eq : p = q := (Nat.prime_dvd_prime_iff_eq hp hq).mp hpq
  exact hpnot (hp_eq ▸ proper_prime_power_imp_sq_dvd n q k hq hk heq)

/-! ## Eight computational rows from Step29 -/

theorem S_val_1_4_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 1 4) :=
  not_proper_prime_power_of_has_exp_one S_val_1_4_has_prime_with_exp_one

theorem S_val_1_5_not_proper_prime_power_of_exp_one :
    ¬ IsProperPrimePower (S_val 1 5) :=
  not_proper_prime_power_of_has_exp_one S_val_1_5_has_prime_with_exp_one

theorem S_val_1_8_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 1 8) :=
  not_proper_prime_power_of_has_exp_one S_val_1_8_has_prime_with_exp_one

theorem S_val_2_5_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 2 5) :=
  not_proper_prime_power_of_has_exp_one S_val_2_5_has_prime_with_exp_one

theorem S_val_4_7_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 4 7) :=
  not_proper_prime_power_of_has_exp_one S_val_4_7_has_prime_with_exp_one

theorem S_val_5_8_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 5 8) :=
  not_proper_prime_power_of_has_exp_one S_val_5_8_has_prime_with_exp_one

theorem S_val_10_13_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 10 13) :=
  not_proper_prime_power_of_has_exp_one S_val_10_13_has_prime_with_exp_one

theorem S_val_100_103_not_proper_prime_power :
    ¬ IsProperPrimePower (S_val 100 103) :=
  not_proper_prime_power_of_has_exp_one S_val_100_103_has_prime_with_exp_one

/-- Eight named `B ≤ 100` gap-3 coprime rows are
not proper prime powers.  Not a `∀`. -/
theorem S_not_proper_prime_power_B_le_100_from_exp_one_table_rows :
    ¬ IsProperPrimePower (S_val 1 4) ∧
    ¬ IsProperPrimePower (S_val 1 5) ∧
    ¬ IsProperPrimePower (S_val 1 8) ∧
    ¬ IsProperPrimePower (S_val 2 5) ∧
    ¬ IsProperPrimePower (S_val 4 7) ∧
    ¬ IsProperPrimePower (S_val 5 8) ∧
    ¬ IsProperPrimePower (S_val 10 13) ∧
    ¬ IsProperPrimePower (S_val 100 103) :=
  ⟨S_val_1_4_not_proper_prime_power,
    S_val_1_5_not_proper_prime_power_of_exp_one,
    S_val_1_8_not_proper_prime_power,
    S_val_2_5_not_proper_prime_power,
    S_val_4_7_not_proper_prime_power,
    S_val_5_8_not_proper_prime_power,
    S_val_10_13_not_proper_prime_power,
    S_val_100_103_not_proper_prime_power⟩

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; eight rows are not a `∀`.
`B > 100` needs Bugeaud–Corvaja–Zannier. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ IsProperPrimePower (S_val B C)

/-- Uninhabited.  Eight rows are not every `B ≤ 100`. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    HasPrimeWithExpOne (S_val B C) ∧
      ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
        ¬ p ∣ (C - B) ∧ ¬ p ^ 2 ∣ S_val B C

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → B + 3 ≤ C → False

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → False

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

#check S_val
#check S_bounds
#check HasPrimeWithExpOne
#check IsProperPrimePower
#check not_proper_prime_power_of_has_exp_one
#check S_val_1_4_not_proper_prime_power
#check S_val_1_5_not_proper_prime_power
#check S_val_1_5_not_proper_prime_power_of_exp_one
#check S_val_1_8_not_proper_prime_power
#check S_val_2_5_not_proper_prime_power
#check S_val_4_7_not_proper_prime_power
#check S_val_5_8_not_proper_prime_power
#check S_val_10_13_not_proper_prime_power
#check S_val_100_103_not_proper_prime_power
#check S_not_proper_prime_power_B_le_100_from_exp_one_table_rows
#check S_has_prime_with_exp_one_B_le_100_table_rows
#check exists_p_with_order_ne_13_of_has_exp_one
#check exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
#check S_not_proper_prime_power_when_C_ge_B_plus_3
#check S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms not_proper_prime_power_of_has_exp_one
#print axioms S_val_1_4_not_proper_prime_power
#print axioms S_val_1_5_not_proper_prime_power_of_exp_one
#print axioms S_val_1_8_not_proper_prime_power
#print axioms S_val_2_5_not_proper_prime_power
#print axioms S_val_4_7_not_proper_prime_power
#print axioms S_val_5_8_not_proper_prime_power
#print axioms S_val_10_13_not_proper_prime_power
#print axioms S_val_100_103_not_proper_prime_power
#print axioms S_not_proper_prime_power_B_le_100_from_exp_one_table_rows
#print axioms exists_p_with_order_ne_13_of_has_exp_one
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one
