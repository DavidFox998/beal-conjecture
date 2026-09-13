/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.34.0 — B ≤ 100 exp-one table
(computational rows, not a ∀ close).

HasPrimeWithExpOne n means some prime
p divides n with p² ∤ n.  A named
gap-3 coprime pair with B ≤ 100 is
closed by exhibiting such a p:
either S itself is prime (Pratt), or
a small prime divides S to exponent 1
(`decide` on `(C : ZMod p)^13` vs
`(B : ZMod p)^13`, never on the
full integer `S_val`).

Rows inhabited here:
(1,4) p=2731, (1,5) Pratt prime,
(1,8) p=79, (2,5) Pratt prime,
(4,7) p=53, (5,8) p=53,
(10,13) p=53, (100,103) p=599.

This is not “every B ≤ 100”.
S_has_prime_with_exp_one_when_C_ge_B_plus_3
stays a Prop.  B > 100 squarefull
rarity is Bugeaud-type, also a Prop.

The Step11 glue
exists_p_with_order_ne_13_of_has_exp_one
is already inhabited in Step28:
p^2 does not divide S implies order != 13.

Inhabited: table rows, Step28 wraps,
glue wrap, (1,4) glue example.

Uninhabited: the gap-3 ∀, Ljunggren ∀,
exists_p ∀, not_all_p_lift, three bare
odd-A / full-close names, Kraus /
X0(2q) / X0(26) / Modular W
(ExistsNewformLevel2 is 0 ≠ 0).

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxRecDepth 10000
set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (S_13 C13_sub_B13_eq_sub_mul_S)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 hensel_lift_example_B1_C460_p53)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan
  (p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan
  (phi13_derivative_separable_mod_p_inhabited
    hensel_unique_lift_of_phi13_root_inhabited
    p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
    primes_eq1_mod13_infinite density_p_div_S thin_set_p_sq_div_S)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track
  (S_val_1_5 S_val_1_5_prime
    S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
    exists_p_with_order_ne_13_mod_p_sq_example_B1_C5)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3
  (IsProperPrimePower not_isProperPrimePower_of_prime
    proper_prime_power_imp_sq_dvd S_val_1_5_not_proper_prime_power)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (IsSquarefull HasPrimeWithExpOne
    not_squarefull_of_prime hasPrimeWithExpOne_of_prime
    S_val_1_5_has_prime_with_exp_one
    S_has_prime_with_exp_one_example_B1_C5
    exists_p_with_order_ne_13_of_has_exp_one)
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

/-! ## ZMod remainder witnesses (no unfolding of `S_val`) -/

theorem p_dvd_S_val_of_pow13_eq
    (B C p : Nat) [NeZero p] (hBltC : B < C) (hp : Nat.Prime p)
    (hcop : ¬ p ∣ C - B)
    (heq : (C : ZMod p) ^ 13 = (B : ZMod p) ^ 13) :
    p ∣ S_val B C := by
  have hS : S_val B C = S_13 C B :=
    S_val_eq_S_13_of_B_lt_C B C hBltC
  have hfac : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  have hprod : C ^ 13 - B ^ 13 = (C - B) * S_val B C := by
    rw [hS]; exact hfac
  have hle : B ^ 13 ≤ C ^ 13 :=
    Nat.pow_le_pow_left (Nat.le_of_lt hBltC) 13
  have hcast : ((B ^ 13 : Nat) : ZMod p) = ((C ^ 13 : Nat) : ZMod p) := by
    simpa [Nat.cast_pow] using heq.symm
  have hmod : B ^ 13 ≡ C ^ 13 [MOD p] :=
    (ZMod.natCast_eq_natCast_iff (B ^ 13) (C ^ 13) p).mp hcast
  have hdiff : p ∣ C ^ 13 - B ^ 13 :=
    (Nat.modEq_iff_dvd' hle).mp hmod
  have hmul : p ∣ (C - B) * S_val B C := by
    rwa [← hprod]
  exact (hp.dvd_mul.mp hmul).resolve_left hcop

/-- `q` is the numeral `p * p`, so `decide` never sees `p ^ 2`
as a `ZMod` modulus. -/
theorem not_p_sq_dvd_S_val_of_pow13_ne
    (B C p q : Nat) [NeZero q] (hBltC : B < C) (hsq : q = p * p)
    (hne : (C : ZMod q) ^ 13 ≠ (B : ZMod q) ^ 13) :
    ¬ p ^ 2 ∣ S_val B C := by
  subst hsq
  have hp2 : p ^ 2 = p * p := pow_two p
  intro hsqS
  have hS : S_val B C = S_13 C B :=
    S_val_eq_S_13_of_B_lt_C B C hBltC
  have hfac : C ^ 13 - B ^ 13 = (C - B) * S_13 C B :=
    C13_sub_B13_eq_sub_mul_S C B
  have hprod : C ^ 13 - B ^ 13 = (C - B) * S_val B C := by
    rw [hS]; exact hfac
  have hdiff : p * p ∣ C ^ 13 - B ^ 13 := by
    rw [hprod, ← hp2]
    exact dvd_mul_of_dvd_right hsqS (C - B)
  have hle : B ^ 13 ≤ C ^ 13 :=
    Nat.pow_le_pow_left (Nat.le_of_lt hBltC) 13
  have hmod : B ^ 13 ≡ C ^ 13 [MOD p * p] :=
    (Nat.modEq_iff_dvd' hle).mpr hdiff
  have hcast : ((B ^ 13 : Nat) : ZMod (p * p)) =
      ((C ^ 13 : Nat) : ZMod (p * p)) :=
    (ZMod.natCast_eq_natCast_iff (B ^ 13) (C ^ 13) (p * p)).mpr hmod
  have heq : (C : ZMod (p * p)) ^ 13 = (B : ZMod (p * p)) ^ 13 := by
    simpa [Nat.cast_pow] using hcast.symm
  exact hne heq

theorem has_exp_one_of_zmod
    (B C p q : Nat) [NeZero p] [NeZero q]
    (hBltC : B < C) (hp : Nat.Prime p) (hsq : q = p * p)
    (hcop : ¬ p ∣ C - B)
    (heq : (C : ZMod p) ^ 13 = (B : ZMod p) ^ 13)
    (hne : (C : ZMod q) ^ 13 ≠ (B : ZMod q) ^ 13) :
    HasPrimeWithExpOne (S_val B C) :=
  ⟨p, hp, p_dvd_S_val_of_pow13_eq B C p hBltC hp hcop heq,
    not_p_sq_dvd_S_val_of_pow13_ne B C p q hBltC hsq hne⟩

/-- Small `S` rows: decide remainders on the numeral, not on `S_val`. -/
theorem has_exp_one_of_numeral
    (B C p q n : Nat) (hp : Nat.Prime p)
    (heq : S_val B C = n) (hsq : q = p * p)
    (h0 : n % p = 0) (h1 : n % q ≠ 0) :
    HasPrimeWithExpOne (S_val B C) := by
  have hp2 : p ^ 2 = p * p := pow_two p
  have h0' : S_val B C % p = 0 := by rw [heq]; exact h0
  have h1' : S_val B C % (p ^ 2) ≠ 0 := by
    rw [heq, hp2, ← hsq]; exact h1
  exact ⟨p, hp, Nat.dvd_of_mod_eq_zero h0', mt Nat.mod_eq_zero_of_dvd h1'⟩

/-! ## Eight computational rows -/

theorem lt_1_4 : (1 : Nat) < 4 := by decide
theorem coprime_1_4_2731 : ¬ 2731 ∣ (4 - 1) := by decide
theorem sq_2731 : (7458361 : Nat) = 2731 * 2731 := by decide
theorem S_val_1_4 : S_val 1 4 = 22369621 := by decide
theorem S_val_1_4_mod_2731 : 22369621 % 2731 = 0 := by decide
theorem S_val_1_4_mod_7458361 : 22369621 % 7458361 ≠ 0 := by decide

/-- Pratt factors of `2731 − 1`. -/
def prime_2731_qs : List Nat := [2, 3, 5, 7, 13]

theorem prime_2731_gt_one : 1 < 2731 := by decide
theorem prime_2731_lt_2pow32 : 2731 < 2 ^ 32 := by decide
theorem prime_2731_coprime : Nat.Coprime 3 2731 := by decide
theorem prime_2731_prod : prime_2731_qs.prod = 2730 := by decide
theorem prime_2731_primes : ∀ q ∈ prime_2731_qs, Nat.Prime q := by decide
theorem prime_2731_pow : modPow 3 2730 2731 = 1 := by decide
theorem prime_2731_ne :
    ∀ q ∈ prime_2731_qs.dedup, modPow 3 (2730 / q) 2731 ≠ 1 := by decide

theorem prime_2731 : Nat.Prime 2731 :=
  prime_of_pratt (n := 2731) (a := 3) prime_2731_qs
    prime_2731_gt_one prime_2731_lt_2pow32 prime_2731_coprime
    prime_2731_prod prime_2731_primes prime_2731_pow prime_2731_ne

theorem S_val_1_4_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 1 4) :=
  has_exp_one_of_numeral 1 4 2731 7458361 22369621 prime_2731
    S_val_1_4 sq_2731 S_val_1_4_mod_2731 S_val_1_4_mod_7458361

theorem lt_1_8 : (1 : Nat) < 8 := by decide
theorem prime_79 : Nat.Prime 79 := by decide
theorem coprime_1_8_79 : ¬ 79 ∣ (8 - 1) := by decide
theorem sq_79 : (6241 : Nat) = 79 * 79 := by decide
theorem zmod_1_8_79 : (8 : ZMod 79) ^ 13 = (1 : ZMod 79) ^ 13 :=
  by decide
theorem zmod_1_8_6241 :
    (8 : ZMod 6241) ^ 13 ≠ (1 : ZMod 6241) ^ 13 := by decide

theorem S_val_1_8_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 1 8) :=
  has_exp_one_of_zmod 1 8 79 6241 lt_1_8 prime_79 sq_79
    coprime_1_8_79 zmod_1_8_79 zmod_1_8_6241

/-- Pratt factors of `406898311 − 1`. -/
def S_val_2_5_qs : List Nat := [2, 3, 5, 7, 13, 113, 1319]

theorem S_val_2_5 : S_val 2 5 = 406898311 := by decide

theorem S_val_2_5_gt_one : 1 < 406898311 := by decide

theorem S_val_2_5_lt_2pow32 : 406898311 < 2 ^ 32 := by decide

theorem S_val_2_5_coprime_wit : Nat.Coprime 12 406898311 := by decide

theorem S_val_2_5_pratt_prod : S_val_2_5_qs.prod = 406898310 := by decide

theorem S_val_2_5_pratt_primes :
    ∀ q ∈ S_val_2_5_qs, Nat.Prime q := by decide

theorem S_val_2_5_pratt_pow : modPow 12 406898310 406898311 = 1 := by decide

theorem S_val_2_5_pratt_ne :
    ∀ q ∈ S_val_2_5_qs.dedup,
      modPow 12 (406898310 / q) 406898311 ≠ 1 := by decide

theorem prime_406898311 : Nat.Prime 406898311 :=
  prime_of_pratt (n := 406898311) (a := 12) S_val_2_5_qs
    S_val_2_5_gt_one S_val_2_5_lt_2pow32 S_val_2_5_coprime_wit
    S_val_2_5_pratt_prod S_val_2_5_pratt_primes
    S_val_2_5_pratt_pow S_val_2_5_pratt_ne

theorem S_val_2_5_prime : Nat.Prime (S_val 2 5) := by
  rw [S_val_2_5]
  exact prime_406898311

theorem S_val_2_5_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 2 5) :=
  hasPrimeWithExpOne_of_prime S_val_2_5_prime

