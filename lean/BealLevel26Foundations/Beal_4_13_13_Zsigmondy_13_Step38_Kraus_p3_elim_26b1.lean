/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.43.0 — Kraus p=3 trace
eliminates displayed `26b1` (not a ∀ close).

A Frey curve of signature `(4,13,13)` with a
rational 2-torsion point has even `a₃` at a
prime `3` of good reduction, so the displayed
p=3 traces are `{-2, 0, 2}`.  The archived
ledger has `a₃(26b1) = -3`, which is outside
that set (also as a residue mod 13).  Named
`kraus_elimination_26b1` packages that miss.

The same displayed check shows
`a₃(26a1) = 1` is also outside `{-2, 0, 2}`.
That coefficient miss is inhabited as a
lemma.  The remaining matching lock
`kraus_elimination_26a1` (Frey modular of
level 26, residual isomorphism, even-`A`
`13 ∣ A` close) stays a Prop, as does
`kraus_elimination_q_13_level_26`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination
  (coeffAt ap_26a1_3 ap_26b1_3)

/-! ## Displayed Frey p=3 traces and ledger `a₃` -/

/-- Displayed `a₃` values for a Frey curve with
a rational 2-torsion point at a prime `3` of
good reduction (`#E(𝔽₃)` even, Hasse
`|a₃| ≤ 2√3`).  Not a Mathlib point count. -/
def FreyP3Traces : List Int :=
  [-2, 0, 2]

theorem FreyP3Traces_eq : FreyP3Traces = [-2, 0, 2] :=
  rfl

theorem ap_26a1_3_eq : coeffAt qExp_26a1 3 = 1 :=
  ap_26a1_3

theorem ap_26b1_3_eq : coeffAt qExp_26b1 3 = -3 :=
  ap_26b1_3

theorem a3_26b1_not_in_frey_p3_traces :
    coeffAt qExp_26b1 3 ∉ FreyP3Traces := by
  decide

theorem a3_26a1_not_in_frey_p3_traces :
    coeffAt qExp_26a1 3 ∉ FreyP3Traces := by
  decide

theorem a3_26b1_ne_frey_mod13 :
    (coeffAt qExp_26b1 3 : ZMod 13) ≠ (-2 : ZMod 13) ∧
      (coeffAt qExp_26b1 3 : ZMod 13) ≠ (0 : ZMod 13) ∧
        (coeffAt qExp_26b1 3 : ZMod 13) ≠ (2 : ZMod 13) := by
  decide

theorem a3_26a1_ne_frey_mod13 :
    (coeffAt qExp_26a1 3 : ZMod 13) ≠ (-2 : ZMod 13) ∧
      (coeffAt qExp_26a1 3 : ZMod 13) ≠ (0 : ZMod 13) ∧
        (coeffAt qExp_26a1 3 : ZMod 13) ≠ (2 : ZMod 13) := by
  decide

/-- Inhabited.  Displayed `26b1` Fourier `a₃ = -3`
is not a Frey p=3 trace in `{-2, 0, 2}`, including
as a residue mod 13.  Not a Galois-residual
theorem and not a Beal `∀`. -/
theorem kraus_elimination_26b1 :
    coeffAt qExp_26b1 3 = -3 ∧
      coeffAt qExp_26b1 3 ∉ FreyP3Traces ∧
        (coeffAt qExp_26b1 3 : ZMod 13) ≠ (-2 : ZMod 13) ∧
          (coeffAt qExp_26b1 3 : ZMod 13) ≠ (0 : ZMod 13) ∧
            (coeffAt qExp_26b1 3 : ZMod 13) ≠ (2 : ZMod 13) :=
  ⟨ap_26b1_3_eq, a3_26b1_not_in_frey_p3_traces, a3_26b1_ne_frey_mod13⟩

/-! ## Honesty lock -/

/-- Uninhabited.  Remaining matching lock: `26a1`
as Frey residual for even `A` with `13 ∣ A`.
The displayed `a₃(26a1) = 1` already misses
`{-2, 0, 2}`; closing Beal still needs
Frey modularity of level 26 and residual
isomorphism. -/
def kraus_elimination_26a1 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → 13 ∣ A →
    False

/-- Uninhabited.  Full Kraus matching at `q = 13`,
level 26 (both displayed newforms). -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.kraus_elimination_q_13_level_26

def bugeaud_P_phi13_gt_C_when_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.bugeaud_P_phi13_gt_C_when_B_gt_100000

def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000

def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_has_prime_with_exp_one_when_C_ge_B_plus_3

def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_not_proper_prime_power_when_C_ge_B_plus_3

def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.not_all_p_lift_when_two_primes

def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

#check FreyP3Traces
#check ap_26b1_3_eq
#check ap_26a1_3_eq
#check kraus_elimination_26b1
#check kraus_elimination_26a1
#check kraus_elimination_q_13_level_26
#check a3_26a1_not_in_frey_p3_traces
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms kraus_elimination_26b1
#print axioms a3_26b1_not_in_frey_p3_traces
#print axioms a3_26a1_not_in_frey_p3_traces
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1
