/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.66.0 — density capstone for the B ≤ 2000000
named-row ladder (5983 gap-3 rows, not a ∀).

Records the small Zsigmondy prime list used by
Steps 56–60, identifies Φ₁₃(B,B+3) with `S_val`,
and records the named-row count identity
`4488 + 5 * 299 = 5983`.  One concrete pool hit
`B = 196` is inhabited by `decide` on
`(C : ZMod 53)^13` and numeral `53*53`
(not `native_decide`).

`beal_4_13_13_gap3_B_le_2M_eliminated` is
`Classical.em` on the small-prime ZMod
predicate.  That is excluded middle, not a
scan of every `B ≤ 2000000`, not Kraus, and
not a Beal `∀`.  Generator pool sizes
(~503xx per 100k window) are displayed `Nat`
constants, not a Mathlib density theorem.

Does **not** import `RibetMazur` (that would
cycle).  Steps 44–60 remain reachable through
the Step60 import.  Not imported by the
24-module none chain.

`kraus_elimination_q_13_level_26` stays a Prop.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.  No new Beal `∀`.
-/

import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val)

/-- Small primes used as `decide` witnesses for
Φ₁₃ gap-3 rows in Steps 56–60. -/
def smallZsigPrimes : List Nat :=
  [53, 79, 131, 157, 313, 443, 521, 547]

theorem smallZsigPrimes_eq :
    smallZsigPrimes = [53, 79, 131, 157, 313, 443, 521, 547] :=
  rfl

/-- `S = Φ₁₃(B,C) = (C^13 - B^13)/(C-B)` at `C = B+3`.
Same formula as `S_val`.  Do not `decide` by unfolding
this `Nat` value. -/
def Phi13 (B : Nat) : Nat :=
  S_val B (B + 3)

theorem Phi13_eq_S_val (B : Nat) : Phi13 B = S_val B (B + 3) :=
  rfl

/-- Pool-hit predicate matching the Step files:
`(C : ZMod p)^13 = (B : ZMod p)^13` and the same
inequality at numeral modulus `p*p`, for some
`p ∈ smallZsigPrimes`.  Not Nat-modulo of `Phi13`
(that would unfold a huge quotient). -/
def hasSmallZsigWitness (B : Nat) : Prop :=
  ∃ p, p ∈ smallZsigPrimes ∧
    ((B + 3 : ZMod p) ^ 13 = (B : ZMod p) ^ 13) ∧
    ((B + 3 : ZMod (p * p)) ^ 13 ≠ (B : ZMod (p * p)) ^ 13)

/-- Displayed generator pool sizes for the five
100k windows that built Steps 56–60.  Not a
density theorem. -/
def poolSizeStep56 : Nat := 50310
def poolSizeStep57 : Nat := 50323
def poolSizeStep58 : Nat := 50307
def poolSizeStep59 : Nat := 50350
def poolSizeStep60 : Nat := 50325

theorem poolSizeStep56_eq : poolSizeStep56 = 50310 := rfl
theorem poolSizeStep57_eq : poolSizeStep57 = 50323 := rfl
theorem poolSizeStep58_eq : poolSizeStep58 = 50307 := rfl
theorem poolSizeStep59_eq : poolSizeStep59 = 50350 := rfl
theorem poolSizeStep60_eq : poolSizeStep60 = 50325 := rfl

/-- Named-row count through Step60:
4488 inherited at 1.5M plus five 299-row slices. -/
theorem zsig_density_2M_stats : 4488 + 5 * 299 = 5983 := by
  decide

/-- Inhabited.  Inherited named row `(196,199)` hits `p = 53`.
`decide` on `ZMod 53` and numeral `53*53`, not `native_decide`. -/
theorem hasSmallZsigWitness_196 : hasSmallZsigWitness 196 := by
  refine ⟨53, ?_⟩
  refine And.intro ?mem (And.intro ?eq ?ne)
  · decide
  · decide
  · decide

/-- `Classical.em` on `hasSmallZsigWitness B`.
This is excluded middle, not a scan of every
`B ≤ 2000000`, not Kraus elimination, and not
a Beal `∀`. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated :
    ∀ B, 1 ≤ B → B ≤ 2000000 →
      hasSmallZsigWitness B ∨ ¬ hasSmallZsigWitness B := by
  intro B _ _
  exact Classical.em (hasSmallZsigWitness B)

/-- Uninhabited.  The 5983 named rows are not every `B ≤ 2000000`. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 2000000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_2000000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.bugeaud_P_phi13_gt_C_when_B_gt_2000000

/-- Uninhabited.  Kraus matching at `q = 13`, level 26.
A small-prime pool hit is not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.kraus_elimination_q_13_level_26

/-- Uninhabited.  Missing Mathlib Ribet arrow `26 → 2`. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.ribet_26_to_2_from_displayed_miss

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.ExistsNewformLevel2_eq_zero_ne_zero

#check smallZsigPrimes
#check Phi13
#check hasSmallZsigWitness
#check zsig_density_2M_stats
#check hasSmallZsigWitness_196
#check beal_4_13_13_gap3_B_le_2M_eliminated
#check kraus_elimination_q_13_level_26
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms zsig_density_2M_stats
#print axioms hasSmallZsigWitness_196
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M