theorem lt_4_7 : (4 : Nat) < 7 := by decide
theorem prime_53 : Nat.Prime 53 := by decide
theorem coprime_4_7_53 : ¬ 53 ∣ (7 - 4) := by decide
theorem sq_53 : (2809 : Nat) = 53 * 53 := by decide
theorem zmod_4_7_53 : (7 : ZMod 53) ^ 13 = (4 : ZMod 53) ^ 13 :=
  by decide
theorem zmod_4_7_2809 :
    (7 : ZMod 2809) ^ 13 ≠ (4 : ZMod 2809) ^ 13 := by decide

theorem S_val_4_7_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 4 7) :=
  has_exp_one_of_zmod 4 7 53 2809 lt_4_7 prime_53 sq_53
    coprime_4_7_53 zmod_4_7_53 zmod_4_7_2809

theorem lt_5_8 : (5 : Nat) < 8 := by decide
theorem coprime_5_8_53 : ¬ 53 ∣ (8 - 5) := by decide
theorem zmod_5_8_53 : (8 : ZMod 53) ^ 13 = (5 : ZMod 53) ^ 13 :=
  by decide
theorem zmod_5_8_2809 :
    (8 : ZMod 2809) ^ 13 ≠ (5 : ZMod 2809) ^ 13 := by decide

