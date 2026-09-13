/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.20.0 — upper bound shape of
`k = C − B` via `gcd(k,S) ∣ 13` and
`k` almost a fourth power.

Sketch names requested for this file:
`S_13_mod_k`, `gcd_k_S_dvd_13`,
`gcd_k_S_eq_1_or_13`, `k_mul_S_eq_A_pow4`,
`coprime_mul_eq_fourth_pow_imp_fourth_pow`,
`k_almost_fourth_power`,
`genus_X0_2_rat = 0`,
`ExistsNewformLevel2_eq_zero_ne_zero`
(`0 ≠ 0`).

Proofs of the gcd / fourth-power facts
live in `Step10_k_upper_bound_plan`; this
module re-exports them under the sketch
names and records the remaining
uninhabited Props.

Keeps v8.19.9 residue `k % 4 = 1` /
`k % 8 = 1`.
Keeps v8.19.8 `k` odd, coprime, congruence.
Keeps v8.19.7 `13 k B¹²` / `39 B¹²` /
`2 B³ + 1`.
Keeps v8.19.6 `B ≤ 100` `C = B+1,B+2` closed.
Keeps v8.19.5 `p ≡ 1 [MOD 13]`, `p ≥ 53`.
Keeps v8.19.4 `S_13`.
Keeps v8.19.3 `zsigmondy_13` inhabited.
Keeps v8.19.2 `C ≥ B+2`.
Keeps v8.19.0 `genus_X0_2_rat = 0` and
`ExistsNewformLevel2` as `0 ≠ 0`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
import BealLevel26Foundations.Beal.FullProof.X0_2_Genus
import BealLevel26Foundations.Chain.Level2

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k

open BealLevel26Foundations.Chain.Level2

/-- Sketch name: `S ≡ 13 * B^12 [MOD k]` from `C = B+k`. -/
theorem S_13_mod_k (B k C S : Nat) (hC : C = B + k)
    (hS : S = BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 C B) :
    S % k = (13 * B ^ 12) % k :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.S_13_mod_k
    B k C S hC hS

/-- Sketch name: `gcd(k,S) ∣ 13` from Coprime `k B`. -/
theorem gcd_k_S_dvd_13 (B k C S : Nat)
    (hC : C = B + k)
    (hS : S = BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 C B)
    (hCoprimeKB : Nat.Coprime k B) :
    Nat.gcd k S ∣ 13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_dvd_13
    B k C S hC hS hCoprimeKB

/-- Sketch name: that gcd is `1` or `13`. -/
theorem gcd_k_S_eq_1_or_13 (B k C S : Nat)
    (hC : C = B + k)
    (hS : S = BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 C B)
    (hCop : Nat.Coprime k B) (hk : 0 < k) :
    Nat.gcd k S = 1 ∨ Nat.gcd k S = 13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_eq_1_or_13
    B k C S hC hS hCop hk

/-- Sketch name: `A^4 = k * S`. -/
theorem k_mul_S_eq_A_pow4 (A B C k : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hC : C = B + k) :
    A ^ 4 = k * BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 C B :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_mul_S_eq_A_pow4
    A B C k h hC

/-- Sketch name: coprime factors of a fourth power are fourth powers. -/
theorem coprime_mul_eq_fourth_pow_imp_fourth_pow (k₀ S₀ A₀ : Nat)
    (hCop : Nat.Coprime k₀ S₀) (hprod : k₀ * S₀ = A₀ ^ 4) :
    (∃ u, k₀ = u ^ 4) ∧ (∃ v, S₀ = v ^ 4) :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.coprime_mul_eq_fourth_pow
    k₀ S₀ A₀ hCop hprod

/-- Sketch name: `k = u^4 ∨ 13*u^4 ∨ 13^3*u^4`. -/
theorem k_almost_fourth_power (k S A : Nat)
    (hprod : k * S = A ^ 4) (hgcd : Nat.gcd k S ∣ 13) :
    (∃ u, k = u ^ 4) ∨ (∃ u, k = 13 * u ^ 4) ∨
      (∃ u, k = 13 ^ 3 * u ^ 4) :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_almost_fourth_power
    k S A hprod hgcd

/-- Packaged Beal form of the almost-fourth-power shape. -/
theorem beal_4_13_13_k_almost_fourth_power
    (A B C k : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hC : C = B + k) (hCop : Nat.Coprime k B) :
    (∃ u, k = u ^ 4) ∨ (∃ u, k = 13 * u ^ 4) ∨
      (∃ u, k = 13 ^ 3 * u ^ 4) :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.beal_4_13_13_k_almost_fourth_power
    A B C k h hC hCop

/-- Re-export.  Classical genus of `X₀(2)` over `ℚ` is `0`. -/
abbrev genus_X0_2_rat : ℚ :=
  BealLevel26Foundations.Beal.FullProof.X0_2_Genus.genus_X0_2_rat

theorem genus_X0_2_rat_eq_zero : genus_X0_2_rat = 0 :=
  BealLevel26Foundations.Beal.FullProof.X0_2_Genus.genus_X0_2_rat_eq_zero

/-- Honesty lock: `ExistsNewformLevel2` is still `0 ≠ 0`. -/
theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  `k ≥ 3` is unbounded, so a
`B ≤ 100` `decide` table cannot close every gap. -/
def B_le_100_k_ge_3_no_S_fourth_pow : Prop :=
  ∀ B k : Nat,
    B ≤ 100 → 3 ≤ k →
    ¬ ∃ v : Nat,
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13 (B + k) B =
        v ^ 4

/-- Uninhabited.  Odd-`A` size gap for
`B ≤ 100` and `C ≥ B+3`; no Zsigmondy close. -/
def beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth : Prop :=
  ∀ A B C : Nat,
    B ≤ 100 → B + 3 ≤ C →
    Odd A → 3 ≤ A → Nat.Coprime C B →
    A ^ 4 + B ^ 13 = C ^ 13 → False

/-- Uninhabited.  Needs the missing arrow
`Modular W → ExistsNewformLevel2`. -/
def beal_mixed_pow2_implies_level_2_newform : Prop :=
  ∀ A B C : Nat,
    (∃ e : Nat, A = 2 ^ e) →
    A ^ 4 + B ^ 13 = C ^ 13 →
    ExistsNewformLevel2

/-- Uninhabited.  Unconditional `¬` still needs
`ModularImpliesLevel2Newform`. -/
def beal_from_ribet_upside_down : Prop :=
  ∀ A B C : Nat, A ^ 4 + B ^ 13 = C ^ 13 → False

#check S_13_mod_k
#check gcd_k_S_dvd_13
#check gcd_k_S_eq_1_or_13
#check k_mul_S_eq_A_pow4
#check coprime_mul_eq_fourth_pow_imp_fourth_pow
#check k_almost_fourth_power
#check genus_X0_2_rat
#check ExistsNewformLevel2_eq_zero_ne_zero
#check B_le_100_k_ge_3_no_S_fourth_pow
#check beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth
#check beal_mixed_pow2_implies_level_2_newform
#check beal_from_ribet_upside_down
#print axioms S_13_mod_k
#print axioms gcd_k_S_dvd_13
#print axioms gcd_k_S_eq_1_or_13
#print axioms k_mul_S_eq_A_pow4
#print axioms coprime_mul_eq_fourth_pow_imp_fourth_pow
#print axioms k_almost_fourth_power
#print axioms genus_X0_2_rat_eq_zero
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k
