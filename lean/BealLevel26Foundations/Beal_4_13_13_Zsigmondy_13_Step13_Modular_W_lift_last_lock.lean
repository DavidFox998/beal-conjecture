/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.21.1 — Modular W lift last lock.

Inhabited:
`frey_curve_conductor` (`A = 2^r` with
`r > 0`, `B` and `C` odd → even radical
is `2`, displayed conductor slot `N = 2`);
`A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A`
(from v8.21.0);
`genus_X0_2_rat = 0` (v8.19.0);
`S_13_mod_k`, `gcd(k,S) ∣ 13`,
`k_almost_fourth_power` (v8.20.0);
`B_le_100_closed` (v8.20.1).

Uninhabited honest last lock:
`beal_mixed_pow2_implies_level_2_newform`
→ `ExistsNewformLevel2` needs Modular W
plus Ribet level lowering to 2 (Hensel:
unconditional `¬ p² ∣ S` is false);
`modular_W_lift`,
`ribet_level_lowering_to_2`,
`X0_2_no_newforms` (still the `0 ≠ 0`
lock `ExistsNewformLevel2_eq_zero_ne_zero`);
`beal_4_13_13_final_closed`,
`beal_from_ribet_upside_down`,
`beal_4_13_13_size`.

Keeps v8.21.0 `B > 100` bounded
`k ≤ A⁴/(13·100¹²)`, `k ≥ B` → `A ≥ 9 B³`,
`k < B` → `13 B¹² ≤ S ≤ 13 C¹²`.
Keeps v8.20.1 `B ≤ 100` closed tables.
Keeps v8.19.9 residues `k % 4 = 1` /
`k % 8 = 1`.  Keeps v8.19.8 odd/coprime.
Keeps v8.19.7 `13 k` bounds.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan
import BealLevel26Foundations.Beal.FullProof.X0_2_Genus
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k
  (S_13_mod_k gcd_k_S_dvd_13 k_almost_fourth_power)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (B_le_100_k_ge_3_no_S_fourth_pow beal_4_13_13_B_le_100_closed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan
  (k_ge_B_imp_A_large k_lt_B_imp_S_between)

/-! ## Even radical of the Frey curve when `A = 2^r` -/

/-- Radical of a single base as the product of
its prime factors.  Local copy: this file does
**not** import `RibetMazur`. -/
def rad1 (A : Nat) : Nat :=
  A.primeFactors.prod id

/-- Displayed Frey conductor after the uninhabited
Ribet lowering to 2.  Honest inhabited content is
`frey_curve_conductor` (even radical `= 2`), not
a post-lowering theorem that `TrueConductor.N = 2`. -/
def frey_curve_conductor_N : Nat := 2

theorem frey_curve_conductor_N_eq :
    frey_curve_conductor_N = 2 :=
  rfl

/-- When `A = 2^r` (`r > 0`) and `B`, `C` are odd,
the even radical of the Frey bases is `2`.  That
is the inhabited `N = 2` even-part fact.  Closing
the mixed-pow2 arm still needs Modular W plus
Ribet lowering, which would inhabit
`ExistsNewformLevel2` (`0 ≠ 0`). -/
theorem frey_curve_conductor
    {A B C r : Nat} (hr : 0 < r) (hA : A = 2 ^ r)
    (hB : Odd B) (hC : Odd C) :
    rad1 A = 2 ∧ ¬ 2 ∣ B ∧ ¬ 2 ∣ C := by
  have hne : r ≠ 0 := Nat.pos_iff_ne_zero.mp hr
  have hpf : (2 ^ r).primeFactors = {2} :=
    Nat.primeFactors_prime_pow hne Nat.prime_two
  have hrad : rad1 A = 2 := by
    rw [hA, rad1, hpf, Finset.prod_singleton, id]
  exact ⟨hrad, hB.not_two_dvd_nat, hC.not_two_dvd_nat⟩

/-! ## Re-exports from v8.21.0 / v8.20.x / v8.19.0 -/

/-- Re-export.  A Zsigmondy prime `p ≥ 53` dividing `A`
forces `A ≥ 53`. -/
def A_ge_53_of_S_prime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.A_ge_53_of_S_prime

/-- Re-export.  `A⁴ = k · S` and `S ≥ 13 B¹²`. -/
def k_le_A_pow4_div_13_B_pow12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_le_A_pow4_div_13_B_pow12

/-- Re-export.  `B > 100` freezes `k ≤ A⁴/(13·100¹²)`. -/
def B_gt_100_imp_k_bounded_by_A :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.B_gt_100_imp_k_bounded_by_A

theorem genus_X0_2_rat_eq_zero :
    BealLevel26Foundations.Beal.FullProof.X0_2_Genus.genus_X0_2_rat = 0 :=
  BealLevel26Foundations.Beal.FullProof.X0_2_Genus.genus_X0_2_rat_eq_zero

abbrev genus_X0_2_rat : ℚ :=
  BealLevel26Foundations.Beal.FullProof.X0_2_Genus.genus_X0_2_rat

/-- Re-export.  `S ≡ 13 B¹² [MOD k]`. -/
def S_13_mod_k_reexport := S_13_mod_k

/-- Re-export.  `gcd(k,S) ∣ 13`. -/
def gcd_k_S_dvd_13_reexport := gcd_k_S_dvd_13

/-- Re-export.  `k` is `u⁴` or `13 u⁴` or `13³ u⁴`. -/
def k_almost_fourth_power_reexport := k_almost_fourth_power

/-- Re-export.  v8.20.1 `B ≤ 100`, `k ≥ 3` uses
`S_not_fourth_power`. -/
def B_le_100_k_ge_3_no_S_fourth_pow_reexport :=
  B_le_100_k_ge_3_no_S_fourth_pow

/-- Re-export.  v8.20.1 `B ≤ 100` closed tables. -/
def beal_4_13_13_B_le_100_closed_reexport :=
  beal_4_13_13_B_le_100_closed

/-- Honesty lock: `ExistsNewformLevel2` is still `0 ≠ 0`. -/
theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-! ## Uninhabited honest last lock -/

/-- Uninhabited.  Needs Modular W plus Ribet
level lowering to 2.  Hensel: unconditional
`¬ p² ∣ S` is false. -/
def beal_mixed_pow2_implies_level_2_newform : Prop :=
  ∀ A B C : Nat,
    (∃ e : Nat, A = 2 ^ e) →
    A ^ 4 + B ^ 13 = C ^ 13 →
    ExistsNewformLevel2

/-- Uninhabited.  Wiles/BCDT modular lift of the
Frey curve ending at `ExistsNewformLevel2`
(`0 ≠ 0`). -/
def modular_W_lift : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    ExistsNewformLevel2

/-- Uninhabited.  Ribet lowering of the even
radical to displayed conductor `N = 2`, still
ending at `ExistsNewformLevel2`. -/
def ribet_level_lowering_to_2 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    ExistsNewformLevel2

/-- Uninhabited last lock: Mathlib vanishing of
weight-2 level-2 newforms is still displayed as
`ExistsNewformLevel2` (`0 ≠ 0`).  The inhabited
companion is `notExistsNewformLevel2`
(`fun h => h rfl`).  Do **not** rewrite this
as `genus = 0 → ¬ ExistsNewformLevel2`. -/
def X0_2_no_newforms : Prop :=
  ExistsNewformLevel2

/-- Uninhabited.  Closing every Beal `4/13/13`
triple needs the modular lift plus RibetMazur
for even-not-pow2 and `S_not_fourth_power`
for odd `A`. -/
def beal_4_13_13_final_closed : Prop :=
  ∀ A B C : Nat,
    0 < A → 0 < B → 0 < C →
    A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited.  Unconditional `¬` still needs
`ModularImpliesLevel2Newform`. -/
def beal_from_ribet_upside_down : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited.  The general size gap stays open. -/
def beal_4_13_13_size : Prop :=
  ∀ A B C : Nat,
    0 < A → 0 < B → 0 < C →
    Odd A →
    A ^ 4 + B ^ 13 = C ^ 13 → False

#check frey_curve_conductor
#check frey_curve_conductor_N
#check A_ge_53_of_S_prime
#check k_le_A_pow4_div_13_B_pow12
#check B_gt_100_imp_k_bounded_by_A
#check k_ge_B_imp_A_large
#check k_lt_B_imp_S_between
#check genus_X0_2_rat
#check S_13_mod_k
#check gcd_k_S_dvd_13
#check k_almost_fourth_power
#check B_le_100_k_ge_3_no_S_fourth_pow
#check beal_4_13_13_B_le_100_closed
#check beal_mixed_pow2_implies_level_2_newform
#check modular_W_lift
#check ribet_level_lowering_to_2
#check X0_2_no_newforms
#check beal_4_13_13_final_closed
#check beal_from_ribet_upside_down
#check beal_4_13_13_size
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms frey_curve_conductor
#print axioms frey_curve_conductor_N_eq
#print axioms A_ge_53_of_S_prime
#print axioms k_le_A_pow4_div_13_B_pow12
#print axioms B_gt_100_imp_k_bounded_by_A
#print axioms genus_X0_2_rat_eq_zero
#print axioms S_13_mod_k
#print axioms gcd_k_S_dvd_13
#print axioms k_almost_fourth_power
#print axioms beal_4_13_13_B_le_100_closed
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