theorem S_val_5_8_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 5 8) :=
  has_exp_one_of_zmod 5 8 53 2809 lt_5_8 prime_53 sq_53
    coprime_5_8_53 zmod_5_8_53 zmod_5_8_2809

theorem lt_10_13 : (10 : Nat) < 13 := by decide
theorem coprime_10_13_53 : ¬ 53 ∣ (13 - 10) := by decide
theorem zmod_10_13_53 : (13 : ZMod 53) ^ 13 = (10 : ZMod 53) ^ 13 :=
  by decide
theorem zmod_10_13_2809 :
    (13 : ZMod 2809) ^ 13 ≠ (10 : ZMod 2809) ^ 13 := by decide

theorem S_val_10_13_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 10 13) :=
  has_exp_one_of_zmod 10 13 53 2809 lt_10_13 prime_53 sq_53
    coprime_10_13_53 zmod_10_13_53 zmod_10_13_2809

theorem lt_100_103 : (100 : Nat) < 103 := by decide
theorem prime_599 : Nat.Prime 599 := by decide
theorem coprime_100_103_599 : ¬ 599 ∣ (103 - 100) := by decide
theorem sq_599 : (358801 : Nat) = 599 * 599 := by decide
theorem zmod_100_103_599 :
    (103 : ZMod 599) ^ 13 = (100 : ZMod 599) ^ 13 := by decide
