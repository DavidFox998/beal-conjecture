/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.45.0 — displayed level-lowering
pack `26 → 2` (not a ∀ close).

Step39 records that both displayed
level-26 newforms miss the displayed Frey
p=3 / p=5 traces.  `Chain.Level2` records
`s2_gamma0_2_dim = 0`, so
`ExistsNewformLevel2` is `0 ≠ 0` and
`¬ ExistsNewformLevel2` holds by `rfl`.
Named `level_lowering_26_to_2_from_no_match`
packages those displayed facts.

This is **not** Mathlib Ribet / Mazur:
a coefficient miss is not a residual
isomorphism, and displayed dimension `0`
is not a cusp-form vanishing theorem.
The even-`A` `13 ∣ A` close
`kraus_elimination_q_13_level_26` stays a
Prop.  `beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination
  (coeffAt)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1
  (FreyP3Traces)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1
  (FreyP5TracesGood FreyP5TracesWhen5DvdA
    s2_26_displayed_newforms_miss_frey_traces)

/-! ## Displayed `S₂(Γ₀(2))` empty and coefficient misses -/

theorem s2_gamma0_2_dim_displayed_zero : s2_gamma0_2_dim = 0 :=
  s2_gamma0_2_dim_eq

theorem not_ExistsNewformLevel2 : ¬ ExistsNewformLevel2 :=
  notExistsNewformLevel2

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Inhabited.  Displayed coefficient misses at
level 26 together with displayed `S₂(Γ₀(2))`
dimension `0`.  Not Mathlib Ribet, not a
residual-isomorphism theorem, and not a Beal `∀`. -/
theorem level_lowering_26_to_2_from_no_match :
    coeffAt qExp_26b1 3 ∉ FreyP3Traces ∧
      coeffAt qExp_26a1 5 ∉ FreyP5TracesGood ∧
        coeffAt qExp_26a1 5 ∉ FreyP5TracesWhen5DvdA ∧
          s2_gamma0_2_dim = 0 ∧
            ExistsNewformLevel2 = ((0 : Nat) ≠ 0) ∧
              ¬ ExistsNewformLevel2 :=
  ⟨s2_26_displayed_newforms_miss_frey_traces.1,
    s2_26_displayed_newforms_miss_frey_traces.2.1,
    s2_26_displayed_newforms_miss_frey_traces.2.2,
    s2_gamma0_2_dim_displayed_zero,
    ExistsNewformLevel2_eq_zero_ne_zero,
    not_ExistsNewformLevel2⟩

/-! ## Honesty lock -/

/-- Uninhabited.  Full Kraus matching at `q = 13`,
level 26: Frey modular of level 26, residual
isomorphism, even-`A` `13 ∣ A` close.  Displayed
coefficient misses plus displayed `S₂(Γ₀(2)) = 0`
are not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.kraus_elimination_q_13_level_26

/-- Uninhabited.  Missing Mathlib Ribet arrow
`26 → 2` from a displayed miss. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.kraus_elimination_q_13_level_26

def bugeaud_P_phi13_gt_C_when_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.bugeaud_P_phi13_gt_C_when_B_gt_100000

def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000

def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.S_has_prime_with_exp_one_when_C_ge_B_plus_3

def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.S_not_proper_prime_power_when_C_ge_B_plus_3

def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.not_all_p_lift_when_two_primes

def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.exists_p_with_order_ne_13_mod_p_sq_inhabited

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

#check s2_gamma0_2_dim_displayed_zero
#check not_ExistsNewformLevel2
#check level_lowering_26_to_2_from_no_match
#check kraus_elimination_q_13_level_26
#check ribet_26_to_2_from_displayed_miss
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms level_lowering_26_to_2_from_no_match
#print axioms s2_gamma0_2_dim_displayed_zero
#print axioms not_ExistsNewformLevel2
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2
