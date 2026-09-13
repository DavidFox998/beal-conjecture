/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.44.0 — Kraus p=5 trace
eliminates displayed `26a1` (not a ∀ close).

A Frey curve of signature `(4,13,13)` with a
rational 2-torsion point has even `a₅` at a
prime `5` of good reduction, so the displayed
p=5 traces when `5 ∤ A` are
`{-4, -2, 0, 2, 4}` (Hasse `|a₅| ≤ 2√5`).
When `5 ∣ A` the displayed traces are
`{-2, 0, 2}`.  The archived ledger has
`a₅(26a1) = -3`, which is outside both
sets (also as a residue mod 13).  Named
`kraus_elimination_26a1` packages that miss.

Step38 already packages `a₃(26b1) = -3`
outside `{-2, 0, 2}`.  Together the two
displayed newforms miss those Frey traces;
`s2_26_displayed_newforms_miss_frey_traces`
records that.  This is not a Mathlib
Galois-residual theorem and not a Beal `∀`.

The matching lock
`kraus_elimination_q_13_level_26` (Frey
modular of level 26, residual isomorphism,
even-`A` `13 ∣ A` close) stays a Prop.
`ExistsNewformLevel2` stays `0 ≠ 0`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination
  (coeffAt ap_26a1_5 ap_26b1_5)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1
  (FreyP3Traces a3_26b1_not_in_frey_p3_traces)

/-! ## Displayed Frey p=5 traces and ledger `a₅` -/

/-- Displayed `a₅` values for a Frey curve with
a rational 2-torsion point at a prime `5` of
good reduction (`5 ∤ A`, `#E(𝔽₅)` even, Hasse
`|a₅| ≤ 2√5`).  Not a Mathlib point count. -/
def FreyP5TracesGood : List Int :=
  [-4, -2, 0, 2, 4]

/-- Displayed `a₅` values when `5 ∣ A`.
Not a Mathlib Néron-model computation. -/
def FreyP5TracesWhen5DvdA : List Int :=
  [-2, 0, 2]

theorem FreyP5TracesGood_eq : FreyP5TracesGood = [-4, -2, 0, 2, 4] :=
  rfl

theorem FreyP5TracesWhen5DvdA_eq : FreyP5TracesWhen5DvdA = [-2, 0, 2] :=
  rfl

theorem ap_26a1_5_eq : coeffAt qExp_26a1 5 = -3 :=
  ap_26a1_5

theorem ap_26b1_5_eq : coeffAt qExp_26b1 5 = -1 :=
  ap_26b1_5

theorem a5_26a1_not_in_frey_p5_traces :
    coeffAt qExp_26a1 5 ∉ FreyP5TracesGood ∧
      coeffAt qExp_26a1 5 ∉ FreyP5TracesWhen5DvdA := by
  decide

/-- Honesty: `26b1` also misses p=5 traces
(`a₅ = -1`).  Already eliminated at p=3. -/
theorem a5_26b1_not_in_frey_p5_traces :
    coeffAt qExp_26b1 5 ∉ FreyP5TracesGood ∧
      coeffAt qExp_26b1 5 ∉ FreyP5TracesWhen5DvdA := by
  decide

theorem a5_26a1_ne_frey_mod13 :
    (coeffAt qExp_26a1 5 : ZMod 13) ≠ (-4 : ZMod 13) ∧
      (coeffAt qExp_26a1 5 : ZMod 13) ≠ (-2 : ZMod 13) ∧
        (coeffAt qExp_26a1 5 : ZMod 13) ≠ (0 : ZMod 13) ∧
          (coeffAt qExp_26a1 5 : ZMod 13) ≠ (2 : ZMod 13) ∧
            (coeffAt qExp_26a1 5 : ZMod 13) ≠ (4 : ZMod 13) := by
  decide

/-- Inhabited.  Displayed `26a1` Fourier `a₅ = -3`
is not a Frey p=5 trace in `{-4,-2,0,2,4}` nor
in `{-2,0,2}`, including as a residue mod 13.
Not a Galois-residual theorem and not a Beal `∀`. -/
theorem kraus_elimination_26a1 :
    coeffAt qExp_26a1 5 = -3 ∧
      coeffAt qExp_26a1 5 ∉ FreyP5TracesGood ∧
        coeffAt qExp_26a1 5 ∉ FreyP5TracesWhen5DvdA ∧
          (coeffAt qExp_26a1 5 : ZMod 13) ≠ (-4 : ZMod 13) ∧
            (coeffAt qExp_26a1 5 : ZMod 13) ≠ (-2 : ZMod 13) ∧
              (coeffAt qExp_26a1 5 : ZMod 13) ≠ (0 : ZMod 13) ∧
                (coeffAt qExp_26a1 5 : ZMod 13) ≠ (2 : ZMod 13) ∧
                  (coeffAt qExp_26a1 5 : ZMod 13) ≠ (4 : ZMod 13) :=
  ⟨ap_26a1_5_eq, a5_26a1_not_in_frey_p5_traces.1, a5_26a1_not_in_frey_p5_traces.2,
    a5_26a1_ne_frey_mod13⟩

/-- Inhabited.  Both displayed level-26 newforms
miss the displayed Frey traces used in Steps 38–39.
Not vanishing of `S₂(Γ₀(26))` (dimension 2) and
not a residual-isomorphism theorem. -/
theorem s2_26_displayed_newforms_miss_frey_traces :
    coeffAt qExp_26b1 3 ∉ FreyP3Traces ∧
      coeffAt qExp_26a1 5 ∉ FreyP5TracesGood ∧
        coeffAt qExp_26a1 5 ∉ FreyP5TracesWhen5DvdA :=
  ⟨a3_26b1_not_in_frey_p3_traces,
    a5_26a1_not_in_frey_p5_traces.1,
    a5_26a1_not_in_frey_p5_traces.2⟩

/-! ## Honesty lock -/

/-- Uninhabited.  Full Kraus matching at `q = 13`,
level 26: Frey modular of level 26, residual
isomorphism, even-`A` `13 ∣ A` close.  Displayed
coefficient misses are not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_q_13_level_26

/-- Uninhabited.  Displayed misses do not prove
Ribet level-lowering `26 → 2`. -/
def level_lowering_26_to_2_from_no_match : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_q_13_level_26

def bugeaud_P_phi13_gt_C_when_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.bugeaud_P_phi13_gt_C_when_B_gt_100000

def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000

def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.S_has_prime_with_exp_one_when_C_ge_B_plus_3

def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.S_not_proper_prime_power_when_C_ge_B_plus_3

def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.not_all_p_lift_when_two_primes

def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.exists_p_with_order_ne_13_mod_p_sq_inhabited

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

#check FreyP5TracesGood
#check FreyP5TracesWhen5DvdA
#check ap_26a1_5_eq
#check ap_26b1_5_eq
#check kraus_elimination_26a1
#check s2_26_displayed_newforms_miss_frey_traces
#check kraus_elimination_q_13_level_26
#check level_lowering_26_to_2_from_no_match
#check a5_26b1_not_in_frey_p5_traces
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms kraus_elimination_26a1
#print axioms a5_26a1_not_in_frey_p5_traces
#print axioms s2_26_displayed_newforms_miss_frey_traces
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1