theorem zmod_100_103_358801 :
    (103 : ZMod 358801) ^ 13 ≠ (100 : ZMod 358801) ^ 13 := by decide

theorem S_val_100_103_has_prime_with_exp_one :
    HasPrimeWithExpOne (S_val 100 103) :=
  has_exp_one_of_zmod 100 103 599 358801 lt_100_103 prime_599 sq_599
    coprime_100_103_599 zmod_100_103_599 zmod_100_103_358801

/-- Eight named `B ≤ 100` gap-3 coprime rows.  Not a `∀`. -/
theorem S_has_prime_with_exp_one_B_le_100_table_rows :
    HasPrimeWithExpOne (S_val 1 4) ∧
    HasPrimeWithExpOne (S_val 1 5) ∧
    HasPrimeWithExpOne (S_val 1 8) ∧
    HasPrimeWithExpOne (S_val 2 5) ∧
    HasPrimeWithExpOne (S_val 4 7) ∧
    HasPrimeWithExpOne (S_val 5 8) ∧
    HasPrimeWithExpOne (S_val 10 13) ∧
    HasPrimeWithExpOne (S_val 100 103) :=
  ⟨S_val_1_4_has_prime_with_exp_one,
    S_val_1_5_has_prime_with_exp_one,
    S_val_1_8_has_prime_with_exp_one,
    S_val_2_5_has_prime_with_exp_one,
    S_val_4_7_has_prime_with_exp_one,
    S_val_5_8_has_prime_with_exp_one,
    S_val_10_13_has_prime_with_exp_one,
    S_val_100_103_has_prime_with_exp_one⟩

/-- Glue on the `(1,4)` row: `p = 2731` has exponent one,
so order ≠ 13.  One pair, not a `∀`. -/
theorem not_dvd_4_2731 : ¬ 2731 ∣ 4 := by decide
theorem not_dvd_1_2731 : ¬ 2731 ∣ 1 := by decide
theorem ne_13_2731 : (2731 : Nat) ≠ 13 := by decide

theorem S_val_1_4_dvd : 2731 ∣ S_val 1 4 := by
  rw [S_val_1_4]
  exact Nat.dvd_of_mod_eq_zero S_val_1_4_mod_2731

theorem S_val_1_4_not_sq : ¬ 2731 ^ 2 ∣ S_val 1 4 := by
  rw [S_val_1_4, pow_two, ← sq_2731]
  exact mt Nat.mod_eq_zero_of_dvd S_val_1_4_mod_7458361

theorem exists_p_with_order_ne_13_mod_p_sq_example_B1_C4 :
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13 := by
  refine ⟨2731, prime_2731, S_val_1_4_dvd, coprime_1_4_2731,
    not_dvd_4_2731, not_dvd_1_2731, ?_⟩
  exact exists_p_with_order_ne_13_of_has_exp_one
    1 4 2731 prime_2731 ne_13_2731 lt_1_4 not_dvd_4_2731
    not_dvd_1_2731 S_val_1_4_dvd coprime_1_4_2731 S_val_1_4_not_sq

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; table rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → C ≥ B + 3 →
    ¬ IsProperPrimePower (S_val B C)

/-- Uninhabited.  Eight rows are not every `B ≤ 100`,
and `B > 100` needs Bugeaud–Corvaja–Zannier. -/
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
#check S_val_1_5_has_prime_with_exp_one
#check S_has_prime_with_exp_one_example_B1_C5
#check exists_p_with_order_ne_13_of_has_exp_one
#check S_val_1_4_has_prime_with_exp_one
#check S_val_1_8_has_prime_with_exp_one
#check S_val_2_5_has_prime_with_exp_one
#check S_val_4_7_has_prime_with_exp_one
#check S_val_5_8_has_prime_with_exp_one
#check S_val_10_13_has_prime_with_exp_one
#check S_val_100_103_has_prime_with_exp_one
#check S_has_prime_with_exp_one_B_le_100_table_rows
#check exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
#check S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_val_1_4_has_prime_with_exp_one
#print axioms S_val_1_8_has_prime_with_exp_one
#print axioms S_val_2_5_prime
#print axioms S_val_2_5_has_prime_with_exp_one
#print axioms S_val_4_7_has_prime_with_exp_one
#print axioms S_val_5_8_has_prime_with_exp_one
#print axioms S_val_10_13_has_prime_with_exp_one
#print axioms S_val_100_103_has_prime_with_exp_one
#print axioms S_has_prime_with_exp_one_B_le_100_table_rows
#print axioms exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
#print axioms exists_p_with_order_ne_13_of_has_exp_one
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
