/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

v25 wiring names for the relocated v24.4.0 kernel
(DOI 10.5281/zenodo.22732209, db7a556).

The one-liner
  theorem baker_bound_gap3_holds : baker_bound_gap3 :=
    baker_conditional_gap3_full matveev_gap3_lower
is type-incorrect:
  baker_conditional_gap3_full :
    baker_bound_gap3 →
      ∀ B, ¬ ∃ A, A^4 + B^4 = (B+3)^13
  matveev_gap3_lower :
    matveev_inequality_real_target

Correct chain, still not v25:
  1. matveev_gap3_lower in Matveev-Beal (one sorry)
  2. matveev_inequality_real_target → baker_bound_gap3
     (LLL / Bugeaud; uninhabited def Prop)
  3. baker_conditional_gap3_full hBaker
     already a theorem; that is the forall / B ≤ 10^6

This file does not import Beal.Matveev.MatveevThm14General.
Matveev-Beal requires this monorepo's Level26 subtree,
so a reverse require would be a Lake cycle.
-/

import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound
import BealLevel26Foundations.Beal.FullProof.BealMatveevThm14

namespace Level26.BakerBoundGap3Holds

open BealLevel26Foundations.BealGap3BakerUpperBound
open BealLevel26Foundations.BealMatveevThm14

/-- Intended implication from the Matveev lower bound to
    `baker_bound_gap3`. Same shape as the existing named
    Props `baker_bound_gap3_of_matveev_inequality_real` /
    `baker_bound_gap3_of_C_exp_bound`. Uninhabited. -/
def baker_bound_gap3_of_matveev_gap3_lower : Prop :=
  matveev_inequality_real_target → baker_bound_gap3

/-- Displayed name from the Matveev-Beal wiring request.
    Same uninhabited Prop as `baker_bound_gap3`.
    Not a theorem: that would need the implication above
    and `matveev_gap3_lower`. -/
def baker_bound_gap3_holds : Prop := baker_bound_gap3

/-- Already a theorem in Level26: the gap-3 forall from a
    `baker_bound_gap3` witness. This is `B ≤ 10^6`
    unconditional only after `baker_bound_gap3` is inhabited. -/
theorem baker_conditional_gap3_full_of_holds
    (hBaker : baker_bound_gap3) :
    ∀ B : Nat,
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  baker_conditional_gap3_full hBaker

#check baker_bound_gap3
#check baker_bound_gap3_holds
#check baker_bound_gap3_of_matveev_gap3_lower
#check baker_conditional_gap3_full
#check baker_conditional_gap3_full_of_holds
#check matveev_inequality_real_target
#print axioms baker_conditional_gap3_full_of_holds

end Level26.BakerBoundGap3Holds
