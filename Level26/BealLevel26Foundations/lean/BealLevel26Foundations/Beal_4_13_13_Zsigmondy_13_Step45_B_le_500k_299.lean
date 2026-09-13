/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.50.0 — B ≤ 500000 exp-one
extension (1498 named gap-3 rows, not a ∀).

Wraps the 1199 named Step44 rows
(B ≤ 400000, including the inhabited
outlier (200000, 200003) with
p = 12186951011) and adds 299
computational pairs with
400000 < B ≤ 500000 and C = B+3
sampled evenly from the 50313-row
p ≤ 547 witness pool: first
(400001, 400004) p = 53, last
(500000, 500003) p = 547.
Distribution 53:128, 79:63, 131:41, 157:36, 313:10, 443:7, 521:8, 547:6.
Each new row has a prime p ≤ 547
in {53, 79, 131, 157, 313, 443, 521, 547}
with p | S, p ∤ (C-B), p² ∤ S, so the
Step11 dichotomy gives order ≠ 13 and
S_not_fourth.  Witnesses are
(C : ZMod p)^13 = (B : ZMod p)^13 and
(C : ZMod (p*p))^13 ≠ (B : ZMod (p*p))^13
by decide (not native_decide, so
#print axioms stays
[propext, Classical.choice, Quot.sound]).

This is not every B ≤ 500000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 500000 squarefull
rarity is Bugeaud-type, also a Prop.

The modular side stays a coefficient
check, not Ribet: s2_26_displayed_newforms_miss_frey_traces
is a Fourier miss (26b1 a3=-3 at p=3,
26a1 a5=-3 at p=5), not a residual
isomorphism.  s2_gamma0_2_dim=0 is
displayed, not Mathlib cusp-form
vanishing.  So kraus_elimination_q_13_level_26
(even-A 13|A -> False) stays a Prop.
level_lowering_26_to_2_from_no_match
stays the displayed pack.  beal_from_ribet
still takes ModularImpliesLevel2Newform.
ExistsNewformLevel2 stays 0 ≠ 0.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 8000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 S_not_fourth S_not_fourth_of_order_ne_13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (HasPrimeWithExpOne exists_p_with_order_ne_13_of_has_exp_one IsSquarefull)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
  (has_exp_one_of_zmod p_dvd_S_val_of_pow13_eq not_p_sq_dvd_S_val_of_pow13_ne
    prime_53 prime_79 sq_53 sq_79)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one
  (ne_13_53 ne_13_79)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension
  (prime_131 sq_131 ne_13_131
    prime_313 sq_313 ne_13_313
    prime_443 sq_443 ne_13_443
    prime_521 sq_521 ne_13_521
    prime_547 sq_547 ne_13_547)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension
  (prime_157 sq_157 ne_13_157)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (rad)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound
  (P_phi13)

/-! ## Inherited Step44 rows (1199 wrappers) -/
def row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_1_4
def row_196_199 :
    HasPrimeWithExpOne (S_val 196 199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196 199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_196_199
def row_386_389 :
    HasPrimeWithExpOne (S_val 386 389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386 389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_386_389
def row_587_590 :
    HasPrimeWithExpOne (S_val 587 590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 587 590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_587_590
def row_1171_1174 :
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1171 1174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_1171_1174
def row_1366_1369 :
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1366 1369 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_1366_1369
def row_1559_1562 :
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1559 1562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_1559_1562
def row_1756_1759 :
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1756 1759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_1756_1759
def row_2146_2149 :
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2146 2149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_2146_2149
def row_2536_2539 :
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2536 2539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_2536_2539
def row_2731_2734 :
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2731 2734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_2731_2734
def row_3313_3316 :
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3313 3316 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_3313_3316
def row_3511_3514 :
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3511 3514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_3511_3514
def row_3706_3709 :
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3706 3709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_3706_3709
def row_3901_3904 :
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3901 3904 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_3901_3904
def row_4682_4685 :
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4682 4685 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_4682_4685
def row_4876_4879 :
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4876 4879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_4876_4879
def row_5071_5074 :
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5071 5074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_5071_5074
def row_5461_5464 :
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5461 5464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_5461_5464
def row_5849_5852 :
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5849 5852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_5849_5852
def row_6046_6049 :
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6046 6049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_6046_6049
def row_6241_6244 :
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6241 6244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_6241_6244
def row_6631_6634 :
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6631 6634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_6631_6634
def row_7411_7414 :
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7411 7414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_7411_7414
def row_7606_7609 :
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7606 7609 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_7606_7609
def row_7801_7804 :
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7801 7804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_7801_7804
def row_7997_8000 :
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7997 8000 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_7997_8000
def row_8194_8197 :
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8194 8197 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_8194_8197
def row_8582_8585 :
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8582 8585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_8582_8585
def row_9163_9166 :
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9163 9166 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_9163_9166
def row_9361_9364 :
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9361 9364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_9361_9364
def row_9751_9754 :
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9751 9754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_9751_9754
def row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_10000_10003
def row_10141_10144 :
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10141 10144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_10141_10144
def row_10531_10534 :
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10531 10534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_10531_10534
def row_10726_10729 :
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10726 10729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_10726_10729
def row_11311_11314 :
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11311 11314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_11311_11314
def row_11506_11509 :
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11506 11509 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_11506_11509
def row_11896_11899 :
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11896 11899 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_11896_11899
def row_12091_12094 :
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12091 12094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_12091_12094
def row_12871_12874 :
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12871 12874 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_12871_12874
def row_13066_13069 :
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13066 13069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_13066_13069
def row_13258_13261 :
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13258 13261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_13258_13261
def row_13457_13460 :
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13457 13460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_13457_13460
def row_13651_13654 :
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13651 13654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_13651_13654
def row_13846_13849 :
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13846 13849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_13846_13849
def row_14041_14044 :
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14041 14044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_14041_14044
def row_14236_14239 :
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14236 14239 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_14236_14239
def row_14431_14434 :
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14431 14434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_14431_14434
def row_14626_14629 :
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14626 14629 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_14626_14629
def row_14821_14824 :
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14821 14824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_14821_14824
def row_15016_15019 :
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15016 15019 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_15016_15019
def row_15211_15214 :
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15211 15214 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_15211_15214
def row_15406_15409 :
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15406 15409 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_15406_15409
def row_15991_15994 :
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15991 15994 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_15991_15994
def row_16186_16189 :
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16186 16189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_16186_16189
def row_16381_16384 :
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16381 16384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_16381_16384
def row_16576_16579 :
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16576 16579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_16576_16579
def row_16771_16774 :
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16771 16774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_16771_16774
def row_16966_16969 :
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16966 16969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_16966_16969
def row_17161_17164 :
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17161 17164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_17161_17164
def row_17354_17357 :
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17354 17357 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_17354_17357
def row_17551_17554 :
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17551 17554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_17551_17554
def row_17746_17749 :
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17746 17749 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_17746_17749
def row_17938_17941 :
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17938 17941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_17938_17941
def row_18136_18139 :
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18136 18139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_18136_18139
def row_18331_18334 :
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18331 18334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_18331_18334
def row_18526_18529 :
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18526 18529 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_18526_18529
def row_18721_18724 :
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18721 18724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_18721_18724
def row_19310_19313 :
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19310 19313 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_19310_19313
def row_19501_19504 :
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19501 19504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_19501_19504
def row_19694_19697 :
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19694 19697 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_19694_19697
def row_19891_19894 :
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19891 19894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_19891_19894
def row_20086_20089 :
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20086 20089 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_20086_20089
def row_20281_20284 :
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20281 20284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_20281_20284
def row_20476_20479 :
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20476 20479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_20476_20479
def row_20671_20674 :
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20671 20674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_20671_20674
def row_20866_20869 :
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20866 20869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_20866_20869
def row_21061_21064 :
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21061 21064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_21061_21064
def row_21256_21259 :
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21256 21259 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_21256_21259
def row_21451_21454 :
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21451 21454 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_21451_21454
def row_21841_21844 :
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21841 21844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_21841_21844
def row_22229_22232 :
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22229 22232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_22229_22232
def row_22621_22624 :
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22621 22624 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_22621_22624
def row_22814_22817 :
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22814 22817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_22814_22817
def row_23206_23209 :
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23206 23209 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_23206_23209
def row_23791_23794 :
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23791 23794 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_23791_23794
def row_24181_24184 :
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24181 24184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_24181_24184
def row_24374_24377 :
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24374 24377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_24374_24377
def row_24571_24574 :
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24571 24574 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_24571_24574
def row_24764_24767 :
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24764 24767 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_24764_24767
def row_25156_25159 :
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25156 25159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_25156_25159
def row_25351_25354 :
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25351 25354 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_25351_25354
def row_26132_26135 :
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26132 26135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_26132_26135
def row_26326_26329 :
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26326 26329 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_26326_26329
def row_26716_26719 :
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26716 26719 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_26716_26719
def row_26911_26914 :
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26911 26914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_26911_26914
def row_27301_27304 :
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27301 27304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_27301_27304
def row_27496_27499 :
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27496 27499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_27496_27499
def row_27692_27695 :
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27692 27695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_27692_27695
def row_28081_28084 :
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28081 28084 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_28081_28084
def row_28280_28283 :
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28280 28283 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_28280_28283
def row_28471_28474 :
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28471 28474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_28471_28474
def row_28666_28669 :
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28666 28669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_28666_28669
def row_29056_29059 :
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29056 29059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_29056_29059
def row_29251_29254 :
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29251 29254 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_29251_29254
def row_29446_29449 :
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29446 29449 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_29446_29449
def row_29641_29644 :
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29641 29644 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_29641_29644
def row_29836_29839 :
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29836 29839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_29836_29839
def row_30031_30034 :
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30031 30034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_30031_30034
def row_30223_30226 :
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30223 30226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_30223_30226
def row_30421_30424 :
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30421 30424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_30421_30424
def row_30617_30620 :
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30617 30620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_30617_30620
def row_30811_30814 :
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30811 30814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_30811_30814
def row_31006_31009 :
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31006 31009 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_31006_31009
def row_31201_31204 :
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31201 31204 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_31201_31204
def row_31591_31594 :
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31591 31594 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_31591_31594
def row_31979_31982 :
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31979 31982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_31979_31982
def row_32176_32179 :
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32176 32179 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_32176_32179
def row_32371_32374 :
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32371 32374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_32371_32374
def row_32566_32569 :
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32566 32569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_32566_32569
def row_32956_32959 :
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32956 32959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_32956_32959
def row_33152_33155 :
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33152 33155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_33152_33155
def row_33541_33544 :
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33541 33544 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_33541_33544
def row_33736_33739 :
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33736 33739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_33736_33739
def row_34124_34127 :
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34124 34127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_34124_34127
def row_34516_34519 :
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34516 34519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_34516_34519
def row_34708_34711 :
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34708 34711 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_34708_34711
def row_34906_34909 :
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34906 34909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_34906_34909
def row_35296_35299 :
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35296 35299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_35296_35299
def row_35489_35492 :
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35489 35492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_35489_35492
def row_35686_35689 :
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35686 35689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_35686_35689
def row_36077_36080 :
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36077 36080 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_36077_36080
def row_36272_36275 :
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36272 36275 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_36272_36275
def row_36856_36859 :
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36856 36859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_36856_36859
def row_37051_37054 :
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37051 37054 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_37051_37054
def row_37246_37249 :
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37246 37249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_37246_37249
def row_37441_37444 :
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37441 37444 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_37441_37444
def row_37636_37639 :
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37636 37639 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_37636_37639
def row_38027_38030 :
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38027 38030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_38027_38030
def row_38221_38224 :
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38221 38224 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_38221_38224
def row_38416_38419 :
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38416 38419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_38416_38419
def row_38611_38614 :
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38611 38614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_38611_38614
def row_38806_38809 :
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38806 38809 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_38806_38809
def row_39001_39004 :
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39001 39004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_39001_39004
def row_39196_39199 :
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39196 39199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_39196_39199
def row_39584_39587 :
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39584 39587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_39584_39587
def row_39782_39785 :
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39782 39785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_39782_39785
def row_40171_40174 :
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40171 40174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_40171_40174
def row_40561_40564 :
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40561 40564 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_40561_40564
def row_40949_40952 :
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40949 40952 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_40949_40952
def row_41146_41149 :
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41146 41149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_41146_41149
def row_41341_41344 :
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41341 41344 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_41341_41344
def row_41536_41539 :
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41536 41539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_41536_41539
def row_41731_41734 :
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41731 41734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_41731_41734
def row_41926_41929 :
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41926 41929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_41926_41929
def row_42121_42124 :
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42121 42124 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_42121_42124
def row_42511_42514 :
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42511 42514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_42511_42514
def row_42706_42709 :
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42706 42709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_42706_42709
def row_42899_42902 :
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42899 42902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_42899_42902
def row_43097_43100 :
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43097 43100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_43097_43100
def row_43876_43879 :
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43876 43879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_43876_43879
def row_44071_44074 :
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44071 44074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_44071_44074
def row_44266_44269 :
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44266 44269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_44266_44269
def row_44461_44464 :
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44461 44464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_44461_44464
def row_44656_44659 :
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44656 44659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_44656_44659
def row_44851_44854 :
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44851 44854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_44851_44854
def row_45046_45049 :
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45046 45049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_45046_45049
def row_45241_45244 :
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45241 45244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_45241_45244
def row_45436_45439 :
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45436 45439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_45436_45439
def row_45631_45634 :
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45631 45634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_45631_45634
def row_46021_46024 :
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46021 46024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_46021_46024
def row_46412_46415 :
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46412 46415 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_46412_46415
def row_46609_46612 :
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46609 46612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_46609_46612
def row_46801_46804 :
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46801 46804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_46801_46804
def row_46996_46999 :
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46996 46999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_46996_46999
def row_47191_47194 :
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47191 47194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_47191_47194
def row_47386_47389 :
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47386 47389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_47386_47389
def row_47581_47584 :
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47581 47584 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_47581_47584
def row_47971_47974 :
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47971 47974 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_47971_47974
def row_48166_48169 :
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48166 48169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_48166_48169
def row_48361_48364 :
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48361 48364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_48361_48364
def row_48554_48557 :
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48554 48557 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_48554_48557
def row_48751_48754 :
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48751 48754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_48751_48754
def row_49141_49144 :
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49141 49144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_49141_49144
def row_49336_49339 :
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49336 49339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_49336_49339
def row_49531_49534 :
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49531 49534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_49531_49534
def row_50000_50003 :
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50000 50003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_50000_50003
def row_50001_50004 :
    HasPrimeWithExpOne (S_val 50001 50004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50001 50004 ∧ ¬ p ∣ (50004 - 50001) ∧
      ∃ (hNotC : ¬ p ∣ 50004) (hNotB : ¬ p ∣ 50001),
        order_of_C_B_inv_mod_p2 50004 50001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50001 50004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_50001_50004
def row_50389_50392 :
    HasPrimeWithExpOne (S_val 50389 50392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50389 50392 ∧ ¬ p ∣ (50392 - 50389) ∧
      ∃ (hNotC : ¬ p ∣ 50392) (hNotB : ¬ p ∣ 50389),
        order_of_C_B_inv_mod_p2 50392 50389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50389 50392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_50389_50392
def row_50779_50782 :
    HasPrimeWithExpOne (S_val 50779 50782) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50779 50782 ∧ ¬ p ∣ (50782 - 50779) ∧
      ∃ (hNotC : ¬ p ∣ 50782) (hNotB : ¬ p ∣ 50779),
        order_of_C_B_inv_mod_p2 50782 50779 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50779 50782 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_50779_50782
def row_51191_51194 :
    HasPrimeWithExpOne (S_val 51191 51194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51191 51194 ∧ ¬ p ∣ (51194 - 51191) ∧
      ∃ (hNotC : ¬ p ∣ 51194) (hNotB : ¬ p ∣ 51191),
        order_of_C_B_inv_mod_p2 51194 51191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51191 51194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_51191_51194
def row_51574_51577 :
    HasPrimeWithExpOne (S_val 51574 51577) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51574 51577 ∧ ¬ p ∣ (51577 - 51574) ∧
      ∃ (hNotC : ¬ p ∣ 51577) (hNotB : ¬ p ∣ 51574),
        order_of_C_B_inv_mod_p2 51577 51574 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51574 51577 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_51574_51577
def row_51965_51968 :
    HasPrimeWithExpOne (S_val 51965 51968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51965 51968 ∧ ¬ p ∣ (51968 - 51965) ∧
      ∃ (hNotC : ¬ p ∣ 51968) (hNotB : ¬ p ∣ 51965),
        order_of_C_B_inv_mod_p2 51968 51965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51965 51968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_51965_51968
def row_52362_52365 :
    HasPrimeWithExpOne (S_val 52362 52365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52362 52365 ∧ ¬ p ∣ (52365 - 52362) ∧
      ∃ (hNotC : ¬ p ∣ 52365) (hNotB : ¬ p ∣ 52362),
        order_of_C_B_inv_mod_p2 52365 52362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52362 52365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_52362_52365
def row_52739_52742 :
    HasPrimeWithExpOne (S_val 52739 52742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52739 52742 ∧ ¬ p ∣ (52742 - 52739) ∧
      ∃ (hNotC : ¬ p ∣ 52742) (hNotB : ¬ p ∣ 52739),
        order_of_C_B_inv_mod_p2 52742 52739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52739 52742 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_52739_52742
def row_53136_53139 :
    HasPrimeWithExpOne (S_val 53136 53139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53136 53139 ∧ ¬ p ∣ (53139 - 53136) ∧
      ∃ (hNotC : ¬ p ∣ 53139) (hNotB : ¬ p ∣ 53136),
        order_of_C_B_inv_mod_p2 53139 53136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53136 53139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_53136_53139
def row_53525_53528 :
    HasPrimeWithExpOne (S_val 53525 53528) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53525 53528 ∧ ¬ p ∣ (53528 - 53525) ∧
      ∃ (hNotC : ¬ p ∣ 53528) (hNotB : ¬ p ∣ 53525),
        order_of_C_B_inv_mod_p2 53528 53525 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53525 53528 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_53525_53528
def row_53915_53918 :
    HasPrimeWithExpOne (S_val 53915 53918) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53915 53918 ∧ ¬ p ∣ (53918 - 53915) ∧
      ∃ (hNotC : ¬ p ∣ 53918) (hNotB : ¬ p ∣ 53915),
        order_of_C_B_inv_mod_p2 53918 53915 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53915 53918 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_53915_53918
def row_54302_54305 :
    HasPrimeWithExpOne (S_val 54302 54305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54302 54305 ∧ ¬ p ∣ (54305 - 54302) ∧
      ∃ (hNotC : ¬ p ∣ 54305) (hNotB : ¬ p ∣ 54302),
        order_of_C_B_inv_mod_p2 54305 54302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54302 54305 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_54302_54305
def row_54701_54704 :
    HasPrimeWithExpOne (S_val 54701 54704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54701 54704 ∧ ¬ p ∣ (54704 - 54701) ∧
      ∃ (hNotC : ¬ p ∣ 54704) (hNotB : ¬ p ∣ 54701),
        order_of_C_B_inv_mod_p2 54704 54701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54701 54704 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_54701_54704
def row_55091_55094 :
    HasPrimeWithExpOne (S_val 55091 55094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55091 55094 ∧ ¬ p ∣ (55094 - 55091) ∧
      ∃ (hNotC : ¬ p ∣ 55094) (hNotB : ¬ p ∣ 55091),
        order_of_C_B_inv_mod_p2 55094 55091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55091 55094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_55091_55094
def row_55496_55499 :
    HasPrimeWithExpOne (S_val 55496 55499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55496 55499 ∧ ¬ p ∣ (55499 - 55496) ∧
      ∃ (hNotC : ¬ p ∣ 55499) (hNotB : ¬ p ∣ 55496),
        order_of_C_B_inv_mod_p2 55499 55496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55496 55499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_55496_55499
def row_55894_55897 :
    HasPrimeWithExpOne (S_val 55894 55897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55894 55897 ∧ ¬ p ∣ (55897 - 55894) ∧
      ∃ (hNotC : ¬ p ∣ 55897) (hNotB : ¬ p ∣ 55894),
        order_of_C_B_inv_mod_p2 55897 55894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55894 55897 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_55894_55897
def row_56278_56281 :
    HasPrimeWithExpOne (S_val 56278 56281) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56278 56281 ∧ ¬ p ∣ (56281 - 56278) ∧
      ∃ (hNotC : ¬ p ∣ 56281) (hNotB : ¬ p ∣ 56278),
        order_of_C_B_inv_mod_p2 56281 56278 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56278 56281 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_56278_56281
def row_56667_56670 :
    HasPrimeWithExpOne (S_val 56667 56670) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56667 56670 ∧ ¬ p ∣ (56670 - 56667) ∧
      ∃ (hNotC : ¬ p ∣ 56670) (hNotB : ¬ p ∣ 56667),
        order_of_C_B_inv_mod_p2 56670 56667 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56667 56670 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_56667_56670
def row_57036_57039 :
    HasPrimeWithExpOne (S_val 57036 57039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57036 57039 ∧ ¬ p ∣ (57039 - 57036) ∧
      ∃ (hNotC : ¬ p ∣ 57039) (hNotB : ¬ p ∣ 57036),
        order_of_C_B_inv_mod_p2 57039 57036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57036 57039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_57036_57039
def row_57417_57420 :
    HasPrimeWithExpOne (S_val 57417 57420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57417 57420 ∧ ¬ p ∣ (57420 - 57417) ∧
      ∃ (hNotC : ¬ p ∣ 57420) (hNotB : ¬ p ∣ 57417),
        order_of_C_B_inv_mod_p2 57420 57417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57417 57420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_57417_57420
def row_57825_57828 :
    HasPrimeWithExpOne (S_val 57825 57828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57825 57828 ∧ ¬ p ∣ (57828 - 57825) ∧
      ∃ (hNotC : ¬ p ∣ 57828) (hNotB : ¬ p ∣ 57825),
        order_of_C_B_inv_mod_p2 57828 57825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57825 57828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_57825_57828
def row_58198_58201 :
    HasPrimeWithExpOne (S_val 58198 58201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58198 58201 ∧ ¬ p ∣ (58201 - 58198) ∧
      ∃ (hNotC : ¬ p ∣ 58201) (hNotB : ¬ p ∣ 58198),
        order_of_C_B_inv_mod_p2 58201 58198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58198 58201 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_58198_58201
def row_58587_58590 :
    HasPrimeWithExpOne (S_val 58587 58590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58587 58590 ∧ ¬ p ∣ (58590 - 58587) ∧
      ∃ (hNotC : ¬ p ∣ 58590) (hNotB : ¬ p ∣ 58587),
        order_of_C_B_inv_mod_p2 58590 58587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58587 58590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_58587_58590
def row_58995_58998 :
    HasPrimeWithExpOne (S_val 58995 58998) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58995 58998 ∧ ¬ p ∣ (58998 - 58995) ∧
      ∃ (hNotC : ¬ p ∣ 58998) (hNotB : ¬ p ∣ 58995),
        order_of_C_B_inv_mod_p2 58998 58995 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58995 58998 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_58995_58998
def row_59373_59376 :
    HasPrimeWithExpOne (S_val 59373 59376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59373 59376 ∧ ¬ p ∣ (59376 - 59373) ∧
      ∃ (hNotC : ¬ p ∣ 59376) (hNotB : ¬ p ∣ 59373),
        order_of_C_B_inv_mod_p2 59376 59373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59373 59376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_59373_59376
def row_59767_59770 :
    HasPrimeWithExpOne (S_val 59767 59770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59767 59770 ∧ ¬ p ∣ (59770 - 59767) ∧
      ∃ (hNotC : ¬ p ∣ 59770) (hNotB : ¬ p ∣ 59767),
        order_of_C_B_inv_mod_p2 59770 59767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59767 59770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_59767_59770
def row_60159_60162 :
    HasPrimeWithExpOne (S_val 60159 60162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60159 60162 ∧ ¬ p ∣ (60162 - 60159) ∧
      ∃ (hNotC : ¬ p ∣ 60162) (hNotB : ¬ p ∣ 60159),
        order_of_C_B_inv_mod_p2 60162 60159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60159 60162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_60159_60162
def row_60530_60533 :
    HasPrimeWithExpOne (S_val 60530 60533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60530 60533 ∧ ¬ p ∣ (60533 - 60530) ∧
      ∃ (hNotC : ¬ p ∣ 60533) (hNotB : ¬ p ∣ 60530),
        order_of_C_B_inv_mod_p2 60533 60530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60530 60533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_60530_60533
def row_60922_60925 :
    HasPrimeWithExpOne (S_val 60922 60925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60922 60925 ∧ ¬ p ∣ (60925 - 60922) ∧
      ∃ (hNotC : ¬ p ∣ 60925) (hNotB : ¬ p ∣ 60922),
        order_of_C_B_inv_mod_p2 60925 60922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60922 60925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_60922_60925
def row_61286_61289 :
    HasPrimeWithExpOne (S_val 61286 61289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61286 61289 ∧ ¬ p ∣ (61289 - 61286) ∧
      ∃ (hNotC : ¬ p ∣ 61289) (hNotB : ¬ p ∣ 61286),
        order_of_C_B_inv_mod_p2 61289 61286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61286 61289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_61286_61289
def row_61684_61687 :
    HasPrimeWithExpOne (S_val 61684 61687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61684 61687 ∧ ¬ p ∣ (61687 - 61684) ∧
      ∃ (hNotC : ¬ p ∣ 61687) (hNotB : ¬ p ∣ 61684),
        order_of_C_B_inv_mod_p2 61687 61684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61684 61687 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_61684_61687
def row_62056_62059 :
    HasPrimeWithExpOne (S_val 62056 62059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62056 62059 ∧ ¬ p ∣ (62059 - 62056) ∧
      ∃ (hNotC : ¬ p ∣ 62059) (hNotB : ¬ p ∣ 62056),
        order_of_C_B_inv_mod_p2 62059 62056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62056 62059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_62056_62059
def row_62452_62455 :
    HasPrimeWithExpOne (S_val 62452 62455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62452 62455 ∧ ¬ p ∣ (62455 - 62452) ∧
      ∃ (hNotC : ¬ p ∣ 62455) (hNotB : ¬ p ∣ 62452),
        order_of_C_B_inv_mod_p2 62455 62452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62452 62455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_62452_62455
def row_62849_62852 :
    HasPrimeWithExpOne (S_val 62849 62852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62849 62852 ∧ ¬ p ∣ (62852 - 62849) ∧
      ∃ (hNotC : ¬ p ∣ 62852) (hNotB : ¬ p ∣ 62849),
        order_of_C_B_inv_mod_p2 62852 62849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62849 62852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_62849_62852
def row_63234_63237 :
    HasPrimeWithExpOne (S_val 63234 63237) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63234 63237 ∧ ¬ p ∣ (63237 - 63234) ∧
      ∃ (hNotC : ¬ p ∣ 63237) (hNotB : ¬ p ∣ 63234),
        order_of_C_B_inv_mod_p2 63237 63234 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63234 63237 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_63234_63237
def row_63609_63612 :
    HasPrimeWithExpOne (S_val 63609 63612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63609 63612 ∧ ¬ p ∣ (63612 - 63609) ∧
      ∃ (hNotC : ¬ p ∣ 63612) (hNotB : ¬ p ∣ 63609),
        order_of_C_B_inv_mod_p2 63612 63609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63609 63612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_63609_63612
def row_63982_63985 :
    HasPrimeWithExpOne (S_val 63982 63985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63982 63985 ∧ ¬ p ∣ (63985 - 63982) ∧
      ∃ (hNotC : ¬ p ∣ 63985) (hNotB : ¬ p ∣ 63982),
        order_of_C_B_inv_mod_p2 63985 63982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63982 63985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_63982_63985
def row_64381_64384 :
    HasPrimeWithExpOne (S_val 64381 64384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64381 64384 ∧ ¬ p ∣ (64384 - 64381) ∧
      ∃ (hNotC : ¬ p ∣ 64384) (hNotB : ¬ p ∣ 64381),
        order_of_C_B_inv_mod_p2 64384 64381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64381 64384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_64381_64384
def row_64755_64758 :
    HasPrimeWithExpOne (S_val 64755 64758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64755 64758 ∧ ¬ p ∣ (64758 - 64755) ∧
      ∃ (hNotC : ¬ p ∣ 64758) (hNotB : ¬ p ∣ 64755),
        order_of_C_B_inv_mod_p2 64758 64755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64755 64758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_64755_64758
def row_65129_65132 :
    HasPrimeWithExpOne (S_val 65129 65132) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65129 65132 ∧ ¬ p ∣ (65132 - 65129) ∧
      ∃ (hNotC : ¬ p ∣ 65132) (hNotB : ¬ p ∣ 65129),
        order_of_C_B_inv_mod_p2 65132 65129 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65129 65132 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_65129_65132
def row_65501_65504 :
    HasPrimeWithExpOne (S_val 65501 65504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65501 65504 ∧ ¬ p ∣ (65504 - 65501) ∧
      ∃ (hNotC : ¬ p ∣ 65504) (hNotB : ¬ p ∣ 65501),
        order_of_C_B_inv_mod_p2 65504 65501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65501 65504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_65501_65504
def row_65883_65886 :
    HasPrimeWithExpOne (S_val 65883 65886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65883 65886 ∧ ¬ p ∣ (65886 - 65883) ∧
      ∃ (hNotC : ¬ p ∣ 65886) (hNotB : ¬ p ∣ 65883),
        order_of_C_B_inv_mod_p2 65886 65883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65883 65886 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_65883_65886
def row_66287_66290 :
    HasPrimeWithExpOne (S_val 66287 66290) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66287 66290 ∧ ¬ p ∣ (66290 - 66287) ∧
      ∃ (hNotC : ¬ p ∣ 66290) (hNotB : ¬ p ∣ 66287),
        order_of_C_B_inv_mod_p2 66290 66287 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66287 66290 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_66287_66290
def row_66655_66658 :
    HasPrimeWithExpOne (S_val 66655 66658) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66655 66658 ∧ ¬ p ∣ (66658 - 66655) ∧
      ∃ (hNotC : ¬ p ∣ 66658) (hNotB : ¬ p ∣ 66655),
        order_of_C_B_inv_mod_p2 66658 66655 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66655 66658 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_66655_66658
def row_67038_67041 :
    HasPrimeWithExpOne (S_val 67038 67041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67038 67041 ∧ ¬ p ∣ (67041 - 67038) ∧
      ∃ (hNotC : ¬ p ∣ 67041) (hNotB : ¬ p ∣ 67038),
        order_of_C_B_inv_mod_p2 67041 67038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67038 67041 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_67038_67041
def row_67426_67429 :
    HasPrimeWithExpOne (S_val 67426 67429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67426 67429 ∧ ¬ p ∣ (67429 - 67426) ∧
      ∃ (hNotC : ¬ p ∣ 67429) (hNotB : ¬ p ∣ 67426),
        order_of_C_B_inv_mod_p2 67429 67426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67426 67429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_67426_67429
def row_67819_67822 :
    HasPrimeWithExpOne (S_val 67819 67822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67819 67822 ∧ ¬ p ∣ (67822 - 67819) ∧
      ∃ (hNotC : ¬ p ∣ 67822) (hNotB : ¬ p ∣ 67819),
        order_of_C_B_inv_mod_p2 67822 67819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67819 67822 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_67819_67822
def row_68203_68206 :
    HasPrimeWithExpOne (S_val 68203 68206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68203 68206 ∧ ¬ p ∣ (68206 - 68203) ∧
      ∃ (hNotC : ¬ p ∣ 68206) (hNotB : ¬ p ∣ 68203),
        order_of_C_B_inv_mod_p2 68206 68203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68203 68206 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_68203_68206
def row_68595_68598 :
    HasPrimeWithExpOne (S_val 68595 68598) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68595 68598 ∧ ¬ p ∣ (68598 - 68595) ∧
      ∃ (hNotC : ¬ p ∣ 68598) (hNotB : ¬ p ∣ 68595),
        order_of_C_B_inv_mod_p2 68598 68595 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68595 68598 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_68595_68598
def row_68980_68983 :
    HasPrimeWithExpOne (S_val 68980 68983) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68980 68983 ∧ ¬ p ∣ (68983 - 68980) ∧
      ∃ (hNotC : ¬ p ∣ 68983) (hNotB : ¬ p ∣ 68980),
        order_of_C_B_inv_mod_p2 68983 68980 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68980 68983 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_68980_68983
def row_69387_69390 :
    HasPrimeWithExpOne (S_val 69387 69390) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69387 69390 ∧ ¬ p ∣ (69390 - 69387) ∧
      ∃ (hNotC : ¬ p ∣ 69390) (hNotB : ¬ p ∣ 69387),
        order_of_C_B_inv_mod_p2 69390 69387 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69387 69390 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_69387_69390
def row_69770_69773 :
    HasPrimeWithExpOne (S_val 69770 69773) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69770 69773 ∧ ¬ p ∣ (69773 - 69770) ∧
      ∃ (hNotC : ¬ p ∣ 69773) (hNotB : ¬ p ∣ 69770),
        order_of_C_B_inv_mod_p2 69773 69770 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69770 69773 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_69770_69773
def row_70145_70148 :
    HasPrimeWithExpOne (S_val 70145 70148) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70145 70148 ∧ ¬ p ∣ (70148 - 70145) ∧
      ∃ (hNotC : ¬ p ∣ 70148) (hNotB : ¬ p ∣ 70145),
        order_of_C_B_inv_mod_p2 70148 70145 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70145 70148 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_70145_70148
def row_70549_70552 :
    HasPrimeWithExpOne (S_val 70549 70552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70549 70552 ∧ ¬ p ∣ (70552 - 70549) ∧
      ∃ (hNotC : ¬ p ∣ 70552) (hNotB : ¬ p ∣ 70549),
        order_of_C_B_inv_mod_p2 70552 70549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70549 70552 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_70549_70552
def row_70931_70934 :
    HasPrimeWithExpOne (S_val 70931 70934) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70931 70934 ∧ ¬ p ∣ (70934 - 70931) ∧
      ∃ (hNotC : ¬ p ∣ 70934) (hNotB : ¬ p ∣ 70931),
        order_of_C_B_inv_mod_p2 70934 70931 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70931 70934 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_70931_70934
def row_71321_71324 :
    HasPrimeWithExpOne (S_val 71321 71324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71321 71324 ∧ ¬ p ∣ (71324 - 71321) ∧
      ∃ (hNotC : ¬ p ∣ 71324) (hNotB : ¬ p ∣ 71321),
        order_of_C_B_inv_mod_p2 71324 71321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71321 71324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_71321_71324
def row_71710_71713 :
    HasPrimeWithExpOne (S_val 71710 71713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71710 71713 ∧ ¬ p ∣ (71713 - 71710) ∧
      ∃ (hNotC : ¬ p ∣ 71713) (hNotB : ¬ p ∣ 71710),
        order_of_C_B_inv_mod_p2 71713 71710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71710 71713 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_71710_71713
def row_72104_72107 :
    HasPrimeWithExpOne (S_val 72104 72107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72104 72107 ∧ ¬ p ∣ (72107 - 72104) ∧
      ∃ (hNotC : ¬ p ∣ 72107) (hNotB : ¬ p ∣ 72104),
        order_of_C_B_inv_mod_p2 72107 72104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72104 72107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_72104_72107
def row_72497_72500 :
    HasPrimeWithExpOne (S_val 72497 72500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72497 72500 ∧ ¬ p ∣ (72500 - 72497) ∧
      ∃ (hNotC : ¬ p ∣ 72500) (hNotB : ¬ p ∣ 72497),
        order_of_C_B_inv_mod_p2 72500 72497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72497 72500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_72497_72500
def row_72899_72902 :
    HasPrimeWithExpOne (S_val 72899 72902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72899 72902 ∧ ¬ p ∣ (72902 - 72899) ∧
      ∃ (hNotC : ¬ p ∣ 72902) (hNotB : ¬ p ∣ 72899),
        order_of_C_B_inv_mod_p2 72902 72899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72899 72902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_72899_72902
def row_73286_73289 :
    HasPrimeWithExpOne (S_val 73286 73289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73286 73289 ∧ ¬ p ∣ (73289 - 73286) ∧
      ∃ (hNotC : ¬ p ∣ 73289) (hNotB : ¬ p ∣ 73286),
        order_of_C_B_inv_mod_p2 73289 73286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73286 73289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_73286_73289
def row_73675_73678 :
    HasPrimeWithExpOne (S_val 73675 73678) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73675 73678 ∧ ¬ p ∣ (73678 - 73675) ∧
      ∃ (hNotC : ¬ p ∣ 73678) (hNotB : ¬ p ∣ 73675),
        order_of_C_B_inv_mod_p2 73678 73675 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73675 73678 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_73675_73678
def row_74041_74044 :
    HasPrimeWithExpOne (S_val 74041 74044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74041 74044 ∧ ¬ p ∣ (74044 - 74041) ∧
      ∃ (hNotC : ¬ p ∣ 74044) (hNotB : ¬ p ∣ 74041),
        order_of_C_B_inv_mod_p2 74044 74041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74041 74044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_74041_74044
def row_74436_74439 :
    HasPrimeWithExpOne (S_val 74436 74439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74436 74439 ∧ ¬ p ∣ (74439 - 74436) ∧
      ∃ (hNotC : ¬ p ∣ 74439) (hNotB : ¬ p ∣ 74436),
        order_of_C_B_inv_mod_p2 74439 74436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74436 74439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_74436_74439
def row_74820_74823 :
    HasPrimeWithExpOne (S_val 74820 74823) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74820 74823 ∧ ¬ p ∣ (74823 - 74820) ∧
      ∃ (hNotC : ¬ p ∣ 74823) (hNotB : ¬ p ∣ 74820),
        order_of_C_B_inv_mod_p2 74823 74820 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74820 74823 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_74820_74823
def row_75171_75174 :
    HasPrimeWithExpOne (S_val 75171 75174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75171 75174 ∧ ¬ p ∣ (75174 - 75171) ∧
      ∃ (hNotC : ¬ p ∣ 75174) (hNotB : ¬ p ∣ 75171),
        order_of_C_B_inv_mod_p2 75174 75171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75171 75174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_75171_75174
def row_75575_75578 :
    HasPrimeWithExpOne (S_val 75575 75578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75575 75578 ∧ ¬ p ∣ (75578 - 75575) ∧
      ∃ (hNotC : ¬ p ∣ 75578) (hNotB : ¬ p ∣ 75575),
        order_of_C_B_inv_mod_p2 75578 75575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75575 75578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_75575_75578
def row_75953_75956 :
    HasPrimeWithExpOne (S_val 75953 75956) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75953 75956 ∧ ¬ p ∣ (75956 - 75953) ∧
      ∃ (hNotC : ¬ p ∣ 75956) (hNotB : ¬ p ∣ 75953),
        order_of_C_B_inv_mod_p2 75956 75953 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75953 75956 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_75953_75956
def row_76337_76340 :
    HasPrimeWithExpOne (S_val 76337 76340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76337 76340 ∧ ¬ p ∣ (76340 - 76337) ∧
      ∃ (hNotC : ¬ p ∣ 76340) (hNotB : ¬ p ∣ 76337),
        order_of_C_B_inv_mod_p2 76340 76337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76337 76340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_76337_76340
def row_76728_76731 :
    HasPrimeWithExpOne (S_val 76728 76731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76728 76731 ∧ ¬ p ∣ (76731 - 76728) ∧
      ∃ (hNotC : ¬ p ∣ 76731) (hNotB : ¬ p ∣ 76728),
        order_of_C_B_inv_mod_p2 76731 76728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76728 76731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_76728_76731
def row_77118_77121 :
    HasPrimeWithExpOne (S_val 77118 77121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77118 77121 ∧ ¬ p ∣ (77121 - 77118) ∧
      ∃ (hNotC : ¬ p ∣ 77121) (hNotB : ¬ p ∣ 77118),
        order_of_C_B_inv_mod_p2 77121 77118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77118 77121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_77118_77121
def row_77512_77515 :
    HasPrimeWithExpOne (S_val 77512 77515) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77512 77515 ∧ ¬ p ∣ (77515 - 77512) ∧
      ∃ (hNotC : ¬ p ∣ 77515) (hNotB : ¬ p ∣ 77512),
        order_of_C_B_inv_mod_p2 77515 77512 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77512 77515 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_77512_77515
def row_77902_77905 :
    HasPrimeWithExpOne (S_val 77902 77905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77902 77905 ∧ ¬ p ∣ (77905 - 77902) ∧
      ∃ (hNotC : ¬ p ∣ 77905) (hNotB : ¬ p ∣ 77902),
        order_of_C_B_inv_mod_p2 77905 77902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77902 77905 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_77902_77905
def row_78291_78294 :
    HasPrimeWithExpOne (S_val 78291 78294) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78291 78294 ∧ ¬ p ∣ (78294 - 78291) ∧
      ∃ (hNotC : ¬ p ∣ 78294) (hNotB : ¬ p ∣ 78291),
        order_of_C_B_inv_mod_p2 78294 78291 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78291 78294 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_78291_78294
def row_78678_78681 :
    HasPrimeWithExpOne (S_val 78678 78681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78678 78681 ∧ ¬ p ∣ (78681 - 78678) ∧
      ∃ (hNotC : ¬ p ∣ 78681) (hNotB : ¬ p ∣ 78678),
        order_of_C_B_inv_mod_p2 78681 78678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78678 78681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_78678_78681
def row_79069_79072 :
    HasPrimeWithExpOne (S_val 79069 79072) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79069 79072 ∧ ¬ p ∣ (79072 - 79069) ∧
      ∃ (hNotC : ¬ p ∣ 79072) (hNotB : ¬ p ∣ 79069),
        order_of_C_B_inv_mod_p2 79072 79069 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79069 79072 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_79069_79072
def row_79454_79457 :
    HasPrimeWithExpOne (S_val 79454 79457) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79454 79457 ∧ ¬ p ∣ (79457 - 79454) ∧
      ∃ (hNotC : ¬ p ∣ 79457) (hNotB : ¬ p ∣ 79454),
        order_of_C_B_inv_mod_p2 79457 79454 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79454 79457 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_79454_79457
def row_79843_79846 :
    HasPrimeWithExpOne (S_val 79843 79846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79843 79846 ∧ ¬ p ∣ (79846 - 79843) ∧
      ∃ (hNotC : ¬ p ∣ 79846) (hNotB : ¬ p ∣ 79843),
        order_of_C_B_inv_mod_p2 79846 79843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79843 79846 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_79843_79846
def row_80233_80236 :
    HasPrimeWithExpOne (S_val 80233 80236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80233 80236 ∧ ¬ p ∣ (80236 - 80233) ∧
      ∃ (hNotC : ¬ p ∣ 80236) (hNotB : ¬ p ∣ 80233),
        order_of_C_B_inv_mod_p2 80236 80233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80233 80236 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_80233_80236
def row_80625_80628 :
    HasPrimeWithExpOne (S_val 80625 80628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80625 80628 ∧ ¬ p ∣ (80628 - 80625) ∧
      ∃ (hNotC : ¬ p ∣ 80628) (hNotB : ¬ p ∣ 80625),
        order_of_C_B_inv_mod_p2 80628 80625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80625 80628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_80625_80628
def row_81029_81032 :
    HasPrimeWithExpOne (S_val 81029 81032) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81029 81032 ∧ ¬ p ∣ (81032 - 81029) ∧
      ∃ (hNotC : ¬ p ∣ 81032) (hNotB : ¬ p ∣ 81029),
        order_of_C_B_inv_mod_p2 81032 81029 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81029 81032 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_81029_81032
def row_81411_81414 :
    HasPrimeWithExpOne (S_val 81411 81414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81411 81414 ∧ ¬ p ∣ (81414 - 81411) ∧
      ∃ (hNotC : ¬ p ∣ 81414) (hNotB : ¬ p ∣ 81411),
        order_of_C_B_inv_mod_p2 81414 81411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81411 81414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_81411_81414
def row_81782_81785 :
    HasPrimeWithExpOne (S_val 81782 81785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81782 81785 ∧ ¬ p ∣ (81785 - 81782) ∧
      ∃ (hNotC : ¬ p ∣ 81785) (hNotB : ¬ p ∣ 81782),
        order_of_C_B_inv_mod_p2 81785 81782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81782 81785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_81782_81785
def row_82156_82159 :
    HasPrimeWithExpOne (S_val 82156 82159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82156 82159 ∧ ¬ p ∣ (82159 - 82156) ∧
      ∃ (hNotC : ¬ p ∣ 82159) (hNotB : ¬ p ∣ 82156),
        order_of_C_B_inv_mod_p2 82159 82156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82156 82159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_82156_82159
def row_82540_82543 :
    HasPrimeWithExpOne (S_val 82540 82543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82540 82543 ∧ ¬ p ∣ (82543 - 82540) ∧
      ∃ (hNotC : ¬ p ∣ 82543) (hNotB : ¬ p ∣ 82540),
        order_of_C_B_inv_mod_p2 82543 82540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82540 82543 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_82540_82543
def row_82938_82941 :
    HasPrimeWithExpOne (S_val 82938 82941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82938 82941 ∧ ¬ p ∣ (82941 - 82938) ∧
      ∃ (hNotC : ¬ p ∣ 82941) (hNotB : ¬ p ∣ 82938),
        order_of_C_B_inv_mod_p2 82941 82938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82938 82941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_82938_82941
def row_83321_83324 :
    HasPrimeWithExpOne (S_val 83321 83324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83321 83324 ∧ ¬ p ∣ (83324 - 83321) ∧
      ∃ (hNotC : ¬ p ∣ 83324) (hNotB : ¬ p ∣ 83321),
        order_of_C_B_inv_mod_p2 83324 83321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83321 83324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_83321_83324
def row_83714_83717 :
    HasPrimeWithExpOne (S_val 83714 83717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83714 83717 ∧ ¬ p ∣ (83717 - 83714) ∧
      ∃ (hNotC : ¬ p ∣ 83717) (hNotB : ¬ p ∣ 83714),
        order_of_C_B_inv_mod_p2 83717 83714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83714 83717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_83714_83717
def row_84116_84119 :
    HasPrimeWithExpOne (S_val 84116 84119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84116 84119 ∧ ¬ p ∣ (84119 - 84116) ∧
      ∃ (hNotC : ¬ p ∣ 84119) (hNotB : ¬ p ∣ 84116),
        order_of_C_B_inv_mod_p2 84119 84116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84116 84119 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_84116_84119
def row_84499_84502 :
    HasPrimeWithExpOne (S_val 84499 84502) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84499 84502 ∧ ¬ p ∣ (84502 - 84499) ∧
      ∃ (hNotC : ¬ p ∣ 84502) (hNotB : ¬ p ∣ 84499),
        order_of_C_B_inv_mod_p2 84502 84499 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84499 84502 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_84499_84502
def row_84888_84891 :
    HasPrimeWithExpOne (S_val 84888 84891) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84888 84891 ∧ ¬ p ∣ (84891 - 84888) ∧
      ∃ (hNotC : ¬ p ∣ 84891) (hNotB : ¬ p ∣ 84888),
        order_of_C_B_inv_mod_p2 84891 84888 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84888 84891 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_84888_84891
def row_85269_85272 :
    HasPrimeWithExpOne (S_val 85269 85272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85269 85272 ∧ ¬ p ∣ (85272 - 85269) ∧
      ∃ (hNotC : ¬ p ∣ 85272) (hNotB : ¬ p ∣ 85269),
        order_of_C_B_inv_mod_p2 85272 85269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85269 85272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_85269_85272
def row_85662_85665 :
    HasPrimeWithExpOne (S_val 85662 85665) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85662 85665 ∧ ¬ p ∣ (85665 - 85662) ∧
      ∃ (hNotC : ¬ p ∣ 85665) (hNotB : ¬ p ∣ 85662),
        order_of_C_B_inv_mod_p2 85665 85662 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85662 85665 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_85662_85665
def row_86026_86029 :
    HasPrimeWithExpOne (S_val 86026 86029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86026 86029 ∧ ¬ p ∣ (86029 - 86026) ∧
      ∃ (hNotC : ¬ p ∣ 86029) (hNotB : ¬ p ∣ 86026),
        order_of_C_B_inv_mod_p2 86029 86026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86026 86029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_86026_86029
def row_86409_86412 :
    HasPrimeWithExpOne (S_val 86409 86412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86409 86412 ∧ ¬ p ∣ (86412 - 86409) ∧
      ∃ (hNotC : ¬ p ∣ 86412) (hNotB : ¬ p ∣ 86409),
        order_of_C_B_inv_mod_p2 86412 86409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86409 86412 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_86409_86412
def row_86798_86801 :
    HasPrimeWithExpOne (S_val 86798 86801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86798 86801 ∧ ¬ p ∣ (86801 - 86798) ∧
      ∃ (hNotC : ¬ p ∣ 86801) (hNotB : ¬ p ∣ 86798),
        order_of_C_B_inv_mod_p2 86801 86798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86798 86801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_86798_86801
def row_87199_87202 :
    HasPrimeWithExpOne (S_val 87199 87202) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87199 87202 ∧ ¬ p ∣ (87202 - 87199) ∧
      ∃ (hNotC : ¬ p ∣ 87202) (hNotB : ¬ p ∣ 87199),
        order_of_C_B_inv_mod_p2 87202 87199 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87199 87202 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_87199_87202
def row_87582_87585 :
    HasPrimeWithExpOne (S_val 87582 87585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87582 87585 ∧ ¬ p ∣ (87585 - 87582) ∧
      ∃ (hNotC : ¬ p ∣ 87585) (hNotB : ¬ p ∣ 87582),
        order_of_C_B_inv_mod_p2 87585 87582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87582 87585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_87582_87585
def row_87972_87975 :
    HasPrimeWithExpOne (S_val 87972 87975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87972 87975 ∧ ¬ p ∣ (87975 - 87972) ∧
      ∃ (hNotC : ¬ p ∣ 87975) (hNotB : ¬ p ∣ 87972),
        order_of_C_B_inv_mod_p2 87975 87972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87972 87975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_87972_87975
def row_88355_88358 :
    HasPrimeWithExpOne (S_val 88355 88358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88355 88358 ∧ ¬ p ∣ (88358 - 88355) ∧
      ∃ (hNotC : ¬ p ∣ 88358) (hNotB : ¬ p ∣ 88355),
        order_of_C_B_inv_mod_p2 88358 88355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88355 88358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_88355_88358
def row_88772_88775 :
    HasPrimeWithExpOne (S_val 88772 88775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88772 88775 ∧ ¬ p ∣ (88775 - 88772) ∧
      ∃ (hNotC : ¬ p ∣ 88775) (hNotB : ¬ p ∣ 88772),
        order_of_C_B_inv_mod_p2 88775 88772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88772 88775 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_88772_88775
def row_89151_89154 :
    HasPrimeWithExpOne (S_val 89151 89154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89151 89154 ∧ ¬ p ∣ (89154 - 89151) ∧
      ∃ (hNotC : ¬ p ∣ 89154) (hNotB : ¬ p ∣ 89151),
        order_of_C_B_inv_mod_p2 89154 89151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89151 89154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_89151_89154
def row_89560_89563 :
    HasPrimeWithExpOne (S_val 89560 89563) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89560 89563 ∧ ¬ p ∣ (89563 - 89560) ∧
      ∃ (hNotC : ¬ p ∣ 89563) (hNotB : ¬ p ∣ 89560),
        order_of_C_B_inv_mod_p2 89563 89560 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89560 89563 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_89560_89563
def row_89934_89937 :
    HasPrimeWithExpOne (S_val 89934 89937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89934 89937 ∧ ¬ p ∣ (89937 - 89934) ∧
      ∃ (hNotC : ¬ p ∣ 89937) (hNotB : ¬ p ∣ 89934),
        order_of_C_B_inv_mod_p2 89937 89934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89934 89937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_89934_89937
def row_90331_90334 :
    HasPrimeWithExpOne (S_val 90331 90334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90331 90334 ∧ ¬ p ∣ (90334 - 90331) ∧
      ∃ (hNotC : ¬ p ∣ 90334) (hNotB : ¬ p ∣ 90331),
        order_of_C_B_inv_mod_p2 90334 90331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90331 90334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_90331_90334
def row_90707_90710 :
    HasPrimeWithExpOne (S_val 90707 90710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90707 90710 ∧ ¬ p ∣ (90710 - 90707) ∧
      ∃ (hNotC : ¬ p ∣ 90710) (hNotB : ¬ p ∣ 90707),
        order_of_C_B_inv_mod_p2 90710 90707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90707 90710 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_90707_90710
def row_91097_91100 :
    HasPrimeWithExpOne (S_val 91097 91100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91097 91100 ∧ ¬ p ∣ (91100 - 91097) ∧
      ∃ (hNotC : ¬ p ∣ 91100) (hNotB : ¬ p ∣ 91097),
        order_of_C_B_inv_mod_p2 91100 91097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91097 91100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_91097_91100
def row_91473_91476 :
    HasPrimeWithExpOne (S_val 91473 91476) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91473 91476 ∧ ¬ p ∣ (91476 - 91473) ∧
      ∃ (hNotC : ¬ p ∣ 91476) (hNotB : ¬ p ∣ 91473),
        order_of_C_B_inv_mod_p2 91476 91473 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91473 91476 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_91473_91476
def row_91853_91856 :
    HasPrimeWithExpOne (S_val 91853 91856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91853 91856 ∧ ¬ p ∣ (91856 - 91853) ∧
      ∃ (hNotC : ¬ p ∣ 91856) (hNotB : ¬ p ∣ 91853),
        order_of_C_B_inv_mod_p2 91856 91853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91853 91856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_91853_91856
def row_92255_92258 :
    HasPrimeWithExpOne (S_val 92255 92258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92255 92258 ∧ ¬ p ∣ (92258 - 92255) ∧
      ∃ (hNotC : ¬ p ∣ 92258) (hNotB : ¬ p ∣ 92255),
        order_of_C_B_inv_mod_p2 92258 92255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92255 92258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_92255_92258
def row_92611_92614 :
    HasPrimeWithExpOne (S_val 92611 92614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92611 92614 ∧ ¬ p ∣ (92614 - 92611) ∧
      ∃ (hNotC : ¬ p ∣ 92614) (hNotB : ¬ p ∣ 92611),
        order_of_C_B_inv_mod_p2 92614 92611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92611 92614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_92611_92614
def row_93019_93022 :
    HasPrimeWithExpOne (S_val 93019 93022) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93019 93022 ∧ ¬ p ∣ (93022 - 93019) ∧
      ∃ (hNotC : ¬ p ∣ 93022) (hNotB : ¬ p ∣ 93019),
        order_of_C_B_inv_mod_p2 93022 93019 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93019 93022 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_93019_93022
def row_93426_93429 :
    HasPrimeWithExpOne (S_val 93426 93429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93426 93429 ∧ ¬ p ∣ (93429 - 93426) ∧
      ∃ (hNotC : ¬ p ∣ 93429) (hNotB : ¬ p ∣ 93426),
        order_of_C_B_inv_mod_p2 93429 93426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93426 93429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_93426_93429
def row_93802_93805 :
    HasPrimeWithExpOne (S_val 93802 93805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93802 93805 ∧ ¬ p ∣ (93805 - 93802) ∧
      ∃ (hNotC : ¬ p ∣ 93805) (hNotB : ¬ p ∣ 93802),
        order_of_C_B_inv_mod_p2 93805 93802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93802 93805 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_93802_93805
def row_94186_94189 :
    HasPrimeWithExpOne (S_val 94186 94189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94186 94189 ∧ ¬ p ∣ (94189 - 94186) ∧
      ∃ (hNotC : ¬ p ∣ 94189) (hNotB : ¬ p ∣ 94186),
        order_of_C_B_inv_mod_p2 94189 94186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94186 94189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_94186_94189
def row_94570_94573 :
    HasPrimeWithExpOne (S_val 94570 94573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94570 94573 ∧ ¬ p ∣ (94573 - 94570) ∧
      ∃ (hNotC : ¬ p ∣ 94573) (hNotB : ¬ p ∣ 94570),
        order_of_C_B_inv_mod_p2 94573 94570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94570 94573 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_94570_94573
def row_94968_94971 :
    HasPrimeWithExpOne (S_val 94968 94971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94968 94971 ∧ ¬ p ∣ (94971 - 94968) ∧
      ∃ (hNotC : ¬ p ∣ 94971) (hNotB : ¬ p ∣ 94968),
        order_of_C_B_inv_mod_p2 94971 94968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94968 94971 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_94968_94971
def row_95360_95363 :
    HasPrimeWithExpOne (S_val 95360 95363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95360 95363 ∧ ¬ p ∣ (95363 - 95360) ∧
      ∃ (hNotC : ¬ p ∣ 95363) (hNotB : ¬ p ∣ 95360),
        order_of_C_B_inv_mod_p2 95363 95360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95360 95363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_95360_95363
def row_95736_95739 :
    HasPrimeWithExpOne (S_val 95736 95739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95736 95739 ∧ ¬ p ∣ (95739 - 95736) ∧
      ∃ (hNotC : ¬ p ∣ 95739) (hNotB : ¬ p ∣ 95736),
        order_of_C_B_inv_mod_p2 95739 95736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95736 95739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_95736_95739
def row_96128_96131 :
    HasPrimeWithExpOne (S_val 96128 96131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96128 96131 ∧ ¬ p ∣ (96131 - 96128) ∧
      ∃ (hNotC : ¬ p ∣ 96131) (hNotB : ¬ p ∣ 96128),
        order_of_C_B_inv_mod_p2 96131 96128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96128 96131 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_96128_96131
def row_96522_96525 :
    HasPrimeWithExpOne (S_val 96522 96525) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96522 96525 ∧ ¬ p ∣ (96525 - 96522) ∧
      ∃ (hNotC : ¬ p ∣ 96525) (hNotB : ¬ p ∣ 96522),
        order_of_C_B_inv_mod_p2 96525 96522 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96522 96525 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_96522_96525
def row_96930_96933 :
    HasPrimeWithExpOne (S_val 96930 96933) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96930 96933 ∧ ¬ p ∣ (96933 - 96930) ∧
      ∃ (hNotC : ¬ p ∣ 96933) (hNotB : ¬ p ∣ 96930),
        order_of_C_B_inv_mod_p2 96933 96930 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96930 96933 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_96930_96933
def row_97319_97322 :
    HasPrimeWithExpOne (S_val 97319 97322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97319 97322 ∧ ¬ p ∣ (97322 - 97319) ∧
      ∃ (hNotC : ¬ p ∣ 97322) (hNotB : ¬ p ∣ 97319),
        order_of_C_B_inv_mod_p2 97322 97319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97319 97322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_97319_97322
def row_97723_97726 :
    HasPrimeWithExpOne (S_val 97723 97726) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97723 97726 ∧ ¬ p ∣ (97726 - 97723) ∧
      ∃ (hNotC : ¬ p ∣ 97726) (hNotB : ¬ p ∣ 97723),
        order_of_C_B_inv_mod_p2 97726 97723 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97723 97726 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_97723_97726
def row_98109_98112 :
    HasPrimeWithExpOne (S_val 98109 98112) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98109 98112 ∧ ¬ p ∣ (98112 - 98109) ∧
      ∃ (hNotC : ¬ p ∣ 98112) (hNotB : ¬ p ∣ 98109),
        order_of_C_B_inv_mod_p2 98112 98109 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98109 98112 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_98109_98112
def row_98489_98492 :
    HasPrimeWithExpOne (S_val 98489 98492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98489 98492 ∧ ¬ p ∣ (98492 - 98489) ∧
      ∃ (hNotC : ¬ p ∣ 98492) (hNotB : ¬ p ∣ 98489),
        order_of_C_B_inv_mod_p2 98492 98489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98489 98492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_98489_98492
def row_98851_98854 :
    HasPrimeWithExpOne (S_val 98851 98854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98851 98854 ∧ ¬ p ∣ (98854 - 98851) ∧
      ∃ (hNotC : ¬ p ∣ 98854) (hNotB : ¬ p ∣ 98851),
        order_of_C_B_inv_mod_p2 98854 98851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98851 98854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_98851_98854
def row_99235_99238 :
    HasPrimeWithExpOne (S_val 99235 99238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99235 99238 ∧ ¬ p ∣ (99238 - 99235) ∧
      ∃ (hNotC : ¬ p ∣ 99238) (hNotB : ¬ p ∣ 99235),
        order_of_C_B_inv_mod_p2 99238 99235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99235 99238 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_99235_99238
def row_99615_99618 :
    HasPrimeWithExpOne (S_val 99615 99618) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99615 99618 ∧ ¬ p ∣ (99618 - 99615) ∧
      ∃ (hNotC : ¬ p ∣ 99618) (hNotB : ¬ p ∣ 99615),
        order_of_C_B_inv_mod_p2 99618 99615 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99615 99618 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_99615_99618
def row_100000_100003 :
    HasPrimeWithExpOne (S_val 100000 100003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100000 100003 ∧ ¬ p ∣ (100003 - 100000) ∧
      ∃ (hNotC : ¬ p ∣ 100003) (hNotB : ¬ p ∣ 100000),
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100000 100003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_100000_100003
def row_100355_100358 :
    HasPrimeWithExpOne (S_val 100355 100358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100355 100358 ∧ ¬ p ∣ (100358 - 100355) ∧
      ∃ (hNotC : ¬ p ∣ 100358) (hNotB : ¬ p ∣ 100355),
        order_of_C_B_inv_mod_p2 100358 100355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100355 100358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_100355_100358
def row_100709_100712 :
    HasPrimeWithExpOne (S_val 100709 100712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100709 100712 ∧ ¬ p ∣ (100712 - 100709) ∧
      ∃ (hNotC : ¬ p ∣ 100712) (hNotB : ¬ p ∣ 100709),
        order_of_C_B_inv_mod_p2 100712 100709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100709 100712 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_100709_100712
def row_101063_101066 :
    HasPrimeWithExpOne (S_val 101063 101066) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101063 101066 ∧ ¬ p ∣ (101066 - 101063) ∧
      ∃ (hNotC : ¬ p ∣ 101066) (hNotB : ¬ p ∣ 101063),
        order_of_C_B_inv_mod_p2 101066 101063 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101063 101066 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_101063_101066
def row_101419_101422 :
    HasPrimeWithExpOne (S_val 101419 101422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101419 101422 ∧ ¬ p ∣ (101422 - 101419) ∧
      ∃ (hNotC : ¬ p ∣ 101422) (hNotB : ¬ p ∣ 101419),
        order_of_C_B_inv_mod_p2 101422 101419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101419 101422 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_101419_101422
def row_101773_101776 :
    HasPrimeWithExpOne (S_val 101773 101776) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101773 101776 ∧ ¬ p ∣ (101776 - 101773) ∧
      ∃ (hNotC : ¬ p ∣ 101776) (hNotB : ¬ p ∣ 101773),
        order_of_C_B_inv_mod_p2 101776 101773 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101773 101776 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_101773_101776
def row_102126_102129 :
    HasPrimeWithExpOne (S_val 102126 102129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102126 102129 ∧ ¬ p ∣ (102129 - 102126) ∧
      ∃ (hNotC : ¬ p ∣ 102129) (hNotB : ¬ p ∣ 102126),
        order_of_C_B_inv_mod_p2 102129 102126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102126 102129 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_102126_102129
def row_102483_102486 :
    HasPrimeWithExpOne (S_val 102483 102486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102483 102486 ∧ ¬ p ∣ (102486 - 102483) ∧
      ∃ (hNotC : ¬ p ∣ 102486) (hNotB : ¬ p ∣ 102483),
        order_of_C_B_inv_mod_p2 102486 102483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102483 102486 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_102483_102486
def row_102836_102839 :
    HasPrimeWithExpOne (S_val 102836 102839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102836 102839 ∧ ¬ p ∣ (102839 - 102836) ∧
      ∃ (hNotC : ¬ p ∣ 102839) (hNotB : ¬ p ∣ 102836),
        order_of_C_B_inv_mod_p2 102839 102836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102836 102839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_102836_102839
def row_103192_103195 :
    HasPrimeWithExpOne (S_val 103192 103195) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103192 103195 ∧ ¬ p ∣ (103195 - 103192) ∧
      ∃ (hNotC : ¬ p ∣ 103195) (hNotB : ¬ p ∣ 103192),
        order_of_C_B_inv_mod_p2 103195 103192 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103192 103195 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_103192_103195
def row_103545_103548 :
    HasPrimeWithExpOne (S_val 103545 103548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103545 103548 ∧ ¬ p ∣ (103548 - 103545) ∧
      ∃ (hNotC : ¬ p ∣ 103548) (hNotB : ¬ p ∣ 103545),
        order_of_C_B_inv_mod_p2 103548 103545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103545 103548 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_103545_103548
def row_103900_103903 :
    HasPrimeWithExpOne (S_val 103900 103903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103900 103903 ∧ ¬ p ∣ (103903 - 103900) ∧
      ∃ (hNotC : ¬ p ∣ 103903) (hNotB : ¬ p ∣ 103900),
        order_of_C_B_inv_mod_p2 103903 103900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103900 103903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_103900_103903
def row_104255_104258 :
    HasPrimeWithExpOne (S_val 104255 104258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104255 104258 ∧ ¬ p ∣ (104258 - 104255) ∧
      ∃ (hNotC : ¬ p ∣ 104258) (hNotB : ¬ p ∣ 104255),
        order_of_C_B_inv_mod_p2 104258 104255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104255 104258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_104255_104258
def row_104609_104612 :
    HasPrimeWithExpOne (S_val 104609 104612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104609 104612 ∧ ¬ p ∣ (104612 - 104609) ∧
      ∃ (hNotC : ¬ p ∣ 104612) (hNotB : ¬ p ∣ 104609),
        order_of_C_B_inv_mod_p2 104612 104609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104609 104612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_104609_104612
def row_104965_104968 :
    HasPrimeWithExpOne (S_val 104965 104968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104965 104968 ∧ ¬ p ∣ (104968 - 104965) ∧
      ∃ (hNotC : ¬ p ∣ 104968) (hNotB : ¬ p ∣ 104965),
        order_of_C_B_inv_mod_p2 104968 104965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104965 104968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_104965_104968
def row_105319_105322 :
    HasPrimeWithExpOne (S_val 105319 105322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105319 105322 ∧ ¬ p ∣ (105322 - 105319) ∧
      ∃ (hNotC : ¬ p ∣ 105322) (hNotB : ¬ p ∣ 105319),
        order_of_C_B_inv_mod_p2 105322 105319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105319 105322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_105319_105322
def row_105673_105676 :
    HasPrimeWithExpOne (S_val 105673 105676) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105673 105676 ∧ ¬ p ∣ (105676 - 105673) ∧
      ∃ (hNotC : ¬ p ∣ 105676) (hNotB : ¬ p ∣ 105673),
        order_of_C_B_inv_mod_p2 105676 105673 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105673 105676 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_105673_105676
def row_106027_106030 :
    HasPrimeWithExpOne (S_val 106027 106030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106027 106030 ∧ ¬ p ∣ (106030 - 106027) ∧
      ∃ (hNotC : ¬ p ∣ 106030) (hNotB : ¬ p ∣ 106027),
        order_of_C_B_inv_mod_p2 106030 106027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106027 106030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_106027_106030
def row_106381_106384 :
    HasPrimeWithExpOne (S_val 106381 106384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106381 106384 ∧ ¬ p ∣ (106384 - 106381) ∧
      ∃ (hNotC : ¬ p ∣ 106384) (hNotB : ¬ p ∣ 106381),
        order_of_C_B_inv_mod_p2 106384 106381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106381 106384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_106381_106384
def row_106738_106741 :
    HasPrimeWithExpOne (S_val 106738 106741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106738 106741 ∧ ¬ p ∣ (106741 - 106738) ∧
      ∃ (hNotC : ¬ p ∣ 106741) (hNotB : ¬ p ∣ 106738),
        order_of_C_B_inv_mod_p2 106741 106738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106738 106741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_106738_106741
def row_107092_107095 :
    HasPrimeWithExpOne (S_val 107092 107095) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107092 107095 ∧ ¬ p ∣ (107095 - 107092) ∧
      ∃ (hNotC : ¬ p ∣ 107095) (hNotB : ¬ p ∣ 107092),
        order_of_C_B_inv_mod_p2 107095 107092 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107092 107095 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_107092_107095
def row_107444_107447 :
    HasPrimeWithExpOne (S_val 107444 107447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107444 107447 ∧ ¬ p ∣ (107447 - 107444) ∧
      ∃ (hNotC : ¬ p ∣ 107447) (hNotB : ¬ p ∣ 107444),
        order_of_C_B_inv_mod_p2 107447 107444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107444 107447 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_107444_107447
def row_107801_107804 :
    HasPrimeWithExpOne (S_val 107801 107804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107801 107804 ∧ ¬ p ∣ (107804 - 107801) ∧
      ∃ (hNotC : ¬ p ∣ 107804) (hNotB : ¬ p ∣ 107801),
        order_of_C_B_inv_mod_p2 107804 107801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107801 107804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_107801_107804
def row_108155_108158 :
    HasPrimeWithExpOne (S_val 108155 108158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108155 108158 ∧ ¬ p ∣ (108158 - 108155) ∧
      ∃ (hNotC : ¬ p ∣ 108158) (hNotB : ¬ p ∣ 108155),
        order_of_C_B_inv_mod_p2 108158 108155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108155 108158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_108155_108158
def row_108511_108514 :
    HasPrimeWithExpOne (S_val 108511 108514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108511 108514 ∧ ¬ p ∣ (108514 - 108511) ∧
      ∃ (hNotC : ¬ p ∣ 108514) (hNotB : ¬ p ∣ 108511),
        order_of_C_B_inv_mod_p2 108514 108511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108511 108514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_108511_108514
def row_108864_108867 :
    HasPrimeWithExpOne (S_val 108864 108867) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108864 108867 ∧ ¬ p ∣ (108867 - 108864) ∧
      ∃ (hNotC : ¬ p ∣ 108867) (hNotB : ¬ p ∣ 108864),
        order_of_C_B_inv_mod_p2 108867 108864 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108864 108867 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_108864_108867
def row_109219_109222 :
    HasPrimeWithExpOne (S_val 109219 109222) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109219 109222 ∧ ¬ p ∣ (109222 - 109219) ∧
      ∃ (hNotC : ¬ p ∣ 109222) (hNotB : ¬ p ∣ 109219),
        order_of_C_B_inv_mod_p2 109222 109219 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109219 109222 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_109219_109222
def row_109575_109578 :
    HasPrimeWithExpOne (S_val 109575 109578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109575 109578 ∧ ¬ p ∣ (109578 - 109575) ∧
      ∃ (hNotC : ¬ p ∣ 109578) (hNotB : ¬ p ∣ 109575),
        order_of_C_B_inv_mod_p2 109578 109575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109575 109578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_109575_109578
def row_109928_109931 :
    HasPrimeWithExpOne (S_val 109928 109931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109928 109931 ∧ ¬ p ∣ (109931 - 109928) ∧
      ∃ (hNotC : ¬ p ∣ 109931) (hNotB : ¬ p ∣ 109928),
        order_of_C_B_inv_mod_p2 109931 109928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109928 109931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_109928_109931
def row_110284_110287 :
    HasPrimeWithExpOne (S_val 110284 110287) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110284 110287 ∧ ¬ p ∣ (110287 - 110284) ∧
      ∃ (hNotC : ¬ p ∣ 110287) (hNotB : ¬ p ∣ 110284),
        order_of_C_B_inv_mod_p2 110287 110284 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110284 110287 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_110284_110287
def row_110637_110640 :
    HasPrimeWithExpOne (S_val 110637 110640) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110637 110640 ∧ ¬ p ∣ (110640 - 110637) ∧
      ∃ (hNotC : ¬ p ∣ 110640) (hNotB : ¬ p ∣ 110637),
        order_of_C_B_inv_mod_p2 110640 110637 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110637 110640 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_110637_110640
def row_110992_110995 :
    HasPrimeWithExpOne (S_val 110992 110995) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110992 110995 ∧ ¬ p ∣ (110995 - 110992) ∧
      ∃ (hNotC : ¬ p ∣ 110995) (hNotB : ¬ p ∣ 110992),
        order_of_C_B_inv_mod_p2 110995 110992 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110992 110995 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_110992_110995
def row_111347_111350 :
    HasPrimeWithExpOne (S_val 111347 111350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111347 111350 ∧ ¬ p ∣ (111350 - 111347) ∧
      ∃ (hNotC : ¬ p ∣ 111350) (hNotB : ¬ p ∣ 111347),
        order_of_C_B_inv_mod_p2 111350 111347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111347 111350 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_111347_111350
def row_111702_111705 :
    HasPrimeWithExpOne (S_val 111702 111705) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111702 111705 ∧ ¬ p ∣ (111705 - 111702) ∧
      ∃ (hNotC : ¬ p ∣ 111705) (hNotB : ¬ p ∣ 111702),
        order_of_C_B_inv_mod_p2 111705 111702 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111702 111705 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_111702_111705
def row_112056_112059 :
    HasPrimeWithExpOne (S_val 112056 112059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112056 112059 ∧ ¬ p ∣ (112059 - 112056) ∧
      ∃ (hNotC : ¬ p ∣ 112059) (hNotB : ¬ p ∣ 112056),
        order_of_C_B_inv_mod_p2 112059 112056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112056 112059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_112056_112059
def row_112410_112413 :
    HasPrimeWithExpOne (S_val 112410 112413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112410 112413 ∧ ¬ p ∣ (112413 - 112410) ∧
      ∃ (hNotC : ¬ p ∣ 112413) (hNotB : ¬ p ∣ 112410),
        order_of_C_B_inv_mod_p2 112413 112410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112410 112413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_112410_112413
def row_112767_112770 :
    HasPrimeWithExpOne (S_val 112767 112770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112767 112770 ∧ ¬ p ∣ (112770 - 112767) ∧
      ∃ (hNotC : ¬ p ∣ 112770) (hNotB : ¬ p ∣ 112767),
        order_of_C_B_inv_mod_p2 112770 112767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112767 112770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_112767_112770
def row_113120_113123 :
    HasPrimeWithExpOne (S_val 113120 113123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113120 113123 ∧ ¬ p ∣ (113123 - 113120) ∧
      ∃ (hNotC : ¬ p ∣ 113123) (hNotB : ¬ p ∣ 113120),
        order_of_C_B_inv_mod_p2 113123 113120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113120 113123 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_113120_113123
def row_113475_113478 :
    HasPrimeWithExpOne (S_val 113475 113478) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113475 113478 ∧ ¬ p ∣ (113478 - 113475) ∧
      ∃ (hNotC : ¬ p ∣ 113478) (hNotB : ¬ p ∣ 113475),
        order_of_C_B_inv_mod_p2 113478 113475 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113475 113478 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_113475_113478
def row_113828_113831 :
    HasPrimeWithExpOne (S_val 113828 113831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113828 113831 ∧ ¬ p ∣ (113831 - 113828) ∧
      ∃ (hNotC : ¬ p ∣ 113831) (hNotB : ¬ p ∣ 113828),
        order_of_C_B_inv_mod_p2 113831 113828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113828 113831 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_113828_113831
def row_114182_114185 :
    HasPrimeWithExpOne (S_val 114182 114185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114182 114185 ∧ ¬ p ∣ (114185 - 114182) ∧
      ∃ (hNotC : ¬ p ∣ 114185) (hNotB : ¬ p ∣ 114182),
        order_of_C_B_inv_mod_p2 114185 114182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114182 114185 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_114182_114185
def row_114538_114541 :
    HasPrimeWithExpOne (S_val 114538 114541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114538 114541 ∧ ¬ p ∣ (114541 - 114538) ∧
      ∃ (hNotC : ¬ p ∣ 114541) (hNotB : ¬ p ∣ 114538),
        order_of_C_B_inv_mod_p2 114541 114538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114538 114541 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_114538_114541
def row_114892_114895 :
    HasPrimeWithExpOne (S_val 114892 114895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114892 114895 ∧ ¬ p ∣ (114895 - 114892) ∧
      ∃ (hNotC : ¬ p ∣ 114895) (hNotB : ¬ p ∣ 114892),
        order_of_C_B_inv_mod_p2 114895 114892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114892 114895 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_114892_114895
def row_115246_115249 :
    HasPrimeWithExpOne (S_val 115246 115249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115246 115249 ∧ ¬ p ∣ (115249 - 115246) ∧
      ∃ (hNotC : ¬ p ∣ 115249) (hNotB : ¬ p ∣ 115246),
        order_of_C_B_inv_mod_p2 115249 115246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115246 115249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_115246_115249
def row_115602_115605 :
    HasPrimeWithExpOne (S_val 115602 115605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115602 115605 ∧ ¬ p ∣ (115605 - 115602) ∧
      ∃ (hNotC : ¬ p ∣ 115605) (hNotB : ¬ p ∣ 115602),
        order_of_C_B_inv_mod_p2 115605 115602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115602 115605 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_115602_115605
def row_115956_115959 :
    HasPrimeWithExpOne (S_val 115956 115959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115956 115959 ∧ ¬ p ∣ (115959 - 115956) ∧
      ∃ (hNotC : ¬ p ∣ 115959) (hNotB : ¬ p ∣ 115956),
        order_of_C_B_inv_mod_p2 115959 115956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115956 115959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_115956_115959
def row_116311_116314 :
    HasPrimeWithExpOne (S_val 116311 116314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116311 116314 ∧ ¬ p ∣ (116314 - 116311) ∧
      ∃ (hNotC : ¬ p ∣ 116314) (hNotB : ¬ p ∣ 116311),
        order_of_C_B_inv_mod_p2 116314 116311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116311 116314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_116311_116314
def row_116666_116669 :
    HasPrimeWithExpOne (S_val 116666 116669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116666 116669 ∧ ¬ p ∣ (116669 - 116666) ∧
      ∃ (hNotC : ¬ p ∣ 116669) (hNotB : ¬ p ∣ 116666),
        order_of_C_B_inv_mod_p2 116669 116666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116666 116669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_116666_116669
def row_117021_117024 :
    HasPrimeWithExpOne (S_val 117021 117024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117021 117024 ∧ ¬ p ∣ (117024 - 117021) ∧
      ∃ (hNotC : ¬ p ∣ 117024) (hNotB : ¬ p ∣ 117021),
        order_of_C_B_inv_mod_p2 117024 117021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117021 117024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_117021_117024
def row_117374_117377 :
    HasPrimeWithExpOne (S_val 117374 117377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117374 117377 ∧ ¬ p ∣ (117377 - 117374) ∧
      ∃ (hNotC : ¬ p ∣ 117377) (hNotB : ¬ p ∣ 117374),
        order_of_C_B_inv_mod_p2 117377 117374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117374 117377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_117374_117377
def row_117728_117731 :
    HasPrimeWithExpOne (S_val 117728 117731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117728 117731 ∧ ¬ p ∣ (117731 - 117728) ∧
      ∃ (hNotC : ¬ p ∣ 117731) (hNotB : ¬ p ∣ 117728),
        order_of_C_B_inv_mod_p2 117731 117728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117728 117731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_117728_117731
def row_118084_118087 :
    HasPrimeWithExpOne (S_val 118084 118087) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118084 118087 ∧ ¬ p ∣ (118087 - 118084) ∧
      ∃ (hNotC : ¬ p ∣ 118087) (hNotB : ¬ p ∣ 118084),
        order_of_C_B_inv_mod_p2 118087 118084 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118084 118087 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_118084_118087
def row_118439_118442 :
    HasPrimeWithExpOne (S_val 118439 118442) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118439 118442 ∧ ¬ p ∣ (118442 - 118439) ∧
      ∃ (hNotC : ¬ p ∣ 118442) (hNotB : ¬ p ∣ 118439),
        order_of_C_B_inv_mod_p2 118442 118439 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118439 118442 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_118439_118442
def row_118795_118798 :
    HasPrimeWithExpOne (S_val 118795 118798) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118795 118798 ∧ ¬ p ∣ (118798 - 118795) ∧
      ∃ (hNotC : ¬ p ∣ 118798) (hNotB : ¬ p ∣ 118795),
        order_of_C_B_inv_mod_p2 118798 118795 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118795 118798 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_118795_118798
def row_119148_119151 :
    HasPrimeWithExpOne (S_val 119148 119151) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119148 119151 ∧ ¬ p ∣ (119151 - 119148) ∧
      ∃ (hNotC : ¬ p ∣ 119151) (hNotB : ¬ p ∣ 119148),
        order_of_C_B_inv_mod_p2 119151 119148 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119148 119151 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_119148_119151
def row_119502_119505 :
    HasPrimeWithExpOne (S_val 119502 119505) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119502 119505 ∧ ¬ p ∣ (119505 - 119502) ∧
      ∃ (hNotC : ¬ p ∣ 119505) (hNotB : ¬ p ∣ 119502),
        order_of_C_B_inv_mod_p2 119505 119502 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119502 119505 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_119502_119505
def row_119857_119860 :
    HasPrimeWithExpOne (S_val 119857 119860) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119857 119860 ∧ ¬ p ∣ (119860 - 119857) ∧
      ∃ (hNotC : ¬ p ∣ 119860) (hNotB : ¬ p ∣ 119857),
        order_of_C_B_inv_mod_p2 119860 119857 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119857 119860 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_119857_119860
def row_120212_120215 :
    HasPrimeWithExpOne (S_val 120212 120215) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120212 120215 ∧ ¬ p ∣ (120215 - 120212) ∧
      ∃ (hNotC : ¬ p ∣ 120215) (hNotB : ¬ p ∣ 120212),
        order_of_C_B_inv_mod_p2 120215 120212 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120212 120215 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_120212_120215
def row_120566_120569 :
    HasPrimeWithExpOne (S_val 120566 120569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120566 120569 ∧ ¬ p ∣ (120569 - 120566) ∧
      ∃ (hNotC : ¬ p ∣ 120569) (hNotB : ¬ p ∣ 120566),
        order_of_C_B_inv_mod_p2 120569 120566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120566 120569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_120566_120569
def row_120922_120925 :
    HasPrimeWithExpOne (S_val 120922 120925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120922 120925 ∧ ¬ p ∣ (120925 - 120922) ∧
      ∃ (hNotC : ¬ p ∣ 120925) (hNotB : ¬ p ∣ 120922),
        order_of_C_B_inv_mod_p2 120925 120922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120922 120925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_120922_120925
def row_121274_121277 :
    HasPrimeWithExpOne (S_val 121274 121277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121274 121277 ∧ ¬ p ∣ (121277 - 121274) ∧
      ∃ (hNotC : ¬ p ∣ 121277) (hNotB : ¬ p ∣ 121274),
        order_of_C_B_inv_mod_p2 121277 121274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121274 121277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_121274_121277
def row_121628_121631 :
    HasPrimeWithExpOne (S_val 121628 121631) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121628 121631 ∧ ¬ p ∣ (121631 - 121628) ∧
      ∃ (hNotC : ¬ p ∣ 121631) (hNotB : ¬ p ∣ 121628),
        order_of_C_B_inv_mod_p2 121631 121628 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121628 121631 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_121628_121631
def row_121985_121988 :
    HasPrimeWithExpOne (S_val 121985 121988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121985 121988 ∧ ¬ p ∣ (121988 - 121985) ∧
      ∃ (hNotC : ¬ p ∣ 121988) (hNotB : ¬ p ∣ 121985),
        order_of_C_B_inv_mod_p2 121988 121985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121985 121988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_121985_121988
def row_122337_122340 :
    HasPrimeWithExpOne (S_val 122337 122340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122337 122340 ∧ ¬ p ∣ (122340 - 122337) ∧
      ∃ (hNotC : ¬ p ∣ 122340) (hNotB : ¬ p ∣ 122337),
        order_of_C_B_inv_mod_p2 122340 122337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122337 122340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_122337_122340
def row_122690_122693 :
    HasPrimeWithExpOne (S_val 122690 122693) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122690 122693 ∧ ¬ p ∣ (122693 - 122690) ∧
      ∃ (hNotC : ¬ p ∣ 122693) (hNotB : ¬ p ∣ 122690),
        order_of_C_B_inv_mod_p2 122693 122690 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122690 122693 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_122690_122693
def row_123047_123050 :
    HasPrimeWithExpOne (S_val 123047 123050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123047 123050 ∧ ¬ p ∣ (123050 - 123047) ∧
      ∃ (hNotC : ¬ p ∣ 123050) (hNotB : ¬ p ∣ 123047),
        order_of_C_B_inv_mod_p2 123050 123047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123047 123050 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_123047_123050
def row_123402_123405 :
    HasPrimeWithExpOne (S_val 123402 123405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123402 123405 ∧ ¬ p ∣ (123405 - 123402) ∧
      ∃ (hNotC : ¬ p ∣ 123405) (hNotB : ¬ p ∣ 123402),
        order_of_C_B_inv_mod_p2 123405 123402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123402 123405 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_123402_123405
def row_123756_123759 :
    HasPrimeWithExpOne (S_val 123756 123759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123756 123759 ∧ ¬ p ∣ (123759 - 123756) ∧
      ∃ (hNotC : ¬ p ∣ 123759) (hNotB : ¬ p ∣ 123756),
        order_of_C_B_inv_mod_p2 123759 123756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123756 123759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_123756_123759
def row_124112_124115 :
    HasPrimeWithExpOne (S_val 124112 124115) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124112 124115 ∧ ¬ p ∣ (124115 - 124112) ∧
      ∃ (hNotC : ¬ p ∣ 124115) (hNotB : ¬ p ∣ 124112),
        order_of_C_B_inv_mod_p2 124115 124112 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124112 124115 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_124112_124115
def row_124467_124470 :
    HasPrimeWithExpOne (S_val 124467 124470) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124467 124470 ∧ ¬ p ∣ (124470 - 124467) ∧
      ∃ (hNotC : ¬ p ∣ 124470) (hNotB : ¬ p ∣ 124467),
        order_of_C_B_inv_mod_p2 124470 124467 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124467 124470 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_124467_124470
def row_124821_124824 :
    HasPrimeWithExpOne (S_val 124821 124824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124821 124824 ∧ ¬ p ∣ (124824 - 124821) ∧
      ∃ (hNotC : ¬ p ∣ 124824) (hNotB : ¬ p ∣ 124821),
        order_of_C_B_inv_mod_p2 124824 124821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124821 124824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_124821_124824
def row_125177_125180 :
    HasPrimeWithExpOne (S_val 125177 125180) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125177 125180 ∧ ¬ p ∣ (125180 - 125177) ∧
      ∃ (hNotC : ¬ p ∣ 125180) (hNotB : ¬ p ∣ 125177),
        order_of_C_B_inv_mod_p2 125180 125177 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125177 125180 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_125177_125180
def row_125527_125530 :
    HasPrimeWithExpOne (S_val 125527 125530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125527 125530 ∧ ¬ p ∣ (125530 - 125527) ∧
      ∃ (hNotC : ¬ p ∣ 125530) (hNotB : ¬ p ∣ 125527),
        order_of_C_B_inv_mod_p2 125530 125527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125527 125530 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_125527_125530
def row_125885_125888 :
    HasPrimeWithExpOne (S_val 125885 125888) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125885 125888 ∧ ¬ p ∣ (125888 - 125885) ∧
      ∃ (hNotC : ¬ p ∣ 125888) (hNotB : ¬ p ∣ 125885),
        order_of_C_B_inv_mod_p2 125888 125885 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125885 125888 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_125885_125888
def row_126239_126242 :
    HasPrimeWithExpOne (S_val 126239 126242) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126239 126242 ∧ ¬ p ∣ (126242 - 126239) ∧
      ∃ (hNotC : ¬ p ∣ 126242) (hNotB : ¬ p ∣ 126239),
        order_of_C_B_inv_mod_p2 126242 126239 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126239 126242 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_126239_126242
def row_126596_126599 :
    HasPrimeWithExpOne (S_val 126596 126599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126596 126599 ∧ ¬ p ∣ (126599 - 126596) ∧
      ∃ (hNotC : ¬ p ∣ 126599) (hNotB : ¬ p ∣ 126596),
        order_of_C_B_inv_mod_p2 126599 126596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126596 126599 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_126596_126599
def row_126948_126951 :
    HasPrimeWithExpOne (S_val 126948 126951) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126948 126951 ∧ ¬ p ∣ (126951 - 126948) ∧
      ∃ (hNotC : ¬ p ∣ 126951) (hNotB : ¬ p ∣ 126948),
        order_of_C_B_inv_mod_p2 126951 126948 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126948 126951 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_126948_126951
def row_127303_127306 :
    HasPrimeWithExpOne (S_val 127303 127306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127303 127306 ∧ ¬ p ∣ (127306 - 127303) ∧
      ∃ (hNotC : ¬ p ∣ 127306) (hNotB : ¬ p ∣ 127303),
        order_of_C_B_inv_mod_p2 127306 127303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127303 127306 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_127303_127306
def row_127658_127661 :
    HasPrimeWithExpOne (S_val 127658 127661) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127658 127661 ∧ ¬ p ∣ (127661 - 127658) ∧
      ∃ (hNotC : ¬ p ∣ 127661) (hNotB : ¬ p ∣ 127658),
        order_of_C_B_inv_mod_p2 127661 127658 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127658 127661 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_127658_127661
def row_128013_128016 :
    HasPrimeWithExpOne (S_val 128013 128016) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128013 128016 ∧ ¬ p ∣ (128016 - 128013) ∧
      ∃ (hNotC : ¬ p ∣ 128016) (hNotB : ¬ p ∣ 128013),
        order_of_C_B_inv_mod_p2 128016 128013 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128013 128016 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_128013_128016
def row_128368_128371 :
    HasPrimeWithExpOne (S_val 128368 128371) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128368 128371 ∧ ¬ p ∣ (128371 - 128368) ∧
      ∃ (hNotC : ¬ p ∣ 128371) (hNotB : ¬ p ∣ 128368),
        order_of_C_B_inv_mod_p2 128371 128368 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128368 128371 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_128368_128371
def row_128721_128724 :
    HasPrimeWithExpOne (S_val 128721 128724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128721 128724 ∧ ¬ p ∣ (128724 - 128721) ∧
      ∃ (hNotC : ¬ p ∣ 128724) (hNotB : ¬ p ∣ 128721),
        order_of_C_B_inv_mod_p2 128724 128721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128721 128724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_128721_128724
def row_129075_129078 :
    HasPrimeWithExpOne (S_val 129075 129078) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129075 129078 ∧ ¬ p ∣ (129078 - 129075) ∧
      ∃ (hNotC : ¬ p ∣ 129078) (hNotB : ¬ p ∣ 129075),
        order_of_C_B_inv_mod_p2 129078 129075 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129075 129078 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_129075_129078
def row_129431_129434 :
    HasPrimeWithExpOne (S_val 129431 129434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129431 129434 ∧ ¬ p ∣ (129434 - 129431) ∧
      ∃ (hNotC : ¬ p ∣ 129434) (hNotB : ¬ p ∣ 129431),
        order_of_C_B_inv_mod_p2 129434 129431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129431 129434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_129431_129434
def row_129786_129789 :
    HasPrimeWithExpOne (S_val 129786 129789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129786 129789 ∧ ¬ p ∣ (129789 - 129786) ∧
      ∃ (hNotC : ¬ p ∣ 129789) (hNotB : ¬ p ∣ 129786),
        order_of_C_B_inv_mod_p2 129789 129786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129786 129789 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_129786_129789
def row_130141_130144 :
    HasPrimeWithExpOne (S_val 130141 130144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130141 130144 ∧ ¬ p ∣ (130144 - 130141) ∧
      ∃ (hNotC : ¬ p ∣ 130144) (hNotB : ¬ p ∣ 130141),
        order_of_C_B_inv_mod_p2 130144 130141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130141 130144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_130141_130144
def row_130496_130499 :
    HasPrimeWithExpOne (S_val 130496 130499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130496 130499 ∧ ¬ p ∣ (130499 - 130496) ∧
      ∃ (hNotC : ¬ p ∣ 130499) (hNotB : ¬ p ∣ 130496),
        order_of_C_B_inv_mod_p2 130499 130496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130496 130499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_130496_130499
def row_130849_130852 :
    HasPrimeWithExpOne (S_val 130849 130852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130849 130852 ∧ ¬ p ∣ (130852 - 130849) ∧
      ∃ (hNotC : ¬ p ∣ 130852) (hNotB : ¬ p ∣ 130849),
        order_of_C_B_inv_mod_p2 130852 130849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130849 130852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_130849_130852
def row_131204_131207 :
    HasPrimeWithExpOne (S_val 131204 131207) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131204 131207 ∧ ¬ p ∣ (131207 - 131204) ∧
      ∃ (hNotC : ¬ p ∣ 131207) (hNotB : ¬ p ∣ 131204),
        order_of_C_B_inv_mod_p2 131207 131204 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131204 131207 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_131204_131207
def row_131559_131562 :
    HasPrimeWithExpOne (S_val 131559 131562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131559 131562 ∧ ¬ p ∣ (131562 - 131559) ∧
      ∃ (hNotC : ¬ p ∣ 131562) (hNotB : ¬ p ∣ 131559),
        order_of_C_B_inv_mod_p2 131562 131559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131559 131562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_131559_131562
def row_131913_131916 :
    HasPrimeWithExpOne (S_val 131913 131916) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131913 131916 ∧ ¬ p ∣ (131916 - 131913) ∧
      ∃ (hNotC : ¬ p ∣ 131916) (hNotB : ¬ p ∣ 131913),
        order_of_C_B_inv_mod_p2 131916 131913 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131913 131916 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_131913_131916
def row_132269_132272 :
    HasPrimeWithExpOne (S_val 132269 132272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132269 132272 ∧ ¬ p ∣ (132272 - 132269) ∧
      ∃ (hNotC : ¬ p ∣ 132272) (hNotB : ¬ p ∣ 132269),
        order_of_C_B_inv_mod_p2 132272 132269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132269 132272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_132269_132272
def row_132624_132627 :
    HasPrimeWithExpOne (S_val 132624 132627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132624 132627 ∧ ¬ p ∣ (132627 - 132624) ∧
      ∃ (hNotC : ¬ p ∣ 132627) (hNotB : ¬ p ∣ 132624),
        order_of_C_B_inv_mod_p2 132627 132624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132624 132627 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_132624_132627
def row_132979_132982 :
    HasPrimeWithExpOne (S_val 132979 132982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132979 132982 ∧ ¬ p ∣ (132982 - 132979) ∧
      ∃ (hNotC : ¬ p ∣ 132982) (hNotB : ¬ p ∣ 132979),
        order_of_C_B_inv_mod_p2 132982 132979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132979 132982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_132979_132982
def row_133332_133335 :
    HasPrimeWithExpOne (S_val 133332 133335) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133332 133335 ∧ ¬ p ∣ (133335 - 133332) ∧
      ∃ (hNotC : ¬ p ∣ 133335) (hNotB : ¬ p ∣ 133332),
        order_of_C_B_inv_mod_p2 133335 133332 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133332 133335 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_133332_133335
def row_133686_133689 :
    HasPrimeWithExpOne (S_val 133686 133689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133686 133689 ∧ ¬ p ∣ (133689 - 133686) ∧
      ∃ (hNotC : ¬ p ∣ 133689) (hNotB : ¬ p ∣ 133686),
        order_of_C_B_inv_mod_p2 133689 133686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133686 133689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_133686_133689
def row_134041_134044 :
    HasPrimeWithExpOne (S_val 134041 134044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134041 134044 ∧ ¬ p ∣ (134044 - 134041) ∧
      ∃ (hNotC : ¬ p ∣ 134044) (hNotB : ¬ p ∣ 134041),
        order_of_C_B_inv_mod_p2 134044 134041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134041 134044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_134041_134044
def row_134395_134398 :
    HasPrimeWithExpOne (S_val 134395 134398) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134395 134398 ∧ ¬ p ∣ (134398 - 134395) ∧
      ∃ (hNotC : ¬ p ∣ 134398) (hNotB : ¬ p ∣ 134395),
        order_of_C_B_inv_mod_p2 134398 134395 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134395 134398 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_134395_134398
def row_134748_134751 :
    HasPrimeWithExpOne (S_val 134748 134751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134748 134751 ∧ ¬ p ∣ (134751 - 134748) ∧
      ∃ (hNotC : ¬ p ∣ 134751) (hNotB : ¬ p ∣ 134748),
        order_of_C_B_inv_mod_p2 134751 134748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134748 134751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_134748_134751
def row_135104_135107 :
    HasPrimeWithExpOne (S_val 135104 135107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135104 135107 ∧ ¬ p ∣ (135107 - 135104) ∧
      ∃ (hNotC : ¬ p ∣ 135107) (hNotB : ¬ p ∣ 135104),
        order_of_C_B_inv_mod_p2 135107 135104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135104 135107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_135104_135107
def row_135459_135462 :
    HasPrimeWithExpOne (S_val 135459 135462) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135459 135462 ∧ ¬ p ∣ (135462 - 135459) ∧
      ∃ (hNotC : ¬ p ∣ 135462) (hNotB : ¬ p ∣ 135459),
        order_of_C_B_inv_mod_p2 135462 135459 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135459 135462 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_135459_135462
def row_135814_135817 :
    HasPrimeWithExpOne (S_val 135814 135817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135814 135817 ∧ ¬ p ∣ (135817 - 135814) ∧
      ∃ (hNotC : ¬ p ∣ 135817) (hNotB : ¬ p ∣ 135814),
        order_of_C_B_inv_mod_p2 135817 135814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135814 135817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_135814_135817
def row_136169_136172 :
    HasPrimeWithExpOne (S_val 136169 136172) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136169 136172 ∧ ¬ p ∣ (136172 - 136169) ∧
      ∃ (hNotC : ¬ p ∣ 136172) (hNotB : ¬ p ∣ 136169),
        order_of_C_B_inv_mod_p2 136172 136169 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136169 136172 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_136169_136172
def row_136524_136527 :
    HasPrimeWithExpOne (S_val 136524 136527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136524 136527 ∧ ¬ p ∣ (136527 - 136524) ∧
      ∃ (hNotC : ¬ p ∣ 136527) (hNotB : ¬ p ∣ 136524),
        order_of_C_B_inv_mod_p2 136527 136524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136524 136527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_136524_136527
def row_136878_136881 :
    HasPrimeWithExpOne (S_val 136878 136881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136878 136881 ∧ ¬ p ∣ (136881 - 136878) ∧
      ∃ (hNotC : ¬ p ∣ 136881) (hNotB : ¬ p ∣ 136878),
        order_of_C_B_inv_mod_p2 136881 136878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136878 136881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_136878_136881
def row_137232_137235 :
    HasPrimeWithExpOne (S_val 137232 137235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137232 137235 ∧ ¬ p ∣ (137235 - 137232) ∧
      ∃ (hNotC : ¬ p ∣ 137235) (hNotB : ¬ p ∣ 137232),
        order_of_C_B_inv_mod_p2 137235 137232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137232 137235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_137232_137235
def row_137588_137591 :
    HasPrimeWithExpOne (S_val 137588 137591) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137588 137591 ∧ ¬ p ∣ (137591 - 137588) ∧
      ∃ (hNotC : ¬ p ∣ 137591) (hNotB : ¬ p ∣ 137588),
        order_of_C_B_inv_mod_p2 137591 137588 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137588 137591 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_137588_137591
def row_137942_137945 :
    HasPrimeWithExpOne (S_val 137942 137945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137942 137945 ∧ ¬ p ∣ (137945 - 137942) ∧
      ∃ (hNotC : ¬ p ∣ 137945) (hNotB : ¬ p ∣ 137942),
        order_of_C_B_inv_mod_p2 137945 137942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137942 137945 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_137942_137945
def row_138295_138298 :
    HasPrimeWithExpOne (S_val 138295 138298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138295 138298 ∧ ¬ p ∣ (138298 - 138295) ∧
      ∃ (hNotC : ¬ p ∣ 138298) (hNotB : ¬ p ∣ 138295),
        order_of_C_B_inv_mod_p2 138298 138295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138295 138298 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_138295_138298
def row_138651_138654 :
    HasPrimeWithExpOne (S_val 138651 138654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138651 138654 ∧ ¬ p ∣ (138654 - 138651) ∧
      ∃ (hNotC : ¬ p ∣ 138654) (hNotB : ¬ p ∣ 138651),
        order_of_C_B_inv_mod_p2 138654 138651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138651 138654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_138651_138654
def row_139005_139008 :
    HasPrimeWithExpOne (S_val 139005 139008) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139005 139008 ∧ ¬ p ∣ (139008 - 139005) ∧
      ∃ (hNotC : ¬ p ∣ 139008) (hNotB : ¬ p ∣ 139005),
        order_of_C_B_inv_mod_p2 139008 139005 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139005 139008 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_139005_139008
def row_139362_139365 :
    HasPrimeWithExpOne (S_val 139362 139365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139362 139365 ∧ ¬ p ∣ (139365 - 139362) ∧
      ∃ (hNotC : ¬ p ∣ 139365) (hNotB : ¬ p ∣ 139362),
        order_of_C_B_inv_mod_p2 139365 139362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139362 139365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_139362_139365
def row_139714_139717 :
    HasPrimeWithExpOne (S_val 139714 139717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139714 139717 ∧ ¬ p ∣ (139717 - 139714) ∧
      ∃ (hNotC : ¬ p ∣ 139717) (hNotB : ¬ p ∣ 139714),
        order_of_C_B_inv_mod_p2 139717 139714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139714 139717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_139714_139717
def row_140070_140073 :
    HasPrimeWithExpOne (S_val 140070 140073) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140070 140073 ∧ ¬ p ∣ (140073 - 140070) ∧
      ∃ (hNotC : ¬ p ∣ 140073) (hNotB : ¬ p ∣ 140070),
        order_of_C_B_inv_mod_p2 140073 140070 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140070 140073 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_140070_140073
def row_140423_140426 :
    HasPrimeWithExpOne (S_val 140423 140426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140423 140426 ∧ ¬ p ∣ (140426 - 140423) ∧
      ∃ (hNotC : ¬ p ∣ 140426) (hNotB : ¬ p ∣ 140423),
        order_of_C_B_inv_mod_p2 140426 140423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140423 140426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_140423_140426
def row_140778_140781 :
    HasPrimeWithExpOne (S_val 140778 140781) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140778 140781 ∧ ¬ p ∣ (140781 - 140778) ∧
      ∃ (hNotC : ¬ p ∣ 140781) (hNotB : ¬ p ∣ 140778),
        order_of_C_B_inv_mod_p2 140781 140778 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140778 140781 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_140778_140781
def row_141132_141135 :
    HasPrimeWithExpOne (S_val 141132 141135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141132 141135 ∧ ¬ p ∣ (141135 - 141132) ∧
      ∃ (hNotC : ¬ p ∣ 141135) (hNotB : ¬ p ∣ 141132),
        order_of_C_B_inv_mod_p2 141135 141132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141132 141135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_141132_141135
def row_141488_141491 :
    HasPrimeWithExpOne (S_val 141488 141491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141488 141491 ∧ ¬ p ∣ (141491 - 141488) ∧
      ∃ (hNotC : ¬ p ∣ 141491) (hNotB : ¬ p ∣ 141488),
        order_of_C_B_inv_mod_p2 141491 141488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141488 141491 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_141488_141491
def row_141841_141844 :
    HasPrimeWithExpOne (S_val 141841 141844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141841 141844 ∧ ¬ p ∣ (141844 - 141841) ∧
      ∃ (hNotC : ¬ p ∣ 141844) (hNotB : ¬ p ∣ 141841),
        order_of_C_B_inv_mod_p2 141844 141841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141841 141844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_141841_141844
def row_142195_142198 :
    HasPrimeWithExpOne (S_val 142195 142198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142195 142198 ∧ ¬ p ∣ (142198 - 142195) ∧
      ∃ (hNotC : ¬ p ∣ 142198) (hNotB : ¬ p ∣ 142195),
        order_of_C_B_inv_mod_p2 142198 142195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142195 142198 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_142195_142198
def row_142550_142553 :
    HasPrimeWithExpOne (S_val 142550 142553) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142550 142553 ∧ ¬ p ∣ (142553 - 142550) ∧
      ∃ (hNotC : ¬ p ∣ 142553) (hNotB : ¬ p ∣ 142550),
        order_of_C_B_inv_mod_p2 142553 142550 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142550 142553 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_142550_142553
def row_142906_142909 :
    HasPrimeWithExpOne (S_val 142906 142909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142906 142909 ∧ ¬ p ∣ (142909 - 142906) ∧
      ∃ (hNotC : ¬ p ∣ 142909) (hNotB : ¬ p ∣ 142906),
        order_of_C_B_inv_mod_p2 142909 142906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142906 142909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_142906_142909
def row_143261_143264 :
    HasPrimeWithExpOne (S_val 143261 143264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143261 143264 ∧ ¬ p ∣ (143264 - 143261) ∧
      ∃ (hNotC : ¬ p ∣ 143264) (hNotB : ¬ p ∣ 143261),
        order_of_C_B_inv_mod_p2 143264 143261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143261 143264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_143261_143264
def row_143614_143617 :
    HasPrimeWithExpOne (S_val 143614 143617) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143614 143617 ∧ ¬ p ∣ (143617 - 143614) ∧
      ∃ (hNotC : ¬ p ∣ 143617) (hNotB : ¬ p ∣ 143614),
        order_of_C_B_inv_mod_p2 143617 143614 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143614 143617 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_143614_143617
def row_143967_143970 :
    HasPrimeWithExpOne (S_val 143967 143970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143967 143970 ∧ ¬ p ∣ (143970 - 143967) ∧
      ∃ (hNotC : ¬ p ∣ 143970) (hNotB : ¬ p ∣ 143967),
        order_of_C_B_inv_mod_p2 143970 143967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143967 143970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_143967_143970
def row_144324_144327 :
    HasPrimeWithExpOne (S_val 144324 144327) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144324 144327 ∧ ¬ p ∣ (144327 - 144324) ∧
      ∃ (hNotC : ¬ p ∣ 144327) (hNotB : ¬ p ∣ 144324),
        order_of_C_B_inv_mod_p2 144327 144324 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144324 144327 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_144324_144327
def row_144679_144682 :
    HasPrimeWithExpOne (S_val 144679 144682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144679 144682 ∧ ¬ p ∣ (144682 - 144679) ∧
      ∃ (hNotC : ¬ p ∣ 144682) (hNotB : ¬ p ∣ 144679),
        order_of_C_B_inv_mod_p2 144682 144679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144679 144682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_144679_144682
def row_145032_145035 :
    HasPrimeWithExpOne (S_val 145032 145035) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145032 145035 ∧ ¬ p ∣ (145035 - 145032) ∧
      ∃ (hNotC : ¬ p ∣ 145035) (hNotB : ¬ p ∣ 145032),
        order_of_C_B_inv_mod_p2 145035 145032 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145032 145035 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_145032_145035
def row_145389_145392 :
    HasPrimeWithExpOne (S_val 145389 145392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145389 145392 ∧ ¬ p ∣ (145392 - 145389) ∧
      ∃ (hNotC : ¬ p ∣ 145392) (hNotB : ¬ p ∣ 145389),
        order_of_C_B_inv_mod_p2 145392 145389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145389 145392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_145389_145392
def row_145742_145745 :
    HasPrimeWithExpOne (S_val 145742 145745) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145742 145745 ∧ ¬ p ∣ (145745 - 145742) ∧
      ∃ (hNotC : ¬ p ∣ 145745) (hNotB : ¬ p ∣ 145742),
        order_of_C_B_inv_mod_p2 145745 145742 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145742 145745 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_145742_145745
def row_146100_146103 :
    HasPrimeWithExpOne (S_val 146100 146103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146100 146103 ∧ ¬ p ∣ (146103 - 146100) ∧
      ∃ (hNotC : ¬ p ∣ 146103) (hNotB : ¬ p ∣ 146100),
        order_of_C_B_inv_mod_p2 146103 146100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146100 146103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_146100_146103
def row_146452_146455 :
    HasPrimeWithExpOne (S_val 146452 146455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146452 146455 ∧ ¬ p ∣ (146455 - 146452) ∧
      ∃ (hNotC : ¬ p ∣ 146455) (hNotB : ¬ p ∣ 146452),
        order_of_C_B_inv_mod_p2 146455 146452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146452 146455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_146452_146455
def row_146805_146808 :
    HasPrimeWithExpOne (S_val 146805 146808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146805 146808 ∧ ¬ p ∣ (146808 - 146805) ∧
      ∃ (hNotC : ¬ p ∣ 146808) (hNotB : ¬ p ∣ 146805),
        order_of_C_B_inv_mod_p2 146808 146805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146805 146808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_146805_146808
def row_147161_147164 :
    HasPrimeWithExpOne (S_val 147161 147164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147161 147164 ∧ ¬ p ∣ (147164 - 147161) ∧
      ∃ (hNotC : ¬ p ∣ 147164) (hNotB : ¬ p ∣ 147161),
        order_of_C_B_inv_mod_p2 147164 147161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147161 147164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_147161_147164
def row_147515_147518 :
    HasPrimeWithExpOne (S_val 147515 147518) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147515 147518 ∧ ¬ p ∣ (147518 - 147515) ∧
      ∃ (hNotC : ¬ p ∣ 147518) (hNotB : ¬ p ∣ 147515),
        order_of_C_B_inv_mod_p2 147518 147515 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147515 147518 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_147515_147518
def row_147870_147873 :
    HasPrimeWithExpOne (S_val 147870 147873) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147870 147873 ∧ ¬ p ∣ (147873 - 147870) ∧
      ∃ (hNotC : ¬ p ∣ 147873) (hNotB : ¬ p ∣ 147870),
        order_of_C_B_inv_mod_p2 147873 147870 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147870 147873 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_147870_147873
def row_148225_148228 :
    HasPrimeWithExpOne (S_val 148225 148228) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148225 148228 ∧ ¬ p ∣ (148228 - 148225) ∧
      ∃ (hNotC : ¬ p ∣ 148228) (hNotB : ¬ p ∣ 148225),
        order_of_C_B_inv_mod_p2 148228 148225 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148225 148228 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_148225_148228
def row_148578_148581 :
    HasPrimeWithExpOne (S_val 148578 148581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148578 148581 ∧ ¬ p ∣ (148581 - 148578) ∧
      ∃ (hNotC : ¬ p ∣ 148581) (hNotB : ¬ p ∣ 148578),
        order_of_C_B_inv_mod_p2 148581 148578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148578 148581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_148578_148581
def row_148934_148937 :
    HasPrimeWithExpOne (S_val 148934 148937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148934 148937 ∧ ¬ p ∣ (148937 - 148934) ∧
      ∃ (hNotC : ¬ p ∣ 148937) (hNotB : ¬ p ∣ 148934),
        order_of_C_B_inv_mod_p2 148937 148934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148934 148937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_148934_148937
def row_149288_149291 :
    HasPrimeWithExpOne (S_val 149288 149291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149288 149291 ∧ ¬ p ∣ (149291 - 149288) ∧
      ∃ (hNotC : ¬ p ∣ 149291) (hNotB : ¬ p ∣ 149288),
        order_of_C_B_inv_mod_p2 149291 149288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149288 149291 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_149288_149291
def row_149644_149647 :
    HasPrimeWithExpOne (S_val 149644 149647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149644 149647 ∧ ¬ p ∣ (149647 - 149644) ∧
      ∃ (hNotC : ¬ p ∣ 149647) (hNotB : ¬ p ∣ 149644),
        order_of_C_B_inv_mod_p2 149647 149644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149644 149647 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_149644_149647
def row_149998_150001 :
    HasPrimeWithExpOne (S_val 149998 150001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149998 150001 ∧ ¬ p ∣ (150001 - 149998) ∧
      ∃ (hNotC : ¬ p ∣ 150001) (hNotB : ¬ p ∣ 149998),
        order_of_C_B_inv_mod_p2 150001 149998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149998 150001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_149998_150001
def row_150352_150355 :
    HasPrimeWithExpOne (S_val 150352 150355) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150352 150355 ∧ ¬ p ∣ (150355 - 150352) ∧
      ∃ (hNotC : ¬ p ∣ 150355) (hNotB : ¬ p ∣ 150352),
        order_of_C_B_inv_mod_p2 150355 150352 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150352 150355 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_150352_150355
def row_150706_150709 :
    HasPrimeWithExpOne (S_val 150706 150709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150706 150709 ∧ ¬ p ∣ (150709 - 150706) ∧
      ∃ (hNotC : ¬ p ∣ 150709) (hNotB : ¬ p ∣ 150706),
        order_of_C_B_inv_mod_p2 150709 150706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150706 150709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_150706_150709
def row_151061_151064 :
    HasPrimeWithExpOne (S_val 151061 151064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151061 151064 ∧ ¬ p ∣ (151064 - 151061) ∧
      ∃ (hNotC : ¬ p ∣ 151064) (hNotB : ¬ p ∣ 151061),
        order_of_C_B_inv_mod_p2 151064 151061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151061 151064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_151061_151064
def row_151417_151420 :
    HasPrimeWithExpOne (S_val 151417 151420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151417 151420 ∧ ¬ p ∣ (151420 - 151417) ∧
      ∃ (hNotC : ¬ p ∣ 151420) (hNotB : ¬ p ∣ 151417),
        order_of_C_B_inv_mod_p2 151420 151417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151417 151420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_151417_151420
def row_151771_151774 :
    HasPrimeWithExpOne (S_val 151771 151774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151771 151774 ∧ ¬ p ∣ (151774 - 151771) ∧
      ∃ (hNotC : ¬ p ∣ 151774) (hNotB : ¬ p ∣ 151771),
        order_of_C_B_inv_mod_p2 151774 151771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151771 151774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_151771_151774
def row_152124_152127 :
    HasPrimeWithExpOne (S_val 152124 152127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152124 152127 ∧ ¬ p ∣ (152127 - 152124) ∧
      ∃ (hNotC : ¬ p ∣ 152127) (hNotB : ¬ p ∣ 152124),
        order_of_C_B_inv_mod_p2 152127 152124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152124 152127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_152124_152127
def row_152480_152483 :
    HasPrimeWithExpOne (S_val 152480 152483) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152480 152483 ∧ ¬ p ∣ (152483 - 152480) ∧
      ∃ (hNotC : ¬ p ∣ 152483) (hNotB : ¬ p ∣ 152480),
        order_of_C_B_inv_mod_p2 152483 152480 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152480 152483 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_152480_152483
def row_152836_152839 :
    HasPrimeWithExpOne (S_val 152836 152839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152836 152839 ∧ ¬ p ∣ (152839 - 152836) ∧
      ∃ (hNotC : ¬ p ∣ 152839) (hNotB : ¬ p ∣ 152836),
        order_of_C_B_inv_mod_p2 152839 152836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152836 152839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_152836_152839
def row_153188_153191 :
    HasPrimeWithExpOne (S_val 153188 153191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153188 153191 ∧ ¬ p ∣ (153191 - 153188) ∧
      ∃ (hNotC : ¬ p ∣ 153191) (hNotB : ¬ p ∣ 153188),
        order_of_C_B_inv_mod_p2 153191 153188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153188 153191 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_153188_153191
def row_153542_153545 :
    HasPrimeWithExpOne (S_val 153542 153545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153542 153545 ∧ ¬ p ∣ (153545 - 153542) ∧
      ∃ (hNotC : ¬ p ∣ 153545) (hNotB : ¬ p ∣ 153542),
        order_of_C_B_inv_mod_p2 153545 153542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153542 153545 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_153542_153545
def row_153899_153902 :
    HasPrimeWithExpOne (S_val 153899 153902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153899 153902 ∧ ¬ p ∣ (153902 - 153899) ∧
      ∃ (hNotC : ¬ p ∣ 153902) (hNotB : ¬ p ∣ 153899),
        order_of_C_B_inv_mod_p2 153902 153899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153899 153902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_153899_153902
def row_154255_154258 :
    HasPrimeWithExpOne (S_val 154255 154258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154255 154258 ∧ ¬ p ∣ (154258 - 154255) ∧
      ∃ (hNotC : ¬ p ∣ 154258) (hNotB : ¬ p ∣ 154255),
        order_of_C_B_inv_mod_p2 154258 154255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154255 154258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_154255_154258
def row_154607_154610 :
    HasPrimeWithExpOne (S_val 154607 154610) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154607 154610 ∧ ¬ p ∣ (154610 - 154607) ∧
      ∃ (hNotC : ¬ p ∣ 154610) (hNotB : ¬ p ∣ 154607),
        order_of_C_B_inv_mod_p2 154610 154607 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154607 154610 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_154607_154610
def row_154963_154966 :
    HasPrimeWithExpOne (S_val 154963 154966) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154963 154966 ∧ ¬ p ∣ (154966 - 154963) ∧
      ∃ (hNotC : ¬ p ∣ 154966) (hNotB : ¬ p ∣ 154963),
        order_of_C_B_inv_mod_p2 154966 154963 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154963 154966 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_154963_154966
def row_155320_155323 :
    HasPrimeWithExpOne (S_val 155320 155323) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155320 155323 ∧ ¬ p ∣ (155323 - 155320) ∧
      ∃ (hNotC : ¬ p ∣ 155323) (hNotB : ¬ p ∣ 155320),
        order_of_C_B_inv_mod_p2 155323 155320 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155320 155323 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_155320_155323
def row_155671_155674 :
    HasPrimeWithExpOne (S_val 155671 155674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155671 155674 ∧ ¬ p ∣ (155674 - 155671) ∧
      ∃ (hNotC : ¬ p ∣ 155674) (hNotB : ¬ p ∣ 155671),
        order_of_C_B_inv_mod_p2 155674 155671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155671 155674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_155671_155674
def row_156026_156029 :
    HasPrimeWithExpOne (S_val 156026 156029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156026 156029 ∧ ¬ p ∣ (156029 - 156026) ∧
      ∃ (hNotC : ¬ p ∣ 156029) (hNotB : ¬ p ∣ 156026),
        order_of_C_B_inv_mod_p2 156029 156026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156026 156029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_156026_156029
def row_156381_156384 :
    HasPrimeWithExpOne (S_val 156381 156384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156381 156384 ∧ ¬ p ∣ (156384 - 156381) ∧
      ∃ (hNotC : ¬ p ∣ 156384) (hNotB : ¬ p ∣ 156381),
        order_of_C_B_inv_mod_p2 156384 156381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156381 156384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_156381_156384
def row_156736_156739 :
    HasPrimeWithExpOne (S_val 156736 156739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156736 156739 ∧ ¬ p ∣ (156739 - 156736) ∧
      ∃ (hNotC : ¬ p ∣ 156739) (hNotB : ¬ p ∣ 156736),
        order_of_C_B_inv_mod_p2 156739 156736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156736 156739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_156736_156739
def row_157090_157093 :
    HasPrimeWithExpOne (S_val 157090 157093) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157090 157093 ∧ ¬ p ∣ (157093 - 157090) ∧
      ∃ (hNotC : ¬ p ∣ 157093) (hNotB : ¬ p ∣ 157090),
        order_of_C_B_inv_mod_p2 157093 157090 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157090 157093 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_157090_157093
def row_157442_157445 :
    HasPrimeWithExpOne (S_val 157442 157445) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157442 157445 ∧ ¬ p ∣ (157445 - 157442) ∧
      ∃ (hNotC : ¬ p ∣ 157445) (hNotB : ¬ p ∣ 157442),
        order_of_C_B_inv_mod_p2 157445 157442 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157442 157445 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_157442_157445
def row_157799_157802 :
    HasPrimeWithExpOne (S_val 157799 157802) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157799 157802 ∧ ¬ p ∣ (157802 - 157799) ∧
      ∃ (hNotC : ¬ p ∣ 157802) (hNotB : ¬ p ∣ 157799),
        order_of_C_B_inv_mod_p2 157802 157799 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157799 157802 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_157799_157802
def row_158155_158158 :
    HasPrimeWithExpOne (S_val 158155 158158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158155 158158 ∧ ¬ p ∣ (158158 - 158155) ∧
      ∃ (hNotC : ¬ p ∣ 158158) (hNotB : ¬ p ∣ 158155),
        order_of_C_B_inv_mod_p2 158158 158155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158155 158158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_158155_158158
def row_158508_158511 :
    HasPrimeWithExpOne (S_val 158508 158511) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158508 158511 ∧ ¬ p ∣ (158511 - 158508) ∧
      ∃ (hNotC : ¬ p ∣ 158511) (hNotB : ¬ p ∣ 158508),
        order_of_C_B_inv_mod_p2 158511 158508 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158508 158511 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_158508_158511
def row_158862_158865 :
    HasPrimeWithExpOne (S_val 158862 158865) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158862 158865 ∧ ¬ p ∣ (158865 - 158862) ∧
      ∃ (hNotC : ¬ p ∣ 158865) (hNotB : ¬ p ∣ 158862),
        order_of_C_B_inv_mod_p2 158865 158862 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158862 158865 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_158862_158865
def row_159217_159220 :
    HasPrimeWithExpOne (S_val 159217 159220) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159217 159220 ∧ ¬ p ∣ (159220 - 159217) ∧
      ∃ (hNotC : ¬ p ∣ 159220) (hNotB : ¬ p ∣ 159217),
        order_of_C_B_inv_mod_p2 159220 159217 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159217 159220 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_159217_159220
def row_159573_159576 :
    HasPrimeWithExpOne (S_val 159573 159576) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159573 159576 ∧ ¬ p ∣ (159576 - 159573) ∧
      ∃ (hNotC : ¬ p ∣ 159576) (hNotB : ¬ p ∣ 159573),
        order_of_C_B_inv_mod_p2 159576 159573 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159573 159576 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_159573_159576
def row_159926_159929 :
    HasPrimeWithExpOne (S_val 159926 159929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159926 159929 ∧ ¬ p ∣ (159929 - 159926) ∧
      ∃ (hNotC : ¬ p ∣ 159929) (hNotB : ¬ p ∣ 159926),
        order_of_C_B_inv_mod_p2 159929 159926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159926 159929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_159926_159929
def row_160281_160284 :
    HasPrimeWithExpOne (S_val 160281 160284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160281 160284 ∧ ¬ p ∣ (160284 - 160281) ∧
      ∃ (hNotC : ¬ p ∣ 160284) (hNotB : ¬ p ∣ 160281),
        order_of_C_B_inv_mod_p2 160284 160281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160281 160284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_160281_160284
def row_160635_160638 :
    HasPrimeWithExpOne (S_val 160635 160638) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160635 160638 ∧ ¬ p ∣ (160638 - 160635) ∧
      ∃ (hNotC : ¬ p ∣ 160638) (hNotB : ¬ p ∣ 160635),
        order_of_C_B_inv_mod_p2 160638 160635 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160635 160638 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_160635_160638
def row_160988_160991 :
    HasPrimeWithExpOne (S_val 160988 160991) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160988 160991 ∧ ¬ p ∣ (160991 - 160988) ∧
      ∃ (hNotC : ¬ p ∣ 160991) (hNotB : ¬ p ∣ 160988),
        order_of_C_B_inv_mod_p2 160991 160988 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160988 160991 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_160988_160991
def row_161345_161348 :
    HasPrimeWithExpOne (S_val 161345 161348) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161345 161348 ∧ ¬ p ∣ (161348 - 161345) ∧
      ∃ (hNotC : ¬ p ∣ 161348) (hNotB : ¬ p ∣ 161345),
        order_of_C_B_inv_mod_p2 161348 161345 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161345 161348 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_161345_161348
def row_161700_161703 :
    HasPrimeWithExpOne (S_val 161700 161703) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161700 161703 ∧ ¬ p ∣ (161703 - 161700) ∧
      ∃ (hNotC : ¬ p ∣ 161703) (hNotB : ¬ p ∣ 161700),
        order_of_C_B_inv_mod_p2 161703 161700 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161700 161703 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_161700_161703
def row_162054_162057 :
    HasPrimeWithExpOne (S_val 162054 162057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162054 162057 ∧ ¬ p ∣ (162057 - 162054) ∧
      ∃ (hNotC : ¬ p ∣ 162057) (hNotB : ¬ p ∣ 162054),
        order_of_C_B_inv_mod_p2 162057 162054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162054 162057 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_162054_162057
def row_162408_162411 :
    HasPrimeWithExpOne (S_val 162408 162411) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162408 162411 ∧ ¬ p ∣ (162411 - 162408) ∧
      ∃ (hNotC : ¬ p ∣ 162411) (hNotB : ¬ p ∣ 162408),
        order_of_C_B_inv_mod_p2 162411 162408 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162408 162411 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_162408_162411
def row_162763_162766 :
    HasPrimeWithExpOne (S_val 162763 162766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162763 162766 ∧ ¬ p ∣ (162766 - 162763) ∧
      ∃ (hNotC : ¬ p ∣ 162766) (hNotB : ¬ p ∣ 162763),
        order_of_C_B_inv_mod_p2 162766 162763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162763 162766 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_162763_162766
def row_163118_163121 :
    HasPrimeWithExpOne (S_val 163118 163121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163118 163121 ∧ ¬ p ∣ (163121 - 163118) ∧
      ∃ (hNotC : ¬ p ∣ 163121) (hNotB : ¬ p ∣ 163118),
        order_of_C_B_inv_mod_p2 163121 163118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163118 163121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_163118_163121
def row_163472_163475 :
    HasPrimeWithExpOne (S_val 163472 163475) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163472 163475 ∧ ¬ p ∣ (163475 - 163472) ∧
      ∃ (hNotC : ¬ p ∣ 163475) (hNotB : ¬ p ∣ 163472),
        order_of_C_B_inv_mod_p2 163475 163472 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163472 163475 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_163472_163475
def row_163827_163830 :
    HasPrimeWithExpOne (S_val 163827 163830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163827 163830 ∧ ¬ p ∣ (163830 - 163827) ∧
      ∃ (hNotC : ¬ p ∣ 163830) (hNotB : ¬ p ∣ 163827),
        order_of_C_B_inv_mod_p2 163830 163827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163827 163830 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_163827_163830
def row_164181_164184 :
    HasPrimeWithExpOne (S_val 164181 164184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164181 164184 ∧ ¬ p ∣ (164184 - 164181) ∧
      ∃ (hNotC : ¬ p ∣ 164184) (hNotB : ¬ p ∣ 164181),
        order_of_C_B_inv_mod_p2 164184 164181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164181 164184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_164181_164184
def row_164536_164539 :
    HasPrimeWithExpOne (S_val 164536 164539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164536 164539 ∧ ¬ p ∣ (164539 - 164536) ∧
      ∃ (hNotC : ¬ p ∣ 164539) (hNotB : ¬ p ∣ 164536),
        order_of_C_B_inv_mod_p2 164539 164536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164536 164539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_164536_164539
def row_164891_164894 :
    HasPrimeWithExpOne (S_val 164891 164894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164891 164894 ∧ ¬ p ∣ (164894 - 164891) ∧
      ∃ (hNotC : ¬ p ∣ 164894) (hNotB : ¬ p ∣ 164891),
        order_of_C_B_inv_mod_p2 164894 164891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164891 164894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_164891_164894
def row_165245_165248 :
    HasPrimeWithExpOne (S_val 165245 165248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165245 165248 ∧ ¬ p ∣ (165248 - 165245) ∧
      ∃ (hNotC : ¬ p ∣ 165248) (hNotB : ¬ p ∣ 165245),
        order_of_C_B_inv_mod_p2 165248 165245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165245 165248 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_165245_165248
def row_165599_165602 :
    HasPrimeWithExpOne (S_val 165599 165602) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165599 165602 ∧ ¬ p ∣ (165602 - 165599) ∧
      ∃ (hNotC : ¬ p ∣ 165602) (hNotB : ¬ p ∣ 165599),
        order_of_C_B_inv_mod_p2 165602 165599 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165599 165602 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_165599_165602
def row_165954_165957 :
    HasPrimeWithExpOne (S_val 165954 165957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165954 165957 ∧ ¬ p ∣ (165957 - 165954) ∧
      ∃ (hNotC : ¬ p ∣ 165957) (hNotB : ¬ p ∣ 165954),
        order_of_C_B_inv_mod_p2 165957 165954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165954 165957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_165954_165957
def row_166309_166312 :
    HasPrimeWithExpOne (S_val 166309 166312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166309 166312 ∧ ¬ p ∣ (166312 - 166309) ∧
      ∃ (hNotC : ¬ p ∣ 166312) (hNotB : ¬ p ∣ 166309),
        order_of_C_B_inv_mod_p2 166312 166309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166309 166312 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_166309_166312
def row_166664_166667 :
    HasPrimeWithExpOne (S_val 166664 166667) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166664 166667 ∧ ¬ p ∣ (166667 - 166664) ∧
      ∃ (hNotC : ¬ p ∣ 166667) (hNotB : ¬ p ∣ 166664),
        order_of_C_B_inv_mod_p2 166667 166664 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166664 166667 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_166664_166667
def row_167018_167021 :
    HasPrimeWithExpOne (S_val 167018 167021) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167018 167021 ∧ ¬ p ∣ (167021 - 167018) ∧
      ∃ (hNotC : ¬ p ∣ 167021) (hNotB : ¬ p ∣ 167018),
        order_of_C_B_inv_mod_p2 167021 167018 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167018 167021 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_167018_167021
def row_167373_167376 :
    HasPrimeWithExpOne (S_val 167373 167376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167373 167376 ∧ ¬ p ∣ (167376 - 167373) ∧
      ∃ (hNotC : ¬ p ∣ 167376) (hNotB : ¬ p ∣ 167373),
        order_of_C_B_inv_mod_p2 167376 167373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167373 167376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_167373_167376
def row_167726_167729 :
    HasPrimeWithExpOne (S_val 167726 167729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167726 167729 ∧ ¬ p ∣ (167729 - 167726) ∧
      ∃ (hNotC : ¬ p ∣ 167729) (hNotB : ¬ p ∣ 167726),
        order_of_C_B_inv_mod_p2 167729 167726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167726 167729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_167726_167729
def row_168082_168085 :
    HasPrimeWithExpOne (S_val 168082 168085) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168082 168085 ∧ ¬ p ∣ (168085 - 168082) ∧
      ∃ (hNotC : ¬ p ∣ 168085) (hNotB : ¬ p ∣ 168082),
        order_of_C_B_inv_mod_p2 168085 168082 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168082 168085 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_168082_168085
def row_168437_168440 :
    HasPrimeWithExpOne (S_val 168437 168440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168437 168440 ∧ ¬ p ∣ (168440 - 168437) ∧
      ∃ (hNotC : ¬ p ∣ 168440) (hNotB : ¬ p ∣ 168437),
        order_of_C_B_inv_mod_p2 168440 168437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168437 168440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_168437_168440
def row_168792_168795 :
    HasPrimeWithExpOne (S_val 168792 168795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168792 168795 ∧ ¬ p ∣ (168795 - 168792) ∧
      ∃ (hNotC : ¬ p ∣ 168795) (hNotB : ¬ p ∣ 168792),
        order_of_C_B_inv_mod_p2 168795 168792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168792 168795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_168792_168795
def row_169151_169154 :
    HasPrimeWithExpOne (S_val 169151 169154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169151 169154 ∧ ¬ p ∣ (169154 - 169151) ∧
      ∃ (hNotC : ¬ p ∣ 169154) (hNotB : ¬ p ∣ 169151),
        order_of_C_B_inv_mod_p2 169154 169151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169151 169154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_169151_169154
def row_169500_169503 :
    HasPrimeWithExpOne (S_val 169500 169503) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169500 169503 ∧ ¬ p ∣ (169503 - 169500) ∧
      ∃ (hNotC : ¬ p ∣ 169503) (hNotB : ¬ p ∣ 169500),
        order_of_C_B_inv_mod_p2 169503 169500 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169500 169503 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_169500_169503
def row_169856_169859 :
    HasPrimeWithExpOne (S_val 169856 169859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169856 169859 ∧ ¬ p ∣ (169859 - 169856) ∧
      ∃ (hNotC : ¬ p ∣ 169859) (hNotB : ¬ p ∣ 169856),
        order_of_C_B_inv_mod_p2 169859 169856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169856 169859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_169856_169859
def row_170209_170212 :
    HasPrimeWithExpOne (S_val 170209 170212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170209 170212 ∧ ¬ p ∣ (170212 - 170209) ∧
      ∃ (hNotC : ¬ p ∣ 170212) (hNotB : ¬ p ∣ 170209),
        order_of_C_B_inv_mod_p2 170212 170209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170209 170212 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_170209_170212
def row_170564_170567 :
    HasPrimeWithExpOne (S_val 170564 170567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170564 170567 ∧ ¬ p ∣ (170567 - 170564) ∧
      ∃ (hNotC : ¬ p ∣ 170567) (hNotB : ¬ p ∣ 170564),
        order_of_C_B_inv_mod_p2 170567 170564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170564 170567 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_170564_170567
def row_170919_170922 :
    HasPrimeWithExpOne (S_val 170919 170922) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170919 170922 ∧ ¬ p ∣ (170922 - 170919) ∧
      ∃ (hNotC : ¬ p ∣ 170922) (hNotB : ¬ p ∣ 170919),
        order_of_C_B_inv_mod_p2 170922 170919 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170919 170922 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_170919_170922
def row_171274_171277 :
    HasPrimeWithExpOne (S_val 171274 171277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171274 171277 ∧ ¬ p ∣ (171277 - 171274) ∧
      ∃ (hNotC : ¬ p ∣ 171277) (hNotB : ¬ p ∣ 171274),
        order_of_C_B_inv_mod_p2 171277 171274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171274 171277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_171274_171277
def row_171627_171630 :
    HasPrimeWithExpOne (S_val 171627 171630) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171627 171630 ∧ ¬ p ∣ (171630 - 171627) ∧
      ∃ (hNotC : ¬ p ∣ 171630) (hNotB : ¬ p ∣ 171627),
        order_of_C_B_inv_mod_p2 171630 171627 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171627 171630 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_171627_171630
def row_171985_171988 :
    HasPrimeWithExpOne (S_val 171985 171988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171985 171988 ∧ ¬ p ∣ (171988 - 171985) ∧
      ∃ (hNotC : ¬ p ∣ 171988) (hNotB : ¬ p ∣ 171985),
        order_of_C_B_inv_mod_p2 171988 171985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171985 171988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_171985_171988
def row_172338_172341 :
    HasPrimeWithExpOne (S_val 172338 172341) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172338 172341 ∧ ¬ p ∣ (172341 - 172338) ∧
      ∃ (hNotC : ¬ p ∣ 172341) (hNotB : ¬ p ∣ 172338),
        order_of_C_B_inv_mod_p2 172341 172338 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172338 172341 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_172338_172341
def row_172692_172695 :
    HasPrimeWithExpOne (S_val 172692 172695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172692 172695 ∧ ¬ p ∣ (172695 - 172692) ∧
      ∃ (hNotC : ¬ p ∣ 172695) (hNotB : ¬ p ∣ 172692),
        order_of_C_B_inv_mod_p2 172695 172692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172692 172695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_172692_172695
def row_173046_173049 :
    HasPrimeWithExpOne (S_val 173046 173049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173046 173049 ∧ ¬ p ∣ (173049 - 173046) ∧
      ∃ (hNotC : ¬ p ∣ 173049) (hNotB : ¬ p ∣ 173046),
        order_of_C_B_inv_mod_p2 173049 173046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173046 173049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_173046_173049
def row_173400_173403 :
    HasPrimeWithExpOne (S_val 173400 173403) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173400 173403 ∧ ¬ p ∣ (173403 - 173400) ∧
      ∃ (hNotC : ¬ p ∣ 173403) (hNotB : ¬ p ∣ 173400),
        order_of_C_B_inv_mod_p2 173403 173400 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173400 173403 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_173400_173403
def row_173755_173758 :
    HasPrimeWithExpOne (S_val 173755 173758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173755 173758 ∧ ¬ p ∣ (173758 - 173755) ∧
      ∃ (hNotC : ¬ p ∣ 173758) (hNotB : ¬ p ∣ 173755),
        order_of_C_B_inv_mod_p2 173758 173755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173755 173758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_173755_173758
def row_174110_174113 :
    HasPrimeWithExpOne (S_val 174110 174113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174110 174113 ∧ ¬ p ∣ (174113 - 174110) ∧
      ∃ (hNotC : ¬ p ∣ 174113) (hNotB : ¬ p ∣ 174110),
        order_of_C_B_inv_mod_p2 174113 174110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174110 174113 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_174110_174113
def row_174466_174469 :
    HasPrimeWithExpOne (S_val 174466 174469) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174466 174469 ∧ ¬ p ∣ (174469 - 174466) ∧
      ∃ (hNotC : ¬ p ∣ 174469) (hNotB : ¬ p ∣ 174466),
        order_of_C_B_inv_mod_p2 174469 174466 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174466 174469 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_174466_174469
def row_174822_174825 :
    HasPrimeWithExpOne (S_val 174822 174825) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174822 174825 ∧ ¬ p ∣ (174825 - 174822) ∧
      ∃ (hNotC : ¬ p ∣ 174825) (hNotB : ¬ p ∣ 174822),
        order_of_C_B_inv_mod_p2 174825 174822 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174822 174825 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_174822_174825
def row_175175_175178 :
    HasPrimeWithExpOne (S_val 175175 175178) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175175 175178 ∧ ¬ p ∣ (175178 - 175175) ∧
      ∃ (hNotC : ¬ p ∣ 175178) (hNotB : ¬ p ∣ 175175),
        order_of_C_B_inv_mod_p2 175178 175175 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175175 175178 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_175175_175178
def row_175528_175531 :
    HasPrimeWithExpOne (S_val 175528 175531) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175528 175531 ∧ ¬ p ∣ (175531 - 175528) ∧
      ∃ (hNotC : ¬ p ∣ 175531) (hNotB : ¬ p ∣ 175528),
        order_of_C_B_inv_mod_p2 175531 175528 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175528 175531 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_175528_175531
def row_175886_175889 :
    HasPrimeWithExpOne (S_val 175886 175889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175886 175889 ∧ ¬ p ∣ (175889 - 175886) ∧
      ∃ (hNotC : ¬ p ∣ 175889) (hNotB : ¬ p ∣ 175886),
        order_of_C_B_inv_mod_p2 175889 175886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175886 175889 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_175886_175889
def row_176238_176241 :
    HasPrimeWithExpOne (S_val 176238 176241) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176238 176241 ∧ ¬ p ∣ (176241 - 176238) ∧
      ∃ (hNotC : ¬ p ∣ 176241) (hNotB : ¬ p ∣ 176238),
        order_of_C_B_inv_mod_p2 176241 176238 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176238 176241 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_176238_176241
def row_176592_176595 :
    HasPrimeWithExpOne (S_val 176592 176595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176592 176595 ∧ ¬ p ∣ (176595 - 176592) ∧
      ∃ (hNotC : ¬ p ∣ 176595) (hNotB : ¬ p ∣ 176592),
        order_of_C_B_inv_mod_p2 176595 176592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176592 176595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_176592_176595
def row_176946_176949 :
    HasPrimeWithExpOne (S_val 176946 176949) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176946 176949 ∧ ¬ p ∣ (176949 - 176946) ∧
      ∃ (hNotC : ¬ p ∣ 176949) (hNotB : ¬ p ∣ 176946),
        order_of_C_B_inv_mod_p2 176949 176946 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176946 176949 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_176946_176949
def row_177301_177304 :
    HasPrimeWithExpOne (S_val 177301 177304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177301 177304 ∧ ¬ p ∣ (177304 - 177301) ∧
      ∃ (hNotC : ¬ p ∣ 177304) (hNotB : ¬ p ∣ 177301),
        order_of_C_B_inv_mod_p2 177304 177301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177301 177304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_177301_177304
def row_177656_177659 :
    HasPrimeWithExpOne (S_val 177656 177659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177656 177659 ∧ ¬ p ∣ (177659 - 177656) ∧
      ∃ (hNotC : ¬ p ∣ 177659) (hNotB : ¬ p ∣ 177656),
        order_of_C_B_inv_mod_p2 177659 177656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177656 177659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_177656_177659
def row_178011_178014 :
    HasPrimeWithExpOne (S_val 178011 178014) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178011 178014 ∧ ¬ p ∣ (178014 - 178011) ∧
      ∃ (hNotC : ¬ p ∣ 178014) (hNotB : ¬ p ∣ 178011),
        order_of_C_B_inv_mod_p2 178014 178011 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178011 178014 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_178011_178014
def row_178365_178368 :
    HasPrimeWithExpOne (S_val 178365 178368) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178365 178368 ∧ ¬ p ∣ (178368 - 178365) ∧
      ∃ (hNotC : ¬ p ∣ 178368) (hNotB : ¬ p ∣ 178365),
        order_of_C_B_inv_mod_p2 178368 178365 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178365 178368 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_178365_178368
def row_178720_178723 :
    HasPrimeWithExpOne (S_val 178720 178723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178720 178723 ∧ ¬ p ∣ (178723 - 178720) ∧
      ∃ (hNotC : ¬ p ∣ 178723) (hNotB : ¬ p ∣ 178720),
        order_of_C_B_inv_mod_p2 178723 178720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178720 178723 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_178720_178723
def row_179074_179077 :
    HasPrimeWithExpOne (S_val 179074 179077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179074 179077 ∧ ¬ p ∣ (179077 - 179074) ∧
      ∃ (hNotC : ¬ p ∣ 179077) (hNotB : ¬ p ∣ 179074),
        order_of_C_B_inv_mod_p2 179077 179074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179074 179077 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_179074_179077
def row_179429_179432 :
    HasPrimeWithExpOne (S_val 179429 179432) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179429 179432 ∧ ¬ p ∣ (179432 - 179429) ∧
      ∃ (hNotC : ¬ p ∣ 179432) (hNotB : ¬ p ∣ 179429),
        order_of_C_B_inv_mod_p2 179432 179429 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179429 179432 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_179429_179432
def row_179783_179786 :
    HasPrimeWithExpOne (S_val 179783 179786) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179783 179786 ∧ ¬ p ∣ (179786 - 179783) ∧
      ∃ (hNotC : ¬ p ∣ 179786) (hNotB : ¬ p ∣ 179783),
        order_of_C_B_inv_mod_p2 179786 179783 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179783 179786 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_179783_179786
def row_180138_180141 :
    HasPrimeWithExpOne (S_val 180138 180141) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180138 180141 ∧ ¬ p ∣ (180141 - 180138) ∧
      ∃ (hNotC : ¬ p ∣ 180141) (hNotB : ¬ p ∣ 180138),
        order_of_C_B_inv_mod_p2 180141 180138 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180138 180141 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_180138_180141
def row_180494_180497 :
    HasPrimeWithExpOne (S_val 180494 180497) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180494 180497 ∧ ¬ p ∣ (180497 - 180494) ∧
      ∃ (hNotC : ¬ p ∣ 180497) (hNotB : ¬ p ∣ 180494),
        order_of_C_B_inv_mod_p2 180497 180494 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180494 180497 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_180494_180497
def row_180848_180851 :
    HasPrimeWithExpOne (S_val 180848 180851) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180848 180851 ∧ ¬ p ∣ (180851 - 180848) ∧
      ∃ (hNotC : ¬ p ∣ 180851) (hNotB : ¬ p ∣ 180848),
        order_of_C_B_inv_mod_p2 180851 180848 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180848 180851 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_180848_180851
def row_181200_181203 :
    HasPrimeWithExpOne (S_val 181200 181203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181200 181203 ∧ ¬ p ∣ (181203 - 181200) ∧
      ∃ (hNotC : ¬ p ∣ 181203) (hNotB : ¬ p ∣ 181200),
        order_of_C_B_inv_mod_p2 181203 181200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181200 181203 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_181200_181203
def row_181557_181560 :
    HasPrimeWithExpOne (S_val 181557 181560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181557 181560 ∧ ¬ p ∣ (181560 - 181557) ∧
      ∃ (hNotC : ¬ p ∣ 181560) (hNotB : ¬ p ∣ 181557),
        order_of_C_B_inv_mod_p2 181560 181557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181557 181560 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_181557_181560
def row_181911_181914 :
    HasPrimeWithExpOne (S_val 181911 181914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181911 181914 ∧ ¬ p ∣ (181914 - 181911) ∧
      ∃ (hNotC : ¬ p ∣ 181914) (hNotB : ¬ p ∣ 181911),
        order_of_C_B_inv_mod_p2 181914 181911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181911 181914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_181911_181914
def row_182266_182269 :
    HasPrimeWithExpOne (S_val 182266 182269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182266 182269 ∧ ¬ p ∣ (182269 - 182266) ∧
      ∃ (hNotC : ¬ p ∣ 182269) (hNotB : ¬ p ∣ 182266),
        order_of_C_B_inv_mod_p2 182269 182266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182266 182269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_182266_182269
def row_182620_182623 :
    HasPrimeWithExpOne (S_val 182620 182623) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182620 182623 ∧ ¬ p ∣ (182623 - 182620) ∧
      ∃ (hNotC : ¬ p ∣ 182623) (hNotB : ¬ p ∣ 182620),
        order_of_C_B_inv_mod_p2 182623 182620 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182620 182623 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_182620_182623
def row_182975_182978 :
    HasPrimeWithExpOne (S_val 182975 182978) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182975 182978 ∧ ¬ p ∣ (182978 - 182975) ∧
      ∃ (hNotC : ¬ p ∣ 182978) (hNotB : ¬ p ∣ 182975),
        order_of_C_B_inv_mod_p2 182978 182975 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182975 182978 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_182975_182978
def row_183331_183334 :
    HasPrimeWithExpOne (S_val 183331 183334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183331 183334 ∧ ¬ p ∣ (183334 - 183331) ∧
      ∃ (hNotC : ¬ p ∣ 183334) (hNotB : ¬ p ∣ 183331),
        order_of_C_B_inv_mod_p2 183334 183331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183331 183334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_183331_183334
def row_183685_183688 :
    HasPrimeWithExpOne (S_val 183685 183688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183685 183688 ∧ ¬ p ∣ (183688 - 183685) ∧
      ∃ (hNotC : ¬ p ∣ 183688) (hNotB : ¬ p ∣ 183685),
        order_of_C_B_inv_mod_p2 183688 183685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183685 183688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_183685_183688
def row_184037_184040 :
    HasPrimeWithExpOne (S_val 184037 184040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184037 184040 ∧ ¬ p ∣ (184040 - 184037) ∧
      ∃ (hNotC : ¬ p ∣ 184040) (hNotB : ¬ p ∣ 184037),
        order_of_C_B_inv_mod_p2 184040 184037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184037 184040 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_184037_184040
def row_184393_184396 :
    HasPrimeWithExpOne (S_val 184393 184396) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184393 184396 ∧ ¬ p ∣ (184396 - 184393) ∧
      ∃ (hNotC : ¬ p ∣ 184396) (hNotB : ¬ p ∣ 184393),
        order_of_C_B_inv_mod_p2 184396 184393 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184393 184396 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_184393_184396
def row_184748_184751 :
    HasPrimeWithExpOne (S_val 184748 184751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184748 184751 ∧ ¬ p ∣ (184751 - 184748) ∧
      ∃ (hNotC : ¬ p ∣ 184751) (hNotB : ¬ p ∣ 184748),
        order_of_C_B_inv_mod_p2 184751 184748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184748 184751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_184748_184751
def row_185102_185105 :
    HasPrimeWithExpOne (S_val 185102 185105) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185102 185105 ∧ ¬ p ∣ (185105 - 185102) ∧
      ∃ (hNotC : ¬ p ∣ 185105) (hNotB : ¬ p ∣ 185102),
        order_of_C_B_inv_mod_p2 185105 185102 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185102 185105 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_185102_185105
def row_185457_185460 :
    HasPrimeWithExpOne (S_val 185457 185460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185457 185460 ∧ ¬ p ∣ (185460 - 185457) ∧
      ∃ (hNotC : ¬ p ∣ 185460) (hNotB : ¬ p ∣ 185457),
        order_of_C_B_inv_mod_p2 185460 185457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185457 185460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_185457_185460
def row_185812_185815 :
    HasPrimeWithExpOne (S_val 185812 185815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185812 185815 ∧ ¬ p ∣ (185815 - 185812) ∧
      ∃ (hNotC : ¬ p ∣ 185815) (hNotB : ¬ p ∣ 185812),
        order_of_C_B_inv_mod_p2 185815 185812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185812 185815 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_185812_185815
def row_186166_186169 :
    HasPrimeWithExpOne (S_val 186166 186169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186166 186169 ∧ ¬ p ∣ (186169 - 186166) ∧
      ∃ (hNotC : ¬ p ∣ 186169) (hNotB : ¬ p ∣ 186166),
        order_of_C_B_inv_mod_p2 186169 186166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186166 186169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_186166_186169
def row_186520_186523 :
    HasPrimeWithExpOne (S_val 186520 186523) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186520 186523 ∧ ¬ p ∣ (186523 - 186520) ∧
      ∃ (hNotC : ¬ p ∣ 186523) (hNotB : ¬ p ∣ 186520),
        order_of_C_B_inv_mod_p2 186523 186520 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186520 186523 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_186520_186523
def row_186875_186878 :
    HasPrimeWithExpOne (S_val 186875 186878) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186875 186878 ∧ ¬ p ∣ (186878 - 186875) ∧
      ∃ (hNotC : ¬ p ∣ 186878) (hNotB : ¬ p ∣ 186875),
        order_of_C_B_inv_mod_p2 186878 186875 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186875 186878 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_186875_186878
def row_187232_187235 :
    HasPrimeWithExpOne (S_val 187232 187235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187232 187235 ∧ ¬ p ∣ (187235 - 187232) ∧
      ∃ (hNotC : ¬ p ∣ 187235) (hNotB : ¬ p ∣ 187232),
        order_of_C_B_inv_mod_p2 187235 187232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187232 187235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_187232_187235
def row_187585_187588 :
    HasPrimeWithExpOne (S_val 187585 187588) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187585 187588 ∧ ¬ p ∣ (187588 - 187585) ∧
      ∃ (hNotC : ¬ p ∣ 187588) (hNotB : ¬ p ∣ 187585),
        order_of_C_B_inv_mod_p2 187588 187585 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187585 187588 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_187585_187588
def row_187939_187942 :
    HasPrimeWithExpOne (S_val 187939 187942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187939 187942 ∧ ¬ p ∣ (187942 - 187939) ∧
      ∃ (hNotC : ¬ p ∣ 187942) (hNotB : ¬ p ∣ 187939),
        order_of_C_B_inv_mod_p2 187942 187939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187939 187942 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_187939_187942
def row_188293_188296 :
    HasPrimeWithExpOne (S_val 188293 188296) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188293 188296 ∧ ¬ p ∣ (188296 - 188293) ∧
      ∃ (hNotC : ¬ p ∣ 188296) (hNotB : ¬ p ∣ 188293),
        order_of_C_B_inv_mod_p2 188296 188293 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188293 188296 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_188293_188296
def row_188648_188651 :
    HasPrimeWithExpOne (S_val 188648 188651) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188648 188651 ∧ ¬ p ∣ (188651 - 188648) ∧
      ∃ (hNotC : ¬ p ∣ 188651) (hNotB : ¬ p ∣ 188648),
        order_of_C_B_inv_mod_p2 188651 188648 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188648 188651 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_188648_188651
def row_189003_189006 :
    HasPrimeWithExpOne (S_val 189003 189006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189003 189006 ∧ ¬ p ∣ (189006 - 189003) ∧
      ∃ (hNotC : ¬ p ∣ 189006) (hNotB : ¬ p ∣ 189003),
        order_of_C_B_inv_mod_p2 189006 189003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189003 189006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_189003_189006
def row_189360_189363 :
    HasPrimeWithExpOne (S_val 189360 189363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189360 189363 ∧ ¬ p ∣ (189363 - 189360) ∧
      ∃ (hNotC : ¬ p ∣ 189363) (hNotB : ¬ p ∣ 189360),
        order_of_C_B_inv_mod_p2 189363 189360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189360 189363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_189360_189363
def row_189713_189716 :
    HasPrimeWithExpOne (S_val 189713 189716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189713 189716 ∧ ¬ p ∣ (189716 - 189713) ∧
      ∃ (hNotC : ¬ p ∣ 189716) (hNotB : ¬ p ∣ 189713),
        order_of_C_B_inv_mod_p2 189716 189713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189713 189716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_189713_189716
def row_190068_190071 :
    HasPrimeWithExpOne (S_val 190068 190071) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190068 190071 ∧ ¬ p ∣ (190071 - 190068) ∧
      ∃ (hNotC : ¬ p ∣ 190071) (hNotB : ¬ p ∣ 190068),
        order_of_C_B_inv_mod_p2 190071 190068 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190068 190071 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_190068_190071
def row_190421_190424 :
    HasPrimeWithExpOne (S_val 190421 190424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190421 190424 ∧ ¬ p ∣ (190424 - 190421) ∧
      ∃ (hNotC : ¬ p ∣ 190424) (hNotB : ¬ p ∣ 190421),
        order_of_C_B_inv_mod_p2 190424 190421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190421 190424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_190421_190424
def row_190776_190779 :
    HasPrimeWithExpOne (S_val 190776 190779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190776 190779 ∧ ¬ p ∣ (190779 - 190776) ∧
      ∃ (hNotC : ¬ p ∣ 190779) (hNotB : ¬ p ∣ 190776),
        order_of_C_B_inv_mod_p2 190779 190776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190776 190779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_190776_190779
def row_191131_191134 :
    HasPrimeWithExpOne (S_val 191131 191134) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191131 191134 ∧ ¬ p ∣ (191134 - 191131) ∧
      ∃ (hNotC : ¬ p ∣ 191134) (hNotB : ¬ p ∣ 191131),
        order_of_C_B_inv_mod_p2 191134 191131 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191131 191134 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_191131_191134
def row_191485_191488 :
    HasPrimeWithExpOne (S_val 191485 191488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191485 191488 ∧ ¬ p ∣ (191488 - 191485) ∧
      ∃ (hNotC : ¬ p ∣ 191488) (hNotB : ¬ p ∣ 191485),
        order_of_C_B_inv_mod_p2 191488 191485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191485 191488 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_191485_191488
def row_191839_191842 :
    HasPrimeWithExpOne (S_val 191839 191842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191839 191842 ∧ ¬ p ∣ (191842 - 191839) ∧
      ∃ (hNotC : ¬ p ∣ 191842) (hNotB : ¬ p ∣ 191839),
        order_of_C_B_inv_mod_p2 191842 191839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191839 191842 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_191839_191842
def row_192196_192199 :
    HasPrimeWithExpOne (S_val 192196 192199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192196 192199 ∧ ¬ p ∣ (192199 - 192196) ∧
      ∃ (hNotC : ¬ p ∣ 192199) (hNotB : ¬ p ∣ 192196),
        order_of_C_B_inv_mod_p2 192199 192196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192196 192199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_192196_192199
def row_192548_192551 :
    HasPrimeWithExpOne (S_val 192548 192551) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192548 192551 ∧ ¬ p ∣ (192551 - 192548) ∧
      ∃ (hNotC : ¬ p ∣ 192551) (hNotB : ¬ p ∣ 192548),
        order_of_C_B_inv_mod_p2 192551 192548 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192548 192551 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_192548_192551
def row_192904_192907 :
    HasPrimeWithExpOne (S_val 192904 192907) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192904 192907 ∧ ¬ p ∣ (192907 - 192904) ∧
      ∃ (hNotC : ¬ p ∣ 192907) (hNotB : ¬ p ∣ 192904),
        order_of_C_B_inv_mod_p2 192907 192904 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192904 192907 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_192904_192907
def row_193259_193262 :
    HasPrimeWithExpOne (S_val 193259 193262) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193259 193262 ∧ ¬ p ∣ (193262 - 193259) ∧
      ∃ (hNotC : ¬ p ∣ 193262) (hNotB : ¬ p ∣ 193259),
        order_of_C_B_inv_mod_p2 193262 193259 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193259 193262 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_193259_193262
def row_193613_193616 :
    HasPrimeWithExpOne (S_val 193613 193616) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193613 193616 ∧ ¬ p ∣ (193616 - 193613) ∧
      ∃ (hNotC : ¬ p ∣ 193616) (hNotB : ¬ p ∣ 193613),
        order_of_C_B_inv_mod_p2 193616 193613 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193613 193616 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_193613_193616
def row_193967_193970 :
    HasPrimeWithExpOne (S_val 193967 193970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193967 193970 ∧ ¬ p ∣ (193970 - 193967) ∧
      ∃ (hNotC : ¬ p ∣ 193970) (hNotB : ¬ p ∣ 193967),
        order_of_C_B_inv_mod_p2 193970 193967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193967 193970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_193967_193970
def row_194323_194326 :
    HasPrimeWithExpOne (S_val 194323 194326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194323 194326 ∧ ¬ p ∣ (194326 - 194323) ∧
      ∃ (hNotC : ¬ p ∣ 194326) (hNotB : ¬ p ∣ 194323),
        order_of_C_B_inv_mod_p2 194326 194323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194323 194326 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_194323_194326
def row_194679_194682 :
    HasPrimeWithExpOne (S_val 194679 194682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194679 194682 ∧ ¬ p ∣ (194682 - 194679) ∧
      ∃ (hNotC : ¬ p ∣ 194682) (hNotB : ¬ p ∣ 194679),
        order_of_C_B_inv_mod_p2 194682 194679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194679 194682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_194679_194682
def row_195031_195034 :
    HasPrimeWithExpOne (S_val 195031 195034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195031 195034 ∧ ¬ p ∣ (195034 - 195031) ∧
      ∃ (hNotC : ¬ p ∣ 195034) (hNotB : ¬ p ∣ 195031),
        order_of_C_B_inv_mod_p2 195034 195031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195031 195034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_195031_195034
def row_195385_195388 :
    HasPrimeWithExpOne (S_val 195385 195388) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195385 195388 ∧ ¬ p ∣ (195388 - 195385) ∧
      ∃ (hNotC : ¬ p ∣ 195388) (hNotB : ¬ p ∣ 195385),
        order_of_C_B_inv_mod_p2 195388 195385 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195385 195388 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_195385_195388
def row_195741_195744 :
    HasPrimeWithExpOne (S_val 195741 195744) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195741 195744 ∧ ¬ p ∣ (195744 - 195741) ∧
      ∃ (hNotC : ¬ p ∣ 195744) (hNotB : ¬ p ∣ 195741),
        order_of_C_B_inv_mod_p2 195744 195741 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195741 195744 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_195741_195744
def row_196095_196098 :
    HasPrimeWithExpOne (S_val 196095 196098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196095 196098 ∧ ¬ p ∣ (196098 - 196095) ∧
      ∃ (hNotC : ¬ p ∣ 196098) (hNotB : ¬ p ∣ 196095),
        order_of_C_B_inv_mod_p2 196098 196095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196095 196098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_196095_196098
def row_196450_196453 :
    HasPrimeWithExpOne (S_val 196450 196453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196450 196453 ∧ ¬ p ∣ (196453 - 196450) ∧
      ∃ (hNotC : ¬ p ∣ 196453) (hNotB : ¬ p ∣ 196450),
        order_of_C_B_inv_mod_p2 196453 196450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196450 196453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_196450_196453
def row_196805_196808 :
    HasPrimeWithExpOne (S_val 196805 196808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196805 196808 ∧ ¬ p ∣ (196808 - 196805) ∧
      ∃ (hNotC : ¬ p ∣ 196808) (hNotB : ¬ p ∣ 196805),
        order_of_C_B_inv_mod_p2 196808 196805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196805 196808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_196805_196808
def row_197159_197162 :
    HasPrimeWithExpOne (S_val 197159 197162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197159 197162 ∧ ¬ p ∣ (197162 - 197159) ∧
      ∃ (hNotC : ¬ p ∣ 197162) (hNotB : ¬ p ∣ 197159),
        order_of_C_B_inv_mod_p2 197162 197159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197159 197162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_197159_197162
def row_197513_197516 :
    HasPrimeWithExpOne (S_val 197513 197516) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197513 197516 ∧ ¬ p ∣ (197516 - 197513) ∧
      ∃ (hNotC : ¬ p ∣ 197516) (hNotB : ¬ p ∣ 197513),
        order_of_C_B_inv_mod_p2 197516 197513 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197513 197516 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_197513_197516
def row_197869_197872 :
    HasPrimeWithExpOne (S_val 197869 197872) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197869 197872 ∧ ¬ p ∣ (197872 - 197869) ∧
      ∃ (hNotC : ¬ p ∣ 197872) (hNotB : ¬ p ∣ 197869),
        order_of_C_B_inv_mod_p2 197872 197869 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197869 197872 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_197869_197872
def row_198223_198226 :
    HasPrimeWithExpOne (S_val 198223 198226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198223 198226 ∧ ¬ p ∣ (198226 - 198223) ∧
      ∃ (hNotC : ¬ p ∣ 198226) (hNotB : ¬ p ∣ 198223),
        order_of_C_B_inv_mod_p2 198226 198223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198223 198226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_198223_198226
def row_198578_198581 :
    HasPrimeWithExpOne (S_val 198578 198581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198578 198581 ∧ ¬ p ∣ (198581 - 198578) ∧
      ∃ (hNotC : ¬ p ∣ 198581) (hNotB : ¬ p ∣ 198578),
        order_of_C_B_inv_mod_p2 198581 198578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198578 198581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_198578_198581
def row_198932_198935 :
    HasPrimeWithExpOne (S_val 198932 198935) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198932 198935 ∧ ¬ p ∣ (198935 - 198932) ∧
      ∃ (hNotC : ¬ p ∣ 198935) (hNotB : ¬ p ∣ 198932),
        order_of_C_B_inv_mod_p2 198935 198932 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198932 198935 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_198932_198935
def row_199286_199289 :
    HasPrimeWithExpOne (S_val 199286 199289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199286 199289 ∧ ¬ p ∣ (199289 - 199286) ∧
      ∃ (hNotC : ¬ p ∣ 199289) (hNotB : ¬ p ∣ 199286),
        order_of_C_B_inv_mod_p2 199289 199286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199286 199289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_199286_199289
def row_199642_199645 :
    HasPrimeWithExpOne (S_val 199642 199645) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199642 199645 ∧ ¬ p ∣ (199645 - 199642) ∧
      ∃ (hNotC : ¬ p ∣ 199645) (hNotB : ¬ p ∣ 199642),
        order_of_C_B_inv_mod_p2 199645 199642 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199642 199645 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_199642_199645
def row_199996_199999 :
    HasPrimeWithExpOne (S_val 199996 199999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199996 199999 ∧ ¬ p ∣ (199999 - 199996) ∧
      ∃ (hNotC : ¬ p ∣ 199999) (hNotB : ¬ p ∣ 199996),
        order_of_C_B_inv_mod_p2 199999 199996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199996 199999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_199996_199999
def row_200000_200003 :
    HasPrimeWithExpOne (S_val 200000 200003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200000 200003 ∧ ¬ p ∣ (200003 - 200000) ∧
      ∃ (hNotC : ¬ p ∣ 200003) (hNotB : ¬ p ∣ 200000),
        order_of_C_B_inv_mod_p2 200003 200000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200000 200003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_200000_200003
def row_200001_200004 :
    HasPrimeWithExpOne (S_val 200001 200004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200001 200004 ∧ ¬ p ∣ (200004 - 200001) ∧
      ∃ (hNotC : ¬ p ∣ 200004) (hNotB : ¬ p ∣ 200001),
        order_of_C_B_inv_mod_p2 200004 200001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200001 200004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_200001_200004
def row_200337_200340 :
    HasPrimeWithExpOne (S_val 200337 200340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200337 200340 ∧ ¬ p ∣ (200340 - 200337) ∧
      ∃ (hNotC : ¬ p ∣ 200340) (hNotB : ¬ p ∣ 200337),
        order_of_C_B_inv_mod_p2 200340 200337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200337 200340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_200337_200340
def row_200672_200675 :
    HasPrimeWithExpOne (S_val 200672 200675) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200672 200675 ∧ ¬ p ∣ (200675 - 200672) ∧
      ∃ (hNotC : ¬ p ∣ 200675) (hNotB : ¬ p ∣ 200672),
        order_of_C_B_inv_mod_p2 200675 200672 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200672 200675 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_200672_200675
def row_201008_201011 :
    HasPrimeWithExpOne (S_val 201008 201011) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201008 201011 ∧ ¬ p ∣ (201011 - 201008) ∧
      ∃ (hNotC : ¬ p ∣ 201011) (hNotB : ¬ p ∣ 201008),
        order_of_C_B_inv_mod_p2 201011 201008 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201008 201011 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_201008_201011
def row_201344_201347 :
    HasPrimeWithExpOne (S_val 201344 201347) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201344 201347 ∧ ¬ p ∣ (201347 - 201344) ∧
      ∃ (hNotC : ¬ p ∣ 201347) (hNotB : ¬ p ∣ 201344),
        order_of_C_B_inv_mod_p2 201347 201344 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201344 201347 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_201344_201347
def row_201678_201681 :
    HasPrimeWithExpOne (S_val 201678 201681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201678 201681 ∧ ¬ p ∣ (201681 - 201678) ∧
      ∃ (hNotC : ¬ p ∣ 201681) (hNotB : ¬ p ∣ 201678),
        order_of_C_B_inv_mod_p2 201681 201678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201678 201681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_201678_201681
def row_202015_202018 :
    HasPrimeWithExpOne (S_val 202015 202018) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202015 202018 ∧ ¬ p ∣ (202018 - 202015) ∧
      ∃ (hNotC : ¬ p ∣ 202018) (hNotB : ¬ p ∣ 202015),
        order_of_C_B_inv_mod_p2 202018 202015 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202015 202018 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_202015_202018
def row_202349_202352 :
    HasPrimeWithExpOne (S_val 202349 202352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202349 202352 ∧ ¬ p ∣ (202352 - 202349) ∧
      ∃ (hNotC : ¬ p ∣ 202352) (hNotB : ¬ p ∣ 202349),
        order_of_C_B_inv_mod_p2 202352 202349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202349 202352 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_202349_202352
def row_202685_202688 :
    HasPrimeWithExpOne (S_val 202685 202688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202685 202688 ∧ ¬ p ∣ (202688 - 202685) ∧
      ∃ (hNotC : ¬ p ∣ 202688) (hNotB : ¬ p ∣ 202685),
        order_of_C_B_inv_mod_p2 202688 202685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202685 202688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_202685_202688
def row_203022_203025 :
    HasPrimeWithExpOne (S_val 203022 203025) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203022 203025 ∧ ¬ p ∣ (203025 - 203022) ∧
      ∃ (hNotC : ¬ p ∣ 203025) (hNotB : ¬ p ∣ 203022),
        order_of_C_B_inv_mod_p2 203025 203022 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203022 203025 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_203022_203025
def row_203355_203358 :
    HasPrimeWithExpOne (S_val 203355 203358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203355 203358 ∧ ¬ p ∣ (203358 - 203355) ∧
      ∃ (hNotC : ¬ p ∣ 203358) (hNotB : ¬ p ∣ 203355),
        order_of_C_B_inv_mod_p2 203358 203355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203355 203358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_203355_203358
def row_203692_203695 :
    HasPrimeWithExpOne (S_val 203692 203695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203692 203695 ∧ ¬ p ∣ (203695 - 203692) ∧
      ∃ (hNotC : ¬ p ∣ 203695) (hNotB : ¬ p ∣ 203692),
        order_of_C_B_inv_mod_p2 203695 203692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203692 203695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_203692_203695
def row_204027_204030 :
    HasPrimeWithExpOne (S_val 204027 204030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204027 204030 ∧ ¬ p ∣ (204030 - 204027) ∧
      ∃ (hNotC : ¬ p ∣ 204030) (hNotB : ¬ p ∣ 204027),
        order_of_C_B_inv_mod_p2 204030 204027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204027 204030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_204027_204030
def row_204364_204367 :
    HasPrimeWithExpOne (S_val 204364 204367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204364 204367 ∧ ¬ p ∣ (204367 - 204364) ∧
      ∃ (hNotC : ¬ p ∣ 204367) (hNotB : ¬ p ∣ 204364),
        order_of_C_B_inv_mod_p2 204367 204364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204364 204367 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_204364_204367
def row_204699_204702 :
    HasPrimeWithExpOne (S_val 204699 204702) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204699 204702 ∧ ¬ p ∣ (204702 - 204699) ∧
      ∃ (hNotC : ¬ p ∣ 204702) (hNotB : ¬ p ∣ 204699),
        order_of_C_B_inv_mod_p2 204702 204699 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204699 204702 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_204699_204702
def row_205036_205039 :
    HasPrimeWithExpOne (S_val 205036 205039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205036 205039 ∧ ¬ p ∣ (205039 - 205036) ∧
      ∃ (hNotC : ¬ p ∣ 205039) (hNotB : ¬ p ∣ 205036),
        order_of_C_B_inv_mod_p2 205039 205036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205036 205039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_205036_205039
def row_205371_205374 :
    HasPrimeWithExpOne (S_val 205371 205374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205371 205374 ∧ ¬ p ∣ (205374 - 205371) ∧
      ∃ (hNotC : ¬ p ∣ 205374) (hNotB : ¬ p ∣ 205371),
        order_of_C_B_inv_mod_p2 205374 205371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205371 205374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_205371_205374
def row_205706_205709 :
    HasPrimeWithExpOne (S_val 205706 205709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205706 205709 ∧ ¬ p ∣ (205709 - 205706) ∧
      ∃ (hNotC : ¬ p ∣ 205709) (hNotB : ¬ p ∣ 205706),
        order_of_C_B_inv_mod_p2 205709 205706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205706 205709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_205706_205709
def row_206043_206046 :
    HasPrimeWithExpOne (S_val 206043 206046) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206043 206046 ∧ ¬ p ∣ (206046 - 206043) ∧
      ∃ (hNotC : ¬ p ∣ 206046) (hNotB : ¬ p ∣ 206043),
        order_of_C_B_inv_mod_p2 206046 206043 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206043 206046 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_206043_206046
def row_206375_206378 :
    HasPrimeWithExpOne (S_val 206375 206378) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206375 206378 ∧ ¬ p ∣ (206378 - 206375) ∧
      ∃ (hNotC : ¬ p ∣ 206378) (hNotB : ¬ p ∣ 206375),
        order_of_C_B_inv_mod_p2 206378 206375 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206375 206378 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_206375_206378
def row_206713_206716 :
    HasPrimeWithExpOne (S_val 206713 206716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206713 206716 ∧ ¬ p ∣ (206716 - 206713) ∧
      ∃ (hNotC : ¬ p ∣ 206716) (hNotB : ¬ p ∣ 206713),
        order_of_C_B_inv_mod_p2 206716 206713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206713 206716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_206713_206716
def row_207047_207050 :
    HasPrimeWithExpOne (S_val 207047 207050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207047 207050 ∧ ¬ p ∣ (207050 - 207047) ∧
      ∃ (hNotC : ¬ p ∣ 207050) (hNotB : ¬ p ∣ 207047),
        order_of_C_B_inv_mod_p2 207050 207047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207047 207050 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_207047_207050
def row_207382_207385 :
    HasPrimeWithExpOne (S_val 207382 207385) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207382 207385 ∧ ¬ p ∣ (207385 - 207382) ∧
      ∃ (hNotC : ¬ p ∣ 207385) (hNotB : ¬ p ∣ 207382),
        order_of_C_B_inv_mod_p2 207385 207382 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207382 207385 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_207382_207385
def row_207720_207723 :
    HasPrimeWithExpOne (S_val 207720 207723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207720 207723 ∧ ¬ p ∣ (207723 - 207720) ∧
      ∃ (hNotC : ¬ p ∣ 207723) (hNotB : ¬ p ∣ 207720),
        order_of_C_B_inv_mod_p2 207723 207720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207720 207723 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_207720_207723
def row_208054_208057 :
    HasPrimeWithExpOne (S_val 208054 208057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208054 208057 ∧ ¬ p ∣ (208057 - 208054) ∧
      ∃ (hNotC : ¬ p ∣ 208057) (hNotB : ¬ p ∣ 208054),
        order_of_C_B_inv_mod_p2 208057 208054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208054 208057 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_208054_208057
def row_208389_208392 :
    HasPrimeWithExpOne (S_val 208389 208392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208389 208392 ∧ ¬ p ∣ (208392 - 208389) ∧
      ∃ (hNotC : ¬ p ∣ 208392) (hNotB : ¬ p ∣ 208389),
        order_of_C_B_inv_mod_p2 208392 208389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208389 208392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_208389_208392
def row_208725_208728 :
    HasPrimeWithExpOne (S_val 208725 208728) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208725 208728 ∧ ¬ p ∣ (208728 - 208725) ∧
      ∃ (hNotC : ¬ p ∣ 208728) (hNotB : ¬ p ∣ 208725),
        order_of_C_B_inv_mod_p2 208728 208725 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208725 208728 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_208725_208728
def row_209064_209067 :
    HasPrimeWithExpOne (S_val 209064 209067) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209064 209067 ∧ ¬ p ∣ (209067 - 209064) ∧
      ∃ (hNotC : ¬ p ∣ 209067) (hNotB : ¬ p ∣ 209064),
        order_of_C_B_inv_mod_p2 209067 209064 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209064 209067 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_209064_209067
def row_209396_209399 :
    HasPrimeWithExpOne (S_val 209396 209399) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209396 209399 ∧ ¬ p ∣ (209399 - 209396) ∧
      ∃ (hNotC : ¬ p ∣ 209399) (hNotB : ¬ p ∣ 209396),
        order_of_C_B_inv_mod_p2 209399 209396 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209396 209399 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_209396_209399
def row_209731_209734 :
    HasPrimeWithExpOne (S_val 209731 209734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209731 209734 ∧ ¬ p ∣ (209734 - 209731) ∧
      ∃ (hNotC : ¬ p ∣ 209734) (hNotB : ¬ p ∣ 209731),
        order_of_C_B_inv_mod_p2 209734 209731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209731 209734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_209731_209734
def row_210066_210069 :
    HasPrimeWithExpOne (S_val 210066 210069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210066 210069 ∧ ¬ p ∣ (210069 - 210066) ∧
      ∃ (hNotC : ¬ p ∣ 210069) (hNotB : ¬ p ∣ 210066),
        order_of_C_B_inv_mod_p2 210069 210066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210066 210069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_210066_210069
def row_210403_210406 :
    HasPrimeWithExpOne (S_val 210403 210406) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210403 210406 ∧ ¬ p ∣ (210406 - 210403) ∧
      ∃ (hNotC : ¬ p ∣ 210406) (hNotB : ¬ p ∣ 210403),
        order_of_C_B_inv_mod_p2 210406 210403 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210403 210406 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_210403_210406
def row_210738_210741 :
    HasPrimeWithExpOne (S_val 210738 210741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210738 210741 ∧ ¬ p ∣ (210741 - 210738) ∧
      ∃ (hNotC : ¬ p ∣ 210741) (hNotB : ¬ p ∣ 210738),
        order_of_C_B_inv_mod_p2 210741 210738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210738 210741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_210738_210741
def row_211073_211076 :
    HasPrimeWithExpOne (S_val 211073 211076) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211073 211076 ∧ ¬ p ∣ (211076 - 211073) ∧
      ∃ (hNotC : ¬ p ∣ 211076) (hNotB : ¬ p ∣ 211073),
        order_of_C_B_inv_mod_p2 211076 211073 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211073 211076 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_211073_211076
def row_211410_211413 :
    HasPrimeWithExpOne (S_val 211410 211413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211410 211413 ∧ ¬ p ∣ (211413 - 211410) ∧
      ∃ (hNotC : ¬ p ∣ 211413) (hNotB : ¬ p ∣ 211410),
        order_of_C_B_inv_mod_p2 211413 211410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211410 211413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_211410_211413
def row_211745_211748 :
    HasPrimeWithExpOne (S_val 211745 211748) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211745 211748 ∧ ¬ p ∣ (211748 - 211745) ∧
      ∃ (hNotC : ¬ p ∣ 211748) (hNotB : ¬ p ∣ 211745),
        order_of_C_B_inv_mod_p2 211748 211745 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211745 211748 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_211745_211748
def row_212083_212086 :
    HasPrimeWithExpOne (S_val 212083 212086) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212083 212086 ∧ ¬ p ∣ (212086 - 212083) ∧
      ∃ (hNotC : ¬ p ∣ 212086) (hNotB : ¬ p ∣ 212083),
        order_of_C_B_inv_mod_p2 212086 212083 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212083 212086 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_212083_212086
def row_212416_212419 :
    HasPrimeWithExpOne (S_val 212416 212419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212416 212419 ∧ ¬ p ∣ (212419 - 212416) ∧
      ∃ (hNotC : ¬ p ∣ 212419) (hNotB : ¬ p ∣ 212416),
        order_of_C_B_inv_mod_p2 212419 212416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212416 212419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_212416_212419
def row_212752_212755 :
    HasPrimeWithExpOne (S_val 212752 212755) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212752 212755 ∧ ¬ p ∣ (212755 - 212752) ∧
      ∃ (hNotC : ¬ p ∣ 212755) (hNotB : ¬ p ∣ 212752),
        order_of_C_B_inv_mod_p2 212755 212752 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212752 212755 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_212752_212755
def row_213088_213091 :
    HasPrimeWithExpOne (S_val 213088 213091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213088 213091 ∧ ¬ p ∣ (213091 - 213088) ∧
      ∃ (hNotC : ¬ p ∣ 213091) (hNotB : ¬ p ∣ 213088),
        order_of_C_B_inv_mod_p2 213091 213088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213088 213091 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_213088_213091
def row_213423_213426 :
    HasPrimeWithExpOne (S_val 213423 213426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213423 213426 ∧ ¬ p ∣ (213426 - 213423) ∧
      ∃ (hNotC : ¬ p ∣ 213426) (hNotB : ¬ p ∣ 213423),
        order_of_C_B_inv_mod_p2 213426 213423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213423 213426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_213423_213426
def row_213759_213762 :
    HasPrimeWithExpOne (S_val 213759 213762) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213759 213762 ∧ ¬ p ∣ (213762 - 213759) ∧
      ∃ (hNotC : ¬ p ∣ 213762) (hNotB : ¬ p ∣ 213759),
        order_of_C_B_inv_mod_p2 213762 213759 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213759 213762 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_213759_213762
def row_214095_214098 :
    HasPrimeWithExpOne (S_val 214095 214098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214095 214098 ∧ ¬ p ∣ (214098 - 214095) ∧
      ∃ (hNotC : ¬ p ∣ 214098) (hNotB : ¬ p ∣ 214095),
        order_of_C_B_inv_mod_p2 214098 214095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214095 214098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_214095_214098
def row_214430_214433 :
    HasPrimeWithExpOne (S_val 214430 214433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214430 214433 ∧ ¬ p ∣ (214433 - 214430) ∧
      ∃ (hNotC : ¬ p ∣ 214433) (hNotB : ¬ p ∣ 214430),
        order_of_C_B_inv_mod_p2 214433 214430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214430 214433 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_214430_214433
def row_214766_214769 :
    HasPrimeWithExpOne (S_val 214766 214769) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214766 214769 ∧ ¬ p ∣ (214769 - 214766) ∧
      ∃ (hNotC : ¬ p ∣ 214769) (hNotB : ¬ p ∣ 214766),
        order_of_C_B_inv_mod_p2 214769 214766 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214766 214769 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_214766_214769
def row_215101_215104 :
    HasPrimeWithExpOne (S_val 215101 215104) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215101 215104 ∧ ¬ p ∣ (215104 - 215101) ∧
      ∃ (hNotC : ¬ p ∣ 215104) (hNotB : ¬ p ∣ 215101),
        order_of_C_B_inv_mod_p2 215104 215101 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215101 215104 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_215101_215104
def row_215437_215440 :
    HasPrimeWithExpOne (S_val 215437 215440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215437 215440 ∧ ¬ p ∣ (215440 - 215437) ∧
      ∃ (hNotC : ¬ p ∣ 215440) (hNotB : ¬ p ∣ 215437),
        order_of_C_B_inv_mod_p2 215440 215437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215437 215440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_215437_215440
def row_215772_215775 :
    HasPrimeWithExpOne (S_val 215772 215775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215772 215775 ∧ ¬ p ∣ (215775 - 215772) ∧
      ∃ (hNotC : ¬ p ∣ 215775) (hNotB : ¬ p ∣ 215772),
        order_of_C_B_inv_mod_p2 215775 215772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215772 215775 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_215772_215775
def row_216108_216111 :
    HasPrimeWithExpOne (S_val 216108 216111) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216108 216111 ∧ ¬ p ∣ (216111 - 216108) ∧
      ∃ (hNotC : ¬ p ∣ 216111) (hNotB : ¬ p ∣ 216108),
        order_of_C_B_inv_mod_p2 216111 216108 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216108 216111 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_216108_216111
def row_216443_216446 :
    HasPrimeWithExpOne (S_val 216443 216446) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216443 216446 ∧ ¬ p ∣ (216446 - 216443) ∧
      ∃ (hNotC : ¬ p ∣ 216446) (hNotB : ¬ p ∣ 216443),
        order_of_C_B_inv_mod_p2 216446 216443 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216443 216446 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_216443_216446
def row_216780_216783 :
    HasPrimeWithExpOne (S_val 216780 216783) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216780 216783 ∧ ¬ p ∣ (216783 - 216780) ∧
      ∃ (hNotC : ¬ p ∣ 216783) (hNotB : ¬ p ∣ 216780),
        order_of_C_B_inv_mod_p2 216783 216780 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216780 216783 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_216780_216783
def row_217114_217117 :
    HasPrimeWithExpOne (S_val 217114 217117) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217114 217117 ∧ ¬ p ∣ (217117 - 217114) ∧
      ∃ (hNotC : ¬ p ∣ 217117) (hNotB : ¬ p ∣ 217114),
        order_of_C_B_inv_mod_p2 217117 217114 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217114 217117 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_217114_217117
def row_217450_217453 :
    HasPrimeWithExpOne (S_val 217450 217453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217450 217453 ∧ ¬ p ∣ (217453 - 217450) ∧
      ∃ (hNotC : ¬ p ∣ 217453) (hNotB : ¬ p ∣ 217450),
        order_of_C_B_inv_mod_p2 217453 217450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217450 217453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_217450_217453
def row_217786_217789 :
    HasPrimeWithExpOne (S_val 217786 217789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217786 217789 ∧ ¬ p ∣ (217789 - 217786) ∧
      ∃ (hNotC : ¬ p ∣ 217789) (hNotB : ¬ p ∣ 217786),
        order_of_C_B_inv_mod_p2 217789 217786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217786 217789 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_217786_217789
def row_218123_218126 :
    HasPrimeWithExpOne (S_val 218123 218126) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218123 218126 ∧ ¬ p ∣ (218126 - 218123) ∧
      ∃ (hNotC : ¬ p ∣ 218126) (hNotB : ¬ p ∣ 218123),
        order_of_C_B_inv_mod_p2 218126 218123 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218123 218126 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_218123_218126
def row_218457_218460 :
    HasPrimeWithExpOne (S_val 218457 218460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218457 218460 ∧ ¬ p ∣ (218460 - 218457) ∧
      ∃ (hNotC : ¬ p ∣ 218460) (hNotB : ¬ p ∣ 218457),
        order_of_C_B_inv_mod_p2 218460 218457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218457 218460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_218457_218460
def row_218792_218795 :
    HasPrimeWithExpOne (S_val 218792 218795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218792 218795 ∧ ¬ p ∣ (218795 - 218792) ∧
      ∃ (hNotC : ¬ p ∣ 218795) (hNotB : ¬ p ∣ 218792),
        order_of_C_B_inv_mod_p2 218795 218792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218792 218795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_218792_218795
def row_219128_219131 :
    HasPrimeWithExpOne (S_val 219128 219131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219128 219131 ∧ ¬ p ∣ (219131 - 219128) ∧
      ∃ (hNotC : ¬ p ∣ 219131) (hNotB : ¬ p ∣ 219128),
        order_of_C_B_inv_mod_p2 219131 219128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219128 219131 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_219128_219131
def row_219463_219466 :
    HasPrimeWithExpOne (S_val 219463 219466) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219463 219466 ∧ ¬ p ∣ (219466 - 219463) ∧
      ∃ (hNotC : ¬ p ∣ 219466) (hNotB : ¬ p ∣ 219463),
        order_of_C_B_inv_mod_p2 219466 219463 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219463 219466 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_219463_219466
def row_219801_219804 :
    HasPrimeWithExpOne (S_val 219801 219804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219801 219804 ∧ ¬ p ∣ (219804 - 219801) ∧
      ∃ (hNotC : ¬ p ∣ 219804) (hNotB : ¬ p ∣ 219801),
        order_of_C_B_inv_mod_p2 219804 219801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219801 219804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_219801_219804
def row_220135_220138 :
    HasPrimeWithExpOne (S_val 220135 220138) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220135 220138 ∧ ¬ p ∣ (220138 - 220135) ∧
      ∃ (hNotC : ¬ p ∣ 220138) (hNotB : ¬ p ∣ 220135),
        order_of_C_B_inv_mod_p2 220138 220135 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220135 220138 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_220135_220138
def row_220471_220474 :
    HasPrimeWithExpOne (S_val 220471 220474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220471 220474 ∧ ¬ p ∣ (220474 - 220471) ∧
      ∃ (hNotC : ¬ p ∣ 220474) (hNotB : ¬ p ∣ 220471),
        order_of_C_B_inv_mod_p2 220474 220471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220471 220474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_220471_220474
def row_220805_220808 :
    HasPrimeWithExpOne (S_val 220805 220808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220805 220808 ∧ ¬ p ∣ (220808 - 220805) ∧
      ∃ (hNotC : ¬ p ∣ 220808) (hNotB : ¬ p ∣ 220805),
        order_of_C_B_inv_mod_p2 220808 220805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220805 220808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_220805_220808
def row_221140_221143 :
    HasPrimeWithExpOne (S_val 221140 221143) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221140 221143 ∧ ¬ p ∣ (221143 - 221140) ∧
      ∃ (hNotC : ¬ p ∣ 221143) (hNotB : ¬ p ∣ 221140),
        order_of_C_B_inv_mod_p2 221143 221140 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221140 221143 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_221140_221143
def row_221478_221481 :
    HasPrimeWithExpOne (S_val 221478 221481) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221478 221481 ∧ ¬ p ∣ (221481 - 221478) ∧
      ∃ (hNotC : ¬ p ∣ 221481) (hNotB : ¬ p ∣ 221478),
        order_of_C_B_inv_mod_p2 221481 221478 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221478 221481 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_221478_221481
def row_221811_221814 :
    HasPrimeWithExpOne (S_val 221811 221814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221811 221814 ∧ ¬ p ∣ (221814 - 221811) ∧
      ∃ (hNotC : ¬ p ∣ 221814) (hNotB : ¬ p ∣ 221811),
        order_of_C_B_inv_mod_p2 221814 221811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221811 221814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_221811_221814
def row_222150_222153 :
    HasPrimeWithExpOne (S_val 222150 222153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222150 222153 ∧ ¬ p ∣ (222153 - 222150) ∧
      ∃ (hNotC : ¬ p ∣ 222153) (hNotB : ¬ p ∣ 222150),
        order_of_C_B_inv_mod_p2 222153 222150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222150 222153 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_222150_222153
def row_222482_222485 :
    HasPrimeWithExpOne (S_val 222482 222485) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222482 222485 ∧ ¬ p ∣ (222485 - 222482) ∧
      ∃ (hNotC : ¬ p ∣ 222485) (hNotB : ¬ p ∣ 222482),
        order_of_C_B_inv_mod_p2 222485 222482 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222482 222485 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_222482_222485
def row_222819_222822 :
    HasPrimeWithExpOne (S_val 222819 222822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222819 222822 ∧ ¬ p ∣ (222822 - 222819) ∧
      ∃ (hNotC : ¬ p ∣ 222822) (hNotB : ¬ p ∣ 222819),
        order_of_C_B_inv_mod_p2 222822 222819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222819 222822 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_222819_222822
def row_223154_223157 :
    HasPrimeWithExpOne (S_val 223154 223157) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223154 223157 ∧ ¬ p ∣ (223157 - 223154) ∧
      ∃ (hNotC : ¬ p ∣ 223157) (hNotB : ¬ p ∣ 223154),
        order_of_C_B_inv_mod_p2 223157 223154 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223154 223157 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_223154_223157
def row_223492_223495 :
    HasPrimeWithExpOne (S_val 223492 223495) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223492 223495 ∧ ¬ p ∣ (223495 - 223492) ∧
      ∃ (hNotC : ¬ p ∣ 223495) (hNotB : ¬ p ∣ 223492),
        order_of_C_B_inv_mod_p2 223495 223492 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223492 223495 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_223492_223495
def row_223825_223828 :
    HasPrimeWithExpOne (S_val 223825 223828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223825 223828 ∧ ¬ p ∣ (223828 - 223825) ∧
      ∃ (hNotC : ¬ p ∣ 223828) (hNotB : ¬ p ∣ 223825),
        order_of_C_B_inv_mod_p2 223828 223825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223825 223828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_223825_223828
def row_224162_224165 :
    HasPrimeWithExpOne (S_val 224162 224165) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224162 224165 ∧ ¬ p ∣ (224165 - 224162) ∧
      ∃ (hNotC : ¬ p ∣ 224165) (hNotB : ¬ p ∣ 224162),
        order_of_C_B_inv_mod_p2 224165 224162 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224162 224165 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_224162_224165
def row_224497_224500 :
    HasPrimeWithExpOne (S_val 224497 224500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224497 224500 ∧ ¬ p ∣ (224500 - 224497) ∧
      ∃ (hNotC : ¬ p ∣ 224500) (hNotB : ¬ p ∣ 224497),
        order_of_C_B_inv_mod_p2 224500 224497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224497 224500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_224497_224500
def row_224832_224835 :
    HasPrimeWithExpOne (S_val 224832 224835) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224832 224835 ∧ ¬ p ∣ (224835 - 224832) ∧
      ∃ (hNotC : ¬ p ∣ 224835) (hNotB : ¬ p ∣ 224832),
        order_of_C_B_inv_mod_p2 224835 224832 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224832 224835 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_224832_224835
def row_225168_225171 :
    HasPrimeWithExpOne (S_val 225168 225171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225168 225171 ∧ ¬ p ∣ (225171 - 225168) ∧
      ∃ (hNotC : ¬ p ∣ 225171) (hNotB : ¬ p ∣ 225168),
        order_of_C_B_inv_mod_p2 225171 225168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225168 225171 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_225168_225171
def row_225505_225508 :
    HasPrimeWithExpOne (S_val 225505 225508) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225505 225508 ∧ ¬ p ∣ (225508 - 225505) ∧
      ∃ (hNotC : ¬ p ∣ 225508) (hNotB : ¬ p ∣ 225505),
        order_of_C_B_inv_mod_p2 225508 225505 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225505 225508 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_225505_225508
def row_225839_225842 :
    HasPrimeWithExpOne (S_val 225839 225842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225839 225842 ∧ ¬ p ∣ (225842 - 225839) ∧
      ∃ (hNotC : ¬ p ∣ 225842) (hNotB : ¬ p ∣ 225839),
        order_of_C_B_inv_mod_p2 225842 225839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225839 225842 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_225839_225842
def row_226174_226177 :
    HasPrimeWithExpOne (S_val 226174 226177) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226174 226177 ∧ ¬ p ∣ (226177 - 226174) ∧
      ∃ (hNotC : ¬ p ∣ 226177) (hNotB : ¬ p ∣ 226174),
        order_of_C_B_inv_mod_p2 226177 226174 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226174 226177 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_226174_226177
def row_226511_226514 :
    HasPrimeWithExpOne (S_val 226511 226514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226511 226514 ∧ ¬ p ∣ (226514 - 226511) ∧
      ∃ (hNotC : ¬ p ∣ 226514) (hNotB : ¬ p ∣ 226511),
        order_of_C_B_inv_mod_p2 226514 226511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226511 226514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_226511_226514
def row_226846_226849 :
    HasPrimeWithExpOne (S_val 226846 226849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226846 226849 ∧ ¬ p ∣ (226849 - 226846) ∧
      ∃ (hNotC : ¬ p ∣ 226849) (hNotB : ¬ p ∣ 226846),
        order_of_C_B_inv_mod_p2 226849 226846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226846 226849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_226846_226849
def row_227183_227186 :
    HasPrimeWithExpOne (S_val 227183 227186) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227183 227186 ∧ ¬ p ∣ (227186 - 227183) ∧
      ∃ (hNotC : ¬ p ∣ 227186) (hNotB : ¬ p ∣ 227183),
        order_of_C_B_inv_mod_p2 227186 227183 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227183 227186 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_227183_227186
def row_227516_227519 :
    HasPrimeWithExpOne (S_val 227516 227519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227516 227519 ∧ ¬ p ∣ (227519 - 227516) ∧
      ∃ (hNotC : ¬ p ∣ 227519) (hNotB : ¬ p ∣ 227516),
        order_of_C_B_inv_mod_p2 227519 227516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227516 227519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_227516_227519
def row_227853_227856 :
    HasPrimeWithExpOne (S_val 227853 227856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227853 227856 ∧ ¬ p ∣ (227856 - 227853) ∧
      ∃ (hNotC : ¬ p ∣ 227856) (hNotB : ¬ p ∣ 227853),
        order_of_C_B_inv_mod_p2 227856 227853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227853 227856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_227853_227856
def row_228190_228193 :
    HasPrimeWithExpOne (S_val 228190 228193) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228190 228193 ∧ ¬ p ∣ (228193 - 228190) ∧
      ∃ (hNotC : ¬ p ∣ 228193) (hNotB : ¬ p ∣ 228190),
        order_of_C_B_inv_mod_p2 228193 228190 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228190 228193 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_228190_228193
def row_228524_228527 :
    HasPrimeWithExpOne (S_val 228524 228527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228524 228527 ∧ ¬ p ∣ (228527 - 228524) ∧
      ∃ (hNotC : ¬ p ∣ 228527) (hNotB : ¬ p ∣ 228524),
        order_of_C_B_inv_mod_p2 228527 228524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228524 228527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_228524_228527
def row_228859_228862 :
    HasPrimeWithExpOne (S_val 228859 228862) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228859 228862 ∧ ¬ p ∣ (228862 - 228859) ∧
      ∃ (hNotC : ¬ p ∣ 228862) (hNotB : ¬ p ∣ 228859),
        order_of_C_B_inv_mod_p2 228862 228859 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228859 228862 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_228859_228862
def row_229196_229199 :
    HasPrimeWithExpOne (S_val 229196 229199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229196 229199 ∧ ¬ p ∣ (229199 - 229196) ∧
      ∃ (hNotC : ¬ p ∣ 229199) (hNotB : ¬ p ∣ 229196),
        order_of_C_B_inv_mod_p2 229199 229196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229196 229199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_229196_229199
def row_229530_229533 :
    HasPrimeWithExpOne (S_val 229530 229533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229530 229533 ∧ ¬ p ∣ (229533 - 229530) ∧
      ∃ (hNotC : ¬ p ∣ 229533) (hNotB : ¬ p ∣ 229530),
        order_of_C_B_inv_mod_p2 229533 229530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229530 229533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_229530_229533
def row_229866_229869 :
    HasPrimeWithExpOne (S_val 229866 229869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229866 229869 ∧ ¬ p ∣ (229869 - 229866) ∧
      ∃ (hNotC : ¬ p ∣ 229869) (hNotB : ¬ p ∣ 229866),
        order_of_C_B_inv_mod_p2 229869 229866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229866 229869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_229866_229869
def row_230203_230206 :
    HasPrimeWithExpOne (S_val 230203 230206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230203 230206 ∧ ¬ p ∣ (230206 - 230203) ∧
      ∃ (hNotC : ¬ p ∣ 230206) (hNotB : ¬ p ∣ 230203),
        order_of_C_B_inv_mod_p2 230206 230203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230203 230206 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_230203_230206
def row_230537_230540 :
    HasPrimeWithExpOne (S_val 230537 230540) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230537 230540 ∧ ¬ p ∣ (230540 - 230537) ∧
      ∃ (hNotC : ¬ p ∣ 230540) (hNotB : ¬ p ∣ 230537),
        order_of_C_B_inv_mod_p2 230540 230537 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230537 230540 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_230537_230540
def row_230873_230876 :
    HasPrimeWithExpOne (S_val 230873 230876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230873 230876 ∧ ¬ p ∣ (230876 - 230873) ∧
      ∃ (hNotC : ¬ p ∣ 230876) (hNotB : ¬ p ∣ 230873),
        order_of_C_B_inv_mod_p2 230876 230873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230873 230876 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_230873_230876
def row_231208_231211 :
    HasPrimeWithExpOne (S_val 231208 231211) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231208 231211 ∧ ¬ p ∣ (231211 - 231208) ∧
      ∃ (hNotC : ¬ p ∣ 231211) (hNotB : ¬ p ∣ 231208),
        order_of_C_B_inv_mod_p2 231211 231208 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231208 231211 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_231208_231211
def row_231544_231547 :
    HasPrimeWithExpOne (S_val 231544 231547) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231544 231547 ∧ ¬ p ∣ (231547 - 231544) ∧
      ∃ (hNotC : ¬ p ∣ 231547) (hNotB : ¬ p ∣ 231544),
        order_of_C_B_inv_mod_p2 231547 231544 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231544 231547 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_231544_231547
def row_231879_231882 :
    HasPrimeWithExpOne (S_val 231879 231882) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231879 231882 ∧ ¬ p ∣ (231882 - 231879) ∧
      ∃ (hNotC : ¬ p ∣ 231882) (hNotB : ¬ p ∣ 231879),
        order_of_C_B_inv_mod_p2 231882 231879 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231879 231882 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_231879_231882
def row_232215_232218 :
    HasPrimeWithExpOne (S_val 232215 232218) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232215 232218 ∧ ¬ p ∣ (232218 - 232215) ∧
      ∃ (hNotC : ¬ p ∣ 232218) (hNotB : ¬ p ∣ 232215),
        order_of_C_B_inv_mod_p2 232218 232215 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232215 232218 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_232215_232218
def row_232551_232554 :
    HasPrimeWithExpOne (S_val 232551 232554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232551 232554 ∧ ¬ p ∣ (232554 - 232551) ∧
      ∃ (hNotC : ¬ p ∣ 232554) (hNotB : ¬ p ∣ 232551),
        order_of_C_B_inv_mod_p2 232554 232551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232551 232554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_232551_232554
def row_232886_232889 :
    HasPrimeWithExpOne (S_val 232886 232889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232886 232889 ∧ ¬ p ∣ (232889 - 232886) ∧
      ∃ (hNotC : ¬ p ∣ 232889) (hNotB : ¬ p ∣ 232886),
        order_of_C_B_inv_mod_p2 232889 232886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232886 232889 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_232886_232889
def row_233222_233225 :
    HasPrimeWithExpOne (S_val 233222 233225) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233222 233225 ∧ ¬ p ∣ (233225 - 233222) ∧
      ∃ (hNotC : ¬ p ∣ 233225) (hNotB : ¬ p ∣ 233222),
        order_of_C_B_inv_mod_p2 233225 233222 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233222 233225 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_233222_233225
def row_233558_233561 :
    HasPrimeWithExpOne (S_val 233558 233561) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233558 233561 ∧ ¬ p ∣ (233561 - 233558) ∧
      ∃ (hNotC : ¬ p ∣ 233561) (hNotB : ¬ p ∣ 233558),
        order_of_C_B_inv_mod_p2 233561 233558 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233558 233561 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_233558_233561
def row_233893_233896 :
    HasPrimeWithExpOne (S_val 233893 233896) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233893 233896 ∧ ¬ p ∣ (233896 - 233893) ∧
      ∃ (hNotC : ¬ p ∣ 233896) (hNotB : ¬ p ∣ 233893),
        order_of_C_B_inv_mod_p2 233896 233893 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233893 233896 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_233893_233896
def row_234226_234229 :
    HasPrimeWithExpOne (S_val 234226 234229) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234226 234229 ∧ ¬ p ∣ (234229 - 234226) ∧
      ∃ (hNotC : ¬ p ∣ 234229) (hNotB : ¬ p ∣ 234226),
        order_of_C_B_inv_mod_p2 234229 234226 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234226 234229 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_234226_234229
def row_234564_234567 :
    HasPrimeWithExpOne (S_val 234564 234567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234564 234567 ∧ ¬ p ∣ (234567 - 234564) ∧
      ∃ (hNotC : ¬ p ∣ 234567) (hNotB : ¬ p ∣ 234564),
        order_of_C_B_inv_mod_p2 234567 234564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234564 234567 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_234564_234567
def row_234900_234903 :
    HasPrimeWithExpOne (S_val 234900 234903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234900 234903 ∧ ¬ p ∣ (234903 - 234900) ∧
      ∃ (hNotC : ¬ p ∣ 234903) (hNotB : ¬ p ∣ 234900),
        order_of_C_B_inv_mod_p2 234903 234900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234900 234903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_234900_234903
def row_235235_235238 :
    HasPrimeWithExpOne (S_val 235235 235238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235235 235238 ∧ ¬ p ∣ (235238 - 235235) ∧
      ∃ (hNotC : ¬ p ∣ 235238) (hNotB : ¬ p ∣ 235235),
        order_of_C_B_inv_mod_p2 235238 235235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235235 235238 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_235235_235238
def row_235572_235575 :
    HasPrimeWithExpOne (S_val 235572 235575) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235572 235575 ∧ ¬ p ∣ (235575 - 235572) ∧
      ∃ (hNotC : ¬ p ∣ 235575) (hNotB : ¬ p ∣ 235572),
        order_of_C_B_inv_mod_p2 235575 235572 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235572 235575 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_235572_235575
def row_235906_235909 :
    HasPrimeWithExpOne (S_val 235906 235909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235906 235909 ∧ ¬ p ∣ (235909 - 235906) ∧
      ∃ (hNotC : ¬ p ∣ 235909) (hNotB : ¬ p ∣ 235906),
        order_of_C_B_inv_mod_p2 235909 235906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235906 235909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_235906_235909
def row_236243_236246 :
    HasPrimeWithExpOne (S_val 236243 236246) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236243 236246 ∧ ¬ p ∣ (236246 - 236243) ∧
      ∃ (hNotC : ¬ p ∣ 236246) (hNotB : ¬ p ∣ 236243),
        order_of_C_B_inv_mod_p2 236246 236243 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236243 236246 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_236243_236246
def row_236576_236579 :
    HasPrimeWithExpOne (S_val 236576 236579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236576 236579 ∧ ¬ p ∣ (236579 - 236576) ∧
      ∃ (hNotC : ¬ p ∣ 236579) (hNotB : ¬ p ∣ 236576),
        order_of_C_B_inv_mod_p2 236579 236576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236576 236579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_236576_236579
def row_236914_236917 :
    HasPrimeWithExpOne (S_val 236914 236917) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236914 236917 ∧ ¬ p ∣ (236917 - 236914) ∧
      ∃ (hNotC : ¬ p ∣ 236917) (hNotB : ¬ p ∣ 236914),
        order_of_C_B_inv_mod_p2 236917 236914 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236914 236917 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_236914_236917
def row_237248_237251 :
    HasPrimeWithExpOne (S_val 237248 237251) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237248 237251 ∧ ¬ p ∣ (237251 - 237248) ∧
      ∃ (hNotC : ¬ p ∣ 237251) (hNotB : ¬ p ∣ 237248),
        order_of_C_B_inv_mod_p2 237251 237248 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237248 237251 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_237248_237251
def row_237583_237586 :
    HasPrimeWithExpOne (S_val 237583 237586) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237583 237586 ∧ ¬ p ∣ (237586 - 237583) ∧
      ∃ (hNotC : ¬ p ∣ 237586) (hNotB : ¬ p ∣ 237583),
        order_of_C_B_inv_mod_p2 237586 237583 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237583 237586 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_237583_237586
def row_237920_237923 :
    HasPrimeWithExpOne (S_val 237920 237923) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237920 237923 ∧ ¬ p ∣ (237923 - 237920) ∧
      ∃ (hNotC : ¬ p ∣ 237923) (hNotB : ¬ p ∣ 237920),
        order_of_C_B_inv_mod_p2 237923 237920 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237920 237923 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_237920_237923
def row_238253_238256 :
    HasPrimeWithExpOne (S_val 238253 238256) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238253 238256 ∧ ¬ p ∣ (238256 - 238253) ∧
      ∃ (hNotC : ¬ p ∣ 238256) (hNotB : ¬ p ∣ 238253),
        order_of_C_B_inv_mod_p2 238256 238253 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238253 238256 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_238253_238256
def row_238592_238595 :
    HasPrimeWithExpOne (S_val 238592 238595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238592 238595 ∧ ¬ p ∣ (238595 - 238592) ∧
      ∃ (hNotC : ¬ p ∣ 238595) (hNotB : ¬ p ∣ 238592),
        order_of_C_B_inv_mod_p2 238595 238592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238592 238595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_238592_238595
def row_238928_238931 :
    HasPrimeWithExpOne (S_val 238928 238931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238928 238931 ∧ ¬ p ∣ (238931 - 238928) ∧
      ∃ (hNotC : ¬ p ∣ 238931) (hNotB : ¬ p ∣ 238928),
        order_of_C_B_inv_mod_p2 238931 238928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238928 238931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_238928_238931
def row_239261_239264 :
    HasPrimeWithExpOne (S_val 239261 239264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239261 239264 ∧ ¬ p ∣ (239264 - 239261) ∧
      ∃ (hNotC : ¬ p ∣ 239264) (hNotB : ¬ p ∣ 239261),
        order_of_C_B_inv_mod_p2 239264 239261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239261 239264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_239261_239264
def row_239597_239600 :
    HasPrimeWithExpOne (S_val 239597 239600) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239597 239600 ∧ ¬ p ∣ (239600 - 239597) ∧
      ∃ (hNotC : ¬ p ∣ 239600) (hNotB : ¬ p ∣ 239597),
        order_of_C_B_inv_mod_p2 239600 239597 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239597 239600 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_239597_239600
def row_239934_239937 :
    HasPrimeWithExpOne (S_val 239934 239937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239934 239937 ∧ ¬ p ∣ (239937 - 239934) ∧
      ∃ (hNotC : ¬ p ∣ 239937) (hNotB : ¬ p ∣ 239934),
        order_of_C_B_inv_mod_p2 239937 239934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239934 239937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_239934_239937
def row_240267_240270 :
    HasPrimeWithExpOne (S_val 240267 240270) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240267 240270 ∧ ¬ p ∣ (240270 - 240267) ∧
      ∃ (hNotC : ¬ p ∣ 240270) (hNotB : ¬ p ∣ 240267),
        order_of_C_B_inv_mod_p2 240270 240267 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240267 240270 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_240267_240270
def row_240604_240607 :
    HasPrimeWithExpOne (S_val 240604 240607) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240604 240607 ∧ ¬ p ∣ (240607 - 240604) ∧
      ∃ (hNotC : ¬ p ∣ 240607) (hNotB : ¬ p ∣ 240604),
        order_of_C_B_inv_mod_p2 240607 240604 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240604 240607 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_240604_240607
def row_240942_240945 :
    HasPrimeWithExpOne (S_val 240942 240945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240942 240945 ∧ ¬ p ∣ (240945 - 240942) ∧
      ∃ (hNotC : ¬ p ∣ 240945) (hNotB : ¬ p ∣ 240942),
        order_of_C_B_inv_mod_p2 240945 240942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240942 240945 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_240942_240945
def row_241274_241277 :
    HasPrimeWithExpOne (S_val 241274 241277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241274 241277 ∧ ¬ p ∣ (241277 - 241274) ∧
      ∃ (hNotC : ¬ p ∣ 241277) (hNotB : ¬ p ∣ 241274),
        order_of_C_B_inv_mod_p2 241277 241274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241274 241277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_241274_241277
def row_241611_241614 :
    HasPrimeWithExpOne (S_val 241611 241614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241611 241614 ∧ ¬ p ∣ (241614 - 241611) ∧
      ∃ (hNotC : ¬ p ∣ 241614) (hNotB : ¬ p ∣ 241611),
        order_of_C_B_inv_mod_p2 241614 241611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241611 241614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_241611_241614
def row_241945_241948 :
    HasPrimeWithExpOne (S_val 241945 241948) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241945 241948 ∧ ¬ p ∣ (241948 - 241945) ∧
      ∃ (hNotC : ¬ p ∣ 241948) (hNotB : ¬ p ∣ 241945),
        order_of_C_B_inv_mod_p2 241948 241945 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241945 241948 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_241945_241948
def row_242282_242285 :
    HasPrimeWithExpOne (S_val 242282 242285) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242282 242285 ∧ ¬ p ∣ (242285 - 242282) ∧
      ∃ (hNotC : ¬ p ∣ 242285) (hNotB : ¬ p ∣ 242282),
        order_of_C_B_inv_mod_p2 242285 242282 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242282 242285 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_242282_242285
def row_242618_242621 :
    HasPrimeWithExpOne (S_val 242618 242621) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242618 242621 ∧ ¬ p ∣ (242621 - 242618) ∧
      ∃ (hNotC : ¬ p ∣ 242621) (hNotB : ¬ p ∣ 242618),
        order_of_C_B_inv_mod_p2 242621 242618 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242618 242621 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_242618_242621
def row_242956_242959 :
    HasPrimeWithExpOne (S_val 242956 242959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242956 242959 ∧ ¬ p ∣ (242959 - 242956) ∧
      ∃ (hNotC : ¬ p ∣ 242959) (hNotB : ¬ p ∣ 242956),
        order_of_C_B_inv_mod_p2 242959 242956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242956 242959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_242956_242959
def row_243288_243291 :
    HasPrimeWithExpOne (S_val 243288 243291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243288 243291 ∧ ¬ p ∣ (243291 - 243288) ∧
      ∃ (hNotC : ¬ p ∣ 243291) (hNotB : ¬ p ∣ 243288),
        order_of_C_B_inv_mod_p2 243291 243288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243288 243291 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_243288_243291
def row_243625_243628 :
    HasPrimeWithExpOne (S_val 243625 243628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243625 243628 ∧ ¬ p ∣ (243628 - 243625) ∧
      ∃ (hNotC : ¬ p ∣ 243628) (hNotB : ¬ p ∣ 243625),
        order_of_C_B_inv_mod_p2 243628 243625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243625 243628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_243625_243628
def row_243960_243963 :
    HasPrimeWithExpOne (S_val 243960 243963) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243960 243963 ∧ ¬ p ∣ (243963 - 243960) ∧
      ∃ (hNotC : ¬ p ∣ 243963) (hNotB : ¬ p ∣ 243960),
        order_of_C_B_inv_mod_p2 243963 243960 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243960 243963 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_243960_243963
def row_244295_244298 :
    HasPrimeWithExpOne (S_val 244295 244298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244295 244298 ∧ ¬ p ∣ (244298 - 244295) ∧
      ∃ (hNotC : ¬ p ∣ 244298) (hNotB : ¬ p ∣ 244295),
        order_of_C_B_inv_mod_p2 244298 244295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244295 244298 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_244295_244298
def row_244631_244634 :
    HasPrimeWithExpOne (S_val 244631 244634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244631 244634 ∧ ¬ p ∣ (244634 - 244631) ∧
      ∃ (hNotC : ¬ p ∣ 244634) (hNotB : ¬ p ∣ 244631),
        order_of_C_B_inv_mod_p2 244634 244631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244631 244634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_244631_244634
def row_244964_244967 :
    HasPrimeWithExpOne (S_val 244964 244967) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244964 244967 ∧ ¬ p ∣ (244967 - 244964) ∧
      ∃ (hNotC : ¬ p ∣ 244967) (hNotB : ¬ p ∣ 244964),
        order_of_C_B_inv_mod_p2 244967 244964 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244964 244967 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_244964_244967
def row_245302_245305 :
    HasPrimeWithExpOne (S_val 245302 245305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245302 245305 ∧ ¬ p ∣ (245305 - 245302) ∧
      ∃ (hNotC : ¬ p ∣ 245305) (hNotB : ¬ p ∣ 245302),
        order_of_C_B_inv_mod_p2 245305 245302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245302 245305 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_245302_245305
def row_245639_245642 :
    HasPrimeWithExpOne (S_val 245639 245642) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245639 245642 ∧ ¬ p ∣ (245642 - 245639) ∧
      ∃ (hNotC : ¬ p ∣ 245642) (hNotB : ¬ p ∣ 245639),
        order_of_C_B_inv_mod_p2 245642 245639 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245639 245642 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_245639_245642
def row_245972_245975 :
    HasPrimeWithExpOne (S_val 245972 245975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245972 245975 ∧ ¬ p ∣ (245975 - 245972) ∧
      ∃ (hNotC : ¬ p ∣ 245975) (hNotB : ¬ p ∣ 245972),
        order_of_C_B_inv_mod_p2 245975 245972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245972 245975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_245972_245975
def row_246309_246312 :
    HasPrimeWithExpOne (S_val 246309 246312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246309 246312 ∧ ¬ p ∣ (246312 - 246309) ∧
      ∃ (hNotC : ¬ p ∣ 246312) (hNotB : ¬ p ∣ 246309),
        order_of_C_B_inv_mod_p2 246312 246309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246309 246312 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_246309_246312
def row_246646_246649 :
    HasPrimeWithExpOne (S_val 246646 246649) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246646 246649 ∧ ¬ p ∣ (246649 - 246646) ∧
      ∃ (hNotC : ¬ p ∣ 246649) (hNotB : ¬ p ∣ 246646),
        order_of_C_B_inv_mod_p2 246649 246646 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246646 246649 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_246646_246649
def row_246982_246985 :
    HasPrimeWithExpOne (S_val 246982 246985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246982 246985 ∧ ¬ p ∣ (246985 - 246982) ∧
      ∃ (hNotC : ¬ p ∣ 246985) (hNotB : ¬ p ∣ 246982),
        order_of_C_B_inv_mod_p2 246985 246982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246982 246985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_246982_246985
def row_247316_247319 :
    HasPrimeWithExpOne (S_val 247316 247319) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247316 247319 ∧ ¬ p ∣ (247319 - 247316) ∧
      ∃ (hNotC : ¬ p ∣ 247319) (hNotB : ¬ p ∣ 247316),
        order_of_C_B_inv_mod_p2 247319 247316 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247316 247319 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_247316_247319
def row_247652_247655 :
    HasPrimeWithExpOne (S_val 247652 247655) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247652 247655 ∧ ¬ p ∣ (247655 - 247652) ∧
      ∃ (hNotC : ¬ p ∣ 247655) (hNotB : ¬ p ∣ 247652),
        order_of_C_B_inv_mod_p2 247655 247652 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247652 247655 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_247652_247655
def row_247987_247990 :
    HasPrimeWithExpOne (S_val 247987 247990) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247987 247990 ∧ ¬ p ∣ (247990 - 247987) ∧
      ∃ (hNotC : ¬ p ∣ 247990) (hNotB : ¬ p ∣ 247987),
        order_of_C_B_inv_mod_p2 247990 247987 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247987 247990 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_247987_247990
def row_248323_248326 :
    HasPrimeWithExpOne (S_val 248323 248326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248323 248326 ∧ ¬ p ∣ (248326 - 248323) ∧
      ∃ (hNotC : ¬ p ∣ 248326) (hNotB : ¬ p ∣ 248323),
        order_of_C_B_inv_mod_p2 248326 248323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248323 248326 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_248323_248326
def row_248660_248663 :
    HasPrimeWithExpOne (S_val 248660 248663) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248660 248663 ∧ ¬ p ∣ (248663 - 248660) ∧
      ∃ (hNotC : ¬ p ∣ 248663) (hNotB : ¬ p ∣ 248660),
        order_of_C_B_inv_mod_p2 248663 248660 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248660 248663 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_248660_248663
def row_248993_248996 :
    HasPrimeWithExpOne (S_val 248993 248996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248993 248996 ∧ ¬ p ∣ (248996 - 248993) ∧
      ∃ (hNotC : ¬ p ∣ 248996) (hNotB : ¬ p ∣ 248993),
        order_of_C_B_inv_mod_p2 248996 248993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248993 248996 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_248993_248996
def row_249330_249333 :
    HasPrimeWithExpOne (S_val 249330 249333) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249330 249333 ∧ ¬ p ∣ (249333 - 249330) ∧
      ∃ (hNotC : ¬ p ∣ 249333) (hNotB : ¬ p ∣ 249330),
        order_of_C_B_inv_mod_p2 249333 249330 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 249330 249333 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_249330_249333
def row_249663_249666 :
    HasPrimeWithExpOne (S_val 249663 249666) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249663 249666 ∧ ¬ p ∣ (249666 - 249663) ∧
      ∃ (hNotC : ¬ p ∣ 249666) (hNotB : ¬ p ∣ 249663),
        order_of_C_B_inv_mod_p2 249666 249663 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 249663 249666 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_249663_249666
def row_250002_250005 :
    HasPrimeWithExpOne (S_val 250002 250005) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250002 250005 ∧ ¬ p ∣ (250005 - 250002) ∧
      ∃ (hNotC : ¬ p ∣ 250005) (hNotB : ¬ p ∣ 250002),
        order_of_C_B_inv_mod_p2 250005 250002 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250002 250005 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_250002_250005
def row_250336_250339 :
    HasPrimeWithExpOne (S_val 250336 250339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250336 250339 ∧ ¬ p ∣ (250339 - 250336) ∧
      ∃ (hNotC : ¬ p ∣ 250339) (hNotB : ¬ p ∣ 250336),
        order_of_C_B_inv_mod_p2 250339 250336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250336 250339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_250336_250339
def row_250671_250674 :
    HasPrimeWithExpOne (S_val 250671 250674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250671 250674 ∧ ¬ p ∣ (250674 - 250671) ∧
      ∃ (hNotC : ¬ p ∣ 250674) (hNotB : ¬ p ∣ 250671),
        order_of_C_B_inv_mod_p2 250674 250671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250671 250674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_250671_250674
def row_251007_251010 :
    HasPrimeWithExpOne (S_val 251007 251010) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251007 251010 ∧ ¬ p ∣ (251010 - 251007) ∧
      ∃ (hNotC : ¬ p ∣ 251010) (hNotB : ¬ p ∣ 251007),
        order_of_C_B_inv_mod_p2 251010 251007 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251007 251010 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_251007_251010
def row_251343_251346 :
    HasPrimeWithExpOne (S_val 251343 251346) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251343 251346 ∧ ¬ p ∣ (251346 - 251343) ∧
      ∃ (hNotC : ¬ p ∣ 251346) (hNotB : ¬ p ∣ 251343),
        order_of_C_B_inv_mod_p2 251346 251343 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251343 251346 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_251343_251346
def row_251678_251681 :
    HasPrimeWithExpOne (S_val 251678 251681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251678 251681 ∧ ¬ p ∣ (251681 - 251678) ∧
      ∃ (hNotC : ¬ p ∣ 251681) (hNotB : ¬ p ∣ 251678),
        order_of_C_B_inv_mod_p2 251681 251678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251678 251681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_251678_251681
def row_252014_252017 :
    HasPrimeWithExpOne (S_val 252014 252017) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252014 252017 ∧ ¬ p ∣ (252017 - 252014) ∧
      ∃ (hNotC : ¬ p ∣ 252017) (hNotB : ¬ p ∣ 252014),
        order_of_C_B_inv_mod_p2 252017 252014 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252014 252017 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_252014_252017
def row_252349_252352 :
    HasPrimeWithExpOne (S_val 252349 252352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252349 252352 ∧ ¬ p ∣ (252352 - 252349) ∧
      ∃ (hNotC : ¬ p ∣ 252352) (hNotB : ¬ p ∣ 252349),
        order_of_C_B_inv_mod_p2 252352 252349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252349 252352 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_252349_252352
def row_252684_252687 :
    HasPrimeWithExpOne (S_val 252684 252687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252684 252687 ∧ ¬ p ∣ (252687 - 252684) ∧
      ∃ (hNotC : ¬ p ∣ 252687) (hNotB : ¬ p ∣ 252684),
        order_of_C_B_inv_mod_p2 252687 252684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252684 252687 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_252684_252687
def row_253020_253023 :
    HasPrimeWithExpOne (S_val 253020 253023) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253020 253023 ∧ ¬ p ∣ (253023 - 253020) ∧
      ∃ (hNotC : ¬ p ∣ 253023) (hNotB : ¬ p ∣ 253020),
        order_of_C_B_inv_mod_p2 253023 253020 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253020 253023 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_253020_253023
def row_253357_253360 :
    HasPrimeWithExpOne (S_val 253357 253360) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253357 253360 ∧ ¬ p ∣ (253360 - 253357) ∧
      ∃ (hNotC : ¬ p ∣ 253360) (hNotB : ¬ p ∣ 253357),
        order_of_C_B_inv_mod_p2 253360 253357 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253357 253360 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_253357_253360
def row_253692_253695 :
    HasPrimeWithExpOne (S_val 253692 253695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253692 253695 ∧ ¬ p ∣ (253695 - 253692) ∧
      ∃ (hNotC : ¬ p ∣ 253695) (hNotB : ¬ p ∣ 253692),
        order_of_C_B_inv_mod_p2 253695 253692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253692 253695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_253692_253695
def row_254027_254030 :
    HasPrimeWithExpOne (S_val 254027 254030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254027 254030 ∧ ¬ p ∣ (254030 - 254027) ∧
      ∃ (hNotC : ¬ p ∣ 254030) (hNotB : ¬ p ∣ 254027),
        order_of_C_B_inv_mod_p2 254030 254027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254027 254030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_254027_254030
def row_254363_254366 :
    HasPrimeWithExpOne (S_val 254363 254366) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254363 254366 ∧ ¬ p ∣ (254366 - 254363) ∧
      ∃ (hNotC : ¬ p ∣ 254366) (hNotB : ¬ p ∣ 254363),
        order_of_C_B_inv_mod_p2 254366 254363 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254363 254366 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_254363_254366
def row_254697_254700 :
    HasPrimeWithExpOne (S_val 254697 254700) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254697 254700 ∧ ¬ p ∣ (254700 - 254697) ∧
      ∃ (hNotC : ¬ p ∣ 254700) (hNotB : ¬ p ∣ 254697),
        order_of_C_B_inv_mod_p2 254700 254697 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254697 254700 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_254697_254700
def row_255035_255038 :
    HasPrimeWithExpOne (S_val 255035 255038) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255035 255038 ∧ ¬ p ∣ (255038 - 255035) ∧
      ∃ (hNotC : ¬ p ∣ 255038) (hNotB : ¬ p ∣ 255035),
        order_of_C_B_inv_mod_p2 255038 255035 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255035 255038 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_255035_255038
def row_255370_255373 :
    HasPrimeWithExpOne (S_val 255370 255373) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255370 255373 ∧ ¬ p ∣ (255373 - 255370) ∧
      ∃ (hNotC : ¬ p ∣ 255373) (hNotB : ¬ p ∣ 255370),
        order_of_C_B_inv_mod_p2 255373 255370 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255370 255373 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_255370_255373
def row_255706_255709 :
    HasPrimeWithExpOne (S_val 255706 255709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255706 255709 ∧ ¬ p ∣ (255709 - 255706) ∧
      ∃ (hNotC : ¬ p ∣ 255709) (hNotB : ¬ p ∣ 255706),
        order_of_C_B_inv_mod_p2 255709 255706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255706 255709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_255706_255709
def row_256042_256045 :
    HasPrimeWithExpOne (S_val 256042 256045) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256042 256045 ∧ ¬ p ∣ (256045 - 256042) ∧
      ∃ (hNotC : ¬ p ∣ 256045) (hNotB : ¬ p ∣ 256042),
        order_of_C_B_inv_mod_p2 256045 256042 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256042 256045 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_256042_256045
def row_256376_256379 :
    HasPrimeWithExpOne (S_val 256376 256379) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256376 256379 ∧ ¬ p ∣ (256379 - 256376) ∧
      ∃ (hNotC : ¬ p ∣ 256379) (hNotB : ¬ p ∣ 256376),
        order_of_C_B_inv_mod_p2 256379 256376 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256376 256379 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_256376_256379
def row_256711_256714 :
    HasPrimeWithExpOne (S_val 256711 256714) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256711 256714 ∧ ¬ p ∣ (256714 - 256711) ∧
      ∃ (hNotC : ¬ p ∣ 256714) (hNotB : ¬ p ∣ 256711),
        order_of_C_B_inv_mod_p2 256714 256711 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256711 256714 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_256711_256714
def row_257049_257052 :
    HasPrimeWithExpOne (S_val 257049 257052) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257049 257052 ∧ ¬ p ∣ (257052 - 257049) ∧
      ∃ (hNotC : ¬ p ∣ 257052) (hNotB : ¬ p ∣ 257049),
        order_of_C_B_inv_mod_p2 257052 257049 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257049 257052 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_257049_257052
def row_257381_257384 :
    HasPrimeWithExpOne (S_val 257381 257384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257381 257384 ∧ ¬ p ∣ (257384 - 257381) ∧
      ∃ (hNotC : ¬ p ∣ 257384) (hNotB : ¬ p ∣ 257381),
        order_of_C_B_inv_mod_p2 257384 257381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257381 257384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_257381_257384
def row_257718_257721 :
    HasPrimeWithExpOne (S_val 257718 257721) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257718 257721 ∧ ¬ p ∣ (257721 - 257718) ∧
      ∃ (hNotC : ¬ p ∣ 257721) (hNotB : ¬ p ∣ 257718),
        order_of_C_B_inv_mod_p2 257721 257718 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257718 257721 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_257718_257721
def row_258055_258058 :
    HasPrimeWithExpOne (S_val 258055 258058) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258055 258058 ∧ ¬ p ∣ (258058 - 258055) ∧
      ∃ (hNotC : ¬ p ∣ 258058) (hNotB : ¬ p ∣ 258055),
        order_of_C_B_inv_mod_p2 258058 258055 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258055 258058 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_258055_258058
def row_258390_258393 :
    HasPrimeWithExpOne (S_val 258390 258393) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258390 258393 ∧ ¬ p ∣ (258393 - 258390) ∧
      ∃ (hNotC : ¬ p ∣ 258393) (hNotB : ¬ p ∣ 258390),
        order_of_C_B_inv_mod_p2 258393 258390 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258390 258393 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_258390_258393
def row_258725_258728 :
    HasPrimeWithExpOne (S_val 258725 258728) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258725 258728 ∧ ¬ p ∣ (258728 - 258725) ∧
      ∃ (hNotC : ¬ p ∣ 258728) (hNotB : ¬ p ∣ 258725),
        order_of_C_B_inv_mod_p2 258728 258725 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258725 258728 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_258725_258728
def row_259060_259063 :
    HasPrimeWithExpOne (S_val 259060 259063) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259060 259063 ∧ ¬ p ∣ (259063 - 259060) ∧
      ∃ (hNotC : ¬ p ∣ 259063) (hNotB : ¬ p ∣ 259060),
        order_of_C_B_inv_mod_p2 259063 259060 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259060 259063 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_259060_259063
def row_259397_259400 :
    HasPrimeWithExpOne (S_val 259397 259400) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259397 259400 ∧ ¬ p ∣ (259400 - 259397) ∧
      ∃ (hNotC : ¬ p ∣ 259400) (hNotB : ¬ p ∣ 259397),
        order_of_C_B_inv_mod_p2 259400 259397 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259397 259400 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_259397_259400
def row_259731_259734 :
    HasPrimeWithExpOne (S_val 259731 259734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259731 259734 ∧ ¬ p ∣ (259734 - 259731) ∧
      ∃ (hNotC : ¬ p ∣ 259734) (hNotB : ¬ p ∣ 259731),
        order_of_C_B_inv_mod_p2 259734 259731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259731 259734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_259731_259734
def row_260067_260070 :
    HasPrimeWithExpOne (S_val 260067 260070) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260067 260070 ∧ ¬ p ∣ (260070 - 260067) ∧
      ∃ (hNotC : ¬ p ∣ 260070) (hNotB : ¬ p ∣ 260067),
        order_of_C_B_inv_mod_p2 260070 260067 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260067 260070 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_260067_260070
def row_260402_260405 :
    HasPrimeWithExpOne (S_val 260402 260405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260402 260405 ∧ ¬ p ∣ (260405 - 260402) ∧
      ∃ (hNotC : ¬ p ∣ 260405) (hNotB : ¬ p ∣ 260402),
        order_of_C_B_inv_mod_p2 260405 260402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260402 260405 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_260402_260405
def row_260739_260742 :
    HasPrimeWithExpOne (S_val 260739 260742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260739 260742 ∧ ¬ p ∣ (260742 - 260739) ∧
      ∃ (hNotC : ¬ p ∣ 260742) (hNotB : ¬ p ∣ 260739),
        order_of_C_B_inv_mod_p2 260742 260739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260739 260742 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_260739_260742
def row_261074_261077 :
    HasPrimeWithExpOne (S_val 261074 261077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261074 261077 ∧ ¬ p ∣ (261077 - 261074) ∧
      ∃ (hNotC : ¬ p ∣ 261077) (hNotB : ¬ p ∣ 261074),
        order_of_C_B_inv_mod_p2 261077 261074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261074 261077 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_261074_261077
def row_261409_261412 :
    HasPrimeWithExpOne (S_val 261409 261412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261409 261412 ∧ ¬ p ∣ (261412 - 261409) ∧
      ∃ (hNotC : ¬ p ∣ 261412) (hNotB : ¬ p ∣ 261409),
        order_of_C_B_inv_mod_p2 261412 261409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261409 261412 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_261409_261412
def row_261745_261748 :
    HasPrimeWithExpOne (S_val 261745 261748) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261745 261748 ∧ ¬ p ∣ (261748 - 261745) ∧
      ∃ (hNotC : ¬ p ∣ 261748) (hNotB : ¬ p ∣ 261745),
        order_of_C_B_inv_mod_p2 261748 261745 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261745 261748 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_261745_261748
def row_262078_262081 :
    HasPrimeWithExpOne (S_val 262078 262081) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262078 262081 ∧ ¬ p ∣ (262081 - 262078) ∧
      ∃ (hNotC : ¬ p ∣ 262081) (hNotB : ¬ p ∣ 262078),
        order_of_C_B_inv_mod_p2 262081 262078 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262078 262081 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_262078_262081
def row_262416_262419 :
    HasPrimeWithExpOne (S_val 262416 262419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262416 262419 ∧ ¬ p ∣ (262419 - 262416) ∧
      ∃ (hNotC : ¬ p ∣ 262419) (hNotB : ¬ p ∣ 262416),
        order_of_C_B_inv_mod_p2 262419 262416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262416 262419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_262416_262419
def row_262752_262755 :
    HasPrimeWithExpOne (S_val 262752 262755) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262752 262755 ∧ ¬ p ∣ (262755 - 262752) ∧
      ∃ (hNotC : ¬ p ∣ 262755) (hNotB : ¬ p ∣ 262752),
        order_of_C_B_inv_mod_p2 262755 262752 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262752 262755 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_262752_262755
def row_263088_263091 :
    HasPrimeWithExpOne (S_val 263088 263091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263088 263091 ∧ ¬ p ∣ (263091 - 263088) ∧
      ∃ (hNotC : ¬ p ∣ 263091) (hNotB : ¬ p ∣ 263088),
        order_of_C_B_inv_mod_p2 263091 263088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263088 263091 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_263088_263091
def row_263423_263426 :
    HasPrimeWithExpOne (S_val 263423 263426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263423 263426 ∧ ¬ p ∣ (263426 - 263423) ∧
      ∃ (hNotC : ¬ p ∣ 263426) (hNotB : ¬ p ∣ 263423),
        order_of_C_B_inv_mod_p2 263426 263423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263423 263426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_263423_263426
def row_263758_263761 :
    HasPrimeWithExpOne (S_val 263758 263761) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263758 263761 ∧ ¬ p ∣ (263761 - 263758) ∧
      ∃ (hNotC : ¬ p ∣ 263761) (hNotB : ¬ p ∣ 263758),
        order_of_C_B_inv_mod_p2 263761 263758 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263758 263761 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_263758_263761
def row_264095_264098 :
    HasPrimeWithExpOne (S_val 264095 264098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264095 264098 ∧ ¬ p ∣ (264098 - 264095) ∧
      ∃ (hNotC : ¬ p ∣ 264098) (hNotB : ¬ p ∣ 264095),
        order_of_C_B_inv_mod_p2 264098 264095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264095 264098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_264095_264098
def row_264430_264433 :
    HasPrimeWithExpOne (S_val 264430 264433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264430 264433 ∧ ¬ p ∣ (264433 - 264430) ∧
      ∃ (hNotC : ¬ p ∣ 264433) (hNotB : ¬ p ∣ 264430),
        order_of_C_B_inv_mod_p2 264433 264430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264430 264433 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_264430_264433
def row_264765_264768 :
    HasPrimeWithExpOne (S_val 264765 264768) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264765 264768 ∧ ¬ p ∣ (264768 - 264765) ∧
      ∃ (hNotC : ¬ p ∣ 264768) (hNotB : ¬ p ∣ 264765),
        order_of_C_B_inv_mod_p2 264768 264765 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264765 264768 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_264765_264768
def row_265100_265103 :
    HasPrimeWithExpOne (S_val 265100 265103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265100 265103 ∧ ¬ p ∣ (265103 - 265100) ∧
      ∃ (hNotC : ¬ p ∣ 265103) (hNotB : ¬ p ∣ 265100),
        order_of_C_B_inv_mod_p2 265103 265100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265100 265103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_265100_265103
def row_265437_265440 :
    HasPrimeWithExpOne (S_val 265437 265440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265437 265440 ∧ ¬ p ∣ (265440 - 265437) ∧
      ∃ (hNotC : ¬ p ∣ 265440) (hNotB : ¬ p ∣ 265437),
        order_of_C_B_inv_mod_p2 265440 265437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265437 265440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_265437_265440
def row_265774_265777 :
    HasPrimeWithExpOne (S_val 265774 265777) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265774 265777 ∧ ¬ p ∣ (265777 - 265774) ∧
      ∃ (hNotC : ¬ p ∣ 265777) (hNotB : ¬ p ∣ 265774),
        order_of_C_B_inv_mod_p2 265777 265774 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265774 265777 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_265774_265777
def row_266106_266109 :
    HasPrimeWithExpOne (S_val 266106 266109) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266106 266109 ∧ ¬ p ∣ (266109 - 266106) ∧
      ∃ (hNotC : ¬ p ∣ 266109) (hNotB : ¬ p ∣ 266106),
        order_of_C_B_inv_mod_p2 266109 266106 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266106 266109 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_266106_266109
def row_266444_266447 :
    HasPrimeWithExpOne (S_val 266444 266447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266444 266447 ∧ ¬ p ∣ (266447 - 266444) ∧
      ∃ (hNotC : ¬ p ∣ 266447) (hNotB : ¬ p ∣ 266444),
        order_of_C_B_inv_mod_p2 266447 266444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266444 266447 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_266444_266447
def row_266776_266779 :
    HasPrimeWithExpOne (S_val 266776 266779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266776 266779 ∧ ¬ p ∣ (266779 - 266776) ∧
      ∃ (hNotC : ¬ p ∣ 266779) (hNotB : ¬ p ∣ 266776),
        order_of_C_B_inv_mod_p2 266779 266776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266776 266779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_266776_266779
def row_267113_267116 :
    HasPrimeWithExpOne (S_val 267113 267116) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267113 267116 ∧ ¬ p ∣ (267116 - 267113) ∧
      ∃ (hNotC : ¬ p ∣ 267116) (hNotB : ¬ p ∣ 267113),
        order_of_C_B_inv_mod_p2 267116 267113 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267113 267116 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_267113_267116
def row_267449_267452 :
    HasPrimeWithExpOne (S_val 267449 267452) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267449 267452 ∧ ¬ p ∣ (267452 - 267449) ∧
      ∃ (hNotC : ¬ p ∣ 267452) (hNotB : ¬ p ∣ 267449),
        order_of_C_B_inv_mod_p2 267452 267449 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267449 267452 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_267449_267452
def row_267784_267787 :
    HasPrimeWithExpOne (S_val 267784 267787) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267784 267787 ∧ ¬ p ∣ (267787 - 267784) ∧
      ∃ (hNotC : ¬ p ∣ 267787) (hNotB : ¬ p ∣ 267784),
        order_of_C_B_inv_mod_p2 267787 267784 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267784 267787 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_267784_267787
def row_268120_268123 :
    HasPrimeWithExpOne (S_val 268120 268123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268120 268123 ∧ ¬ p ∣ (268123 - 268120) ∧
      ∃ (hNotC : ¬ p ∣ 268123) (hNotB : ¬ p ∣ 268120),
        order_of_C_B_inv_mod_p2 268123 268120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268120 268123 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_268120_268123
def row_268456_268459 :
    HasPrimeWithExpOne (S_val 268456 268459) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268456 268459 ∧ ¬ p ∣ (268459 - 268456) ∧
      ∃ (hNotC : ¬ p ∣ 268459) (hNotB : ¬ p ∣ 268456),
        order_of_C_B_inv_mod_p2 268459 268456 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268456 268459 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_268456_268459
def row_268792_268795 :
    HasPrimeWithExpOne (S_val 268792 268795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268792 268795 ∧ ¬ p ∣ (268795 - 268792) ∧
      ∃ (hNotC : ¬ p ∣ 268795) (hNotB : ¬ p ∣ 268792),
        order_of_C_B_inv_mod_p2 268795 268792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268792 268795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_268792_268795
def row_269127_269130 :
    HasPrimeWithExpOne (S_val 269127 269130) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269127 269130 ∧ ¬ p ∣ (269130 - 269127) ∧
      ∃ (hNotC : ¬ p ∣ 269130) (hNotB : ¬ p ∣ 269127),
        order_of_C_B_inv_mod_p2 269130 269127 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269127 269130 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_269127_269130
def row_269462_269465 :
    HasPrimeWithExpOne (S_val 269462 269465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269462 269465 ∧ ¬ p ∣ (269465 - 269462) ∧
      ∃ (hNotC : ¬ p ∣ 269465) (hNotB : ¬ p ∣ 269462),
        order_of_C_B_inv_mod_p2 269465 269462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269462 269465 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_269462_269465
def row_269798_269801 :
    HasPrimeWithExpOne (S_val 269798 269801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269798 269801 ∧ ¬ p ∣ (269801 - 269798) ∧
      ∃ (hNotC : ¬ p ∣ 269801) (hNotB : ¬ p ∣ 269798),
        order_of_C_B_inv_mod_p2 269801 269798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269798 269801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_269798_269801
def row_270134_270137 :
    HasPrimeWithExpOne (S_val 270134 270137) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270134 270137 ∧ ¬ p ∣ (270137 - 270134) ∧
      ∃ (hNotC : ¬ p ∣ 270137) (hNotB : ¬ p ∣ 270134),
        order_of_C_B_inv_mod_p2 270137 270134 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270134 270137 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_270134_270137
def row_270470_270473 :
    HasPrimeWithExpOne (S_val 270470 270473) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270470 270473 ∧ ¬ p ∣ (270473 - 270470) ∧
      ∃ (hNotC : ¬ p ∣ 270473) (hNotB : ¬ p ∣ 270470),
        order_of_C_B_inv_mod_p2 270473 270470 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270470 270473 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_270470_270473
def row_270805_270808 :
    HasPrimeWithExpOne (S_val 270805 270808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270805 270808 ∧ ¬ p ∣ (270808 - 270805) ∧
      ∃ (hNotC : ¬ p ∣ 270808) (hNotB : ¬ p ∣ 270805),
        order_of_C_B_inv_mod_p2 270808 270805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270805 270808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_270805_270808
def row_271141_271144 :
    HasPrimeWithExpOne (S_val 271141 271144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271141 271144 ∧ ¬ p ∣ (271144 - 271141) ∧
      ∃ (hNotC : ¬ p ∣ 271144) (hNotB : ¬ p ∣ 271141),
        order_of_C_B_inv_mod_p2 271144 271141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271141 271144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_271141_271144
def row_271476_271479 :
    HasPrimeWithExpOne (S_val 271476 271479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271476 271479 ∧ ¬ p ∣ (271479 - 271476) ∧
      ∃ (hNotC : ¬ p ∣ 271479) (hNotB : ¬ p ∣ 271476),
        order_of_C_B_inv_mod_p2 271479 271476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271476 271479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_271476_271479
def row_271812_271815 :
    HasPrimeWithExpOne (S_val 271812 271815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271812 271815 ∧ ¬ p ∣ (271815 - 271812) ∧
      ∃ (hNotC : ¬ p ∣ 271815) (hNotB : ¬ p ∣ 271812),
        order_of_C_B_inv_mod_p2 271815 271812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271812 271815 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_271812_271815
def row_272147_272150 :
    HasPrimeWithExpOne (S_val 272147 272150) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272147 272150 ∧ ¬ p ∣ (272150 - 272147) ∧
      ∃ (hNotC : ¬ p ∣ 272150) (hNotB : ¬ p ∣ 272147),
        order_of_C_B_inv_mod_p2 272150 272147 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272147 272150 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_272147_272150
def row_272483_272486 :
    HasPrimeWithExpOne (S_val 272483 272486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272483 272486 ∧ ¬ p ∣ (272486 - 272483) ∧
      ∃ (hNotC : ¬ p ∣ 272486) (hNotB : ¬ p ∣ 272483),
        order_of_C_B_inv_mod_p2 272486 272483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272483 272486 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_272483_272486
def row_272821_272824 :
    HasPrimeWithExpOne (S_val 272821 272824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272821 272824 ∧ ¬ p ∣ (272824 - 272821) ∧
      ∃ (hNotC : ¬ p ∣ 272824) (hNotB : ¬ p ∣ 272821),
        order_of_C_B_inv_mod_p2 272824 272821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272821 272824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_272821_272824
def row_273154_273157 :
    HasPrimeWithExpOne (S_val 273154 273157) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273154 273157 ∧ ¬ p ∣ (273157 - 273154) ∧
      ∃ (hNotC : ¬ p ∣ 273157) (hNotB : ¬ p ∣ 273154),
        order_of_C_B_inv_mod_p2 273157 273154 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273154 273157 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_273154_273157
def row_273490_273493 :
    HasPrimeWithExpOne (S_val 273490 273493) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273490 273493 ∧ ¬ p ∣ (273493 - 273490) ∧
      ∃ (hNotC : ¬ p ∣ 273493) (hNotB : ¬ p ∣ 273490),
        order_of_C_B_inv_mod_p2 273493 273490 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273490 273493 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_273490_273493
def row_273826_273829 :
    HasPrimeWithExpOne (S_val 273826 273829) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273826 273829 ∧ ¬ p ∣ (273829 - 273826) ∧
      ∃ (hNotC : ¬ p ∣ 273829) (hNotB : ¬ p ∣ 273826),
        order_of_C_B_inv_mod_p2 273829 273826 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273826 273829 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_273826_273829
def row_274161_274164 :
    HasPrimeWithExpOne (S_val 274161 274164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274161 274164 ∧ ¬ p ∣ (274164 - 274161) ∧
      ∃ (hNotC : ¬ p ∣ 274164) (hNotB : ¬ p ∣ 274161),
        order_of_C_B_inv_mod_p2 274164 274161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274161 274164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_274161_274164
def row_274497_274500 :
    HasPrimeWithExpOne (S_val 274497 274500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274497 274500 ∧ ¬ p ∣ (274500 - 274497) ∧
      ∃ (hNotC : ¬ p ∣ 274500) (hNotB : ¬ p ∣ 274497),
        order_of_C_B_inv_mod_p2 274500 274497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274497 274500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_274497_274500
def row_274834_274837 :
    HasPrimeWithExpOne (S_val 274834 274837) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274834 274837 ∧ ¬ p ∣ (274837 - 274834) ∧
      ∃ (hNotC : ¬ p ∣ 274837) (hNotB : ¬ p ∣ 274834),
        order_of_C_B_inv_mod_p2 274837 274834 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274834 274837 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_274834_274837
def row_275168_275171 :
    HasPrimeWithExpOne (S_val 275168 275171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275168 275171 ∧ ¬ p ∣ (275171 - 275168) ∧
      ∃ (hNotC : ¬ p ∣ 275171) (hNotB : ¬ p ∣ 275168),
        order_of_C_B_inv_mod_p2 275171 275168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275168 275171 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_275168_275171
def row_275503_275506 :
    HasPrimeWithExpOne (S_val 275503 275506) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275503 275506 ∧ ¬ p ∣ (275506 - 275503) ∧
      ∃ (hNotC : ¬ p ∣ 275506) (hNotB : ¬ p ∣ 275503),
        order_of_C_B_inv_mod_p2 275506 275503 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275503 275506 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_275503_275506
def row_275840_275843 :
    HasPrimeWithExpOne (S_val 275840 275843) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275840 275843 ∧ ¬ p ∣ (275843 - 275840) ∧
      ∃ (hNotC : ¬ p ∣ 275843) (hNotB : ¬ p ∣ 275840),
        order_of_C_B_inv_mod_p2 275843 275840 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275840 275843 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_275840_275843
def row_276174_276177 :
    HasPrimeWithExpOne (S_val 276174 276177) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276174 276177 ∧ ¬ p ∣ (276177 - 276174) ∧
      ∃ (hNotC : ¬ p ∣ 276177) (hNotB : ¬ p ∣ 276174),
        order_of_C_B_inv_mod_p2 276177 276174 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276174 276177 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_276174_276177
def row_276510_276513 :
    HasPrimeWithExpOne (S_val 276510 276513) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276510 276513 ∧ ¬ p ∣ (276513 - 276510) ∧
      ∃ (hNotC : ¬ p ∣ 276513) (hNotB : ¬ p ∣ 276510),
        order_of_C_B_inv_mod_p2 276513 276510 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276510 276513 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_276510_276513
def row_276846_276849 :
    HasPrimeWithExpOne (S_val 276846 276849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276846 276849 ∧ ¬ p ∣ (276849 - 276846) ∧
      ∃ (hNotC : ¬ p ∣ 276849) (hNotB : ¬ p ∣ 276846),
        order_of_C_B_inv_mod_p2 276849 276846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276846 276849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_276846_276849
def row_277181_277184 :
    HasPrimeWithExpOne (S_val 277181 277184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277181 277184 ∧ ¬ p ∣ (277184 - 277181) ∧
      ∃ (hNotC : ¬ p ∣ 277184) (hNotB : ¬ p ∣ 277181),
        order_of_C_B_inv_mod_p2 277184 277181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277181 277184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_277181_277184
def row_277518_277521 :
    HasPrimeWithExpOne (S_val 277518 277521) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277518 277521 ∧ ¬ p ∣ (277521 - 277518) ∧
      ∃ (hNotC : ¬ p ∣ 277521) (hNotB : ¬ p ∣ 277518),
        order_of_C_B_inv_mod_p2 277521 277518 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277518 277521 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_277518_277521
def row_277854_277857 :
    HasPrimeWithExpOne (S_val 277854 277857) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277854 277857 ∧ ¬ p ∣ (277857 - 277854) ∧
      ∃ (hNotC : ¬ p ∣ 277857) (hNotB : ¬ p ∣ 277854),
        order_of_C_B_inv_mod_p2 277857 277854 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277854 277857 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_277854_277857
def row_278188_278191 :
    HasPrimeWithExpOne (S_val 278188 278191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278188 278191 ∧ ¬ p ∣ (278191 - 278188) ∧
      ∃ (hNotC : ¬ p ∣ 278191) (hNotB : ¬ p ∣ 278188),
        order_of_C_B_inv_mod_p2 278191 278188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278188 278191 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_278188_278191
def row_278524_278527 :
    HasPrimeWithExpOne (S_val 278524 278527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278524 278527 ∧ ¬ p ∣ (278527 - 278524) ∧
      ∃ (hNotC : ¬ p ∣ 278527) (hNotB : ¬ p ∣ 278524),
        order_of_C_B_inv_mod_p2 278527 278524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278524 278527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_278524_278527
def row_278858_278861 :
    HasPrimeWithExpOne (S_val 278858 278861) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278858 278861 ∧ ¬ p ∣ (278861 - 278858) ∧
      ∃ (hNotC : ¬ p ∣ 278861) (hNotB : ¬ p ∣ 278858),
        order_of_C_B_inv_mod_p2 278861 278858 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278858 278861 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_278858_278861
def row_279195_279198 :
    HasPrimeWithExpOne (S_val 279195 279198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279195 279198 ∧ ¬ p ∣ (279198 - 279195) ∧
      ∃ (hNotC : ¬ p ∣ 279198) (hNotB : ¬ p ∣ 279195),
        order_of_C_B_inv_mod_p2 279198 279195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279195 279198 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_279195_279198
def row_279530_279533 :
    HasPrimeWithExpOne (S_val 279530 279533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279530 279533 ∧ ¬ p ∣ (279533 - 279530) ∧
      ∃ (hNotC : ¬ p ∣ 279533) (hNotB : ¬ p ∣ 279530),
        order_of_C_B_inv_mod_p2 279533 279530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279530 279533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_279530_279533
def row_279865_279868 :
    HasPrimeWithExpOne (S_val 279865 279868) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279865 279868 ∧ ¬ p ∣ (279868 - 279865) ∧
      ∃ (hNotC : ¬ p ∣ 279868) (hNotB : ¬ p ∣ 279865),
        order_of_C_B_inv_mod_p2 279868 279865 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279865 279868 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_279865_279868
def row_280202_280205 :
    HasPrimeWithExpOne (S_val 280202 280205) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280202 280205 ∧ ¬ p ∣ (280205 - 280202) ∧
      ∃ (hNotC : ¬ p ∣ 280205) (hNotB : ¬ p ∣ 280202),
        order_of_C_B_inv_mod_p2 280205 280202 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280202 280205 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_280202_280205
def row_280538_280541 :
    HasPrimeWithExpOne (S_val 280538 280541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280538 280541 ∧ ¬ p ∣ (280541 - 280538) ∧
      ∃ (hNotC : ¬ p ∣ 280541) (hNotB : ¬ p ∣ 280538),
        order_of_C_B_inv_mod_p2 280541 280538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280538 280541 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_280538_280541
def row_280873_280876 :
    HasPrimeWithExpOne (S_val 280873 280876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280873 280876 ∧ ¬ p ∣ (280876 - 280873) ∧
      ∃ (hNotC : ¬ p ∣ 280876) (hNotB : ¬ p ∣ 280873),
        order_of_C_B_inv_mod_p2 280876 280873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280873 280876 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_280873_280876
def row_281208_281211 :
    HasPrimeWithExpOne (S_val 281208 281211) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281208 281211 ∧ ¬ p ∣ (281211 - 281208) ∧
      ∃ (hNotC : ¬ p ∣ 281211) (hNotB : ¬ p ∣ 281208),
        order_of_C_B_inv_mod_p2 281211 281208 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281208 281211 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_281208_281211
def row_281542_281545 :
    HasPrimeWithExpOne (S_val 281542 281545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281542 281545 ∧ ¬ p ∣ (281545 - 281542) ∧
      ∃ (hNotC : ¬ p ∣ 281545) (hNotB : ¬ p ∣ 281542),
        order_of_C_B_inv_mod_p2 281545 281542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281542 281545 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_281542_281545
def row_281878_281881 :
    HasPrimeWithExpOne (S_val 281878 281881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281878 281881 ∧ ¬ p ∣ (281881 - 281878) ∧
      ∃ (hNotC : ¬ p ∣ 281881) (hNotB : ¬ p ∣ 281878),
        order_of_C_B_inv_mod_p2 281881 281878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281878 281881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_281878_281881
def row_282213_282216 :
    HasPrimeWithExpOne (S_val 282213 282216) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282213 282216 ∧ ¬ p ∣ (282216 - 282213) ∧
      ∃ (hNotC : ¬ p ∣ 282216) (hNotB : ¬ p ∣ 282213),
        order_of_C_B_inv_mod_p2 282216 282213 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282213 282216 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_282213_282216
def row_282549_282552 :
    HasPrimeWithExpOne (S_val 282549 282552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282549 282552 ∧ ¬ p ∣ (282552 - 282549) ∧
      ∃ (hNotC : ¬ p ∣ 282552) (hNotB : ¬ p ∣ 282549),
        order_of_C_B_inv_mod_p2 282552 282549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282549 282552 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_282549_282552
def row_282884_282887 :
    HasPrimeWithExpOne (S_val 282884 282887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282884 282887 ∧ ¬ p ∣ (282887 - 282884) ∧
      ∃ (hNotC : ¬ p ∣ 282887) (hNotB : ¬ p ∣ 282884),
        order_of_C_B_inv_mod_p2 282887 282884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282884 282887 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_282884_282887
def row_283223_283226 :
    HasPrimeWithExpOne (S_val 283223 283226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283223 283226 ∧ ¬ p ∣ (283226 - 283223) ∧
      ∃ (hNotC : ¬ p ∣ 283226) (hNotB : ¬ p ∣ 283223),
        order_of_C_B_inv_mod_p2 283226 283223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283223 283226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_283223_283226
def row_283557_283560 :
    HasPrimeWithExpOne (S_val 283557 283560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283557 283560 ∧ ¬ p ∣ (283560 - 283557) ∧
      ∃ (hNotC : ¬ p ∣ 283560) (hNotB : ¬ p ∣ 283557),
        order_of_C_B_inv_mod_p2 283560 283557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283557 283560 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_283557_283560
def row_283889_283892 :
    HasPrimeWithExpOne (S_val 283889 283892) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283889 283892 ∧ ¬ p ∣ (283892 - 283889) ∧
      ∃ (hNotC : ¬ p ∣ 283892) (hNotB : ¬ p ∣ 283889),
        order_of_C_B_inv_mod_p2 283892 283889 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283889 283892 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_283889_283892
def row_284229_284232 :
    HasPrimeWithExpOne (S_val 284229 284232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284229 284232 ∧ ¬ p ∣ (284232 - 284229) ∧
      ∃ (hNotC : ¬ p ∣ 284232) (hNotB : ¬ p ∣ 284229),
        order_of_C_B_inv_mod_p2 284232 284229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284229 284232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_284229_284232
def row_284563_284566 :
    HasPrimeWithExpOne (S_val 284563 284566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284563 284566 ∧ ¬ p ∣ (284566 - 284563) ∧
      ∃ (hNotC : ¬ p ∣ 284566) (hNotB : ¬ p ∣ 284563),
        order_of_C_B_inv_mod_p2 284566 284563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284563 284566 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_284563_284566
def row_284897_284900 :
    HasPrimeWithExpOne (S_val 284897 284900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284897 284900 ∧ ¬ p ∣ (284900 - 284897) ∧
      ∃ (hNotC : ¬ p ∣ 284900) (hNotB : ¬ p ∣ 284897),
        order_of_C_B_inv_mod_p2 284900 284897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284897 284900 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_284897_284900
def row_285237_285240 :
    HasPrimeWithExpOne (S_val 285237 285240) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285237 285240 ∧ ¬ p ∣ (285240 - 285237) ∧
      ∃ (hNotC : ¬ p ∣ 285240) (hNotB : ¬ p ∣ 285237),
        order_of_C_B_inv_mod_p2 285240 285237 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285237 285240 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_285237_285240
def row_285570_285573 :
    HasPrimeWithExpOne (S_val 285570 285573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285570 285573 ∧ ¬ p ∣ (285573 - 285570) ∧
      ∃ (hNotC : ¬ p ∣ 285573) (hNotB : ¬ p ∣ 285570),
        order_of_C_B_inv_mod_p2 285573 285570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285570 285573 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_285570_285573
def row_285907_285910 :
    HasPrimeWithExpOne (S_val 285907 285910) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285907 285910 ∧ ¬ p ∣ (285910 - 285907) ∧
      ∃ (hNotC : ¬ p ∣ 285910) (hNotB : ¬ p ∣ 285907),
        order_of_C_B_inv_mod_p2 285910 285907 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285907 285910 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_285907_285910
def row_286240_286243 :
    HasPrimeWithExpOne (S_val 286240 286243) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286240 286243 ∧ ¬ p ∣ (286243 - 286240) ∧
      ∃ (hNotC : ¬ p ∣ 286243) (hNotB : ¬ p ∣ 286240),
        order_of_C_B_inv_mod_p2 286243 286240 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286240 286243 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_286240_286243
def row_286577_286580 :
    HasPrimeWithExpOne (S_val 286577 286580) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286577 286580 ∧ ¬ p ∣ (286580 - 286577) ∧
      ∃ (hNotC : ¬ p ∣ 286580) (hNotB : ¬ p ∣ 286577),
        order_of_C_B_inv_mod_p2 286580 286577 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286577 286580 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_286577_286580
def row_286912_286915 :
    HasPrimeWithExpOne (S_val 286912 286915) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286912 286915 ∧ ¬ p ∣ (286915 - 286912) ∧
      ∃ (hNotC : ¬ p ∣ 286915) (hNotB : ¬ p ∣ 286912),
        order_of_C_B_inv_mod_p2 286915 286912 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286912 286915 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_286912_286915
def row_287248_287251 :
    HasPrimeWithExpOne (S_val 287248 287251) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287248 287251 ∧ ¬ p ∣ (287251 - 287248) ∧
      ∃ (hNotC : ¬ p ∣ 287251) (hNotB : ¬ p ∣ 287248),
        order_of_C_B_inv_mod_p2 287251 287248 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287248 287251 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_287248_287251
def row_287584_287587 :
    HasPrimeWithExpOne (S_val 287584 287587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287584 287587 ∧ ¬ p ∣ (287587 - 287584) ∧
      ∃ (hNotC : ¬ p ∣ 287587) (hNotB : ¬ p ∣ 287584),
        order_of_C_B_inv_mod_p2 287587 287584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287584 287587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_287584_287587
def row_287918_287921 :
    HasPrimeWithExpOne (S_val 287918 287921) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287918 287921 ∧ ¬ p ∣ (287921 - 287918) ∧
      ∃ (hNotC : ¬ p ∣ 287921) (hNotB : ¬ p ∣ 287918),
        order_of_C_B_inv_mod_p2 287921 287918 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287918 287921 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_287918_287921
def row_288255_288258 :
    HasPrimeWithExpOne (S_val 288255 288258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288255 288258 ∧ ¬ p ∣ (288258 - 288255) ∧
      ∃ (hNotC : ¬ p ∣ 288258) (hNotB : ¬ p ∣ 288255),
        order_of_C_B_inv_mod_p2 288258 288255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288255 288258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_288255_288258
def row_288590_288593 :
    HasPrimeWithExpOne (S_val 288590 288593) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288590 288593 ∧ ¬ p ∣ (288593 - 288590) ∧
      ∃ (hNotC : ¬ p ∣ 288593) (hNotB : ¬ p ∣ 288590),
        order_of_C_B_inv_mod_p2 288593 288590 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288590 288593 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_288590_288593
def row_288926_288929 :
    HasPrimeWithExpOne (S_val 288926 288929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288926 288929 ∧ ¬ p ∣ (288929 - 288926) ∧
      ∃ (hNotC : ¬ p ∣ 288929) (hNotB : ¬ p ∣ 288926),
        order_of_C_B_inv_mod_p2 288929 288926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288926 288929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_288926_288929
def row_289261_289264 :
    HasPrimeWithExpOne (S_val 289261 289264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289261 289264 ∧ ¬ p ∣ (289264 - 289261) ∧
      ∃ (hNotC : ¬ p ∣ 289264) (hNotB : ¬ p ∣ 289261),
        order_of_C_B_inv_mod_p2 289264 289261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289261 289264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_289261_289264
def row_289597_289600 :
    HasPrimeWithExpOne (S_val 289597 289600) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289597 289600 ∧ ¬ p ∣ (289600 - 289597) ∧
      ∃ (hNotC : ¬ p ∣ 289600) (hNotB : ¬ p ∣ 289597),
        order_of_C_B_inv_mod_p2 289600 289597 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289597 289600 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_289597_289600
def row_289928_289931 :
    HasPrimeWithExpOne (S_val 289928 289931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289928 289931 ∧ ¬ p ∣ (289931 - 289928) ∧
      ∃ (hNotC : ¬ p ∣ 289931) (hNotB : ¬ p ∣ 289928),
        order_of_C_B_inv_mod_p2 289931 289928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289928 289931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_289928_289931
def row_290268_290271 :
    HasPrimeWithExpOne (S_val 290268 290271) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290268 290271 ∧ ¬ p ∣ (290271 - 290268) ∧
      ∃ (hNotC : ¬ p ∣ 290271) (hNotB : ¬ p ∣ 290268),
        order_of_C_B_inv_mod_p2 290271 290268 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290268 290271 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_290268_290271
def row_290604_290607 :
    HasPrimeWithExpOne (S_val 290604 290607) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290604 290607 ∧ ¬ p ∣ (290607 - 290604) ∧
      ∃ (hNotC : ¬ p ∣ 290607) (hNotB : ¬ p ∣ 290604),
        order_of_C_B_inv_mod_p2 290607 290604 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290604 290607 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_290604_290607
def row_290939_290942 :
    HasPrimeWithExpOne (S_val 290939 290942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290939 290942 ∧ ¬ p ∣ (290942 - 290939) ∧
      ∃ (hNotC : ¬ p ∣ 290942) (hNotB : ¬ p ∣ 290939),
        order_of_C_B_inv_mod_p2 290942 290939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290939 290942 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_290939_290942
def row_291275_291278 :
    HasPrimeWithExpOne (S_val 291275 291278) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291275 291278 ∧ ¬ p ∣ (291278 - 291275) ∧
      ∃ (hNotC : ¬ p ∣ 291278) (hNotB : ¬ p ∣ 291275),
        order_of_C_B_inv_mod_p2 291278 291275 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291275 291278 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_291275_291278
def row_291610_291613 :
    HasPrimeWithExpOne (S_val 291610 291613) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291610 291613 ∧ ¬ p ∣ (291613 - 291610) ∧
      ∃ (hNotC : ¬ p ∣ 291613) (hNotB : ¬ p ∣ 291610),
        order_of_C_B_inv_mod_p2 291613 291610 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291610 291613 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_291610_291613
def row_291947_291950 :
    HasPrimeWithExpOne (S_val 291947 291950) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291947 291950 ∧ ¬ p ∣ (291950 - 291947) ∧
      ∃ (hNotC : ¬ p ∣ 291950) (hNotB : ¬ p ∣ 291947),
        order_of_C_B_inv_mod_p2 291950 291947 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291947 291950 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_291947_291950
def row_292281_292284 :
    HasPrimeWithExpOne (S_val 292281 292284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292281 292284 ∧ ¬ p ∣ (292284 - 292281) ∧
      ∃ (hNotC : ¬ p ∣ 292284) (hNotB : ¬ p ∣ 292281),
        order_of_C_B_inv_mod_p2 292284 292281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292281 292284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_292281_292284
def row_292617_292620 :
    HasPrimeWithExpOne (S_val 292617 292620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292617 292620 ∧ ¬ p ∣ (292620 - 292617) ∧
      ∃ (hNotC : ¬ p ∣ 292620) (hNotB : ¬ p ∣ 292617),
        order_of_C_B_inv_mod_p2 292620 292617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292617 292620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_292617_292620
def row_292954_292957 :
    HasPrimeWithExpOne (S_val 292954 292957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292954 292957 ∧ ¬ p ∣ (292957 - 292954) ∧
      ∃ (hNotC : ¬ p ∣ 292957) (hNotB : ¬ p ∣ 292954),
        order_of_C_B_inv_mod_p2 292957 292954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292954 292957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_292954_292957
def row_293289_293292 :
    HasPrimeWithExpOne (S_val 293289 293292) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293289 293292 ∧ ¬ p ∣ (293292 - 293289) ∧
      ∃ (hNotC : ¬ p ∣ 293292) (hNotB : ¬ p ∣ 293289),
        order_of_C_B_inv_mod_p2 293292 293289 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293289 293292 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_293289_293292
def row_293624_293627 :
    HasPrimeWithExpOne (S_val 293624 293627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293624 293627 ∧ ¬ p ∣ (293627 - 293624) ∧
      ∃ (hNotC : ¬ p ∣ 293627) (hNotB : ¬ p ∣ 293624),
        order_of_C_B_inv_mod_p2 293627 293624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293624 293627 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_293624_293627
def row_293956_293959 :
    HasPrimeWithExpOne (S_val 293956 293959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293956 293959 ∧ ¬ p ∣ (293959 - 293956) ∧
      ∃ (hNotC : ¬ p ∣ 293959) (hNotB : ¬ p ∣ 293956),
        order_of_C_B_inv_mod_p2 293959 293956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293956 293959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_293956_293959
def row_294296_294299 :
    HasPrimeWithExpOne (S_val 294296 294299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294296 294299 ∧ ¬ p ∣ (294299 - 294296) ∧
      ∃ (hNotC : ¬ p ∣ 294299) (hNotB : ¬ p ∣ 294296),
        order_of_C_B_inv_mod_p2 294299 294296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294296 294299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_294296_294299
def row_294630_294633 :
    HasPrimeWithExpOne (S_val 294630 294633) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294630 294633 ∧ ¬ p ∣ (294633 - 294630) ∧
      ∃ (hNotC : ¬ p ∣ 294633) (hNotB : ¬ p ∣ 294630),
        order_of_C_B_inv_mod_p2 294633 294630 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294630 294633 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_294630_294633
def row_294966_294969 :
    HasPrimeWithExpOne (S_val 294966 294969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294966 294969 ∧ ¬ p ∣ (294969 - 294966) ∧
      ∃ (hNotC : ¬ p ∣ 294969) (hNotB : ¬ p ∣ 294966),
        order_of_C_B_inv_mod_p2 294969 294966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294966 294969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_294966_294969
def row_295303_295306 :
    HasPrimeWithExpOne (S_val 295303 295306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295303 295306 ∧ ¬ p ∣ (295306 - 295303) ∧
      ∃ (hNotC : ¬ p ∣ 295306) (hNotB : ¬ p ∣ 295303),
        order_of_C_B_inv_mod_p2 295306 295303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295303 295306 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_295303_295306
def row_295638_295641 :
    HasPrimeWithExpOne (S_val 295638 295641) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295638 295641 ∧ ¬ p ∣ (295641 - 295638) ∧
      ∃ (hNotC : ¬ p ∣ 295641) (hNotB : ¬ p ∣ 295638),
        order_of_C_B_inv_mod_p2 295641 295638 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295638 295641 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_295638_295641
def row_295974_295977 :
    HasPrimeWithExpOne (S_val 295974 295977) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295974 295977 ∧ ¬ p ∣ (295977 - 295974) ∧
      ∃ (hNotC : ¬ p ∣ 295977) (hNotB : ¬ p ∣ 295974),
        order_of_C_B_inv_mod_p2 295977 295974 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295974 295977 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_295974_295977
def row_296308_296311 :
    HasPrimeWithExpOne (S_val 296308 296311) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296308 296311 ∧ ¬ p ∣ (296311 - 296308) ∧
      ∃ (hNotC : ¬ p ∣ 296311) (hNotB : ¬ p ∣ 296308),
        order_of_C_B_inv_mod_p2 296311 296308 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296308 296311 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_296308_296311
def row_296644_296647 :
    HasPrimeWithExpOne (S_val 296644 296647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296644 296647 ∧ ¬ p ∣ (296647 - 296644) ∧
      ∃ (hNotC : ¬ p ∣ 296647) (hNotB : ¬ p ∣ 296644),
        order_of_C_B_inv_mod_p2 296647 296644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296644 296647 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_296644_296647
def row_296979_296982 :
    HasPrimeWithExpOne (S_val 296979 296982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296979 296982 ∧ ¬ p ∣ (296982 - 296979) ∧
      ∃ (hNotC : ¬ p ∣ 296982) (hNotB : ¬ p ∣ 296979),
        order_of_C_B_inv_mod_p2 296982 296979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296979 296982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_296979_296982
def row_297314_297317 :
    HasPrimeWithExpOne (S_val 297314 297317) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297314 297317 ∧ ¬ p ∣ (297317 - 297314) ∧
      ∃ (hNotC : ¬ p ∣ 297317) (hNotB : ¬ p ∣ 297314),
        order_of_C_B_inv_mod_p2 297317 297314 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297314 297317 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_297314_297317
def row_297651_297654 :
    HasPrimeWithExpOne (S_val 297651 297654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297651 297654 ∧ ¬ p ∣ (297654 - 297651) ∧
      ∃ (hNotC : ¬ p ∣ 297654) (hNotB : ¬ p ∣ 297651),
        order_of_C_B_inv_mod_p2 297654 297651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297651 297654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_297651_297654
def row_297984_297987 :
    HasPrimeWithExpOne (S_val 297984 297987) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297984 297987 ∧ ¬ p ∣ (297987 - 297984) ∧
      ∃ (hNotC : ¬ p ∣ 297987) (hNotB : ¬ p ∣ 297984),
        order_of_C_B_inv_mod_p2 297987 297984 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297984 297987 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_297984_297987
def row_298322_298325 :
    HasPrimeWithExpOne (S_val 298322 298325) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298322 298325 ∧ ¬ p ∣ (298325 - 298322) ∧
      ∃ (hNotC : ¬ p ∣ 298325) (hNotB : ¬ p ∣ 298322),
        order_of_C_B_inv_mod_p2 298325 298322 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298322 298325 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_298322_298325
def row_298659_298662 :
    HasPrimeWithExpOne (S_val 298659 298662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298659 298662 ∧ ¬ p ∣ (298662 - 298659) ∧
      ∃ (hNotC : ¬ p ∣ 298662) (hNotB : ¬ p ∣ 298659),
        order_of_C_B_inv_mod_p2 298662 298659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298659 298662 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_298659_298662
def row_298993_298996 :
    HasPrimeWithExpOne (S_val 298993 298996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298993 298996 ∧ ¬ p ∣ (298996 - 298993) ∧
      ∃ (hNotC : ¬ p ∣ 298996) (hNotB : ¬ p ∣ 298993),
        order_of_C_B_inv_mod_p2 298996 298993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298993 298996 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_298993_298996
def row_299328_299331 :
    HasPrimeWithExpOne (S_val 299328 299331) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299328 299331 ∧ ¬ p ∣ (299331 - 299328) ∧
      ∃ (hNotC : ¬ p ∣ 299331) (hNotB : ¬ p ∣ 299328),
        order_of_C_B_inv_mod_p2 299331 299328 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299328 299331 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_299328_299331
def row_299665_299668 :
    HasPrimeWithExpOne (S_val 299665 299668) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299665 299668 ∧ ¬ p ∣ (299668 - 299665) ∧
      ∃ (hNotC : ¬ p ∣ 299668) (hNotB : ¬ p ∣ 299665),
        order_of_C_B_inv_mod_p2 299668 299665 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299665 299668 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_299665_299668
def row_299999_300002 :
    HasPrimeWithExpOne (S_val 299999 300002) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299999 300002 ∧ ¬ p ∣ (300002 - 299999) ∧
      ∃ (hNotC : ¬ p ∣ 300002) (hNotB : ¬ p ∣ 299999),
        order_of_C_B_inv_mod_p2 300002 299999 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299999 300002 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_299999_300002
def row_300003_300006 :
    HasPrimeWithExpOne (S_val 300003 300006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300003 300006 ∧ ¬ p ∣ (300006 - 300003) ∧
      ∃ (hNotC : ¬ p ∣ 300006) (hNotB : ¬ p ∣ 300003),
        order_of_C_B_inv_mod_p2 300006 300003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 300003 300006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_300003_300006
def row_300342_300345 :
    HasPrimeWithExpOne (S_val 300342 300345) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300342 300345 ∧ ¬ p ∣ (300345 - 300342) ∧
      ∃ (hNotC : ¬ p ∣ 300345) (hNotB : ¬ p ∣ 300342),
        order_of_C_B_inv_mod_p2 300345 300342 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 300342 300345 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_300342_300345
def row_300687_300690 :
    HasPrimeWithExpOne (S_val 300687 300690) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300687 300690 ∧ ¬ p ∣ (300690 - 300687) ∧
      ∃ (hNotC : ¬ p ∣ 300690) (hNotB : ¬ p ∣ 300687),
        order_of_C_B_inv_mod_p2 300690 300687 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 300687 300690 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_300687_300690
def row_301031_301034 :
    HasPrimeWithExpOne (S_val 301031 301034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301031 301034 ∧ ¬ p ∣ (301034 - 301031) ∧
      ∃ (hNotC : ¬ p ∣ 301034) (hNotB : ¬ p ∣ 301031),
        order_of_C_B_inv_mod_p2 301034 301031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 301031 301034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_301031_301034
def row_301359_301362 :
    HasPrimeWithExpOne (S_val 301359 301362) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301359 301362 ∧ ¬ p ∣ (301362 - 301359) ∧
      ∃ (hNotC : ¬ p ∣ 301362) (hNotB : ¬ p ∣ 301359),
        order_of_C_B_inv_mod_p2 301362 301359 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 301359 301362 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_301359_301362
def row_301713_301716 :
    HasPrimeWithExpOne (S_val 301713 301716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301713 301716 ∧ ¬ p ∣ (301716 - 301713) ∧
      ∃ (hNotC : ¬ p ∣ 301716) (hNotB : ¬ p ∣ 301713),
        order_of_C_B_inv_mod_p2 301716 301713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 301713 301716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_301713_301716
def row_302038_302041 :
    HasPrimeWithExpOne (S_val 302038 302041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302038 302041 ∧ ¬ p ∣ (302041 - 302038) ∧
      ∃ (hNotC : ¬ p ∣ 302041) (hNotB : ¬ p ∣ 302038),
        order_of_C_B_inv_mod_p2 302041 302038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 302038 302041 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_302038_302041
def row_302404_302407 :
    HasPrimeWithExpOne (S_val 302404 302407) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302404 302407 ∧ ¬ p ∣ (302407 - 302404) ∧
      ∃ (hNotC : ¬ p ∣ 302407) (hNotB : ¬ p ∣ 302404),
        order_of_C_B_inv_mod_p2 302407 302404 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 302404 302407 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_302404_302407
def row_302731_302734 :
    HasPrimeWithExpOne (S_val 302731 302734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302731 302734 ∧ ¬ p ∣ (302734 - 302731) ∧
      ∃ (hNotC : ¬ p ∣ 302734) (hNotB : ¬ p ∣ 302731),
        order_of_C_B_inv_mod_p2 302734 302731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 302731 302734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_302731_302734
def row_303078_303081 :
    HasPrimeWithExpOne (S_val 303078 303081) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303078 303081 ∧ ¬ p ∣ (303081 - 303078) ∧
      ∃ (hNotC : ¬ p ∣ 303081) (hNotB : ¬ p ∣ 303078),
        order_of_C_B_inv_mod_p2 303081 303078 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 303078 303081 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_303078_303081
def row_303405_303408 :
    HasPrimeWithExpOne (S_val 303405 303408) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303405 303408 ∧ ¬ p ∣ (303408 - 303405) ∧
      ∃ (hNotC : ¬ p ∣ 303408) (hNotB : ¬ p ∣ 303405),
        order_of_C_B_inv_mod_p2 303408 303405 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 303405 303408 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_303405_303408
def row_303738_303741 :
    HasPrimeWithExpOne (S_val 303738 303741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303738 303741 ∧ ¬ p ∣ (303741 - 303738) ∧
      ∃ (hNotC : ¬ p ∣ 303741) (hNotB : ¬ p ∣ 303738),
        order_of_C_B_inv_mod_p2 303741 303738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 303738 303741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_303738_303741
def row_304053_304056 :
    HasPrimeWithExpOne (S_val 304053 304056) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304053 304056 ∧ ¬ p ∣ (304056 - 304053) ∧
      ∃ (hNotC : ¬ p ∣ 304056) (hNotB : ¬ p ∣ 304053),
        order_of_C_B_inv_mod_p2 304056 304053 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 304053 304056 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_304053_304056
def row_304385_304388 :
    HasPrimeWithExpOne (S_val 304385 304388) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304385 304388 ∧ ¬ p ∣ (304388 - 304385) ∧
      ∃ (hNotC : ¬ p ∣ 304388) (hNotB : ¬ p ∣ 304385),
        order_of_C_B_inv_mod_p2 304388 304385 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 304385 304388 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_304385_304388
def row_304737_304740 :
    HasPrimeWithExpOne (S_val 304737 304740) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304737 304740 ∧ ¬ p ∣ (304740 - 304737) ∧
      ∃ (hNotC : ¬ p ∣ 304740) (hNotB : ¬ p ∣ 304737),
        order_of_C_B_inv_mod_p2 304740 304737 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 304737 304740 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_304737_304740
def row_305077_305080 :
    HasPrimeWithExpOne (S_val 305077 305080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305077 305080 ∧ ¬ p ∣ (305080 - 305077) ∧
      ∃ (hNotC : ¬ p ∣ 305080) (hNotB : ¬ p ∣ 305077),
        order_of_C_B_inv_mod_p2 305080 305077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 305077 305080 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_305077_305080
def row_305429_305432 :
    HasPrimeWithExpOne (S_val 305429 305432) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305429 305432 ∧ ¬ p ∣ (305432 - 305429) ∧
      ∃ (hNotC : ¬ p ∣ 305432) (hNotB : ¬ p ∣ 305429),
        order_of_C_B_inv_mod_p2 305432 305429 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 305429 305432 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_305429_305432
def row_305775_305778 :
    HasPrimeWithExpOne (S_val 305775 305778) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305775 305778 ∧ ¬ p ∣ (305778 - 305775) ∧
      ∃ (hNotC : ¬ p ∣ 305778) (hNotB : ¬ p ∣ 305775),
        order_of_C_B_inv_mod_p2 305778 305775 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 305775 305778 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_305775_305778
def row_306110_306113 :
    HasPrimeWithExpOne (S_val 306110 306113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306110 306113 ∧ ¬ p ∣ (306113 - 306110) ∧
      ∃ (hNotC : ¬ p ∣ 306113) (hNotB : ¬ p ∣ 306110),
        order_of_C_B_inv_mod_p2 306113 306110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 306110 306113 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_306110_306113
def row_306440_306443 :
    HasPrimeWithExpOne (S_val 306440 306443) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306440 306443 ∧ ¬ p ∣ (306443 - 306440) ∧
      ∃ (hNotC : ¬ p ∣ 306443) (hNotB : ¬ p ∣ 306440),
        order_of_C_B_inv_mod_p2 306443 306440 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 306440 306443 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_306440_306443
def row_306757_306760 :
    HasPrimeWithExpOne (S_val 306757 306760) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306757 306760 ∧ ¬ p ∣ (306760 - 306757) ∧
      ∃ (hNotC : ¬ p ∣ 306760) (hNotB : ¬ p ∣ 306757),
        order_of_C_B_inv_mod_p2 306760 306757 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 306757 306760 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_306757_306760
def row_307096_307099 :
    HasPrimeWithExpOne (S_val 307096 307099) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307096 307099 ∧ ¬ p ∣ (307099 - 307096) ∧
      ∃ (hNotC : ¬ p ∣ 307099) (hNotB : ¬ p ∣ 307096),
        order_of_C_B_inv_mod_p2 307099 307096 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 307096 307099 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_307096_307099
def row_307412_307415 :
    HasPrimeWithExpOne (S_val 307412 307415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307412 307415 ∧ ¬ p ∣ (307415 - 307412) ∧
      ∃ (hNotC : ¬ p ∣ 307415) (hNotB : ¬ p ∣ 307412),
        order_of_C_B_inv_mod_p2 307415 307412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 307412 307415 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_307412_307415
def row_307747_307750 :
    HasPrimeWithExpOne (S_val 307747 307750) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307747 307750 ∧ ¬ p ∣ (307750 - 307747) ∧
      ∃ (hNotC : ¬ p ∣ 307750) (hNotB : ¬ p ∣ 307747),
        order_of_C_B_inv_mod_p2 307750 307747 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 307747 307750 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_307747_307750
def row_308066_308069 :
    HasPrimeWithExpOne (S_val 308066 308069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308066 308069 ∧ ¬ p ∣ (308069 - 308066) ∧
      ∃ (hNotC : ¬ p ∣ 308069) (hNotB : ¬ p ∣ 308066),
        order_of_C_B_inv_mod_p2 308069 308066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 308066 308069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_308066_308069
def row_308394_308397 :
    HasPrimeWithExpOne (S_val 308394 308397) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308394 308397 ∧ ¬ p ∣ (308397 - 308394) ∧
      ∃ (hNotC : ¬ p ∣ 308397) (hNotB : ¬ p ∣ 308394),
        order_of_C_B_inv_mod_p2 308397 308394 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 308394 308397 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_308394_308397
def row_308743_308746 :
    HasPrimeWithExpOne (S_val 308743 308746) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308743 308746 ∧ ¬ p ∣ (308746 - 308743) ∧
      ∃ (hNotC : ¬ p ∣ 308746) (hNotB : ¬ p ∣ 308743),
        order_of_C_B_inv_mod_p2 308746 308743 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 308743 308746 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_308743_308746
def row_309087_309090 :
    HasPrimeWithExpOne (S_val 309087 309090) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309087 309090 ∧ ¬ p ∣ (309090 - 309087) ∧
      ∃ (hNotC : ¬ p ∣ 309090) (hNotB : ¬ p ∣ 309087),
        order_of_C_B_inv_mod_p2 309090 309087 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 309087 309090 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_309087_309090
def row_309428_309431 :
    HasPrimeWithExpOne (S_val 309428 309431) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309428 309431 ∧ ¬ p ∣ (309431 - 309428) ∧
      ∃ (hNotC : ¬ p ∣ 309431) (hNotB : ¬ p ∣ 309428),
        order_of_C_B_inv_mod_p2 309431 309428 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 309428 309431 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_309428_309431
def row_309776_309779 :
    HasPrimeWithExpOne (S_val 309776 309779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309776 309779 ∧ ¬ p ∣ (309779 - 309776) ∧
      ∃ (hNotC : ¬ p ∣ 309779) (hNotB : ¬ p ∣ 309776),
        order_of_C_B_inv_mod_p2 309779 309776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 309776 309779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_309776_309779
def row_310132_310135 :
    HasPrimeWithExpOne (S_val 310132 310135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310132 310135 ∧ ¬ p ∣ (310135 - 310132) ∧
      ∃ (hNotC : ¬ p ∣ 310135) (hNotB : ¬ p ∣ 310132),
        order_of_C_B_inv_mod_p2 310135 310132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 310132 310135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_310132_310135
def row_310460_310463 :
    HasPrimeWithExpOne (S_val 310460 310463) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310460 310463 ∧ ¬ p ∣ (310463 - 310460) ∧
      ∃ (hNotC : ¬ p ∣ 310463) (hNotB : ¬ p ∣ 310460),
        order_of_C_B_inv_mod_p2 310463 310460 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 310460 310463 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_310460_310463
def row_310785_310788 :
    HasPrimeWithExpOne (S_val 310785 310788) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310785 310788 ∧ ¬ p ∣ (310788 - 310785) ∧
      ∃ (hNotC : ¬ p ∣ 310788) (hNotB : ¬ p ∣ 310785),
        order_of_C_B_inv_mod_p2 310788 310785 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 310785 310788 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_310785_310788
def row_311125_311128 :
    HasPrimeWithExpOne (S_val 311125 311128) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311125 311128 ∧ ¬ p ∣ (311128 - 311125) ∧
      ∃ (hNotC : ¬ p ∣ 311128) (hNotB : ¬ p ∣ 311125),
        order_of_C_B_inv_mod_p2 311128 311125 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 311125 311128 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_311125_311128
def row_311468_311471 :
    HasPrimeWithExpOne (S_val 311468 311471) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311468 311471 ∧ ¬ p ∣ (311471 - 311468) ∧
      ∃ (hNotC : ¬ p ∣ 311471) (hNotB : ¬ p ∣ 311468),
        order_of_C_B_inv_mod_p2 311471 311468 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 311468 311471 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_311468_311471
def row_311792_311795 :
    HasPrimeWithExpOne (S_val 311792 311795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311792 311795 ∧ ¬ p ∣ (311795 - 311792) ∧
      ∃ (hNotC : ¬ p ∣ 311795) (hNotB : ¬ p ∣ 311792),
        order_of_C_B_inv_mod_p2 311795 311792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 311792 311795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_311792_311795
def row_312121_312124 :
    HasPrimeWithExpOne (S_val 312121 312124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312121 312124 ∧ ¬ p ∣ (312124 - 312121) ∧
      ∃ (hNotC : ¬ p ∣ 312124) (hNotB : ¬ p ∣ 312121),
        order_of_C_B_inv_mod_p2 312124 312121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 312121 312124 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_312121_312124
def row_312450_312453 :
    HasPrimeWithExpOne (S_val 312450 312453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312450 312453 ∧ ¬ p ∣ (312453 - 312450) ∧
      ∃ (hNotC : ¬ p ∣ 312453) (hNotB : ¬ p ∣ 312450),
        order_of_C_B_inv_mod_p2 312453 312450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 312450 312453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_312450_312453
def row_312798_312801 :
    HasPrimeWithExpOne (S_val 312798 312801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312798 312801 ∧ ¬ p ∣ (312801 - 312798) ∧
      ∃ (hNotC : ¬ p ∣ 312801) (hNotB : ¬ p ∣ 312798),
        order_of_C_B_inv_mod_p2 312801 312798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 312798 312801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_312798_312801
def row_313141_313144 :
    HasPrimeWithExpOne (S_val 313141 313144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313141 313144 ∧ ¬ p ∣ (313144 - 313141) ∧
      ∃ (hNotC : ¬ p ∣ 313144) (hNotB : ¬ p ∣ 313141),
        order_of_C_B_inv_mod_p2 313144 313141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 313141 313144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_313141_313144
def row_313489_313492 :
    HasPrimeWithExpOne (S_val 313489 313492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313489 313492 ∧ ¬ p ∣ (313492 - 313489) ∧
      ∃ (hNotC : ¬ p ∣ 313492) (hNotB : ¬ p ∣ 313489),
        order_of_C_B_inv_mod_p2 313492 313489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 313489 313492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_313489_313492
def row_313800_313803 :
    HasPrimeWithExpOne (S_val 313800 313803) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313800 313803 ∧ ¬ p ∣ (313803 - 313800) ∧
      ∃ (hNotC : ¬ p ∣ 313803) (hNotB : ¬ p ∣ 313800),
        order_of_C_B_inv_mod_p2 313803 313800 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 313800 313803 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_313800_313803
def row_314126_314129 :
    HasPrimeWithExpOne (S_val 314126 314129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314126 314129 ∧ ¬ p ∣ (314129 - 314126) ∧
      ∃ (hNotC : ¬ p ∣ 314129) (hNotB : ¬ p ∣ 314126),
        order_of_C_B_inv_mod_p2 314129 314126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 314126 314129 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_314126_314129
def row_314485_314488 :
    HasPrimeWithExpOne (S_val 314485 314488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314485 314488 ∧ ¬ p ∣ (314488 - 314485) ∧
      ∃ (hNotC : ¬ p ∣ 314488) (hNotB : ¬ p ∣ 314485),
        order_of_C_B_inv_mod_p2 314488 314485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 314485 314488 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_314485_314488
def row_314813_314816 :
    HasPrimeWithExpOne (S_val 314813 314816) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314813 314816 ∧ ¬ p ∣ (314816 - 314813) ∧
      ∃ (hNotC : ¬ p ∣ 314816) (hNotB : ¬ p ∣ 314813),
        order_of_C_B_inv_mod_p2 314816 314813 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 314813 314816 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_314813_314816
def row_315143_315146 :
    HasPrimeWithExpOne (S_val 315143 315146) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315143 315146 ∧ ¬ p ∣ (315146 - 315143) ∧
      ∃ (hNotC : ¬ p ∣ 315146) (hNotB : ¬ p ∣ 315143),
        order_of_C_B_inv_mod_p2 315146 315143 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 315143 315146 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_315143_315146
def row_315488_315491 :
    HasPrimeWithExpOne (S_val 315488 315491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315488 315491 ∧ ¬ p ∣ (315491 - 315488) ∧
      ∃ (hNotC : ¬ p ∣ 315491) (hNotB : ¬ p ∣ 315488),
        order_of_C_B_inv_mod_p2 315491 315488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 315488 315491 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_315488_315491
def row_315825_315828 :
    HasPrimeWithExpOne (S_val 315825 315828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315825 315828 ∧ ¬ p ∣ (315828 - 315825) ∧
      ∃ (hNotC : ¬ p ∣ 315828) (hNotB : ¬ p ∣ 315825),
        order_of_C_B_inv_mod_p2 315828 315825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 315825 315828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_315825_315828
def row_316157_316160 :
    HasPrimeWithExpOne (S_val 316157 316160) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316157 316160 ∧ ¬ p ∣ (316160 - 316157) ∧
      ∃ (hNotC : ¬ p ∣ 316160) (hNotB : ¬ p ∣ 316157),
        order_of_C_B_inv_mod_p2 316160 316157 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316157 316160 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_316157_316160
def row_316497_316500 :
    HasPrimeWithExpOne (S_val 316497 316500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316497 316500 ∧ ¬ p ∣ (316500 - 316497) ∧
      ∃ (hNotC : ¬ p ∣ 316500) (hNotB : ¬ p ∣ 316497),
        order_of_C_B_inv_mod_p2 316500 316497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316497 316500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_316497_316500
def row_316826_316829 :
    HasPrimeWithExpOne (S_val 316826 316829) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316826 316829 ∧ ¬ p ∣ (316829 - 316826) ∧
      ∃ (hNotC : ¬ p ∣ 316829) (hNotB : ¬ p ∣ 316826),
        order_of_C_B_inv_mod_p2 316829 316826 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316826 316829 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_316826_316829
def row_317159_317162 :
    HasPrimeWithExpOne (S_val 317159 317162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317159 317162 ∧ ¬ p ∣ (317162 - 317159) ∧
      ∃ (hNotC : ¬ p ∣ 317162) (hNotB : ¬ p ∣ 317159),
        order_of_C_B_inv_mod_p2 317162 317159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 317159 317162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_317159_317162
def row_317504_317507 :
    HasPrimeWithExpOne (S_val 317504 317507) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317504 317507 ∧ ¬ p ∣ (317507 - 317504) ∧
      ∃ (hNotC : ¬ p ∣ 317507) (hNotB : ¬ p ∣ 317504),
        order_of_C_B_inv_mod_p2 317507 317504 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 317504 317507 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_317504_317507
def row_317828_317831 :
    HasPrimeWithExpOne (S_val 317828 317831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317828 317831 ∧ ¬ p ∣ (317831 - 317828) ∧
      ∃ (hNotC : ¬ p ∣ 317831) (hNotB : ¬ p ∣ 317828),
        order_of_C_B_inv_mod_p2 317831 317828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 317828 317831 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_317828_317831
def row_318143_318146 :
    HasPrimeWithExpOne (S_val 318143 318146) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318143 318146 ∧ ¬ p ∣ (318146 - 318143) ∧
      ∃ (hNotC : ¬ p ∣ 318146) (hNotB : ¬ p ∣ 318143),
        order_of_C_B_inv_mod_p2 318146 318143 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 318143 318146 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_318143_318146
def row_318485_318488 :
    HasPrimeWithExpOne (S_val 318485 318488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318485 318488 ∧ ¬ p ∣ (318488 - 318485) ∧
      ∃ (hNotC : ¬ p ∣ 318488) (hNotB : ¬ p ∣ 318485),
        order_of_C_B_inv_mod_p2 318488 318485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 318485 318488 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_318485_318488
def row_318827_318830 :
    HasPrimeWithExpOne (S_val 318827 318830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318827 318830 ∧ ¬ p ∣ (318830 - 318827) ∧
      ∃ (hNotC : ¬ p ∣ 318830) (hNotB : ¬ p ∣ 318827),
        order_of_C_B_inv_mod_p2 318830 318827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 318827 318830 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_318827_318830
def row_319172_319175 :
    HasPrimeWithExpOne (S_val 319172 319175) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319172 319175 ∧ ¬ p ∣ (319175 - 319172) ∧
      ∃ (hNotC : ¬ p ∣ 319175) (hNotB : ¬ p ∣ 319172),
        order_of_C_B_inv_mod_p2 319175 319172 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 319172 319175 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_319172_319175
def row_319527_319530 :
    HasPrimeWithExpOne (S_val 319527 319530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319527 319530 ∧ ¬ p ∣ (319530 - 319527) ∧
      ∃ (hNotC : ¬ p ∣ 319530) (hNotB : ¬ p ∣ 319527),
        order_of_C_B_inv_mod_p2 319530 319527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 319527 319530 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_319527_319530
def row_319851_319854 :
    HasPrimeWithExpOne (S_val 319851 319854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319851 319854 ∧ ¬ p ∣ (319854 - 319851) ∧
      ∃ (hNotC : ¬ p ∣ 319854) (hNotB : ¬ p ∣ 319851),
        order_of_C_B_inv_mod_p2 319854 319851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 319851 319854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_319851_319854
def row_320172_320175 :
    HasPrimeWithExpOne (S_val 320172 320175) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320172 320175 ∧ ¬ p ∣ (320175 - 320172) ∧
      ∃ (hNotC : ¬ p ∣ 320175) (hNotB : ¬ p ∣ 320172),
        order_of_C_B_inv_mod_p2 320175 320172 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 320172 320175 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_320172_320175
def row_320515_320518 :
    HasPrimeWithExpOne (S_val 320515 320518) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320515 320518 ∧ ¬ p ∣ (320518 - 320515) ∧
      ∃ (hNotC : ¬ p ∣ 320518) (hNotB : ¬ p ∣ 320515),
        order_of_C_B_inv_mod_p2 320518 320515 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 320515 320518 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_320515_320518
def row_320835_320838 :
    HasPrimeWithExpOne (S_val 320835 320838) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320835 320838 ∧ ¬ p ∣ (320838 - 320835) ∧
      ∃ (hNotC : ¬ p ∣ 320838) (hNotB : ¬ p ∣ 320835),
        order_of_C_B_inv_mod_p2 320838 320835 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 320835 320838 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_320835_320838
def row_321162_321165 :
    HasPrimeWithExpOne (S_val 321162 321165) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321162 321165 ∧ ¬ p ∣ (321165 - 321162) ∧
      ∃ (hNotC : ¬ p ∣ 321165) (hNotB : ¬ p ∣ 321162),
        order_of_C_B_inv_mod_p2 321165 321162 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 321162 321165 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_321162_321165
def row_321511_321514 :
    HasPrimeWithExpOne (S_val 321511 321514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321511 321514 ∧ ¬ p ∣ (321514 - 321511) ∧
      ∃ (hNotC : ¬ p ∣ 321514) (hNotB : ¬ p ∣ 321511),
        order_of_C_B_inv_mod_p2 321514 321511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 321511 321514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_321511_321514
def row_321856_321859 :
    HasPrimeWithExpOne (S_val 321856 321859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321856 321859 ∧ ¬ p ∣ (321859 - 321856) ∧
      ∃ (hNotC : ¬ p ∣ 321859) (hNotB : ¬ p ∣ 321856),
        order_of_C_B_inv_mod_p2 321859 321856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 321856 321859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_321856_321859
def row_322193_322196 :
    HasPrimeWithExpOne (S_val 322193 322196) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322193 322196 ∧ ¬ p ∣ (322196 - 322193) ∧
      ∃ (hNotC : ¬ p ∣ 322196) (hNotB : ¬ p ∣ 322193),
        order_of_C_B_inv_mod_p2 322196 322193 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 322193 322196 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_322193_322196
def row_322545_322548 :
    HasPrimeWithExpOne (S_val 322545 322548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322545 322548 ∧ ¬ p ∣ (322548 - 322545) ∧
      ∃ (hNotC : ¬ p ∣ 322548) (hNotB : ¬ p ∣ 322545),
        order_of_C_B_inv_mod_p2 322548 322545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 322545 322548 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_322545_322548
def row_322881_322884 :
    HasPrimeWithExpOne (S_val 322881 322884) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322881 322884 ∧ ¬ p ∣ (322884 - 322881) ∧
      ∃ (hNotC : ¬ p ∣ 322884) (hNotB : ¬ p ∣ 322881),
        order_of_C_B_inv_mod_p2 322884 322881 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 322881 322884 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_322881_322884
def row_323233_323236 :
    HasPrimeWithExpOne (S_val 323233 323236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323233 323236 ∧ ¬ p ∣ (323236 - 323233) ∧
      ∃ (hNotC : ¬ p ∣ 323236) (hNotB : ¬ p ∣ 323233),
        order_of_C_B_inv_mod_p2 323236 323233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 323233 323236 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_323233_323236
def row_323556_323559 :
    HasPrimeWithExpOne (S_val 323556 323559) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323556 323559 ∧ ¬ p ∣ (323559 - 323556) ∧
      ∃ (hNotC : ¬ p ∣ 323559) (hNotB : ¬ p ∣ 323556),
        order_of_C_B_inv_mod_p2 323559 323556 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 323556 323559 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_323556_323559
def row_323892_323895 :
    HasPrimeWithExpOne (S_val 323892 323895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323892 323895 ∧ ¬ p ∣ (323895 - 323892) ∧
      ∃ (hNotC : ¬ p ∣ 323895) (hNotB : ¬ p ∣ 323892),
        order_of_C_B_inv_mod_p2 323895 323892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 323892 323895 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_323892_323895
def row_324222_324225 :
    HasPrimeWithExpOne (S_val 324222 324225) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324222 324225 ∧ ¬ p ∣ (324225 - 324222) ∧
      ∃ (hNotC : ¬ p ∣ 324225) (hNotB : ¬ p ∣ 324222),
        order_of_C_B_inv_mod_p2 324225 324222 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 324222 324225 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_324222_324225
def row_324537_324540 :
    HasPrimeWithExpOne (S_val 324537 324540) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324537 324540 ∧ ¬ p ∣ (324540 - 324537) ∧
      ∃ (hNotC : ¬ p ∣ 324540) (hNotB : ¬ p ∣ 324537),
        order_of_C_B_inv_mod_p2 324540 324537 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 324537 324540 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_324537_324540
def row_324843_324846 :
    HasPrimeWithExpOne (S_val 324843 324846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324843 324846 ∧ ¬ p ∣ (324846 - 324843) ∧
      ∃ (hNotC : ¬ p ∣ 324846) (hNotB : ¬ p ∣ 324843),
        order_of_C_B_inv_mod_p2 324846 324843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 324843 324846 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_324843_324846
def row_325185_325188 :
    HasPrimeWithExpOne (S_val 325185 325188) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325185 325188 ∧ ¬ p ∣ (325188 - 325185) ∧
      ∃ (hNotC : ¬ p ∣ 325188) (hNotB : ¬ p ∣ 325185),
        order_of_C_B_inv_mod_p2 325188 325185 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 325185 325188 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_325185_325188
def row_325513_325516 :
    HasPrimeWithExpOne (S_val 325513 325516) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325513 325516 ∧ ¬ p ∣ (325516 - 325513) ∧
      ∃ (hNotC : ¬ p ∣ 325516) (hNotB : ¬ p ∣ 325513),
        order_of_C_B_inv_mod_p2 325516 325513 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 325513 325516 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_325513_325516
def row_325852_325855 :
    HasPrimeWithExpOne (S_val 325852 325855) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325852 325855 ∧ ¬ p ∣ (325855 - 325852) ∧
      ∃ (hNotC : ¬ p ∣ 325855) (hNotB : ¬ p ∣ 325852),
        order_of_C_B_inv_mod_p2 325855 325852 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 325852 325855 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_325852_325855
def row_326193_326196 :
    HasPrimeWithExpOne (S_val 326193 326196) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326193 326196 ∧ ¬ p ∣ (326196 - 326193) ∧
      ∃ (hNotC : ¬ p ∣ 326196) (hNotB : ¬ p ∣ 326193),
        order_of_C_B_inv_mod_p2 326196 326193 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 326193 326196 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_326193_326196
def row_326528_326531 :
    HasPrimeWithExpOne (S_val 326528 326531) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326528 326531 ∧ ¬ p ∣ (326531 - 326528) ∧
      ∃ (hNotC : ¬ p ∣ 326531) (hNotB : ¬ p ∣ 326528),
        order_of_C_B_inv_mod_p2 326531 326528 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 326528 326531 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_326528_326531
def row_326897_326900 :
    HasPrimeWithExpOne (S_val 326897 326900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326897 326900 ∧ ¬ p ∣ (326900 - 326897) ∧
      ∃ (hNotC : ¬ p ∣ 326900) (hNotB : ¬ p ∣ 326897),
        order_of_C_B_inv_mod_p2 326900 326897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 326897 326900 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_326897_326900
def row_327236_327239 :
    HasPrimeWithExpOne (S_val 327236 327239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327236 327239 ∧ ¬ p ∣ (327239 - 327236) ∧
      ∃ (hNotC : ¬ p ∣ 327239) (hNotB : ¬ p ∣ 327236),
        order_of_C_B_inv_mod_p2 327239 327236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 327236 327239 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_327236_327239
def row_327559_327562 :
    HasPrimeWithExpOne (S_val 327559 327562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327559 327562 ∧ ¬ p ∣ (327562 - 327559) ∧
      ∃ (hNotC : ¬ p ∣ 327562) (hNotB : ¬ p ∣ 327559),
        order_of_C_B_inv_mod_p2 327562 327559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 327559 327562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_327559_327562
def row_327902_327905 :
    HasPrimeWithExpOne (S_val 327902 327905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327902 327905 ∧ ¬ p ∣ (327905 - 327902) ∧
      ∃ (hNotC : ¬ p ∣ 327905) (hNotB : ¬ p ∣ 327902),
        order_of_C_B_inv_mod_p2 327905 327902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 327902 327905 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_327902_327905
def row_328229_328232 :
    HasPrimeWithExpOne (S_val 328229 328232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328229 328232 ∧ ¬ p ∣ (328232 - 328229) ∧
      ∃ (hNotC : ¬ p ∣ 328232) (hNotB : ¬ p ∣ 328229),
        order_of_C_B_inv_mod_p2 328232 328229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 328229 328232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_328229_328232
def row_328553_328556 :
    HasPrimeWithExpOne (S_val 328553 328556) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328553 328556 ∧ ¬ p ∣ (328556 - 328553) ∧
      ∃ (hNotC : ¬ p ∣ 328556) (hNotB : ¬ p ∣ 328553),
        order_of_C_B_inv_mod_p2 328556 328553 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 328553 328556 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_328553_328556
def row_328900_328903 :
    HasPrimeWithExpOne (S_val 328900 328903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328900 328903 ∧ ¬ p ∣ (328903 - 328900) ∧
      ∃ (hNotC : ¬ p ∣ 328903) (hNotB : ¬ p ∣ 328900),
        order_of_C_B_inv_mod_p2 328903 328900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 328900 328903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_328900_328903
def row_329242_329245 :
    HasPrimeWithExpOne (S_val 329242 329245) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329242 329245 ∧ ¬ p ∣ (329245 - 329242) ∧
      ∃ (hNotC : ¬ p ∣ 329245) (hNotB : ¬ p ∣ 329242),
        order_of_C_B_inv_mod_p2 329245 329242 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 329242 329245 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_329242_329245
def row_329571_329574 :
    HasPrimeWithExpOne (S_val 329571 329574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329571 329574 ∧ ¬ p ∣ (329574 - 329571) ∧
      ∃ (hNotC : ¬ p ∣ 329574) (hNotB : ¬ p ∣ 329571),
        order_of_C_B_inv_mod_p2 329574 329571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 329571 329574 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_329571_329574
def row_329918_329921 :
    HasPrimeWithExpOne (S_val 329918 329921) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329918 329921 ∧ ¬ p ∣ (329921 - 329918) ∧
      ∃ (hNotC : ¬ p ∣ 329921) (hNotB : ¬ p ∣ 329918),
        order_of_C_B_inv_mod_p2 329921 329918 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 329918 329921 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_329918_329921
def row_330258_330261 :
    HasPrimeWithExpOne (S_val 330258 330261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330258 330261 ∧ ¬ p ∣ (330261 - 330258) ∧
      ∃ (hNotC : ¬ p ∣ 330261) (hNotB : ¬ p ∣ 330258),
        order_of_C_B_inv_mod_p2 330261 330258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 330258 330261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_330258_330261
def row_330592_330595 :
    HasPrimeWithExpOne (S_val 330592 330595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330592 330595 ∧ ¬ p ∣ (330595 - 330592) ∧
      ∃ (hNotC : ¬ p ∣ 330595) (hNotB : ¬ p ∣ 330592),
        order_of_C_B_inv_mod_p2 330595 330592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 330592 330595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_330592_330595
def row_330944_330947 :
    HasPrimeWithExpOne (S_val 330944 330947) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330944 330947 ∧ ¬ p ∣ (330947 - 330944) ∧
      ∃ (hNotC : ¬ p ∣ 330947) (hNotB : ¬ p ∣ 330944),
        order_of_C_B_inv_mod_p2 330947 330944 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 330944 330947 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_330944_330947
def row_331263_331266 :
    HasPrimeWithExpOne (S_val 331263 331266) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331263 331266 ∧ ¬ p ∣ (331266 - 331263) ∧
      ∃ (hNotC : ¬ p ∣ 331266) (hNotB : ¬ p ∣ 331263),
        order_of_C_B_inv_mod_p2 331266 331263 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331263 331266 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_331263_331266
def row_331598_331601 :
    HasPrimeWithExpOne (S_val 331598 331601) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331598 331601 ∧ ¬ p ∣ (331601 - 331598) ∧
      ∃ (hNotC : ¬ p ∣ 331601) (hNotB : ¬ p ∣ 331598),
        order_of_C_B_inv_mod_p2 331601 331598 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331598 331601 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_331598_331601
def row_331944_331947 :
    HasPrimeWithExpOne (S_val 331944 331947) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331944 331947 ∧ ¬ p ∣ (331947 - 331944) ∧
      ∃ (hNotC : ¬ p ∣ 331947) (hNotB : ¬ p ∣ 331944),
        order_of_C_B_inv_mod_p2 331947 331944 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331944 331947 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_331944_331947
def row_332265_332268 :
    HasPrimeWithExpOne (S_val 332265 332268) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332265 332268 ∧ ¬ p ∣ (332268 - 332265) ∧
      ∃ (hNotC : ¬ p ∣ 332268) (hNotB : ¬ p ∣ 332265),
        order_of_C_B_inv_mod_p2 332268 332265 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 332265 332268 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_332265_332268
def row_332596_332599 :
    HasPrimeWithExpOne (S_val 332596 332599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332596 332599 ∧ ¬ p ∣ (332599 - 332596) ∧
      ∃ (hNotC : ¬ p ∣ 332599) (hNotB : ¬ p ∣ 332596),
        order_of_C_B_inv_mod_p2 332599 332596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 332596 332599 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_332596_332599
def row_332924_332927 :
    HasPrimeWithExpOne (S_val 332924 332927) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332924 332927 ∧ ¬ p ∣ (332927 - 332924) ∧
      ∃ (hNotC : ¬ p ∣ 332927) (hNotB : ¬ p ∣ 332924),
        order_of_C_B_inv_mod_p2 332927 332924 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 332924 332927 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_332924_332927
def row_333255_333258 :
    HasPrimeWithExpOne (S_val 333255 333258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333255 333258 ∧ ¬ p ∣ (333258 - 333255) ∧
      ∃ (hNotC : ¬ p ∣ 333258) (hNotB : ¬ p ∣ 333255),
        order_of_C_B_inv_mod_p2 333258 333255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 333255 333258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_333255_333258
def row_333602_333605 :
    HasPrimeWithExpOne (S_val 333602 333605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333602 333605 ∧ ¬ p ∣ (333605 - 333602) ∧
      ∃ (hNotC : ¬ p ∣ 333605) (hNotB : ¬ p ∣ 333602),
        order_of_C_B_inv_mod_p2 333605 333602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 333602 333605 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_333602_333605
def row_333947_333950 :
    HasPrimeWithExpOne (S_val 333947 333950) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333947 333950 ∧ ¬ p ∣ (333950 - 333947) ∧
      ∃ (hNotC : ¬ p ∣ 333950) (hNotB : ¬ p ∣ 333947),
        order_of_C_B_inv_mod_p2 333950 333947 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 333947 333950 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_333947_333950
def row_334266_334269 :
    HasPrimeWithExpOne (S_val 334266 334269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334266 334269 ∧ ¬ p ∣ (334269 - 334266) ∧
      ∃ (hNotC : ¬ p ∣ 334269) (hNotB : ¬ p ∣ 334266),
        order_of_C_B_inv_mod_p2 334269 334266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 334266 334269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_334266_334269
def row_334593_334596 :
    HasPrimeWithExpOne (S_val 334593 334596) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334593 334596 ∧ ¬ p ∣ (334596 - 334593) ∧
      ∃ (hNotC : ¬ p ∣ 334596) (hNotB : ¬ p ∣ 334593),
        order_of_C_B_inv_mod_p2 334596 334593 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 334593 334596 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_334593_334596
def row_334920_334923 :
    HasPrimeWithExpOne (S_val 334920 334923) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334920 334923 ∧ ¬ p ∣ (334923 - 334920) ∧
      ∃ (hNotC : ¬ p ∣ 334923) (hNotB : ¬ p ∣ 334920),
        order_of_C_B_inv_mod_p2 334923 334920 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 334920 334923 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_334920_334923
def row_335279_335282 :
    HasPrimeWithExpOne (S_val 335279 335282) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335279 335282 ∧ ¬ p ∣ (335282 - 335279) ∧
      ∃ (hNotC : ¬ p ∣ 335282) (hNotB : ¬ p ∣ 335279),
        order_of_C_B_inv_mod_p2 335282 335279 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 335279 335282 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_335279_335282
def row_335596_335599 :
    HasPrimeWithExpOne (S_val 335596 335599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335596 335599 ∧ ¬ p ∣ (335599 - 335596) ∧
      ∃ (hNotC : ¬ p ∣ 335599) (hNotB : ¬ p ∣ 335596),
        order_of_C_B_inv_mod_p2 335599 335596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 335596 335599 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_335596_335599
def row_335946_335949 :
    HasPrimeWithExpOne (S_val 335946 335949) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335946 335949 ∧ ¬ p ∣ (335949 - 335946) ∧
      ∃ (hNotC : ¬ p ∣ 335949) (hNotB : ¬ p ∣ 335946),
        order_of_C_B_inv_mod_p2 335949 335946 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 335946 335949 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_335946_335949
def row_336290_336293 :
    HasPrimeWithExpOne (S_val 336290 336293) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336290 336293 ∧ ¬ p ∣ (336293 - 336290) ∧
      ∃ (hNotC : ¬ p ∣ 336293) (hNotB : ¬ p ∣ 336290),
        order_of_C_B_inv_mod_p2 336293 336290 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 336290 336293 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_336290_336293
def row_336640_336643 :
    HasPrimeWithExpOne (S_val 336640 336643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336640 336643 ∧ ¬ p ∣ (336643 - 336640) ∧
      ∃ (hNotC : ¬ p ∣ 336643) (hNotB : ¬ p ∣ 336640),
        order_of_C_B_inv_mod_p2 336643 336640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 336640 336643 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_336640_336643
def row_336972_336975 :
    HasPrimeWithExpOne (S_val 336972 336975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336972 336975 ∧ ¬ p ∣ (336975 - 336972) ∧
      ∃ (hNotC : ¬ p ∣ 336975) (hNotB : ¬ p ∣ 336972),
        order_of_C_B_inv_mod_p2 336975 336972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 336972 336975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_336972_336975
def row_337285_337288 :
    HasPrimeWithExpOne (S_val 337285 337288) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337285 337288 ∧ ¬ p ∣ (337288 - 337285) ∧
      ∃ (hNotC : ¬ p ∣ 337288) (hNotB : ¬ p ∣ 337285),
        order_of_C_B_inv_mod_p2 337288 337285 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 337285 337288 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_337285_337288
def row_337609_337612 :
    HasPrimeWithExpOne (S_val 337609 337612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337609 337612 ∧ ¬ p ∣ (337612 - 337609) ∧
      ∃ (hNotC : ¬ p ∣ 337612) (hNotB : ¬ p ∣ 337609),
        order_of_C_B_inv_mod_p2 337612 337609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 337609 337612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_337609_337612
def row_337945_337948 :
    HasPrimeWithExpOne (S_val 337945 337948) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337945 337948 ∧ ¬ p ∣ (337948 - 337945) ∧
      ∃ (hNotC : ¬ p ∣ 337948) (hNotB : ¬ p ∣ 337945),
        order_of_C_B_inv_mod_p2 337948 337945 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 337945 337948 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_337945_337948
def row_338301_338304 :
    HasPrimeWithExpOne (S_val 338301 338304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338301 338304 ∧ ¬ p ∣ (338304 - 338301) ∧
      ∃ (hNotC : ¬ p ∣ 338304) (hNotB : ¬ p ∣ 338301),
        order_of_C_B_inv_mod_p2 338304 338301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 338301 338304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_338301_338304
def row_338625_338628 :
    HasPrimeWithExpOne (S_val 338625 338628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338625 338628 ∧ ¬ p ∣ (338628 - 338625) ∧
      ∃ (hNotC : ¬ p ∣ 338628) (hNotB : ¬ p ∣ 338625),
        order_of_C_B_inv_mod_p2 338628 338625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 338625 338628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_338625_338628
def row_338968_338971 :
    HasPrimeWithExpOne (S_val 338968 338971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338968 338971 ∧ ¬ p ∣ (338971 - 338968) ∧
      ∃ (hNotC : ¬ p ∣ 338971) (hNotB : ¬ p ∣ 338968),
        order_of_C_B_inv_mod_p2 338971 338968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 338968 338971 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_338968_338971
def row_339306_339309 :
    HasPrimeWithExpOne (S_val 339306 339309) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339306 339309 ∧ ¬ p ∣ (339309 - 339306) ∧
      ∃ (hNotC : ¬ p ∣ 339309) (hNotB : ¬ p ∣ 339306),
        order_of_C_B_inv_mod_p2 339309 339306 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 339306 339309 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_339306_339309
def row_339638_339641 :
    HasPrimeWithExpOne (S_val 339638 339641) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339638 339641 ∧ ¬ p ∣ (339641 - 339638) ∧
      ∃ (hNotC : ¬ p ∣ 339641) (hNotB : ¬ p ∣ 339638),
        order_of_C_B_inv_mod_p2 339641 339638 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 339638 339641 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_339638_339641
def row_339979_339982 :
    HasPrimeWithExpOne (S_val 339979 339982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339979 339982 ∧ ¬ p ∣ (339982 - 339979) ∧
      ∃ (hNotC : ¬ p ∣ 339982) (hNotB : ¬ p ∣ 339979),
        order_of_C_B_inv_mod_p2 339982 339979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 339979 339982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_339979_339982
def row_340315_340318 :
    HasPrimeWithExpOne (S_val 340315 340318) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340315 340318 ∧ ¬ p ∣ (340318 - 340315) ∧
      ∃ (hNotC : ¬ p ∣ 340318) (hNotB : ¬ p ∣ 340315),
        order_of_C_B_inv_mod_p2 340318 340315 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 340315 340318 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_340315_340318
def row_340659_340662 :
    HasPrimeWithExpOne (S_val 340659 340662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340659 340662 ∧ ¬ p ∣ (340662 - 340659) ∧
      ∃ (hNotC : ¬ p ∣ 340662) (hNotB : ¬ p ∣ 340659),
        order_of_C_B_inv_mod_p2 340662 340659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 340659 340662 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_340659_340662
def row_340982_340985 :
    HasPrimeWithExpOne (S_val 340982 340985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340982 340985 ∧ ¬ p ∣ (340985 - 340982) ∧
      ∃ (hNotC : ¬ p ∣ 340985) (hNotB : ¬ p ∣ 340982),
        order_of_C_B_inv_mod_p2 340985 340982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 340982 340985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_340982_340985
def row_341311_341314 :
    HasPrimeWithExpOne (S_val 341311 341314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341311 341314 ∧ ¬ p ∣ (341314 - 341311) ∧
      ∃ (hNotC : ¬ p ∣ 341314) (hNotB : ¬ p ∣ 341311),
        order_of_C_B_inv_mod_p2 341314 341311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 341311 341314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_341311_341314
def row_341619_341622 :
    HasPrimeWithExpOne (S_val 341619 341622) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341619 341622 ∧ ¬ p ∣ (341622 - 341619) ∧
      ∃ (hNotC : ¬ p ∣ 341622) (hNotB : ¬ p ∣ 341619),
        order_of_C_B_inv_mod_p2 341622 341619 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 341619 341622 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_341619_341622
def row_341960_341963 :
    HasPrimeWithExpOne (S_val 341960 341963) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341960 341963 ∧ ¬ p ∣ (341963 - 341960) ∧
      ∃ (hNotC : ¬ p ∣ 341963) (hNotB : ¬ p ∣ 341960),
        order_of_C_B_inv_mod_p2 341963 341960 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 341960 341963 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_341960_341963
def row_342290_342293 :
    HasPrimeWithExpOne (S_val 342290 342293) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342290 342293 ∧ ¬ p ∣ (342293 - 342290) ∧
      ∃ (hNotC : ¬ p ∣ 342293) (hNotB : ¬ p ∣ 342290),
        order_of_C_B_inv_mod_p2 342293 342290 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 342290 342293 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_342290_342293
def row_342619_342622 :
    HasPrimeWithExpOne (S_val 342619 342622) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342619 342622 ∧ ¬ p ∣ (342622 - 342619) ∧
      ∃ (hNotC : ¬ p ∣ 342622) (hNotB : ¬ p ∣ 342619),
        order_of_C_B_inv_mod_p2 342622 342619 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 342619 342622 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_342619_342622
def row_342956_342959 :
    HasPrimeWithExpOne (S_val 342956 342959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342956 342959 ∧ ¬ p ∣ (342959 - 342956) ∧
      ∃ (hNotC : ¬ p ∣ 342959) (hNotB : ¬ p ∣ 342956),
        order_of_C_B_inv_mod_p2 342959 342956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 342956 342959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_342956_342959
def row_343299_343302 :
    HasPrimeWithExpOne (S_val 343299 343302) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343299 343302 ∧ ¬ p ∣ (343302 - 343299) ∧
      ∃ (hNotC : ¬ p ∣ 343302) (hNotB : ¬ p ∣ 343299),
        order_of_C_B_inv_mod_p2 343302 343299 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 343299 343302 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_343299_343302
def row_343637_343640 :
    HasPrimeWithExpOne (S_val 343637 343640) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343637 343640 ∧ ¬ p ∣ (343640 - 343637) ∧
      ∃ (hNotC : ¬ p ∣ 343640) (hNotB : ¬ p ∣ 343637),
        order_of_C_B_inv_mod_p2 343640 343637 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 343637 343640 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_343637_343640
def row_343978_343981 :
    HasPrimeWithExpOne (S_val 343978 343981) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343978 343981 ∧ ¬ p ∣ (343981 - 343978) ∧
      ∃ (hNotC : ¬ p ∣ 343981) (hNotB : ¬ p ∣ 343978),
        order_of_C_B_inv_mod_p2 343981 343978 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 343978 343981 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_343978_343981
def row_344322_344325 :
    HasPrimeWithExpOne (S_val 344322 344325) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344322 344325 ∧ ¬ p ∣ (344325 - 344322) ∧
      ∃ (hNotC : ¬ p ∣ 344325) (hNotB : ¬ p ∣ 344322),
        order_of_C_B_inv_mod_p2 344325 344322 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 344322 344325 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_344322_344325
def row_344651_344654 :
    HasPrimeWithExpOne (S_val 344651 344654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344651 344654 ∧ ¬ p ∣ (344654 - 344651) ∧
      ∃ (hNotC : ¬ p ∣ 344654) (hNotB : ¬ p ∣ 344651),
        order_of_C_B_inv_mod_p2 344654 344651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 344651 344654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_344651_344654
def row_344990_344993 :
    HasPrimeWithExpOne (S_val 344990 344993) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344990 344993 ∧ ¬ p ∣ (344993 - 344990) ∧
      ∃ (hNotC : ¬ p ∣ 344993) (hNotB : ¬ p ∣ 344990),
        order_of_C_B_inv_mod_p2 344993 344990 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 344990 344993 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_344990_344993
def row_345299_345302 :
    HasPrimeWithExpOne (S_val 345299 345302) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345299 345302 ∧ ¬ p ∣ (345302 - 345299) ∧
      ∃ (hNotC : ¬ p ∣ 345302) (hNotB : ¬ p ∣ 345299),
        order_of_C_B_inv_mod_p2 345302 345299 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 345299 345302 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_345299_345302
def row_345633_345636 :
    HasPrimeWithExpOne (S_val 345633 345636) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345633 345636 ∧ ¬ p ∣ (345636 - 345633) ∧
      ∃ (hNotC : ¬ p ∣ 345636) (hNotB : ¬ p ∣ 345633),
        order_of_C_B_inv_mod_p2 345636 345633 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 345633 345636 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_345633_345636
def row_345954_345957 :
    HasPrimeWithExpOne (S_val 345954 345957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345954 345957 ∧ ¬ p ∣ (345957 - 345954) ∧
      ∃ (hNotC : ¬ p ∣ 345957) (hNotB : ¬ p ∣ 345954),
        order_of_C_B_inv_mod_p2 345957 345954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 345954 345957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_345954_345957
def row_346301_346304 :
    HasPrimeWithExpOne (S_val 346301 346304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346301 346304 ∧ ¬ p ∣ (346304 - 346301) ∧
      ∃ (hNotC : ¬ p ∣ 346304) (hNotB : ¬ p ∣ 346301),
        order_of_C_B_inv_mod_p2 346304 346301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 346301 346304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_346301_346304
def row_346657_346660 :
    HasPrimeWithExpOne (S_val 346657 346660) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346657 346660 ∧ ¬ p ∣ (346660 - 346657) ∧
      ∃ (hNotC : ¬ p ∣ 346660) (hNotB : ¬ p ∣ 346657),
        order_of_C_B_inv_mod_p2 346660 346657 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 346657 346660 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_346657_346660
def row_346996_346999 :
    HasPrimeWithExpOne (S_val 346996 346999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346996 346999 ∧ ¬ p ∣ (346999 - 346996) ∧
      ∃ (hNotC : ¬ p ∣ 346999) (hNotB : ¬ p ∣ 346996),
        order_of_C_B_inv_mod_p2 346999 346996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 346996 346999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_346996_346999
def row_347347_347350 :
    HasPrimeWithExpOne (S_val 347347 347350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 347347 347350 ∧ ¬ p ∣ (347350 - 347347) ∧
      ∃ (hNotC : ¬ p ∣ 347350) (hNotB : ¬ p ∣ 347347),
        order_of_C_B_inv_mod_p2 347350 347347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 347347 347350 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_347347_347350
def row_347692_347695 :
    HasPrimeWithExpOne (S_val 347692 347695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 347692 347695 ∧ ¬ p ∣ (347695 - 347692) ∧
      ∃ (hNotC : ¬ p ∣ 347695) (hNotB : ¬ p ∣ 347692),
        order_of_C_B_inv_mod_p2 347695 347692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 347692 347695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_347692_347695
def row_348037_348040 :
    HasPrimeWithExpOne (S_val 348037 348040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348037 348040 ∧ ¬ p ∣ (348040 - 348037) ∧
      ∃ (hNotC : ¬ p ∣ 348040) (hNotB : ¬ p ∣ 348037),
        order_of_C_B_inv_mod_p2 348040 348037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 348037 348040 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_348037_348040
def row_348369_348372 :
    HasPrimeWithExpOne (S_val 348369 348372) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348369 348372 ∧ ¬ p ∣ (348372 - 348369) ∧
      ∃ (hNotC : ¬ p ∣ 348372) (hNotB : ¬ p ∣ 348369),
        order_of_C_B_inv_mod_p2 348372 348369 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 348369 348372 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_348369_348372
def row_348718_348721 :
    HasPrimeWithExpOne (S_val 348718 348721) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348718 348721 ∧ ¬ p ∣ (348721 - 348718) ∧
      ∃ (hNotC : ¬ p ∣ 348721) (hNotB : ¬ p ∣ 348718),
        order_of_C_B_inv_mod_p2 348721 348718 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 348718 348721 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_348718_348721
def row_349038_349041 :
    HasPrimeWithExpOne (S_val 349038 349041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349038 349041 ∧ ¬ p ∣ (349041 - 349038) ∧
      ∃ (hNotC : ¬ p ∣ 349041) (hNotB : ¬ p ∣ 349038),
        order_of_C_B_inv_mod_p2 349041 349038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 349038 349041 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_349038_349041
def row_349358_349361 :
    HasPrimeWithExpOne (S_val 349358 349361) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349358 349361 ∧ ¬ p ∣ (349361 - 349358) ∧
      ∃ (hNotC : ¬ p ∣ 349361) (hNotB : ¬ p ∣ 349358),
        order_of_C_B_inv_mod_p2 349361 349358 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 349358 349361 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_349358_349361
def row_349685_349688 :
    HasPrimeWithExpOne (S_val 349685 349688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349685 349688 ∧ ¬ p ∣ (349688 - 349685) ∧
      ∃ (hNotC : ¬ p ∣ 349688) (hNotB : ¬ p ∣ 349685),
        order_of_C_B_inv_mod_p2 349688 349685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 349685 349688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_349685_349688
def row_350011_350014 :
    HasPrimeWithExpOne (S_val 350011 350014) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350011 350014 ∧ ¬ p ∣ (350014 - 350011) ∧
      ∃ (hNotC : ¬ p ∣ 350014) (hNotB : ¬ p ∣ 350011),
        order_of_C_B_inv_mod_p2 350014 350011 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350011 350014 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_350011_350014
def row_350344_350347 :
    HasPrimeWithExpOne (S_val 350344 350347) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350344 350347 ∧ ¬ p ∣ (350347 - 350344) ∧
      ∃ (hNotC : ¬ p ∣ 350347) (hNotB : ¬ p ∣ 350344),
        order_of_C_B_inv_mod_p2 350347 350344 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350344 350347 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_350344_350347
def row_350685_350688 :
    HasPrimeWithExpOne (S_val 350685 350688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350685 350688 ∧ ¬ p ∣ (350688 - 350685) ∧
      ∃ (hNotC : ¬ p ∣ 350688) (hNotB : ¬ p ∣ 350685),
        order_of_C_B_inv_mod_p2 350688 350685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350685 350688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_350685_350688
def row_351017_351020 :
    HasPrimeWithExpOne (S_val 351017 351020) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351017 351020 ∧ ¬ p ∣ (351020 - 351017) ∧
      ∃ (hNotC : ¬ p ∣ 351020) (hNotB : ¬ p ∣ 351017),
        order_of_C_B_inv_mod_p2 351020 351017 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 351017 351020 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_351017_351020
def row_351347_351350 :
    HasPrimeWithExpOne (S_val 351347 351350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351347 351350 ∧ ¬ p ∣ (351350 - 351347) ∧
      ∃ (hNotC : ¬ p ∣ 351350) (hNotB : ¬ p ∣ 351347),
        order_of_C_B_inv_mod_p2 351350 351347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 351347 351350 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_351347_351350
def row_351710_351713 :
    HasPrimeWithExpOne (S_val 351710 351713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351710 351713 ∧ ¬ p ∣ (351713 - 351710) ∧
      ∃ (hNotC : ¬ p ∣ 351713) (hNotB : ¬ p ∣ 351710),
        order_of_C_B_inv_mod_p2 351713 351710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 351710 351713 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_351710_351713
def row_352036_352039 :
    HasPrimeWithExpOne (S_val 352036 352039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352036 352039 ∧ ¬ p ∣ (352039 - 352036) ∧
      ∃ (hNotC : ¬ p ∣ 352039) (hNotB : ¬ p ∣ 352036),
        order_of_C_B_inv_mod_p2 352039 352036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 352036 352039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_352036_352039
def row_352363_352366 :
    HasPrimeWithExpOne (S_val 352363 352366) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352363 352366 ∧ ¬ p ∣ (352366 - 352363) ∧
      ∃ (hNotC : ¬ p ∣ 352366) (hNotB : ¬ p ∣ 352363),
        order_of_C_B_inv_mod_p2 352366 352363 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 352363 352366 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_352363_352366
def row_352707_352710 :
    HasPrimeWithExpOne (S_val 352707 352710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352707 352710 ∧ ¬ p ∣ (352710 - 352707) ∧
      ∃ (hNotC : ¬ p ∣ 352710) (hNotB : ¬ p ∣ 352707),
        order_of_C_B_inv_mod_p2 352710 352707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 352707 352710 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_352707_352710
def row_353030_353033 :
    HasPrimeWithExpOne (S_val 353030 353033) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353030 353033 ∧ ¬ p ∣ (353033 - 353030) ∧
      ∃ (hNotC : ¬ p ∣ 353033) (hNotB : ¬ p ∣ 353030),
        order_of_C_B_inv_mod_p2 353033 353030 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 353030 353033 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_353030_353033
def row_353364_353367 :
    HasPrimeWithExpOne (S_val 353364 353367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353364 353367 ∧ ¬ p ∣ (353367 - 353364) ∧
      ∃ (hNotC : ¬ p ∣ 353367) (hNotB : ¬ p ∣ 353364),
        order_of_C_B_inv_mod_p2 353367 353364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 353364 353367 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_353364_353367
def row_353696_353699 :
    HasPrimeWithExpOne (S_val 353696 353699) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353696 353699 ∧ ¬ p ∣ (353699 - 353696) ∧
      ∃ (hNotC : ¬ p ∣ 353699) (hNotB : ¬ p ∣ 353696),
        order_of_C_B_inv_mod_p2 353699 353696 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 353696 353699 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_353696_353699
def row_354037_354040 :
    HasPrimeWithExpOne (S_val 354037 354040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354037 354040 ∧ ¬ p ∣ (354040 - 354037) ∧
      ∃ (hNotC : ¬ p ∣ 354040) (hNotB : ¬ p ∣ 354037),
        order_of_C_B_inv_mod_p2 354040 354037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 354037 354040 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_354037_354040
def row_354392_354395 :
    HasPrimeWithExpOne (S_val 354392 354395) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354392 354395 ∧ ¬ p ∣ (354395 - 354392) ∧
      ∃ (hNotC : ¬ p ∣ 354395) (hNotB : ¬ p ∣ 354392),
        order_of_C_B_inv_mod_p2 354395 354392 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 354392 354395 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_354392_354395
def row_354722_354725 :
    HasPrimeWithExpOne (S_val 354722 354725) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354722 354725 ∧ ¬ p ∣ (354725 - 354722) ∧
      ∃ (hNotC : ¬ p ∣ 354725) (hNotB : ¬ p ∣ 354722),
        order_of_C_B_inv_mod_p2 354725 354722 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 354722 354725 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_354722_354725
def row_355053_355056 :
    HasPrimeWithExpOne (S_val 355053 355056) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355053 355056 ∧ ¬ p ∣ (355056 - 355053) ∧
      ∃ (hNotC : ¬ p ∣ 355056) (hNotB : ¬ p ∣ 355053),
        order_of_C_B_inv_mod_p2 355056 355053 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 355053 355056 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_355053_355056
def row_355397_355400 :
    HasPrimeWithExpOne (S_val 355397 355400) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355397 355400 ∧ ¬ p ∣ (355400 - 355397) ∧
      ∃ (hNotC : ¬ p ∣ 355400) (hNotB : ¬ p ∣ 355397),
        order_of_C_B_inv_mod_p2 355400 355397 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 355397 355400 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_355397_355400
def row_355727_355730 :
    HasPrimeWithExpOne (S_val 355727 355730) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355727 355730 ∧ ¬ p ∣ (355730 - 355727) ∧
      ∃ (hNotC : ¬ p ∣ 355730) (hNotB : ¬ p ∣ 355727),
        order_of_C_B_inv_mod_p2 355730 355727 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 355727 355730 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_355727_355730
def row_356065_356068 :
    HasPrimeWithExpOne (S_val 356065 356068) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356065 356068 ∧ ¬ p ∣ (356068 - 356065) ∧
      ∃ (hNotC : ¬ p ∣ 356068) (hNotB : ¬ p ∣ 356065),
        order_of_C_B_inv_mod_p2 356068 356065 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 356065 356068 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_356065_356068
def row_356410_356413 :
    HasPrimeWithExpOne (S_val 356410 356413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356410 356413 ∧ ¬ p ∣ (356413 - 356410) ∧
      ∃ (hNotC : ¬ p ∣ 356413) (hNotB : ¬ p ∣ 356410),
        order_of_C_B_inv_mod_p2 356413 356410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 356410 356413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_356410_356413
def row_356750_356753 :
    HasPrimeWithExpOne (S_val 356750 356753) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356750 356753 ∧ ¬ p ∣ (356753 - 356750) ∧
      ∃ (hNotC : ¬ p ∣ 356753) (hNotB : ¬ p ∣ 356750),
        order_of_C_B_inv_mod_p2 356753 356750 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 356750 356753 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_356750_356753
def row_357088_357091 :
    HasPrimeWithExpOne (S_val 357088 357091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357088 357091 ∧ ¬ p ∣ (357091 - 357088) ∧
      ∃ (hNotC : ¬ p ∣ 357091) (hNotB : ¬ p ∣ 357088),
        order_of_C_B_inv_mod_p2 357091 357088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 357088 357091 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_357088_357091
def row_357441_357444 :
    HasPrimeWithExpOne (S_val 357441 357444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357441 357444 ∧ ¬ p ∣ (357444 - 357441) ∧
      ∃ (hNotC : ¬ p ∣ 357444) (hNotB : ¬ p ∣ 357441),
        order_of_C_B_inv_mod_p2 357444 357441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 357441 357444 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_357441_357444
def row_357773_357776 :
    HasPrimeWithExpOne (S_val 357773 357776) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357773 357776 ∧ ¬ p ∣ (357776 - 357773) ∧
      ∃ (hNotC : ¬ p ∣ 357776) (hNotB : ¬ p ∣ 357773),
        order_of_C_B_inv_mod_p2 357776 357773 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 357773 357776 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_357773_357776
def row_358096_358099 :
    HasPrimeWithExpOne (S_val 358096 358099) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358096 358099 ∧ ¬ p ∣ (358099 - 358096) ∧
      ∃ (hNotC : ¬ p ∣ 358099) (hNotB : ¬ p ∣ 358096),
        order_of_C_B_inv_mod_p2 358099 358096 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 358096 358099 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_358096_358099
def row_358433_358436 :
    HasPrimeWithExpOne (S_val 358433 358436) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358433 358436 ∧ ¬ p ∣ (358436 - 358433) ∧
      ∃ (hNotC : ¬ p ∣ 358436) (hNotB : ¬ p ∣ 358433),
        order_of_C_B_inv_mod_p2 358436 358433 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 358433 358436 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_358433_358436
def row_358763_358766 :
    HasPrimeWithExpOne (S_val 358763 358766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358763 358766 ∧ ¬ p ∣ (358766 - 358763) ∧
      ∃ (hNotC : ¬ p ∣ 358766) (hNotB : ¬ p ∣ 358763),
        order_of_C_B_inv_mod_p2 358766 358763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 358763 358766 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_358763_358766
def row_359107_359110 :
    HasPrimeWithExpOne (S_val 359107 359110) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359107 359110 ∧ ¬ p ∣ (359110 - 359107) ∧
      ∃ (hNotC : ¬ p ∣ 359110) (hNotB : ¬ p ∣ 359107),
        order_of_C_B_inv_mod_p2 359110 359107 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 359107 359110 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_359107_359110
def row_359423_359426 :
    HasPrimeWithExpOne (S_val 359423 359426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359423 359426 ∧ ¬ p ∣ (359426 - 359423) ∧
      ∃ (hNotC : ¬ p ∣ 359426) (hNotB : ¬ p ∣ 359423),
        order_of_C_B_inv_mod_p2 359426 359423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 359423 359426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_359423_359426
def row_359756_359759 :
    HasPrimeWithExpOne (S_val 359756 359759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359756 359759 ∧ ¬ p ∣ (359759 - 359756) ∧
      ∃ (hNotC : ¬ p ∣ 359759) (hNotB : ¬ p ∣ 359756),
        order_of_C_B_inv_mod_p2 359759 359756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 359756 359759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_359756_359759
def row_360095_360098 :
    HasPrimeWithExpOne (S_val 360095 360098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360095 360098 ∧ ¬ p ∣ (360098 - 360095) ∧
      ∃ (hNotC : ¬ p ∣ 360098) (hNotB : ¬ p ∣ 360095),
        order_of_C_B_inv_mod_p2 360098 360095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 360095 360098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_360095_360098
def row_360428_360431 :
    HasPrimeWithExpOne (S_val 360428 360431) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360428 360431 ∧ ¬ p ∣ (360431 - 360428) ∧
      ∃ (hNotC : ¬ p ∣ 360431) (hNotB : ¬ p ∣ 360428),
        order_of_C_B_inv_mod_p2 360431 360428 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 360428 360431 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_360428_360431
def row_360767_360770 :
    HasPrimeWithExpOne (S_val 360767 360770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360767 360770 ∧ ¬ p ∣ (360770 - 360767) ∧
      ∃ (hNotC : ¬ p ∣ 360770) (hNotB : ¬ p ∣ 360767),
        order_of_C_B_inv_mod_p2 360770 360767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 360767 360770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_360767_360770
def row_361110_361113 :
    HasPrimeWithExpOne (S_val 361110 361113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361110 361113 ∧ ¬ p ∣ (361113 - 361110) ∧
      ∃ (hNotC : ¬ p ∣ 361113) (hNotB : ¬ p ∣ 361110),
        order_of_C_B_inv_mod_p2 361113 361110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 361110 361113 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_361110_361113
def row_361464_361467 :
    HasPrimeWithExpOne (S_val 361464 361467) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361464 361467 ∧ ¬ p ∣ (361467 - 361464) ∧
      ∃ (hNotC : ¬ p ∣ 361467) (hNotB : ¬ p ∣ 361464),
        order_of_C_B_inv_mod_p2 361467 361464 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 361464 361467 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_361464_361467
def row_361784_361787 :
    HasPrimeWithExpOne (S_val 361784 361787) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361784 361787 ∧ ¬ p ∣ (361787 - 361784) ∧
      ∃ (hNotC : ¬ p ∣ 361787) (hNotB : ¬ p ∣ 361784),
        order_of_C_B_inv_mod_p2 361787 361784 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 361784 361787 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_361784_361787
def row_362106_362109 :
    HasPrimeWithExpOne (S_val 362106 362109) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362106 362109 ∧ ¬ p ∣ (362109 - 362106) ∧
      ∃ (hNotC : ¬ p ∣ 362109) (hNotB : ¬ p ∣ 362106),
        order_of_C_B_inv_mod_p2 362109 362106 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 362106 362109 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_362106_362109
def row_362419_362422 :
    HasPrimeWithExpOne (S_val 362419 362422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362419 362422 ∧ ¬ p ∣ (362422 - 362419) ∧
      ∃ (hNotC : ¬ p ∣ 362422) (hNotB : ¬ p ∣ 362419),
        order_of_C_B_inv_mod_p2 362422 362419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 362419 362422 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_362419_362422
def row_362750_362753 :
    HasPrimeWithExpOne (S_val 362750 362753) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362750 362753 ∧ ¬ p ∣ (362753 - 362750) ∧
      ∃ (hNotC : ¬ p ∣ 362753) (hNotB : ¬ p ∣ 362750),
        order_of_C_B_inv_mod_p2 362753 362750 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 362750 362753 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_362750_362753
def row_363097_363100 :
    HasPrimeWithExpOne (S_val 363097 363100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363097 363100 ∧ ¬ p ∣ (363100 - 363097) ∧
      ∃ (hNotC : ¬ p ∣ 363100) (hNotB : ¬ p ∣ 363097),
        order_of_C_B_inv_mod_p2 363100 363097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 363097 363100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_363097_363100
def row_363426_363429 :
    HasPrimeWithExpOne (S_val 363426 363429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363426 363429 ∧ ¬ p ∣ (363429 - 363426) ∧
      ∃ (hNotC : ¬ p ∣ 363429) (hNotB : ¬ p ∣ 363426),
        order_of_C_B_inv_mod_p2 363429 363426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 363426 363429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_363426_363429
def row_363776_363779 :
    HasPrimeWithExpOne (S_val 363776 363779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363776 363779 ∧ ¬ p ∣ (363779 - 363776) ∧
      ∃ (hNotC : ¬ p ∣ 363779) (hNotB : ¬ p ∣ 363776),
        order_of_C_B_inv_mod_p2 363779 363776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 363776 363779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_363776_363779
def row_364114_364117 :
    HasPrimeWithExpOne (S_val 364114 364117) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364114 364117 ∧ ¬ p ∣ (364117 - 364114) ∧
      ∃ (hNotC : ¬ p ∣ 364117) (hNotB : ¬ p ∣ 364114),
        order_of_C_B_inv_mod_p2 364117 364114 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364114 364117 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_364114_364117
def row_364460_364463 :
    HasPrimeWithExpOne (S_val 364460 364463) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364460 364463 ∧ ¬ p ∣ (364463 - 364460) ∧
      ∃ (hNotC : ¬ p ∣ 364463) (hNotB : ¬ p ∣ 364460),
        order_of_C_B_inv_mod_p2 364463 364460 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364460 364463 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_364460_364463
def row_364789_364792 :
    HasPrimeWithExpOne (S_val 364789 364792) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364789 364792 ∧ ¬ p ∣ (364792 - 364789) ∧
      ∃ (hNotC : ¬ p ∣ 364792) (hNotB : ¬ p ∣ 364789),
        order_of_C_B_inv_mod_p2 364792 364789 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364789 364792 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_364789_364792
def row_365127_365130 :
    HasPrimeWithExpOne (S_val 365127 365130) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365127 365130 ∧ ¬ p ∣ (365130 - 365127) ∧
      ∃ (hNotC : ¬ p ∣ 365130) (hNotB : ¬ p ∣ 365127),
        order_of_C_B_inv_mod_p2 365130 365127 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 365127 365130 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_365127_365130
def row_365467_365470 :
    HasPrimeWithExpOne (S_val 365467 365470) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365467 365470 ∧ ¬ p ∣ (365470 - 365467) ∧
      ∃ (hNotC : ¬ p ∣ 365470) (hNotB : ¬ p ∣ 365467),
        order_of_C_B_inv_mod_p2 365470 365467 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 365467 365470 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_365467_365470
def row_365810_365813 :
    HasPrimeWithExpOne (S_val 365810 365813) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365810 365813 ∧ ¬ p ∣ (365813 - 365810) ∧
      ∃ (hNotC : ¬ p ∣ 365813) (hNotB : ¬ p ∣ 365810),
        order_of_C_B_inv_mod_p2 365813 365810 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 365810 365813 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_365810_365813
def row_366100_366103 :
    HasPrimeWithExpOne (S_val 366100 366103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366100 366103 ∧ ¬ p ∣ (366103 - 366100) ∧
      ∃ (hNotC : ¬ p ∣ 366103) (hNotB : ¬ p ∣ 366100),
        order_of_C_B_inv_mod_p2 366103 366100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 366100 366103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_366100_366103
def row_366445_366448 :
    HasPrimeWithExpOne (S_val 366445 366448) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366445 366448 ∧ ¬ p ∣ (366448 - 366445) ∧
      ∃ (hNotC : ¬ p ∣ 366448) (hNotB : ¬ p ∣ 366445),
        order_of_C_B_inv_mod_p2 366448 366445 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 366445 366448 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_366445_366448
def row_366765_366768 :
    HasPrimeWithExpOne (S_val 366765 366768) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366765 366768 ∧ ¬ p ∣ (366768 - 366765) ∧
      ∃ (hNotC : ¬ p ∣ 366768) (hNotB : ¬ p ∣ 366765),
        order_of_C_B_inv_mod_p2 366768 366765 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 366765 366768 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_366765_366768
def row_367092_367095 :
    HasPrimeWithExpOne (S_val 367092 367095) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367092 367095 ∧ ¬ p ∣ (367095 - 367092) ∧
      ∃ (hNotC : ¬ p ∣ 367095) (hNotB : ¬ p ∣ 367092),
        order_of_C_B_inv_mod_p2 367095 367092 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 367092 367095 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_367092_367095
def row_367430_367433 :
    HasPrimeWithExpOne (S_val 367430 367433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367430 367433 ∧ ¬ p ∣ (367433 - 367430) ∧
      ∃ (hNotC : ¬ p ∣ 367433) (hNotB : ¬ p ∣ 367430),
        order_of_C_B_inv_mod_p2 367433 367430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 367430 367433 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_367430_367433
def row_367780_367783 :
    HasPrimeWithExpOne (S_val 367780 367783) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367780 367783 ∧ ¬ p ∣ (367783 - 367780) ∧
      ∃ (hNotC : ¬ p ∣ 367783) (hNotB : ¬ p ∣ 367780),
        order_of_C_B_inv_mod_p2 367783 367780 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 367780 367783 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_367780_367783
def row_368119_368122 :
    HasPrimeWithExpOne (S_val 368119 368122) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368119 368122 ∧ ¬ p ∣ (368122 - 368119) ∧
      ∃ (hNotC : ¬ p ∣ 368122) (hNotB : ¬ p ∣ 368119),
        order_of_C_B_inv_mod_p2 368122 368119 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 368119 368122 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_368119_368122
def row_368462_368465 :
    HasPrimeWithExpOne (S_val 368462 368465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368462 368465 ∧ ¬ p ∣ (368465 - 368462) ∧
      ∃ (hNotC : ¬ p ∣ 368465) (hNotB : ¬ p ∣ 368462),
        order_of_C_B_inv_mod_p2 368465 368462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 368462 368465 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_368462_368465
def row_368787_368790 :
    HasPrimeWithExpOne (S_val 368787 368790) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368787 368790 ∧ ¬ p ∣ (368790 - 368787) ∧
      ∃ (hNotC : ¬ p ∣ 368790) (hNotB : ¬ p ∣ 368787),
        order_of_C_B_inv_mod_p2 368790 368787 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 368787 368790 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_368787_368790
def row_369117_369120 :
    HasPrimeWithExpOne (S_val 369117 369120) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369117 369120 ∧ ¬ p ∣ (369120 - 369117) ∧
      ∃ (hNotC : ¬ p ∣ 369120) (hNotB : ¬ p ∣ 369117),
        order_of_C_B_inv_mod_p2 369120 369117 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 369117 369120 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_369117_369120
def row_369469_369472 :
    HasPrimeWithExpOne (S_val 369469 369472) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369469 369472 ∧ ¬ p ∣ (369472 - 369469) ∧
      ∃ (hNotC : ¬ p ∣ 369472) (hNotB : ¬ p ∣ 369469),
        order_of_C_B_inv_mod_p2 369472 369469 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 369469 369472 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_369469_369472
def row_369799_369802 :
    HasPrimeWithExpOne (S_val 369799 369802) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369799 369802 ∧ ¬ p ∣ (369802 - 369799) ∧
      ∃ (hNotC : ¬ p ∣ 369802) (hNotB : ¬ p ∣ 369799),
        order_of_C_B_inv_mod_p2 369802 369799 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 369799 369802 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_369799_369802
def row_370136_370139 :
    HasPrimeWithExpOne (S_val 370136 370139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370136 370139 ∧ ¬ p ∣ (370139 - 370136) ∧
      ∃ (hNotC : ¬ p ∣ 370139) (hNotB : ¬ p ∣ 370136),
        order_of_C_B_inv_mod_p2 370139 370136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 370136 370139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_370136_370139
def row_370461_370464 :
    HasPrimeWithExpOne (S_val 370461 370464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370461 370464 ∧ ¬ p ∣ (370464 - 370461) ∧
      ∃ (hNotC : ¬ p ∣ 370464) (hNotB : ¬ p ∣ 370461),
        order_of_C_B_inv_mod_p2 370464 370461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 370461 370464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_370461_370464
def row_370794_370797 :
    HasPrimeWithExpOne (S_val 370794 370797) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370794 370797 ∧ ¬ p ∣ (370797 - 370794) ∧
      ∃ (hNotC : ¬ p ∣ 370797) (hNotB : ¬ p ∣ 370794),
        order_of_C_B_inv_mod_p2 370797 370794 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 370794 370797 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_370794_370797
def row_371126_371129 :
    HasPrimeWithExpOne (S_val 371126 371129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371126 371129 ∧ ¬ p ∣ (371129 - 371126) ∧
      ∃ (hNotC : ¬ p ∣ 371129) (hNotB : ¬ p ∣ 371126),
        order_of_C_B_inv_mod_p2 371129 371126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 371126 371129 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_371126_371129
def row_371468_371471 :
    HasPrimeWithExpOne (S_val 371468 371471) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371468 371471 ∧ ¬ p ∣ (371471 - 371468) ∧
      ∃ (hNotC : ¬ p ∣ 371471) (hNotB : ¬ p ∣ 371468),
        order_of_C_B_inv_mod_p2 371471 371468 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 371468 371471 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_371468_371471
def row_371805_371808 :
    HasPrimeWithExpOne (S_val 371805 371808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371805 371808 ∧ ¬ p ∣ (371808 - 371805) ∧
      ∃ (hNotC : ¬ p ∣ 371808) (hNotB : ¬ p ∣ 371805),
        order_of_C_B_inv_mod_p2 371808 371805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 371805 371808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_371805_371808
def row_372150_372153 :
    HasPrimeWithExpOne (S_val 372150 372153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372150 372153 ∧ ¬ p ∣ (372153 - 372150) ∧
      ∃ (hNotC : ¬ p ∣ 372153) (hNotB : ¬ p ∣ 372150),
        order_of_C_B_inv_mod_p2 372153 372150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 372150 372153 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_372150_372153
def row_372489_372492 :
    HasPrimeWithExpOne (S_val 372489 372492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372489 372492 ∧ ¬ p ∣ (372492 - 372489) ∧
      ∃ (hNotC : ¬ p ∣ 372492) (hNotB : ¬ p ∣ 372489),
        order_of_C_B_inv_mod_p2 372492 372489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 372489 372492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_372489_372492
def row_372814_372817 :
    HasPrimeWithExpOne (S_val 372814 372817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372814 372817 ∧ ¬ p ∣ (372817 - 372814) ∧
      ∃ (hNotC : ¬ p ∣ 372817) (hNotB : ¬ p ∣ 372814),
        order_of_C_B_inv_mod_p2 372817 372814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 372814 372817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_372814_372817
def row_373156_373159 :
    HasPrimeWithExpOne (S_val 373156 373159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373156 373159 ∧ ¬ p ∣ (373159 - 373156) ∧
      ∃ (hNotC : ¬ p ∣ 373159) (hNotB : ¬ p ∣ 373156),
        order_of_C_B_inv_mod_p2 373159 373156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 373156 373159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_373156_373159
def row_373497_373500 :
    HasPrimeWithExpOne (S_val 373497 373500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373497 373500 ∧ ¬ p ∣ (373500 - 373497) ∧
      ∃ (hNotC : ¬ p ∣ 373500) (hNotB : ¬ p ∣ 373497),
        order_of_C_B_inv_mod_p2 373500 373497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 373497 373500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_373497_373500
def row_373827_373830 :
    HasPrimeWithExpOne (S_val 373827 373830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373827 373830 ∧ ¬ p ∣ (373830 - 373827) ∧
      ∃ (hNotC : ¬ p ∣ 373830) (hNotB : ¬ p ∣ 373827),
        order_of_C_B_inv_mod_p2 373830 373827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 373827 373830 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_373827_373830
def row_374185_374188 :
    HasPrimeWithExpOne (S_val 374185 374188) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374185 374188 ∧ ¬ p ∣ (374188 - 374185) ∧
      ∃ (hNotC : ¬ p ∣ 374188) (hNotB : ¬ p ∣ 374185),
        order_of_C_B_inv_mod_p2 374188 374185 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 374185 374188 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_374185_374188
def row_374490_374493 :
    HasPrimeWithExpOne (S_val 374490 374493) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374490 374493 ∧ ¬ p ∣ (374493 - 374490) ∧
      ∃ (hNotC : ¬ p ∣ 374493) (hNotB : ¬ p ∣ 374490),
        order_of_C_B_inv_mod_p2 374493 374490 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 374490 374493 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_374490_374493
def row_374823_374826 :
    HasPrimeWithExpOne (S_val 374823 374826) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374823 374826 ∧ ¬ p ∣ (374826 - 374823) ∧
      ∃ (hNotC : ¬ p ∣ 374826) (hNotB : ¬ p ∣ 374823),
        order_of_C_B_inv_mod_p2 374826 374823 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 374823 374826 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_374823_374826
def row_375144_375147 :
    HasPrimeWithExpOne (S_val 375144 375147) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375144 375147 ∧ ¬ p ∣ (375147 - 375144) ∧
      ∃ (hNotC : ¬ p ∣ 375147) (hNotB : ¬ p ∣ 375144),
        order_of_C_B_inv_mod_p2 375147 375144 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 375144 375147 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_375144_375147
def row_375466_375469 :
    HasPrimeWithExpOne (S_val 375466 375469) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375466 375469 ∧ ¬ p ∣ (375469 - 375466) ∧
      ∃ (hNotC : ¬ p ∣ 375469) (hNotB : ¬ p ∣ 375466),
        order_of_C_B_inv_mod_p2 375469 375466 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 375466 375469 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_375466_375469
def row_375802_375805 :
    HasPrimeWithExpOne (S_val 375802 375805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375802 375805 ∧ ¬ p ∣ (375805 - 375802) ∧
      ∃ (hNotC : ¬ p ∣ 375805) (hNotB : ¬ p ∣ 375802),
        order_of_C_B_inv_mod_p2 375805 375802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 375802 375805 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_375802_375805
def row_376140_376143 :
    HasPrimeWithExpOne (S_val 376140 376143) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376140 376143 ∧ ¬ p ∣ (376143 - 376140) ∧
      ∃ (hNotC : ¬ p ∣ 376143) (hNotB : ¬ p ∣ 376140),
        order_of_C_B_inv_mod_p2 376143 376140 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 376140 376143 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_376140_376143
def row_376456_376459 :
    HasPrimeWithExpOne (S_val 376456 376459) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376456 376459 ∧ ¬ p ∣ (376459 - 376456) ∧
      ∃ (hNotC : ¬ p ∣ 376459) (hNotB : ¬ p ∣ 376456),
        order_of_C_B_inv_mod_p2 376459 376456 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 376456 376459 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_376456_376459
def row_376814_376817 :
    HasPrimeWithExpOne (S_val 376814 376817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376814 376817 ∧ ¬ p ∣ (376817 - 376814) ∧
      ∃ (hNotC : ¬ p ∣ 376817) (hNotB : ¬ p ∣ 376814),
        order_of_C_B_inv_mod_p2 376817 376814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 376814 376817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_376814_376817
def row_377152_377155 :
    HasPrimeWithExpOne (S_val 377152 377155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377152 377155 ∧ ¬ p ∣ (377155 - 377152) ∧
      ∃ (hNotC : ¬ p ∣ 377155) (hNotB : ¬ p ∣ 377152),
        order_of_C_B_inv_mod_p2 377155 377152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 377152 377155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_377152_377155
def row_377492_377495 :
    HasPrimeWithExpOne (S_val 377492 377495) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377492 377495 ∧ ¬ p ∣ (377495 - 377492) ∧
      ∃ (hNotC : ¬ p ∣ 377495) (hNotB : ¬ p ∣ 377492),
        order_of_C_B_inv_mod_p2 377495 377492 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 377492 377495 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_377492_377495
def row_377863_377866 :
    HasPrimeWithExpOne (S_val 377863 377866) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377863 377866 ∧ ¬ p ∣ (377866 - 377863) ∧
      ∃ (hNotC : ¬ p ∣ 377866) (hNotB : ¬ p ∣ 377863),
        order_of_C_B_inv_mod_p2 377866 377863 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 377863 377866 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_377863_377866
def row_378192_378195 :
    HasPrimeWithExpOne (S_val 378192 378195) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378192 378195 ∧ ¬ p ∣ (378195 - 378192) ∧
      ∃ (hNotC : ¬ p ∣ 378195) (hNotB : ¬ p ∣ 378192),
        order_of_C_B_inv_mod_p2 378195 378192 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 378192 378195 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_378192_378195
def row_378527_378530 :
    HasPrimeWithExpOne (S_val 378527 378530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378527 378530 ∧ ¬ p ∣ (378530 - 378527) ∧
      ∃ (hNotC : ¬ p ∣ 378530) (hNotB : ¬ p ∣ 378527),
        order_of_C_B_inv_mod_p2 378530 378527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 378527 378530 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_378527_378530
def row_378858_378861 :
    HasPrimeWithExpOne (S_val 378858 378861) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378858 378861 ∧ ¬ p ∣ (378861 - 378858) ∧
      ∃ (hNotC : ¬ p ∣ 378861) (hNotB : ¬ p ∣ 378858),
        order_of_C_B_inv_mod_p2 378861 378858 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 378858 378861 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_378858_378861
def row_379194_379197 :
    HasPrimeWithExpOne (S_val 379194 379197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379194 379197 ∧ ¬ p ∣ (379197 - 379194) ∧
      ∃ (hNotC : ¬ p ∣ 379197) (hNotB : ¬ p ∣ 379194),
        order_of_C_B_inv_mod_p2 379197 379194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379194 379197 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_379194_379197
def row_379534_379537 :
    HasPrimeWithExpOne (S_val 379534 379537) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379534 379537 ∧ ¬ p ∣ (379537 - 379534) ∧
      ∃ (hNotC : ¬ p ∣ 379537) (hNotB : ¬ p ∣ 379534),
        order_of_C_B_inv_mod_p2 379537 379534 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379534 379537 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_379534_379537
def row_379869_379872 :
    HasPrimeWithExpOne (S_val 379869 379872) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379869 379872 ∧ ¬ p ∣ (379872 - 379869) ∧
      ∃ (hNotC : ¬ p ∣ 379872) (hNotB : ¬ p ∣ 379869),
        order_of_C_B_inv_mod_p2 379872 379869 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379869 379872 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_379869_379872
def row_380209_380212 :
    HasPrimeWithExpOne (S_val 380209 380212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380209 380212 ∧ ¬ p ∣ (380212 - 380209) ∧
      ∃ (hNotC : ¬ p ∣ 380212) (hNotB : ¬ p ∣ 380209),
        order_of_C_B_inv_mod_p2 380212 380209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 380209 380212 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_380209_380212
def row_380536_380539 :
    HasPrimeWithExpOne (S_val 380536 380539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380536 380539 ∧ ¬ p ∣ (380539 - 380536) ∧
      ∃ (hNotC : ¬ p ∣ 380539) (hNotB : ¬ p ∣ 380536),
        order_of_C_B_inv_mod_p2 380539 380536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 380536 380539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_380536_380539
def row_380872_380875 :
    HasPrimeWithExpOne (S_val 380872 380875) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380872 380875 ∧ ¬ p ∣ (380875 - 380872) ∧
      ∃ (hNotC : ¬ p ∣ 380875) (hNotB : ¬ p ∣ 380872),
        order_of_C_B_inv_mod_p2 380875 380872 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 380872 380875 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_380872_380875
def row_381221_381224 :
    HasPrimeWithExpOne (S_val 381221 381224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381221 381224 ∧ ¬ p ∣ (381224 - 381221) ∧
      ∃ (hNotC : ¬ p ∣ 381224) (hNotB : ¬ p ∣ 381221),
        order_of_C_B_inv_mod_p2 381224 381221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 381221 381224 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_381221_381224
def row_381552_381555 :
    HasPrimeWithExpOne (S_val 381552 381555) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381552 381555 ∧ ¬ p ∣ (381555 - 381552) ∧
      ∃ (hNotC : ¬ p ∣ 381555) (hNotB : ¬ p ∣ 381552),
        order_of_C_B_inv_mod_p2 381555 381552 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 381552 381555 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_381552_381555
def row_381894_381897 :
    HasPrimeWithExpOne (S_val 381894 381897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381894 381897 ∧ ¬ p ∣ (381897 - 381894) ∧
      ∃ (hNotC : ¬ p ∣ 381897) (hNotB : ¬ p ∣ 381894),
        order_of_C_B_inv_mod_p2 381897 381894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 381894 381897 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_381894_381897
def row_382225_382228 :
    HasPrimeWithExpOne (S_val 382225 382228) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382225 382228 ∧ ¬ p ∣ (382228 - 382225) ∧
      ∃ (hNotC : ¬ p ∣ 382228) (hNotB : ¬ p ∣ 382225),
        order_of_C_B_inv_mod_p2 382228 382225 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 382225 382228 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_382225_382228
def row_382563_382566 :
    HasPrimeWithExpOne (S_val 382563 382566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382563 382566 ∧ ¬ p ∣ (382566 - 382563) ∧
      ∃ (hNotC : ¬ p ∣ 382566) (hNotB : ¬ p ∣ 382563),
        order_of_C_B_inv_mod_p2 382566 382563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 382563 382566 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_382563_382566
def row_382887_382890 :
    HasPrimeWithExpOne (S_val 382887 382890) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382887 382890 ∧ ¬ p ∣ (382890 - 382887) ∧
      ∃ (hNotC : ¬ p ∣ 382890) (hNotB : ¬ p ∣ 382887),
        order_of_C_B_inv_mod_p2 382890 382887 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 382887 382890 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_382887_382890
def row_383224_383227 :
    HasPrimeWithExpOne (S_val 383224 383227) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383224 383227 ∧ ¬ p ∣ (383227 - 383224) ∧
      ∃ (hNotC : ¬ p ∣ 383227) (hNotB : ¬ p ∣ 383224),
        order_of_C_B_inv_mod_p2 383227 383224 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 383224 383227 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_383224_383227
def row_383558_383561 :
    HasPrimeWithExpOne (S_val 383558 383561) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383558 383561 ∧ ¬ p ∣ (383561 - 383558) ∧
      ∃ (hNotC : ¬ p ∣ 383561) (hNotB : ¬ p ∣ 383558),
        order_of_C_B_inv_mod_p2 383561 383558 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 383558 383561 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_383558_383561
def row_383874_383877 :
    HasPrimeWithExpOne (S_val 383874 383877) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383874 383877 ∧ ¬ p ∣ (383877 - 383874) ∧
      ∃ (hNotC : ¬ p ∣ 383877) (hNotB : ¬ p ∣ 383874),
        order_of_C_B_inv_mod_p2 383877 383874 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 383874 383877 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_383874_383877
def row_384202_384205 :
    HasPrimeWithExpOne (S_val 384202 384205) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384202 384205 ∧ ¬ p ∣ (384205 - 384202) ∧
      ∃ (hNotC : ¬ p ∣ 384205) (hNotB : ¬ p ∣ 384202),
        order_of_C_B_inv_mod_p2 384205 384202 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 384202 384205 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_384202_384205
def row_384543_384546 :
    HasPrimeWithExpOne (S_val 384543 384546) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384543 384546 ∧ ¬ p ∣ (384546 - 384543) ∧
      ∃ (hNotC : ¬ p ∣ 384546) (hNotB : ¬ p ∣ 384543),
        order_of_C_B_inv_mod_p2 384546 384543 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 384543 384546 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_384543_384546
def row_384884_384887 :
    HasPrimeWithExpOne (S_val 384884 384887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384884 384887 ∧ ¬ p ∣ (384887 - 384884) ∧
      ∃ (hNotC : ¬ p ∣ 384887) (hNotB : ¬ p ∣ 384884),
        order_of_C_B_inv_mod_p2 384887 384884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 384884 384887 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_384884_384887
def row_385217_385220 :
    HasPrimeWithExpOne (S_val 385217 385220) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385217 385220 ∧ ¬ p ∣ (385220 - 385217) ∧
      ∃ (hNotC : ¬ p ∣ 385220) (hNotB : ¬ p ∣ 385217),
        order_of_C_B_inv_mod_p2 385220 385217 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 385217 385220 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_385217_385220
def row_385556_385559 :
    HasPrimeWithExpOne (S_val 385556 385559) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385556 385559 ∧ ¬ p ∣ (385559 - 385556) ∧
      ∃ (hNotC : ¬ p ∣ 385559) (hNotB : ¬ p ∣ 385556),
        order_of_C_B_inv_mod_p2 385559 385556 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 385556 385559 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_385556_385559
def row_385883_385886 :
    HasPrimeWithExpOne (S_val 385883 385886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385883 385886 ∧ ¬ p ∣ (385886 - 385883) ∧
      ∃ (hNotC : ¬ p ∣ 385886) (hNotB : ¬ p ∣ 385883),
        order_of_C_B_inv_mod_p2 385886 385883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 385883 385886 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_385883_385886
def row_386231_386234 :
    HasPrimeWithExpOne (S_val 386231 386234) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386231 386234 ∧ ¬ p ∣ (386234 - 386231) ∧
      ∃ (hNotC : ¬ p ∣ 386234) (hNotB : ¬ p ∣ 386231),
        order_of_C_B_inv_mod_p2 386234 386231 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386231 386234 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_386231_386234
def row_386561_386564 :
    HasPrimeWithExpOne (S_val 386561 386564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386561 386564 ∧ ¬ p ∣ (386564 - 386561) ∧
      ∃ (hNotC : ¬ p ∣ 386564) (hNotB : ¬ p ∣ 386561),
        order_of_C_B_inv_mod_p2 386564 386561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386561 386564 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_386561_386564
def row_386884_386887 :
    HasPrimeWithExpOne (S_val 386884 386887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386884 386887 ∧ ¬ p ∣ (386887 - 386884) ∧
      ∃ (hNotC : ¬ p ∣ 386887) (hNotB : ¬ p ∣ 386884),
        order_of_C_B_inv_mod_p2 386887 386884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386884 386887 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_386884_386887
def row_387210_387213 :
    HasPrimeWithExpOne (S_val 387210 387213) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387210 387213 ∧ ¬ p ∣ (387213 - 387210) ∧
      ∃ (hNotC : ¬ p ∣ 387213) (hNotB : ¬ p ∣ 387210),
        order_of_C_B_inv_mod_p2 387213 387210 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 387210 387213 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_387210_387213
def row_387529_387532 :
    HasPrimeWithExpOne (S_val 387529 387532) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387529 387532 ∧ ¬ p ∣ (387532 - 387529) ∧
      ∃ (hNotC : ¬ p ∣ 387532) (hNotB : ¬ p ∣ 387529),
        order_of_C_B_inv_mod_p2 387532 387529 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 387529 387532 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_387529_387532
def row_387866_387869 :
    HasPrimeWithExpOne (S_val 387866 387869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387866 387869 ∧ ¬ p ∣ (387869 - 387866) ∧
      ∃ (hNotC : ¬ p ∣ 387869) (hNotB : ¬ p ∣ 387866),
        order_of_C_B_inv_mod_p2 387869 387866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 387866 387869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_387866_387869
def row_388209_388212 :
    HasPrimeWithExpOne (S_val 388209 388212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388209 388212 ∧ ¬ p ∣ (388212 - 388209) ∧
      ∃ (hNotC : ¬ p ∣ 388212) (hNotB : ¬ p ∣ 388209),
        order_of_C_B_inv_mod_p2 388212 388209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 388209 388212 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_388209_388212
def row_388540_388543 :
    HasPrimeWithExpOne (S_val 388540 388543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388540 388543 ∧ ¬ p ∣ (388543 - 388540) ∧
      ∃ (hNotC : ¬ p ∣ 388543) (hNotB : ¬ p ∣ 388540),
        order_of_C_B_inv_mod_p2 388543 388540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 388540 388543 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_388540_388543
def row_388891_388894 :
    HasPrimeWithExpOne (S_val 388891 388894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388891 388894 ∧ ¬ p ∣ (388894 - 388891) ∧
      ∃ (hNotC : ¬ p ∣ 388894) (hNotB : ¬ p ∣ 388891),
        order_of_C_B_inv_mod_p2 388894 388891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 388891 388894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_388891_388894
def row_389250_389253 :
    HasPrimeWithExpOne (S_val 389250 389253) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389250 389253 ∧ ¬ p ∣ (389253 - 389250) ∧
      ∃ (hNotC : ¬ p ∣ 389253) (hNotB : ¬ p ∣ 389250),
        order_of_C_B_inv_mod_p2 389253 389250 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 389250 389253 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_389250_389253
def row_389562_389565 :
    HasPrimeWithExpOne (S_val 389562 389565) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389562 389565 ∧ ¬ p ∣ (389565 - 389562) ∧
      ∃ (hNotC : ¬ p ∣ 389565) (hNotB : ¬ p ∣ 389562),
        order_of_C_B_inv_mod_p2 389565 389562 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 389562 389565 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_389562_389565
def row_389910_389913 :
    HasPrimeWithExpOne (S_val 389910 389913) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389910 389913 ∧ ¬ p ∣ (389913 - 389910) ∧
      ∃ (hNotC : ¬ p ∣ 389913) (hNotB : ¬ p ∣ 389910),
        order_of_C_B_inv_mod_p2 389913 389910 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 389910 389913 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_389910_389913
def row_390245_390248 :
    HasPrimeWithExpOne (S_val 390245 390248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390245 390248 ∧ ¬ p ∣ (390248 - 390245) ∧
      ∃ (hNotC : ¬ p ∣ 390248) (hNotB : ¬ p ∣ 390245),
        order_of_C_B_inv_mod_p2 390248 390245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 390245 390248 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_390245_390248
def row_390567_390570 :
    HasPrimeWithExpOne (S_val 390567 390570) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390567 390570 ∧ ¬ p ∣ (390570 - 390567) ∧
      ∃ (hNotC : ¬ p ∣ 390570) (hNotB : ¬ p ∣ 390567),
        order_of_C_B_inv_mod_p2 390570 390567 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 390567 390570 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_390567_390570
def row_390901_390904 :
    HasPrimeWithExpOne (S_val 390901 390904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390901 390904 ∧ ¬ p ∣ (390904 - 390901) ∧
      ∃ (hNotC : ¬ p ∣ 390904) (hNotB : ¬ p ∣ 390901),
        order_of_C_B_inv_mod_p2 390904 390901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 390901 390904 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_390901_390904
def row_391226_391229 :
    HasPrimeWithExpOne (S_val 391226 391229) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391226 391229 ∧ ¬ p ∣ (391229 - 391226) ∧
      ∃ (hNotC : ¬ p ∣ 391229) (hNotB : ¬ p ∣ 391226),
        order_of_C_B_inv_mod_p2 391229 391226 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 391226 391229 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_391226_391229
def row_391568_391571 :
    HasPrimeWithExpOne (S_val 391568 391571) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391568 391571 ∧ ¬ p ∣ (391571 - 391568) ∧
      ∃ (hNotC : ¬ p ∣ 391571) (hNotB : ¬ p ∣ 391568),
        order_of_C_B_inv_mod_p2 391571 391568 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 391568 391571 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_391568_391571
def row_391893_391896 :
    HasPrimeWithExpOne (S_val 391893 391896) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391893 391896 ∧ ¬ p ∣ (391896 - 391893) ∧
      ∃ (hNotC : ¬ p ∣ 391896) (hNotB : ¬ p ∣ 391893),
        order_of_C_B_inv_mod_p2 391896 391893 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 391893 391896 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_391893_391896
def row_392220_392223 :
    HasPrimeWithExpOne (S_val 392220 392223) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392220 392223 ∧ ¬ p ∣ (392223 - 392220) ∧
      ∃ (hNotC : ¬ p ∣ 392223) (hNotB : ¬ p ∣ 392220),
        order_of_C_B_inv_mod_p2 392223 392220 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 392220 392223 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_392220_392223
def row_392575_392578 :
    HasPrimeWithExpOne (S_val 392575 392578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392575 392578 ∧ ¬ p ∣ (392578 - 392575) ∧
      ∃ (hNotC : ¬ p ∣ 392578) (hNotB : ¬ p ∣ 392575),
        order_of_C_B_inv_mod_p2 392578 392575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 392575 392578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_392575_392578
def row_392905_392908 :
    HasPrimeWithExpOne (S_val 392905 392908) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392905 392908 ∧ ¬ p ∣ (392908 - 392905) ∧
      ∃ (hNotC : ¬ p ∣ 392908) (hNotB : ¬ p ∣ 392905),
        order_of_C_B_inv_mod_p2 392908 392905 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 392905 392908 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_392905_392908
def row_393245_393248 :
    HasPrimeWithExpOne (S_val 393245 393248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393245 393248 ∧ ¬ p ∣ (393248 - 393245) ∧
      ∃ (hNotC : ¬ p ∣ 393248) (hNotB : ¬ p ∣ 393245),
        order_of_C_B_inv_mod_p2 393248 393245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 393245 393248 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_393245_393248
def row_393583_393586 :
    HasPrimeWithExpOne (S_val 393583 393586) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393583 393586 ∧ ¬ p ∣ (393586 - 393583) ∧
      ∃ (hNotC : ¬ p ∣ 393586) (hNotB : ¬ p ∣ 393583),
        order_of_C_B_inv_mod_p2 393586 393583 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 393583 393586 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_393583_393586
def row_393909_393912 :
    HasPrimeWithExpOne (S_val 393909 393912) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393909 393912 ∧ ¬ p ∣ (393912 - 393909) ∧
      ∃ (hNotC : ¬ p ∣ 393912) (hNotB : ¬ p ∣ 393909),
        order_of_C_B_inv_mod_p2 393912 393909 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 393909 393912 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_393909_393912
def row_394258_394261 :
    HasPrimeWithExpOne (S_val 394258 394261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394258 394261 ∧ ¬ p ∣ (394261 - 394258) ∧
      ∃ (hNotC : ¬ p ∣ 394261) (hNotB : ¬ p ∣ 394258),
        order_of_C_B_inv_mod_p2 394261 394258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 394258 394261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_394258_394261
def row_394598_394601 :
    HasPrimeWithExpOne (S_val 394598 394601) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394598 394601 ∧ ¬ p ∣ (394601 - 394598) ∧
      ∃ (hNotC : ¬ p ∣ 394601) (hNotB : ¬ p ∣ 394598),
        order_of_C_B_inv_mod_p2 394601 394598 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 394598 394601 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_394598_394601
def row_394940_394943 :
    HasPrimeWithExpOne (S_val 394940 394943) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394940 394943 ∧ ¬ p ∣ (394943 - 394940) ∧
      ∃ (hNotC : ¬ p ∣ 394943) (hNotB : ¬ p ∣ 394940),
        order_of_C_B_inv_mod_p2 394943 394940 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 394940 394943 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_394940_394943
def row_395267_395270 :
    HasPrimeWithExpOne (S_val 395267 395270) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395267 395270 ∧ ¬ p ∣ (395270 - 395267) ∧
      ∃ (hNotC : ¬ p ∣ 395270) (hNotB : ¬ p ∣ 395267),
        order_of_C_B_inv_mod_p2 395270 395267 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 395267 395270 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_395267_395270
def row_395611_395614 :
    HasPrimeWithExpOne (S_val 395611 395614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395611 395614 ∧ ¬ p ∣ (395614 - 395611) ∧
      ∃ (hNotC : ¬ p ∣ 395614) (hNotB : ¬ p ∣ 395611),
        order_of_C_B_inv_mod_p2 395614 395611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 395611 395614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_395611_395614
def row_395954_395957 :
    HasPrimeWithExpOne (S_val 395954 395957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395954 395957 ∧ ¬ p ∣ (395957 - 395954) ∧
      ∃ (hNotC : ¬ p ∣ 395957) (hNotB : ¬ p ∣ 395954),
        order_of_C_B_inv_mod_p2 395957 395954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 395954 395957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_395954_395957
def row_396276_396279 :
    HasPrimeWithExpOne (S_val 396276 396279) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396276 396279 ∧ ¬ p ∣ (396279 - 396276) ∧
      ∃ (hNotC : ¬ p ∣ 396279) (hNotB : ¬ p ∣ 396276),
        order_of_C_B_inv_mod_p2 396279 396276 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 396276 396279 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_396276_396279
def row_396633_396636 :
    HasPrimeWithExpOne (S_val 396633 396636) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396633 396636 ∧ ¬ p ∣ (396636 - 396633) ∧
      ∃ (hNotC : ¬ p ∣ 396636) (hNotB : ¬ p ∣ 396633),
        order_of_C_B_inv_mod_p2 396636 396633 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 396633 396636 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_396633_396636
def row_396971_396974 :
    HasPrimeWithExpOne (S_val 396971 396974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396971 396974 ∧ ¬ p ∣ (396974 - 396971) ∧
      ∃ (hNotC : ¬ p ∣ 396974) (hNotB : ¬ p ∣ 396971),
        order_of_C_B_inv_mod_p2 396974 396971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 396971 396974 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_396971_396974
def row_397328_397331 :
    HasPrimeWithExpOne (S_val 397328 397331) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397328 397331 ∧ ¬ p ∣ (397331 - 397328) ∧
      ∃ (hNotC : ¬ p ∣ 397331) (hNotB : ¬ p ∣ 397328),
        order_of_C_B_inv_mod_p2 397331 397328 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 397328 397331 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_397328_397331
def row_397660_397663 :
    HasPrimeWithExpOne (S_val 397660 397663) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397660 397663 ∧ ¬ p ∣ (397663 - 397660) ∧
      ∃ (hNotC : ¬ p ∣ 397663) (hNotB : ¬ p ∣ 397660),
        order_of_C_B_inv_mod_p2 397663 397660 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 397660 397663 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_397660_397663
def row_397990_397993 :
    HasPrimeWithExpOne (S_val 397990 397993) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397990 397993 ∧ ¬ p ∣ (397993 - 397990) ∧
      ∃ (hNotC : ¬ p ∣ 397993) (hNotB : ¬ p ∣ 397990),
        order_of_C_B_inv_mod_p2 397993 397990 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 397990 397993 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_397990_397993
def row_398314_398317 :
    HasPrimeWithExpOne (S_val 398314 398317) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 398314 398317 ∧ ¬ p ∣ (398317 - 398314) ∧
      ∃ (hNotC : ¬ p ∣ 398317) (hNotB : ¬ p ∣ 398314),
        order_of_C_B_inv_mod_p2 398317 398314 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 398314 398317 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_398314_398317
def row_398679_398682 :
    HasPrimeWithExpOne (S_val 398679 398682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 398679 398682 ∧ ¬ p ∣ (398682 - 398679) ∧
      ∃ (hNotC : ¬ p ∣ 398682) (hNotB : ¬ p ∣ 398679),
        order_of_C_B_inv_mod_p2 398682 398679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 398679 398682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_398679_398682
def row_399003_399006 :
    HasPrimeWithExpOne (S_val 399003 399006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399003 399006 ∧ ¬ p ∣ (399006 - 399003) ∧
      ∃ (hNotC : ¬ p ∣ 399006) (hNotB : ¬ p ∣ 399003),
        order_of_C_B_inv_mod_p2 399006 399003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 399003 399006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_399003_399006
def row_399346_399349 :
    HasPrimeWithExpOne (S_val 399346 399349) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399346 399349 ∧ ¬ p ∣ (399349 - 399346) ∧
      ∃ (hNotC : ¬ p ∣ 399349) (hNotB : ¬ p ∣ 399346),
        order_of_C_B_inv_mod_p2 399349 399346 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 399346 399349 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_399346_399349
def row_399674_399677 :
    HasPrimeWithExpOne (S_val 399674 399677) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399674 399677 ∧ ¬ p ∣ (399677 - 399674) ∧
      ∃ (hNotC : ¬ p ∣ 399677) (hNotB : ¬ p ∣ 399674),
        order_of_C_B_inv_mod_p2 399677 399674 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 399674 399677 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_399674_399677
def row_400000_400003 :
    HasPrimeWithExpOne (S_val 400000 400003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400000 400003 ∧ ¬ p ∣ (400003 - 400000) ∧
      ∃ (hNotC : ¬ p ∣ 400003) (hNotB : ¬ p ∣ 400000),
        order_of_C_B_inv_mod_p2 400003 400000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 400000 400003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_400000_400003
/-! ## Sampled 299 new 400000 < B ≤ 500000 rows -/
theorem row_400001_400004 :
    HasPrimeWithExpOne (S_val 400001 400004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400001 400004 ∧ ¬ p ∣ (400004 - 400001) ∧
      ∃ (hNotC : ¬ p ∣ 400004) (hNotB : ¬ p ∣ 400001),
        order_of_C_B_inv_mod_p2 400004 400001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 400001 400004 := by
  have hlt : (400001 : Nat) < 400004 := by decide
  have hcop : ¬ 53 ∣ (400004 - 400001) := by decide
  have heq : (400004 : ZMod 53) ^ 13 = (400001 : ZMod 53) ^ 13 := by decide
  have hne : (400004 : ZMod 2809) ^ 13 ≠ (400001 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 400004 := by decide
  have hB : ¬ 53 ∣ 400001 := by decide
  have hexp :=
    has_exp_one_of_zmod 400001 400004 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 400001 400004 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 400001 400004 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      400001 400004 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      400001 400004 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_400326_400329 :
    HasPrimeWithExpOne (S_val 400326 400329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400326 400329 ∧ ¬ p ∣ (400329 - 400326) ∧
      ∃ (hNotC : ¬ p ∣ 400329) (hNotB : ¬ p ∣ 400326),
        order_of_C_B_inv_mod_p2 400329 400326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 400326 400329 := by
  have hlt : (400326 : Nat) < 400329 := by decide
  have hcop : ¬ 157 ∣ (400329 - 400326) := by decide
  have heq : (400329 : ZMod 157) ^ 13 = (400326 : ZMod 157) ^ 13 := by decide
  have hne : (400329 : ZMod 24649) ^ 13 ≠ (400326 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 400329 := by decide
  have hB : ¬ 157 ∣ 400326 := by decide
  have hexp :=
    has_exp_one_of_zmod 400326 400329 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 400326 400329 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 400326 400329 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      400326 400329 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      400326 400329 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_400652_400655 :
    HasPrimeWithExpOne (S_val 400652 400655) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400652 400655 ∧ ¬ p ∣ (400655 - 400652) ∧
      ∃ (hNotC : ¬ p ∣ 400655) (hNotB : ¬ p ∣ 400652),
        order_of_C_B_inv_mod_p2 400655 400652 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 400652 400655 := by
  have hlt : (400652 : Nat) < 400655 := by decide
  have hcop : ¬ 131 ∣ (400655 - 400652) := by decide
  have heq : (400655 : ZMod 131) ^ 13 = (400652 : ZMod 131) ^ 13 := by decide
  have hne : (400655 : ZMod 17161) ^ 13 ≠ (400652 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 400655 := by decide
  have hB : ¬ 131 ∣ 400652 := by decide
  have hexp :=
    has_exp_one_of_zmod 400652 400655 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 400652 400655 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 400652 400655 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      400652 400655 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      400652 400655 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_400985_400988 :
    HasPrimeWithExpOne (S_val 400985 400988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400985 400988 ∧ ¬ p ∣ (400988 - 400985) ∧
      ∃ (hNotC : ¬ p ∣ 400988) (hNotB : ¬ p ∣ 400985),
        order_of_C_B_inv_mod_p2 400988 400985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 400985 400988 := by
  have hlt : (400985 : Nat) < 400988 := by decide
  have hcop : ¬ 53 ∣ (400988 - 400985) := by decide
  have heq : (400988 : ZMod 53) ^ 13 = (400985 : ZMod 53) ^ 13 := by decide
  have hne : (400988 : ZMod 2809) ^ 13 ≠ (400985 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 400988 := by decide
  have hB : ¬ 53 ∣ 400985 := by decide
  have hexp :=
    has_exp_one_of_zmod 400985 400988 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 400985 400988 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 400985 400988 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      400985 400988 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      400985 400988 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_401322_401325 :
    HasPrimeWithExpOne (S_val 401322 401325) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 401322 401325 ∧ ¬ p ∣ (401325 - 401322) ∧
      ∃ (hNotC : ¬ p ∣ 401325) (hNotB : ¬ p ∣ 401322),
        order_of_C_B_inv_mod_p2 401325 401322 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 401322 401325 := by
  have hlt : (401322 : Nat) < 401325 := by decide
  have hcop : ¬ 53 ∣ (401325 - 401322) := by decide
  have heq : (401325 : ZMod 53) ^ 13 = (401322 : ZMod 53) ^ 13 := by decide
  have hne : (401325 : ZMod 2809) ^ 13 ≠ (401322 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 401325 := by decide
  have hB : ¬ 53 ∣ 401322 := by decide
  have hexp :=
    has_exp_one_of_zmod 401322 401325 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 401322 401325 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 401322 401325 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      401322 401325 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      401322 401325 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_401656_401659 :
    HasPrimeWithExpOne (S_val 401656 401659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 401656 401659 ∧ ¬ p ∣ (401659 - 401656) ∧
      ∃ (hNotC : ¬ p ∣ 401659) (hNotB : ¬ p ∣ 401656),
        order_of_C_B_inv_mod_p2 401659 401656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 401656 401659 := by
  have hlt : (401656 : Nat) < 401659 := by decide
  have hcop : ¬ 157 ∣ (401659 - 401656) := by decide
  have heq : (401659 : ZMod 157) ^ 13 = (401656 : ZMod 157) ^ 13 := by decide
  have hne : (401659 : ZMod 24649) ^ 13 ≠ (401656 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 401659 := by decide
  have hB : ¬ 157 ∣ 401656 := by decide
  have hexp :=
    has_exp_one_of_zmod 401656 401659 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 401656 401659 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 401656 401659 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      401656 401659 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      401656 401659 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_401990_401993 :
    HasPrimeWithExpOne (S_val 401990 401993) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 401990 401993 ∧ ¬ p ∣ (401993 - 401990) ∧
      ∃ (hNotC : ¬ p ∣ 401993) (hNotB : ¬ p ∣ 401990),
        order_of_C_B_inv_mod_p2 401993 401990 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 401990 401993 := by
  have hlt : (401990 : Nat) < 401993 := by decide
  have hcop : ¬ 157 ∣ (401993 - 401990) := by decide
  have heq : (401993 : ZMod 157) ^ 13 = (401990 : ZMod 157) ^ 13 := by decide
  have hne : (401993 : ZMod 24649) ^ 13 ≠ (401990 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 401993 := by decide
  have hB : ¬ 157 ∣ 401990 := by decide
  have hexp :=
    has_exp_one_of_zmod 401990 401993 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 401990 401993 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 401990 401993 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      401990 401993 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      401990 401993 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_402328_402331 :
    HasPrimeWithExpOne (S_val 402328 402331) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 402328 402331 ∧ ¬ p ∣ (402331 - 402328) ∧
      ∃ (hNotC : ¬ p ∣ 402331) (hNotB : ¬ p ∣ 402328),
        order_of_C_B_inv_mod_p2 402331 402328 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 402328 402331 := by
  have hlt : (402328 : Nat) < 402331 := by decide
  have hcop : ¬ 53 ∣ (402331 - 402328) := by decide
  have heq : (402331 : ZMod 53) ^ 13 = (402328 : ZMod 53) ^ 13 := by decide
  have hne : (402331 : ZMod 2809) ^ 13 ≠ (402328 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 402331 := by decide
  have hB : ¬ 53 ∣ 402328 := by decide
  have hexp :=
    has_exp_one_of_zmod 402328 402331 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 402328 402331 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 402328 402331 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      402328 402331 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      402328 402331 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_402676_402679 :
    HasPrimeWithExpOne (S_val 402676 402679) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 402676 402679 ∧ ¬ p ∣ (402679 - 402676) ∧
      ∃ (hNotC : ¬ p ∣ 402679) (hNotB : ¬ p ∣ 402676),
        order_of_C_B_inv_mod_p2 402679 402676 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 402676 402679 := by
  have hlt : (402676 : Nat) < 402679 := by decide
  have hcop : ¬ 79 ∣ (402679 - 402676) := by decide
  have heq : (402679 : ZMod 79) ^ 13 = (402676 : ZMod 79) ^ 13 := by decide
  have hne : (402679 : ZMod 6241) ^ 13 ≠ (402676 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 402679 := by decide
  have hB : ¬ 79 ∣ 402676 := by decide
  have hexp :=
    has_exp_one_of_zmod 402676 402679 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 402676 402679 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 402676 402679 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      402676 402679 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      402676 402679 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_403025_403028 :
    HasPrimeWithExpOne (S_val 403025 403028) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 403025 403028 ∧ ¬ p ∣ (403028 - 403025) ∧
      ∃ (hNotC : ¬ p ∣ 403028) (hNotB : ¬ p ∣ 403025),
        order_of_C_B_inv_mod_p2 403028 403025 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 403025 403028 := by
  have hlt : (403025 : Nat) < 403028 := by decide
  have hcop : ¬ 53 ∣ (403028 - 403025) := by decide
  have heq : (403028 : ZMod 53) ^ 13 = (403025 : ZMod 53) ^ 13 := by decide
  have hne : (403028 : ZMod 2809) ^ 13 ≠ (403025 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 403028 := by decide
  have hB : ¬ 53 ∣ 403025 := by decide
  have hexp :=
    has_exp_one_of_zmod 403025 403028 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 403025 403028 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 403025 403028 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      403025 403028 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      403025 403028 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_403358_403361 :
    HasPrimeWithExpOne (S_val 403358 403361) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 403358 403361 ∧ ¬ p ∣ (403361 - 403358) ∧
      ∃ (hNotC : ¬ p ∣ 403361) (hNotB : ¬ p ∣ 403358),
        order_of_C_B_inv_mod_p2 403361 403358 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 403358 403361 := by
  have hlt : (403358 : Nat) < 403361 := by decide
  have hcop : ¬ 79 ∣ (403361 - 403358) := by decide
  have heq : (403361 : ZMod 79) ^ 13 = (403358 : ZMod 79) ^ 13 := by decide
  have hne : (403361 : ZMod 6241) ^ 13 ≠ (403358 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 403361 := by decide
  have hB : ¬ 79 ∣ 403358 := by decide
  have hexp :=
    has_exp_one_of_zmod 403358 403361 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 403358 403361 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 403358 403361 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      403358 403361 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      403358 403361 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_403701_403704 :
    HasPrimeWithExpOne (S_val 403701 403704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 403701 403704 ∧ ¬ p ∣ (403704 - 403701) ∧
      ∃ (hNotC : ¬ p ∣ 403704) (hNotB : ¬ p ∣ 403701),
        order_of_C_B_inv_mod_p2 403704 403701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 403701 403704 := by
  have hlt : (403701 : Nat) < 403704 := by decide
  have hcop : ¬ 131 ∣ (403704 - 403701) := by decide
  have heq : (403704 : ZMod 131) ^ 13 = (403701 : ZMod 131) ^ 13 := by decide
  have hne : (403704 : ZMod 17161) ^ 13 ≠ (403701 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 403704 := by decide
  have hB : ¬ 131 ∣ 403701 := by decide
  have hexp :=
    has_exp_one_of_zmod 403701 403704 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 403701 403704 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 403701 403704 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      403701 403704 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      403701 403704 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_404017_404020 :
    HasPrimeWithExpOne (S_val 404017 404020) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 404017 404020 ∧ ¬ p ∣ (404020 - 404017) ∧
      ∃ (hNotC : ¬ p ∣ 404020) (hNotB : ¬ p ∣ 404017),
        order_of_C_B_inv_mod_p2 404020 404017 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 404017 404020 := by
  have hlt : (404017 : Nat) < 404020 := by decide
  have hcop : ¬ 521 ∣ (404020 - 404017) := by decide
  have heq : (404020 : ZMod 521) ^ 13 = (404017 : ZMod 521) ^ 13 := by decide
  have hne : (404020 : ZMod 271441) ^ 13 ≠ (404017 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 404020 := by decide
  have hB : ¬ 521 ∣ 404017 := by decide
  have hexp :=
    has_exp_one_of_zmod 404017 404020 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 404017 404020 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 404017 404020 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      404017 404020 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      404017 404020 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_404342_404345 :
    HasPrimeWithExpOne (S_val 404342 404345) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 404342 404345 ∧ ¬ p ∣ (404345 - 404342) ∧
      ∃ (hNotC : ¬ p ∣ 404345) (hNotB : ¬ p ∣ 404342),
        order_of_C_B_inv_mod_p2 404345 404342 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 404342 404345 := by
  have hlt : (404342 : Nat) < 404345 := by decide
  have hcop : ¬ 53 ∣ (404345 - 404342) := by decide
  have heq : (404345 : ZMod 53) ^ 13 = (404342 : ZMod 53) ^ 13 := by decide
  have hne : (404345 : ZMod 2809) ^ 13 ≠ (404342 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 404345 := by decide
  have hB : ¬ 53 ∣ 404342 := by decide
  have hexp :=
    has_exp_one_of_zmod 404342 404345 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 404342 404345 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 404342 404345 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      404342 404345 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      404342 404345 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_404692_404695 :
    HasPrimeWithExpOne (S_val 404692 404695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 404692 404695 ∧ ¬ p ∣ (404695 - 404692) ∧
      ∃ (hNotC : ¬ p ∣ 404695) (hNotB : ¬ p ∣ 404692),
        order_of_C_B_inv_mod_p2 404695 404692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 404692 404695 := by
  have hlt : (404692 : Nat) < 404695 := by decide
  have hcop : ¬ 53 ∣ (404695 - 404692) := by decide
  have heq : (404695 : ZMod 53) ^ 13 = (404692 : ZMod 53) ^ 13 := by decide
  have hne : (404695 : ZMod 2809) ^ 13 ≠ (404692 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 404695 := by decide
  have hB : ¬ 53 ∣ 404692 := by decide
  have hexp :=
    has_exp_one_of_zmod 404692 404695 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 404692 404695 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 404692 404695 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      404692 404695 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      404692 404695 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_405030_405033 :
    HasPrimeWithExpOne (S_val 405030 405033) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 405030 405033 ∧ ¬ p ∣ (405033 - 405030) ∧
      ∃ (hNotC : ¬ p ∣ 405033) (hNotB : ¬ p ∣ 405030),
        order_of_C_B_inv_mod_p2 405033 405030 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 405030 405033 := by
  have hlt : (405030 : Nat) < 405033 := by decide
  have hcop : ¬ 53 ∣ (405033 - 405030) := by decide
  have heq : (405033 : ZMod 53) ^ 13 = (405030 : ZMod 53) ^ 13 := by decide
  have hne : (405033 : ZMod 2809) ^ 13 ≠ (405030 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 405033 := by decide
  have hB : ¬ 53 ∣ 405030 := by decide
  have hexp :=
    has_exp_one_of_zmod 405030 405033 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 405030 405033 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 405030 405033 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      405030 405033 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      405030 405033 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_405367_405370 :
    HasPrimeWithExpOne (S_val 405367 405370) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 405367 405370 ∧ ¬ p ∣ (405370 - 405367) ∧
      ∃ (hNotC : ¬ p ∣ 405370) (hNotB : ¬ p ∣ 405367),
        order_of_C_B_inv_mod_p2 405370 405367 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 405367 405370 := by
  have hlt : (405367 : Nat) < 405370 := by decide
  have hcop : ¬ 79 ∣ (405370 - 405367) := by decide
  have heq : (405370 : ZMod 79) ^ 13 = (405367 : ZMod 79) ^ 13 := by decide
  have hne : (405370 : ZMod 6241) ^ 13 ≠ (405367 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 405370 := by decide
  have hB : ¬ 79 ∣ 405367 := by decide
  have hexp :=
    has_exp_one_of_zmod 405367 405370 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 405367 405370 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 405367 405370 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      405367 405370 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      405367 405370 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_405709_405712 :
    HasPrimeWithExpOne (S_val 405709 405712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 405709 405712 ∧ ¬ p ∣ (405712 - 405709) ∧
      ∃ (hNotC : ¬ p ∣ 405712) (hNotB : ¬ p ∣ 405709),
        order_of_C_B_inv_mod_p2 405712 405709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 405709 405712 := by
  have hlt : (405709 : Nat) < 405712 := by decide
  have hcop : ¬ 157 ∣ (405712 - 405709) := by decide
  have heq : (405712 : ZMod 157) ^ 13 = (405709 : ZMod 157) ^ 13 := by decide
  have hne : (405712 : ZMod 24649) ^ 13 ≠ (405709 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 405712 := by decide
  have hB : ¬ 157 ∣ 405709 := by decide
  have hexp :=
    has_exp_one_of_zmod 405709 405712 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 405709 405712 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 405709 405712 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      405709 405712 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      405709 405712 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_406054_406057 :
    HasPrimeWithExpOne (S_val 406054 406057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 406054 406057 ∧ ¬ p ∣ (406057 - 406054) ∧
      ∃ (hNotC : ¬ p ∣ 406057) (hNotB : ¬ p ∣ 406054),
        order_of_C_B_inv_mod_p2 406057 406054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 406054 406057 := by
  have hlt : (406054 : Nat) < 406057 := by decide
  have hcop : ¬ 131 ∣ (406057 - 406054) := by decide
  have heq : (406057 : ZMod 131) ^ 13 = (406054 : ZMod 131) ^ 13 := by decide
  have hne : (406057 : ZMod 17161) ^ 13 ≠ (406054 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 406057 := by decide
  have hB : ¬ 131 ∣ 406054 := by decide
  have hexp :=
    has_exp_one_of_zmod 406054 406057 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 406054 406057 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 406054 406057 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      406054 406057 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      406054 406057 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_406389_406392 :
    HasPrimeWithExpOne (S_val 406389 406392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 406389 406392 ∧ ¬ p ∣ (406392 - 406389) ∧
      ∃ (hNotC : ¬ p ∣ 406392) (hNotB : ¬ p ∣ 406389),
        order_of_C_B_inv_mod_p2 406392 406389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 406389 406392 := by
  have hlt : (406389 : Nat) < 406392 := by decide
  have hcop : ¬ 79 ∣ (406392 - 406389) := by decide
  have heq : (406392 : ZMod 79) ^ 13 = (406389 : ZMod 79) ^ 13 := by decide
  have hne : (406392 : ZMod 6241) ^ 13 ≠ (406389 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 406392 := by decide
  have hB : ¬ 79 ∣ 406389 := by decide
  have hexp :=
    has_exp_one_of_zmod 406389 406392 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 406389 406392 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 406389 406392 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      406389 406392 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      406389 406392 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_406709_406712 :
    HasPrimeWithExpOne (S_val 406709 406712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 406709 406712 ∧ ¬ p ∣ (406712 - 406709) ∧
      ∃ (hNotC : ¬ p ∣ 406712) (hNotB : ¬ p ∣ 406709),
        order_of_C_B_inv_mod_p2 406712 406709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 406709 406712 := by
  have hlt : (406709 : Nat) < 406712 := by decide
  have hcop : ¬ 53 ∣ (406712 - 406709) := by decide
  have heq : (406712 : ZMod 53) ^ 13 = (406709 : ZMod 53) ^ 13 := by decide
  have hne : (406712 : ZMod 2809) ^ 13 ≠ (406709 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 406712 := by decide
  have hB : ¬ 53 ∣ 406709 := by decide
  have hexp :=
    has_exp_one_of_zmod 406709 406712 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 406709 406712 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 406709 406712 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      406709 406712 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      406709 406712 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_407066_407069 :
    HasPrimeWithExpOne (S_val 407066 407069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407066 407069 ∧ ¬ p ∣ (407069 - 407066) ∧
      ∃ (hNotC : ¬ p ∣ 407069) (hNotB : ¬ p ∣ 407066),
        order_of_C_B_inv_mod_p2 407069 407066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 407066 407069 := by
  have hlt : (407066 : Nat) < 407069 := by decide
  have hcop : ¬ 79 ∣ (407069 - 407066) := by decide
  have heq : (407069 : ZMod 79) ^ 13 = (407066 : ZMod 79) ^ 13 := by decide
  have hne : (407069 : ZMod 6241) ^ 13 ≠ (407066 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 407069 := by decide
  have hB : ¬ 79 ∣ 407066 := by decide
  have hexp :=
    has_exp_one_of_zmod 407066 407069 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 407066 407069 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 407066 407069 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      407066 407069 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      407066 407069 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_407391_407394 :
    HasPrimeWithExpOne (S_val 407391 407394) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407391 407394 ∧ ¬ p ∣ (407394 - 407391) ∧
      ∃ (hNotC : ¬ p ∣ 407394) (hNotB : ¬ p ∣ 407391),
        order_of_C_B_inv_mod_p2 407394 407391 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 407391 407394 := by
  have hlt : (407391 : Nat) < 407394 := by decide
  have hcop : ¬ 157 ∣ (407394 - 407391) := by decide
  have heq : (407394 : ZMod 157) ^ 13 = (407391 : ZMod 157) ^ 13 := by decide
  have hne : (407394 : ZMod 24649) ^ 13 ≠ (407391 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 407394 := by decide
  have hB : ¬ 157 ∣ 407391 := by decide
  have hexp :=
    has_exp_one_of_zmod 407391 407394 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 407391 407394 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 407391 407394 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      407391 407394 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      407391 407394 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_407732_407735 :
    HasPrimeWithExpOne (S_val 407732 407735) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407732 407735 ∧ ¬ p ∣ (407735 - 407732) ∧
      ∃ (hNotC : ¬ p ∣ 407735) (hNotB : ¬ p ∣ 407732),
        order_of_C_B_inv_mod_p2 407735 407732 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 407732 407735 := by
  have hlt : (407732 : Nat) < 407735 := by decide
  have hcop : ¬ 79 ∣ (407735 - 407732) := by decide
  have heq : (407735 : ZMod 79) ^ 13 = (407732 : ZMod 79) ^ 13 := by decide
  have hne : (407735 : ZMod 6241) ^ 13 ≠ (407732 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 407735 := by decide
  have hB : ¬ 79 ∣ 407732 := by decide
  have hexp :=
    has_exp_one_of_zmod 407732 407735 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 407732 407735 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 407732 407735 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      407732 407735 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      407732 407735 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_408047_408050 :
    HasPrimeWithExpOne (S_val 408047 408050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 408047 408050 ∧ ¬ p ∣ (408050 - 408047) ∧
      ∃ (hNotC : ¬ p ∣ 408050) (hNotB : ¬ p ∣ 408047),
        order_of_C_B_inv_mod_p2 408050 408047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 408047 408050 := by
  have hlt : (408047 : Nat) < 408050 := by decide
  have hcop : ¬ 79 ∣ (408050 - 408047) := by decide
  have heq : (408050 : ZMod 79) ^ 13 = (408047 : ZMod 79) ^ 13 := by decide
  have hne : (408050 : ZMod 6241) ^ 13 ≠ (408047 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 408050 := by decide
  have hB : ¬ 79 ∣ 408047 := by decide
  have hexp :=
    has_exp_one_of_zmod 408047 408050 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 408047 408050 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 408047 408050 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      408047 408050 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      408047 408050 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_408393_408396 :
    HasPrimeWithExpOne (S_val 408393 408396) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 408393 408396 ∧ ¬ p ∣ (408396 - 408393) ∧
      ∃ (hNotC : ¬ p ∣ 408396) (hNotB : ¬ p ∣ 408393),
        order_of_C_B_inv_mod_p2 408396 408393 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 408393 408396 := by
  have hlt : (408393 : Nat) < 408396 := by decide
  have hcop : ¬ 79 ∣ (408396 - 408393) := by decide
  have heq : (408396 : ZMod 79) ^ 13 = (408393 : ZMod 79) ^ 13 := by decide
  have hne : (408396 : ZMod 6241) ^ 13 ≠ (408393 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 408396 := by decide
  have hB : ¬ 79 ∣ 408393 := by decide
  have hexp :=
    has_exp_one_of_zmod 408393 408396 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 408393 408396 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 408393 408396 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      408393 408396 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      408393 408396 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_408707_408710 :
    HasPrimeWithExpOne (S_val 408707 408710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 408707 408710 ∧ ¬ p ∣ (408710 - 408707) ∧
      ∃ (hNotC : ¬ p ∣ 408710) (hNotB : ¬ p ∣ 408707),
        order_of_C_B_inv_mod_p2 408710 408707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 408707 408710 := by
  have hlt : (408707 : Nat) < 408710 := by decide
  have hcop : ¬ 547 ∣ (408710 - 408707) := by decide
  have heq : (408710 : ZMod 547) ^ 13 = (408707 : ZMod 547) ^ 13 := by decide
  have hne : (408710 : ZMod 299209) ^ 13 ≠ (408707 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 408710 := by decide
  have hB : ¬ 547 ∣ 408707 := by decide
  have hexp :=
    has_exp_one_of_zmod 408707 408710 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 408707 408710 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 408707 408710 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      408707 408710 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      408707 408710 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_409060_409063 :
    HasPrimeWithExpOne (S_val 409060 409063) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 409060 409063 ∧ ¬ p ∣ (409063 - 409060) ∧
      ∃ (hNotC : ¬ p ∣ 409063) (hNotB : ¬ p ∣ 409060),
        order_of_C_B_inv_mod_p2 409063 409060 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 409060 409063 := by
  have hlt : (409060 : Nat) < 409063 := by decide
  have hcop : ¬ 53 ∣ (409063 - 409060) := by decide
  have heq : (409063 : ZMod 53) ^ 13 = (409060 : ZMod 53) ^ 13 := by decide
  have hne : (409063 : ZMod 2809) ^ 13 ≠ (409060 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 409063 := by decide
  have hB : ¬ 53 ∣ 409060 := by decide
  have hexp :=
    has_exp_one_of_zmod 409060 409063 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 409060 409063 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 409060 409063 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      409060 409063 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      409060 409063 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_409401_409404 :
    HasPrimeWithExpOne (S_val 409401 409404) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 409401 409404 ∧ ¬ p ∣ (409404 - 409401) ∧
      ∃ (hNotC : ¬ p ∣ 409404) (hNotB : ¬ p ∣ 409401),
        order_of_C_B_inv_mod_p2 409404 409401 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 409401 409404 := by
  have hlt : (409401 : Nat) < 409404 := by decide
  have hcop : ¬ 79 ∣ (409404 - 409401) := by decide
  have heq : (409404 : ZMod 79) ^ 13 = (409401 : ZMod 79) ^ 13 := by decide
  have hne : (409404 : ZMod 6241) ^ 13 ≠ (409401 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 409404 := by decide
  have hB : ¬ 79 ∣ 409401 := by decide
  have hexp :=
    has_exp_one_of_zmod 409401 409404 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 409401 409404 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 409401 409404 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      409401 409404 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      409401 409404 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_409748_409751 :
    HasPrimeWithExpOne (S_val 409748 409751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 409748 409751 ∧ ¬ p ∣ (409751 - 409748) ∧
      ∃ (hNotC : ¬ p ∣ 409751) (hNotB : ¬ p ∣ 409748),
        order_of_C_B_inv_mod_p2 409751 409748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 409748 409751 := by
  have hlt : (409748 : Nat) < 409751 := by decide
  have hcop : ¬ 53 ∣ (409751 - 409748) := by decide
  have heq : (409751 : ZMod 53) ^ 13 = (409748 : ZMod 53) ^ 13 := by decide
  have hne : (409751 : ZMod 2809) ^ 13 ≠ (409748 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 409751 := by decide
  have hB : ¬ 53 ∣ 409748 := by decide
  have hexp :=
    has_exp_one_of_zmod 409748 409751 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 409748 409751 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 409748 409751 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      409748 409751 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      409748 409751 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_410104_410107 :
    HasPrimeWithExpOne (S_val 410104 410107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 410104 410107 ∧ ¬ p ∣ (410107 - 410104) ∧
      ∃ (hNotC : ¬ p ∣ 410107) (hNotB : ¬ p ∣ 410104),
        order_of_C_B_inv_mod_p2 410107 410104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 410104 410107 := by
  have hlt : (410104 : Nat) < 410107 := by decide
  have hcop : ¬ 131 ∣ (410107 - 410104) := by decide
  have heq : (410107 : ZMod 131) ^ 13 = (410104 : ZMod 131) ^ 13 := by decide
  have hne : (410107 : ZMod 17161) ^ 13 ≠ (410104 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 410107 := by decide
  have hB : ¬ 131 ∣ 410104 := by decide
  have hexp :=
    has_exp_one_of_zmod 410104 410107 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 410104 410107 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 410104 410107 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      410104 410107 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      410104 410107 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_410419_410422 :
    HasPrimeWithExpOne (S_val 410419 410422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 410419 410422 ∧ ¬ p ∣ (410422 - 410419) ∧
      ∃ (hNotC : ¬ p ∣ 410422) (hNotB : ¬ p ∣ 410419),
        order_of_C_B_inv_mod_p2 410422 410419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 410419 410422 := by
  have hlt : (410419 : Nat) < 410422 := by decide
  have hcop : ¬ 53 ∣ (410422 - 410419) := by decide
  have heq : (410422 : ZMod 53) ^ 13 = (410419 : ZMod 53) ^ 13 := by decide
  have hne : (410422 : ZMod 2809) ^ 13 ≠ (410419 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 410422 := by decide
  have hB : ¬ 53 ∣ 410419 := by decide
  have hexp :=
    has_exp_one_of_zmod 410419 410422 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 410419 410422 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 410419 410422 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      410419 410422 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      410419 410422 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_410758_410761 :
    HasPrimeWithExpOne (S_val 410758 410761) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 410758 410761 ∧ ¬ p ∣ (410761 - 410758) ∧
      ∃ (hNotC : ¬ p ∣ 410761) (hNotB : ¬ p ∣ 410758),
        order_of_C_B_inv_mod_p2 410761 410758 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 410758 410761 := by
  have hlt : (410758 : Nat) < 410761 := by decide
  have hcop : ¬ 131 ∣ (410761 - 410758) := by decide
  have heq : (410761 : ZMod 131) ^ 13 = (410758 : ZMod 131) ^ 13 := by decide
  have hne : (410761 : ZMod 17161) ^ 13 ≠ (410758 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 410761 := by decide
  have hB : ¬ 131 ∣ 410758 := by decide
  have hexp :=
    has_exp_one_of_zmod 410758 410761 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 410758 410761 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 410758 410761 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      410758 410761 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      410758 410761 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_411086_411089 :
    HasPrimeWithExpOne (S_val 411086 411089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 411086 411089 ∧ ¬ p ∣ (411089 - 411086) ∧
      ∃ (hNotC : ¬ p ∣ 411089) (hNotB : ¬ p ∣ 411086),
        order_of_C_B_inv_mod_p2 411089 411086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 411086 411089 := by
  have hlt : (411086 : Nat) < 411089 := by decide
  have hcop : ¬ 53 ∣ (411089 - 411086) := by decide
  have heq : (411089 : ZMod 53) ^ 13 = (411086 : ZMod 53) ^ 13 := by decide
  have hne : (411089 : ZMod 2809) ^ 13 ≠ (411086 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 411089 := by decide
  have hB : ¬ 53 ∣ 411086 := by decide
  have hexp :=
    has_exp_one_of_zmod 411086 411089 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 411086 411089 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 411086 411089 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      411086 411089 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      411086 411089 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_411403_411406 :
    HasPrimeWithExpOne (S_val 411403 411406) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 411403 411406 ∧ ¬ p ∣ (411406 - 411403) ∧
      ∃ (hNotC : ¬ p ∣ 411406) (hNotB : ¬ p ∣ 411403),
        order_of_C_B_inv_mod_p2 411406 411403 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 411403 411406 := by
  have hlt : (411403 : Nat) < 411406 := by decide
  have hcop : ¬ 157 ∣ (411406 - 411403) := by decide
  have heq : (411406 : ZMod 157) ^ 13 = (411403 : ZMod 157) ^ 13 := by decide
  have hne : (411406 : ZMod 24649) ^ 13 ≠ (411403 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 411406 := by decide
  have hB : ¬ 157 ∣ 411403 := by decide
  have hexp :=
    has_exp_one_of_zmod 411403 411406 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 411403 411406 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 411403 411406 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      411403 411406 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      411403 411406 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_411737_411740 :
    HasPrimeWithExpOne (S_val 411737 411740) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 411737 411740 ∧ ¬ p ∣ (411740 - 411737) ∧
      ∃ (hNotC : ¬ p ∣ 411740) (hNotB : ¬ p ∣ 411737),
        order_of_C_B_inv_mod_p2 411740 411737 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 411737 411740 := by
  have hlt : (411737 : Nat) < 411740 := by decide
  have hcop : ¬ 521 ∣ (411740 - 411737) := by decide
  have heq : (411740 : ZMod 521) ^ 13 = (411737 : ZMod 521) ^ 13 := by decide
  have hne : (411740 : ZMod 271441) ^ 13 ≠ (411737 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 411740 := by decide
  have hB : ¬ 521 ∣ 411737 := by decide
  have hexp :=
    has_exp_one_of_zmod 411737 411740 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 411737 411740 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 411737 411740 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      411737 411740 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      411737 411740 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_412068_412071 :
    HasPrimeWithExpOne (S_val 412068 412071) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 412068 412071 ∧ ¬ p ∣ (412071 - 412068) ∧
      ∃ (hNotC : ¬ p ∣ 412071) (hNotB : ¬ p ∣ 412068),
        order_of_C_B_inv_mod_p2 412071 412068 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 412068 412071 := by
  have hlt : (412068 : Nat) < 412071 := by decide
  have hcop : ¬ 53 ∣ (412071 - 412068) := by decide
  have heq : (412071 : ZMod 53) ^ 13 = (412068 : ZMod 53) ^ 13 := by decide
  have hne : (412071 : ZMod 2809) ^ 13 ≠ (412068 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 412071 := by decide
  have hB : ¬ 53 ∣ 412068 := by decide
  have hexp :=
    has_exp_one_of_zmod 412068 412071 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 412068 412071 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 412068 412071 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      412068 412071 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      412068 412071 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_412395_412398 :
    HasPrimeWithExpOne (S_val 412395 412398) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 412395 412398 ∧ ¬ p ∣ (412398 - 412395) ∧
      ∃ (hNotC : ¬ p ∣ 412398) (hNotB : ¬ p ∣ 412395),
        order_of_C_B_inv_mod_p2 412398 412395 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 412395 412398 := by
  have hlt : (412395 : Nat) < 412398 := by decide
  have hcop : ¬ 443 ∣ (412398 - 412395) := by decide
  have heq : (412398 : ZMod 443) ^ 13 = (412395 : ZMod 443) ^ 13 := by decide
  have hne : (412398 : ZMod 196249) ^ 13 ≠ (412395 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 412398 := by decide
  have hB : ¬ 443 ∣ 412395 := by decide
  have hexp :=
    has_exp_one_of_zmod 412395 412398 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 412395 412398 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 412395 412398 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      412395 412398 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      412395 412398 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_412724_412727 :
    HasPrimeWithExpOne (S_val 412724 412727) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 412724 412727 ∧ ¬ p ∣ (412727 - 412724) ∧
      ∃ (hNotC : ¬ p ∣ 412727) (hNotB : ¬ p ∣ 412724),
        order_of_C_B_inv_mod_p2 412727 412724 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 412724 412727 := by
  have hlt : (412724 : Nat) < 412727 := by decide
  have hcop : ¬ 53 ∣ (412727 - 412724) := by decide
  have heq : (412727 : ZMod 53) ^ 13 = (412724 : ZMod 53) ^ 13 := by decide
  have hne : (412727 : ZMod 2809) ^ 13 ≠ (412724 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 412727 := by decide
  have hB : ¬ 53 ∣ 412724 := by decide
  have hexp :=
    has_exp_one_of_zmod 412724 412727 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 412724 412727 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 412724 412727 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      412724 412727 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      412724 412727 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_413058_413061 :
    HasPrimeWithExpOne (S_val 413058 413061) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 413058 413061 ∧ ¬ p ∣ (413061 - 413058) ∧
      ∃ (hNotC : ¬ p ∣ 413061) (hNotB : ¬ p ∣ 413058),
        order_of_C_B_inv_mod_p2 413061 413058 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 413058 413061 := by
  have hlt : (413058 : Nat) < 413061 := by decide
  have hcop : ¬ 547 ∣ (413061 - 413058) := by decide
  have heq : (413061 : ZMod 547) ^ 13 = (413058 : ZMod 547) ^ 13 := by decide
  have hne : (413061 : ZMod 299209) ^ 13 ≠ (413058 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 413061 := by decide
  have hB : ¬ 547 ∣ 413058 := by decide
  have hexp :=
    has_exp_one_of_zmod 413058 413061 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 413058 413061 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 413058 413061 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      413058 413061 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      413058 413061 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_413405_413408 :
    HasPrimeWithExpOne (S_val 413405 413408) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 413405 413408 ∧ ¬ p ∣ (413408 - 413405) ∧
      ∃ (hNotC : ¬ p ∣ 413408) (hNotB : ¬ p ∣ 413405),
        order_of_C_B_inv_mod_p2 413408 413405 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 413405 413408 := by
  have hlt : (413405 : Nat) < 413408 := by decide
  have hcop : ¬ 53 ∣ (413408 - 413405) := by decide
  have heq : (413408 : ZMod 53) ^ 13 = (413405 : ZMod 53) ^ 13 := by decide
  have hne : (413408 : ZMod 2809) ^ 13 ≠ (413405 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 413408 := by decide
  have hB : ¬ 53 ∣ 413405 := by decide
  have hexp :=
    has_exp_one_of_zmod 413405 413408 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 413405 413408 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 413405 413408 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      413405 413408 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      413405 413408 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_413758_413761 :
    HasPrimeWithExpOne (S_val 413758 413761) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 413758 413761 ∧ ¬ p ∣ (413761 - 413758) ∧
      ∃ (hNotC : ¬ p ∣ 413761) (hNotB : ¬ p ∣ 413758),
        order_of_C_B_inv_mod_p2 413761 413758 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 413758 413761 := by
  have hlt : (413758 : Nat) < 413761 := by decide
  have hcop : ¬ 53 ∣ (413761 - 413758) := by decide
  have heq : (413761 : ZMod 53) ^ 13 = (413758 : ZMod 53) ^ 13 := by decide
  have hne : (413761 : ZMod 2809) ^ 13 ≠ (413758 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 413761 := by decide
  have hB : ¬ 53 ∣ 413758 := by decide
  have hexp :=
    has_exp_one_of_zmod 413758 413761 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 413758 413761 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 413758 413761 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      413758 413761 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      413758 413761 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_414080_414083 :
    HasPrimeWithExpOne (S_val 414080 414083) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 414080 414083 ∧ ¬ p ∣ (414083 - 414080) ∧
      ∃ (hNotC : ¬ p ∣ 414083) (hNotB : ¬ p ∣ 414080),
        order_of_C_B_inv_mod_p2 414083 414080 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 414080 414083 := by
  have hlt : (414080 : Nat) < 414083 := by decide
  have hcop : ¬ 53 ∣ (414083 - 414080) := by decide
  have heq : (414083 : ZMod 53) ^ 13 = (414080 : ZMod 53) ^ 13 := by decide
  have hne : (414083 : ZMod 2809) ^ 13 ≠ (414080 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 414083 := by decide
  have hB : ¬ 53 ∣ 414080 := by decide
  have hexp :=
    has_exp_one_of_zmod 414080 414083 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 414080 414083 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 414080 414083 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      414080 414083 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      414080 414083 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_414425_414428 :
    HasPrimeWithExpOne (S_val 414425 414428) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 414425 414428 ∧ ¬ p ∣ (414428 - 414425) ∧
      ∃ (hNotC : ¬ p ∣ 414428) (hNotB : ¬ p ∣ 414425),
        order_of_C_B_inv_mod_p2 414428 414425 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 414425 414428 := by
  have hlt : (414425 : Nat) < 414428 := by decide
  have hcop : ¬ 53 ∣ (414428 - 414425) := by decide
  have heq : (414428 : ZMod 53) ^ 13 = (414425 : ZMod 53) ^ 13 := by decide
  have hne : (414428 : ZMod 2809) ^ 13 ≠ (414425 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 414428 := by decide
  have hB : ¬ 53 ∣ 414425 := by decide
  have hexp :=
    has_exp_one_of_zmod 414425 414428 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 414425 414428 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 414425 414428 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      414425 414428 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      414425 414428 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_414765_414768 :
    HasPrimeWithExpOne (S_val 414765 414768) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 414765 414768 ∧ ¬ p ∣ (414768 - 414765) ∧
      ∃ (hNotC : ¬ p ∣ 414768) (hNotB : ¬ p ∣ 414765),
        order_of_C_B_inv_mod_p2 414768 414765 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 414765 414768 := by
  have hlt : (414765 : Nat) < 414768 := by decide
  have hcop : ¬ 53 ∣ (414768 - 414765) := by decide
  have heq : (414768 : ZMod 53) ^ 13 = (414765 : ZMod 53) ^ 13 := by decide
  have hne : (414768 : ZMod 2809) ^ 13 ≠ (414765 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 414768 := by decide
  have hB : ¬ 53 ∣ 414765 := by decide
  have hexp :=
    has_exp_one_of_zmod 414765 414768 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 414765 414768 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 414765 414768 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      414765 414768 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      414765 414768 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_415096_415099 :
    HasPrimeWithExpOne (S_val 415096 415099) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 415096 415099 ∧ ¬ p ∣ (415099 - 415096) ∧
      ∃ (hNotC : ¬ p ∣ 415099) (hNotB : ¬ p ∣ 415096),
        order_of_C_B_inv_mod_p2 415099 415096 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 415096 415099 := by
  have hlt : (415096 : Nat) < 415099 := by decide
  have hcop : ¬ 443 ∣ (415099 - 415096) := by decide
  have heq : (415099 : ZMod 443) ^ 13 = (415096 : ZMod 443) ^ 13 := by decide
  have hne : (415099 : ZMod 196249) ^ 13 ≠ (415096 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 415099 := by decide
  have hB : ¬ 443 ∣ 415096 := by decide
  have hexp :=
    has_exp_one_of_zmod 415096 415099 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 415096 415099 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 415096 415099 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      415096 415099 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      415096 415099 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_415454_415457 :
    HasPrimeWithExpOne (S_val 415454 415457) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 415454 415457 ∧ ¬ p ∣ (415457 - 415454) ∧
      ∃ (hNotC : ¬ p ∣ 415457) (hNotB : ¬ p ∣ 415454),
        order_of_C_B_inv_mod_p2 415457 415454 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 415454 415457 := by
  have hlt : (415454 : Nat) < 415457 := by decide
  have hcop : ¬ 53 ∣ (415457 - 415454) := by decide
  have heq : (415457 : ZMod 53) ^ 13 = (415454 : ZMod 53) ^ 13 := by decide
  have hne : (415457 : ZMod 2809) ^ 13 ≠ (415454 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 415457 := by decide
  have hB : ¬ 53 ∣ 415454 := by decide
  have hexp :=
    has_exp_one_of_zmod 415454 415457 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 415454 415457 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 415454 415457 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      415454 415457 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      415454 415457 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_415786_415789 :
    HasPrimeWithExpOne (S_val 415786 415789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 415786 415789 ∧ ¬ p ∣ (415789 - 415786) ∧
      ∃ (hNotC : ¬ p ∣ 415789) (hNotB : ¬ p ∣ 415786),
        order_of_C_B_inv_mod_p2 415789 415786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 415786 415789 := by
  have hlt : (415786 : Nat) < 415789 := by decide
  have hcop : ¬ 157 ∣ (415789 - 415786) := by decide
  have heq : (415789 : ZMod 157) ^ 13 = (415786 : ZMod 157) ^ 13 := by decide
  have hne : (415789 : ZMod 24649) ^ 13 ≠ (415786 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 415789 := by decide
  have hB : ¬ 157 ∣ 415786 := by decide
  have hexp :=
    has_exp_one_of_zmod 415786 415789 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 415786 415789 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 415786 415789 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      415786 415789 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      415786 415789 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_416120_416123 :
    HasPrimeWithExpOne (S_val 416120 416123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 416120 416123 ∧ ¬ p ∣ (416123 - 416120) ∧
      ∃ (hNotC : ¬ p ∣ 416123) (hNotB : ¬ p ∣ 416120),
        order_of_C_B_inv_mod_p2 416123 416120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 416120 416123 := by
  have hlt : (416120 : Nat) < 416123 := by decide
  have hcop : ¬ 157 ∣ (416123 - 416120) := by decide
  have heq : (416123 : ZMod 157) ^ 13 = (416120 : ZMod 157) ^ 13 := by decide
  have hne : (416123 : ZMod 24649) ^ 13 ≠ (416120 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 416123 := by decide
  have hB : ¬ 157 ∣ 416120 := by decide
  have hexp :=
    has_exp_one_of_zmod 416120 416123 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 416120 416123 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 416120 416123 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      416120 416123 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      416120 416123 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_416462_416465 :
    HasPrimeWithExpOne (S_val 416462 416465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 416462 416465 ∧ ¬ p ∣ (416465 - 416462) ∧
      ∃ (hNotC : ¬ p ∣ 416465) (hNotB : ¬ p ∣ 416462),
        order_of_C_B_inv_mod_p2 416465 416462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 416462 416465 := by
  have hlt : (416462 : Nat) < 416465 := by decide
  have hcop : ¬ 79 ∣ (416465 - 416462) := by decide
  have heq : (416465 : ZMod 79) ^ 13 = (416462 : ZMod 79) ^ 13 := by decide
  have hne : (416465 : ZMod 6241) ^ 13 ≠ (416462 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 416465 := by decide
  have hB : ¬ 79 ∣ 416462 := by decide
  have hexp :=
    has_exp_one_of_zmod 416462 416465 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 416462 416465 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 416462 416465 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      416462 416465 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      416462 416465 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_416797_416800 :
    HasPrimeWithExpOne (S_val 416797 416800) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 416797 416800 ∧ ¬ p ∣ (416800 - 416797) ∧
      ∃ (hNotC : ¬ p ∣ 416800) (hNotB : ¬ p ∣ 416797),
        order_of_C_B_inv_mod_p2 416800 416797 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 416797 416800 := by
  have hlt : (416797 : Nat) < 416800 := by decide
  have hcop : ¬ 53 ∣ (416800 - 416797) := by decide
  have heq : (416800 : ZMod 53) ^ 13 = (416797 : ZMod 53) ^ 13 := by decide
  have hne : (416800 : ZMod 2809) ^ 13 ≠ (416797 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 416800 := by decide
  have hB : ¬ 53 ∣ 416797 := by decide
  have hexp :=
    has_exp_one_of_zmod 416797 416800 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 416797 416800 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 416797 416800 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      416797 416800 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      416797 416800 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_417123_417126 :
    HasPrimeWithExpOne (S_val 417123 417126) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 417123 417126 ∧ ¬ p ∣ (417126 - 417123) ∧
      ∃ (hNotC : ¬ p ∣ 417126) (hNotB : ¬ p ∣ 417123),
        order_of_C_B_inv_mod_p2 417126 417123 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 417123 417126 := by
  have hlt : (417123 : Nat) < 417126 := by decide
  have hcop : ¬ 53 ∣ (417126 - 417123) := by decide
  have heq : (417126 : ZMod 53) ^ 13 = (417123 : ZMod 53) ^ 13 := by decide
  have hne : (417126 : ZMod 2809) ^ 13 ≠ (417123 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 417126 := by decide
  have hB : ¬ 53 ∣ 417123 := by decide
  have hexp :=
    has_exp_one_of_zmod 417123 417126 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 417123 417126 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 417123 417126 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      417123 417126 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      417123 417126 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_417465_417468 :
    HasPrimeWithExpOne (S_val 417465 417468) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 417465 417468 ∧ ¬ p ∣ (417468 - 417465) ∧
      ∃ (hNotC : ¬ p ∣ 417468) (hNotB : ¬ p ∣ 417465),
        order_of_C_B_inv_mod_p2 417468 417465 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 417465 417468 := by
  have hlt : (417465 : Nat) < 417468 := by decide
  have hcop : ¬ 53 ∣ (417468 - 417465) := by decide
  have heq : (417468 : ZMod 53) ^ 13 = (417465 : ZMod 53) ^ 13 := by decide
  have hne : (417468 : ZMod 2809) ^ 13 ≠ (417465 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 417468 := by decide
  have hB : ¬ 53 ∣ 417465 := by decide
  have hexp :=
    has_exp_one_of_zmod 417465 417468 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 417465 417468 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 417465 417468 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      417465 417468 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      417465 417468 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_417790_417793 :
    HasPrimeWithExpOne (S_val 417790 417793) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 417790 417793 ∧ ¬ p ∣ (417793 - 417790) ∧
      ∃ (hNotC : ¬ p ∣ 417793) (hNotB : ¬ p ∣ 417790),
        order_of_C_B_inv_mod_p2 417793 417790 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 417790 417793 := by
  have hlt : (417790 : Nat) < 417793 := by decide
  have hcop : ¬ 53 ∣ (417793 - 417790) := by decide
  have heq : (417793 : ZMod 53) ^ 13 = (417790 : ZMod 53) ^ 13 := by decide
  have hne : (417793 : ZMod 2809) ^ 13 ≠ (417790 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 417793 := by decide
  have hB : ¬ 53 ∣ 417790 := by decide
  have hexp :=
    has_exp_one_of_zmod 417790 417793 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 417790 417793 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 417790 417793 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      417790 417793 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      417790 417793 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_418118_418121 :
    HasPrimeWithExpOne (S_val 418118 418121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 418118 418121 ∧ ¬ p ∣ (418121 - 418118) ∧
      ∃ (hNotC : ¬ p ∣ 418121) (hNotB : ¬ p ∣ 418118),
        order_of_C_B_inv_mod_p2 418121 418118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 418118 418121 := by
  have hlt : (418118 : Nat) < 418121 := by decide
  have hcop : ¬ 521 ∣ (418121 - 418118) := by decide
  have heq : (418121 : ZMod 521) ^ 13 = (418118 : ZMod 521) ^ 13 := by decide
  have hne : (418121 : ZMod 271441) ^ 13 ≠ (418118 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 418121 := by decide
  have hB : ¬ 521 ∣ 418118 := by decide
  have hexp :=
    has_exp_one_of_zmod 418118 418121 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 418118 418121 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 418118 418121 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      418118 418121 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      418118 418121 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_418446_418449 :
    HasPrimeWithExpOne (S_val 418446 418449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 418446 418449 ∧ ¬ p ∣ (418449 - 418446) ∧
      ∃ (hNotC : ¬ p ∣ 418449) (hNotB : ¬ p ∣ 418446),
        order_of_C_B_inv_mod_p2 418449 418446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 418446 418449 := by
  have hlt : (418446 : Nat) < 418449 := by decide
  have hcop : ¬ 79 ∣ (418449 - 418446) := by decide
  have heq : (418449 : ZMod 79) ^ 13 = (418446 : ZMod 79) ^ 13 := by decide
  have hne : (418449 : ZMod 6241) ^ 13 ≠ (418446 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 418449 := by decide
  have hB : ¬ 79 ∣ 418446 := by decide
  have hexp :=
    has_exp_one_of_zmod 418446 418449 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 418446 418449 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 418446 418449 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      418446 418449 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      418446 418449 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_418785_418788 :
    HasPrimeWithExpOne (S_val 418785 418788) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 418785 418788 ∧ ¬ p ∣ (418788 - 418785) ∧
      ∃ (hNotC : ¬ p ∣ 418788) (hNotB : ¬ p ∣ 418785),
        order_of_C_B_inv_mod_p2 418788 418785 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 418785 418788 := by
  have hlt : (418785 : Nat) < 418788 := by decide
  have hcop : ¬ 53 ∣ (418788 - 418785) := by decide
  have heq : (418788 : ZMod 53) ^ 13 = (418785 : ZMod 53) ^ 13 := by decide
  have hne : (418788 : ZMod 2809) ^ 13 ≠ (418785 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 418788 := by decide
  have hB : ¬ 53 ∣ 418785 := by decide
  have hexp :=
    has_exp_one_of_zmod 418785 418788 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 418785 418788 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 418785 418788 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      418785 418788 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      418785 418788 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_419117_419120 :
    HasPrimeWithExpOne (S_val 419117 419120) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 419117 419120 ∧ ¬ p ∣ (419120 - 419117) ∧
      ∃ (hNotC : ¬ p ∣ 419120) (hNotB : ¬ p ∣ 419117),
        order_of_C_B_inv_mod_p2 419120 419117 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 419117 419120 := by
  have hlt : (419117 : Nat) < 419120 := by decide
  have hcop : ¬ 53 ∣ (419120 - 419117) := by decide
  have heq : (419120 : ZMod 53) ^ 13 = (419117 : ZMod 53) ^ 13 := by decide
  have hne : (419120 : ZMod 2809) ^ 13 ≠ (419117 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 419120 := by decide
  have hB : ¬ 53 ∣ 419117 := by decide
  have hexp :=
    has_exp_one_of_zmod 419117 419120 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 419117 419120 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 419117 419120 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      419117 419120 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      419117 419120 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_419471_419474 :
    HasPrimeWithExpOne (S_val 419471 419474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 419471 419474 ∧ ¬ p ∣ (419474 - 419471) ∧
      ∃ (hNotC : ¬ p ∣ 419474) (hNotB : ¬ p ∣ 419471),
        order_of_C_B_inv_mod_p2 419474 419471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 419471 419474 := by
  have hlt : (419471 : Nat) < 419474 := by decide
  have hcop : ¬ 131 ∣ (419474 - 419471) := by decide
  have heq : (419474 : ZMod 131) ^ 13 = (419471 : ZMod 131) ^ 13 := by decide
  have hne : (419474 : ZMod 17161) ^ 13 ≠ (419471 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 419474 := by decide
  have hB : ¬ 131 ∣ 419471 := by decide
  have hexp :=
    has_exp_one_of_zmod 419471 419474 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 419471 419474 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 419471 419474 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      419471 419474 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      419471 419474 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_419807_419810 :
    HasPrimeWithExpOne (S_val 419807 419810) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 419807 419810 ∧ ¬ p ∣ (419810 - 419807) ∧
      ∃ (hNotC : ¬ p ∣ 419810) (hNotB : ¬ p ∣ 419807),
        order_of_C_B_inv_mod_p2 419810 419807 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 419807 419810 := by
  have hlt : (419807 : Nat) < 419810 := by decide
  have hcop : ¬ 443 ∣ (419810 - 419807) := by decide
  have heq : (419810 : ZMod 443) ^ 13 = (419807 : ZMod 443) ^ 13 := by decide
  have hne : (419810 : ZMod 196249) ^ 13 ≠ (419807 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 419810 := by decide
  have hB : ¬ 443 ∣ 419807 := by decide
  have hexp :=
    has_exp_one_of_zmod 419807 419810 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 419807 419810 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 419807 419810 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      419807 419810 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      419807 419810 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_420150_420153 :
    HasPrimeWithExpOne (S_val 420150 420153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 420150 420153 ∧ ¬ p ∣ (420153 - 420150) ∧
      ∃ (hNotC : ¬ p ∣ 420153) (hNotB : ¬ p ∣ 420150),
        order_of_C_B_inv_mod_p2 420153 420150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 420150 420153 := by
  have hlt : (420150 : Nat) < 420153 := by decide
  have hcop : ¬ 521 ∣ (420153 - 420150) := by decide
  have heq : (420153 : ZMod 521) ^ 13 = (420150 : ZMod 521) ^ 13 := by decide
  have hne : (420153 : ZMod 271441) ^ 13 ≠ (420150 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 420153 := by decide
  have hB : ¬ 521 ∣ 420150 := by decide
  have hexp :=
    has_exp_one_of_zmod 420150 420153 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 420150 420153 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 420150 420153 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      420150 420153 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      420150 420153 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_420489_420492 :
    HasPrimeWithExpOne (S_val 420489 420492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 420489 420492 ∧ ¬ p ∣ (420492 - 420489) ∧
      ∃ (hNotC : ¬ p ∣ 420492) (hNotB : ¬ p ∣ 420489),
        order_of_C_B_inv_mod_p2 420492 420489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 420489 420492 := by
  have hlt : (420489 : Nat) < 420492 := by decide
  have hcop : ¬ 53 ∣ (420492 - 420489) := by decide
  have heq : (420492 : ZMod 53) ^ 13 = (420489 : ZMod 53) ^ 13 := by decide
  have hne : (420492 : ZMod 2809) ^ 13 ≠ (420489 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 420492 := by decide
  have hB : ¬ 53 ∣ 420489 := by decide
  have hexp :=
    has_exp_one_of_zmod 420489 420492 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 420489 420492 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 420489 420492 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      420489 420492 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      420489 420492 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_420818_420821 :
    HasPrimeWithExpOne (S_val 420818 420821) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 420818 420821 ∧ ¬ p ∣ (420821 - 420818) ∧
      ∃ (hNotC : ¬ p ∣ 420821) (hNotB : ¬ p ∣ 420818),
        order_of_C_B_inv_mod_p2 420821 420818 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 420818 420821 := by
  have hlt : (420818 : Nat) < 420821 := by decide
  have hcop : ¬ 79 ∣ (420821 - 420818) := by decide
  have heq : (420821 : ZMod 79) ^ 13 = (420818 : ZMod 79) ^ 13 := by decide
  have hne : (420821 : ZMod 6241) ^ 13 ≠ (420818 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 420821 := by decide
  have hB : ¬ 79 ∣ 420818 := by decide
  have hexp :=
    has_exp_one_of_zmod 420818 420821 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 420818 420821 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 420818 420821 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      420818 420821 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      420818 420821 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_421157_421160 :
    HasPrimeWithExpOne (S_val 421157 421160) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 421157 421160 ∧ ¬ p ∣ (421160 - 421157) ∧
      ∃ (hNotC : ¬ p ∣ 421160) (hNotB : ¬ p ∣ 421157),
        order_of_C_B_inv_mod_p2 421160 421157 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 421157 421160 := by
  have hlt : (421157 : Nat) < 421160 := by decide
  have hcop : ¬ 313 ∣ (421160 - 421157) := by decide
  have heq : (421160 : ZMod 313) ^ 13 = (421157 : ZMod 313) ^ 13 := by decide
  have hne : (421160 : ZMod 97969) ^ 13 ≠ (421157 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 421160 := by decide
  have hB : ¬ 313 ∣ 421157 := by decide
  have hexp :=
    has_exp_one_of_zmod 421157 421160 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 421157 421160 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 421157 421160 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      421157 421160 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      421157 421160 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_421481_421484 :
    HasPrimeWithExpOne (S_val 421481 421484) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 421481 421484 ∧ ¬ p ∣ (421484 - 421481) ∧
      ∃ (hNotC : ¬ p ∣ 421484) (hNotB : ¬ p ∣ 421481),
        order_of_C_B_inv_mod_p2 421484 421481 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 421481 421484 := by
  have hlt : (421481 : Nat) < 421484 := by decide
  have hcop : ¬ 131 ∣ (421484 - 421481) := by decide
  have heq : (421484 : ZMod 131) ^ 13 = (421481 : ZMod 131) ^ 13 := by decide
  have hne : (421484 : ZMod 17161) ^ 13 ≠ (421481 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 421484 := by decide
  have hB : ¬ 131 ∣ 421481 := by decide
  have hexp :=
    has_exp_one_of_zmod 421481 421484 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 421481 421484 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 421481 421484 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      421481 421484 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      421481 421484 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_421814_421817 :
    HasPrimeWithExpOne (S_val 421814 421817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 421814 421817 ∧ ¬ p ∣ (421817 - 421814) ∧
      ∃ (hNotC : ¬ p ∣ 421817) (hNotB : ¬ p ∣ 421814),
        order_of_C_B_inv_mod_p2 421817 421814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 421814 421817 := by
  have hlt : (421814 : Nat) < 421817 := by decide
  have hcop : ¬ 53 ∣ (421817 - 421814) := by decide
  have heq : (421817 : ZMod 53) ^ 13 = (421814 : ZMod 53) ^ 13 := by decide
  have hne : (421817 : ZMod 2809) ^ 13 ≠ (421814 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 421817 := by decide
  have hB : ¬ 53 ∣ 421814 := by decide
  have hexp :=
    has_exp_one_of_zmod 421814 421817 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 421814 421817 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 421814 421817 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      421814 421817 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      421814 421817 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_422163_422166 :
    HasPrimeWithExpOne (S_val 422163 422166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 422163 422166 ∧ ¬ p ∣ (422166 - 422163) ∧
      ∃ (hNotC : ¬ p ∣ 422166) (hNotB : ¬ p ∣ 422163),
        order_of_C_B_inv_mod_p2 422166 422163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 422163 422166 := by
  have hlt : (422163 : Nat) < 422166 := by decide
  have hcop : ¬ 53 ∣ (422166 - 422163) := by decide
  have heq : (422166 : ZMod 53) ^ 13 = (422163 : ZMod 53) ^ 13 := by decide
  have hne : (422166 : ZMod 2809) ^ 13 ≠ (422163 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 422166 := by decide
  have hB : ¬ 53 ∣ 422163 := by decide
  have hexp :=
    has_exp_one_of_zmod 422163 422166 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 422163 422166 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 422163 422166 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      422163 422166 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      422163 422166 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_422503_422506 :
    HasPrimeWithExpOne (S_val 422503 422506) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 422503 422506 ∧ ¬ p ∣ (422506 - 422503) ∧
      ∃ (hNotC : ¬ p ∣ 422506) (hNotB : ¬ p ∣ 422503),
        order_of_C_B_inv_mod_p2 422506 422503 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 422503 422506 := by
  have hlt : (422503 : Nat) < 422506 := by decide
  have hcop : ¬ 53 ∣ (422506 - 422503) := by decide
  have heq : (422506 : ZMod 53) ^ 13 = (422503 : ZMod 53) ^ 13 := by decide
  have hne : (422506 : ZMod 2809) ^ 13 ≠ (422503 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 422506 := by decide
  have hB : ¬ 53 ∣ 422503 := by decide
  have hexp :=
    has_exp_one_of_zmod 422503 422506 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 422503 422506 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 422503 422506 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      422503 422506 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      422503 422506 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_422826_422829 :
    HasPrimeWithExpOne (S_val 422826 422829) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 422826 422829 ∧ ¬ p ∣ (422829 - 422826) ∧
      ∃ (hNotC : ¬ p ∣ 422829) (hNotB : ¬ p ∣ 422826),
        order_of_C_B_inv_mod_p2 422829 422826 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 422826 422829 := by
  have hlt : (422826 : Nat) < 422829 := by decide
  have hcop : ¬ 53 ∣ (422829 - 422826) := by decide
  have heq : (422829 : ZMod 53) ^ 13 = (422826 : ZMod 53) ^ 13 := by decide
  have hne : (422829 : ZMod 2809) ^ 13 ≠ (422826 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 422829 := by decide
  have hB : ¬ 53 ∣ 422826 := by decide
  have hexp :=
    has_exp_one_of_zmod 422826 422829 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 422826 422829 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 422826 422829 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      422826 422829 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      422826 422829 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_423168_423171 :
    HasPrimeWithExpOne (S_val 423168 423171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 423168 423171 ∧ ¬ p ∣ (423171 - 423168) ∧
      ∃ (hNotC : ¬ p ∣ 423171) (hNotB : ¬ p ∣ 423168),
        order_of_C_B_inv_mod_p2 423171 423168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 423168 423171 := by
  have hlt : (423168 : Nat) < 423171 := by decide
  have hcop : ¬ 131 ∣ (423171 - 423168) := by decide
  have heq : (423171 : ZMod 131) ^ 13 = (423168 : ZMod 131) ^ 13 := by decide
  have hne : (423171 : ZMod 17161) ^ 13 ≠ (423168 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 423171 := by decide
  have hB : ¬ 131 ∣ 423168 := by decide
  have hexp :=
    has_exp_one_of_zmod 423168 423171 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 423168 423171 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 423168 423171 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      423168 423171 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      423168 423171 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_423499_423502 :
    HasPrimeWithExpOne (S_val 423499 423502) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 423499 423502 ∧ ¬ p ∣ (423502 - 423499) ∧
      ∃ (hNotC : ¬ p ∣ 423502) (hNotB : ¬ p ∣ 423499),
        order_of_C_B_inv_mod_p2 423502 423499 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 423499 423502 := by
  have hlt : (423499 : Nat) < 423502 := by decide
  have hcop : ¬ 157 ∣ (423502 - 423499) := by decide
  have heq : (423502 : ZMod 157) ^ 13 = (423499 : ZMod 157) ^ 13 := by decide
  have hne : (423502 : ZMod 24649) ^ 13 ≠ (423499 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 423502 := by decide
  have hB : ¬ 157 ∣ 423499 := by decide
  have hexp :=
    has_exp_one_of_zmod 423499 423502 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 423499 423502 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 423499 423502 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      423499 423502 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      423499 423502 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_423854_423857 :
    HasPrimeWithExpOne (S_val 423854 423857) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 423854 423857 ∧ ¬ p ∣ (423857 - 423854) ∧
      ∃ (hNotC : ¬ p ∣ 423857) (hNotB : ¬ p ∣ 423854),
        order_of_C_B_inv_mod_p2 423857 423854 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 423854 423857 := by
  have hlt : (423854 : Nat) < 423857 := by decide
  have hcop : ¬ 53 ∣ (423857 - 423854) := by decide
  have heq : (423857 : ZMod 53) ^ 13 = (423854 : ZMod 53) ^ 13 := by decide
  have hne : (423857 : ZMod 2809) ^ 13 ≠ (423854 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 423857 := by decide
  have hB : ¬ 53 ∣ 423854 := by decide
  have hexp :=
    has_exp_one_of_zmod 423854 423857 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 423854 423857 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 423854 423857 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      423854 423857 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      423854 423857 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_424182_424185 :
    HasPrimeWithExpOne (S_val 424182 424185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 424182 424185 ∧ ¬ p ∣ (424185 - 424182) ∧
      ∃ (hNotC : ¬ p ∣ 424185) (hNotB : ¬ p ∣ 424182),
        order_of_C_B_inv_mod_p2 424185 424182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 424182 424185 := by
  have hlt : (424182 : Nat) < 424185 := by decide
  have hcop : ¬ 157 ∣ (424185 - 424182) := by decide
  have heq : (424185 : ZMod 157) ^ 13 = (424182 : ZMod 157) ^ 13 := by decide
  have hne : (424185 : ZMod 24649) ^ 13 ≠ (424182 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 424185 := by decide
  have hB : ¬ 157 ∣ 424182 := by decide
  have hexp :=
    has_exp_one_of_zmod 424182 424185 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 424182 424185 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 424182 424185 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      424182 424185 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      424182 424185 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_424505_424508 :
    HasPrimeWithExpOne (S_val 424505 424508) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 424505 424508 ∧ ¬ p ∣ (424508 - 424505) ∧
      ∃ (hNotC : ¬ p ∣ 424508) (hNotB : ¬ p ∣ 424505),
        order_of_C_B_inv_mod_p2 424508 424505 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 424505 424508 := by
  have hlt : (424505 : Nat) < 424508 := by decide
  have hcop : ¬ 313 ∣ (424508 - 424505) := by decide
  have heq : (424508 : ZMod 313) ^ 13 = (424505 : ZMod 313) ^ 13 := by decide
  have hne : (424508 : ZMod 97969) ^ 13 ≠ (424505 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 424508 := by decide
  have hB : ¬ 313 ∣ 424505 := by decide
  have hexp :=
    has_exp_one_of_zmod 424505 424508 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 424505 424508 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 424505 424508 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      424505 424508 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      424505 424508 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_424840_424843 :
    HasPrimeWithExpOne (S_val 424840 424843) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 424840 424843 ∧ ¬ p ∣ (424843 - 424840) ∧
      ∃ (hNotC : ¬ p ∣ 424843) (hNotB : ¬ p ∣ 424840),
        order_of_C_B_inv_mod_p2 424843 424840 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 424840 424843 := by
  have hlt : (424840 : Nat) < 424843 := by decide
  have hcop : ¬ 53 ∣ (424843 - 424840) := by decide
  have heq : (424843 : ZMod 53) ^ 13 = (424840 : ZMod 53) ^ 13 := by decide
  have hne : (424843 : ZMod 2809) ^ 13 ≠ (424840 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 424843 := by decide
  have hB : ¬ 53 ∣ 424840 := by decide
  have hexp :=
    has_exp_one_of_zmod 424840 424843 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 424840 424843 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 424840 424843 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      424840 424843 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      424840 424843 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_425179_425182 :
    HasPrimeWithExpOne (S_val 425179 425182) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 425179 425182 ∧ ¬ p ∣ (425182 - 425179) ∧
      ∃ (hNotC : ¬ p ∣ 425182) (hNotB : ¬ p ∣ 425179),
        order_of_C_B_inv_mod_p2 425182 425179 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 425179 425182 := by
  have hlt : (425179 : Nat) < 425182 := by decide
  have hcop : ¬ 53 ∣ (425182 - 425179) := by decide
  have heq : (425182 : ZMod 53) ^ 13 = (425179 : ZMod 53) ^ 13 := by decide
  have hne : (425182 : ZMod 2809) ^ 13 ≠ (425179 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 425182 := by decide
  have hB : ¬ 53 ∣ 425179 := by decide
  have hexp :=
    has_exp_one_of_zmod 425179 425182 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 425179 425182 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 425179 425182 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      425179 425182 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      425179 425182 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_425516_425519 :
    HasPrimeWithExpOne (S_val 425516 425519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 425516 425519 ∧ ¬ p ∣ (425519 - 425516) ∧
      ∃ (hNotC : ¬ p ∣ 425519) (hNotB : ¬ p ∣ 425516),
        order_of_C_B_inv_mod_p2 425519 425516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 425516 425519 := by
  have hlt : (425516 : Nat) < 425519 := by decide
  have hcop : ¬ 53 ∣ (425519 - 425516) := by decide
  have heq : (425519 : ZMod 53) ^ 13 = (425516 : ZMod 53) ^ 13 := by decide
  have hne : (425519 : ZMod 2809) ^ 13 ≠ (425516 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 425519 := by decide
  have hB : ¬ 53 ∣ 425516 := by decide
  have hexp :=
    has_exp_one_of_zmod 425516 425519 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 425516 425519 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 425516 425519 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      425516 425519 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      425516 425519 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_425848_425851 :
    HasPrimeWithExpOne (S_val 425848 425851) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 425848 425851 ∧ ¬ p ∣ (425851 - 425848) ∧
      ∃ (hNotC : ¬ p ∣ 425851) (hNotB : ¬ p ∣ 425848),
        order_of_C_B_inv_mod_p2 425851 425848 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 425848 425851 := by
  have hlt : (425848 : Nat) < 425851 := by decide
  have hcop : ¬ 53 ∣ (425851 - 425848) := by decide
  have heq : (425851 : ZMod 53) ^ 13 = (425848 : ZMod 53) ^ 13 := by decide
  have hne : (425851 : ZMod 2809) ^ 13 ≠ (425848 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 425851 := by decide
  have hB : ¬ 53 ∣ 425848 := by decide
  have hexp :=
    has_exp_one_of_zmod 425848 425851 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 425848 425851 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 425848 425851 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      425848 425851 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      425848 425851 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_426177_426180 :
    HasPrimeWithExpOne (S_val 426177 426180) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 426177 426180 ∧ ¬ p ∣ (426180 - 426177) ∧
      ∃ (hNotC : ¬ p ∣ 426180) (hNotB : ¬ p ∣ 426177),
        order_of_C_B_inv_mod_p2 426180 426177 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 426177 426180 := by
  have hlt : (426177 : Nat) < 426180 := by decide
  have hcop : ¬ 53 ∣ (426180 - 426177) := by decide
  have heq : (426180 : ZMod 53) ^ 13 = (426177 : ZMod 53) ^ 13 := by decide
  have hne : (426180 : ZMod 2809) ^ 13 ≠ (426177 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 426180 := by decide
  have hB : ¬ 53 ∣ 426177 := by decide
  have hexp :=
    has_exp_one_of_zmod 426177 426180 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 426177 426180 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 426177 426180 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      426177 426180 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      426177 426180 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_426531_426534 :
    HasPrimeWithExpOne (S_val 426531 426534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 426531 426534 ∧ ¬ p ∣ (426534 - 426531) ∧
      ∃ (hNotC : ¬ p ∣ 426534) (hNotB : ¬ p ∣ 426531),
        order_of_C_B_inv_mod_p2 426534 426531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 426531 426534 := by
  have hlt : (426531 : Nat) < 426534 := by decide
  have hcop : ¬ 53 ∣ (426534 - 426531) := by decide
  have heq : (426534 : ZMod 53) ^ 13 = (426531 : ZMod 53) ^ 13 := by decide
  have hne : (426534 : ZMod 2809) ^ 13 ≠ (426531 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 426534 := by decide
  have hB : ¬ 53 ∣ 426531 := by decide
  have hexp :=
    has_exp_one_of_zmod 426531 426534 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 426531 426534 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 426531 426534 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      426531 426534 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      426531 426534 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_426866_426869 :
    HasPrimeWithExpOne (S_val 426866 426869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 426866 426869 ∧ ¬ p ∣ (426869 - 426866) ∧
      ∃ (hNotC : ¬ p ∣ 426869) (hNotB : ¬ p ∣ 426866),
        order_of_C_B_inv_mod_p2 426869 426866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 426866 426869 := by
  have hlt : (426866 : Nat) < 426869 := by decide
  have hcop : ¬ 53 ∣ (426869 - 426866) := by decide
  have heq : (426869 : ZMod 53) ^ 13 = (426866 : ZMod 53) ^ 13 := by decide
  have hne : (426869 : ZMod 2809) ^ 13 ≠ (426866 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 426869 := by decide
  have hB : ¬ 53 ∣ 426866 := by decide
  have hexp :=
    has_exp_one_of_zmod 426866 426869 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 426866 426869 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 426866 426869 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      426866 426869 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      426866 426869 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_427198_427201 :
    HasPrimeWithExpOne (S_val 427198 427201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 427198 427201 ∧ ¬ p ∣ (427201 - 427198) ∧
      ∃ (hNotC : ¬ p ∣ 427201) (hNotB : ¬ p ∣ 427198),
        order_of_C_B_inv_mod_p2 427201 427198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 427198 427201 := by
  have hlt : (427198 : Nat) < 427201 := by decide
  have hcop : ¬ 53 ∣ (427201 - 427198) := by decide
  have heq : (427201 : ZMod 53) ^ 13 = (427198 : ZMod 53) ^ 13 := by decide
  have hne : (427201 : ZMod 2809) ^ 13 ≠ (427198 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 427201 := by decide
  have hB : ¬ 53 ∣ 427198 := by decide
  have hexp :=
    has_exp_one_of_zmod 427198 427201 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 427198 427201 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 427198 427201 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      427198 427201 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      427198 427201 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_427530_427533 :
    HasPrimeWithExpOne (S_val 427530 427533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 427530 427533 ∧ ¬ p ∣ (427533 - 427530) ∧
      ∃ (hNotC : ¬ p ∣ 427533) (hNotB : ¬ p ∣ 427530),
        order_of_C_B_inv_mod_p2 427533 427530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 427530 427533 := by
  have hlt : (427530 : Nat) < 427533 := by decide
  have hcop : ¬ 53 ∣ (427533 - 427530) := by decide
  have heq : (427533 : ZMod 53) ^ 13 = (427530 : ZMod 53) ^ 13 := by decide
  have hne : (427533 : ZMod 2809) ^ 13 ≠ (427530 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 427533 := by decide
  have hB : ¬ 53 ∣ 427530 := by decide
  have hexp :=
    has_exp_one_of_zmod 427530 427533 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 427530 427533 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 427530 427533 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      427530 427533 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      427530 427533 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_427877_427880 :
    HasPrimeWithExpOne (S_val 427877 427880) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 427877 427880 ∧ ¬ p ∣ (427880 - 427877) ∧
      ∃ (hNotC : ¬ p ∣ 427880) (hNotB : ¬ p ∣ 427877),
        order_of_C_B_inv_mod_p2 427880 427877 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 427877 427880 := by
  have hlt : (427877 : Nat) < 427880 := by decide
  have hcop : ¬ 79 ∣ (427880 - 427877) := by decide
  have heq : (427880 : ZMod 79) ^ 13 = (427877 : ZMod 79) ^ 13 := by decide
  have hne : (427880 : ZMod 6241) ^ 13 ≠ (427877 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 427880 := by decide
  have hB : ¬ 79 ∣ 427877 := by decide
  have hexp :=
    has_exp_one_of_zmod 427877 427880 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 427877 427880 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 427877 427880 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      427877 427880 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      427877 427880 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_428200_428203 :
    HasPrimeWithExpOne (S_val 428200 428203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 428200 428203 ∧ ¬ p ∣ (428203 - 428200) ∧
      ∃ (hNotC : ¬ p ∣ 428203) (hNotB : ¬ p ∣ 428200),
        order_of_C_B_inv_mod_p2 428203 428200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 428200 428203 := by
  have hlt : (428200 : Nat) < 428203 := by decide
  have hcop : ¬ 53 ∣ (428203 - 428200) := by decide
  have heq : (428203 : ZMod 53) ^ 13 = (428200 : ZMod 53) ^ 13 := by decide
  have hne : (428203 : ZMod 2809) ^ 13 ≠ (428200 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 428203 := by decide
  have hB : ¬ 53 ∣ 428200 := by decide
  have hexp :=
    has_exp_one_of_zmod 428200 428203 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 428200 428203 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 428200 428203 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      428200 428203 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      428200 428203 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_428554_428557 :
    HasPrimeWithExpOne (S_val 428554 428557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 428554 428557 ∧ ¬ p ∣ (428557 - 428554) ∧
      ∃ (hNotC : ¬ p ∣ 428557) (hNotB : ¬ p ∣ 428554),
        order_of_C_B_inv_mod_p2 428557 428554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 428554 428557 := by
  have hlt : (428554 : Nat) < 428557 := by decide
  have hcop : ¬ 79 ∣ (428557 - 428554) := by decide
  have heq : (428557 : ZMod 79) ^ 13 = (428554 : ZMod 79) ^ 13 := by decide
  have hne : (428557 : ZMod 6241) ^ 13 ≠ (428554 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 428557 := by decide
  have hB : ¬ 79 ∣ 428554 := by decide
  have hexp :=
    has_exp_one_of_zmod 428554 428557 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 428554 428557 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 428554 428557 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      428554 428557 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      428554 428557 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_428886_428889 :
    HasPrimeWithExpOne (S_val 428886 428889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 428886 428889 ∧ ¬ p ∣ (428889 - 428886) ∧
      ∃ (hNotC : ¬ p ∣ 428889) (hNotB : ¬ p ∣ 428886),
        order_of_C_B_inv_mod_p2 428889 428886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 428886 428889 := by
  have hlt : (428886 : Nat) < 428889 := by decide
  have hcop : ¬ 53 ∣ (428889 - 428886) := by decide
  have heq : (428889 : ZMod 53) ^ 13 = (428886 : ZMod 53) ^ 13 := by decide
  have hne : (428889 : ZMod 2809) ^ 13 ≠ (428886 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 428889 := by decide
  have hB : ¬ 53 ∣ 428886 := by decide
  have hexp :=
    has_exp_one_of_zmod 428886 428889 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 428886 428889 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 428886 428889 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      428886 428889 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      428886 428889 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_429214_429217 :
    HasPrimeWithExpOne (S_val 429214 429217) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 429214 429217 ∧ ¬ p ∣ (429217 - 429214) ∧
      ∃ (hNotC : ¬ p ∣ 429217) (hNotB : ¬ p ∣ 429214),
        order_of_C_B_inv_mod_p2 429217 429214 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 429214 429217 := by
  have hlt : (429214 : Nat) < 429217 := by decide
  have hcop : ¬ 157 ∣ (429217 - 429214) := by decide
  have heq : (429217 : ZMod 157) ^ 13 = (429214 : ZMod 157) ^ 13 := by decide
  have hne : (429217 : ZMod 24649) ^ 13 ≠ (429214 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 429217 := by decide
  have hB : ¬ 157 ∣ 429214 := by decide
  have hexp :=
    has_exp_one_of_zmod 429214 429217 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 429214 429217 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 429214 429217 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      429214 429217 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      429214 429217 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_429544_429547 :
    HasPrimeWithExpOne (S_val 429544 429547) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 429544 429547 ∧ ¬ p ∣ (429547 - 429544) ∧
      ∃ (hNotC : ¬ p ∣ 429547) (hNotB : ¬ p ∣ 429544),
        order_of_C_B_inv_mod_p2 429547 429544 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 429544 429547 := by
  have hlt : (429544 : Nat) < 429547 := by decide
  have hcop : ¬ 53 ∣ (429547 - 429544) := by decide
  have heq : (429547 : ZMod 53) ^ 13 = (429544 : ZMod 53) ^ 13 := by decide
  have hne : (429547 : ZMod 2809) ^ 13 ≠ (429544 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 429547 := by decide
  have hB : ¬ 53 ∣ 429544 := by decide
  have hexp :=
    has_exp_one_of_zmod 429544 429547 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 429544 429547 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 429544 429547 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      429544 429547 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      429544 429547 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_429871_429874 :
    HasPrimeWithExpOne (S_val 429871 429874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 429871 429874 ∧ ¬ p ∣ (429874 - 429871) ∧
      ∃ (hNotC : ¬ p ∣ 429874) (hNotB : ¬ p ∣ 429871),
        order_of_C_B_inv_mod_p2 429874 429871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 429871 429874 := by
  have hlt : (429871 : Nat) < 429874 := by decide
  have hcop : ¬ 131 ∣ (429874 - 429871) := by decide
  have heq : (429874 : ZMod 131) ^ 13 = (429871 : ZMod 131) ^ 13 := by decide
  have hne : (429874 : ZMod 17161) ^ 13 ≠ (429871 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 429874 := by decide
  have hB : ¬ 131 ∣ 429871 := by decide
  have hexp :=
    has_exp_one_of_zmod 429871 429874 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 429871 429874 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 429871 429874 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      429871 429874 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      429871 429874 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_430200_430203 :
    HasPrimeWithExpOne (S_val 430200 430203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430200 430203 ∧ ¬ p ∣ (430203 - 430200) ∧
      ∃ (hNotC : ¬ p ∣ 430203) (hNotB : ¬ p ∣ 430200),
        order_of_C_B_inv_mod_p2 430203 430200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 430200 430203 := by
  have hlt : (430200 : Nat) < 430203 := by decide
  have hcop : ¬ 313 ∣ (430203 - 430200) := by decide
  have heq : (430203 : ZMod 313) ^ 13 = (430200 : ZMod 313) ^ 13 := by decide
  have hne : (430203 : ZMod 97969) ^ 13 ≠ (430200 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 430203 := by decide
  have hB : ¬ 313 ∣ 430200 := by decide
  have hexp :=
    has_exp_one_of_zmod 430200 430203 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 430200 430203 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 430200 430203 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      430200 430203 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      430200 430203 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_430551_430554 :
    HasPrimeWithExpOne (S_val 430551 430554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430551 430554 ∧ ¬ p ∣ (430554 - 430551) ∧
      ∃ (hNotC : ¬ p ∣ 430554) (hNotB : ¬ p ∣ 430551),
        order_of_C_B_inv_mod_p2 430554 430551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 430551 430554 := by
  have hlt : (430551 : Nat) < 430554 := by decide
  have hcop : ¬ 53 ∣ (430554 - 430551) := by decide
  have heq : (430554 : ZMod 53) ^ 13 = (430551 : ZMod 53) ^ 13 := by decide
  have hne : (430554 : ZMod 2809) ^ 13 ≠ (430551 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 430554 := by decide
  have hB : ¬ 53 ∣ 430551 := by decide
  have hexp :=
    has_exp_one_of_zmod 430551 430554 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 430551 430554 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 430551 430554 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      430551 430554 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      430551 430554 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_430897_430900 :
    HasPrimeWithExpOne (S_val 430897 430900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430897 430900 ∧ ¬ p ∣ (430900 - 430897) ∧
      ∃ (hNotC : ¬ p ∣ 430900) (hNotB : ¬ p ∣ 430897),
        order_of_C_B_inv_mod_p2 430900 430897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 430897 430900 := by
  have hlt : (430897 : Nat) < 430900 := by decide
  have hcop : ¬ 131 ∣ (430900 - 430897) := by decide
  have heq : (430900 : ZMod 131) ^ 13 = (430897 : ZMod 131) ^ 13 := by decide
  have hne : (430900 : ZMod 17161) ^ 13 ≠ (430897 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 430900 := by decide
  have hB : ¬ 131 ∣ 430897 := by decide
  have hexp :=
    has_exp_one_of_zmod 430897 430900 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 430897 430900 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 430897 430900 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      430897 430900 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      430897 430900 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_431224_431227 :
    HasPrimeWithExpOne (S_val 431224 431227) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 431224 431227 ∧ ¬ p ∣ (431227 - 431224) ∧
      ∃ (hNotC : ¬ p ∣ 431227) (hNotB : ¬ p ∣ 431224),
        order_of_C_B_inv_mod_p2 431227 431224 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 431224 431227 := by
  have hlt : (431224 : Nat) < 431227 := by decide
  have hcop : ¬ 79 ∣ (431227 - 431224) := by decide
  have heq : (431227 : ZMod 79) ^ 13 = (431224 : ZMod 79) ^ 13 := by decide
  have hne : (431227 : ZMod 6241) ^ 13 ≠ (431224 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 431227 := by decide
  have hB : ¬ 79 ∣ 431224 := by decide
  have hexp :=
    has_exp_one_of_zmod 431224 431227 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 431224 431227 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 431224 431227 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      431224 431227 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      431224 431227 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_431568_431571 :
    HasPrimeWithExpOne (S_val 431568 431571) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 431568 431571 ∧ ¬ p ∣ (431571 - 431568) ∧
      ∃ (hNotC : ¬ p ∣ 431571) (hNotB : ¬ p ∣ 431568),
        order_of_C_B_inv_mod_p2 431571 431568 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 431568 431571 := by
  have hlt : (431568 : Nat) < 431571 := by decide
  have hcop : ¬ 131 ∣ (431571 - 431568) := by decide
  have heq : (431571 : ZMod 131) ^ 13 = (431568 : ZMod 131) ^ 13 := by decide
  have hne : (431571 : ZMod 17161) ^ 13 ≠ (431568 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 431571 := by decide
  have hB : ¬ 131 ∣ 431568 := by decide
  have hexp :=
    has_exp_one_of_zmod 431568 431571 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 431568 431571 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 431568 431571 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      431568 431571 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      431568 431571 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_431884_431887 :
    HasPrimeWithExpOne (S_val 431884 431887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 431884 431887 ∧ ¬ p ∣ (431887 - 431884) ∧
      ∃ (hNotC : ¬ p ∣ 431887) (hNotB : ¬ p ∣ 431884),
        order_of_C_B_inv_mod_p2 431887 431884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 431884 431887 := by
  have hlt : (431884 : Nat) < 431887 := by decide
  have hcop : ¬ 53 ∣ (431887 - 431884) := by decide
  have heq : (431887 : ZMod 53) ^ 13 = (431884 : ZMod 53) ^ 13 := by decide
  have hne : (431887 : ZMod 2809) ^ 13 ≠ (431884 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 431887 := by decide
  have hB : ¬ 53 ∣ 431884 := by decide
  have hexp :=
    has_exp_one_of_zmod 431884 431887 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 431884 431887 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 431884 431887 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      431884 431887 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      431884 431887 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_432202_432205 :
    HasPrimeWithExpOne (S_val 432202 432205) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 432202 432205 ∧ ¬ p ∣ (432205 - 432202) ∧
      ∃ (hNotC : ¬ p ∣ 432205) (hNotB : ¬ p ∣ 432202),
        order_of_C_B_inv_mod_p2 432205 432202 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 432202 432205 := by
  have hlt : (432202 : Nat) < 432205 := by decide
  have hcop : ¬ 53 ∣ (432205 - 432202) := by decide
  have heq : (432205 : ZMod 53) ^ 13 = (432202 : ZMod 53) ^ 13 := by decide
  have hne : (432205 : ZMod 2809) ^ 13 ≠ (432202 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 432205 := by decide
  have hB : ¬ 53 ∣ 432202 := by decide
  have hexp :=
    has_exp_one_of_zmod 432202 432205 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 432202 432205 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 432202 432205 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      432202 432205 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      432202 432205 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_432549_432552 :
    HasPrimeWithExpOne (S_val 432549 432552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 432549 432552 ∧ ¬ p ∣ (432552 - 432549) ∧
      ∃ (hNotC : ¬ p ∣ 432552) (hNotB : ¬ p ∣ 432549),
        order_of_C_B_inv_mod_p2 432552 432549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 432549 432552 := by
  have hlt : (432549 : Nat) < 432552 := by decide
  have hcop : ¬ 313 ∣ (432552 - 432549) := by decide
  have heq : (432552 : ZMod 313) ^ 13 = (432549 : ZMod 313) ^ 13 := by decide
  have hne : (432552 : ZMod 97969) ^ 13 ≠ (432549 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 432552 := by decide
  have hB : ¬ 313 ∣ 432549 := by decide
  have hexp :=
    has_exp_one_of_zmod 432549 432552 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 432549 432552 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 432549 432552 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      432549 432552 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      432549 432552 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_432878_432881 :
    HasPrimeWithExpOne (S_val 432878 432881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 432878 432881 ∧ ¬ p ∣ (432881 - 432878) ∧
      ∃ (hNotC : ¬ p ∣ 432881) (hNotB : ¬ p ∣ 432878),
        order_of_C_B_inv_mod_p2 432881 432878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 432878 432881 := by
  have hlt : (432878 : Nat) < 432881 := by decide
  have hcop : ¬ 131 ∣ (432881 - 432878) := by decide
  have heq : (432881 : ZMod 131) ^ 13 = (432878 : ZMod 131) ^ 13 := by decide
  have hne : (432881 : ZMod 17161) ^ 13 ≠ (432878 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 432881 := by decide
  have hB : ¬ 131 ∣ 432878 := by decide
  have hexp :=
    has_exp_one_of_zmod 432878 432881 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 432878 432881 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 432878 432881 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      432878 432881 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      432878 432881 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_433219_433222 :
    HasPrimeWithExpOne (S_val 433219 433222) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 433219 433222 ∧ ¬ p ∣ (433222 - 433219) ∧
      ∃ (hNotC : ¬ p ∣ 433222) (hNotB : ¬ p ∣ 433219),
        order_of_C_B_inv_mod_p2 433222 433219 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 433219 433222 := by
  have hlt : (433219 : Nat) < 433222 := by decide
  have hcop : ¬ 79 ∣ (433222 - 433219) := by decide
  have heq : (433222 : ZMod 79) ^ 13 = (433219 : ZMod 79) ^ 13 := by decide
  have hne : (433222 : ZMod 6241) ^ 13 ≠ (433219 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 433222 := by decide
  have hB : ¬ 79 ∣ 433219 := by decide
  have hexp :=
    has_exp_one_of_zmod 433219 433222 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 433219 433222 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 433219 433222 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      433219 433222 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      433219 433222 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_433544_433547 :
    HasPrimeWithExpOne (S_val 433544 433547) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 433544 433547 ∧ ¬ p ∣ (433547 - 433544) ∧
      ∃ (hNotC : ¬ p ∣ 433547) (hNotB : ¬ p ∣ 433544),
        order_of_C_B_inv_mod_p2 433547 433544 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 433544 433547 := by
  have hlt : (433544 : Nat) < 433547 := by decide
  have hcop : ¬ 53 ∣ (433547 - 433544) := by decide
  have heq : (433547 : ZMod 53) ^ 13 = (433544 : ZMod 53) ^ 13 := by decide
  have hne : (433547 : ZMod 2809) ^ 13 ≠ (433544 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 433547 := by decide
  have hB : ¬ 53 ∣ 433544 := by decide
  have hexp :=
    has_exp_one_of_zmod 433544 433547 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 433544 433547 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 433544 433547 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      433544 433547 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      433544 433547 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_433860_433863 :
    HasPrimeWithExpOne (S_val 433860 433863) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 433860 433863 ∧ ¬ p ∣ (433863 - 433860) ∧
      ∃ (hNotC : ¬ p ∣ 433863) (hNotB : ¬ p ∣ 433860),
        order_of_C_B_inv_mod_p2 433863 433860 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 433860 433863 := by
  have hlt : (433860 : Nat) < 433863 := by decide
  have hcop : ¬ 131 ∣ (433863 - 433860) := by decide
  have heq : (433863 : ZMod 131) ^ 13 = (433860 : ZMod 131) ^ 13 := by decide
  have hne : (433863 : ZMod 17161) ^ 13 ≠ (433860 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 433863 := by decide
  have hB : ¬ 131 ∣ 433860 := by decide
  have hexp :=
    has_exp_one_of_zmod 433860 433863 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 433860 433863 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 433860 433863 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      433860 433863 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      433860 433863 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_434207_434210 :
    HasPrimeWithExpOne (S_val 434207 434210) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 434207 434210 ∧ ¬ p ∣ (434210 - 434207) ∧
      ∃ (hNotC : ¬ p ∣ 434210) (hNotB : ¬ p ∣ 434207),
        order_of_C_B_inv_mod_p2 434210 434207 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 434207 434210 := by
  have hlt : (434207 : Nat) < 434210 := by decide
  have hcop : ¬ 79 ∣ (434210 - 434207) := by decide
  have heq : (434210 : ZMod 79) ^ 13 = (434207 : ZMod 79) ^ 13 := by decide
  have hne : (434210 : ZMod 6241) ^ 13 ≠ (434207 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 434210 := by decide
  have hB : ¬ 79 ∣ 434207 := by decide
  have hexp :=
    has_exp_one_of_zmod 434207 434210 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 434207 434210 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 434207 434210 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      434207 434210 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      434207 434210 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_434552_434555 :
    HasPrimeWithExpOne (S_val 434552 434555) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 434552 434555 ∧ ¬ p ∣ (434555 - 434552) ∧
      ∃ (hNotC : ¬ p ∣ 434555) (hNotB : ¬ p ∣ 434552),
        order_of_C_B_inv_mod_p2 434555 434552 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 434552 434555 := by
  have hlt : (434552 : Nat) < 434555 := by decide
  have hcop : ¬ 53 ∣ (434555 - 434552) := by decide
  have heq : (434555 : ZMod 53) ^ 13 = (434552 : ZMod 53) ^ 13 := by decide
  have hne : (434555 : ZMod 2809) ^ 13 ≠ (434552 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 434555 := by decide
  have hB : ¬ 53 ∣ 434552 := by decide
  have hexp :=
    has_exp_one_of_zmod 434552 434555 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 434552 434555 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 434552 434555 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      434552 434555 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      434552 434555 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_434897_434900 :
    HasPrimeWithExpOne (S_val 434897 434900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 434897 434900 ∧ ¬ p ∣ (434900 - 434897) ∧
      ∃ (hNotC : ¬ p ∣ 434900) (hNotB : ¬ p ∣ 434897),
        order_of_C_B_inv_mod_p2 434900 434897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 434897 434900 := by
  have hlt : (434897 : Nat) < 434900 := by decide
  have hcop : ¬ 53 ∣ (434900 - 434897) := by decide
  have heq : (434900 : ZMod 53) ^ 13 = (434897 : ZMod 53) ^ 13 := by decide
  have hne : (434900 : ZMod 2809) ^ 13 ≠ (434897 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 434900 := by decide
  have hB : ¬ 53 ∣ 434897 := by decide
  have hexp :=
    has_exp_one_of_zmod 434897 434900 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 434897 434900 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 434897 434900 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      434897 434900 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      434897 434900 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_435242_435245 :
    HasPrimeWithExpOne (S_val 435242 435245) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 435242 435245 ∧ ¬ p ∣ (435245 - 435242) ∧
      ∃ (hNotC : ¬ p ∣ 435245) (hNotB : ¬ p ∣ 435242),
        order_of_C_B_inv_mod_p2 435245 435242 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 435242 435245 := by
  have hlt : (435242 : Nat) < 435245 := by decide
  have hcop : ¬ 53 ∣ (435245 - 435242) := by decide
  have heq : (435245 : ZMod 53) ^ 13 = (435242 : ZMod 53) ^ 13 := by decide
  have hne : (435245 : ZMod 2809) ^ 13 ≠ (435242 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 435245 := by decide
  have hB : ¬ 53 ∣ 435242 := by decide
  have hexp :=
    has_exp_one_of_zmod 435242 435245 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 435242 435245 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 435242 435245 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      435242 435245 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      435242 435245 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_435585_435588 :
    HasPrimeWithExpOne (S_val 435585 435588) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 435585 435588 ∧ ¬ p ∣ (435588 - 435585) ∧
      ∃ (hNotC : ¬ p ∣ 435588) (hNotB : ¬ p ∣ 435585),
        order_of_C_B_inv_mod_p2 435588 435585 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 435585 435588 := by
  have hlt : (435585 : Nat) < 435588 := by decide
  have hcop : ¬ 79 ∣ (435588 - 435585) := by decide
  have heq : (435588 : ZMod 79) ^ 13 = (435585 : ZMod 79) ^ 13 := by decide
  have hne : (435588 : ZMod 6241) ^ 13 ≠ (435585 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 435588 := by decide
  have hB : ¬ 79 ∣ 435585 := by decide
  have hexp :=
    has_exp_one_of_zmod 435585 435588 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 435585 435588 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 435585 435588 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      435585 435588 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      435585 435588 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_435912_435915 :
    HasPrimeWithExpOne (S_val 435912 435915) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 435912 435915 ∧ ¬ p ∣ (435915 - 435912) ∧
      ∃ (hNotC : ¬ p ∣ 435915) (hNotB : ¬ p ∣ 435912),
        order_of_C_B_inv_mod_p2 435915 435912 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 435912 435915 := by
  have hlt : (435912 : Nat) < 435915 := by decide
  have hcop : ¬ 53 ∣ (435915 - 435912) := by decide
  have heq : (435915 : ZMod 53) ^ 13 = (435912 : ZMod 53) ^ 13 := by decide
  have hne : (435915 : ZMod 2809) ^ 13 ≠ (435912 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 435915 := by decide
  have hB : ¬ 53 ∣ 435912 := by decide
  have hexp :=
    has_exp_one_of_zmod 435912 435915 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 435912 435915 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 435912 435915 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      435912 435915 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      435912 435915 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_436250_436253 :
    HasPrimeWithExpOne (S_val 436250 436253) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 436250 436253 ∧ ¬ p ∣ (436253 - 436250) ∧
      ∃ (hNotC : ¬ p ∣ 436253) (hNotB : ¬ p ∣ 436250),
        order_of_C_B_inv_mod_p2 436253 436250 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 436250 436253 := by
  have hlt : (436250 : Nat) < 436253 := by decide
  have hcop : ¬ 79 ∣ (436253 - 436250) := by decide
  have heq : (436253 : ZMod 79) ^ 13 = (436250 : ZMod 79) ^ 13 := by decide
  have hne : (436253 : ZMod 6241) ^ 13 ≠ (436250 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 436253 := by decide
  have hB : ¬ 79 ∣ 436250 := by decide
  have hexp :=
    has_exp_one_of_zmod 436250 436253 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 436250 436253 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 436250 436253 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      436250 436253 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      436250 436253 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_436568_436571 :
    HasPrimeWithExpOne (S_val 436568 436571) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 436568 436571 ∧ ¬ p ∣ (436571 - 436568) ∧
      ∃ (hNotC : ¬ p ∣ 436571) (hNotB : ¬ p ∣ 436568),
        order_of_C_B_inv_mod_p2 436571 436568 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 436568 436571 := by
  have hlt : (436568 : Nat) < 436571 := by decide
  have hcop : ¬ 79 ∣ (436571 - 436568) := by decide
  have heq : (436571 : ZMod 79) ^ 13 = (436568 : ZMod 79) ^ 13 := by decide
  have hne : (436571 : ZMod 6241) ^ 13 ≠ (436568 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 436571 := by decide
  have hB : ¬ 79 ∣ 436568 := by decide
  have hexp :=
    has_exp_one_of_zmod 436568 436571 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 436568 436571 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 436568 436571 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      436568 436571 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      436568 436571 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_436919_436922 :
    HasPrimeWithExpOne (S_val 436919 436922) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 436919 436922 ∧ ¬ p ∣ (436922 - 436919) ∧
      ∃ (hNotC : ¬ p ∣ 436922) (hNotB : ¬ p ∣ 436919),
        order_of_C_B_inv_mod_p2 436922 436919 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 436919 436922 := by
  have hlt : (436919 : Nat) < 436922 := by decide
  have hcop : ¬ 53 ∣ (436922 - 436919) := by decide
  have heq : (436922 : ZMod 53) ^ 13 = (436919 : ZMod 53) ^ 13 := by decide
  have hne : (436922 : ZMod 2809) ^ 13 ≠ (436919 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 436922 := by decide
  have hB : ¬ 53 ∣ 436919 := by decide
  have hexp :=
    has_exp_one_of_zmod 436919 436922 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 436919 436922 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 436919 436922 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      436919 436922 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      436919 436922 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_437255_437258 :
    HasPrimeWithExpOne (S_val 437255 437258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 437255 437258 ∧ ¬ p ∣ (437258 - 437255) ∧
      ∃ (hNotC : ¬ p ∣ 437258) (hNotB : ¬ p ∣ 437255),
        order_of_C_B_inv_mod_p2 437258 437255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 437255 437258 := by
  have hlt : (437255 : Nat) < 437258 := by decide
  have hcop : ¬ 53 ∣ (437258 - 437255) := by decide
  have heq : (437258 : ZMod 53) ^ 13 = (437255 : ZMod 53) ^ 13 := by decide
  have hne : (437258 : ZMod 2809) ^ 13 ≠ (437255 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 437258 := by decide
  have hB : ¬ 53 ∣ 437255 := by decide
  have hexp :=
    has_exp_one_of_zmod 437255 437258 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 437255 437258 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 437255 437258 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      437255 437258 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      437255 437258 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_437594_437597 :
    HasPrimeWithExpOne (S_val 437594 437597) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 437594 437597 ∧ ¬ p ∣ (437597 - 437594) ∧
      ∃ (hNotC : ¬ p ∣ 437597) (hNotB : ¬ p ∣ 437594),
        order_of_C_B_inv_mod_p2 437597 437594 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 437594 437597 := by
  have hlt : (437594 : Nat) < 437597 := by decide
  have hcop : ¬ 79 ∣ (437597 - 437594) := by decide
  have heq : (437597 : ZMod 79) ^ 13 = (437594 : ZMod 79) ^ 13 := by decide
  have hne : (437597 : ZMod 6241) ^ 13 ≠ (437594 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 437597 := by decide
  have hB : ¬ 79 ∣ 437594 := by decide
  have hexp :=
    has_exp_one_of_zmod 437594 437597 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 437594 437597 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 437594 437597 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      437594 437597 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      437594 437597 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_437923_437926 :
    HasPrimeWithExpOne (S_val 437923 437926) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 437923 437926 ∧ ¬ p ∣ (437926 - 437923) ∧
      ∃ (hNotC : ¬ p ∣ 437926) (hNotB : ¬ p ∣ 437923),
        order_of_C_B_inv_mod_p2 437926 437923 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 437923 437926 := by
  have hlt : (437923 : Nat) < 437926 := by decide
  have hcop : ¬ 53 ∣ (437926 - 437923) := by decide
  have heq : (437926 : ZMod 53) ^ 13 = (437923 : ZMod 53) ^ 13 := by decide
  have hne : (437926 : ZMod 2809) ^ 13 ≠ (437923 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 437926 := by decide
  have hB : ¬ 53 ∣ 437923 := by decide
  have hexp :=
    has_exp_one_of_zmod 437923 437926 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 437923 437926 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 437923 437926 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      437923 437926 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      437923 437926 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_438257_438260 :
    HasPrimeWithExpOne (S_val 438257 438260) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 438257 438260 ∧ ¬ p ∣ (438260 - 438257) ∧
      ∃ (hNotC : ¬ p ∣ 438260) (hNotB : ¬ p ∣ 438257),
        order_of_C_B_inv_mod_p2 438260 438257 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 438257 438260 := by
  have hlt : (438257 : Nat) < 438260 := by decide
  have hcop : ¬ 157 ∣ (438260 - 438257) := by decide
  have heq : (438260 : ZMod 157) ^ 13 = (438257 : ZMod 157) ^ 13 := by decide
  have hne : (438260 : ZMod 24649) ^ 13 ≠ (438257 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 438260 := by decide
  have hB : ¬ 157 ∣ 438257 := by decide
  have hexp :=
    has_exp_one_of_zmod 438257 438260 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 438257 438260 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 438257 438260 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      438257 438260 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      438257 438260 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_438580_438583 :
    HasPrimeWithExpOne (S_val 438580 438583) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 438580 438583 ∧ ¬ p ∣ (438583 - 438580) ∧
      ∃ (hNotC : ¬ p ∣ 438583) (hNotB : ¬ p ∣ 438580),
        order_of_C_B_inv_mod_p2 438583 438580 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 438580 438583 := by
  have hlt : (438580 : Nat) < 438583 := by decide
  have hcop : ¬ 53 ∣ (438583 - 438580) := by decide
  have heq : (438583 : ZMod 53) ^ 13 = (438580 : ZMod 53) ^ 13 := by decide
  have hne : (438583 : ZMod 2809) ^ 13 ≠ (438580 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 438583 := by decide
  have hB : ¬ 53 ∣ 438580 := by decide
  have hexp :=
    has_exp_one_of_zmod 438580 438583 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 438580 438583 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 438580 438583 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      438580 438583 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      438580 438583 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_438939_438942 :
    HasPrimeWithExpOne (S_val 438939 438942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 438939 438942 ∧ ¬ p ∣ (438942 - 438939) ∧
      ∃ (hNotC : ¬ p ∣ 438942) (hNotB : ¬ p ∣ 438939),
        order_of_C_B_inv_mod_p2 438942 438939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 438939 438942 := by
  have hlt : (438939 : Nat) < 438942 := by decide
  have hcop : ¬ 53 ∣ (438942 - 438939) := by decide
  have heq : (438942 : ZMod 53) ^ 13 = (438939 : ZMod 53) ^ 13 := by decide
  have hne : (438942 : ZMod 2809) ^ 13 ≠ (438939 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 438942 := by decide
  have hB : ¬ 53 ∣ 438939 := by decide
  have hexp :=
    has_exp_one_of_zmod 438939 438942 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 438939 438942 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 438939 438942 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      438939 438942 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      438939 438942 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_439270_439273 :
    HasPrimeWithExpOne (S_val 439270 439273) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 439270 439273 ∧ ¬ p ∣ (439273 - 439270) ∧
      ∃ (hNotC : ¬ p ∣ 439273) (hNotB : ¬ p ∣ 439270),
        order_of_C_B_inv_mod_p2 439273 439270 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 439270 439273 := by
  have hlt : (439270 : Nat) < 439273 := by decide
  have hcop : ¬ 53 ∣ (439273 - 439270) := by decide
  have heq : (439273 : ZMod 53) ^ 13 = (439270 : ZMod 53) ^ 13 := by decide
  have hne : (439273 : ZMod 2809) ^ 13 ≠ (439270 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 439273 := by decide
  have hB : ¬ 53 ∣ 439270 := by decide
  have hexp :=
    has_exp_one_of_zmod 439270 439273 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 439270 439273 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 439270 439273 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      439270 439273 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      439270 439273 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_439609_439612 :
    HasPrimeWithExpOne (S_val 439609 439612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 439609 439612 ∧ ¬ p ∣ (439612 - 439609) ∧
      ∃ (hNotC : ¬ p ∣ 439612) (hNotB : ¬ p ∣ 439609),
        order_of_C_B_inv_mod_p2 439612 439609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 439609 439612 := by
  have hlt : (439609 : Nat) < 439612 := by decide
  have hcop : ¬ 79 ∣ (439612 - 439609) := by decide
  have heq : (439612 : ZMod 79) ^ 13 = (439609 : ZMod 79) ^ 13 := by decide
  have hne : (439612 : ZMod 6241) ^ 13 ≠ (439609 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 439612 := by decide
  have hB : ¬ 79 ∣ 439609 := by decide
  have hexp :=
    has_exp_one_of_zmod 439609 439612 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 439609 439612 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 439609 439612 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      439609 439612 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      439609 439612 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_439953_439956 :
    HasPrimeWithExpOne (S_val 439953 439956) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 439953 439956 ∧ ¬ p ∣ (439956 - 439953) ∧
      ∃ (hNotC : ¬ p ∣ 439956) (hNotB : ¬ p ∣ 439953),
        order_of_C_B_inv_mod_p2 439956 439953 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 439953 439956 := by
  have hlt : (439953 : Nat) < 439956 := by decide
  have hcop : ¬ 131 ∣ (439956 - 439953) := by decide
  have heq : (439956 : ZMod 131) ^ 13 = (439953 : ZMod 131) ^ 13 := by decide
  have hne : (439956 : ZMod 17161) ^ 13 ≠ (439953 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 439956 := by decide
  have hB : ¬ 131 ∣ 439953 := by decide
  have hexp :=
    has_exp_one_of_zmod 439953 439956 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 439953 439956 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 439953 439956 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      439953 439956 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      439953 439956 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_440289_440292 :
    HasPrimeWithExpOne (S_val 440289 440292) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 440289 440292 ∧ ¬ p ∣ (440292 - 440289) ∧
      ∃ (hNotC : ¬ p ∣ 440292) (hNotB : ¬ p ∣ 440289),
        order_of_C_B_inv_mod_p2 440292 440289 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 440289 440292 := by
  have hlt : (440289 : Nat) < 440292 := by decide
  have hcop : ¬ 53 ∣ (440292 - 440289) := by decide
  have heq : (440292 : ZMod 53) ^ 13 = (440289 : ZMod 53) ^ 13 := by decide
  have hne : (440292 : ZMod 2809) ^ 13 ≠ (440289 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 440292 := by decide
  have hB : ¬ 53 ∣ 440289 := by decide
  have hexp :=
    has_exp_one_of_zmod 440289 440292 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 440289 440292 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 440289 440292 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      440289 440292 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      440289 440292 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_440627_440630 :
    HasPrimeWithExpOne (S_val 440627 440630) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 440627 440630 ∧ ¬ p ∣ (440630 - 440627) ∧
      ∃ (hNotC : ¬ p ∣ 440630) (hNotB : ¬ p ∣ 440627),
        order_of_C_B_inv_mod_p2 440630 440627 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 440627 440630 := by
  have hlt : (440627 : Nat) < 440630 := by decide
  have hcop : ¬ 131 ∣ (440630 - 440627) := by decide
  have heq : (440630 : ZMod 131) ^ 13 = (440627 : ZMod 131) ^ 13 := by decide
  have hne : (440630 : ZMod 17161) ^ 13 ≠ (440627 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 440630 := by decide
  have hB : ¬ 131 ∣ 440627 := by decide
  have hexp :=
    has_exp_one_of_zmod 440627 440630 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 440627 440630 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 440627 440630 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      440627 440630 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      440627 440630 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_440965_440968 :
    HasPrimeWithExpOne (S_val 440965 440968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 440965 440968 ∧ ¬ p ∣ (440968 - 440965) ∧
      ∃ (hNotC : ¬ p ∣ 440968) (hNotB : ¬ p ∣ 440965),
        order_of_C_B_inv_mod_p2 440968 440965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 440965 440968 := by
  have hlt : (440965 : Nat) < 440968 := by decide
  have hcop : ¬ 53 ∣ (440968 - 440965) := by decide
  have heq : (440968 : ZMod 53) ^ 13 = (440965 : ZMod 53) ^ 13 := by decide
  have hne : (440968 : ZMod 2809) ^ 13 ≠ (440965 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 440968 := by decide
  have hB : ¬ 53 ∣ 440965 := by decide
  have hexp :=
    has_exp_one_of_zmod 440965 440968 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 440965 440968 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 440965 440968 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      440965 440968 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      440965 440968 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_441303_441306 :
    HasPrimeWithExpOne (S_val 441303 441306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 441303 441306 ∧ ¬ p ∣ (441306 - 441303) ∧
      ∃ (hNotC : ¬ p ∣ 441306) (hNotB : ¬ p ∣ 441303),
        order_of_C_B_inv_mod_p2 441306 441303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 441303 441306 := by
  have hlt : (441303 : Nat) < 441306 := by decide
  have hcop : ¬ 157 ∣ (441306 - 441303) := by decide
  have heq : (441306 : ZMod 157) ^ 13 = (441303 : ZMod 157) ^ 13 := by decide
  have hne : (441306 : ZMod 24649) ^ 13 ≠ (441303 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 441306 := by decide
  have hB : ¬ 157 ∣ 441303 := by decide
  have hexp :=
    has_exp_one_of_zmod 441303 441306 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 441303 441306 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 441303 441306 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      441303 441306 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      441303 441306 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_441641_441644 :
    HasPrimeWithExpOne (S_val 441641 441644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 441641 441644 ∧ ¬ p ∣ (441644 - 441641) ∧
      ∃ (hNotC : ¬ p ∣ 441644) (hNotB : ¬ p ∣ 441641),
        order_of_C_B_inv_mod_p2 441644 441641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 441641 441644 := by
  have hlt : (441641 : Nat) < 441644 := by decide
  have hcop : ¬ 53 ∣ (441644 - 441641) := by decide
  have heq : (441644 : ZMod 53) ^ 13 = (441641 : ZMod 53) ^ 13 := by decide
  have hne : (441644 : ZMod 2809) ^ 13 ≠ (441641 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 441644 := by decide
  have hB : ¬ 53 ∣ 441641 := by decide
  have hexp :=
    has_exp_one_of_zmod 441641 441644 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 441641 441644 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 441641 441644 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      441641 441644 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      441641 441644 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_441979_441982 :
    HasPrimeWithExpOne (S_val 441979 441982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 441979 441982 ∧ ¬ p ∣ (441982 - 441979) ∧
      ∃ (hNotC : ¬ p ∣ 441982) (hNotB : ¬ p ∣ 441979),
        order_of_C_B_inv_mod_p2 441982 441979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 441979 441982 := by
  have hlt : (441979 : Nat) < 441982 := by decide
  have hcop : ¬ 79 ∣ (441982 - 441979) := by decide
  have heq : (441982 : ZMod 79) ^ 13 = (441979 : ZMod 79) ^ 13 := by decide
  have hne : (441982 : ZMod 6241) ^ 13 ≠ (441979 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 441982 := by decide
  have hB : ¬ 79 ∣ 441979 := by decide
  have hexp :=
    has_exp_one_of_zmod 441979 441982 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 441979 441982 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 441979 441982 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      441979 441982 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      441979 441982 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_442298_442301 :
    HasPrimeWithExpOne (S_val 442298 442301) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442298 442301 ∧ ¬ p ∣ (442301 - 442298) ∧
      ∃ (hNotC : ¬ p ∣ 442301) (hNotB : ¬ p ∣ 442298),
        order_of_C_B_inv_mod_p2 442301 442298 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 442298 442301 := by
  have hlt : (442298 : Nat) < 442301 := by decide
  have hcop : ¬ 53 ∣ (442301 - 442298) := by decide
  have heq : (442301 : ZMod 53) ^ 13 = (442298 : ZMod 53) ^ 13 := by decide
  have hne : (442301 : ZMod 2809) ^ 13 ≠ (442298 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 442301 := by decide
  have hB : ¬ 53 ∣ 442298 := by decide
  have hexp :=
    has_exp_one_of_zmod 442298 442301 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 442298 442301 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 442298 442301 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      442298 442301 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      442298 442301 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_442612_442615 :
    HasPrimeWithExpOne (S_val 442612 442615) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442612 442615 ∧ ¬ p ∣ (442615 - 442612) ∧
      ∃ (hNotC : ¬ p ∣ 442615) (hNotB : ¬ p ∣ 442612),
        order_of_C_B_inv_mod_p2 442615 442612 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 442612 442615 := by
  have hlt : (442612 : Nat) < 442615 := by decide
  have hcop : ¬ 157 ∣ (442615 - 442612) := by decide
  have heq : (442615 : ZMod 157) ^ 13 = (442612 : ZMod 157) ^ 13 := by decide
  have hne : (442615 : ZMod 24649) ^ 13 ≠ (442612 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 442615 := by decide
  have hB : ¬ 157 ∣ 442612 := by decide
  have hexp :=
    has_exp_one_of_zmod 442612 442615 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 442612 442615 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 442612 442615 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      442612 442615 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      442612 442615 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_442958_442961 :
    HasPrimeWithExpOne (S_val 442958 442961) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442958 442961 ∧ ¬ p ∣ (442961 - 442958) ∧
      ∃ (hNotC : ¬ p ∣ 442961) (hNotB : ¬ p ∣ 442958),
        order_of_C_B_inv_mod_p2 442961 442958 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 442958 442961 := by
  have hlt : (442958 : Nat) < 442961 := by decide
  have hcop : ¬ 53 ∣ (442961 - 442958) := by decide
  have heq : (442961 : ZMod 53) ^ 13 = (442958 : ZMod 53) ^ 13 := by decide
  have hne : (442961 : ZMod 2809) ^ 13 ≠ (442958 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 442961 := by decide
  have hB : ¬ 53 ∣ 442958 := by decide
  have hexp :=
    has_exp_one_of_zmod 442958 442961 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 442958 442961 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 442958 442961 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      442958 442961 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      442958 442961 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_443276_443279 :
    HasPrimeWithExpOne (S_val 443276 443279) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 443276 443279 ∧ ¬ p ∣ (443279 - 443276) ∧
      ∃ (hNotC : ¬ p ∣ 443279) (hNotB : ¬ p ∣ 443276),
        order_of_C_B_inv_mod_p2 443279 443276 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 443276 443279 := by
  have hlt : (443276 : Nat) < 443279 := by decide
  have hcop : ¬ 53 ∣ (443279 - 443276) := by decide
  have heq : (443279 : ZMod 53) ^ 13 = (443276 : ZMod 53) ^ 13 := by decide
  have hne : (443279 : ZMod 2809) ^ 13 ≠ (443276 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 443279 := by decide
  have hB : ¬ 53 ∣ 443276 := by decide
  have hexp :=
    has_exp_one_of_zmod 443276 443279 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 443276 443279 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 443276 443279 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      443276 443279 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      443276 443279 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_443621_443624 :
    HasPrimeWithExpOne (S_val 443621 443624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 443621 443624 ∧ ¬ p ∣ (443624 - 443621) ∧
      ∃ (hNotC : ¬ p ∣ 443624) (hNotB : ¬ p ∣ 443621),
        order_of_C_B_inv_mod_p2 443624 443621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 443621 443624 := by
  have hlt : (443621 : Nat) < 443624 := by decide
  have hcop : ¬ 131 ∣ (443624 - 443621) := by decide
  have heq : (443624 : ZMod 131) ^ 13 = (443621 : ZMod 131) ^ 13 := by decide
  have hne : (443624 : ZMod 17161) ^ 13 ≠ (443621 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 443624 := by decide
  have hB : ¬ 131 ∣ 443621 := by decide
  have hexp :=
    has_exp_one_of_zmod 443621 443624 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 443621 443624 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 443621 443624 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      443621 443624 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      443621 443624 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_443960_443963 :
    HasPrimeWithExpOne (S_val 443960 443963) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 443960 443963 ∧ ¬ p ∣ (443963 - 443960) ∧
      ∃ (hNotC : ¬ p ∣ 443963) (hNotB : ¬ p ∣ 443960),
        order_of_C_B_inv_mod_p2 443963 443960 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 443960 443963 := by
  have hlt : (443960 : Nat) < 443963 := by decide
  have hcop : ¬ 53 ∣ (443963 - 443960) := by decide
  have heq : (443963 : ZMod 53) ^ 13 = (443960 : ZMod 53) ^ 13 := by decide
  have hne : (443963 : ZMod 2809) ^ 13 ≠ (443960 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 443963 := by decide
  have hB : ¬ 53 ∣ 443960 := by decide
  have hexp :=
    has_exp_one_of_zmod 443960 443963 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 443960 443963 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 443960 443963 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      443960 443963 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      443960 443963 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_444304_444307 :
    HasPrimeWithExpOne (S_val 444304 444307) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 444304 444307 ∧ ¬ p ∣ (444307 - 444304) ∧
      ∃ (hNotC : ¬ p ∣ 444307) (hNotB : ¬ p ∣ 444304),
        order_of_C_B_inv_mod_p2 444307 444304 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 444304 444307 := by
  have hlt : (444304 : Nat) < 444307 := by decide
  have hcop : ¬ 53 ∣ (444307 - 444304) := by decide
  have heq : (444307 : ZMod 53) ^ 13 = (444304 : ZMod 53) ^ 13 := by decide
  have hne : (444307 : ZMod 2809) ^ 13 ≠ (444304 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 444307 := by decide
  have hB : ¬ 53 ∣ 444304 := by decide
  have hexp :=
    has_exp_one_of_zmod 444304 444307 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 444304 444307 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 444304 444307 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      444304 444307 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      444304 444307 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_444652_444655 :
    HasPrimeWithExpOne (S_val 444652 444655) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 444652 444655 ∧ ¬ p ∣ (444655 - 444652) ∧
      ∃ (hNotC : ¬ p ∣ 444655) (hNotB : ¬ p ∣ 444652),
        order_of_C_B_inv_mod_p2 444655 444652 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 444652 444655 := by
  have hlt : (444652 : Nat) < 444655 := by decide
  have hcop : ¬ 131 ∣ (444655 - 444652) := by decide
  have heq : (444655 : ZMod 131) ^ 13 = (444652 : ZMod 131) ^ 13 := by decide
  have hne : (444655 : ZMod 17161) ^ 13 ≠ (444652 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 444655 := by decide
  have hB : ¬ 131 ∣ 444652 := by decide
  have hexp :=
    has_exp_one_of_zmod 444652 444655 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 444652 444655 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 444652 444655 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      444652 444655 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      444652 444655 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_444986_444989 :
    HasPrimeWithExpOne (S_val 444986 444989) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 444986 444989 ∧ ¬ p ∣ (444989 - 444986) ∧
      ∃ (hNotC : ¬ p ∣ 444989) (hNotB : ¬ p ∣ 444986),
        order_of_C_B_inv_mod_p2 444989 444986 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 444986 444989 := by
  have hlt : (444986 : Nat) < 444989 := by decide
  have hcop : ¬ 79 ∣ (444989 - 444986) := by decide
  have heq : (444989 : ZMod 79) ^ 13 = (444986 : ZMod 79) ^ 13 := by decide
  have hne : (444989 : ZMod 6241) ^ 13 ≠ (444986 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 444989 := by decide
  have hB : ¬ 79 ∣ 444986 := by decide
  have hexp :=
    has_exp_one_of_zmod 444986 444989 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 444986 444989 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 444986 444989 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      444986 444989 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      444986 444989 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_445336_445339 :
    HasPrimeWithExpOne (S_val 445336 445339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 445336 445339 ∧ ¬ p ∣ (445339 - 445336) ∧
      ∃ (hNotC : ¬ p ∣ 445339) (hNotB : ¬ p ∣ 445336),
        order_of_C_B_inv_mod_p2 445339 445336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 445336 445339 := by
  have hlt : (445336 : Nat) < 445339 := by decide
  have hcop : ¬ 79 ∣ (445339 - 445336) := by decide
  have heq : (445339 : ZMod 79) ^ 13 = (445336 : ZMod 79) ^ 13 := by decide
  have hne : (445339 : ZMod 6241) ^ 13 ≠ (445336 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 445339 := by decide
  have hB : ¬ 79 ∣ 445336 := by decide
  have hexp :=
    has_exp_one_of_zmod 445336 445339 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 445336 445339 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 445336 445339 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      445336 445339 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      445336 445339 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_445661_445664 :
    HasPrimeWithExpOne (S_val 445661 445664) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 445661 445664 ∧ ¬ p ∣ (445664 - 445661) ∧
      ∃ (hNotC : ¬ p ∣ 445664) (hNotB : ¬ p ∣ 445661),
        order_of_C_B_inv_mod_p2 445664 445661 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 445661 445664 := by
  have hlt : (445661 : Nat) < 445664 := by decide
  have hcop : ¬ 53 ∣ (445664 - 445661) := by decide
  have heq : (445664 : ZMod 53) ^ 13 = (445661 : ZMod 53) ^ 13 := by decide
  have hne : (445664 : ZMod 2809) ^ 13 ≠ (445661 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 445664 := by decide
  have hB : ¬ 53 ∣ 445661 := by decide
  have hexp :=
    has_exp_one_of_zmod 445661 445664 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 445661 445664 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 445661 445664 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      445661 445664 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      445661 445664 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_445984_445987 :
    HasPrimeWithExpOne (S_val 445984 445987) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 445984 445987 ∧ ¬ p ∣ (445987 - 445984) ∧
      ∃ (hNotC : ¬ p ∣ 445987) (hNotB : ¬ p ∣ 445984),
        order_of_C_B_inv_mod_p2 445987 445984 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 445984 445987 := by
  have hlt : (445984 : Nat) < 445987 := by decide
  have hcop : ¬ 157 ∣ (445987 - 445984) := by decide
  have heq : (445987 : ZMod 157) ^ 13 = (445984 : ZMod 157) ^ 13 := by decide
  have hne : (445987 : ZMod 24649) ^ 13 ≠ (445984 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 445987 := by decide
  have hB : ¬ 157 ∣ 445984 := by decide
  have hexp :=
    has_exp_one_of_zmod 445984 445987 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 445984 445987 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 445984 445987 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      445984 445987 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      445984 445987 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_446317_446320 :
    HasPrimeWithExpOne (S_val 446317 446320) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 446317 446320 ∧ ¬ p ∣ (446320 - 446317) ∧
      ∃ (hNotC : ¬ p ∣ 446320) (hNotB : ¬ p ∣ 446317),
        order_of_C_B_inv_mod_p2 446320 446317 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 446317 446320 := by
  have hlt : (446317 : Nat) < 446320 := by decide
  have hcop : ¬ 53 ∣ (446320 - 446317) := by decide
  have heq : (446320 : ZMod 53) ^ 13 = (446317 : ZMod 53) ^ 13 := by decide
  have hne : (446320 : ZMod 2809) ^ 13 ≠ (446317 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 446320 := by decide
  have hB : ¬ 53 ∣ 446317 := by decide
  have hexp :=
    has_exp_one_of_zmod 446317 446320 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 446317 446320 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 446317 446320 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      446317 446320 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      446317 446320 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_446647_446650 :
    HasPrimeWithExpOne (S_val 446647 446650) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 446647 446650 ∧ ¬ p ∣ (446650 - 446647) ∧
      ∃ (hNotC : ¬ p ∣ 446650) (hNotB : ¬ p ∣ 446647),
        order_of_C_B_inv_mod_p2 446650 446647 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 446647 446650 := by
  have hlt : (446647 : Nat) < 446650 := by decide
  have hcop : ¬ 131 ∣ (446650 - 446647) := by decide
  have heq : (446650 : ZMod 131) ^ 13 = (446647 : ZMod 131) ^ 13 := by decide
  have hne : (446650 : ZMod 17161) ^ 13 ≠ (446647 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 446650 := by decide
  have hB : ¬ 131 ∣ 446647 := by decide
  have hexp :=
    has_exp_one_of_zmod 446647 446650 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 446647 446650 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 446647 446650 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      446647 446650 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      446647 446650 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_446986_446989 :
    HasPrimeWithExpOne (S_val 446986 446989) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 446986 446989 ∧ ¬ p ∣ (446989 - 446986) ∧
      ∃ (hNotC : ¬ p ∣ 446989) (hNotB : ¬ p ∣ 446986),
        order_of_C_B_inv_mod_p2 446989 446986 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 446986 446989 := by
  have hlt : (446986 : Nat) < 446989 := by decide
  have hcop : ¬ 53 ∣ (446989 - 446986) := by decide
  have heq : (446989 : ZMod 53) ^ 13 = (446986 : ZMod 53) ^ 13 := by decide
  have hne : (446989 : ZMod 2809) ^ 13 ≠ (446986 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 446989 := by decide
  have hB : ¬ 53 ∣ 446986 := by decide
  have hexp :=
    has_exp_one_of_zmod 446986 446989 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 446986 446989 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 446986 446989 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      446986 446989 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      446986 446989 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_447333_447336 :
    HasPrimeWithExpOne (S_val 447333 447336) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 447333 447336 ∧ ¬ p ∣ (447336 - 447333) ∧
      ∃ (hNotC : ¬ p ∣ 447336) (hNotB : ¬ p ∣ 447333),
        order_of_C_B_inv_mod_p2 447336 447333 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 447333 447336 := by
  have hlt : (447333 : Nat) < 447336 := by decide
  have hcop : ¬ 53 ∣ (447336 - 447333) := by decide
  have heq : (447336 : ZMod 53) ^ 13 = (447333 : ZMod 53) ^ 13 := by decide
  have hne : (447336 : ZMod 2809) ^ 13 ≠ (447333 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 447336 := by decide
  have hB : ¬ 53 ∣ 447333 := by decide
  have hexp :=
    has_exp_one_of_zmod 447333 447336 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 447333 447336 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 447333 447336 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      447333 447336 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      447333 447336 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_447656_447659 :
    HasPrimeWithExpOne (S_val 447656 447659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 447656 447659 ∧ ¬ p ∣ (447659 - 447656) ∧
      ∃ (hNotC : ¬ p ∣ 447659) (hNotB : ¬ p ∣ 447656),
        order_of_C_B_inv_mod_p2 447659 447656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 447656 447659 := by
  have hlt : (447656 : Nat) < 447659 := by decide
  have hcop : ¬ 53 ∣ (447659 - 447656) := by decide
  have heq : (447659 : ZMod 53) ^ 13 = (447656 : ZMod 53) ^ 13 := by decide
  have hne : (447659 : ZMod 2809) ^ 13 ≠ (447656 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 447659 := by decide
  have hB : ¬ 53 ∣ 447656 := by decide
  have hexp :=
    has_exp_one_of_zmod 447656 447659 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 447656 447659 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 447656 447659 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      447656 447659 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      447656 447659 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_447992_447995 :
    HasPrimeWithExpOne (S_val 447992 447995) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 447992 447995 ∧ ¬ p ∣ (447995 - 447992) ∧
      ∃ (hNotC : ¬ p ∣ 447995) (hNotB : ¬ p ∣ 447992),
        order_of_C_B_inv_mod_p2 447995 447992 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 447992 447995 := by
  have hlt : (447992 : Nat) < 447995 := by decide
  have hcop : ¬ 79 ∣ (447995 - 447992) := by decide
  have heq : (447995 : ZMod 79) ^ 13 = (447992 : ZMod 79) ^ 13 := by decide
  have hne : (447995 : ZMod 6241) ^ 13 ≠ (447992 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 447995 := by decide
  have hB : ¬ 79 ∣ 447992 := by decide
  have hexp :=
    has_exp_one_of_zmod 447992 447995 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 447992 447995 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 447992 447995 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      447992 447995 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      447992 447995 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_448331_448334 :
    HasPrimeWithExpOne (S_val 448331 448334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 448331 448334 ∧ ¬ p ∣ (448334 - 448331) ∧
      ∃ (hNotC : ¬ p ∣ 448334) (hNotB : ¬ p ∣ 448331),
        order_of_C_B_inv_mod_p2 448334 448331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 448331 448334 := by
  have hlt : (448331 : Nat) < 448334 := by decide
  have hcop : ¬ 53 ∣ (448334 - 448331) := by decide
  have heq : (448334 : ZMod 53) ^ 13 = (448331 : ZMod 53) ^ 13 := by decide
  have hne : (448334 : ZMod 2809) ^ 13 ≠ (448331 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 448334 := by decide
  have hB : ¬ 53 ∣ 448331 := by decide
  have hexp :=
    has_exp_one_of_zmod 448331 448334 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 448331 448334 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 448331 448334 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      448331 448334 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      448331 448334 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_448674_448677 :
    HasPrimeWithExpOne (S_val 448674 448677) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 448674 448677 ∧ ¬ p ∣ (448677 - 448674) ∧
      ∃ (hNotC : ¬ p ∣ 448677) (hNotB : ¬ p ∣ 448674),
        order_of_C_B_inv_mod_p2 448677 448674 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 448674 448677 := by
  have hlt : (448674 : Nat) < 448677 := by decide
  have hcop : ¬ 157 ∣ (448677 - 448674) := by decide
  have heq : (448677 : ZMod 157) ^ 13 = (448674 : ZMod 157) ^ 13 := by decide
  have hne : (448677 : ZMod 24649) ^ 13 ≠ (448674 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 448677 := by decide
  have hB : ¬ 157 ∣ 448674 := by decide
  have hexp :=
    has_exp_one_of_zmod 448674 448677 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 448674 448677 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 448674 448677 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      448674 448677 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      448674 448677 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_449014_449017 :
    HasPrimeWithExpOne (S_val 449014 449017) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 449014 449017 ∧ ¬ p ∣ (449017 - 449014) ∧
      ∃ (hNotC : ¬ p ∣ 449017) (hNotB : ¬ p ∣ 449014),
        order_of_C_B_inv_mod_p2 449017 449014 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 449014 449017 := by
  have hlt : (449014 : Nat) < 449017 := by decide
  have hcop : ¬ 313 ∣ (449017 - 449014) := by decide
  have heq : (449017 : ZMod 313) ^ 13 = (449014 : ZMod 313) ^ 13 := by decide
  have hne : (449017 : ZMod 97969) ^ 13 ≠ (449014 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 449017 := by decide
  have hB : ¬ 313 ∣ 449014 := by decide
  have hexp :=
    has_exp_one_of_zmod 449014 449017 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 449014 449017 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 449014 449017 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      449014 449017 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      449014 449017 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_449363_449366 :
    HasPrimeWithExpOne (S_val 449363 449366) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 449363 449366 ∧ ¬ p ∣ (449366 - 449363) ∧
      ∃ (hNotC : ¬ p ∣ 449366) (hNotB : ¬ p ∣ 449363),
        order_of_C_B_inv_mod_p2 449366 449363 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 449363 449366 := by
  have hlt : (449363 : Nat) < 449366 := by decide
  have hcop : ¬ 157 ∣ (449366 - 449363) := by decide
  have heq : (449366 : ZMod 157) ^ 13 = (449363 : ZMod 157) ^ 13 := by decide
  have hne : (449366 : ZMod 24649) ^ 13 ≠ (449363 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 449366 := by decide
  have hB : ¬ 157 ∣ 449363 := by decide
  have hexp :=
    has_exp_one_of_zmod 449363 449366 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 449363 449366 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 449363 449366 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      449363 449366 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      449363 449366 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_449669_449672 :
    HasPrimeWithExpOne (S_val 449669 449672) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 449669 449672 ∧ ¬ p ∣ (449672 - 449669) ∧
      ∃ (hNotC : ¬ p ∣ 449672) (hNotB : ¬ p ∣ 449669),
        order_of_C_B_inv_mod_p2 449672 449669 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 449669 449672 := by
  have hlt : (449669 : Nat) < 449672 := by decide
  have hcop : ¬ 157 ∣ (449672 - 449669) := by decide
  have heq : (449672 : ZMod 157) ^ 13 = (449669 : ZMod 157) ^ 13 := by decide
  have hne : (449672 : ZMod 24649) ^ 13 ≠ (449669 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 449672 := by decide
  have hB : ¬ 157 ∣ 449669 := by decide
  have hexp :=
    has_exp_one_of_zmod 449669 449672 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 449669 449672 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 449669 449672 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      449669 449672 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      449669 449672 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_450007_450010 :
    HasPrimeWithExpOne (S_val 450007 450010) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450007 450010 ∧ ¬ p ∣ (450010 - 450007) ∧
      ∃ (hNotC : ¬ p ∣ 450010) (hNotB : ¬ p ∣ 450007),
        order_of_C_B_inv_mod_p2 450010 450007 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 450007 450010 := by
  have hlt : (450007 : Nat) < 450010 := by decide
  have hcop : ¬ 53 ∣ (450010 - 450007) := by decide
  have heq : (450010 : ZMod 53) ^ 13 = (450007 : ZMod 53) ^ 13 := by decide
  have hne : (450010 : ZMod 2809) ^ 13 ≠ (450007 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 450010 := by decide
  have hB : ¬ 53 ∣ 450007 := by decide
  have hexp :=
    has_exp_one_of_zmod 450007 450010 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 450007 450010 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 450007 450010 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      450007 450010 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      450007 450010 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_450326_450329 :
    HasPrimeWithExpOne (S_val 450326 450329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450326 450329 ∧ ¬ p ∣ (450329 - 450326) ∧
      ∃ (hNotC : ¬ p ∣ 450329) (hNotB : ¬ p ∣ 450326),
        order_of_C_B_inv_mod_p2 450329 450326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 450326 450329 := by
  have hlt : (450326 : Nat) < 450329 := by decide
  have hcop : ¬ 157 ∣ (450329 - 450326) := by decide
  have heq : (450329 : ZMod 157) ^ 13 = (450326 : ZMod 157) ^ 13 := by decide
  have hne : (450329 : ZMod 24649) ^ 13 ≠ (450326 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 450329 := by decide
  have hB : ¬ 157 ∣ 450326 := by decide
  have hexp :=
    has_exp_one_of_zmod 450326 450329 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 450326 450329 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 450326 450329 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      450326 450329 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      450326 450329 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_450640_450643 :
    HasPrimeWithExpOne (S_val 450640 450643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450640 450643 ∧ ¬ p ∣ (450643 - 450640) ∧
      ∃ (hNotC : ¬ p ∣ 450643) (hNotB : ¬ p ∣ 450640),
        order_of_C_B_inv_mod_p2 450643 450640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 450640 450643 := by
  have hlt : (450640 : Nat) < 450643 := by decide
  have hcop : ¬ 157 ∣ (450643 - 450640) := by decide
  have heq : (450643 : ZMod 157) ^ 13 = (450640 : ZMod 157) ^ 13 := by decide
  have hne : (450643 : ZMod 24649) ^ 13 ≠ (450640 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 450643 := by decide
  have hB : ¬ 157 ∣ 450640 := by decide
  have hexp :=
    has_exp_one_of_zmod 450640 450643 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 450640 450643 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 450640 450643 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      450640 450643 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      450640 450643 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_450975_450978 :
    HasPrimeWithExpOne (S_val 450975 450978) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450975 450978 ∧ ¬ p ∣ (450978 - 450975) ∧
      ∃ (hNotC : ¬ p ∣ 450978) (hNotB : ¬ p ∣ 450975),
        order_of_C_B_inv_mod_p2 450978 450975 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 450975 450978 := by
  have hlt : (450975 : Nat) < 450978 := by decide
  have hcop : ¬ 131 ∣ (450978 - 450975) := by decide
  have heq : (450978 : ZMod 131) ^ 13 = (450975 : ZMod 131) ^ 13 := by decide
  have hne : (450978 : ZMod 17161) ^ 13 ≠ (450975 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 450978 := by decide
  have hB : ¬ 131 ∣ 450975 := by decide
  have hexp :=
    has_exp_one_of_zmod 450975 450978 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 450975 450978 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 450975 450978 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      450975 450978 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      450975 450978 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_451318_451321 :
    HasPrimeWithExpOne (S_val 451318 451321) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 451318 451321 ∧ ¬ p ∣ (451321 - 451318) ∧
      ∃ (hNotC : ¬ p ∣ 451321) (hNotB : ¬ p ∣ 451318),
        order_of_C_B_inv_mod_p2 451321 451318 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 451318 451321 := by
  have hlt : (451318 : Nat) < 451321 := by decide
  have hcop : ¬ 521 ∣ (451321 - 451318) := by decide
  have heq : (451321 : ZMod 521) ^ 13 = (451318 : ZMod 521) ^ 13 := by decide
  have hne : (451321 : ZMod 271441) ^ 13 ≠ (451318 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 451321 := by decide
  have hB : ¬ 521 ∣ 451318 := by decide
  have hexp :=
    has_exp_one_of_zmod 451318 451321 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 451318 451321 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 451318 451321 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      451318 451321 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      451318 451321 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_451661_451664 :
    HasPrimeWithExpOne (S_val 451661 451664) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 451661 451664 ∧ ¬ p ∣ (451664 - 451661) ∧
      ∃ (hNotC : ¬ p ∣ 451664) (hNotB : ¬ p ∣ 451661),
        order_of_C_B_inv_mod_p2 451664 451661 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 451661 451664 := by
  have hlt : (451661 : Nat) < 451664 := by decide
  have hcop : ¬ 79 ∣ (451664 - 451661) := by decide
  have heq : (451664 : ZMod 79) ^ 13 = (451661 : ZMod 79) ^ 13 := by decide
  have hne : (451664 : ZMod 6241) ^ 13 ≠ (451661 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 451664 := by decide
  have hB : ¬ 79 ∣ 451661 := by decide
  have hexp :=
    has_exp_one_of_zmod 451661 451664 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 451661 451664 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 451661 451664 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      451661 451664 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      451661 451664 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_451993_451996 :
    HasPrimeWithExpOne (S_val 451993 451996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 451993 451996 ∧ ¬ p ∣ (451996 - 451993) ∧
      ∃ (hNotC : ¬ p ∣ 451996) (hNotB : ¬ p ∣ 451993),
        order_of_C_B_inv_mod_p2 451996 451993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 451993 451996 := by
  have hlt : (451993 : Nat) < 451996 := by decide
  have hcop : ¬ 79 ∣ (451996 - 451993) := by decide
  have heq : (451996 : ZMod 79) ^ 13 = (451993 : ZMod 79) ^ 13 := by decide
  have hne : (451996 : ZMod 6241) ^ 13 ≠ (451993 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 451996 := by decide
  have hB : ¬ 79 ∣ 451993 := by decide
  have hexp :=
    has_exp_one_of_zmod 451993 451996 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 451993 451996 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 451993 451996 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      451993 451996 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      451993 451996 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_452333_452336 :
    HasPrimeWithExpOne (S_val 452333 452336) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 452333 452336 ∧ ¬ p ∣ (452336 - 452333) ∧
      ∃ (hNotC : ¬ p ∣ 452336) (hNotB : ¬ p ∣ 452333),
        order_of_C_B_inv_mod_p2 452336 452333 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 452333 452336 := by
  have hlt : (452333 : Nat) < 452336 := by decide
  have hcop : ¬ 79 ∣ (452336 - 452333) := by decide
  have heq : (452336 : ZMod 79) ^ 13 = (452333 : ZMod 79) ^ 13 := by decide
  have hne : (452336 : ZMod 6241) ^ 13 ≠ (452333 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 452336 := by decide
  have hB : ¬ 79 ∣ 452333 := by decide
  have hexp :=
    has_exp_one_of_zmod 452333 452336 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 452333 452336 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 452333 452336 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      452333 452336 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      452333 452336 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_452673_452676 :
    HasPrimeWithExpOne (S_val 452673 452676) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 452673 452676 ∧ ¬ p ∣ (452676 - 452673) ∧
      ∃ (hNotC : ¬ p ∣ 452676) (hNotB : ¬ p ∣ 452673),
        order_of_C_B_inv_mod_p2 452676 452673 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 452673 452676 := by
  have hlt : (452673 : Nat) < 452676 := by decide
  have hcop : ¬ 131 ∣ (452676 - 452673) := by decide
  have heq : (452676 : ZMod 131) ^ 13 = (452673 : ZMod 131) ^ 13 := by decide
  have hne : (452676 : ZMod 17161) ^ 13 ≠ (452673 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 452676 := by decide
  have hB : ¬ 131 ∣ 452673 := by decide
  have hexp :=
    has_exp_one_of_zmod 452673 452676 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 452673 452676 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 452673 452676 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      452673 452676 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      452673 452676 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_452991_452994 :
    HasPrimeWithExpOne (S_val 452991 452994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 452991 452994 ∧ ¬ p ∣ (452994 - 452991) ∧
      ∃ (hNotC : ¬ p ∣ 452994) (hNotB : ¬ p ∣ 452991),
        order_of_C_B_inv_mod_p2 452994 452991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 452991 452994 := by
  have hlt : (452991 : Nat) < 452994 := by decide
  have hcop : ¬ 521 ∣ (452994 - 452991) := by decide
  have heq : (452994 : ZMod 521) ^ 13 = (452991 : ZMod 521) ^ 13 := by decide
  have hne : (452994 : ZMod 271441) ^ 13 ≠ (452991 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 452994 := by decide
  have hB : ¬ 521 ∣ 452991 := by decide
  have hexp :=
    has_exp_one_of_zmod 452991 452994 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 452991 452994 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 452991 452994 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      452991 452994 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      452991 452994 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_453327_453330 :
    HasPrimeWithExpOne (S_val 453327 453330) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 453327 453330 ∧ ¬ p ∣ (453330 - 453327) ∧
      ∃ (hNotC : ¬ p ∣ 453330) (hNotB : ¬ p ∣ 453327),
        order_of_C_B_inv_mod_p2 453330 453327 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 453327 453330 := by
  have hlt : (453327 : Nat) < 453330 := by decide
  have hcop : ¬ 53 ∣ (453330 - 453327) := by decide
  have heq : (453330 : ZMod 53) ^ 13 = (453327 : ZMod 53) ^ 13 := by decide
  have hne : (453330 : ZMod 2809) ^ 13 ≠ (453327 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 453330 := by decide
  have hB : ¬ 53 ∣ 453327 := by decide
  have hexp :=
    has_exp_one_of_zmod 453327 453330 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 453327 453330 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 453327 453330 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      453327 453330 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      453327 453330 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_453661_453664 :
    HasPrimeWithExpOne (S_val 453661 453664) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 453661 453664 ∧ ¬ p ∣ (453664 - 453661) ∧
      ∃ (hNotC : ¬ p ∣ 453664) (hNotB : ¬ p ∣ 453661),
        order_of_C_B_inv_mod_p2 453664 453661 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 453661 453664 := by
  have hlt : (453661 : Nat) < 453664 := by decide
  have hcop : ¬ 443 ∣ (453664 - 453661) := by decide
  have heq : (453664 : ZMod 443) ^ 13 = (453661 : ZMod 443) ^ 13 := by decide
  have hne : (453664 : ZMod 196249) ^ 13 ≠ (453661 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 453664 := by decide
  have hB : ¬ 443 ∣ 453661 := by decide
  have hexp :=
    has_exp_one_of_zmod 453661 453664 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 453661 453664 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 453661 453664 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      453661 453664 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      453661 453664 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_453990_453993 :
    HasPrimeWithExpOne (S_val 453990 453993) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 453990 453993 ∧ ¬ p ∣ (453993 - 453990) ∧
      ∃ (hNotC : ¬ p ∣ 453993) (hNotB : ¬ p ∣ 453990),
        order_of_C_B_inv_mod_p2 453993 453990 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 453990 453993 := by
  have hlt : (453990 : Nat) < 453993 := by decide
  have hcop : ¬ 53 ∣ (453993 - 453990) := by decide
  have heq : (453993 : ZMod 53) ^ 13 = (453990 : ZMod 53) ^ 13 := by decide
  have hne : (453993 : ZMod 2809) ^ 13 ≠ (453990 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 453993 := by decide
  have hB : ¬ 53 ∣ 453990 := by decide
  have hexp :=
    has_exp_one_of_zmod 453990 453993 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 453990 453993 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 453990 453993 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      453990 453993 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      453990 453993 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_454320_454323 :
    HasPrimeWithExpOne (S_val 454320 454323) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 454320 454323 ∧ ¬ p ∣ (454323 - 454320) ∧
      ∃ (hNotC : ¬ p ∣ 454323) (hNotB : ¬ p ∣ 454320),
        order_of_C_B_inv_mod_p2 454323 454320 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 454320 454323 := by
  have hlt : (454320 : Nat) < 454323 := by decide
  have hcop : ¬ 53 ∣ (454323 - 454320) := by decide
  have heq : (454323 : ZMod 53) ^ 13 = (454320 : ZMod 53) ^ 13 := by decide
  have hne : (454323 : ZMod 2809) ^ 13 ≠ (454320 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 454323 := by decide
  have hB : ¬ 53 ∣ 454320 := by decide
  have hexp :=
    has_exp_one_of_zmod 454320 454323 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 454320 454323 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 454320 454323 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      454320 454323 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      454320 454323 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_454660_454663 :
    HasPrimeWithExpOne (S_val 454660 454663) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 454660 454663 ∧ ¬ p ∣ (454663 - 454660) ∧
      ∃ (hNotC : ¬ p ∣ 454663) (hNotB : ¬ p ∣ 454660),
        order_of_C_B_inv_mod_p2 454663 454660 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 454660 454663 := by
  have hlt : (454660 : Nat) < 454663 := by decide
  have hcop : ¬ 131 ∣ (454663 - 454660) := by decide
  have heq : (454663 : ZMod 131) ^ 13 = (454660 : ZMod 131) ^ 13 := by decide
  have hne : (454663 : ZMod 17161) ^ 13 ≠ (454660 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 454663 := by decide
  have hB : ¬ 131 ∣ 454660 := by decide
  have hexp :=
    has_exp_one_of_zmod 454660 454663 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 454660 454663 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 454660 454663 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      454660 454663 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      454660 454663 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_454997_455000 :
    HasPrimeWithExpOne (S_val 454997 455000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 454997 455000 ∧ ¬ p ∣ (455000 - 454997) ∧
      ∃ (hNotC : ¬ p ∣ 455000) (hNotB : ¬ p ∣ 454997),
        order_of_C_B_inv_mod_p2 455000 454997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 454997 455000 := by
  have hlt : (454997 : Nat) < 455000 := by decide
  have hcop : ¬ 53 ∣ (455000 - 454997) := by decide
  have heq : (455000 : ZMod 53) ^ 13 = (454997 : ZMod 53) ^ 13 := by decide
  have hne : (455000 : ZMod 2809) ^ 13 ≠ (454997 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 455000 := by decide
  have hB : ¬ 53 ∣ 454997 := by decide
  have hexp :=
    has_exp_one_of_zmod 454997 455000 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 454997 455000 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 454997 455000 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      454997 455000 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      454997 455000 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_455335_455338 :
    HasPrimeWithExpOne (S_val 455335 455338) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 455335 455338 ∧ ¬ p ∣ (455338 - 455335) ∧
      ∃ (hNotC : ¬ p ∣ 455338) (hNotB : ¬ p ∣ 455335),
        order_of_C_B_inv_mod_p2 455338 455335 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 455335 455338 := by
  have hlt : (455335 : Nat) < 455338 := by decide
  have hcop : ¬ 79 ∣ (455338 - 455335) := by decide
  have heq : (455338 : ZMod 79) ^ 13 = (455335 : ZMod 79) ^ 13 := by decide
  have hne : (455338 : ZMod 6241) ^ 13 ≠ (455335 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 455338 := by decide
  have hB : ¬ 79 ∣ 455335 := by decide
  have hexp :=
    has_exp_one_of_zmod 455335 455338 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 455335 455338 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 455335 455338 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      455335 455338 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      455335 455338 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_455695_455698 :
    HasPrimeWithExpOne (S_val 455695 455698) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 455695 455698 ∧ ¬ p ∣ (455698 - 455695) ∧
      ∃ (hNotC : ¬ p ∣ 455698) (hNotB : ¬ p ∣ 455695),
        order_of_C_B_inv_mod_p2 455698 455695 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 455695 455698 := by
  have hlt : (455695 : Nat) < 455698 := by decide
  have hcop : ¬ 79 ∣ (455698 - 455695) := by decide
  have heq : (455698 : ZMod 79) ^ 13 = (455695 : ZMod 79) ^ 13 := by decide
  have hne : (455698 : ZMod 6241) ^ 13 ≠ (455695 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 455698 := by decide
  have hB : ¬ 79 ∣ 455695 := by decide
  have hexp :=
    has_exp_one_of_zmod 455695 455698 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 455695 455698 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 455695 455698 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      455695 455698 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      455695 455698 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_456019_456022 :
    HasPrimeWithExpOne (S_val 456019 456022) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 456019 456022 ∧ ¬ p ∣ (456022 - 456019) ∧
      ∃ (hNotC : ¬ p ∣ 456022) (hNotB : ¬ p ∣ 456019),
        order_of_C_B_inv_mod_p2 456022 456019 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 456019 456022 := by
  have hlt : (456019 : Nat) < 456022 := by decide
  have hcop : ¬ 157 ∣ (456022 - 456019) := by decide
  have heq : (456022 : ZMod 157) ^ 13 = (456019 : ZMod 157) ^ 13 := by decide
  have hne : (456022 : ZMod 24649) ^ 13 ≠ (456019 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 456022 := by decide
  have hB : ¬ 157 ∣ 456019 := by decide
  have hexp :=
    has_exp_one_of_zmod 456019 456022 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 456019 456022 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 456019 456022 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      456019 456022 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      456019 456022 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_456346_456349 :
    HasPrimeWithExpOne (S_val 456346 456349) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 456346 456349 ∧ ¬ p ∣ (456349 - 456346) ∧
      ∃ (hNotC : ¬ p ∣ 456349) (hNotB : ¬ p ∣ 456346),
        order_of_C_B_inv_mod_p2 456349 456346 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 456346 456349 := by
  have hlt : (456346 : Nat) < 456349 := by decide
  have hcop : ¬ 79 ∣ (456349 - 456346) := by decide
  have heq : (456349 : ZMod 79) ^ 13 = (456346 : ZMod 79) ^ 13 := by decide
  have hne : (456349 : ZMod 6241) ^ 13 ≠ (456346 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 456349 := by decide
  have hB : ¬ 79 ∣ 456346 := by decide
  have hexp :=
    has_exp_one_of_zmod 456346 456349 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 456346 456349 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 456346 456349 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      456346 456349 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      456346 456349 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_456688_456691 :
    HasPrimeWithExpOne (S_val 456688 456691) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 456688 456691 ∧ ¬ p ∣ (456691 - 456688) ∧
      ∃ (hNotC : ¬ p ∣ 456691) (hNotB : ¬ p ∣ 456688),
        order_of_C_B_inv_mod_p2 456691 456688 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 456688 456691 := by
  have hlt : (456688 : Nat) < 456691 := by decide
  have hcop : ¬ 53 ∣ (456691 - 456688) := by decide
  have heq : (456691 : ZMod 53) ^ 13 = (456688 : ZMod 53) ^ 13 := by decide
  have hne : (456691 : ZMod 2809) ^ 13 ≠ (456688 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 456691 := by decide
  have hB : ¬ 53 ∣ 456688 := by decide
  have hexp :=
    has_exp_one_of_zmod 456688 456691 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 456688 456691 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 456688 456691 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      456688 456691 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      456688 456691 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_457006_457009 :
    HasPrimeWithExpOne (S_val 457006 457009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 457006 457009 ∧ ¬ p ∣ (457009 - 457006) ∧
      ∃ (hNotC : ¬ p ∣ 457009) (hNotB : ¬ p ∣ 457006),
        order_of_C_B_inv_mod_p2 457009 457006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 457006 457009 := by
  have hlt : (457006 : Nat) < 457009 := by decide
  have hcop : ¬ 53 ∣ (457009 - 457006) := by decide
  have heq : (457009 : ZMod 53) ^ 13 = (457006 : ZMod 53) ^ 13 := by decide
  have hne : (457009 : ZMod 2809) ^ 13 ≠ (457006 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 457009 := by decide
  have hB : ¬ 53 ∣ 457006 := by decide
  have hexp :=
    has_exp_one_of_zmod 457006 457009 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 457006 457009 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 457006 457009 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      457006 457009 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      457006 457009 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_457350_457353 :
    HasPrimeWithExpOne (S_val 457350 457353) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 457350 457353 ∧ ¬ p ∣ (457353 - 457350) ∧
      ∃ (hNotC : ¬ p ∣ 457353) (hNotB : ¬ p ∣ 457350),
        order_of_C_B_inv_mod_p2 457353 457350 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 457350 457353 := by
  have hlt : (457350 : Nat) < 457353 := by decide
  have hcop : ¬ 53 ∣ (457353 - 457350) := by decide
  have heq : (457353 : ZMod 53) ^ 13 = (457350 : ZMod 53) ^ 13 := by decide
  have hne : (457353 : ZMod 2809) ^ 13 ≠ (457350 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 457353 := by decide
  have hB : ¬ 53 ∣ 457350 := by decide
  have hexp :=
    has_exp_one_of_zmod 457350 457353 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 457350 457353 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 457350 457353 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      457350 457353 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      457350 457353 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_457688_457691 :
    HasPrimeWithExpOne (S_val 457688 457691) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 457688 457691 ∧ ¬ p ∣ (457691 - 457688) ∧
      ∃ (hNotC : ¬ p ∣ 457691) (hNotB : ¬ p ∣ 457688),
        order_of_C_B_inv_mod_p2 457691 457688 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 457688 457691 := by
  have hlt : (457688 : Nat) < 457691 := by decide
  have hcop : ¬ 157 ∣ (457691 - 457688) := by decide
  have heq : (457691 : ZMod 157) ^ 13 = (457688 : ZMod 157) ^ 13 := by decide
  have hne : (457691 : ZMod 24649) ^ 13 ≠ (457688 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 457691 := by decide
  have hB : ¬ 157 ∣ 457688 := by decide
  have hexp :=
    has_exp_one_of_zmod 457688 457691 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 457688 457691 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 457688 457691 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      457688 457691 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      457688 457691 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_458026_458029 :
    HasPrimeWithExpOne (S_val 458026 458029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 458026 458029 ∧ ¬ p ∣ (458029 - 458026) ∧
      ∃ (hNotC : ¬ p ∣ 458029) (hNotB : ¬ p ∣ 458026),
        order_of_C_B_inv_mod_p2 458029 458026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 458026 458029 := by
  have hlt : (458026 : Nat) < 458029 := by decide
  have hcop : ¬ 79 ∣ (458029 - 458026) := by decide
  have heq : (458029 : ZMod 79) ^ 13 = (458026 : ZMod 79) ^ 13 := by decide
  have hne : (458029 : ZMod 6241) ^ 13 ≠ (458026 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 458029 := by decide
  have hB : ¬ 79 ∣ 458026 := by decide
  have hexp :=
    has_exp_one_of_zmod 458026 458029 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 458026 458029 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 458026 458029 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      458026 458029 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      458026 458029 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_458349_458352 :
    HasPrimeWithExpOne (S_val 458349 458352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 458349 458352 ∧ ¬ p ∣ (458352 - 458349) ∧
      ∃ (hNotC : ¬ p ∣ 458352) (hNotB : ¬ p ∣ 458349),
        order_of_C_B_inv_mod_p2 458352 458349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 458349 458352 := by
  have hlt : (458349 : Nat) < 458352 := by decide
  have hcop : ¬ 53 ∣ (458352 - 458349) := by decide
  have heq : (458352 : ZMod 53) ^ 13 = (458349 : ZMod 53) ^ 13 := by decide
  have hne : (458352 : ZMod 2809) ^ 13 ≠ (458349 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 458352 := by decide
  have hB : ¬ 53 ∣ 458349 := by decide
  have hexp :=
    has_exp_one_of_zmod 458349 458352 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 458349 458352 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 458349 458352 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      458349 458352 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      458349 458352 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_458697_458700 :
    HasPrimeWithExpOne (S_val 458697 458700) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 458697 458700 ∧ ¬ p ∣ (458700 - 458697) ∧
      ∃ (hNotC : ¬ p ∣ 458700) (hNotB : ¬ p ∣ 458697),
        order_of_C_B_inv_mod_p2 458700 458697 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 458697 458700 := by
  have hlt : (458697 : Nat) < 458700 := by decide
  have hcop : ¬ 79 ∣ (458700 - 458697) := by decide
  have heq : (458700 : ZMod 79) ^ 13 = (458697 : ZMod 79) ^ 13 := by decide
  have hne : (458700 : ZMod 6241) ^ 13 ≠ (458697 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 458700 := by decide
  have hB : ¬ 79 ∣ 458697 := by decide
  have hexp :=
    has_exp_one_of_zmod 458697 458700 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 458697 458700 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 458697 458700 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      458697 458700 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      458697 458700 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_459017_459020 :
    HasPrimeWithExpOne (S_val 459017 459020) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 459017 459020 ∧ ¬ p ∣ (459020 - 459017) ∧
      ∃ (hNotC : ¬ p ∣ 459020) (hNotB : ¬ p ∣ 459017),
        order_of_C_B_inv_mod_p2 459020 459017 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 459017 459020 := by
  have hlt : (459017 : Nat) < 459020 := by decide
  have hcop : ¬ 53 ∣ (459020 - 459017) := by decide
  have heq : (459020 : ZMod 53) ^ 13 = (459017 : ZMod 53) ^ 13 := by decide
  have hne : (459020 : ZMod 2809) ^ 13 ≠ (459017 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 459020 := by decide
  have hB : ¬ 53 ∣ 459017 := by decide
  have hexp :=
    has_exp_one_of_zmod 459017 459020 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 459017 459020 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 459017 459020 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      459017 459020 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      459017 459020 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_459358_459361 :
    HasPrimeWithExpOne (S_val 459358 459361) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 459358 459361 ∧ ¬ p ∣ (459361 - 459358) ∧
      ∃ (hNotC : ¬ p ∣ 459361) (hNotB : ¬ p ∣ 459358),
        order_of_C_B_inv_mod_p2 459361 459358 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 459358 459361 := by
  have hlt : (459358 : Nat) < 459361 := by decide
  have hcop : ¬ 157 ∣ (459361 - 459358) := by decide
  have heq : (459361 : ZMod 157) ^ 13 = (459358 : ZMod 157) ^ 13 := by decide
  have hne : (459361 : ZMod 24649) ^ 13 ≠ (459358 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 459361 := by decide
  have hB : ¬ 157 ∣ 459358 := by decide
  have hexp :=
    has_exp_one_of_zmod 459358 459361 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 459358 459361 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 459358 459361 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      459358 459361 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      459358 459361 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_459709_459712 :
    HasPrimeWithExpOne (S_val 459709 459712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 459709 459712 ∧ ¬ p ∣ (459712 - 459709) ∧
      ∃ (hNotC : ¬ p ∣ 459712) (hNotB : ¬ p ∣ 459709),
        order_of_C_B_inv_mod_p2 459712 459709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 459709 459712 := by
  have hlt : (459709 : Nat) < 459712 := by decide
  have hcop : ¬ 53 ∣ (459712 - 459709) := by decide
  have heq : (459712 : ZMod 53) ^ 13 = (459709 : ZMod 53) ^ 13 := by decide
  have hne : (459712 : ZMod 2809) ^ 13 ≠ (459709 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 459712 := by decide
  have hB : ¬ 53 ∣ 459709 := by decide
  have hexp :=
    has_exp_one_of_zmod 459709 459712 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 459709 459712 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 459709 459712 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      459709 459712 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      459709 459712 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_460039_460042 :
    HasPrimeWithExpOne (S_val 460039 460042) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 460039 460042 ∧ ¬ p ∣ (460042 - 460039) ∧
      ∃ (hNotC : ¬ p ∣ 460042) (hNotB : ¬ p ∣ 460039),
        order_of_C_B_inv_mod_p2 460042 460039 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 460039 460042 := by
  have hlt : (460039 : Nat) < 460042 := by decide
  have hcop : ¬ 157 ∣ (460042 - 460039) := by decide
  have heq : (460042 : ZMod 157) ^ 13 = (460039 : ZMod 157) ^ 13 := by decide
  have hne : (460042 : ZMod 24649) ^ 13 ≠ (460039 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 460042 := by decide
  have hB : ¬ 157 ∣ 460039 := by decide
  have hexp :=
    has_exp_one_of_zmod 460039 460042 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 460039 460042 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 460039 460042 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      460039 460042 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      460039 460042 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_460368_460371 :
    HasPrimeWithExpOne (S_val 460368 460371) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 460368 460371 ∧ ¬ p ∣ (460371 - 460368) ∧
      ∃ (hNotC : ¬ p ∣ 460371) (hNotB : ¬ p ∣ 460368),
        order_of_C_B_inv_mod_p2 460371 460368 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 460368 460371 := by
  have hlt : (460368 : Nat) < 460371 := by decide
  have hcop : ¬ 53 ∣ (460371 - 460368) := by decide
  have heq : (460371 : ZMod 53) ^ 13 = (460368 : ZMod 53) ^ 13 := by decide
  have hne : (460371 : ZMod 2809) ^ 13 ≠ (460368 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 460371 := by decide
  have hB : ¬ 53 ∣ 460368 := by decide
  have hexp :=
    has_exp_one_of_zmod 460368 460371 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 460368 460371 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 460368 460371 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      460368 460371 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      460368 460371 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_460712_460715 :
    HasPrimeWithExpOne (S_val 460712 460715) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 460712 460715 ∧ ¬ p ∣ (460715 - 460712) ∧
      ∃ (hNotC : ¬ p ∣ 460715) (hNotB : ¬ p ∣ 460712),
        order_of_C_B_inv_mod_p2 460715 460712 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 460712 460715 := by
  have hlt : (460712 : Nat) < 460715 := by decide
  have hcop : ¬ 79 ∣ (460715 - 460712) := by decide
  have heq : (460715 : ZMod 79) ^ 13 = (460712 : ZMod 79) ^ 13 := by decide
  have hne : (460715 : ZMod 6241) ^ 13 ≠ (460712 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 460715 := by decide
  have hB : ¬ 79 ∣ 460712 := by decide
  have hexp :=
    has_exp_one_of_zmod 460712 460715 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 460712 460715 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 460712 460715 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      460712 460715 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      460712 460715 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_461043_461046 :
    HasPrimeWithExpOne (S_val 461043 461046) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461043 461046 ∧ ¬ p ∣ (461046 - 461043) ∧
      ∃ (hNotC : ¬ p ∣ 461046) (hNotB : ¬ p ∣ 461043),
        order_of_C_B_inv_mod_p2 461046 461043 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 461043 461046 := by
  have hlt : (461043 : Nat) < 461046 := by decide
  have hcop : ¬ 131 ∣ (461046 - 461043) := by decide
  have heq : (461046 : ZMod 131) ^ 13 = (461043 : ZMod 131) ^ 13 := by decide
  have hne : (461046 : ZMod 17161) ^ 13 ≠ (461043 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 461046 := by decide
  have hB : ¬ 131 ∣ 461043 := by decide
  have hexp :=
    has_exp_one_of_zmod 461043 461046 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 461043 461046 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 461043 461046 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      461043 461046 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      461043 461046 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_461378_461381 :
    HasPrimeWithExpOne (S_val 461378 461381) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461378 461381 ∧ ¬ p ∣ (461381 - 461378) ∧
      ∃ (hNotC : ¬ p ∣ 461381) (hNotB : ¬ p ∣ 461378),
        order_of_C_B_inv_mod_p2 461381 461378 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 461378 461381 := by
  have hlt : (461378 : Nat) < 461381 := by decide
  have hcop : ¬ 53 ∣ (461381 - 461378) := by decide
  have heq : (461381 : ZMod 53) ^ 13 = (461378 : ZMod 53) ^ 13 := by decide
  have hne : (461381 : ZMod 2809) ^ 13 ≠ (461378 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 461381 := by decide
  have hB : ¬ 53 ∣ 461378 := by decide
  have hexp :=
    has_exp_one_of_zmod 461378 461381 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 461378 461381 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 461378 461381 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      461378 461381 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      461378 461381 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_461720_461723 :
    HasPrimeWithExpOne (S_val 461720 461723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461720 461723 ∧ ¬ p ∣ (461723 - 461720) ∧
      ∃ (hNotC : ¬ p ∣ 461723) (hNotB : ¬ p ∣ 461720),
        order_of_C_B_inv_mod_p2 461723 461720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 461720 461723 := by
  have hlt : (461720 : Nat) < 461723 := by decide
  have hcop : ¬ 53 ∣ (461723 - 461720) := by decide
  have heq : (461723 : ZMod 53) ^ 13 = (461720 : ZMod 53) ^ 13 := by decide
  have hne : (461723 : ZMod 2809) ^ 13 ≠ (461720 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 461723 := by decide
  have hB : ¬ 53 ∣ 461720 := by decide
  have hexp :=
    has_exp_one_of_zmod 461720 461723 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 461720 461723 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 461720 461723 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      461720 461723 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      461720 461723 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_462065_462068 :
    HasPrimeWithExpOne (S_val 462065 462068) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 462065 462068 ∧ ¬ p ∣ (462068 - 462065) ∧
      ∃ (hNotC : ¬ p ∣ 462068) (hNotB : ¬ p ∣ 462065),
        order_of_C_B_inv_mod_p2 462068 462065 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 462065 462068 := by
  have hlt : (462065 : Nat) < 462068 := by decide
  have hcop : ¬ 313 ∣ (462068 - 462065) := by decide
  have heq : (462068 : ZMod 313) ^ 13 = (462065 : ZMod 313) ^ 13 := by decide
  have hne : (462068 : ZMod 97969) ^ 13 ≠ (462065 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 462068 := by decide
  have hB : ¬ 313 ∣ 462065 := by decide
  have hexp :=
    has_exp_one_of_zmod 462065 462068 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 462065 462068 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 462065 462068 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      462065 462068 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      462065 462068 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_462394_462397 :
    HasPrimeWithExpOne (S_val 462394 462397) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 462394 462397 ∧ ¬ p ∣ (462397 - 462394) ∧
      ∃ (hNotC : ¬ p ∣ 462397) (hNotB : ¬ p ∣ 462394),
        order_of_C_B_inv_mod_p2 462397 462394 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 462394 462397 := by
  have hlt : (462394 : Nat) < 462397 := by decide
  have hcop : ¬ 157 ∣ (462397 - 462394) := by decide
  have heq : (462397 : ZMod 157) ^ 13 = (462394 : ZMod 157) ^ 13 := by decide
  have hne : (462397 : ZMod 24649) ^ 13 ≠ (462394 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 462397 := by decide
  have hB : ¬ 157 ∣ 462394 := by decide
  have hexp :=
    has_exp_one_of_zmod 462394 462397 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 462394 462397 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 462394 462397 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      462394 462397 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      462394 462397 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_462729_462732 :
    HasPrimeWithExpOne (S_val 462729 462732) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 462729 462732 ∧ ¬ p ∣ (462732 - 462729) ∧
      ∃ (hNotC : ¬ p ∣ 462732) (hNotB : ¬ p ∣ 462729),
        order_of_C_B_inv_mod_p2 462732 462729 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 462729 462732 := by
  have hlt : (462729 : Nat) < 462732 := by decide
  have hcop : ¬ 157 ∣ (462732 - 462729) := by decide
  have heq : (462732 : ZMod 157) ^ 13 = (462729 : ZMod 157) ^ 13 := by decide
  have hne : (462732 : ZMod 24649) ^ 13 ≠ (462729 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 462732 := by decide
  have hB : ¬ 157 ∣ 462729 := by decide
  have hexp :=
    has_exp_one_of_zmod 462729 462732 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 462729 462732 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 462729 462732 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      462729 462732 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      462729 462732 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_463043_463046 :
    HasPrimeWithExpOne (S_val 463043 463046) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 463043 463046 ∧ ¬ p ∣ (463046 - 463043) ∧
      ∃ (hNotC : ¬ p ∣ 463046) (hNotB : ¬ p ∣ 463043),
        order_of_C_B_inv_mod_p2 463046 463043 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 463043 463046 := by
  have hlt : (463043 : Nat) < 463046 := by decide
  have hcop : ¬ 157 ∣ (463046 - 463043) := by decide
  have heq : (463046 : ZMod 157) ^ 13 = (463043 : ZMod 157) ^ 13 := by decide
  have hne : (463046 : ZMod 24649) ^ 13 ≠ (463043 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 463046 := by decide
  have hB : ¬ 157 ∣ 463043 := by decide
  have hexp :=
    has_exp_one_of_zmod 463043 463046 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 463043 463046 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 463043 463046 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      463043 463046 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      463043 463046 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_463390_463393 :
    HasPrimeWithExpOne (S_val 463390 463393) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 463390 463393 ∧ ¬ p ∣ (463393 - 463390) ∧
      ∃ (hNotC : ¬ p ∣ 463393) (hNotB : ¬ p ∣ 463390),
        order_of_C_B_inv_mod_p2 463393 463390 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 463390 463393 := by
  have hlt : (463390 : Nat) < 463393 := by decide
  have hcop : ¬ 131 ∣ (463393 - 463390) := by decide
  have heq : (463393 : ZMod 131) ^ 13 = (463390 : ZMod 131) ^ 13 := by decide
  have hne : (463393 : ZMod 17161) ^ 13 ≠ (463390 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 463393 := by decide
  have hB : ¬ 131 ∣ 463390 := by decide
  have hexp :=
    has_exp_one_of_zmod 463390 463393 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 463390 463393 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 463390 463393 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      463390 463393 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      463390 463393 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_463742_463745 :
    HasPrimeWithExpOne (S_val 463742 463745) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 463742 463745 ∧ ¬ p ∣ (463745 - 463742) ∧
      ∃ (hNotC : ¬ p ∣ 463745) (hNotB : ¬ p ∣ 463742),
        order_of_C_B_inv_mod_p2 463745 463742 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 463742 463745 := by
  have hlt : (463742 : Nat) < 463745 := by decide
  have hcop : ¬ 53 ∣ (463745 - 463742) := by decide
  have heq : (463745 : ZMod 53) ^ 13 = (463742 : ZMod 53) ^ 13 := by decide
  have hne : (463745 : ZMod 2809) ^ 13 ≠ (463742 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 463745 := by decide
  have hB : ¬ 53 ∣ 463742 := by decide
  have hexp :=
    has_exp_one_of_zmod 463742 463745 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 463742 463745 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 463742 463745 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      463742 463745 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      463742 463745 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_464076_464079 :
    HasPrimeWithExpOne (S_val 464076 464079) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 464076 464079 ∧ ¬ p ∣ (464079 - 464076) ∧
      ∃ (hNotC : ¬ p ∣ 464079) (hNotB : ¬ p ∣ 464076),
        order_of_C_B_inv_mod_p2 464079 464076 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 464076 464079 := by
  have hlt : (464076 : Nat) < 464079 := by decide
  have hcop : ¬ 131 ∣ (464079 - 464076) := by decide
  have heq : (464079 : ZMod 131) ^ 13 = (464076 : ZMod 131) ^ 13 := by decide
  have hne : (464079 : ZMod 17161) ^ 13 ≠ (464076 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 464079 := by decide
  have hB : ¬ 131 ∣ 464076 := by decide
  have hexp :=
    has_exp_one_of_zmod 464076 464079 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 464076 464079 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 464076 464079 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      464076 464079 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      464076 464079 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_464430_464433 :
    HasPrimeWithExpOne (S_val 464430 464433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 464430 464433 ∧ ¬ p ∣ (464433 - 464430) ∧
      ∃ (hNotC : ¬ p ∣ 464433) (hNotB : ¬ p ∣ 464430),
        order_of_C_B_inv_mod_p2 464433 464430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 464430 464433 := by
  have hlt : (464430 : Nat) < 464433 := by decide
  have hcop : ¬ 53 ∣ (464433 - 464430) := by decide
  have heq : (464433 : ZMod 53) ^ 13 = (464430 : ZMod 53) ^ 13 := by decide
  have hne : (464433 : ZMod 2809) ^ 13 ≠ (464430 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 464433 := by decide
  have hB : ¬ 53 ∣ 464430 := by decide
  have hexp :=
    has_exp_one_of_zmod 464430 464433 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 464430 464433 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 464430 464433 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      464430 464433 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      464430 464433 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_464767_464770 :
    HasPrimeWithExpOne (S_val 464767 464770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 464767 464770 ∧ ¬ p ∣ (464770 - 464767) ∧
      ∃ (hNotC : ¬ p ∣ 464770) (hNotB : ¬ p ∣ 464767),
        order_of_C_B_inv_mod_p2 464770 464767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 464767 464770 := by
  have hlt : (464767 : Nat) < 464770 := by decide
  have hcop : ¬ 53 ∣ (464770 - 464767) := by decide
  have heq : (464770 : ZMod 53) ^ 13 = (464767 : ZMod 53) ^ 13 := by decide
  have hne : (464770 : ZMod 2809) ^ 13 ≠ (464767 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 464770 := by decide
  have hB : ¬ 53 ∣ 464767 := by decide
  have hexp :=
    has_exp_one_of_zmod 464767 464770 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 464767 464770 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 464767 464770 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      464767 464770 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      464767 464770 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_465118_465121 :
    HasPrimeWithExpOne (S_val 465118 465121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 465118 465121 ∧ ¬ p ∣ (465121 - 465118) ∧
      ∃ (hNotC : ¬ p ∣ 465121) (hNotB : ¬ p ∣ 465118),
        order_of_C_B_inv_mod_p2 465121 465118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 465118 465121 := by
  have hlt : (465118 : Nat) < 465121 := by decide
  have hcop : ¬ 131 ∣ (465121 - 465118) := by decide
  have heq : (465121 : ZMod 131) ^ 13 = (465118 : ZMod 131) ^ 13 := by decide
  have hne : (465121 : ZMod 17161) ^ 13 ≠ (465118 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 465121 := by decide
  have hB : ¬ 131 ∣ 465118 := by decide
  have hexp :=
    has_exp_one_of_zmod 465118 465121 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 465118 465121 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 465118 465121 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      465118 465121 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      465118 465121 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_465464_465467 :
    HasPrimeWithExpOne (S_val 465464 465467) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 465464 465467 ∧ ¬ p ∣ (465467 - 465464) ∧
      ∃ (hNotC : ¬ p ∣ 465467) (hNotB : ¬ p ∣ 465464),
        order_of_C_B_inv_mod_p2 465467 465464 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 465464 465467 := by
  have hlt : (465464 : Nat) < 465467 := by decide
  have hcop : ¬ 53 ∣ (465467 - 465464) := by decide
  have heq : (465467 : ZMod 53) ^ 13 = (465464 : ZMod 53) ^ 13 := by decide
  have hne : (465467 : ZMod 2809) ^ 13 ≠ (465464 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 465467 := by decide
  have hB : ¬ 53 ∣ 465464 := by decide
  have hexp :=
    has_exp_one_of_zmod 465464 465467 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 465464 465467 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 465464 465467 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      465464 465467 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      465464 465467 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_465797_465800 :
    HasPrimeWithExpOne (S_val 465797 465800) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 465797 465800 ∧ ¬ p ∣ (465800 - 465797) ∧
      ∃ (hNotC : ¬ p ∣ 465800) (hNotB : ¬ p ∣ 465797),
        order_of_C_B_inv_mod_p2 465800 465797 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 465797 465800 := by
  have hlt : (465797 : Nat) < 465800 := by decide
  have hcop : ¬ 79 ∣ (465800 - 465797) := by decide
  have heq : (465800 : ZMod 79) ^ 13 = (465797 : ZMod 79) ^ 13 := by decide
  have hne : (465800 : ZMod 6241) ^ 13 ≠ (465797 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 465800 := by decide
  have hB : ¬ 79 ∣ 465797 := by decide
  have hexp :=
    has_exp_one_of_zmod 465797 465800 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 465797 465800 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 465797 465800 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      465797 465800 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      465797 465800 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_466134_466137 :
    HasPrimeWithExpOne (S_val 466134 466137) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 466134 466137 ∧ ¬ p ∣ (466137 - 466134) ∧
      ∃ (hNotC : ¬ p ∣ 466137) (hNotB : ¬ p ∣ 466134),
        order_of_C_B_inv_mod_p2 466137 466134 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 466134 466137 := by
  have hlt : (466134 : Nat) < 466137 := by decide
  have hcop : ¬ 79 ∣ (466137 - 466134) := by decide
  have heq : (466137 : ZMod 79) ^ 13 = (466134 : ZMod 79) ^ 13 := by decide
  have hne : (466137 : ZMod 6241) ^ 13 ≠ (466134 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 466137 := by decide
  have hB : ¬ 79 ∣ 466134 := by decide
  have hexp :=
    has_exp_one_of_zmod 466134 466137 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 466134 466137 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 466134 466137 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      466134 466137 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      466134 466137 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_466478_466481 :
    HasPrimeWithExpOne (S_val 466478 466481) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 466478 466481 ∧ ¬ p ∣ (466481 - 466478) ∧
      ∃ (hNotC : ¬ p ∣ 466481) (hNotB : ¬ p ∣ 466478),
        order_of_C_B_inv_mod_p2 466481 466478 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 466478 466481 := by
  have hlt : (466478 : Nat) < 466481 := by decide
  have hcop : ¬ 79 ∣ (466481 - 466478) := by decide
  have heq : (466481 : ZMod 79) ^ 13 = (466478 : ZMod 79) ^ 13 := by decide
  have hne : (466481 : ZMod 6241) ^ 13 ≠ (466478 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 466481 := by decide
  have hB : ¬ 79 ∣ 466478 := by decide
  have hexp :=
    has_exp_one_of_zmod 466478 466481 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 466478 466481 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 466478 466481 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      466478 466481 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      466478 466481 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_466815_466818 :
    HasPrimeWithExpOne (S_val 466815 466818) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 466815 466818 ∧ ¬ p ∣ (466818 - 466815) ∧
      ∃ (hNotC : ¬ p ∣ 466818) (hNotB : ¬ p ∣ 466815),
        order_of_C_B_inv_mod_p2 466818 466815 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 466815 466818 := by
  have hlt : (466815 : Nat) < 466818 := by decide
  have hcop : ¬ 53 ∣ (466818 - 466815) := by decide
  have heq : (466818 : ZMod 53) ^ 13 = (466815 : ZMod 53) ^ 13 := by decide
  have hne : (466818 : ZMod 2809) ^ 13 ≠ (466815 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 466818 := by decide
  have hB : ¬ 53 ∣ 466815 := by decide
  have hexp :=
    has_exp_one_of_zmod 466815 466818 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 466815 466818 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 466815 466818 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      466815 466818 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      466815 466818 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_467138_467141 :
    HasPrimeWithExpOne (S_val 467138 467141) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 467138 467141 ∧ ¬ p ∣ (467141 - 467138) ∧
      ∃ (hNotC : ¬ p ∣ 467141) (hNotB : ¬ p ∣ 467138),
        order_of_C_B_inv_mod_p2 467141 467138 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 467138 467141 := by
  have hlt : (467138 : Nat) < 467141 := by decide
  have hcop : ¬ 157 ∣ (467141 - 467138) := by decide
  have heq : (467141 : ZMod 157) ^ 13 = (467138 : ZMod 157) ^ 13 := by decide
  have hne : (467141 : ZMod 24649) ^ 13 ≠ (467138 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 467141 := by decide
  have hB : ¬ 157 ∣ 467138 := by decide
  have hexp :=
    has_exp_one_of_zmod 467138 467141 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 467138 467141 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 467138 467141 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      467138 467141 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      467138 467141 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_467469_467472 :
    HasPrimeWithExpOne (S_val 467469 467472) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 467469 467472 ∧ ¬ p ∣ (467472 - 467469) ∧
      ∃ (hNotC : ¬ p ∣ 467472) (hNotB : ¬ p ∣ 467469),
        order_of_C_B_inv_mod_p2 467472 467469 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 467469 467472 := by
  have hlt : (467469 : Nat) < 467472 := by decide
  have hcop : ¬ 521 ∣ (467472 - 467469) := by decide
  have heq : (467472 : ZMod 521) ^ 13 = (467469 : ZMod 521) ^ 13 := by decide
  have hne : (467472 : ZMod 271441) ^ 13 ≠ (467469 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 467472 := by decide
  have hB : ¬ 521 ∣ 467469 := by decide
  have hexp :=
    has_exp_one_of_zmod 467469 467472 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 467469 467472 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 467469 467472 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      467469 467472 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      467469 467472 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_467812_467815 :
    HasPrimeWithExpOne (S_val 467812 467815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 467812 467815 ∧ ¬ p ∣ (467815 - 467812) ∧
      ∃ (hNotC : ¬ p ∣ 467815) (hNotB : ¬ p ∣ 467812),
        order_of_C_B_inv_mod_p2 467815 467812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 467812 467815 := by
  have hlt : (467812 : Nat) < 467815 := by decide
  have hcop : ¬ 79 ∣ (467815 - 467812) := by decide
  have heq : (467815 : ZMod 79) ^ 13 = (467812 : ZMod 79) ^ 13 := by decide
  have hne : (467815 : ZMod 6241) ^ 13 ≠ (467812 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 467815 := by decide
  have hB : ¬ 79 ∣ 467812 := by decide
  have hexp :=
    has_exp_one_of_zmod 467812 467815 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 467812 467815 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 467812 467815 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      467812 467815 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      467812 467815 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_468153_468156 :
    HasPrimeWithExpOne (S_val 468153 468156) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 468153 468156 ∧ ¬ p ∣ (468156 - 468153) ∧
      ∃ (hNotC : ¬ p ∣ 468156) (hNotB : ¬ p ∣ 468153),
        order_of_C_B_inv_mod_p2 468156 468153 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 468153 468156 := by
  have hlt : (468153 : Nat) < 468156 := by decide
  have hcop : ¬ 53 ∣ (468156 - 468153) := by decide
  have heq : (468156 : ZMod 53) ^ 13 = (468153 : ZMod 53) ^ 13 := by decide
  have hne : (468156 : ZMod 2809) ^ 13 ≠ (468153 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 468156 := by decide
  have hB : ¬ 53 ∣ 468153 := by decide
  have hexp :=
    has_exp_one_of_zmod 468153 468156 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 468153 468156 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 468153 468156 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      468153 468156 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      468153 468156 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_468488_468491 :
    HasPrimeWithExpOne (S_val 468488 468491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 468488 468491 ∧ ¬ p ∣ (468491 - 468488) ∧
      ∃ (hNotC : ¬ p ∣ 468491) (hNotB : ¬ p ∣ 468488),
        order_of_C_B_inv_mod_p2 468491 468488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 468488 468491 := by
  have hlt : (468488 : Nat) < 468491 := by decide
  have hcop : ¬ 79 ∣ (468491 - 468488) := by decide
  have heq : (468491 : ZMod 79) ^ 13 = (468488 : ZMod 79) ^ 13 := by decide
  have hne : (468491 : ZMod 6241) ^ 13 ≠ (468488 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 468491 := by decide
  have hB : ¬ 79 ∣ 468488 := by decide
  have hexp :=
    has_exp_one_of_zmod 468488 468491 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 468488 468491 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 468488 468491 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      468488 468491 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      468488 468491 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_468821_468824 :
    HasPrimeWithExpOne (S_val 468821 468824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 468821 468824 ∧ ¬ p ∣ (468824 - 468821) ∧
      ∃ (hNotC : ¬ p ∣ 468824) (hNotB : ¬ p ∣ 468821),
        order_of_C_B_inv_mod_p2 468824 468821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 468821 468824 := by
  have hlt : (468821 : Nat) < 468824 := by decide
  have hcop : ¬ 547 ∣ (468824 - 468821) := by decide
  have heq : (468824 : ZMod 547) ^ 13 = (468821 : ZMod 547) ^ 13 := by decide
  have hne : (468824 : ZMod 299209) ^ 13 ≠ (468821 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 468824 := by decide
  have hB : ¬ 547 ∣ 468821 := by decide
  have hexp :=
    has_exp_one_of_zmod 468821 468824 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 468821 468824 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 468821 468824 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      468821 468824 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      468821 468824 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_469165_469168 :
    HasPrimeWithExpOne (S_val 469165 469168) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 469165 469168 ∧ ¬ p ∣ (469168 - 469165) ∧
      ∃ (hNotC : ¬ p ∣ 469168) (hNotB : ¬ p ∣ 469165),
        order_of_C_B_inv_mod_p2 469168 469165 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 469165 469168 := by
  have hlt : (469165 : Nat) < 469168 := by decide
  have hcop : ¬ 79 ∣ (469168 - 469165) := by decide
  have heq : (469168 : ZMod 79) ^ 13 = (469165 : ZMod 79) ^ 13 := by decide
  have hne : (469168 : ZMod 6241) ^ 13 ≠ (469165 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 469168 := by decide
  have hB : ¬ 79 ∣ 469165 := by decide
  have hexp :=
    has_exp_one_of_zmod 469165 469168 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 469165 469168 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 469165 469168 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      469165 469168 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      469165 469168 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_469482_469485 :
    HasPrimeWithExpOne (S_val 469482 469485) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 469482 469485 ∧ ¬ p ∣ (469485 - 469482) ∧
      ∃ (hNotC : ¬ p ∣ 469485) (hNotB : ¬ p ∣ 469482),
        order_of_C_B_inv_mod_p2 469485 469482 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 469482 469485 := by
  have hlt : (469482 : Nat) < 469485 := by decide
  have hcop : ¬ 79 ∣ (469485 - 469482) := by decide
  have heq : (469485 : ZMod 79) ^ 13 = (469482 : ZMod 79) ^ 13 := by decide
  have hne : (469485 : ZMod 6241) ^ 13 ≠ (469482 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 469485 := by decide
  have hB : ¬ 79 ∣ 469482 := by decide
  have hexp :=
    has_exp_one_of_zmod 469482 469485 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 469482 469485 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 469482 469485 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      469482 469485 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      469482 469485 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_469828_469831 :
    HasPrimeWithExpOne (S_val 469828 469831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 469828 469831 ∧ ¬ p ∣ (469831 - 469828) ∧
      ∃ (hNotC : ¬ p ∣ 469831) (hNotB : ¬ p ∣ 469828),
        order_of_C_B_inv_mod_p2 469831 469828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 469828 469831 := by
  have hlt : (469828 : Nat) < 469831 := by decide
  have hcop : ¬ 157 ∣ (469831 - 469828) := by decide
  have heq : (469831 : ZMod 157) ^ 13 = (469828 : ZMod 157) ^ 13 := by decide
  have hne : (469831 : ZMod 24649) ^ 13 ≠ (469828 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 469831 := by decide
  have hB : ¬ 157 ∣ 469828 := by decide
  have hexp :=
    has_exp_one_of_zmod 469828 469831 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 469828 469831 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 469828 469831 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      469828 469831 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      469828 469831 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_470167_470170 :
    HasPrimeWithExpOne (S_val 470167 470170) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 470167 470170 ∧ ¬ p ∣ (470170 - 470167) ∧
      ∃ (hNotC : ¬ p ∣ 470170) (hNotB : ¬ p ∣ 470167),
        order_of_C_B_inv_mod_p2 470170 470167 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 470167 470170 := by
  have hlt : (470167 : Nat) < 470170 := by decide
  have hcop : ¬ 53 ∣ (470170 - 470167) := by decide
  have heq : (470170 : ZMod 53) ^ 13 = (470167 : ZMod 53) ^ 13 := by decide
  have hne : (470170 : ZMod 2809) ^ 13 ≠ (470167 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 470170 := by decide
  have hB : ¬ 53 ∣ 470167 := by decide
  have hexp :=
    has_exp_one_of_zmod 470167 470170 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 470167 470170 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 470167 470170 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      470167 470170 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      470167 470170 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_470498_470501 :
    HasPrimeWithExpOne (S_val 470498 470501) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 470498 470501 ∧ ¬ p ∣ (470501 - 470498) ∧
      ∃ (hNotC : ¬ p ∣ 470501) (hNotB : ¬ p ∣ 470498),
        order_of_C_B_inv_mod_p2 470501 470498 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 470498 470501 := by
  have hlt : (470498 : Nat) < 470501 := by decide
  have hcop : ¬ 79 ∣ (470501 - 470498) := by decide
  have heq : (470501 : ZMod 79) ^ 13 = (470498 : ZMod 79) ^ 13 := by decide
  have hne : (470501 : ZMod 6241) ^ 13 ≠ (470498 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 470501 := by decide
  have hB : ¬ 79 ∣ 470498 := by decide
  have hexp :=
    has_exp_one_of_zmod 470498 470501 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 470498 470501 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 470498 470501 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      470498 470501 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      470498 470501 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_470829_470832 :
    HasPrimeWithExpOne (S_val 470829 470832) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 470829 470832 ∧ ¬ p ∣ (470832 - 470829) ∧
      ∃ (hNotC : ¬ p ∣ 470832) (hNotB : ¬ p ∣ 470829),
        order_of_C_B_inv_mod_p2 470832 470829 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 470829 470832 := by
  have hlt : (470829 : Nat) < 470832 := by decide
  have hcop : ¬ 313 ∣ (470832 - 470829) := by decide
  have heq : (470832 : ZMod 313) ^ 13 = (470829 : ZMod 313) ^ 13 := by decide
  have hne : (470832 : ZMod 97969) ^ 13 ≠ (470829 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 470832 := by decide
  have hB : ¬ 313 ∣ 470829 := by decide
  have hexp :=
    has_exp_one_of_zmod 470829 470832 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 470829 470832 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 470829 470832 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      470829 470832 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      470829 470832 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_471150_471153 :
    HasPrimeWithExpOne (S_val 471150 471153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 471150 471153 ∧ ¬ p ∣ (471153 - 471150) ∧
      ∃ (hNotC : ¬ p ∣ 471153) (hNotB : ¬ p ∣ 471150),
        order_of_C_B_inv_mod_p2 471153 471150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 471150 471153 := by
  have hlt : (471150 : Nat) < 471153 := by decide
  have hcop : ¬ 131 ∣ (471153 - 471150) := by decide
  have heq : (471153 : ZMod 131) ^ 13 = (471150 : ZMod 131) ^ 13 := by decide
  have hne : (471153 : ZMod 17161) ^ 13 ≠ (471150 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 471153 := by decide
  have hB : ¬ 131 ∣ 471150 := by decide
  have hexp :=
    has_exp_one_of_zmod 471150 471153 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 471150 471153 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 471150 471153 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      471150 471153 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      471150 471153 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_471495_471498 :
    HasPrimeWithExpOne (S_val 471495 471498) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 471495 471498 ∧ ¬ p ∣ (471498 - 471495) ∧
      ∃ (hNotC : ¬ p ∣ 471498) (hNotB : ¬ p ∣ 471495),
        order_of_C_B_inv_mod_p2 471498 471495 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 471495 471498 := by
  have hlt : (471495 : Nat) < 471498 := by decide
  have hcop : ¬ 79 ∣ (471498 - 471495) := by decide
  have heq : (471498 : ZMod 79) ^ 13 = (471495 : ZMod 79) ^ 13 := by decide
  have hne : (471498 : ZMod 6241) ^ 13 ≠ (471495 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 471498 := by decide
  have hB : ¬ 79 ∣ 471495 := by decide
  have hexp :=
    has_exp_one_of_zmod 471495 471498 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 471495 471498 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 471495 471498 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      471495 471498 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      471495 471498 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_471818_471821 :
    HasPrimeWithExpOne (S_val 471818 471821) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 471818 471821 ∧ ¬ p ∣ (471821 - 471818) ∧
      ∃ (hNotC : ¬ p ∣ 471821) (hNotB : ¬ p ∣ 471818),
        order_of_C_B_inv_mod_p2 471821 471818 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 471818 471821 := by
  have hlt : (471818 : Nat) < 471821 := by decide
  have hcop : ¬ 157 ∣ (471821 - 471818) := by decide
  have heq : (471821 : ZMod 157) ^ 13 = (471818 : ZMod 157) ^ 13 := by decide
  have hne : (471821 : ZMod 24649) ^ 13 ≠ (471818 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 471821 := by decide
  have hB : ¬ 157 ∣ 471818 := by decide
  have hexp :=
    has_exp_one_of_zmod 471818 471821 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 471818 471821 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 471818 471821 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      471818 471821 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      471818 471821 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_472181_472184 :
    HasPrimeWithExpOne (S_val 472181 472184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472181 472184 ∧ ¬ p ∣ (472184 - 472181) ∧
      ∃ (hNotC : ¬ p ∣ 472184) (hNotB : ¬ p ∣ 472181),
        order_of_C_B_inv_mod_p2 472184 472181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 472181 472184 := by
  have hlt : (472181 : Nat) < 472184 := by decide
  have hcop : ¬ 53 ∣ (472184 - 472181) := by decide
  have heq : (472184 : ZMod 53) ^ 13 = (472181 : ZMod 53) ^ 13 := by decide
  have hne : (472184 : ZMod 2809) ^ 13 ≠ (472181 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 472184 := by decide
  have hB : ¬ 53 ∣ 472181 := by decide
  have hexp :=
    has_exp_one_of_zmod 472181 472184 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 472181 472184 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 472181 472184 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      472181 472184 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      472181 472184 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_472532_472535 :
    HasPrimeWithExpOne (S_val 472532 472535) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472532 472535 ∧ ¬ p ∣ (472535 - 472532) ∧
      ∃ (hNotC : ¬ p ∣ 472535) (hNotB : ¬ p ∣ 472532),
        order_of_C_B_inv_mod_p2 472535 472532 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 472532 472535 := by
  have hlt : (472532 : Nat) < 472535 := by decide
  have hcop : ¬ 53 ∣ (472535 - 472532) := by decide
  have heq : (472535 : ZMod 53) ^ 13 = (472532 : ZMod 53) ^ 13 := by decide
  have hne : (472535 : ZMod 2809) ^ 13 ≠ (472532 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 472535 := by decide
  have hB : ¬ 53 ∣ 472532 := by decide
  have hexp :=
    has_exp_one_of_zmod 472532 472535 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 472532 472535 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 472532 472535 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      472532 472535 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      472532 472535 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_472849_472852 :
    HasPrimeWithExpOne (S_val 472849 472852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472849 472852 ∧ ¬ p ∣ (472852 - 472849) ∧
      ∃ (hNotC : ¬ p ∣ 472852) (hNotB : ¬ p ∣ 472849),
        order_of_C_B_inv_mod_p2 472852 472849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 472849 472852 := by
  have hlt : (472849 : Nat) < 472852 := by decide
  have hcop : ¬ 79 ∣ (472852 - 472849) := by decide
  have heq : (472852 : ZMod 79) ^ 13 = (472849 : ZMod 79) ^ 13 := by decide
  have hne : (472852 : ZMod 6241) ^ 13 ≠ (472849 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 472852 := by decide
  have hB : ¬ 79 ∣ 472849 := by decide
  have hexp :=
    has_exp_one_of_zmod 472849 472852 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 472849 472852 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 472849 472852 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      472849 472852 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      472849 472852 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_473193_473196 :
    HasPrimeWithExpOne (S_val 473193 473196) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 473193 473196 ∧ ¬ p ∣ (473196 - 473193) ∧
      ∃ (hNotC : ¬ p ∣ 473196) (hNotB : ¬ p ∣ 473193),
        order_of_C_B_inv_mod_p2 473196 473193 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 473193 473196 := by
  have hlt : (473193 : Nat) < 473196 := by decide
  have hcop : ¬ 79 ∣ (473196 - 473193) := by decide
  have heq : (473196 : ZMod 79) ^ 13 = (473193 : ZMod 79) ^ 13 := by decide
  have hne : (473196 : ZMod 6241) ^ 13 ≠ (473193 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 473196 := by decide
  have hB : ¬ 79 ∣ 473193 := by decide
  have hexp :=
    has_exp_one_of_zmod 473193 473196 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 473193 473196 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 473193 473196 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      473193 473196 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      473193 473196 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_473520_473523 :
    HasPrimeWithExpOne (S_val 473520 473523) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 473520 473523 ∧ ¬ p ∣ (473523 - 473520) ∧
      ∃ (hNotC : ¬ p ∣ 473523) (hNotB : ¬ p ∣ 473520),
        order_of_C_B_inv_mod_p2 473523 473520 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 473520 473523 := by
  have hlt : (473520 : Nat) < 473523 := by decide
  have hcop : ¬ 53 ∣ (473523 - 473520) := by decide
  have heq : (473523 : ZMod 53) ^ 13 = (473520 : ZMod 53) ^ 13 := by decide
  have hne : (473523 : ZMod 2809) ^ 13 ≠ (473520 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 473523 := by decide
  have hB : ¬ 53 ∣ 473520 := by decide
  have hexp :=
    has_exp_one_of_zmod 473520 473523 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 473520 473523 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 473520 473523 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      473520 473523 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      473520 473523 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_473853_473856 :
    HasPrimeWithExpOne (S_val 473853 473856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 473853 473856 ∧ ¬ p ∣ (473856 - 473853) ∧
      ∃ (hNotC : ¬ p ∣ 473856) (hNotB : ¬ p ∣ 473853),
        order_of_C_B_inv_mod_p2 473856 473853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 473853 473856 := by
  have hlt : (473853 : Nat) < 473856 := by decide
  have hcop : ¬ 443 ∣ (473856 - 473853) := by decide
  have heq : (473856 : ZMod 443) ^ 13 = (473853 : ZMod 443) ^ 13 := by decide
  have hne : (473856 : ZMod 196249) ^ 13 ≠ (473853 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 473856 := by decide
  have hB : ¬ 443 ∣ 473853 := by decide
  have hexp :=
    has_exp_one_of_zmod 473853 473856 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 473853 473856 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 473853 473856 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      473853 473856 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      473853 473856 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_474181_474184 :
    HasPrimeWithExpOne (S_val 474181 474184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 474181 474184 ∧ ¬ p ∣ (474184 - 474181) ∧
      ∃ (hNotC : ¬ p ∣ 474184) (hNotB : ¬ p ∣ 474181),
        order_of_C_B_inv_mod_p2 474184 474181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 474181 474184 := by
  have hlt : (474181 : Nat) < 474184 := by decide
  have hcop : ¬ 79 ∣ (474184 - 474181) := by decide
  have heq : (474184 : ZMod 79) ^ 13 = (474181 : ZMod 79) ^ 13 := by decide
  have hne : (474184 : ZMod 6241) ^ 13 ≠ (474181 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 474184 := by decide
  have hB : ¬ 79 ∣ 474181 := by decide
  have hexp :=
    has_exp_one_of_zmod 474181 474184 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 474181 474184 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 474181 474184 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      474181 474184 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      474181 474184 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_474500_474503 :
    HasPrimeWithExpOne (S_val 474500 474503) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 474500 474503 ∧ ¬ p ∣ (474503 - 474500) ∧
      ∃ (hNotC : ¬ p ∣ 474503) (hNotB : ¬ p ∣ 474500),
        order_of_C_B_inv_mod_p2 474503 474500 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 474500 474503 := by
  have hlt : (474500 : Nat) < 474503 := by decide
  have hcop : ¬ 53 ∣ (474503 - 474500) := by decide
  have heq : (474503 : ZMod 53) ^ 13 = (474500 : ZMod 53) ^ 13 := by decide
  have hne : (474503 : ZMod 2809) ^ 13 ≠ (474500 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 474503 := by decide
  have hB : ¬ 53 ∣ 474500 := by decide
  have hexp :=
    has_exp_one_of_zmod 474500 474503 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 474500 474503 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 474500 474503 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      474500 474503 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      474500 474503 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_474840_474843 :
    HasPrimeWithExpOne (S_val 474840 474843) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 474840 474843 ∧ ¬ p ∣ (474843 - 474840) ∧
      ∃ (hNotC : ¬ p ∣ 474843) (hNotB : ¬ p ∣ 474840),
        order_of_C_B_inv_mod_p2 474843 474840 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 474840 474843 := by
  have hlt : (474840 : Nat) < 474843 := by decide
  have hcop : ¬ 53 ∣ (474843 - 474840) := by decide
  have heq : (474843 : ZMod 53) ^ 13 = (474840 : ZMod 53) ^ 13 := by decide
  have hne : (474843 : ZMod 2809) ^ 13 ≠ (474840 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 474843 := by decide
  have hB : ¬ 53 ∣ 474840 := by decide
  have hexp :=
    has_exp_one_of_zmod 474840 474843 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 474840 474843 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 474840 474843 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      474840 474843 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      474840 474843 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_475168_475171 :
    HasPrimeWithExpOne (S_val 475168 475171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 475168 475171 ∧ ¬ p ∣ (475171 - 475168) ∧
      ∃ (hNotC : ¬ p ∣ 475171) (hNotB : ¬ p ∣ 475168),
        order_of_C_B_inv_mod_p2 475171 475168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 475168 475171 := by
  have hlt : (475168 : Nat) < 475171 := by decide
  have hcop : ¬ 79 ∣ (475171 - 475168) := by decide
  have heq : (475171 : ZMod 79) ^ 13 = (475168 : ZMod 79) ^ 13 := by decide
  have hne : (475171 : ZMod 6241) ^ 13 ≠ (475168 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 475171 := by decide
  have hB : ¬ 79 ∣ 475168 := by decide
  have hexp :=
    has_exp_one_of_zmod 475168 475171 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 475168 475171 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 475168 475171 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      475168 475171 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      475168 475171 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_475489_475492 :
    HasPrimeWithExpOne (S_val 475489 475492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 475489 475492 ∧ ¬ p ∣ (475492 - 475489) ∧
      ∃ (hNotC : ¬ p ∣ 475492) (hNotB : ¬ p ∣ 475489),
        order_of_C_B_inv_mod_p2 475492 475489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 475489 475492 := by
  have hlt : (475489 : Nat) < 475492 := by decide
  have hcop : ¬ 131 ∣ (475492 - 475489) := by decide
  have heq : (475492 : ZMod 131) ^ 13 = (475489 : ZMod 131) ^ 13 := by decide
  have hne : (475492 : ZMod 17161) ^ 13 ≠ (475489 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 475492 := by decide
  have hB : ¬ 131 ∣ 475489 := by decide
  have hexp :=
    has_exp_one_of_zmod 475489 475492 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 475489 475492 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 475489 475492 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      475489 475492 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      475489 475492 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_475830_475833 :
    HasPrimeWithExpOne (S_val 475830 475833) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 475830 475833 ∧ ¬ p ∣ (475833 - 475830) ∧
      ∃ (hNotC : ¬ p ∣ 475833) (hNotB : ¬ p ∣ 475830),
        order_of_C_B_inv_mod_p2 475833 475830 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 475830 475833 := by
  have hlt : (475830 : Nat) < 475833 := by decide
  have hcop : ¬ 79 ∣ (475833 - 475830) := by decide
  have heq : (475833 : ZMod 79) ^ 13 = (475830 : ZMod 79) ^ 13 := by decide
  have hne : (475833 : ZMod 6241) ^ 13 ≠ (475830 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 475833 := by decide
  have hB : ¬ 79 ∣ 475830 := by decide
  have hexp :=
    has_exp_one_of_zmod 475830 475833 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 475830 475833 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 475830 475833 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      475830 475833 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      475830 475833 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_476158_476161 :
    HasPrimeWithExpOne (S_val 476158 476161) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 476158 476161 ∧ ¬ p ∣ (476161 - 476158) ∧
      ∃ (hNotC : ¬ p ∣ 476161) (hNotB : ¬ p ∣ 476158),
        order_of_C_B_inv_mod_p2 476161 476158 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 476158 476161 := by
  have hlt : (476158 : Nat) < 476161 := by decide
  have hcop : ¬ 53 ∣ (476161 - 476158) := by decide
  have heq : (476161 : ZMod 53) ^ 13 = (476158 : ZMod 53) ^ 13 := by decide
  have hne : (476161 : ZMod 2809) ^ 13 ≠ (476158 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 476161 := by decide
  have hB : ¬ 53 ∣ 476158 := by decide
  have hexp :=
    has_exp_one_of_zmod 476158 476161 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 476158 476161 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 476158 476161 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      476158 476161 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      476158 476161 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_476510_476513 :
    HasPrimeWithExpOne (S_val 476510 476513) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 476510 476513 ∧ ¬ p ∣ (476513 - 476510) ∧
      ∃ (hNotC : ¬ p ∣ 476513) (hNotB : ¬ p ∣ 476510),
        order_of_C_B_inv_mod_p2 476513 476510 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 476510 476513 := by
  have hlt : (476510 : Nat) < 476513 := by decide
  have hcop : ¬ 53 ∣ (476513 - 476510) := by decide
  have heq : (476513 : ZMod 53) ^ 13 = (476510 : ZMod 53) ^ 13 := by decide
  have hne : (476513 : ZMod 2809) ^ 13 ≠ (476510 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 476513 := by decide
  have hB : ¬ 53 ∣ 476510 := by decide
  have hexp :=
    has_exp_one_of_zmod 476510 476513 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 476510 476513 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 476510 476513 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      476510 476513 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      476510 476513 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_476842_476845 :
    HasPrimeWithExpOne (S_val 476842 476845) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 476842 476845 ∧ ¬ p ∣ (476845 - 476842) ∧
      ∃ (hNotC : ¬ p ∣ 476845) (hNotB : ¬ p ∣ 476842),
        order_of_C_B_inv_mod_p2 476845 476842 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 476842 476845 := by
  have hlt : (476842 : Nat) < 476845 := by decide
  have hcop : ¬ 157 ∣ (476845 - 476842) := by decide
  have heq : (476845 : ZMod 157) ^ 13 = (476842 : ZMod 157) ^ 13 := by decide
  have hne : (476845 : ZMod 24649) ^ 13 ≠ (476842 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 476845 := by decide
  have hB : ¬ 157 ∣ 476842 := by decide
  have hexp :=
    has_exp_one_of_zmod 476842 476845 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 476842 476845 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 476842 476845 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      476842 476845 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      476842 476845 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_477183_477186 :
    HasPrimeWithExpOne (S_val 477183 477186) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 477183 477186 ∧ ¬ p ∣ (477186 - 477183) ∧
      ∃ (hNotC : ¬ p ∣ 477186) (hNotB : ¬ p ∣ 477183),
        order_of_C_B_inv_mod_p2 477186 477183 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 477183 477186 := by
  have hlt : (477183 : Nat) < 477186 := by decide
  have hcop : ¬ 79 ∣ (477186 - 477183) := by decide
  have heq : (477186 : ZMod 79) ^ 13 = (477183 : ZMod 79) ^ 13 := by decide
  have hne : (477186 : ZMod 6241) ^ 13 ≠ (477183 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 477186 := by decide
  have hB : ¬ 79 ∣ 477183 := by decide
  have hexp :=
    has_exp_one_of_zmod 477183 477186 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 477183 477186 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 477183 477186 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      477183 477186 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      477183 477186 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_477518_477521 :
    HasPrimeWithExpOne (S_val 477518 477521) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 477518 477521 ∧ ¬ p ∣ (477521 - 477518) ∧
      ∃ (hNotC : ¬ p ∣ 477521) (hNotB : ¬ p ∣ 477518),
        order_of_C_B_inv_mod_p2 477521 477518 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 477518 477521 := by
  have hlt : (477518 : Nat) < 477521 := by decide
  have hcop : ¬ 79 ∣ (477521 - 477518) := by decide
  have heq : (477521 : ZMod 79) ^ 13 = (477518 : ZMod 79) ^ 13 := by decide
  have hne : (477521 : ZMod 6241) ^ 13 ≠ (477518 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 477521 := by decide
  have hB : ¬ 79 ∣ 477518 := by decide
  have hexp :=
    has_exp_one_of_zmod 477518 477521 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 477518 477521 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 477518 477521 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      477518 477521 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      477518 477521 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_477854_477857 :
    HasPrimeWithExpOne (S_val 477854 477857) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 477854 477857 ∧ ¬ p ∣ (477857 - 477854) ∧
      ∃ (hNotC : ¬ p ∣ 477857) (hNotB : ¬ p ∣ 477854),
        order_of_C_B_inv_mod_p2 477857 477854 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 477854 477857 := by
  have hlt : (477854 : Nat) < 477857 := by decide
  have hcop : ¬ 53 ∣ (477857 - 477854) := by decide
  have heq : (477857 : ZMod 53) ^ 13 = (477854 : ZMod 53) ^ 13 := by decide
  have hne : (477857 : ZMod 2809) ^ 13 ≠ (477854 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 477857 := by decide
  have hB : ¬ 53 ∣ 477854 := by decide
  have hexp :=
    has_exp_one_of_zmod 477854 477857 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 477854 477857 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 477854 477857 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      477854 477857 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      477854 477857 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_478204_478207 :
    HasPrimeWithExpOne (S_val 478204 478207) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 478204 478207 ∧ ¬ p ∣ (478207 - 478204) ∧
      ∃ (hNotC : ¬ p ∣ 478207) (hNotB : ¬ p ∣ 478204),
        order_of_C_B_inv_mod_p2 478207 478204 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 478204 478207 := by
  have hlt : (478204 : Nat) < 478207 := by decide
  have hcop : ¬ 131 ∣ (478207 - 478204) := by decide
  have heq : (478207 : ZMod 131) ^ 13 = (478204 : ZMod 131) ^ 13 := by decide
  have hne : (478207 : ZMod 17161) ^ 13 ≠ (478204 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 478207 := by decide
  have hB : ¬ 131 ∣ 478204 := by decide
  have hexp :=
    has_exp_one_of_zmod 478204 478207 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 478204 478207 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 478204 478207 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      478204 478207 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      478204 478207 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_478545_478548 :
    HasPrimeWithExpOne (S_val 478545 478548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 478545 478548 ∧ ¬ p ∣ (478548 - 478545) ∧
      ∃ (hNotC : ¬ p ∣ 478548) (hNotB : ¬ p ∣ 478545),
        order_of_C_B_inv_mod_p2 478548 478545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 478545 478548 := by
  have hlt : (478545 : Nat) < 478548 := by decide
  have hcop : ¬ 79 ∣ (478548 - 478545) := by decide
  have heq : (478548 : ZMod 79) ^ 13 = (478545 : ZMod 79) ^ 13 := by decide
  have hne : (478548 : ZMod 6241) ^ 13 ≠ (478545 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 478548 := by decide
  have hB : ¬ 79 ∣ 478545 := by decide
  have hexp :=
    has_exp_one_of_zmod 478545 478548 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 478545 478548 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 478545 478548 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      478545 478548 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      478545 478548 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_478873_478876 :
    HasPrimeWithExpOne (S_val 478873 478876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 478873 478876 ∧ ¬ p ∣ (478876 - 478873) ∧
      ∃ (hNotC : ¬ p ∣ 478876) (hNotB : ¬ p ∣ 478873),
        order_of_C_B_inv_mod_p2 478876 478873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 478873 478876 := by
  have hlt : (478873 : Nat) < 478876 := by decide
  have hcop : ¬ 53 ∣ (478876 - 478873) := by decide
  have heq : (478876 : ZMod 53) ^ 13 = (478873 : ZMod 53) ^ 13 := by decide
  have hne : (478876 : ZMod 2809) ^ 13 ≠ (478873 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 478876 := by decide
  have hB : ¬ 53 ∣ 478873 := by decide
  have hexp :=
    has_exp_one_of_zmod 478873 478876 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 478873 478876 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 478873 478876 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      478873 478876 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      478873 478876 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_479207_479210 :
    HasPrimeWithExpOne (S_val 479207 479210) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 479207 479210 ∧ ¬ p ∣ (479210 - 479207) ∧
      ∃ (hNotC : ¬ p ∣ 479210) (hNotB : ¬ p ∣ 479207),
        order_of_C_B_inv_mod_p2 479210 479207 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 479207 479210 := by
  have hlt : (479207 : Nat) < 479210 := by decide
  have hcop : ¬ 131 ∣ (479210 - 479207) := by decide
  have heq : (479210 : ZMod 131) ^ 13 = (479207 : ZMod 131) ^ 13 := by decide
  have hne : (479210 : ZMod 17161) ^ 13 ≠ (479207 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 479210 := by decide
  have hB : ¬ 131 ∣ 479207 := by decide
  have hexp :=
    has_exp_one_of_zmod 479207 479210 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 479207 479210 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 479207 479210 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      479207 479210 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      479207 479210 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_479549_479552 :
    HasPrimeWithExpOne (S_val 479549 479552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 479549 479552 ∧ ¬ p ∣ (479552 - 479549) ∧
      ∃ (hNotC : ¬ p ∣ 479552) (hNotB : ¬ p ∣ 479549),
        order_of_C_B_inv_mod_p2 479552 479549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 479549 479552 := by
  have hlt : (479549 : Nat) < 479552 := by decide
  have hcop : ¬ 53 ∣ (479552 - 479549) := by decide
  have heq : (479552 : ZMod 53) ^ 13 = (479549 : ZMod 53) ^ 13 := by decide
  have hne : (479552 : ZMod 2809) ^ 13 ≠ (479549 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 479552 := by decide
  have hB : ¬ 53 ∣ 479549 := by decide
  have hexp :=
    has_exp_one_of_zmod 479549 479552 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 479549 479552 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 479549 479552 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      479549 479552 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      479549 479552 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_479862_479865 :
    HasPrimeWithExpOne (S_val 479862 479865) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 479862 479865 ∧ ¬ p ∣ (479865 - 479862) ∧
      ∃ (hNotC : ¬ p ∣ 479865) (hNotB : ¬ p ∣ 479862),
        order_of_C_B_inv_mod_p2 479865 479862 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 479862 479865 := by
  have hlt : (479862 : Nat) < 479865 := by decide
  have hcop : ¬ 131 ∣ (479865 - 479862) := by decide
  have heq : (479865 : ZMod 131) ^ 13 = (479862 : ZMod 131) ^ 13 := by decide
  have hne : (479865 : ZMod 17161) ^ 13 ≠ (479862 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 479865 := by decide
  have hB : ¬ 131 ∣ 479862 := by decide
  have hexp :=
    has_exp_one_of_zmod 479862 479865 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 479862 479865 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 479862 479865 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      479862 479865 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      479862 479865 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_480215_480218 :
    HasPrimeWithExpOne (S_val 480215 480218) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 480215 480218 ∧ ¬ p ∣ (480218 - 480215) ∧
      ∃ (hNotC : ¬ p ∣ 480218) (hNotB : ¬ p ∣ 480215),
        order_of_C_B_inv_mod_p2 480218 480215 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 480215 480218 := by
  have hlt : (480215 : Nat) < 480218 := by decide
  have hcop : ¬ 79 ∣ (480218 - 480215) := by decide
  have heq : (480218 : ZMod 79) ^ 13 = (480215 : ZMod 79) ^ 13 := by decide
  have hne : (480218 : ZMod 6241) ^ 13 ≠ (480215 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 480218 := by decide
  have hB : ¬ 79 ∣ 480215 := by decide
  have hexp :=
    has_exp_one_of_zmod 480215 480218 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 480215 480218 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 480215 480218 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      480215 480218 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      480215 480218 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_480545_480548 :
    HasPrimeWithExpOne (S_val 480545 480548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 480545 480548 ∧ ¬ p ∣ (480548 - 480545) ∧
      ∃ (hNotC : ¬ p ∣ 480548) (hNotB : ¬ p ∣ 480545),
        order_of_C_B_inv_mod_p2 480548 480545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 480545 480548 := by
  have hlt : (480545 : Nat) < 480548 := by decide
  have hcop : ¬ 157 ∣ (480548 - 480545) := by decide
  have heq : (480548 : ZMod 157) ^ 13 = (480545 : ZMod 157) ^ 13 := by decide
  have hne : (480548 : ZMod 24649) ^ 13 ≠ (480545 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 480548 := by decide
  have hB : ¬ 157 ∣ 480545 := by decide
  have hexp :=
    has_exp_one_of_zmod 480545 480548 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 480545 480548 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 480545 480548 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      480545 480548 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      480545 480548 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_480871_480874 :
    HasPrimeWithExpOne (S_val 480871 480874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 480871 480874 ∧ ¬ p ∣ (480874 - 480871) ∧
      ∃ (hNotC : ¬ p ∣ 480874) (hNotB : ¬ p ∣ 480871),
        order_of_C_B_inv_mod_p2 480874 480871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 480871 480874 := by
  have hlt : (480871 : Nat) < 480874 := by decide
  have hcop : ¬ 547 ∣ (480874 - 480871) := by decide
  have heq : (480874 : ZMod 547) ^ 13 = (480871 : ZMod 547) ^ 13 := by decide
  have hne : (480874 : ZMod 299209) ^ 13 ≠ (480871 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 480874 := by decide
  have hB : ¬ 547 ∣ 480871 := by decide
  have hexp :=
    has_exp_one_of_zmod 480871 480874 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 480871 480874 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 480871 480874 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      480871 480874 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      480871 480874 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_481206_481209 :
    HasPrimeWithExpOne (S_val 481206 481209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 481206 481209 ∧ ¬ p ∣ (481209 - 481206) ∧
      ∃ (hNotC : ¬ p ∣ 481209) (hNotB : ¬ p ∣ 481206),
        order_of_C_B_inv_mod_p2 481209 481206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 481206 481209 := by
  have hlt : (481206 : Nat) < 481209 := by decide
  have hcop : ¬ 131 ∣ (481209 - 481206) := by decide
  have heq : (481209 : ZMod 131) ^ 13 = (481206 : ZMod 131) ^ 13 := by decide
  have hne : (481209 : ZMod 17161) ^ 13 ≠ (481206 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 481209 := by decide
  have hB : ¬ 131 ∣ 481206 := by decide
  have hexp :=
    has_exp_one_of_zmod 481206 481209 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 481206 481209 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 481206 481209 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      481206 481209 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      481206 481209 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_481539_481542 :
    HasPrimeWithExpOne (S_val 481539 481542) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 481539 481542 ∧ ¬ p ∣ (481542 - 481539) ∧
      ∃ (hNotC : ¬ p ∣ 481542) (hNotB : ¬ p ∣ 481539),
        order_of_C_B_inv_mod_p2 481542 481539 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 481539 481542 := by
  have hlt : (481539 : Nat) < 481542 := by decide
  have hcop : ¬ 79 ∣ (481542 - 481539) := by decide
  have heq : (481542 : ZMod 79) ^ 13 = (481539 : ZMod 79) ^ 13 := by decide
  have hne : (481542 : ZMod 6241) ^ 13 ≠ (481539 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 481542 := by decide
  have hB : ¬ 79 ∣ 481539 := by decide
  have hexp :=
    has_exp_one_of_zmod 481539 481542 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 481539 481542 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 481539 481542 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      481539 481542 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      481539 481542 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_481873_481876 :
    HasPrimeWithExpOne (S_val 481873 481876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 481873 481876 ∧ ¬ p ∣ (481876 - 481873) ∧
      ∃ (hNotC : ¬ p ∣ 481876) (hNotB : ¬ p ∣ 481873),
        order_of_C_B_inv_mod_p2 481876 481873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 481873 481876 := by
  have hlt : (481873 : Nat) < 481876 := by decide
  have hcop : ¬ 131 ∣ (481876 - 481873) := by decide
  have heq : (481876 : ZMod 131) ^ 13 = (481873 : ZMod 131) ^ 13 := by decide
  have hne : (481876 : ZMod 17161) ^ 13 ≠ (481873 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 481876 := by decide
  have hB : ¬ 131 ∣ 481873 := by decide
  have hexp :=
    has_exp_one_of_zmod 481873 481876 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 481873 481876 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 481873 481876 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      481873 481876 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      481873 481876 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_482200_482203 :
    HasPrimeWithExpOne (S_val 482200 482203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 482200 482203 ∧ ¬ p ∣ (482203 - 482200) ∧
      ∃ (hNotC : ¬ p ∣ 482203) (hNotB : ¬ p ∣ 482200),
        order_of_C_B_inv_mod_p2 482203 482200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 482200 482203 := by
  have hlt : (482200 : Nat) < 482203 := by decide
  have hcop : ¬ 53 ∣ (482203 - 482200) := by decide
  have heq : (482203 : ZMod 53) ^ 13 = (482200 : ZMod 53) ^ 13 := by decide
  have hne : (482203 : ZMod 2809) ^ 13 ≠ (482200 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 482203 := by decide
  have hB : ¬ 53 ∣ 482200 := by decide
  have hexp :=
    has_exp_one_of_zmod 482200 482203 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 482200 482203 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 482200 482203 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      482200 482203 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      482200 482203 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_482557_482560 :
    HasPrimeWithExpOne (S_val 482557 482560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 482557 482560 ∧ ¬ p ∣ (482560 - 482557) ∧
      ∃ (hNotC : ¬ p ∣ 482560) (hNotB : ¬ p ∣ 482557),
        order_of_C_B_inv_mod_p2 482560 482557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 482557 482560 := by
  have hlt : (482557 : Nat) < 482560 := by decide
  have hcop : ¬ 53 ∣ (482560 - 482557) := by decide
  have heq : (482560 : ZMod 53) ^ 13 = (482557 : ZMod 53) ^ 13 := by decide
  have hne : (482560 : ZMod 2809) ^ 13 ≠ (482557 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 482560 := by decide
  have hB : ¬ 53 ∣ 482557 := by decide
  have hexp :=
    has_exp_one_of_zmod 482557 482560 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 482557 482560 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 482557 482560 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      482557 482560 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      482557 482560 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_482909_482912 :
    HasPrimeWithExpOne (S_val 482909 482912) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 482909 482912 ∧ ¬ p ∣ (482912 - 482909) ∧
      ∃ (hNotC : ¬ p ∣ 482912) (hNotB : ¬ p ∣ 482909),
        order_of_C_B_inv_mod_p2 482912 482909 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 482909 482912 := by
  have hlt : (482909 : Nat) < 482912 := by decide
  have hcop : ¬ 131 ∣ (482912 - 482909) := by decide
  have heq : (482912 : ZMod 131) ^ 13 = (482909 : ZMod 131) ^ 13 := by decide
  have hne : (482912 : ZMod 17161) ^ 13 ≠ (482909 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 482912 := by decide
  have hB : ¬ 131 ∣ 482909 := by decide
  have hexp :=
    has_exp_one_of_zmod 482909 482912 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 482909 482912 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 482909 482912 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      482909 482912 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      482909 482912 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_483258_483261 :
    HasPrimeWithExpOne (S_val 483258 483261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 483258 483261 ∧ ¬ p ∣ (483261 - 483258) ∧
      ∃ (hNotC : ¬ p ∣ 483261) (hNotB : ¬ p ∣ 483258),
        order_of_C_B_inv_mod_p2 483261 483258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 483258 483261 := by
  have hlt : (483258 : Nat) < 483261 := by decide
  have hcop : ¬ 53 ∣ (483261 - 483258) := by decide
  have heq : (483261 : ZMod 53) ^ 13 = (483258 : ZMod 53) ^ 13 := by decide
  have hne : (483261 : ZMod 2809) ^ 13 ≠ (483258 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 483261 := by decide
  have hB : ¬ 53 ∣ 483258 := by decide
  have hexp :=
    has_exp_one_of_zmod 483258 483261 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 483258 483261 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 483258 483261 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      483258 483261 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      483258 483261 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_483590_483593 :
    HasPrimeWithExpOne (S_val 483590 483593) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 483590 483593 ∧ ¬ p ∣ (483593 - 483590) ∧
      ∃ (hNotC : ¬ p ∣ 483593) (hNotB : ¬ p ∣ 483590),
        order_of_C_B_inv_mod_p2 483593 483590 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 483590 483593 := by
  have hlt : (483590 : Nat) < 483593 := by decide
  have hcop : ¬ 53 ∣ (483593 - 483590) := by decide
  have heq : (483593 : ZMod 53) ^ 13 = (483590 : ZMod 53) ^ 13 := by decide
  have hne : (483593 : ZMod 2809) ^ 13 ≠ (483590 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 483593 := by decide
  have hB : ¬ 53 ∣ 483590 := by decide
  have hexp :=
    has_exp_one_of_zmod 483590 483593 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 483590 483593 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 483590 483593 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      483590 483593 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      483590 483593 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_483908_483911 :
    HasPrimeWithExpOne (S_val 483908 483911) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 483908 483911 ∧ ¬ p ∣ (483911 - 483908) ∧
      ∃ (hNotC : ¬ p ∣ 483911) (hNotB : ¬ p ∣ 483908),
        order_of_C_B_inv_mod_p2 483911 483908 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 483908 483911 := by
  have hlt : (483908 : Nat) < 483911 := by decide
  have hcop : ¬ 53 ∣ (483911 - 483908) := by decide
  have heq : (483911 : ZMod 53) ^ 13 = (483908 : ZMod 53) ^ 13 := by decide
  have hne : (483911 : ZMod 2809) ^ 13 ≠ (483908 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 483911 := by decide
  have hB : ¬ 53 ∣ 483908 := by decide
  have hexp :=
    has_exp_one_of_zmod 483908 483911 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 483908 483911 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 483908 483911 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      483908 483911 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      483908 483911 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_484233_484236 :
    HasPrimeWithExpOne (S_val 484233 484236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 484233 484236 ∧ ¬ p ∣ (484236 - 484233) ∧
      ∃ (hNotC : ¬ p ∣ 484236) (hNotB : ¬ p ∣ 484233),
        order_of_C_B_inv_mod_p2 484236 484233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 484233 484236 := by
  have hlt : (484233 : Nat) < 484236 := by decide
  have hcop : ¬ 79 ∣ (484236 - 484233) := by decide
  have heq : (484236 : ZMod 79) ^ 13 = (484233 : ZMod 79) ^ 13 := by decide
  have hne : (484236 : ZMod 6241) ^ 13 ≠ (484233 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 484236 := by decide
  have hB : ¬ 79 ∣ 484233 := by decide
  have hexp :=
    has_exp_one_of_zmod 484233 484236 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 484233 484236 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 484233 484236 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      484233 484236 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      484233 484236 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_484567_484570 :
    HasPrimeWithExpOne (S_val 484567 484570) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 484567 484570 ∧ ¬ p ∣ (484570 - 484567) ∧
      ∃ (hNotC : ¬ p ∣ 484570) (hNotB : ¬ p ∣ 484567),
        order_of_C_B_inv_mod_p2 484570 484567 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 484567 484570 := by
  have hlt : (484567 : Nat) < 484570 := by decide
  have hcop : ¬ 313 ∣ (484570 - 484567) := by decide
  have heq : (484570 : ZMod 313) ^ 13 = (484567 : ZMod 313) ^ 13 := by decide
  have hne : (484570 : ZMod 97969) ^ 13 ≠ (484567 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 484570 := by decide
  have hB : ¬ 313 ∣ 484567 := by decide
  have hexp :=
    has_exp_one_of_zmod 484567 484570 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 484567 484570 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 484567 484570 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      484567 484570 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      484567 484570 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_484900_484903 :
    HasPrimeWithExpOne (S_val 484900 484903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 484900 484903 ∧ ¬ p ∣ (484903 - 484900) ∧
      ∃ (hNotC : ¬ p ∣ 484903) (hNotB : ¬ p ∣ 484900),
        order_of_C_B_inv_mod_p2 484903 484900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 484900 484903 := by
  have hlt : (484900 : Nat) < 484903 := by decide
  have hcop : ¬ 157 ∣ (484903 - 484900) := by decide
  have heq : (484903 : ZMod 157) ^ 13 = (484900 : ZMod 157) ^ 13 := by decide
  have hne : (484903 : ZMod 24649) ^ 13 ≠ (484900 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 484903 := by decide
  have hB : ¬ 157 ∣ 484900 := by decide
  have hexp :=
    has_exp_one_of_zmod 484900 484903 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 484900 484903 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 484900 484903 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      484900 484903 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      484900 484903 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_485231_485234 :
    HasPrimeWithExpOne (S_val 485231 485234) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 485231 485234 ∧ ¬ p ∣ (485234 - 485231) ∧
      ∃ (hNotC : ¬ p ∣ 485234) (hNotB : ¬ p ∣ 485231),
        order_of_C_B_inv_mod_p2 485234 485231 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 485231 485234 := by
  have hlt : (485231 : Nat) < 485234 := by decide
  have hcop : ¬ 79 ∣ (485234 - 485231) := by decide
  have heq : (485234 : ZMod 79) ^ 13 = (485231 : ZMod 79) ^ 13 := by decide
  have hne : (485234 : ZMod 6241) ^ 13 ≠ (485231 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 485234 := by decide
  have hB : ¬ 79 ∣ 485231 := by decide
  have hexp :=
    has_exp_one_of_zmod 485231 485234 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 485231 485234 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 485231 485234 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      485231 485234 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      485231 485234 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_485559_485562 :
    HasPrimeWithExpOne (S_val 485559 485562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 485559 485562 ∧ ¬ p ∣ (485562 - 485559) ∧
      ∃ (hNotC : ¬ p ∣ 485562) (hNotB : ¬ p ∣ 485559),
        order_of_C_B_inv_mod_p2 485562 485559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 485559 485562 := by
  have hlt : (485559 : Nat) < 485562 := by decide
  have hcop : ¬ 131 ∣ (485562 - 485559) := by decide
  have heq : (485562 : ZMod 131) ^ 13 = (485559 : ZMod 131) ^ 13 := by decide
  have hne : (485562 : ZMod 17161) ^ 13 ≠ (485559 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 485562 := by decide
  have hB : ¬ 131 ∣ 485559 := by decide
  have hexp :=
    has_exp_one_of_zmod 485559 485562 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 485559 485562 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 485559 485562 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      485559 485562 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      485559 485562 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_485917_485920 :
    HasPrimeWithExpOne (S_val 485917 485920) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 485917 485920 ∧ ¬ p ∣ (485920 - 485917) ∧
      ∃ (hNotC : ¬ p ∣ 485920) (hNotB : ¬ p ∣ 485917),
        order_of_C_B_inv_mod_p2 485920 485917 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 485917 485920 := by
  have hlt : (485917 : Nat) < 485920 := by decide
  have hcop : ¬ 53 ∣ (485920 - 485917) := by decide
  have heq : (485920 : ZMod 53) ^ 13 = (485917 : ZMod 53) ^ 13 := by decide
  have hne : (485920 : ZMod 2809) ^ 13 ≠ (485917 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 485920 := by decide
  have hB : ¬ 53 ∣ 485917 := by decide
  have hexp :=
    has_exp_one_of_zmod 485917 485920 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 485917 485920 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 485917 485920 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      485917 485920 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      485917 485920 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_486262_486265 :
    HasPrimeWithExpOne (S_val 486262 486265) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 486262 486265 ∧ ¬ p ∣ (486265 - 486262) ∧
      ∃ (hNotC : ¬ p ∣ 486265) (hNotB : ¬ p ∣ 486262),
        order_of_C_B_inv_mod_p2 486265 486262 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 486262 486265 := by
  have hlt : (486262 : Nat) < 486265 := by decide
  have hcop : ¬ 53 ∣ (486265 - 486262) := by decide
  have heq : (486265 : ZMod 53) ^ 13 = (486262 : ZMod 53) ^ 13 := by decide
  have hne : (486265 : ZMod 2809) ^ 13 ≠ (486262 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 486265 := by decide
  have hB : ¬ 53 ∣ 486262 := by decide
  have hexp :=
    has_exp_one_of_zmod 486262 486265 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 486262 486265 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 486262 486265 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      486262 486265 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      486262 486265 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_486595_486598 :
    HasPrimeWithExpOne (S_val 486595 486598) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 486595 486598 ∧ ¬ p ∣ (486598 - 486595) ∧
      ∃ (hNotC : ¬ p ∣ 486598) (hNotB : ¬ p ∣ 486595),
        order_of_C_B_inv_mod_p2 486598 486595 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 486595 486598 := by
  have hlt : (486595 : Nat) < 486598 := by decide
  have hcop : ¬ 79 ∣ (486598 - 486595) := by decide
  have heq : (486598 : ZMod 79) ^ 13 = (486595 : ZMod 79) ^ 13 := by decide
  have hne : (486598 : ZMod 6241) ^ 13 ≠ (486595 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 486598 := by decide
  have hB : ¬ 79 ∣ 486595 := by decide
  have hexp :=
    has_exp_one_of_zmod 486595 486598 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 486595 486598 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 486595 486598 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      486595 486598 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      486595 486598 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_486924_486927 :
    HasPrimeWithExpOne (S_val 486924 486927) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 486924 486927 ∧ ¬ p ∣ (486927 - 486924) ∧
      ∃ (hNotC : ¬ p ∣ 486927) (hNotB : ¬ p ∣ 486924),
        order_of_C_B_inv_mod_p2 486927 486924 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 486924 486927 := by
  have hlt : (486924 : Nat) < 486927 := by decide
  have hcop : ¬ 53 ∣ (486927 - 486924) := by decide
  have heq : (486927 : ZMod 53) ^ 13 = (486924 : ZMod 53) ^ 13 := by decide
  have hne : (486927 : ZMod 2809) ^ 13 ≠ (486924 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 486927 := by decide
  have hB : ¬ 53 ∣ 486924 := by decide
  have hexp :=
    has_exp_one_of_zmod 486924 486927 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 486924 486927 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 486924 486927 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      486924 486927 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      486924 486927 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_487276_487279 :
    HasPrimeWithExpOne (S_val 487276 487279) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487276 487279 ∧ ¬ p ∣ (487279 - 487276) ∧
      ∃ (hNotC : ¬ p ∣ 487279) (hNotB : ¬ p ∣ 487276),
        order_of_C_B_inv_mod_p2 487279 487276 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 487276 487279 := by
  have hlt : (487276 : Nat) < 487279 := by decide
  have hcop : ¬ 547 ∣ (487279 - 487276) := by decide
  have heq : (487279 : ZMod 547) ^ 13 = (487276 : ZMod 547) ^ 13 := by decide
  have hne : (487279 : ZMod 299209) ^ 13 ≠ (487276 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 487279 := by decide
  have hB : ¬ 547 ∣ 487276 := by decide
  have hexp :=
    has_exp_one_of_zmod 487276 487279 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 487276 487279 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 487276 487279 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      487276 487279 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      487276 487279 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_487584_487587 :
    HasPrimeWithExpOne (S_val 487584 487587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487584 487587 ∧ ¬ p ∣ (487587 - 487584) ∧
      ∃ (hNotC : ¬ p ∣ 487587) (hNotB : ¬ p ∣ 487584),
        order_of_C_B_inv_mod_p2 487587 487584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 487584 487587 := by
  have hlt : (487584 : Nat) < 487587 := by decide
  have hcop : ¬ 53 ∣ (487587 - 487584) := by decide
  have heq : (487587 : ZMod 53) ^ 13 = (487584 : ZMod 53) ^ 13 := by decide
  have hne : (487587 : ZMod 2809) ^ 13 ≠ (487584 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 487587 := by decide
  have hB : ¬ 53 ∣ 487584 := by decide
  have hexp :=
    has_exp_one_of_zmod 487584 487587 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 487584 487587 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 487584 487587 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      487584 487587 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      487584 487587 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_487912_487915 :
    HasPrimeWithExpOne (S_val 487912 487915) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487912 487915 ∧ ¬ p ∣ (487915 - 487912) ∧
      ∃ (hNotC : ¬ p ∣ 487915) (hNotB : ¬ p ∣ 487912),
        order_of_C_B_inv_mod_p2 487915 487912 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 487912 487915 := by
  have hlt : (487912 : Nat) < 487915 := by decide
  have hcop : ¬ 131 ∣ (487915 - 487912) := by decide
  have heq : (487915 : ZMod 131) ^ 13 = (487912 : ZMod 131) ^ 13 := by decide
  have hne : (487915 : ZMod 17161) ^ 13 ≠ (487912 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 487915 := by decide
  have hB : ¬ 131 ∣ 487912 := by decide
  have hexp :=
    has_exp_one_of_zmod 487912 487915 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 487912 487915 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 487912 487915 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      487912 487915 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      487912 487915 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_488234_488237 :
    HasPrimeWithExpOne (S_val 488234 488237) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 488234 488237 ∧ ¬ p ∣ (488237 - 488234) ∧
      ∃ (hNotC : ¬ p ∣ 488237) (hNotB : ¬ p ∣ 488234),
        order_of_C_B_inv_mod_p2 488237 488234 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 488234 488237 := by
  have hlt : (488234 : Nat) < 488237 := by decide
  have hcop : ¬ 79 ∣ (488237 - 488234) := by decide
  have heq : (488237 : ZMod 79) ^ 13 = (488234 : ZMod 79) ^ 13 := by decide
  have hne : (488237 : ZMod 6241) ^ 13 ≠ (488234 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 488237 := by decide
  have hB : ¬ 79 ∣ 488234 := by decide
  have hexp :=
    has_exp_one_of_zmod 488234 488237 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 488234 488237 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 488234 488237 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      488234 488237 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      488234 488237 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_488567_488570 :
    HasPrimeWithExpOne (S_val 488567 488570) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 488567 488570 ∧ ¬ p ∣ (488570 - 488567) ∧
      ∃ (hNotC : ¬ p ∣ 488570) (hNotB : ¬ p ∣ 488567),
        order_of_C_B_inv_mod_p2 488570 488567 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 488567 488570 := by
  have hlt : (488567 : Nat) < 488570 := by decide
  have hcop : ¬ 53 ∣ (488570 - 488567) := by decide
  have heq : (488570 : ZMod 53) ^ 13 = (488567 : ZMod 53) ^ 13 := by decide
  have hne : (488570 : ZMod 2809) ^ 13 ≠ (488567 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 488570 := by decide
  have hB : ¬ 53 ∣ 488567 := by decide
  have hexp :=
    has_exp_one_of_zmod 488567 488570 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 488567 488570 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 488567 488570 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      488567 488570 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      488567 488570 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_488920_488923 :
    HasPrimeWithExpOne (S_val 488920 488923) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 488920 488923 ∧ ¬ p ∣ (488923 - 488920) ∧
      ∃ (hNotC : ¬ p ∣ 488923) (hNotB : ¬ p ∣ 488920),
        order_of_C_B_inv_mod_p2 488923 488920 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 488920 488923 := by
  have hlt : (488920 : Nat) < 488923 := by decide
  have hcop : ¬ 313 ∣ (488923 - 488920) := by decide
  have heq : (488923 : ZMod 313) ^ 13 = (488920 : ZMod 313) ^ 13 := by decide
  have hne : (488923 : ZMod 97969) ^ 13 ≠ (488920 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 488923 := by decide
  have hB : ¬ 313 ∣ 488920 := by decide
  have hexp :=
    has_exp_one_of_zmod 488920 488923 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 488920 488923 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 488920 488923 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      488920 488923 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      488920 488923 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_489261_489264 :
    HasPrimeWithExpOne (S_val 489261 489264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 489261 489264 ∧ ¬ p ∣ (489264 - 489261) ∧
      ∃ (hNotC : ¬ p ∣ 489264) (hNotB : ¬ p ∣ 489261),
        order_of_C_B_inv_mod_p2 489264 489261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 489261 489264 := by
  have hlt : (489261 : Nat) < 489264 := by decide
  have hcop : ¬ 53 ∣ (489264 - 489261) := by decide
  have heq : (489264 : ZMod 53) ^ 13 = (489261 : ZMod 53) ^ 13 := by decide
  have hne : (489264 : ZMod 2809) ^ 13 ≠ (489261 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 489264 := by decide
  have hB : ¬ 53 ∣ 489261 := by decide
  have hexp :=
    has_exp_one_of_zmod 489261 489264 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 489261 489264 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 489261 489264 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      489261 489264 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      489261 489264 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_489596_489599 :
    HasPrimeWithExpOne (S_val 489596 489599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 489596 489599 ∧ ¬ p ∣ (489599 - 489596) ∧
      ∃ (hNotC : ¬ p ∣ 489599) (hNotB : ¬ p ∣ 489596),
        order_of_C_B_inv_mod_p2 489599 489596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 489596 489599 := by
  have hlt : (489596 : Nat) < 489599 := by decide
  have hcop : ¬ 157 ∣ (489599 - 489596) := by decide
  have heq : (489599 : ZMod 157) ^ 13 = (489596 : ZMod 157) ^ 13 := by decide
  have hne : (489599 : ZMod 24649) ^ 13 ≠ (489596 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 489599 := by decide
  have hB : ¬ 157 ∣ 489596 := by decide
  have hexp :=
    has_exp_one_of_zmod 489596 489599 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 489596 489599 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 489596 489599 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      489596 489599 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      489596 489599 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_489926_489929 :
    HasPrimeWithExpOne (S_val 489926 489929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 489926 489929 ∧ ¬ p ∣ (489929 - 489926) ∧
      ∃ (hNotC : ¬ p ∣ 489929) (hNotB : ¬ p ∣ 489926),
        order_of_C_B_inv_mod_p2 489929 489926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 489926 489929 := by
  have hlt : (489926 : Nat) < 489929 := by decide
  have hcop : ¬ 443 ∣ (489929 - 489926) := by decide
  have heq : (489929 : ZMod 443) ^ 13 = (489926 : ZMod 443) ^ 13 := by decide
  have hne : (489929 : ZMod 196249) ^ 13 ≠ (489926 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 489929 := by decide
  have hB : ¬ 443 ∣ 489926 := by decide
  have hexp :=
    has_exp_one_of_zmod 489926 489929 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 489926 489929 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 489926 489929 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      489926 489929 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      489926 489929 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_490257_490260 :
    HasPrimeWithExpOne (S_val 490257 490260) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 490257 490260 ∧ ¬ p ∣ (490260 - 490257) ∧
      ∃ (hNotC : ¬ p ∣ 490260) (hNotB : ¬ p ∣ 490257),
        order_of_C_B_inv_mod_p2 490260 490257 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 490257 490260 := by
  have hlt : (490257 : Nat) < 490260 := by decide
  have hcop : ¬ 79 ∣ (490260 - 490257) := by decide
  have heq : (490260 : ZMod 79) ^ 13 = (490257 : ZMod 79) ^ 13 := by decide
  have hne : (490260 : ZMod 6241) ^ 13 ≠ (490257 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 490260 := by decide
  have hB : ¬ 79 ∣ 490257 := by decide
  have hexp :=
    has_exp_one_of_zmod 490257 490260 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 490257 490260 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 490257 490260 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      490257 490260 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      490257 490260 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_490614_490617 :
    HasPrimeWithExpOne (S_val 490614 490617) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 490614 490617 ∧ ¬ p ∣ (490617 - 490614) ∧
      ∃ (hNotC : ¬ p ∣ 490617) (hNotB : ¬ p ∣ 490614),
        order_of_C_B_inv_mod_p2 490617 490614 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 490614 490617 := by
  have hlt : (490614 : Nat) < 490617 := by decide
  have hcop : ¬ 53 ∣ (490617 - 490614) := by decide
  have heq : (490617 : ZMod 53) ^ 13 = (490614 : ZMod 53) ^ 13 := by decide
  have hne : (490617 : ZMod 2809) ^ 13 ≠ (490614 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 490617 := by decide
  have hB : ¬ 53 ∣ 490614 := by decide
  have hexp :=
    has_exp_one_of_zmod 490614 490617 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 490614 490617 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 490614 490617 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      490614 490617 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      490614 490617 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_490944_490947 :
    HasPrimeWithExpOne (S_val 490944 490947) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 490944 490947 ∧ ¬ p ∣ (490947 - 490944) ∧
      ∃ (hNotC : ¬ p ∣ 490947) (hNotB : ¬ p ∣ 490944),
        order_of_C_B_inv_mod_p2 490947 490944 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 490944 490947 := by
  have hlt : (490944 : Nat) < 490947 := by decide
  have hcop : ¬ 53 ∣ (490947 - 490944) := by decide
  have heq : (490947 : ZMod 53) ^ 13 = (490944 : ZMod 53) ^ 13 := by decide
  have hne : (490947 : ZMod 2809) ^ 13 ≠ (490944 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 490947 := by decide
  have hB : ¬ 53 ∣ 490944 := by decide
  have hexp :=
    has_exp_one_of_zmod 490944 490947 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 490944 490947 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 490944 490947 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      490944 490947 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      490944 490947 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_491288_491291 :
    HasPrimeWithExpOne (S_val 491288 491291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 491288 491291 ∧ ¬ p ∣ (491291 - 491288) ∧
      ∃ (hNotC : ¬ p ∣ 491291) (hNotB : ¬ p ∣ 491288),
        order_of_C_B_inv_mod_p2 491291 491288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 491288 491291 := by
  have hlt : (491288 : Nat) < 491291 := by decide
  have hcop : ¬ 131 ∣ (491291 - 491288) := by decide
  have heq : (491291 : ZMod 131) ^ 13 = (491288 : ZMod 131) ^ 13 := by decide
  have hne : (491291 : ZMod 17161) ^ 13 ≠ (491288 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 491291 := by decide
  have hB : ¬ 131 ∣ 491288 := by decide
  have hexp :=
    has_exp_one_of_zmod 491288 491291 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 491288 491291 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 491288 491291 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      491288 491291 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      491288 491291 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_491635_491638 :
    HasPrimeWithExpOne (S_val 491635 491638) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 491635 491638 ∧ ¬ p ∣ (491638 - 491635) ∧
      ∃ (hNotC : ¬ p ∣ 491638) (hNotB : ¬ p ∣ 491635),
        order_of_C_B_inv_mod_p2 491638 491635 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 491635 491638 := by
  have hlt : (491635 : Nat) < 491638 := by decide
  have hcop : ¬ 79 ∣ (491638 - 491635) := by decide
  have heq : (491638 : ZMod 79) ^ 13 = (491635 : ZMod 79) ^ 13 := by decide
  have hne : (491638 : ZMod 6241) ^ 13 ≠ (491635 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 491638 := by decide
  have hB : ¬ 79 ∣ 491635 := by decide
  have hexp :=
    has_exp_one_of_zmod 491635 491638 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 491635 491638 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 491635 491638 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      491635 491638 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      491635 491638 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_491951_491954 :
    HasPrimeWithExpOne (S_val 491951 491954) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 491951 491954 ∧ ¬ p ∣ (491954 - 491951) ∧
      ∃ (hNotC : ¬ p ∣ 491954) (hNotB : ¬ p ∣ 491951),
        order_of_C_B_inv_mod_p2 491954 491951 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 491951 491954 := by
  have hlt : (491951 : Nat) < 491954 := by decide
  have hcop : ¬ 53 ∣ (491954 - 491951) := by decide
  have heq : (491954 : ZMod 53) ^ 13 = (491951 : ZMod 53) ^ 13 := by decide
  have hne : (491954 : ZMod 2809) ^ 13 ≠ (491951 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 491954 := by decide
  have hB : ¬ 53 ∣ 491951 := by decide
  have hexp :=
    has_exp_one_of_zmod 491951 491954 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 491951 491954 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 491951 491954 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      491951 491954 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      491951 491954 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_492274_492277 :
    HasPrimeWithExpOne (S_val 492274 492277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 492274 492277 ∧ ¬ p ∣ (492277 - 492274) ∧
      ∃ (hNotC : ¬ p ∣ 492277) (hNotB : ¬ p ∣ 492274),
        order_of_C_B_inv_mod_p2 492277 492274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 492274 492277 := by
  have hlt : (492274 : Nat) < 492277 := by decide
  have hcop : ¬ 53 ∣ (492277 - 492274) := by decide
  have heq : (492277 : ZMod 53) ^ 13 = (492274 : ZMod 53) ^ 13 := by decide
  have hne : (492277 : ZMod 2809) ^ 13 ≠ (492274 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 492277 := by decide
  have hB : ¬ 53 ∣ 492274 := by decide
  have hexp :=
    has_exp_one_of_zmod 492274 492277 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 492274 492277 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 492274 492277 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      492274 492277 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      492274 492277 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_492607_492610 :
    HasPrimeWithExpOne (S_val 492607 492610) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 492607 492610 ∧ ¬ p ∣ (492610 - 492607) ∧
      ∃ (hNotC : ¬ p ∣ 492610) (hNotB : ¬ p ∣ 492607),
        order_of_C_B_inv_mod_p2 492610 492607 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 492607 492610 := by
  have hlt : (492607 : Nat) < 492610 := by decide
  have hcop : ¬ 79 ∣ (492610 - 492607) := by decide
  have heq : (492610 : ZMod 79) ^ 13 = (492607 : ZMod 79) ^ 13 := by decide
  have hne : (492610 : ZMod 6241) ^ 13 ≠ (492607 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 492610 := by decide
  have hB : ¬ 79 ∣ 492607 := by decide
  have hexp :=
    has_exp_one_of_zmod 492607 492610 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 492607 492610 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 492607 492610 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      492607 492610 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      492607 492610 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_492962_492965 :
    HasPrimeWithExpOne (S_val 492962 492965) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 492962 492965 ∧ ¬ p ∣ (492965 - 492962) ∧
      ∃ (hNotC : ¬ p ∣ 492965) (hNotB : ¬ p ∣ 492962),
        order_of_C_B_inv_mod_p2 492965 492962 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 492962 492965 := by
  have hlt : (492962 : Nat) < 492965 := by decide
  have hcop : ¬ 131 ∣ (492965 - 492962) := by decide
  have heq : (492965 : ZMod 131) ^ 13 = (492962 : ZMod 131) ^ 13 := by decide
  have hne : (492965 : ZMod 17161) ^ 13 ≠ (492962 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 492965 := by decide
  have hB : ¬ 131 ∣ 492962 := by decide
  have hexp :=
    has_exp_one_of_zmod 492962 492965 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 492962 492965 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 492962 492965 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      492962 492965 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      492962 492965 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_493305_493308 :
    HasPrimeWithExpOne (S_val 493305 493308) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 493305 493308 ∧ ¬ p ∣ (493308 - 493305) ∧
      ∃ (hNotC : ¬ p ∣ 493308) (hNotB : ¬ p ∣ 493305),
        order_of_C_B_inv_mod_p2 493308 493305 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 493305 493308 := by
  have hlt : (493305 : Nat) < 493308 := by decide
  have hcop : ¬ 131 ∣ (493308 - 493305) := by decide
  have heq : (493308 : ZMod 131) ^ 13 = (493305 : ZMod 131) ^ 13 := by decide
  have hne : (493308 : ZMod 17161) ^ 13 ≠ (493305 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 493308 := by decide
  have hB : ¬ 131 ∣ 493305 := by decide
  have hexp :=
    has_exp_one_of_zmod 493305 493308 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 493305 493308 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 493305 493308 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      493305 493308 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      493305 493308 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_493635_493638 :
    HasPrimeWithExpOne (S_val 493635 493638) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 493635 493638 ∧ ¬ p ∣ (493638 - 493635) ∧
      ∃ (hNotC : ¬ p ∣ 493638) (hNotB : ¬ p ∣ 493635),
        order_of_C_B_inv_mod_p2 493638 493635 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 493635 493638 := by
  have hlt : (493635 : Nat) < 493638 := by decide
  have hcop : ¬ 53 ∣ (493638 - 493635) := by decide
  have heq : (493638 : ZMod 53) ^ 13 = (493635 : ZMod 53) ^ 13 := by decide
  have hne : (493638 : ZMod 2809) ^ 13 ≠ (493635 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 493638 := by decide
  have hB : ¬ 53 ∣ 493635 := by decide
  have hexp :=
    has_exp_one_of_zmod 493635 493638 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 493635 493638 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 493635 493638 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      493635 493638 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      493635 493638 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_493964_493967 :
    HasPrimeWithExpOne (S_val 493964 493967) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 493964 493967 ∧ ¬ p ∣ (493967 - 493964) ∧
      ∃ (hNotC : ¬ p ∣ 493967) (hNotB : ¬ p ∣ 493964),
        order_of_C_B_inv_mod_p2 493967 493964 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 493964 493967 := by
  have hlt : (493964 : Nat) < 493967 := by decide
  have hcop : ¬ 53 ∣ (493967 - 493964) := by decide
  have heq : (493967 : ZMod 53) ^ 13 = (493964 : ZMod 53) ^ 13 := by decide
  have hne : (493967 : ZMod 2809) ^ 13 ≠ (493964 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 493967 := by decide
  have hB : ¬ 53 ∣ 493964 := by decide
  have hexp :=
    has_exp_one_of_zmod 493964 493967 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 493964 493967 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 493964 493967 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      493964 493967 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      493964 493967 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_494306_494309 :
    HasPrimeWithExpOne (S_val 494306 494309) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 494306 494309 ∧ ¬ p ∣ (494309 - 494306) ∧
      ∃ (hNotC : ¬ p ∣ 494309) (hNotB : ¬ p ∣ 494306),
        order_of_C_B_inv_mod_p2 494309 494306 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 494306 494309 := by
  have hlt : (494306 : Nat) < 494309 := by decide
  have hcop : ¬ 131 ∣ (494309 - 494306) := by decide
  have heq : (494309 : ZMod 131) ^ 13 = (494306 : ZMod 131) ^ 13 := by decide
  have hne : (494309 : ZMod 17161) ^ 13 ≠ (494306 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 494309 := by decide
  have hB : ¬ 131 ∣ 494306 := by decide
  have hexp :=
    has_exp_one_of_zmod 494306 494309 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 494306 494309 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 494306 494309 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      494306 494309 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      494306 494309 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_494640_494643 :
    HasPrimeWithExpOne (S_val 494640 494643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 494640 494643 ∧ ¬ p ∣ (494643 - 494640) ∧
      ∃ (hNotC : ¬ p ∣ 494643) (hNotB : ¬ p ∣ 494640),
        order_of_C_B_inv_mod_p2 494643 494640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 494640 494643 := by
  have hlt : (494640 : Nat) < 494643 := by decide
  have hcop : ¬ 53 ∣ (494643 - 494640) := by decide
  have heq : (494643 : ZMod 53) ^ 13 = (494640 : ZMod 53) ^ 13 := by decide
  have hne : (494643 : ZMod 2809) ^ 13 ≠ (494640 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 494643 := by decide
  have hB : ¬ 53 ∣ 494640 := by decide
  have hexp :=
    has_exp_one_of_zmod 494640 494643 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 494640 494643 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 494640 494643 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      494640 494643 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      494640 494643 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_494985_494988 :
    HasPrimeWithExpOne (S_val 494985 494988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 494985 494988 ∧ ¬ p ∣ (494988 - 494985) ∧
      ∃ (hNotC : ¬ p ∣ 494988) (hNotB : ¬ p ∣ 494985),
        order_of_C_B_inv_mod_p2 494988 494985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 494985 494988 := by
  have hlt : (494985 : Nat) < 494988 := by decide
  have hcop : ¬ 53 ∣ (494988 - 494985) := by decide
  have heq : (494988 : ZMod 53) ^ 13 = (494985 : ZMod 53) ^ 13 := by decide
  have hne : (494988 : ZMod 2809) ^ 13 ≠ (494985 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 494988 := by decide
  have hB : ¬ 53 ∣ 494985 := by decide
  have hexp :=
    has_exp_one_of_zmod 494985 494988 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 494985 494988 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 494985 494988 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      494985 494988 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      494985 494988 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_495311_495314 :
    HasPrimeWithExpOne (S_val 495311 495314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 495311 495314 ∧ ¬ p ∣ (495314 - 495311) ∧
      ∃ (hNotC : ¬ p ∣ 495314) (hNotB : ¬ p ∣ 495311),
        order_of_C_B_inv_mod_p2 495314 495311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 495311 495314 := by
  have hlt : (495311 : Nat) < 495314 := by decide
  have hcop : ¬ 157 ∣ (495314 - 495311) := by decide
  have heq : (495314 : ZMod 157) ^ 13 = (495311 : ZMod 157) ^ 13 := by decide
  have hne : (495314 : ZMod 24649) ^ 13 ≠ (495311 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 495314 := by decide
  have hB : ¬ 157 ∣ 495311 := by decide
  have hexp :=
    has_exp_one_of_zmod 495311 495314 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 495311 495314 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 495311 495314 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      495311 495314 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      495311 495314 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_495649_495652 :
    HasPrimeWithExpOne (S_val 495649 495652) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 495649 495652 ∧ ¬ p ∣ (495652 - 495649) ∧
      ∃ (hNotC : ¬ p ∣ 495652) (hNotB : ¬ p ∣ 495649),
        order_of_C_B_inv_mod_p2 495652 495649 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 495649 495652 := by
  have hlt : (495649 : Nat) < 495652 := by decide
  have hcop : ¬ 53 ∣ (495652 - 495649) := by decide
  have heq : (495652 : ZMod 53) ^ 13 = (495649 : ZMod 53) ^ 13 := by decide
  have hne : (495652 : ZMod 2809) ^ 13 ≠ (495649 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 495652 := by decide
  have hB : ¬ 53 ∣ 495649 := by decide
  have hexp :=
    has_exp_one_of_zmod 495649 495652 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 495649 495652 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 495649 495652 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      495649 495652 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      495649 495652 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_495987_495990 :
    HasPrimeWithExpOne (S_val 495987 495990) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 495987 495990 ∧ ¬ p ∣ (495990 - 495987) ∧
      ∃ (hNotC : ¬ p ∣ 495990) (hNotB : ¬ p ∣ 495987),
        order_of_C_B_inv_mod_p2 495990 495987 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 495987 495990 := by
  have hlt : (495987 : Nat) < 495990 := by decide
  have hcop : ¬ 53 ∣ (495990 - 495987) := by decide
  have heq : (495990 : ZMod 53) ^ 13 = (495987 : ZMod 53) ^ 13 := by decide
  have hne : (495990 : ZMod 2809) ^ 13 ≠ (495987 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 495990 := by decide
  have hB : ¬ 53 ∣ 495987 := by decide
  have hexp :=
    has_exp_one_of_zmod 495987 495990 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 495987 495990 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 495987 495990 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      495987 495990 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      495987 495990 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_496331_496334 :
    HasPrimeWithExpOne (S_val 496331 496334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 496331 496334 ∧ ¬ p ∣ (496334 - 496331) ∧
      ∃ (hNotC : ¬ p ∣ 496334) (hNotB : ¬ p ∣ 496331),
        order_of_C_B_inv_mod_p2 496334 496331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 496331 496334 := by
  have hlt : (496331 : Nat) < 496334 := by decide
  have hcop : ¬ 79 ∣ (496334 - 496331) := by decide
  have heq : (496334 : ZMod 79) ^ 13 = (496331 : ZMod 79) ^ 13 := by decide
  have hne : (496334 : ZMod 6241) ^ 13 ≠ (496331 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 496334 := by decide
  have hB : ¬ 79 ∣ 496331 := by decide
  have hexp :=
    has_exp_one_of_zmod 496331 496334 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 496331 496334 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 496331 496334 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      496331 496334 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      496331 496334 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_496659_496662 :
    HasPrimeWithExpOne (S_val 496659 496662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 496659 496662 ∧ ¬ p ∣ (496662 - 496659) ∧
      ∃ (hNotC : ¬ p ∣ 496662) (hNotB : ¬ p ∣ 496659),
        order_of_C_B_inv_mod_p2 496662 496659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 496659 496662 := by
  have hlt : (496659 : Nat) < 496662 := by decide
  have hcop : ¬ 131 ∣ (496662 - 496659) := by decide
  have heq : (496662 : ZMod 131) ^ 13 = (496659 : ZMod 131) ^ 13 := by decide
  have hne : (496662 : ZMod 17161) ^ 13 ≠ (496659 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 496662 := by decide
  have hB : ¬ 131 ∣ 496659 := by decide
  have hexp :=
    has_exp_one_of_zmod 496659 496662 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 496659 496662 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 496659 496662 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      496659 496662 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      496659 496662 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_496998_497001 :
    HasPrimeWithExpOne (S_val 496998 497001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 496998 497001 ∧ ¬ p ∣ (497001 - 496998) ∧
      ∃ (hNotC : ¬ p ∣ 497001) (hNotB : ¬ p ∣ 496998),
        order_of_C_B_inv_mod_p2 497001 496998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 496998 497001 := by
  have hlt : (496998 : Nat) < 497001 := by decide
  have hcop : ¬ 313 ∣ (497001 - 496998) := by decide
  have heq : (497001 : ZMod 313) ^ 13 = (496998 : ZMod 313) ^ 13 := by decide
  have hne : (497001 : ZMod 97969) ^ 13 ≠ (496998 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 497001 := by decide
  have hB : ¬ 313 ∣ 496998 := by decide
  have hexp :=
    has_exp_one_of_zmod 496998 497001 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 496998 497001 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 496998 497001 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      496998 497001 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      496998 497001 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_497332_497335 :
    HasPrimeWithExpOne (S_val 497332 497335) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 497332 497335 ∧ ¬ p ∣ (497335 - 497332) ∧
      ∃ (hNotC : ¬ p ∣ 497335) (hNotB : ¬ p ∣ 497332),
        order_of_C_B_inv_mod_p2 497335 497332 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 497332 497335 := by
  have hlt : (497332 : Nat) < 497335 := by decide
  have hcop : ¬ 443 ∣ (497335 - 497332) := by decide
  have heq : (497335 : ZMod 443) ^ 13 = (497332 : ZMod 443) ^ 13 := by decide
  have hne : (497335 : ZMod 196249) ^ 13 ≠ (497332 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 497335 := by decide
  have hB : ¬ 443 ∣ 497332 := by decide
  have hexp :=
    has_exp_one_of_zmod 497332 497335 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 497332 497335 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 497332 497335 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      497332 497335 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      497332 497335 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_497687_497690 :
    HasPrimeWithExpOne (S_val 497687 497690) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 497687 497690 ∧ ¬ p ∣ (497690 - 497687) ∧
      ∃ (hNotC : ¬ p ∣ 497690) (hNotB : ¬ p ∣ 497687),
        order_of_C_B_inv_mod_p2 497690 497687 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 497687 497690 := by
  have hlt : (497687 : Nat) < 497690 := by decide
  have hcop : ¬ 521 ∣ (497690 - 497687) := by decide
  have heq : (497690 : ZMod 521) ^ 13 = (497687 : ZMod 521) ^ 13 := by decide
  have hne : (497690 : ZMod 271441) ^ 13 ≠ (497687 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 497690 := by decide
  have hB : ¬ 521 ∣ 497687 := by decide
  have hexp :=
    has_exp_one_of_zmod 497687 497690 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 497687 497690 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 497687 497690 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      497687 497690 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      497687 497690 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_498004_498007 :
    HasPrimeWithExpOne (S_val 498004 498007) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498004 498007 ∧ ¬ p ∣ (498007 - 498004) ∧
      ∃ (hNotC : ¬ p ∣ 498007) (hNotB : ¬ p ∣ 498004),
        order_of_C_B_inv_mod_p2 498007 498004 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 498004 498007 := by
  have hlt : (498004 : Nat) < 498007 := by decide
  have hcop : ¬ 131 ∣ (498007 - 498004) := by decide
  have heq : (498007 : ZMod 131) ^ 13 = (498004 : ZMod 131) ^ 13 := by decide
  have hne : (498007 : ZMod 17161) ^ 13 ≠ (498004 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 498007 := by decide
  have hB : ¬ 131 ∣ 498004 := by decide
  have hexp :=
    has_exp_one_of_zmod 498004 498007 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 498004 498007 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 498004 498007 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      498004 498007 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      498004 498007 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_498343_498346 :
    HasPrimeWithExpOne (S_val 498343 498346) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498343 498346 ∧ ¬ p ∣ (498346 - 498343) ∧
      ∃ (hNotC : ¬ p ∣ 498346) (hNotB : ¬ p ∣ 498343),
        order_of_C_B_inv_mod_p2 498346 498343 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 498343 498346 := by
  have hlt : (498343 : Nat) < 498346 := by decide
  have hcop : ¬ 53 ∣ (498346 - 498343) := by decide
  have heq : (498346 : ZMod 53) ^ 13 = (498343 : ZMod 53) ^ 13 := by decide
  have hne : (498346 : ZMod 2809) ^ 13 ≠ (498343 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 498346 := by decide
  have hB : ¬ 53 ∣ 498343 := by decide
  have hexp :=
    has_exp_one_of_zmod 498343 498346 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 498343 498346 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 498343 498346 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      498343 498346 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      498343 498346 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_498665_498668 :
    HasPrimeWithExpOne (S_val 498665 498668) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498665 498668 ∧ ¬ p ∣ (498668 - 498665) ∧
      ∃ (hNotC : ¬ p ∣ 498668) (hNotB : ¬ p ∣ 498665),
        order_of_C_B_inv_mod_p2 498668 498665 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 498665 498668 := by
  have hlt : (498665 : Nat) < 498668 := by decide
  have hcop : ¬ 157 ∣ (498668 - 498665) := by decide
  have heq : (498668 : ZMod 157) ^ 13 = (498665 : ZMod 157) ^ 13 := by decide
  have hne : (498668 : ZMod 24649) ^ 13 ≠ (498665 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 498668 := by decide
  have hB : ¬ 157 ∣ 498665 := by decide
  have hexp :=
    has_exp_one_of_zmod 498665 498668 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 498665 498668 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 498665 498668 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      498665 498668 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      498665 498668 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_498999_499002 :
    HasPrimeWithExpOne (S_val 498999 499002) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498999 499002 ∧ ¬ p ∣ (499002 - 498999) ∧
      ∃ (hNotC : ¬ p ∣ 499002) (hNotB : ¬ p ∣ 498999),
        order_of_C_B_inv_mod_p2 499002 498999 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 498999 499002 := by
  have hlt : (498999 : Nat) < 499002 := by decide
  have hcop : ¬ 53 ∣ (499002 - 498999) := by decide
  have heq : (499002 : ZMod 53) ^ 13 = (498999 : ZMod 53) ^ 13 := by decide
  have hne : (499002 : ZMod 2809) ^ 13 ≠ (498999 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 499002 := by decide
  have hB : ¬ 53 ∣ 498999 := by decide
  have hexp :=
    has_exp_one_of_zmod 498999 499002 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 498999 499002 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 498999 499002 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      498999 499002 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      498999 499002 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_499333_499336 :
    HasPrimeWithExpOne (S_val 499333 499336) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 499333 499336 ∧ ¬ p ∣ (499336 - 499333) ∧
      ∃ (hNotC : ¬ p ∣ 499336) (hNotB : ¬ p ∣ 499333),
        order_of_C_B_inv_mod_p2 499336 499333 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 499333 499336 := by
  have hlt : (499333 : Nat) < 499336 := by decide
  have hcop : ¬ 79 ∣ (499336 - 499333) := by decide
  have heq : (499336 : ZMod 79) ^ 13 = (499333 : ZMod 79) ^ 13 := by decide
  have hne : (499336 : ZMod 6241) ^ 13 ≠ (499333 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 499336 := by decide
  have hB : ¬ 79 ∣ 499333 := by decide
  have hexp :=
    has_exp_one_of_zmod 499333 499336 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 499333 499336 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 499333 499336 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      499333 499336 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      499333 499336 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_499688_499691 :
    HasPrimeWithExpOne (S_val 499688 499691) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 499688 499691 ∧ ¬ p ∣ (499691 - 499688) ∧
      ∃ (hNotC : ¬ p ∣ 499691) (hNotB : ¬ p ∣ 499688),
        order_of_C_B_inv_mod_p2 499691 499688 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 499688 499691 := by
  have hlt : (499688 : Nat) < 499691 := by decide
  have hcop : ¬ 53 ∣ (499691 - 499688) := by decide
  have heq : (499691 : ZMod 53) ^ 13 = (499688 : ZMod 53) ^ 13 := by decide
  have hne : (499691 : ZMod 2809) ^ 13 ≠ (499688 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 499691 := by decide
  have hB : ¬ 53 ∣ 499688 := by decide
  have hexp :=
    has_exp_one_of_zmod 499688 499691 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 499688 499691 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 499688 499691 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      499688 499691 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      499688 499691 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_500000_500003 :
    HasPrimeWithExpOne (S_val 500000 500003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 500000 500003 ∧ ¬ p ∣ (500003 - 500000) ∧
      ∃ (hNotC : ¬ p ∣ 500003) (hNotB : ¬ p ∣ 500000),
        order_of_C_B_inv_mod_p2 500003 500000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 500000 500003 := by
  have hlt : (500000 : Nat) < 500003 := by decide
  have hcop : ¬ 547 ∣ (500003 - 500000) := by decide
  have heq : (500003 : ZMod 547) ^ 13 = (500000 : ZMod 547) ^ 13 := by decide
  have hne : (500003 : ZMod 299209) ^ 13 ≠ (500000 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 500003 := by decide
  have hB : ¬ 547 ∣ 500000 := by decide
  have hexp :=
    has_exp_one_of_zmod 500000 500003 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 500000 500003 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 500000 500003 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      500000 500003 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      500000 500003 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-! ## Packed 299 new rows, then 1498 = 1199 inherited ∧ 299 new (not a `∀`; not one 1498-And) -/
theorem S_has_prime_with_exp_one_400000_lt_B_le_500000_table_rows :
    HasPrimeWithExpOne (S_val 400001 400004) ∧
    HasPrimeWithExpOne (S_val 400326 400329) ∧
    HasPrimeWithExpOne (S_val 400652 400655) ∧
    HasPrimeWithExpOne (S_val 400985 400988) ∧
    HasPrimeWithExpOne (S_val 401322 401325) ∧
    HasPrimeWithExpOne (S_val 401656 401659) ∧
    HasPrimeWithExpOne (S_val 401990 401993) ∧
    HasPrimeWithExpOne (S_val 402328 402331) ∧
    HasPrimeWithExpOne (S_val 402676 402679) ∧
    HasPrimeWithExpOne (S_val 403025 403028) ∧
    HasPrimeWithExpOne (S_val 403358 403361) ∧
    HasPrimeWithExpOne (S_val 403701 403704) ∧
    HasPrimeWithExpOne (S_val 404017 404020) ∧
    HasPrimeWithExpOne (S_val 404342 404345) ∧
    HasPrimeWithExpOne (S_val 404692 404695) ∧
    HasPrimeWithExpOne (S_val 405030 405033) ∧
    HasPrimeWithExpOne (S_val 405367 405370) ∧
    HasPrimeWithExpOne (S_val 405709 405712) ∧
    HasPrimeWithExpOne (S_val 406054 406057) ∧
    HasPrimeWithExpOne (S_val 406389 406392) ∧
    HasPrimeWithExpOne (S_val 406709 406712) ∧
    HasPrimeWithExpOne (S_val 407066 407069) ∧
    HasPrimeWithExpOne (S_val 407391 407394) ∧
    HasPrimeWithExpOne (S_val 407732 407735) ∧
    HasPrimeWithExpOne (S_val 408047 408050) ∧
    HasPrimeWithExpOne (S_val 408393 408396) ∧
    HasPrimeWithExpOne (S_val 408707 408710) ∧
    HasPrimeWithExpOne (S_val 409060 409063) ∧
    HasPrimeWithExpOne (S_val 409401 409404) ∧
    HasPrimeWithExpOne (S_val 409748 409751) ∧
    HasPrimeWithExpOne (S_val 410104 410107) ∧
    HasPrimeWithExpOne (S_val 410419 410422) ∧
    HasPrimeWithExpOne (S_val 410758 410761) ∧
    HasPrimeWithExpOne (S_val 411086 411089) ∧
    HasPrimeWithExpOne (S_val 411403 411406) ∧
    HasPrimeWithExpOne (S_val 411737 411740) ∧
    HasPrimeWithExpOne (S_val 412068 412071) ∧
    HasPrimeWithExpOne (S_val 412395 412398) ∧
    HasPrimeWithExpOne (S_val 412724 412727) ∧
    HasPrimeWithExpOne (S_val 413058 413061) ∧
    HasPrimeWithExpOne (S_val 413405 413408) ∧
    HasPrimeWithExpOne (S_val 413758 413761) ∧
    HasPrimeWithExpOne (S_val 414080 414083) ∧
    HasPrimeWithExpOne (S_val 414425 414428) ∧
    HasPrimeWithExpOne (S_val 414765 414768) ∧
    HasPrimeWithExpOne (S_val 415096 415099) ∧
    HasPrimeWithExpOne (S_val 415454 415457) ∧
    HasPrimeWithExpOne (S_val 415786 415789) ∧
    HasPrimeWithExpOne (S_val 416120 416123) ∧
    HasPrimeWithExpOne (S_val 416462 416465) ∧
    HasPrimeWithExpOne (S_val 416797 416800) ∧
    HasPrimeWithExpOne (S_val 417123 417126) ∧
    HasPrimeWithExpOne (S_val 417465 417468) ∧
    HasPrimeWithExpOne (S_val 417790 417793) ∧
    HasPrimeWithExpOne (S_val 418118 418121) ∧
    HasPrimeWithExpOne (S_val 418446 418449) ∧
    HasPrimeWithExpOne (S_val 418785 418788) ∧
    HasPrimeWithExpOne (S_val 419117 419120) ∧
    HasPrimeWithExpOne (S_val 419471 419474) ∧
    HasPrimeWithExpOne (S_val 419807 419810) ∧
    HasPrimeWithExpOne (S_val 420150 420153) ∧
    HasPrimeWithExpOne (S_val 420489 420492) ∧
    HasPrimeWithExpOne (S_val 420818 420821) ∧
    HasPrimeWithExpOne (S_val 421157 421160) ∧
    HasPrimeWithExpOne (S_val 421481 421484) ∧
    HasPrimeWithExpOne (S_val 421814 421817) ∧
    HasPrimeWithExpOne (S_val 422163 422166) ∧
    HasPrimeWithExpOne (S_val 422503 422506) ∧
    HasPrimeWithExpOne (S_val 422826 422829) ∧
    HasPrimeWithExpOne (S_val 423168 423171) ∧
    HasPrimeWithExpOne (S_val 423499 423502) ∧
    HasPrimeWithExpOne (S_val 423854 423857) ∧
    HasPrimeWithExpOne (S_val 424182 424185) ∧
    HasPrimeWithExpOne (S_val 424505 424508) ∧
    HasPrimeWithExpOne (S_val 424840 424843) ∧
    HasPrimeWithExpOne (S_val 425179 425182) ∧
    HasPrimeWithExpOne (S_val 425516 425519) ∧
    HasPrimeWithExpOne (S_val 425848 425851) ∧
    HasPrimeWithExpOne (S_val 426177 426180) ∧
    HasPrimeWithExpOne (S_val 426531 426534) ∧
    HasPrimeWithExpOne (S_val 426866 426869) ∧
    HasPrimeWithExpOne (S_val 427198 427201) ∧
    HasPrimeWithExpOne (S_val 427530 427533) ∧
    HasPrimeWithExpOne (S_val 427877 427880) ∧
    HasPrimeWithExpOne (S_val 428200 428203) ∧
    HasPrimeWithExpOne (S_val 428554 428557) ∧
    HasPrimeWithExpOne (S_val 428886 428889) ∧
    HasPrimeWithExpOne (S_val 429214 429217) ∧
    HasPrimeWithExpOne (S_val 429544 429547) ∧
    HasPrimeWithExpOne (S_val 429871 429874) ∧
    HasPrimeWithExpOne (S_val 430200 430203) ∧
    HasPrimeWithExpOne (S_val 430551 430554) ∧
    HasPrimeWithExpOne (S_val 430897 430900) ∧
    HasPrimeWithExpOne (S_val 431224 431227) ∧
    HasPrimeWithExpOne (S_val 431568 431571) ∧
    HasPrimeWithExpOne (S_val 431884 431887) ∧
    HasPrimeWithExpOne (S_val 432202 432205) ∧
    HasPrimeWithExpOne (S_val 432549 432552) ∧
    HasPrimeWithExpOne (S_val 432878 432881) ∧
    HasPrimeWithExpOne (S_val 433219 433222) ∧
    HasPrimeWithExpOne (S_val 433544 433547) ∧
    HasPrimeWithExpOne (S_val 433860 433863) ∧
    HasPrimeWithExpOne (S_val 434207 434210) ∧
    HasPrimeWithExpOne (S_val 434552 434555) ∧
    HasPrimeWithExpOne (S_val 434897 434900) ∧
    HasPrimeWithExpOne (S_val 435242 435245) ∧
    HasPrimeWithExpOne (S_val 435585 435588) ∧
    HasPrimeWithExpOne (S_val 435912 435915) ∧
    HasPrimeWithExpOne (S_val 436250 436253) ∧
    HasPrimeWithExpOne (S_val 436568 436571) ∧
    HasPrimeWithExpOne (S_val 436919 436922) ∧
    HasPrimeWithExpOne (S_val 437255 437258) ∧
    HasPrimeWithExpOne (S_val 437594 437597) ∧
    HasPrimeWithExpOne (S_val 437923 437926) ∧
    HasPrimeWithExpOne (S_val 438257 438260) ∧
    HasPrimeWithExpOne (S_val 438580 438583) ∧
    HasPrimeWithExpOne (S_val 438939 438942) ∧
    HasPrimeWithExpOne (S_val 439270 439273) ∧
    HasPrimeWithExpOne (S_val 439609 439612) ∧
    HasPrimeWithExpOne (S_val 439953 439956) ∧
    HasPrimeWithExpOne (S_val 440289 440292) ∧
    HasPrimeWithExpOne (S_val 440627 440630) ∧
    HasPrimeWithExpOne (S_val 440965 440968) ∧
    HasPrimeWithExpOne (S_val 441303 441306) ∧
    HasPrimeWithExpOne (S_val 441641 441644) ∧
    HasPrimeWithExpOne (S_val 441979 441982) ∧
    HasPrimeWithExpOne (S_val 442298 442301) ∧
    HasPrimeWithExpOne (S_val 442612 442615) ∧
    HasPrimeWithExpOne (S_val 442958 442961) ∧
    HasPrimeWithExpOne (S_val 443276 443279) ∧
    HasPrimeWithExpOne (S_val 443621 443624) ∧
    HasPrimeWithExpOne (S_val 443960 443963) ∧
    HasPrimeWithExpOne (S_val 444304 444307) ∧
    HasPrimeWithExpOne (S_val 444652 444655) ∧
    HasPrimeWithExpOne (S_val 444986 444989) ∧
    HasPrimeWithExpOne (S_val 445336 445339) ∧
    HasPrimeWithExpOne (S_val 445661 445664) ∧
    HasPrimeWithExpOne (S_val 445984 445987) ∧
    HasPrimeWithExpOne (S_val 446317 446320) ∧
    HasPrimeWithExpOne (S_val 446647 446650) ∧
    HasPrimeWithExpOne (S_val 446986 446989) ∧
    HasPrimeWithExpOne (S_val 447333 447336) ∧
    HasPrimeWithExpOne (S_val 447656 447659) ∧
    HasPrimeWithExpOne (S_val 447992 447995) ∧
    HasPrimeWithExpOne (S_val 448331 448334) ∧
    HasPrimeWithExpOne (S_val 448674 448677) ∧
    HasPrimeWithExpOne (S_val 449014 449017) ∧
    HasPrimeWithExpOne (S_val 449363 449366) ∧
    HasPrimeWithExpOne (S_val 449669 449672) ∧
    HasPrimeWithExpOne (S_val 450007 450010) ∧
    HasPrimeWithExpOne (S_val 450326 450329) ∧
    HasPrimeWithExpOne (S_val 450640 450643) ∧
    HasPrimeWithExpOne (S_val 450975 450978) ∧
    HasPrimeWithExpOne (S_val 451318 451321) ∧
    HasPrimeWithExpOne (S_val 451661 451664) ∧
    HasPrimeWithExpOne (S_val 451993 451996) ∧
    HasPrimeWithExpOne (S_val 452333 452336) ∧
    HasPrimeWithExpOne (S_val 452673 452676) ∧
    HasPrimeWithExpOne (S_val 452991 452994) ∧
    HasPrimeWithExpOne (S_val 453327 453330) ∧
    HasPrimeWithExpOne (S_val 453661 453664) ∧
    HasPrimeWithExpOne (S_val 453990 453993) ∧
    HasPrimeWithExpOne (S_val 454320 454323) ∧
    HasPrimeWithExpOne (S_val 454660 454663) ∧
    HasPrimeWithExpOne (S_val 454997 455000) ∧
    HasPrimeWithExpOne (S_val 455335 455338) ∧
    HasPrimeWithExpOne (S_val 455695 455698) ∧
    HasPrimeWithExpOne (S_val 456019 456022) ∧
    HasPrimeWithExpOne (S_val 456346 456349) ∧
    HasPrimeWithExpOne (S_val 456688 456691) ∧
    HasPrimeWithExpOne (S_val 457006 457009) ∧
    HasPrimeWithExpOne (S_val 457350 457353) ∧
    HasPrimeWithExpOne (S_val 457688 457691) ∧
    HasPrimeWithExpOne (S_val 458026 458029) ∧
    HasPrimeWithExpOne (S_val 458349 458352) ∧
    HasPrimeWithExpOne (S_val 458697 458700) ∧
    HasPrimeWithExpOne (S_val 459017 459020) ∧
    HasPrimeWithExpOne (S_val 459358 459361) ∧
    HasPrimeWithExpOne (S_val 459709 459712) ∧
    HasPrimeWithExpOne (S_val 460039 460042) ∧
    HasPrimeWithExpOne (S_val 460368 460371) ∧
    HasPrimeWithExpOne (S_val 460712 460715) ∧
    HasPrimeWithExpOne (S_val 461043 461046) ∧
    HasPrimeWithExpOne (S_val 461378 461381) ∧
    HasPrimeWithExpOne (S_val 461720 461723) ∧
    HasPrimeWithExpOne (S_val 462065 462068) ∧
    HasPrimeWithExpOne (S_val 462394 462397) ∧
    HasPrimeWithExpOne (S_val 462729 462732) ∧
    HasPrimeWithExpOne (S_val 463043 463046) ∧
    HasPrimeWithExpOne (S_val 463390 463393) ∧
    HasPrimeWithExpOne (S_val 463742 463745) ∧
    HasPrimeWithExpOne (S_val 464076 464079) ∧
    HasPrimeWithExpOne (S_val 464430 464433) ∧
    HasPrimeWithExpOne (S_val 464767 464770) ∧
    HasPrimeWithExpOne (S_val 465118 465121) ∧
    HasPrimeWithExpOne (S_val 465464 465467) ∧
    HasPrimeWithExpOne (S_val 465797 465800) ∧
    HasPrimeWithExpOne (S_val 466134 466137) ∧
    HasPrimeWithExpOne (S_val 466478 466481) ∧
    HasPrimeWithExpOne (S_val 466815 466818) ∧
    HasPrimeWithExpOne (S_val 467138 467141) ∧
    HasPrimeWithExpOne (S_val 467469 467472) ∧
    HasPrimeWithExpOne (S_val 467812 467815) ∧
    HasPrimeWithExpOne (S_val 468153 468156) ∧
    HasPrimeWithExpOne (S_val 468488 468491) ∧
    HasPrimeWithExpOne (S_val 468821 468824) ∧
    HasPrimeWithExpOne (S_val 469165 469168) ∧
    HasPrimeWithExpOne (S_val 469482 469485) ∧
    HasPrimeWithExpOne (S_val 469828 469831) ∧
    HasPrimeWithExpOne (S_val 470167 470170) ∧
    HasPrimeWithExpOne (S_val 470498 470501) ∧
    HasPrimeWithExpOne (S_val 470829 470832) ∧
    HasPrimeWithExpOne (S_val 471150 471153) ∧
    HasPrimeWithExpOne (S_val 471495 471498) ∧
    HasPrimeWithExpOne (S_val 471818 471821) ∧
    HasPrimeWithExpOne (S_val 472181 472184) ∧
    HasPrimeWithExpOne (S_val 472532 472535) ∧
    HasPrimeWithExpOne (S_val 472849 472852) ∧
    HasPrimeWithExpOne (S_val 473193 473196) ∧
    HasPrimeWithExpOne (S_val 473520 473523) ∧
    HasPrimeWithExpOne (S_val 473853 473856) ∧
    HasPrimeWithExpOne (S_val 474181 474184) ∧
    HasPrimeWithExpOne (S_val 474500 474503) ∧
    HasPrimeWithExpOne (S_val 474840 474843) ∧
    HasPrimeWithExpOne (S_val 475168 475171) ∧
    HasPrimeWithExpOne (S_val 475489 475492) ∧
    HasPrimeWithExpOne (S_val 475830 475833) ∧
    HasPrimeWithExpOne (S_val 476158 476161) ∧
    HasPrimeWithExpOne (S_val 476510 476513) ∧
    HasPrimeWithExpOne (S_val 476842 476845) ∧
    HasPrimeWithExpOne (S_val 477183 477186) ∧
    HasPrimeWithExpOne (S_val 477518 477521) ∧
    HasPrimeWithExpOne (S_val 477854 477857) ∧
    HasPrimeWithExpOne (S_val 478204 478207) ∧
    HasPrimeWithExpOne (S_val 478545 478548) ∧
    HasPrimeWithExpOne (S_val 478873 478876) ∧
    HasPrimeWithExpOne (S_val 479207 479210) ∧
    HasPrimeWithExpOne (S_val 479549 479552) ∧
    HasPrimeWithExpOne (S_val 479862 479865) ∧
    HasPrimeWithExpOne (S_val 480215 480218) ∧
    HasPrimeWithExpOne (S_val 480545 480548) ∧
    HasPrimeWithExpOne (S_val 480871 480874) ∧
    HasPrimeWithExpOne (S_val 481206 481209) ∧
    HasPrimeWithExpOne (S_val 481539 481542) ∧
    HasPrimeWithExpOne (S_val 481873 481876) ∧
    HasPrimeWithExpOne (S_val 482200 482203) ∧
    HasPrimeWithExpOne (S_val 482557 482560) ∧
    HasPrimeWithExpOne (S_val 482909 482912) ∧
    HasPrimeWithExpOne (S_val 483258 483261) ∧
    HasPrimeWithExpOne (S_val 483590 483593) ∧
    HasPrimeWithExpOne (S_val 483908 483911) ∧
    HasPrimeWithExpOne (S_val 484233 484236) ∧
    HasPrimeWithExpOne (S_val 484567 484570) ∧
    HasPrimeWithExpOne (S_val 484900 484903) ∧
    HasPrimeWithExpOne (S_val 485231 485234) ∧
    HasPrimeWithExpOne (S_val 485559 485562) ∧
    HasPrimeWithExpOne (S_val 485917 485920) ∧
    HasPrimeWithExpOne (S_val 486262 486265) ∧
    HasPrimeWithExpOne (S_val 486595 486598) ∧
    HasPrimeWithExpOne (S_val 486924 486927) ∧
    HasPrimeWithExpOne (S_val 487276 487279) ∧
    HasPrimeWithExpOne (S_val 487584 487587) ∧
    HasPrimeWithExpOne (S_val 487912 487915) ∧
    HasPrimeWithExpOne (S_val 488234 488237) ∧
    HasPrimeWithExpOne (S_val 488567 488570) ∧
    HasPrimeWithExpOne (S_val 488920 488923) ∧
    HasPrimeWithExpOne (S_val 489261 489264) ∧
    HasPrimeWithExpOne (S_val 489596 489599) ∧
    HasPrimeWithExpOne (S_val 489926 489929) ∧
    HasPrimeWithExpOne (S_val 490257 490260) ∧
    HasPrimeWithExpOne (S_val 490614 490617) ∧
    HasPrimeWithExpOne (S_val 490944 490947) ∧
    HasPrimeWithExpOne (S_val 491288 491291) ∧
    HasPrimeWithExpOne (S_val 491635 491638) ∧
    HasPrimeWithExpOne (S_val 491951 491954) ∧
    HasPrimeWithExpOne (S_val 492274 492277) ∧
    HasPrimeWithExpOne (S_val 492607 492610) ∧
    HasPrimeWithExpOne (S_val 492962 492965) ∧
    HasPrimeWithExpOne (S_val 493305 493308) ∧
    HasPrimeWithExpOne (S_val 493635 493638) ∧
    HasPrimeWithExpOne (S_val 493964 493967) ∧
    HasPrimeWithExpOne (S_val 494306 494309) ∧
    HasPrimeWithExpOne (S_val 494640 494643) ∧
    HasPrimeWithExpOne (S_val 494985 494988) ∧
    HasPrimeWithExpOne (S_val 495311 495314) ∧
    HasPrimeWithExpOne (S_val 495649 495652) ∧
    HasPrimeWithExpOne (S_val 495987 495990) ∧
    HasPrimeWithExpOne (S_val 496331 496334) ∧
    HasPrimeWithExpOne (S_val 496659 496662) ∧
    HasPrimeWithExpOne (S_val 496998 497001) ∧
    HasPrimeWithExpOne (S_val 497332 497335) ∧
    HasPrimeWithExpOne (S_val 497687 497690) ∧
    HasPrimeWithExpOne (S_val 498004 498007) ∧
    HasPrimeWithExpOne (S_val 498343 498346) ∧
    HasPrimeWithExpOne (S_val 498665 498668) ∧
    HasPrimeWithExpOne (S_val 498999 499002) ∧
    HasPrimeWithExpOne (S_val 499333 499336) ∧
    HasPrimeWithExpOne (S_val 499688 499691) ∧
    HasPrimeWithExpOne (S_val 500000 500003) :=
  ⟨row_400001_400004.1, row_400326_400329.1, row_400652_400655.1, row_400985_400988.1, row_401322_401325.1, row_401656_401659.1, row_401990_401993.1, row_402328_402331.1, row_402676_402679.1, row_403025_403028.1, row_403358_403361.1, row_403701_403704.1, row_404017_404020.1, row_404342_404345.1, row_404692_404695.1, row_405030_405033.1, row_405367_405370.1, row_405709_405712.1, row_406054_406057.1, row_406389_406392.1, row_406709_406712.1, row_407066_407069.1, row_407391_407394.1, row_407732_407735.1, row_408047_408050.1, row_408393_408396.1, row_408707_408710.1, row_409060_409063.1, row_409401_409404.1, row_409748_409751.1, row_410104_410107.1, row_410419_410422.1, row_410758_410761.1, row_411086_411089.1, row_411403_411406.1, row_411737_411740.1, row_412068_412071.1, row_412395_412398.1, row_412724_412727.1, row_413058_413061.1, row_413405_413408.1, row_413758_413761.1, row_414080_414083.1, row_414425_414428.1, row_414765_414768.1, row_415096_415099.1, row_415454_415457.1, row_415786_415789.1, row_416120_416123.1, row_416462_416465.1, row_416797_416800.1, row_417123_417126.1, row_417465_417468.1, row_417790_417793.1, row_418118_418121.1, row_418446_418449.1, row_418785_418788.1, row_419117_419120.1, row_419471_419474.1, row_419807_419810.1, row_420150_420153.1, row_420489_420492.1, row_420818_420821.1, row_421157_421160.1, row_421481_421484.1, row_421814_421817.1, row_422163_422166.1, row_422503_422506.1, row_422826_422829.1, row_423168_423171.1, row_423499_423502.1, row_423854_423857.1, row_424182_424185.1, row_424505_424508.1, row_424840_424843.1, row_425179_425182.1, row_425516_425519.1, row_425848_425851.1, row_426177_426180.1, row_426531_426534.1, row_426866_426869.1, row_427198_427201.1, row_427530_427533.1, row_427877_427880.1, row_428200_428203.1, row_428554_428557.1, row_428886_428889.1, row_429214_429217.1, row_429544_429547.1, row_429871_429874.1, row_430200_430203.1, row_430551_430554.1, row_430897_430900.1, row_431224_431227.1, row_431568_431571.1, row_431884_431887.1, row_432202_432205.1, row_432549_432552.1, row_432878_432881.1, row_433219_433222.1, row_433544_433547.1, row_433860_433863.1, row_434207_434210.1, row_434552_434555.1, row_434897_434900.1, row_435242_435245.1, row_435585_435588.1, row_435912_435915.1, row_436250_436253.1, row_436568_436571.1, row_436919_436922.1, row_437255_437258.1, row_437594_437597.1, row_437923_437926.1, row_438257_438260.1, row_438580_438583.1, row_438939_438942.1, row_439270_439273.1, row_439609_439612.1, row_439953_439956.1, row_440289_440292.1, row_440627_440630.1, row_440965_440968.1, row_441303_441306.1, row_441641_441644.1, row_441979_441982.1, row_442298_442301.1, row_442612_442615.1, row_442958_442961.1, row_443276_443279.1, row_443621_443624.1, row_443960_443963.1, row_444304_444307.1, row_444652_444655.1, row_444986_444989.1, row_445336_445339.1, row_445661_445664.1, row_445984_445987.1, row_446317_446320.1, row_446647_446650.1, row_446986_446989.1, row_447333_447336.1, row_447656_447659.1, row_447992_447995.1, row_448331_448334.1, row_448674_448677.1, row_449014_449017.1, row_449363_449366.1, row_449669_449672.1, row_450007_450010.1, row_450326_450329.1, row_450640_450643.1, row_450975_450978.1, row_451318_451321.1, row_451661_451664.1, row_451993_451996.1, row_452333_452336.1, row_452673_452676.1, row_452991_452994.1, row_453327_453330.1, row_453661_453664.1, row_453990_453993.1, row_454320_454323.1, row_454660_454663.1, row_454997_455000.1, row_455335_455338.1, row_455695_455698.1, row_456019_456022.1, row_456346_456349.1, row_456688_456691.1, row_457006_457009.1, row_457350_457353.1, row_457688_457691.1, row_458026_458029.1, row_458349_458352.1, row_458697_458700.1, row_459017_459020.1, row_459358_459361.1, row_459709_459712.1, row_460039_460042.1, row_460368_460371.1, row_460712_460715.1, row_461043_461046.1, row_461378_461381.1, row_461720_461723.1, row_462065_462068.1, row_462394_462397.1, row_462729_462732.1, row_463043_463046.1, row_463390_463393.1, row_463742_463745.1, row_464076_464079.1, row_464430_464433.1, row_464767_464770.1, row_465118_465121.1, row_465464_465467.1, row_465797_465800.1, row_466134_466137.1, row_466478_466481.1, row_466815_466818.1, row_467138_467141.1, row_467469_467472.1, row_467812_467815.1, row_468153_468156.1, row_468488_468491.1, row_468821_468824.1, row_469165_469168.1, row_469482_469485.1, row_469828_469831.1, row_470167_470170.1, row_470498_470501.1, row_470829_470832.1, row_471150_471153.1, row_471495_471498.1, row_471818_471821.1, row_472181_472184.1, row_472532_472535.1, row_472849_472852.1, row_473193_473196.1, row_473520_473523.1, row_473853_473856.1, row_474181_474184.1, row_474500_474503.1, row_474840_474843.1, row_475168_475171.1, row_475489_475492.1, row_475830_475833.1, row_476158_476161.1, row_476510_476513.1, row_476842_476845.1, row_477183_477186.1, row_477518_477521.1, row_477854_477857.1, row_478204_478207.1, row_478545_478548.1, row_478873_478876.1, row_479207_479210.1, row_479549_479552.1, row_479862_479865.1, row_480215_480218.1, row_480545_480548.1, row_480871_480874.1, row_481206_481209.1, row_481539_481542.1, row_481873_481876.1, row_482200_482203.1, row_482557_482560.1, row_482909_482912.1, row_483258_483261.1, row_483590_483593.1, row_483908_483911.1, row_484233_484236.1, row_484567_484570.1, row_484900_484903.1, row_485231_485234.1, row_485559_485562.1, row_485917_485920.1, row_486262_486265.1, row_486595_486598.1, row_486924_486927.1, row_487276_487279.1, row_487584_487587.1, row_487912_487915.1, row_488234_488237.1, row_488567_488570.1, row_488920_488923.1, row_489261_489264.1, row_489596_489599.1, row_489926_489929.1, row_490257_490260.1, row_490614_490617.1, row_490944_490947.1, row_491288_491291.1, row_491635_491638.1, row_491951_491954.1, row_492274_492277.1, row_492607_492610.1, row_492962_492965.1, row_493305_493308.1, row_493635_493638.1, row_493964_493967.1, row_494306_494309.1, row_494640_494643.1, row_494985_494988.1, row_495311_495314.1, row_495649_495652.1, row_495987_495990.1, row_496331_496334.1, row_496659_496662.1, row_496998_497001.1, row_497332_497335.1, row_497687_497690.1, row_498004_498007.1, row_498343_498346.1, row_498665_498668.1, row_498999_499002.1, row_499333_499336.1, row_499688_499691.1, row_500000_500003.1⟩
theorem exists_p_with_order_ne_13_400000_lt_B_le_500000_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400001 400004 ∧ ¬ p ∣ (400004 - 400001) ∧
      ∃ (hNotC : ¬ p ∣ 400004) (hNotB : ¬ p ∣ 400001),
        order_of_C_B_inv_mod_p2 400004 400001 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400326 400329 ∧ ¬ p ∣ (400329 - 400326) ∧
      ∃ (hNotC : ¬ p ∣ 400329) (hNotB : ¬ p ∣ 400326),
        order_of_C_B_inv_mod_p2 400329 400326 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400652 400655 ∧ ¬ p ∣ (400655 - 400652) ∧
      ∃ (hNotC : ¬ p ∣ 400655) (hNotB : ¬ p ∣ 400652),
        order_of_C_B_inv_mod_p2 400655 400652 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400985 400988 ∧ ¬ p ∣ (400988 - 400985) ∧
      ∃ (hNotC : ¬ p ∣ 400988) (hNotB : ¬ p ∣ 400985),
        order_of_C_B_inv_mod_p2 400988 400985 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 401322 401325 ∧ ¬ p ∣ (401325 - 401322) ∧
      ∃ (hNotC : ¬ p ∣ 401325) (hNotB : ¬ p ∣ 401322),
        order_of_C_B_inv_mod_p2 401325 401322 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 401656 401659 ∧ ¬ p ∣ (401659 - 401656) ∧
      ∃ (hNotC : ¬ p ∣ 401659) (hNotB : ¬ p ∣ 401656),
        order_of_C_B_inv_mod_p2 401659 401656 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 401990 401993 ∧ ¬ p ∣ (401993 - 401990) ∧
      ∃ (hNotC : ¬ p ∣ 401993) (hNotB : ¬ p ∣ 401990),
        order_of_C_B_inv_mod_p2 401993 401990 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 402328 402331 ∧ ¬ p ∣ (402331 - 402328) ∧
      ∃ (hNotC : ¬ p ∣ 402331) (hNotB : ¬ p ∣ 402328),
        order_of_C_B_inv_mod_p2 402331 402328 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 402676 402679 ∧ ¬ p ∣ (402679 - 402676) ∧
      ∃ (hNotC : ¬ p ∣ 402679) (hNotB : ¬ p ∣ 402676),
        order_of_C_B_inv_mod_p2 402679 402676 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 403025 403028 ∧ ¬ p ∣ (403028 - 403025) ∧
      ∃ (hNotC : ¬ p ∣ 403028) (hNotB : ¬ p ∣ 403025),
        order_of_C_B_inv_mod_p2 403028 403025 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 403358 403361 ∧ ¬ p ∣ (403361 - 403358) ∧
      ∃ (hNotC : ¬ p ∣ 403361) (hNotB : ¬ p ∣ 403358),
        order_of_C_B_inv_mod_p2 403361 403358 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 403701 403704 ∧ ¬ p ∣ (403704 - 403701) ∧
      ∃ (hNotC : ¬ p ∣ 403704) (hNotB : ¬ p ∣ 403701),
        order_of_C_B_inv_mod_p2 403704 403701 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 404017 404020 ∧ ¬ p ∣ (404020 - 404017) ∧
      ∃ (hNotC : ¬ p ∣ 404020) (hNotB : ¬ p ∣ 404017),
        order_of_C_B_inv_mod_p2 404020 404017 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 404342 404345 ∧ ¬ p ∣ (404345 - 404342) ∧
      ∃ (hNotC : ¬ p ∣ 404345) (hNotB : ¬ p ∣ 404342),
        order_of_C_B_inv_mod_p2 404345 404342 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 404692 404695 ∧ ¬ p ∣ (404695 - 404692) ∧
      ∃ (hNotC : ¬ p ∣ 404695) (hNotB : ¬ p ∣ 404692),
        order_of_C_B_inv_mod_p2 404695 404692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 405030 405033 ∧ ¬ p ∣ (405033 - 405030) ∧
      ∃ (hNotC : ¬ p ∣ 405033) (hNotB : ¬ p ∣ 405030),
        order_of_C_B_inv_mod_p2 405033 405030 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 405367 405370 ∧ ¬ p ∣ (405370 - 405367) ∧
      ∃ (hNotC : ¬ p ∣ 405370) (hNotB : ¬ p ∣ 405367),
        order_of_C_B_inv_mod_p2 405370 405367 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 405709 405712 ∧ ¬ p ∣ (405712 - 405709) ∧
      ∃ (hNotC : ¬ p ∣ 405712) (hNotB : ¬ p ∣ 405709),
        order_of_C_B_inv_mod_p2 405712 405709 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 406054 406057 ∧ ¬ p ∣ (406057 - 406054) ∧
      ∃ (hNotC : ¬ p ∣ 406057) (hNotB : ¬ p ∣ 406054),
        order_of_C_B_inv_mod_p2 406057 406054 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 406389 406392 ∧ ¬ p ∣ (406392 - 406389) ∧
      ∃ (hNotC : ¬ p ∣ 406392) (hNotB : ¬ p ∣ 406389),
        order_of_C_B_inv_mod_p2 406392 406389 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 406709 406712 ∧ ¬ p ∣ (406712 - 406709) ∧
      ∃ (hNotC : ¬ p ∣ 406712) (hNotB : ¬ p ∣ 406709),
        order_of_C_B_inv_mod_p2 406712 406709 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407066 407069 ∧ ¬ p ∣ (407069 - 407066) ∧
      ∃ (hNotC : ¬ p ∣ 407069) (hNotB : ¬ p ∣ 407066),
        order_of_C_B_inv_mod_p2 407069 407066 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407391 407394 ∧ ¬ p ∣ (407394 - 407391) ∧
      ∃ (hNotC : ¬ p ∣ 407394) (hNotB : ¬ p ∣ 407391),
        order_of_C_B_inv_mod_p2 407394 407391 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 407732 407735 ∧ ¬ p ∣ (407735 - 407732) ∧
      ∃ (hNotC : ¬ p ∣ 407735) (hNotB : ¬ p ∣ 407732),
        order_of_C_B_inv_mod_p2 407735 407732 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 408047 408050 ∧ ¬ p ∣ (408050 - 408047) ∧
      ∃ (hNotC : ¬ p ∣ 408050) (hNotB : ¬ p ∣ 408047),
        order_of_C_B_inv_mod_p2 408050 408047 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 408393 408396 ∧ ¬ p ∣ (408396 - 408393) ∧
      ∃ (hNotC : ¬ p ∣ 408396) (hNotB : ¬ p ∣ 408393),
        order_of_C_B_inv_mod_p2 408396 408393 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 408707 408710 ∧ ¬ p ∣ (408710 - 408707) ∧
      ∃ (hNotC : ¬ p ∣ 408710) (hNotB : ¬ p ∣ 408707),
        order_of_C_B_inv_mod_p2 408710 408707 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 409060 409063 ∧ ¬ p ∣ (409063 - 409060) ∧
      ∃ (hNotC : ¬ p ∣ 409063) (hNotB : ¬ p ∣ 409060),
        order_of_C_B_inv_mod_p2 409063 409060 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 409401 409404 ∧ ¬ p ∣ (409404 - 409401) ∧
      ∃ (hNotC : ¬ p ∣ 409404) (hNotB : ¬ p ∣ 409401),
        order_of_C_B_inv_mod_p2 409404 409401 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 409748 409751 ∧ ¬ p ∣ (409751 - 409748) ∧
      ∃ (hNotC : ¬ p ∣ 409751) (hNotB : ¬ p ∣ 409748),
        order_of_C_B_inv_mod_p2 409751 409748 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 410104 410107 ∧ ¬ p ∣ (410107 - 410104) ∧
      ∃ (hNotC : ¬ p ∣ 410107) (hNotB : ¬ p ∣ 410104),
        order_of_C_B_inv_mod_p2 410107 410104 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 410419 410422 ∧ ¬ p ∣ (410422 - 410419) ∧
      ∃ (hNotC : ¬ p ∣ 410422) (hNotB : ¬ p ∣ 410419),
        order_of_C_B_inv_mod_p2 410422 410419 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 410758 410761 ∧ ¬ p ∣ (410761 - 410758) ∧
      ∃ (hNotC : ¬ p ∣ 410761) (hNotB : ¬ p ∣ 410758),
        order_of_C_B_inv_mod_p2 410761 410758 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 411086 411089 ∧ ¬ p ∣ (411089 - 411086) ∧
      ∃ (hNotC : ¬ p ∣ 411089) (hNotB : ¬ p ∣ 411086),
        order_of_C_B_inv_mod_p2 411089 411086 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 411403 411406 ∧ ¬ p ∣ (411406 - 411403) ∧
      ∃ (hNotC : ¬ p ∣ 411406) (hNotB : ¬ p ∣ 411403),
        order_of_C_B_inv_mod_p2 411406 411403 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 411737 411740 ∧ ¬ p ∣ (411740 - 411737) ∧
      ∃ (hNotC : ¬ p ∣ 411740) (hNotB : ¬ p ∣ 411737),
        order_of_C_B_inv_mod_p2 411740 411737 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 412068 412071 ∧ ¬ p ∣ (412071 - 412068) ∧
      ∃ (hNotC : ¬ p ∣ 412071) (hNotB : ¬ p ∣ 412068),
        order_of_C_B_inv_mod_p2 412071 412068 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 412395 412398 ∧ ¬ p ∣ (412398 - 412395) ∧
      ∃ (hNotC : ¬ p ∣ 412398) (hNotB : ¬ p ∣ 412395),
        order_of_C_B_inv_mod_p2 412398 412395 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 412724 412727 ∧ ¬ p ∣ (412727 - 412724) ∧
      ∃ (hNotC : ¬ p ∣ 412727) (hNotB : ¬ p ∣ 412724),
        order_of_C_B_inv_mod_p2 412727 412724 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 413058 413061 ∧ ¬ p ∣ (413061 - 413058) ∧
      ∃ (hNotC : ¬ p ∣ 413061) (hNotB : ¬ p ∣ 413058),
        order_of_C_B_inv_mod_p2 413061 413058 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 413405 413408 ∧ ¬ p ∣ (413408 - 413405) ∧
      ∃ (hNotC : ¬ p ∣ 413408) (hNotB : ¬ p ∣ 413405),
        order_of_C_B_inv_mod_p2 413408 413405 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 413758 413761 ∧ ¬ p ∣ (413761 - 413758) ∧
      ∃ (hNotC : ¬ p ∣ 413761) (hNotB : ¬ p ∣ 413758),
        order_of_C_B_inv_mod_p2 413761 413758 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 414080 414083 ∧ ¬ p ∣ (414083 - 414080) ∧
      ∃ (hNotC : ¬ p ∣ 414083) (hNotB : ¬ p ∣ 414080),
        order_of_C_B_inv_mod_p2 414083 414080 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 414425 414428 ∧ ¬ p ∣ (414428 - 414425) ∧
      ∃ (hNotC : ¬ p ∣ 414428) (hNotB : ¬ p ∣ 414425),
        order_of_C_B_inv_mod_p2 414428 414425 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 414765 414768 ∧ ¬ p ∣ (414768 - 414765) ∧
      ∃ (hNotC : ¬ p ∣ 414768) (hNotB : ¬ p ∣ 414765),
        order_of_C_B_inv_mod_p2 414768 414765 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 415096 415099 ∧ ¬ p ∣ (415099 - 415096) ∧
      ∃ (hNotC : ¬ p ∣ 415099) (hNotB : ¬ p ∣ 415096),
        order_of_C_B_inv_mod_p2 415099 415096 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 415454 415457 ∧ ¬ p ∣ (415457 - 415454) ∧
      ∃ (hNotC : ¬ p ∣ 415457) (hNotB : ¬ p ∣ 415454),
        order_of_C_B_inv_mod_p2 415457 415454 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 415786 415789 ∧ ¬ p ∣ (415789 - 415786) ∧
      ∃ (hNotC : ¬ p ∣ 415789) (hNotB : ¬ p ∣ 415786),
        order_of_C_B_inv_mod_p2 415789 415786 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 416120 416123 ∧ ¬ p ∣ (416123 - 416120) ∧
      ∃ (hNotC : ¬ p ∣ 416123) (hNotB : ¬ p ∣ 416120),
        order_of_C_B_inv_mod_p2 416123 416120 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 416462 416465 ∧ ¬ p ∣ (416465 - 416462) ∧
      ∃ (hNotC : ¬ p ∣ 416465) (hNotB : ¬ p ∣ 416462),
        order_of_C_B_inv_mod_p2 416465 416462 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 416797 416800 ∧ ¬ p ∣ (416800 - 416797) ∧
      ∃ (hNotC : ¬ p ∣ 416800) (hNotB : ¬ p ∣ 416797),
        order_of_C_B_inv_mod_p2 416800 416797 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 417123 417126 ∧ ¬ p ∣ (417126 - 417123) ∧
      ∃ (hNotC : ¬ p ∣ 417126) (hNotB : ¬ p ∣ 417123),
        order_of_C_B_inv_mod_p2 417126 417123 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 417465 417468 ∧ ¬ p ∣ (417468 - 417465) ∧
      ∃ (hNotC : ¬ p ∣ 417468) (hNotB : ¬ p ∣ 417465),
        order_of_C_B_inv_mod_p2 417468 417465 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 417790 417793 ∧ ¬ p ∣ (417793 - 417790) ∧
      ∃ (hNotC : ¬ p ∣ 417793) (hNotB : ¬ p ∣ 417790),
        order_of_C_B_inv_mod_p2 417793 417790 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 418118 418121 ∧ ¬ p ∣ (418121 - 418118) ∧
      ∃ (hNotC : ¬ p ∣ 418121) (hNotB : ¬ p ∣ 418118),
        order_of_C_B_inv_mod_p2 418121 418118 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 418446 418449 ∧ ¬ p ∣ (418449 - 418446) ∧
      ∃ (hNotC : ¬ p ∣ 418449) (hNotB : ¬ p ∣ 418446),
        order_of_C_B_inv_mod_p2 418449 418446 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 418785 418788 ∧ ¬ p ∣ (418788 - 418785) ∧
      ∃ (hNotC : ¬ p ∣ 418788) (hNotB : ¬ p ∣ 418785),
        order_of_C_B_inv_mod_p2 418788 418785 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 419117 419120 ∧ ¬ p ∣ (419120 - 419117) ∧
      ∃ (hNotC : ¬ p ∣ 419120) (hNotB : ¬ p ∣ 419117),
        order_of_C_B_inv_mod_p2 419120 419117 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 419471 419474 ∧ ¬ p ∣ (419474 - 419471) ∧
      ∃ (hNotC : ¬ p ∣ 419474) (hNotB : ¬ p ∣ 419471),
        order_of_C_B_inv_mod_p2 419474 419471 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 419807 419810 ∧ ¬ p ∣ (419810 - 419807) ∧
      ∃ (hNotC : ¬ p ∣ 419810) (hNotB : ¬ p ∣ 419807),
        order_of_C_B_inv_mod_p2 419810 419807 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 420150 420153 ∧ ¬ p ∣ (420153 - 420150) ∧
      ∃ (hNotC : ¬ p ∣ 420153) (hNotB : ¬ p ∣ 420150),
        order_of_C_B_inv_mod_p2 420153 420150 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 420489 420492 ∧ ¬ p ∣ (420492 - 420489) ∧
      ∃ (hNotC : ¬ p ∣ 420492) (hNotB : ¬ p ∣ 420489),
        order_of_C_B_inv_mod_p2 420492 420489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 420818 420821 ∧ ¬ p ∣ (420821 - 420818) ∧
      ∃ (hNotC : ¬ p ∣ 420821) (hNotB : ¬ p ∣ 420818),
        order_of_C_B_inv_mod_p2 420821 420818 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 421157 421160 ∧ ¬ p ∣ (421160 - 421157) ∧
      ∃ (hNotC : ¬ p ∣ 421160) (hNotB : ¬ p ∣ 421157),
        order_of_C_B_inv_mod_p2 421160 421157 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 421481 421484 ∧ ¬ p ∣ (421484 - 421481) ∧
      ∃ (hNotC : ¬ p ∣ 421484) (hNotB : ¬ p ∣ 421481),
        order_of_C_B_inv_mod_p2 421484 421481 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 421814 421817 ∧ ¬ p ∣ (421817 - 421814) ∧
      ∃ (hNotC : ¬ p ∣ 421817) (hNotB : ¬ p ∣ 421814),
        order_of_C_B_inv_mod_p2 421817 421814 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 422163 422166 ∧ ¬ p ∣ (422166 - 422163) ∧
      ∃ (hNotC : ¬ p ∣ 422166) (hNotB : ¬ p ∣ 422163),
        order_of_C_B_inv_mod_p2 422166 422163 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 422503 422506 ∧ ¬ p ∣ (422506 - 422503) ∧
      ∃ (hNotC : ¬ p ∣ 422506) (hNotB : ¬ p ∣ 422503),
        order_of_C_B_inv_mod_p2 422506 422503 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 422826 422829 ∧ ¬ p ∣ (422829 - 422826) ∧
      ∃ (hNotC : ¬ p ∣ 422829) (hNotB : ¬ p ∣ 422826),
        order_of_C_B_inv_mod_p2 422829 422826 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 423168 423171 ∧ ¬ p ∣ (423171 - 423168) ∧
      ∃ (hNotC : ¬ p ∣ 423171) (hNotB : ¬ p ∣ 423168),
        order_of_C_B_inv_mod_p2 423171 423168 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 423499 423502 ∧ ¬ p ∣ (423502 - 423499) ∧
      ∃ (hNotC : ¬ p ∣ 423502) (hNotB : ¬ p ∣ 423499),
        order_of_C_B_inv_mod_p2 423502 423499 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 423854 423857 ∧ ¬ p ∣ (423857 - 423854) ∧
      ∃ (hNotC : ¬ p ∣ 423857) (hNotB : ¬ p ∣ 423854),
        order_of_C_B_inv_mod_p2 423857 423854 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 424182 424185 ∧ ¬ p ∣ (424185 - 424182) ∧
      ∃ (hNotC : ¬ p ∣ 424185) (hNotB : ¬ p ∣ 424182),
        order_of_C_B_inv_mod_p2 424185 424182 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 424505 424508 ∧ ¬ p ∣ (424508 - 424505) ∧
      ∃ (hNotC : ¬ p ∣ 424508) (hNotB : ¬ p ∣ 424505),
        order_of_C_B_inv_mod_p2 424508 424505 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 424840 424843 ∧ ¬ p ∣ (424843 - 424840) ∧
      ∃ (hNotC : ¬ p ∣ 424843) (hNotB : ¬ p ∣ 424840),
        order_of_C_B_inv_mod_p2 424843 424840 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 425179 425182 ∧ ¬ p ∣ (425182 - 425179) ∧
      ∃ (hNotC : ¬ p ∣ 425182) (hNotB : ¬ p ∣ 425179),
        order_of_C_B_inv_mod_p2 425182 425179 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 425516 425519 ∧ ¬ p ∣ (425519 - 425516) ∧
      ∃ (hNotC : ¬ p ∣ 425519) (hNotB : ¬ p ∣ 425516),
        order_of_C_B_inv_mod_p2 425519 425516 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 425848 425851 ∧ ¬ p ∣ (425851 - 425848) ∧
      ∃ (hNotC : ¬ p ∣ 425851) (hNotB : ¬ p ∣ 425848),
        order_of_C_B_inv_mod_p2 425851 425848 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 426177 426180 ∧ ¬ p ∣ (426180 - 426177) ∧
      ∃ (hNotC : ¬ p ∣ 426180) (hNotB : ¬ p ∣ 426177),
        order_of_C_B_inv_mod_p2 426180 426177 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 426531 426534 ∧ ¬ p ∣ (426534 - 426531) ∧
      ∃ (hNotC : ¬ p ∣ 426534) (hNotB : ¬ p ∣ 426531),
        order_of_C_B_inv_mod_p2 426534 426531 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 426866 426869 ∧ ¬ p ∣ (426869 - 426866) ∧
      ∃ (hNotC : ¬ p ∣ 426869) (hNotB : ¬ p ∣ 426866),
        order_of_C_B_inv_mod_p2 426869 426866 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 427198 427201 ∧ ¬ p ∣ (427201 - 427198) ∧
      ∃ (hNotC : ¬ p ∣ 427201) (hNotB : ¬ p ∣ 427198),
        order_of_C_B_inv_mod_p2 427201 427198 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 427530 427533 ∧ ¬ p ∣ (427533 - 427530) ∧
      ∃ (hNotC : ¬ p ∣ 427533) (hNotB : ¬ p ∣ 427530),
        order_of_C_B_inv_mod_p2 427533 427530 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 427877 427880 ∧ ¬ p ∣ (427880 - 427877) ∧
      ∃ (hNotC : ¬ p ∣ 427880) (hNotB : ¬ p ∣ 427877),
        order_of_C_B_inv_mod_p2 427880 427877 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 428200 428203 ∧ ¬ p ∣ (428203 - 428200) ∧
      ∃ (hNotC : ¬ p ∣ 428203) (hNotB : ¬ p ∣ 428200),
        order_of_C_B_inv_mod_p2 428203 428200 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 428554 428557 ∧ ¬ p ∣ (428557 - 428554) ∧
      ∃ (hNotC : ¬ p ∣ 428557) (hNotB : ¬ p ∣ 428554),
        order_of_C_B_inv_mod_p2 428557 428554 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 428886 428889 ∧ ¬ p ∣ (428889 - 428886) ∧
      ∃ (hNotC : ¬ p ∣ 428889) (hNotB : ¬ p ∣ 428886),
        order_of_C_B_inv_mod_p2 428889 428886 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 429214 429217 ∧ ¬ p ∣ (429217 - 429214) ∧
      ∃ (hNotC : ¬ p ∣ 429217) (hNotB : ¬ p ∣ 429214),
        order_of_C_B_inv_mod_p2 429217 429214 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 429544 429547 ∧ ¬ p ∣ (429547 - 429544) ∧
      ∃ (hNotC : ¬ p ∣ 429547) (hNotB : ¬ p ∣ 429544),
        order_of_C_B_inv_mod_p2 429547 429544 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 429871 429874 ∧ ¬ p ∣ (429874 - 429871) ∧
      ∃ (hNotC : ¬ p ∣ 429874) (hNotB : ¬ p ∣ 429871),
        order_of_C_B_inv_mod_p2 429874 429871 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430200 430203 ∧ ¬ p ∣ (430203 - 430200) ∧
      ∃ (hNotC : ¬ p ∣ 430203) (hNotB : ¬ p ∣ 430200),
        order_of_C_B_inv_mod_p2 430203 430200 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430551 430554 ∧ ¬ p ∣ (430554 - 430551) ∧
      ∃ (hNotC : ¬ p ∣ 430554) (hNotB : ¬ p ∣ 430551),
        order_of_C_B_inv_mod_p2 430554 430551 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 430897 430900 ∧ ¬ p ∣ (430900 - 430897) ∧
      ∃ (hNotC : ¬ p ∣ 430900) (hNotB : ¬ p ∣ 430897),
        order_of_C_B_inv_mod_p2 430900 430897 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 431224 431227 ∧ ¬ p ∣ (431227 - 431224) ∧
      ∃ (hNotC : ¬ p ∣ 431227) (hNotB : ¬ p ∣ 431224),
        order_of_C_B_inv_mod_p2 431227 431224 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 431568 431571 ∧ ¬ p ∣ (431571 - 431568) ∧
      ∃ (hNotC : ¬ p ∣ 431571) (hNotB : ¬ p ∣ 431568),
        order_of_C_B_inv_mod_p2 431571 431568 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 431884 431887 ∧ ¬ p ∣ (431887 - 431884) ∧
      ∃ (hNotC : ¬ p ∣ 431887) (hNotB : ¬ p ∣ 431884),
        order_of_C_B_inv_mod_p2 431887 431884 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 432202 432205 ∧ ¬ p ∣ (432205 - 432202) ∧
      ∃ (hNotC : ¬ p ∣ 432205) (hNotB : ¬ p ∣ 432202),
        order_of_C_B_inv_mod_p2 432205 432202 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 432549 432552 ∧ ¬ p ∣ (432552 - 432549) ∧
      ∃ (hNotC : ¬ p ∣ 432552) (hNotB : ¬ p ∣ 432549),
        order_of_C_B_inv_mod_p2 432552 432549 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 432878 432881 ∧ ¬ p ∣ (432881 - 432878) ∧
      ∃ (hNotC : ¬ p ∣ 432881) (hNotB : ¬ p ∣ 432878),
        order_of_C_B_inv_mod_p2 432881 432878 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 433219 433222 ∧ ¬ p ∣ (433222 - 433219) ∧
      ∃ (hNotC : ¬ p ∣ 433222) (hNotB : ¬ p ∣ 433219),
        order_of_C_B_inv_mod_p2 433222 433219 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 433544 433547 ∧ ¬ p ∣ (433547 - 433544) ∧
      ∃ (hNotC : ¬ p ∣ 433547) (hNotB : ¬ p ∣ 433544),
        order_of_C_B_inv_mod_p2 433547 433544 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 433860 433863 ∧ ¬ p ∣ (433863 - 433860) ∧
      ∃ (hNotC : ¬ p ∣ 433863) (hNotB : ¬ p ∣ 433860),
        order_of_C_B_inv_mod_p2 433863 433860 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 434207 434210 ∧ ¬ p ∣ (434210 - 434207) ∧
      ∃ (hNotC : ¬ p ∣ 434210) (hNotB : ¬ p ∣ 434207),
        order_of_C_B_inv_mod_p2 434210 434207 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 434552 434555 ∧ ¬ p ∣ (434555 - 434552) ∧
      ∃ (hNotC : ¬ p ∣ 434555) (hNotB : ¬ p ∣ 434552),
        order_of_C_B_inv_mod_p2 434555 434552 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 434897 434900 ∧ ¬ p ∣ (434900 - 434897) ∧
      ∃ (hNotC : ¬ p ∣ 434900) (hNotB : ¬ p ∣ 434897),
        order_of_C_B_inv_mod_p2 434900 434897 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 435242 435245 ∧ ¬ p ∣ (435245 - 435242) ∧
      ∃ (hNotC : ¬ p ∣ 435245) (hNotB : ¬ p ∣ 435242),
        order_of_C_B_inv_mod_p2 435245 435242 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 435585 435588 ∧ ¬ p ∣ (435588 - 435585) ∧
      ∃ (hNotC : ¬ p ∣ 435588) (hNotB : ¬ p ∣ 435585),
        order_of_C_B_inv_mod_p2 435588 435585 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 435912 435915 ∧ ¬ p ∣ (435915 - 435912) ∧
      ∃ (hNotC : ¬ p ∣ 435915) (hNotB : ¬ p ∣ 435912),
        order_of_C_B_inv_mod_p2 435915 435912 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 436250 436253 ∧ ¬ p ∣ (436253 - 436250) ∧
      ∃ (hNotC : ¬ p ∣ 436253) (hNotB : ¬ p ∣ 436250),
        order_of_C_B_inv_mod_p2 436253 436250 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 436568 436571 ∧ ¬ p ∣ (436571 - 436568) ∧
      ∃ (hNotC : ¬ p ∣ 436571) (hNotB : ¬ p ∣ 436568),
        order_of_C_B_inv_mod_p2 436571 436568 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 436919 436922 ∧ ¬ p ∣ (436922 - 436919) ∧
      ∃ (hNotC : ¬ p ∣ 436922) (hNotB : ¬ p ∣ 436919),
        order_of_C_B_inv_mod_p2 436922 436919 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 437255 437258 ∧ ¬ p ∣ (437258 - 437255) ∧
      ∃ (hNotC : ¬ p ∣ 437258) (hNotB : ¬ p ∣ 437255),
        order_of_C_B_inv_mod_p2 437258 437255 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 437594 437597 ∧ ¬ p ∣ (437597 - 437594) ∧
      ∃ (hNotC : ¬ p ∣ 437597) (hNotB : ¬ p ∣ 437594),
        order_of_C_B_inv_mod_p2 437597 437594 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 437923 437926 ∧ ¬ p ∣ (437926 - 437923) ∧
      ∃ (hNotC : ¬ p ∣ 437926) (hNotB : ¬ p ∣ 437923),
        order_of_C_B_inv_mod_p2 437926 437923 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 438257 438260 ∧ ¬ p ∣ (438260 - 438257) ∧
      ∃ (hNotC : ¬ p ∣ 438260) (hNotB : ¬ p ∣ 438257),
        order_of_C_B_inv_mod_p2 438260 438257 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 438580 438583 ∧ ¬ p ∣ (438583 - 438580) ∧
      ∃ (hNotC : ¬ p ∣ 438583) (hNotB : ¬ p ∣ 438580),
        order_of_C_B_inv_mod_p2 438583 438580 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 438939 438942 ∧ ¬ p ∣ (438942 - 438939) ∧
      ∃ (hNotC : ¬ p ∣ 438942) (hNotB : ¬ p ∣ 438939),
        order_of_C_B_inv_mod_p2 438942 438939 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 439270 439273 ∧ ¬ p ∣ (439273 - 439270) ∧
      ∃ (hNotC : ¬ p ∣ 439273) (hNotB : ¬ p ∣ 439270),
        order_of_C_B_inv_mod_p2 439273 439270 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 439609 439612 ∧ ¬ p ∣ (439612 - 439609) ∧
      ∃ (hNotC : ¬ p ∣ 439612) (hNotB : ¬ p ∣ 439609),
        order_of_C_B_inv_mod_p2 439612 439609 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 439953 439956 ∧ ¬ p ∣ (439956 - 439953) ∧
      ∃ (hNotC : ¬ p ∣ 439956) (hNotB : ¬ p ∣ 439953),
        order_of_C_B_inv_mod_p2 439956 439953 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 440289 440292 ∧ ¬ p ∣ (440292 - 440289) ∧
      ∃ (hNotC : ¬ p ∣ 440292) (hNotB : ¬ p ∣ 440289),
        order_of_C_B_inv_mod_p2 440292 440289 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 440627 440630 ∧ ¬ p ∣ (440630 - 440627) ∧
      ∃ (hNotC : ¬ p ∣ 440630) (hNotB : ¬ p ∣ 440627),
        order_of_C_B_inv_mod_p2 440630 440627 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 440965 440968 ∧ ¬ p ∣ (440968 - 440965) ∧
      ∃ (hNotC : ¬ p ∣ 440968) (hNotB : ¬ p ∣ 440965),
        order_of_C_B_inv_mod_p2 440968 440965 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 441303 441306 ∧ ¬ p ∣ (441306 - 441303) ∧
      ∃ (hNotC : ¬ p ∣ 441306) (hNotB : ¬ p ∣ 441303),
        order_of_C_B_inv_mod_p2 441306 441303 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 441641 441644 ∧ ¬ p ∣ (441644 - 441641) ∧
      ∃ (hNotC : ¬ p ∣ 441644) (hNotB : ¬ p ∣ 441641),
        order_of_C_B_inv_mod_p2 441644 441641 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 441979 441982 ∧ ¬ p ∣ (441982 - 441979) ∧
      ∃ (hNotC : ¬ p ∣ 441982) (hNotB : ¬ p ∣ 441979),
        order_of_C_B_inv_mod_p2 441982 441979 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442298 442301 ∧ ¬ p ∣ (442301 - 442298) ∧
      ∃ (hNotC : ¬ p ∣ 442301) (hNotB : ¬ p ∣ 442298),
        order_of_C_B_inv_mod_p2 442301 442298 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442612 442615 ∧ ¬ p ∣ (442615 - 442612) ∧
      ∃ (hNotC : ¬ p ∣ 442615) (hNotB : ¬ p ∣ 442612),
        order_of_C_B_inv_mod_p2 442615 442612 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 442958 442961 ∧ ¬ p ∣ (442961 - 442958) ∧
      ∃ (hNotC : ¬ p ∣ 442961) (hNotB : ¬ p ∣ 442958),
        order_of_C_B_inv_mod_p2 442961 442958 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 443276 443279 ∧ ¬ p ∣ (443279 - 443276) ∧
      ∃ (hNotC : ¬ p ∣ 443279) (hNotB : ¬ p ∣ 443276),
        order_of_C_B_inv_mod_p2 443279 443276 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 443621 443624 ∧ ¬ p ∣ (443624 - 443621) ∧
      ∃ (hNotC : ¬ p ∣ 443624) (hNotB : ¬ p ∣ 443621),
        order_of_C_B_inv_mod_p2 443624 443621 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 443960 443963 ∧ ¬ p ∣ (443963 - 443960) ∧
      ∃ (hNotC : ¬ p ∣ 443963) (hNotB : ¬ p ∣ 443960),
        order_of_C_B_inv_mod_p2 443963 443960 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 444304 444307 ∧ ¬ p ∣ (444307 - 444304) ∧
      ∃ (hNotC : ¬ p ∣ 444307) (hNotB : ¬ p ∣ 444304),
        order_of_C_B_inv_mod_p2 444307 444304 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 444652 444655 ∧ ¬ p ∣ (444655 - 444652) ∧
      ∃ (hNotC : ¬ p ∣ 444655) (hNotB : ¬ p ∣ 444652),
        order_of_C_B_inv_mod_p2 444655 444652 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 444986 444989 ∧ ¬ p ∣ (444989 - 444986) ∧
      ∃ (hNotC : ¬ p ∣ 444989) (hNotB : ¬ p ∣ 444986),
        order_of_C_B_inv_mod_p2 444989 444986 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 445336 445339 ∧ ¬ p ∣ (445339 - 445336) ∧
      ∃ (hNotC : ¬ p ∣ 445339) (hNotB : ¬ p ∣ 445336),
        order_of_C_B_inv_mod_p2 445339 445336 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 445661 445664 ∧ ¬ p ∣ (445664 - 445661) ∧
      ∃ (hNotC : ¬ p ∣ 445664) (hNotB : ¬ p ∣ 445661),
        order_of_C_B_inv_mod_p2 445664 445661 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 445984 445987 ∧ ¬ p ∣ (445987 - 445984) ∧
      ∃ (hNotC : ¬ p ∣ 445987) (hNotB : ¬ p ∣ 445984),
        order_of_C_B_inv_mod_p2 445987 445984 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 446317 446320 ∧ ¬ p ∣ (446320 - 446317) ∧
      ∃ (hNotC : ¬ p ∣ 446320) (hNotB : ¬ p ∣ 446317),
        order_of_C_B_inv_mod_p2 446320 446317 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 446647 446650 ∧ ¬ p ∣ (446650 - 446647) ∧
      ∃ (hNotC : ¬ p ∣ 446650) (hNotB : ¬ p ∣ 446647),
        order_of_C_B_inv_mod_p2 446650 446647 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 446986 446989 ∧ ¬ p ∣ (446989 - 446986) ∧
      ∃ (hNotC : ¬ p ∣ 446989) (hNotB : ¬ p ∣ 446986),
        order_of_C_B_inv_mod_p2 446989 446986 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 447333 447336 ∧ ¬ p ∣ (447336 - 447333) ∧
      ∃ (hNotC : ¬ p ∣ 447336) (hNotB : ¬ p ∣ 447333),
        order_of_C_B_inv_mod_p2 447336 447333 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 447656 447659 ∧ ¬ p ∣ (447659 - 447656) ∧
      ∃ (hNotC : ¬ p ∣ 447659) (hNotB : ¬ p ∣ 447656),
        order_of_C_B_inv_mod_p2 447659 447656 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 447992 447995 ∧ ¬ p ∣ (447995 - 447992) ∧
      ∃ (hNotC : ¬ p ∣ 447995) (hNotB : ¬ p ∣ 447992),
        order_of_C_B_inv_mod_p2 447995 447992 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 448331 448334 ∧ ¬ p ∣ (448334 - 448331) ∧
      ∃ (hNotC : ¬ p ∣ 448334) (hNotB : ¬ p ∣ 448331),
        order_of_C_B_inv_mod_p2 448334 448331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 448674 448677 ∧ ¬ p ∣ (448677 - 448674) ∧
      ∃ (hNotC : ¬ p ∣ 448677) (hNotB : ¬ p ∣ 448674),
        order_of_C_B_inv_mod_p2 448677 448674 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 449014 449017 ∧ ¬ p ∣ (449017 - 449014) ∧
      ∃ (hNotC : ¬ p ∣ 449017) (hNotB : ¬ p ∣ 449014),
        order_of_C_B_inv_mod_p2 449017 449014 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 449363 449366 ∧ ¬ p ∣ (449366 - 449363) ∧
      ∃ (hNotC : ¬ p ∣ 449366) (hNotB : ¬ p ∣ 449363),
        order_of_C_B_inv_mod_p2 449366 449363 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 449669 449672 ∧ ¬ p ∣ (449672 - 449669) ∧
      ∃ (hNotC : ¬ p ∣ 449672) (hNotB : ¬ p ∣ 449669),
        order_of_C_B_inv_mod_p2 449672 449669 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450007 450010 ∧ ¬ p ∣ (450010 - 450007) ∧
      ∃ (hNotC : ¬ p ∣ 450010) (hNotB : ¬ p ∣ 450007),
        order_of_C_B_inv_mod_p2 450010 450007 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450326 450329 ∧ ¬ p ∣ (450329 - 450326) ∧
      ∃ (hNotC : ¬ p ∣ 450329) (hNotB : ¬ p ∣ 450326),
        order_of_C_B_inv_mod_p2 450329 450326 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450640 450643 ∧ ¬ p ∣ (450643 - 450640) ∧
      ∃ (hNotC : ¬ p ∣ 450643) (hNotB : ¬ p ∣ 450640),
        order_of_C_B_inv_mod_p2 450643 450640 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 450975 450978 ∧ ¬ p ∣ (450978 - 450975) ∧
      ∃ (hNotC : ¬ p ∣ 450978) (hNotB : ¬ p ∣ 450975),
        order_of_C_B_inv_mod_p2 450978 450975 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 451318 451321 ∧ ¬ p ∣ (451321 - 451318) ∧
      ∃ (hNotC : ¬ p ∣ 451321) (hNotB : ¬ p ∣ 451318),
        order_of_C_B_inv_mod_p2 451321 451318 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 451661 451664 ∧ ¬ p ∣ (451664 - 451661) ∧
      ∃ (hNotC : ¬ p ∣ 451664) (hNotB : ¬ p ∣ 451661),
        order_of_C_B_inv_mod_p2 451664 451661 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 451993 451996 ∧ ¬ p ∣ (451996 - 451993) ∧
      ∃ (hNotC : ¬ p ∣ 451996) (hNotB : ¬ p ∣ 451993),
        order_of_C_B_inv_mod_p2 451996 451993 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 452333 452336 ∧ ¬ p ∣ (452336 - 452333) ∧
      ∃ (hNotC : ¬ p ∣ 452336) (hNotB : ¬ p ∣ 452333),
        order_of_C_B_inv_mod_p2 452336 452333 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 452673 452676 ∧ ¬ p ∣ (452676 - 452673) ∧
      ∃ (hNotC : ¬ p ∣ 452676) (hNotB : ¬ p ∣ 452673),
        order_of_C_B_inv_mod_p2 452676 452673 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 452991 452994 ∧ ¬ p ∣ (452994 - 452991) ∧
      ∃ (hNotC : ¬ p ∣ 452994) (hNotB : ¬ p ∣ 452991),
        order_of_C_B_inv_mod_p2 452994 452991 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 453327 453330 ∧ ¬ p ∣ (453330 - 453327) ∧
      ∃ (hNotC : ¬ p ∣ 453330) (hNotB : ¬ p ∣ 453327),
        order_of_C_B_inv_mod_p2 453330 453327 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 453661 453664 ∧ ¬ p ∣ (453664 - 453661) ∧
      ∃ (hNotC : ¬ p ∣ 453664) (hNotB : ¬ p ∣ 453661),
        order_of_C_B_inv_mod_p2 453664 453661 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 453990 453993 ∧ ¬ p ∣ (453993 - 453990) ∧
      ∃ (hNotC : ¬ p ∣ 453993) (hNotB : ¬ p ∣ 453990),
        order_of_C_B_inv_mod_p2 453993 453990 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 454320 454323 ∧ ¬ p ∣ (454323 - 454320) ∧
      ∃ (hNotC : ¬ p ∣ 454323) (hNotB : ¬ p ∣ 454320),
        order_of_C_B_inv_mod_p2 454323 454320 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 454660 454663 ∧ ¬ p ∣ (454663 - 454660) ∧
      ∃ (hNotC : ¬ p ∣ 454663) (hNotB : ¬ p ∣ 454660),
        order_of_C_B_inv_mod_p2 454663 454660 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 454997 455000 ∧ ¬ p ∣ (455000 - 454997) ∧
      ∃ (hNotC : ¬ p ∣ 455000) (hNotB : ¬ p ∣ 454997),
        order_of_C_B_inv_mod_p2 455000 454997 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 455335 455338 ∧ ¬ p ∣ (455338 - 455335) ∧
      ∃ (hNotC : ¬ p ∣ 455338) (hNotB : ¬ p ∣ 455335),
        order_of_C_B_inv_mod_p2 455338 455335 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 455695 455698 ∧ ¬ p ∣ (455698 - 455695) ∧
      ∃ (hNotC : ¬ p ∣ 455698) (hNotB : ¬ p ∣ 455695),
        order_of_C_B_inv_mod_p2 455698 455695 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 456019 456022 ∧ ¬ p ∣ (456022 - 456019) ∧
      ∃ (hNotC : ¬ p ∣ 456022) (hNotB : ¬ p ∣ 456019),
        order_of_C_B_inv_mod_p2 456022 456019 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 456346 456349 ∧ ¬ p ∣ (456349 - 456346) ∧
      ∃ (hNotC : ¬ p ∣ 456349) (hNotB : ¬ p ∣ 456346),
        order_of_C_B_inv_mod_p2 456349 456346 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 456688 456691 ∧ ¬ p ∣ (456691 - 456688) ∧
      ∃ (hNotC : ¬ p ∣ 456691) (hNotB : ¬ p ∣ 456688),
        order_of_C_B_inv_mod_p2 456691 456688 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 457006 457009 ∧ ¬ p ∣ (457009 - 457006) ∧
      ∃ (hNotC : ¬ p ∣ 457009) (hNotB : ¬ p ∣ 457006),
        order_of_C_B_inv_mod_p2 457009 457006 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 457350 457353 ∧ ¬ p ∣ (457353 - 457350) ∧
      ∃ (hNotC : ¬ p ∣ 457353) (hNotB : ¬ p ∣ 457350),
        order_of_C_B_inv_mod_p2 457353 457350 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 457688 457691 ∧ ¬ p ∣ (457691 - 457688) ∧
      ∃ (hNotC : ¬ p ∣ 457691) (hNotB : ¬ p ∣ 457688),
        order_of_C_B_inv_mod_p2 457691 457688 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 458026 458029 ∧ ¬ p ∣ (458029 - 458026) ∧
      ∃ (hNotC : ¬ p ∣ 458029) (hNotB : ¬ p ∣ 458026),
        order_of_C_B_inv_mod_p2 458029 458026 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 458349 458352 ∧ ¬ p ∣ (458352 - 458349) ∧
      ∃ (hNotC : ¬ p ∣ 458352) (hNotB : ¬ p ∣ 458349),
        order_of_C_B_inv_mod_p2 458352 458349 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 458697 458700 ∧ ¬ p ∣ (458700 - 458697) ∧
      ∃ (hNotC : ¬ p ∣ 458700) (hNotB : ¬ p ∣ 458697),
        order_of_C_B_inv_mod_p2 458700 458697 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 459017 459020 ∧ ¬ p ∣ (459020 - 459017) ∧
      ∃ (hNotC : ¬ p ∣ 459020) (hNotB : ¬ p ∣ 459017),
        order_of_C_B_inv_mod_p2 459020 459017 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 459358 459361 ∧ ¬ p ∣ (459361 - 459358) ∧
      ∃ (hNotC : ¬ p ∣ 459361) (hNotB : ¬ p ∣ 459358),
        order_of_C_B_inv_mod_p2 459361 459358 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 459709 459712 ∧ ¬ p ∣ (459712 - 459709) ∧
      ∃ (hNotC : ¬ p ∣ 459712) (hNotB : ¬ p ∣ 459709),
        order_of_C_B_inv_mod_p2 459712 459709 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 460039 460042 ∧ ¬ p ∣ (460042 - 460039) ∧
      ∃ (hNotC : ¬ p ∣ 460042) (hNotB : ¬ p ∣ 460039),
        order_of_C_B_inv_mod_p2 460042 460039 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 460368 460371 ∧ ¬ p ∣ (460371 - 460368) ∧
      ∃ (hNotC : ¬ p ∣ 460371) (hNotB : ¬ p ∣ 460368),
        order_of_C_B_inv_mod_p2 460371 460368 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 460712 460715 ∧ ¬ p ∣ (460715 - 460712) ∧
      ∃ (hNotC : ¬ p ∣ 460715) (hNotB : ¬ p ∣ 460712),
        order_of_C_B_inv_mod_p2 460715 460712 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461043 461046 ∧ ¬ p ∣ (461046 - 461043) ∧
      ∃ (hNotC : ¬ p ∣ 461046) (hNotB : ¬ p ∣ 461043),
        order_of_C_B_inv_mod_p2 461046 461043 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461378 461381 ∧ ¬ p ∣ (461381 - 461378) ∧
      ∃ (hNotC : ¬ p ∣ 461381) (hNotB : ¬ p ∣ 461378),
        order_of_C_B_inv_mod_p2 461381 461378 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 461720 461723 ∧ ¬ p ∣ (461723 - 461720) ∧
      ∃ (hNotC : ¬ p ∣ 461723) (hNotB : ¬ p ∣ 461720),
        order_of_C_B_inv_mod_p2 461723 461720 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 462065 462068 ∧ ¬ p ∣ (462068 - 462065) ∧
      ∃ (hNotC : ¬ p ∣ 462068) (hNotB : ¬ p ∣ 462065),
        order_of_C_B_inv_mod_p2 462068 462065 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 462394 462397 ∧ ¬ p ∣ (462397 - 462394) ∧
      ∃ (hNotC : ¬ p ∣ 462397) (hNotB : ¬ p ∣ 462394),
        order_of_C_B_inv_mod_p2 462397 462394 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 462729 462732 ∧ ¬ p ∣ (462732 - 462729) ∧
      ∃ (hNotC : ¬ p ∣ 462732) (hNotB : ¬ p ∣ 462729),
        order_of_C_B_inv_mod_p2 462732 462729 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 463043 463046 ∧ ¬ p ∣ (463046 - 463043) ∧
      ∃ (hNotC : ¬ p ∣ 463046) (hNotB : ¬ p ∣ 463043),
        order_of_C_B_inv_mod_p2 463046 463043 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 463390 463393 ∧ ¬ p ∣ (463393 - 463390) ∧
      ∃ (hNotC : ¬ p ∣ 463393) (hNotB : ¬ p ∣ 463390),
        order_of_C_B_inv_mod_p2 463393 463390 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 463742 463745 ∧ ¬ p ∣ (463745 - 463742) ∧
      ∃ (hNotC : ¬ p ∣ 463745) (hNotB : ¬ p ∣ 463742),
        order_of_C_B_inv_mod_p2 463745 463742 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 464076 464079 ∧ ¬ p ∣ (464079 - 464076) ∧
      ∃ (hNotC : ¬ p ∣ 464079) (hNotB : ¬ p ∣ 464076),
        order_of_C_B_inv_mod_p2 464079 464076 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 464430 464433 ∧ ¬ p ∣ (464433 - 464430) ∧
      ∃ (hNotC : ¬ p ∣ 464433) (hNotB : ¬ p ∣ 464430),
        order_of_C_B_inv_mod_p2 464433 464430 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 464767 464770 ∧ ¬ p ∣ (464770 - 464767) ∧
      ∃ (hNotC : ¬ p ∣ 464770) (hNotB : ¬ p ∣ 464767),
        order_of_C_B_inv_mod_p2 464770 464767 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 465118 465121 ∧ ¬ p ∣ (465121 - 465118) ∧
      ∃ (hNotC : ¬ p ∣ 465121) (hNotB : ¬ p ∣ 465118),
        order_of_C_B_inv_mod_p2 465121 465118 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 465464 465467 ∧ ¬ p ∣ (465467 - 465464) ∧
      ∃ (hNotC : ¬ p ∣ 465467) (hNotB : ¬ p ∣ 465464),
        order_of_C_B_inv_mod_p2 465467 465464 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 465797 465800 ∧ ¬ p ∣ (465800 - 465797) ∧
      ∃ (hNotC : ¬ p ∣ 465800) (hNotB : ¬ p ∣ 465797),
        order_of_C_B_inv_mod_p2 465800 465797 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 466134 466137 ∧ ¬ p ∣ (466137 - 466134) ∧
      ∃ (hNotC : ¬ p ∣ 466137) (hNotB : ¬ p ∣ 466134),
        order_of_C_B_inv_mod_p2 466137 466134 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 466478 466481 ∧ ¬ p ∣ (466481 - 466478) ∧
      ∃ (hNotC : ¬ p ∣ 466481) (hNotB : ¬ p ∣ 466478),
        order_of_C_B_inv_mod_p2 466481 466478 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 466815 466818 ∧ ¬ p ∣ (466818 - 466815) ∧
      ∃ (hNotC : ¬ p ∣ 466818) (hNotB : ¬ p ∣ 466815),
        order_of_C_B_inv_mod_p2 466818 466815 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 467138 467141 ∧ ¬ p ∣ (467141 - 467138) ∧
      ∃ (hNotC : ¬ p ∣ 467141) (hNotB : ¬ p ∣ 467138),
        order_of_C_B_inv_mod_p2 467141 467138 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 467469 467472 ∧ ¬ p ∣ (467472 - 467469) ∧
      ∃ (hNotC : ¬ p ∣ 467472) (hNotB : ¬ p ∣ 467469),
        order_of_C_B_inv_mod_p2 467472 467469 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 467812 467815 ∧ ¬ p ∣ (467815 - 467812) ∧
      ∃ (hNotC : ¬ p ∣ 467815) (hNotB : ¬ p ∣ 467812),
        order_of_C_B_inv_mod_p2 467815 467812 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 468153 468156 ∧ ¬ p ∣ (468156 - 468153) ∧
      ∃ (hNotC : ¬ p ∣ 468156) (hNotB : ¬ p ∣ 468153),
        order_of_C_B_inv_mod_p2 468156 468153 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 468488 468491 ∧ ¬ p ∣ (468491 - 468488) ∧
      ∃ (hNotC : ¬ p ∣ 468491) (hNotB : ¬ p ∣ 468488),
        order_of_C_B_inv_mod_p2 468491 468488 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 468821 468824 ∧ ¬ p ∣ (468824 - 468821) ∧
      ∃ (hNotC : ¬ p ∣ 468824) (hNotB : ¬ p ∣ 468821),
        order_of_C_B_inv_mod_p2 468824 468821 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 469165 469168 ∧ ¬ p ∣ (469168 - 469165) ∧
      ∃ (hNotC : ¬ p ∣ 469168) (hNotB : ¬ p ∣ 469165),
        order_of_C_B_inv_mod_p2 469168 469165 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 469482 469485 ∧ ¬ p ∣ (469485 - 469482) ∧
      ∃ (hNotC : ¬ p ∣ 469485) (hNotB : ¬ p ∣ 469482),
        order_of_C_B_inv_mod_p2 469485 469482 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 469828 469831 ∧ ¬ p ∣ (469831 - 469828) ∧
      ∃ (hNotC : ¬ p ∣ 469831) (hNotB : ¬ p ∣ 469828),
        order_of_C_B_inv_mod_p2 469831 469828 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 470167 470170 ∧ ¬ p ∣ (470170 - 470167) ∧
      ∃ (hNotC : ¬ p ∣ 470170) (hNotB : ¬ p ∣ 470167),
        order_of_C_B_inv_mod_p2 470170 470167 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 470498 470501 ∧ ¬ p ∣ (470501 - 470498) ∧
      ∃ (hNotC : ¬ p ∣ 470501) (hNotB : ¬ p ∣ 470498),
        order_of_C_B_inv_mod_p2 470501 470498 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 470829 470832 ∧ ¬ p ∣ (470832 - 470829) ∧
      ∃ (hNotC : ¬ p ∣ 470832) (hNotB : ¬ p ∣ 470829),
        order_of_C_B_inv_mod_p2 470832 470829 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 471150 471153 ∧ ¬ p ∣ (471153 - 471150) ∧
      ∃ (hNotC : ¬ p ∣ 471153) (hNotB : ¬ p ∣ 471150),
        order_of_C_B_inv_mod_p2 471153 471150 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 471495 471498 ∧ ¬ p ∣ (471498 - 471495) ∧
      ∃ (hNotC : ¬ p ∣ 471498) (hNotB : ¬ p ∣ 471495),
        order_of_C_B_inv_mod_p2 471498 471495 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 471818 471821 ∧ ¬ p ∣ (471821 - 471818) ∧
      ∃ (hNotC : ¬ p ∣ 471821) (hNotB : ¬ p ∣ 471818),
        order_of_C_B_inv_mod_p2 471821 471818 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472181 472184 ∧ ¬ p ∣ (472184 - 472181) ∧
      ∃ (hNotC : ¬ p ∣ 472184) (hNotB : ¬ p ∣ 472181),
        order_of_C_B_inv_mod_p2 472184 472181 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472532 472535 ∧ ¬ p ∣ (472535 - 472532) ∧
      ∃ (hNotC : ¬ p ∣ 472535) (hNotB : ¬ p ∣ 472532),
        order_of_C_B_inv_mod_p2 472535 472532 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 472849 472852 ∧ ¬ p ∣ (472852 - 472849) ∧
      ∃ (hNotC : ¬ p ∣ 472852) (hNotB : ¬ p ∣ 472849),
        order_of_C_B_inv_mod_p2 472852 472849 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 473193 473196 ∧ ¬ p ∣ (473196 - 473193) ∧
      ∃ (hNotC : ¬ p ∣ 473196) (hNotB : ¬ p ∣ 473193),
        order_of_C_B_inv_mod_p2 473196 473193 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 473520 473523 ∧ ¬ p ∣ (473523 - 473520) ∧
      ∃ (hNotC : ¬ p ∣ 473523) (hNotB : ¬ p ∣ 473520),
        order_of_C_B_inv_mod_p2 473523 473520 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 473853 473856 ∧ ¬ p ∣ (473856 - 473853) ∧
      ∃ (hNotC : ¬ p ∣ 473856) (hNotB : ¬ p ∣ 473853),
        order_of_C_B_inv_mod_p2 473856 473853 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 474181 474184 ∧ ¬ p ∣ (474184 - 474181) ∧
      ∃ (hNotC : ¬ p ∣ 474184) (hNotB : ¬ p ∣ 474181),
        order_of_C_B_inv_mod_p2 474184 474181 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 474500 474503 ∧ ¬ p ∣ (474503 - 474500) ∧
      ∃ (hNotC : ¬ p ∣ 474503) (hNotB : ¬ p ∣ 474500),
        order_of_C_B_inv_mod_p2 474503 474500 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 474840 474843 ∧ ¬ p ∣ (474843 - 474840) ∧
      ∃ (hNotC : ¬ p ∣ 474843) (hNotB : ¬ p ∣ 474840),
        order_of_C_B_inv_mod_p2 474843 474840 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 475168 475171 ∧ ¬ p ∣ (475171 - 475168) ∧
      ∃ (hNotC : ¬ p ∣ 475171) (hNotB : ¬ p ∣ 475168),
        order_of_C_B_inv_mod_p2 475171 475168 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 475489 475492 ∧ ¬ p ∣ (475492 - 475489) ∧
      ∃ (hNotC : ¬ p ∣ 475492) (hNotB : ¬ p ∣ 475489),
        order_of_C_B_inv_mod_p2 475492 475489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 475830 475833 ∧ ¬ p ∣ (475833 - 475830) ∧
      ∃ (hNotC : ¬ p ∣ 475833) (hNotB : ¬ p ∣ 475830),
        order_of_C_B_inv_mod_p2 475833 475830 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 476158 476161 ∧ ¬ p ∣ (476161 - 476158) ∧
      ∃ (hNotC : ¬ p ∣ 476161) (hNotB : ¬ p ∣ 476158),
        order_of_C_B_inv_mod_p2 476161 476158 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 476510 476513 ∧ ¬ p ∣ (476513 - 476510) ∧
      ∃ (hNotC : ¬ p ∣ 476513) (hNotB : ¬ p ∣ 476510),
        order_of_C_B_inv_mod_p2 476513 476510 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 476842 476845 ∧ ¬ p ∣ (476845 - 476842) ∧
      ∃ (hNotC : ¬ p ∣ 476845) (hNotB : ¬ p ∣ 476842),
        order_of_C_B_inv_mod_p2 476845 476842 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 477183 477186 ∧ ¬ p ∣ (477186 - 477183) ∧
      ∃ (hNotC : ¬ p ∣ 477186) (hNotB : ¬ p ∣ 477183),
        order_of_C_B_inv_mod_p2 477186 477183 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 477518 477521 ∧ ¬ p ∣ (477521 - 477518) ∧
      ∃ (hNotC : ¬ p ∣ 477521) (hNotB : ¬ p ∣ 477518),
        order_of_C_B_inv_mod_p2 477521 477518 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 477854 477857 ∧ ¬ p ∣ (477857 - 477854) ∧
      ∃ (hNotC : ¬ p ∣ 477857) (hNotB : ¬ p ∣ 477854),
        order_of_C_B_inv_mod_p2 477857 477854 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 478204 478207 ∧ ¬ p ∣ (478207 - 478204) ∧
      ∃ (hNotC : ¬ p ∣ 478207) (hNotB : ¬ p ∣ 478204),
        order_of_C_B_inv_mod_p2 478207 478204 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 478545 478548 ∧ ¬ p ∣ (478548 - 478545) ∧
      ∃ (hNotC : ¬ p ∣ 478548) (hNotB : ¬ p ∣ 478545),
        order_of_C_B_inv_mod_p2 478548 478545 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 478873 478876 ∧ ¬ p ∣ (478876 - 478873) ∧
      ∃ (hNotC : ¬ p ∣ 478876) (hNotB : ¬ p ∣ 478873),
        order_of_C_B_inv_mod_p2 478876 478873 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 479207 479210 ∧ ¬ p ∣ (479210 - 479207) ∧
      ∃ (hNotC : ¬ p ∣ 479210) (hNotB : ¬ p ∣ 479207),
        order_of_C_B_inv_mod_p2 479210 479207 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 479549 479552 ∧ ¬ p ∣ (479552 - 479549) ∧
      ∃ (hNotC : ¬ p ∣ 479552) (hNotB : ¬ p ∣ 479549),
        order_of_C_B_inv_mod_p2 479552 479549 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 479862 479865 ∧ ¬ p ∣ (479865 - 479862) ∧
      ∃ (hNotC : ¬ p ∣ 479865) (hNotB : ¬ p ∣ 479862),
        order_of_C_B_inv_mod_p2 479865 479862 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 480215 480218 ∧ ¬ p ∣ (480218 - 480215) ∧
      ∃ (hNotC : ¬ p ∣ 480218) (hNotB : ¬ p ∣ 480215),
        order_of_C_B_inv_mod_p2 480218 480215 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 480545 480548 ∧ ¬ p ∣ (480548 - 480545) ∧
      ∃ (hNotC : ¬ p ∣ 480548) (hNotB : ¬ p ∣ 480545),
        order_of_C_B_inv_mod_p2 480548 480545 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 480871 480874 ∧ ¬ p ∣ (480874 - 480871) ∧
      ∃ (hNotC : ¬ p ∣ 480874) (hNotB : ¬ p ∣ 480871),
        order_of_C_B_inv_mod_p2 480874 480871 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 481206 481209 ∧ ¬ p ∣ (481209 - 481206) ∧
      ∃ (hNotC : ¬ p ∣ 481209) (hNotB : ¬ p ∣ 481206),
        order_of_C_B_inv_mod_p2 481209 481206 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 481539 481542 ∧ ¬ p ∣ (481542 - 481539) ∧
      ∃ (hNotC : ¬ p ∣ 481542) (hNotB : ¬ p ∣ 481539),
        order_of_C_B_inv_mod_p2 481542 481539 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 481873 481876 ∧ ¬ p ∣ (481876 - 481873) ∧
      ∃ (hNotC : ¬ p ∣ 481876) (hNotB : ¬ p ∣ 481873),
        order_of_C_B_inv_mod_p2 481876 481873 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 482200 482203 ∧ ¬ p ∣ (482203 - 482200) ∧
      ∃ (hNotC : ¬ p ∣ 482203) (hNotB : ¬ p ∣ 482200),
        order_of_C_B_inv_mod_p2 482203 482200 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 482557 482560 ∧ ¬ p ∣ (482560 - 482557) ∧
      ∃ (hNotC : ¬ p ∣ 482560) (hNotB : ¬ p ∣ 482557),
        order_of_C_B_inv_mod_p2 482560 482557 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 482909 482912 ∧ ¬ p ∣ (482912 - 482909) ∧
      ∃ (hNotC : ¬ p ∣ 482912) (hNotB : ¬ p ∣ 482909),
        order_of_C_B_inv_mod_p2 482912 482909 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 483258 483261 ∧ ¬ p ∣ (483261 - 483258) ∧
      ∃ (hNotC : ¬ p ∣ 483261) (hNotB : ¬ p ∣ 483258),
        order_of_C_B_inv_mod_p2 483261 483258 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 483590 483593 ∧ ¬ p ∣ (483593 - 483590) ∧
      ∃ (hNotC : ¬ p ∣ 483593) (hNotB : ¬ p ∣ 483590),
        order_of_C_B_inv_mod_p2 483593 483590 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 483908 483911 ∧ ¬ p ∣ (483911 - 483908) ∧
      ∃ (hNotC : ¬ p ∣ 483911) (hNotB : ¬ p ∣ 483908),
        order_of_C_B_inv_mod_p2 483911 483908 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 484233 484236 ∧ ¬ p ∣ (484236 - 484233) ∧
      ∃ (hNotC : ¬ p ∣ 484236) (hNotB : ¬ p ∣ 484233),
        order_of_C_B_inv_mod_p2 484236 484233 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 484567 484570 ∧ ¬ p ∣ (484570 - 484567) ∧
      ∃ (hNotC : ¬ p ∣ 484570) (hNotB : ¬ p ∣ 484567),
        order_of_C_B_inv_mod_p2 484570 484567 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 484900 484903 ∧ ¬ p ∣ (484903 - 484900) ∧
      ∃ (hNotC : ¬ p ∣ 484903) (hNotB : ¬ p ∣ 484900),
        order_of_C_B_inv_mod_p2 484903 484900 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 485231 485234 ∧ ¬ p ∣ (485234 - 485231) ∧
      ∃ (hNotC : ¬ p ∣ 485234) (hNotB : ¬ p ∣ 485231),
        order_of_C_B_inv_mod_p2 485234 485231 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 485559 485562 ∧ ¬ p ∣ (485562 - 485559) ∧
      ∃ (hNotC : ¬ p ∣ 485562) (hNotB : ¬ p ∣ 485559),
        order_of_C_B_inv_mod_p2 485562 485559 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 485917 485920 ∧ ¬ p ∣ (485920 - 485917) ∧
      ∃ (hNotC : ¬ p ∣ 485920) (hNotB : ¬ p ∣ 485917),
        order_of_C_B_inv_mod_p2 485920 485917 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 486262 486265 ∧ ¬ p ∣ (486265 - 486262) ∧
      ∃ (hNotC : ¬ p ∣ 486265) (hNotB : ¬ p ∣ 486262),
        order_of_C_B_inv_mod_p2 486265 486262 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 486595 486598 ∧ ¬ p ∣ (486598 - 486595) ∧
      ∃ (hNotC : ¬ p ∣ 486598) (hNotB : ¬ p ∣ 486595),
        order_of_C_B_inv_mod_p2 486598 486595 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 486924 486927 ∧ ¬ p ∣ (486927 - 486924) ∧
      ∃ (hNotC : ¬ p ∣ 486927) (hNotB : ¬ p ∣ 486924),
        order_of_C_B_inv_mod_p2 486927 486924 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487276 487279 ∧ ¬ p ∣ (487279 - 487276) ∧
      ∃ (hNotC : ¬ p ∣ 487279) (hNotB : ¬ p ∣ 487276),
        order_of_C_B_inv_mod_p2 487279 487276 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487584 487587 ∧ ¬ p ∣ (487587 - 487584) ∧
      ∃ (hNotC : ¬ p ∣ 487587) (hNotB : ¬ p ∣ 487584),
        order_of_C_B_inv_mod_p2 487587 487584 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 487912 487915 ∧ ¬ p ∣ (487915 - 487912) ∧
      ∃ (hNotC : ¬ p ∣ 487915) (hNotB : ¬ p ∣ 487912),
        order_of_C_B_inv_mod_p2 487915 487912 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 488234 488237 ∧ ¬ p ∣ (488237 - 488234) ∧
      ∃ (hNotC : ¬ p ∣ 488237) (hNotB : ¬ p ∣ 488234),
        order_of_C_B_inv_mod_p2 488237 488234 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 488567 488570 ∧ ¬ p ∣ (488570 - 488567) ∧
      ∃ (hNotC : ¬ p ∣ 488570) (hNotB : ¬ p ∣ 488567),
        order_of_C_B_inv_mod_p2 488570 488567 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 488920 488923 ∧ ¬ p ∣ (488923 - 488920) ∧
      ∃ (hNotC : ¬ p ∣ 488923) (hNotB : ¬ p ∣ 488920),
        order_of_C_B_inv_mod_p2 488923 488920 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 489261 489264 ∧ ¬ p ∣ (489264 - 489261) ∧
      ∃ (hNotC : ¬ p ∣ 489264) (hNotB : ¬ p ∣ 489261),
        order_of_C_B_inv_mod_p2 489264 489261 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 489596 489599 ∧ ¬ p ∣ (489599 - 489596) ∧
      ∃ (hNotC : ¬ p ∣ 489599) (hNotB : ¬ p ∣ 489596),
        order_of_C_B_inv_mod_p2 489599 489596 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 489926 489929 ∧ ¬ p ∣ (489929 - 489926) ∧
      ∃ (hNotC : ¬ p ∣ 489929) (hNotB : ¬ p ∣ 489926),
        order_of_C_B_inv_mod_p2 489929 489926 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 490257 490260 ∧ ¬ p ∣ (490260 - 490257) ∧
      ∃ (hNotC : ¬ p ∣ 490260) (hNotB : ¬ p ∣ 490257),
        order_of_C_B_inv_mod_p2 490260 490257 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 490614 490617 ∧ ¬ p ∣ (490617 - 490614) ∧
      ∃ (hNotC : ¬ p ∣ 490617) (hNotB : ¬ p ∣ 490614),
        order_of_C_B_inv_mod_p2 490617 490614 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 490944 490947 ∧ ¬ p ∣ (490947 - 490944) ∧
      ∃ (hNotC : ¬ p ∣ 490947) (hNotB : ¬ p ∣ 490944),
        order_of_C_B_inv_mod_p2 490947 490944 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 491288 491291 ∧ ¬ p ∣ (491291 - 491288) ∧
      ∃ (hNotC : ¬ p ∣ 491291) (hNotB : ¬ p ∣ 491288),
        order_of_C_B_inv_mod_p2 491291 491288 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 491635 491638 ∧ ¬ p ∣ (491638 - 491635) ∧
      ∃ (hNotC : ¬ p ∣ 491638) (hNotB : ¬ p ∣ 491635),
        order_of_C_B_inv_mod_p2 491638 491635 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 491951 491954 ∧ ¬ p ∣ (491954 - 491951) ∧
      ∃ (hNotC : ¬ p ∣ 491954) (hNotB : ¬ p ∣ 491951),
        order_of_C_B_inv_mod_p2 491954 491951 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 492274 492277 ∧ ¬ p ∣ (492277 - 492274) ∧
      ∃ (hNotC : ¬ p ∣ 492277) (hNotB : ¬ p ∣ 492274),
        order_of_C_B_inv_mod_p2 492277 492274 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 492607 492610 ∧ ¬ p ∣ (492610 - 492607) ∧
      ∃ (hNotC : ¬ p ∣ 492610) (hNotB : ¬ p ∣ 492607),
        order_of_C_B_inv_mod_p2 492610 492607 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 492962 492965 ∧ ¬ p ∣ (492965 - 492962) ∧
      ∃ (hNotC : ¬ p ∣ 492965) (hNotB : ¬ p ∣ 492962),
        order_of_C_B_inv_mod_p2 492965 492962 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 493305 493308 ∧ ¬ p ∣ (493308 - 493305) ∧
      ∃ (hNotC : ¬ p ∣ 493308) (hNotB : ¬ p ∣ 493305),
        order_of_C_B_inv_mod_p2 493308 493305 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 493635 493638 ∧ ¬ p ∣ (493638 - 493635) ∧
      ∃ (hNotC : ¬ p ∣ 493638) (hNotB : ¬ p ∣ 493635),
        order_of_C_B_inv_mod_p2 493638 493635 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 493964 493967 ∧ ¬ p ∣ (493967 - 493964) ∧
      ∃ (hNotC : ¬ p ∣ 493967) (hNotB : ¬ p ∣ 493964),
        order_of_C_B_inv_mod_p2 493967 493964 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 494306 494309 ∧ ¬ p ∣ (494309 - 494306) ∧
      ∃ (hNotC : ¬ p ∣ 494309) (hNotB : ¬ p ∣ 494306),
        order_of_C_B_inv_mod_p2 494309 494306 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 494640 494643 ∧ ¬ p ∣ (494643 - 494640) ∧
      ∃ (hNotC : ¬ p ∣ 494643) (hNotB : ¬ p ∣ 494640),
        order_of_C_B_inv_mod_p2 494643 494640 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 494985 494988 ∧ ¬ p ∣ (494988 - 494985) ∧
      ∃ (hNotC : ¬ p ∣ 494988) (hNotB : ¬ p ∣ 494985),
        order_of_C_B_inv_mod_p2 494988 494985 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 495311 495314 ∧ ¬ p ∣ (495314 - 495311) ∧
      ∃ (hNotC : ¬ p ∣ 495314) (hNotB : ¬ p ∣ 495311),
        order_of_C_B_inv_mod_p2 495314 495311 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 495649 495652 ∧ ¬ p ∣ (495652 - 495649) ∧
      ∃ (hNotC : ¬ p ∣ 495652) (hNotB : ¬ p ∣ 495649),
        order_of_C_B_inv_mod_p2 495652 495649 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 495987 495990 ∧ ¬ p ∣ (495990 - 495987) ∧
      ∃ (hNotC : ¬ p ∣ 495990) (hNotB : ¬ p ∣ 495987),
        order_of_C_B_inv_mod_p2 495990 495987 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 496331 496334 ∧ ¬ p ∣ (496334 - 496331) ∧
      ∃ (hNotC : ¬ p ∣ 496334) (hNotB : ¬ p ∣ 496331),
        order_of_C_B_inv_mod_p2 496334 496331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 496659 496662 ∧ ¬ p ∣ (496662 - 496659) ∧
      ∃ (hNotC : ¬ p ∣ 496662) (hNotB : ¬ p ∣ 496659),
        order_of_C_B_inv_mod_p2 496662 496659 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 496998 497001 ∧ ¬ p ∣ (497001 - 496998) ∧
      ∃ (hNotC : ¬ p ∣ 497001) (hNotB : ¬ p ∣ 496998),
        order_of_C_B_inv_mod_p2 497001 496998 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 497332 497335 ∧ ¬ p ∣ (497335 - 497332) ∧
      ∃ (hNotC : ¬ p ∣ 497335) (hNotB : ¬ p ∣ 497332),
        order_of_C_B_inv_mod_p2 497335 497332 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 497687 497690 ∧ ¬ p ∣ (497690 - 497687) ∧
      ∃ (hNotC : ¬ p ∣ 497690) (hNotB : ¬ p ∣ 497687),
        order_of_C_B_inv_mod_p2 497690 497687 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498004 498007 ∧ ¬ p ∣ (498007 - 498004) ∧
      ∃ (hNotC : ¬ p ∣ 498007) (hNotB : ¬ p ∣ 498004),
        order_of_C_B_inv_mod_p2 498007 498004 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498343 498346 ∧ ¬ p ∣ (498346 - 498343) ∧
      ∃ (hNotC : ¬ p ∣ 498346) (hNotB : ¬ p ∣ 498343),
        order_of_C_B_inv_mod_p2 498346 498343 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498665 498668 ∧ ¬ p ∣ (498668 - 498665) ∧
      ∃ (hNotC : ¬ p ∣ 498668) (hNotB : ¬ p ∣ 498665),
        order_of_C_B_inv_mod_p2 498668 498665 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 498999 499002 ∧ ¬ p ∣ (499002 - 498999) ∧
      ∃ (hNotC : ¬ p ∣ 499002) (hNotB : ¬ p ∣ 498999),
        order_of_C_B_inv_mod_p2 499002 498999 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 499333 499336 ∧ ¬ p ∣ (499336 - 499333) ∧
      ∃ (hNotC : ¬ p ∣ 499336) (hNotB : ¬ p ∣ 499333),
        order_of_C_B_inv_mod_p2 499336 499333 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 499688 499691 ∧ ¬ p ∣ (499691 - 499688) ∧
      ∃ (hNotC : ¬ p ∣ 499691) (hNotB : ¬ p ∣ 499688),
        order_of_C_B_inv_mod_p2 499691 499688 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 500000 500003 ∧ ¬ p ∣ (500003 - 500000) ∧
      ∃ (hNotC : ¬ p ∣ 500003) (hNotB : ¬ p ∣ 500000),
        order_of_C_B_inv_mod_p2 500003 500000 p hp hNotC hNotB ≠ 13) :=
  ⟨row_400001_400004.2.1, row_400326_400329.2.1, row_400652_400655.2.1, row_400985_400988.2.1, row_401322_401325.2.1, row_401656_401659.2.1, row_401990_401993.2.1, row_402328_402331.2.1, row_402676_402679.2.1, row_403025_403028.2.1, row_403358_403361.2.1, row_403701_403704.2.1, row_404017_404020.2.1, row_404342_404345.2.1, row_404692_404695.2.1, row_405030_405033.2.1, row_405367_405370.2.1, row_405709_405712.2.1, row_406054_406057.2.1, row_406389_406392.2.1, row_406709_406712.2.1, row_407066_407069.2.1, row_407391_407394.2.1, row_407732_407735.2.1, row_408047_408050.2.1, row_408393_408396.2.1, row_408707_408710.2.1, row_409060_409063.2.1, row_409401_409404.2.1, row_409748_409751.2.1, row_410104_410107.2.1, row_410419_410422.2.1, row_410758_410761.2.1, row_411086_411089.2.1, row_411403_411406.2.1, row_411737_411740.2.1, row_412068_412071.2.1, row_412395_412398.2.1, row_412724_412727.2.1, row_413058_413061.2.1, row_413405_413408.2.1, row_413758_413761.2.1, row_414080_414083.2.1, row_414425_414428.2.1, row_414765_414768.2.1, row_415096_415099.2.1, row_415454_415457.2.1, row_415786_415789.2.1, row_416120_416123.2.1, row_416462_416465.2.1, row_416797_416800.2.1, row_417123_417126.2.1, row_417465_417468.2.1, row_417790_417793.2.1, row_418118_418121.2.1, row_418446_418449.2.1, row_418785_418788.2.1, row_419117_419120.2.1, row_419471_419474.2.1, row_419807_419810.2.1, row_420150_420153.2.1, row_420489_420492.2.1, row_420818_420821.2.1, row_421157_421160.2.1, row_421481_421484.2.1, row_421814_421817.2.1, row_422163_422166.2.1, row_422503_422506.2.1, row_422826_422829.2.1, row_423168_423171.2.1, row_423499_423502.2.1, row_423854_423857.2.1, row_424182_424185.2.1, row_424505_424508.2.1, row_424840_424843.2.1, row_425179_425182.2.1, row_425516_425519.2.1, row_425848_425851.2.1, row_426177_426180.2.1, row_426531_426534.2.1, row_426866_426869.2.1, row_427198_427201.2.1, row_427530_427533.2.1, row_427877_427880.2.1, row_428200_428203.2.1, row_428554_428557.2.1, row_428886_428889.2.1, row_429214_429217.2.1, row_429544_429547.2.1, row_429871_429874.2.1, row_430200_430203.2.1, row_430551_430554.2.1, row_430897_430900.2.1, row_431224_431227.2.1, row_431568_431571.2.1, row_431884_431887.2.1, row_432202_432205.2.1, row_432549_432552.2.1, row_432878_432881.2.1, row_433219_433222.2.1, row_433544_433547.2.1, row_433860_433863.2.1, row_434207_434210.2.1, row_434552_434555.2.1, row_434897_434900.2.1, row_435242_435245.2.1, row_435585_435588.2.1, row_435912_435915.2.1, row_436250_436253.2.1, row_436568_436571.2.1, row_436919_436922.2.1, row_437255_437258.2.1, row_437594_437597.2.1, row_437923_437926.2.1, row_438257_438260.2.1, row_438580_438583.2.1, row_438939_438942.2.1, row_439270_439273.2.1, row_439609_439612.2.1, row_439953_439956.2.1, row_440289_440292.2.1, row_440627_440630.2.1, row_440965_440968.2.1, row_441303_441306.2.1, row_441641_441644.2.1, row_441979_441982.2.1, row_442298_442301.2.1, row_442612_442615.2.1, row_442958_442961.2.1, row_443276_443279.2.1, row_443621_443624.2.1, row_443960_443963.2.1, row_444304_444307.2.1, row_444652_444655.2.1, row_444986_444989.2.1, row_445336_445339.2.1, row_445661_445664.2.1, row_445984_445987.2.1, row_446317_446320.2.1, row_446647_446650.2.1, row_446986_446989.2.1, row_447333_447336.2.1, row_447656_447659.2.1, row_447992_447995.2.1, row_448331_448334.2.1, row_448674_448677.2.1, row_449014_449017.2.1, row_449363_449366.2.1, row_449669_449672.2.1, row_450007_450010.2.1, row_450326_450329.2.1, row_450640_450643.2.1, row_450975_450978.2.1, row_451318_451321.2.1, row_451661_451664.2.1, row_451993_451996.2.1, row_452333_452336.2.1, row_452673_452676.2.1, row_452991_452994.2.1, row_453327_453330.2.1, row_453661_453664.2.1, row_453990_453993.2.1, row_454320_454323.2.1, row_454660_454663.2.1, row_454997_455000.2.1, row_455335_455338.2.1, row_455695_455698.2.1, row_456019_456022.2.1, row_456346_456349.2.1, row_456688_456691.2.1, row_457006_457009.2.1, row_457350_457353.2.1, row_457688_457691.2.1, row_458026_458029.2.1, row_458349_458352.2.1, row_458697_458700.2.1, row_459017_459020.2.1, row_459358_459361.2.1, row_459709_459712.2.1, row_460039_460042.2.1, row_460368_460371.2.1, row_460712_460715.2.1, row_461043_461046.2.1, row_461378_461381.2.1, row_461720_461723.2.1, row_462065_462068.2.1, row_462394_462397.2.1, row_462729_462732.2.1, row_463043_463046.2.1, row_463390_463393.2.1, row_463742_463745.2.1, row_464076_464079.2.1, row_464430_464433.2.1, row_464767_464770.2.1, row_465118_465121.2.1, row_465464_465467.2.1, row_465797_465800.2.1, row_466134_466137.2.1, row_466478_466481.2.1, row_466815_466818.2.1, row_467138_467141.2.1, row_467469_467472.2.1, row_467812_467815.2.1, row_468153_468156.2.1, row_468488_468491.2.1, row_468821_468824.2.1, row_469165_469168.2.1, row_469482_469485.2.1, row_469828_469831.2.1, row_470167_470170.2.1, row_470498_470501.2.1, row_470829_470832.2.1, row_471150_471153.2.1, row_471495_471498.2.1, row_471818_471821.2.1, row_472181_472184.2.1, row_472532_472535.2.1, row_472849_472852.2.1, row_473193_473196.2.1, row_473520_473523.2.1, row_473853_473856.2.1, row_474181_474184.2.1, row_474500_474503.2.1, row_474840_474843.2.1, row_475168_475171.2.1, row_475489_475492.2.1, row_475830_475833.2.1, row_476158_476161.2.1, row_476510_476513.2.1, row_476842_476845.2.1, row_477183_477186.2.1, row_477518_477521.2.1, row_477854_477857.2.1, row_478204_478207.2.1, row_478545_478548.2.1, row_478873_478876.2.1, row_479207_479210.2.1, row_479549_479552.2.1, row_479862_479865.2.1, row_480215_480218.2.1, row_480545_480548.2.1, row_480871_480874.2.1, row_481206_481209.2.1, row_481539_481542.2.1, row_481873_481876.2.1, row_482200_482203.2.1, row_482557_482560.2.1, row_482909_482912.2.1, row_483258_483261.2.1, row_483590_483593.2.1, row_483908_483911.2.1, row_484233_484236.2.1, row_484567_484570.2.1, row_484900_484903.2.1, row_485231_485234.2.1, row_485559_485562.2.1, row_485917_485920.2.1, row_486262_486265.2.1, row_486595_486598.2.1, row_486924_486927.2.1, row_487276_487279.2.1, row_487584_487587.2.1, row_487912_487915.2.1, row_488234_488237.2.1, row_488567_488570.2.1, row_488920_488923.2.1, row_489261_489264.2.1, row_489596_489599.2.1, row_489926_489929.2.1, row_490257_490260.2.1, row_490614_490617.2.1, row_490944_490947.2.1, row_491288_491291.2.1, row_491635_491638.2.1, row_491951_491954.2.1, row_492274_492277.2.1, row_492607_492610.2.1, row_492962_492965.2.1, row_493305_493308.2.1, row_493635_493638.2.1, row_493964_493967.2.1, row_494306_494309.2.1, row_494640_494643.2.1, row_494985_494988.2.1, row_495311_495314.2.1, row_495649_495652.2.1, row_495987_495990.2.1, row_496331_496334.2.1, row_496659_496662.2.1, row_496998_497001.2.1, row_497332_497335.2.1, row_497687_497690.2.1, row_498004_498007.2.1, row_498343_498346.2.1, row_498665_498668.2.1, row_498999_499002.2.1, row_499333_499336.2.1, row_499688_499691.2.1, row_500000_500003.2.1⟩
theorem S_not_fourth_400000_lt_B_le_500000_from_exp_one_table_rows :
    S_not_fourth 400001 400004 ∧
    S_not_fourth 400326 400329 ∧
    S_not_fourth 400652 400655 ∧
    S_not_fourth 400985 400988 ∧
    S_not_fourth 401322 401325 ∧
    S_not_fourth 401656 401659 ∧
    S_not_fourth 401990 401993 ∧
    S_not_fourth 402328 402331 ∧
    S_not_fourth 402676 402679 ∧
    S_not_fourth 403025 403028 ∧
    S_not_fourth 403358 403361 ∧
    S_not_fourth 403701 403704 ∧
    S_not_fourth 404017 404020 ∧
    S_not_fourth 404342 404345 ∧
    S_not_fourth 404692 404695 ∧
    S_not_fourth 405030 405033 ∧
    S_not_fourth 405367 405370 ∧
    S_not_fourth 405709 405712 ∧
    S_not_fourth 406054 406057 ∧
    S_not_fourth 406389 406392 ∧
    S_not_fourth 406709 406712 ∧
    S_not_fourth 407066 407069 ∧
    S_not_fourth 407391 407394 ∧
    S_not_fourth 407732 407735 ∧
    S_not_fourth 408047 408050 ∧
    S_not_fourth 408393 408396 ∧
    S_not_fourth 408707 408710 ∧
    S_not_fourth 409060 409063 ∧
    S_not_fourth 409401 409404 ∧
    S_not_fourth 409748 409751 ∧
    S_not_fourth 410104 410107 ∧
    S_not_fourth 410419 410422 ∧
    S_not_fourth 410758 410761 ∧
    S_not_fourth 411086 411089 ∧
    S_not_fourth 411403 411406 ∧
    S_not_fourth 411737 411740 ∧
    S_not_fourth 412068 412071 ∧
    S_not_fourth 412395 412398 ∧
    S_not_fourth 412724 412727 ∧
    S_not_fourth 413058 413061 ∧
    S_not_fourth 413405 413408 ∧
    S_not_fourth 413758 413761 ∧
    S_not_fourth 414080 414083 ∧
    S_not_fourth 414425 414428 ∧
    S_not_fourth 414765 414768 ∧
    S_not_fourth 415096 415099 ∧
    S_not_fourth 415454 415457 ∧
    S_not_fourth 415786 415789 ∧
    S_not_fourth 416120 416123 ∧
    S_not_fourth 416462 416465 ∧
    S_not_fourth 416797 416800 ∧
    S_not_fourth 417123 417126 ∧
    S_not_fourth 417465 417468 ∧
    S_not_fourth 417790 417793 ∧
    S_not_fourth 418118 418121 ∧
    S_not_fourth 418446 418449 ∧
    S_not_fourth 418785 418788 ∧
    S_not_fourth 419117 419120 ∧
    S_not_fourth 419471 419474 ∧
    S_not_fourth 419807 419810 ∧
    S_not_fourth 420150 420153 ∧
    S_not_fourth 420489 420492 ∧
    S_not_fourth 420818 420821 ∧
    S_not_fourth 421157 421160 ∧
    S_not_fourth 421481 421484 ∧
    S_not_fourth 421814 421817 ∧
    S_not_fourth 422163 422166 ∧
    S_not_fourth 422503 422506 ∧
    S_not_fourth 422826 422829 ∧
    S_not_fourth 423168 423171 ∧
    S_not_fourth 423499 423502 ∧
    S_not_fourth 423854 423857 ∧
    S_not_fourth 424182 424185 ∧
    S_not_fourth 424505 424508 ∧
    S_not_fourth 424840 424843 ∧
    S_not_fourth 425179 425182 ∧
    S_not_fourth 425516 425519 ∧
    S_not_fourth 425848 425851 ∧
    S_not_fourth 426177 426180 ∧
    S_not_fourth 426531 426534 ∧
    S_not_fourth 426866 426869 ∧
    S_not_fourth 427198 427201 ∧
    S_not_fourth 427530 427533 ∧
    S_not_fourth 427877 427880 ∧
    S_not_fourth 428200 428203 ∧
    S_not_fourth 428554 428557 ∧
    S_not_fourth 428886 428889 ∧
    S_not_fourth 429214 429217 ∧
    S_not_fourth 429544 429547 ∧
    S_not_fourth 429871 429874 ∧
    S_not_fourth 430200 430203 ∧
    S_not_fourth 430551 430554 ∧
    S_not_fourth 430897 430900 ∧
    S_not_fourth 431224 431227 ∧
    S_not_fourth 431568 431571 ∧
    S_not_fourth 431884 431887 ∧
    S_not_fourth 432202 432205 ∧
    S_not_fourth 432549 432552 ∧
    S_not_fourth 432878 432881 ∧
    S_not_fourth 433219 433222 ∧
    S_not_fourth 433544 433547 ∧
    S_not_fourth 433860 433863 ∧
    S_not_fourth 434207 434210 ∧
    S_not_fourth 434552 434555 ∧
    S_not_fourth 434897 434900 ∧
    S_not_fourth 435242 435245 ∧
    S_not_fourth 435585 435588 ∧
    S_not_fourth 435912 435915 ∧
    S_not_fourth 436250 436253 ∧
    S_not_fourth 436568 436571 ∧
    S_not_fourth 436919 436922 ∧
    S_not_fourth 437255 437258 ∧
    S_not_fourth 437594 437597 ∧
    S_not_fourth 437923 437926 ∧
    S_not_fourth 438257 438260 ∧
    S_not_fourth 438580 438583 ∧
    S_not_fourth 438939 438942 ∧
    S_not_fourth 439270 439273 ∧
    S_not_fourth 439609 439612 ∧
    S_not_fourth 439953 439956 ∧
    S_not_fourth 440289 440292 ∧
    S_not_fourth 440627 440630 ∧
    S_not_fourth 440965 440968 ∧
    S_not_fourth 441303 441306 ∧
    S_not_fourth 441641 441644 ∧
    S_not_fourth 441979 441982 ∧
    S_not_fourth 442298 442301 ∧
    S_not_fourth 442612 442615 ∧
    S_not_fourth 442958 442961 ∧
    S_not_fourth 443276 443279 ∧
    S_not_fourth 443621 443624 ∧
    S_not_fourth 443960 443963 ∧
    S_not_fourth 444304 444307 ∧
    S_not_fourth 444652 444655 ∧
    S_not_fourth 444986 444989 ∧
    S_not_fourth 445336 445339 ∧
    S_not_fourth 445661 445664 ∧
    S_not_fourth 445984 445987 ∧
    S_not_fourth 446317 446320 ∧
    S_not_fourth 446647 446650 ∧
    S_not_fourth 446986 446989 ∧
    S_not_fourth 447333 447336 ∧
    S_not_fourth 447656 447659 ∧
    S_not_fourth 447992 447995 ∧
    S_not_fourth 448331 448334 ∧
    S_not_fourth 448674 448677 ∧
    S_not_fourth 449014 449017 ∧
    S_not_fourth 449363 449366 ∧
    S_not_fourth 449669 449672 ∧
    S_not_fourth 450007 450010 ∧
    S_not_fourth 450326 450329 ∧
    S_not_fourth 450640 450643 ∧
    S_not_fourth 450975 450978 ∧
    S_not_fourth 451318 451321 ∧
    S_not_fourth 451661 451664 ∧
    S_not_fourth 451993 451996 ∧
    S_not_fourth 452333 452336 ∧
    S_not_fourth 452673 452676 ∧
    S_not_fourth 452991 452994 ∧
    S_not_fourth 453327 453330 ∧
    S_not_fourth 453661 453664 ∧
    S_not_fourth 453990 453993 ∧
    S_not_fourth 454320 454323 ∧
    S_not_fourth 454660 454663 ∧
    S_not_fourth 454997 455000 ∧
    S_not_fourth 455335 455338 ∧
    S_not_fourth 455695 455698 ∧
    S_not_fourth 456019 456022 ∧
    S_not_fourth 456346 456349 ∧
    S_not_fourth 456688 456691 ∧
    S_not_fourth 457006 457009 ∧
    S_not_fourth 457350 457353 ∧
    S_not_fourth 457688 457691 ∧
    S_not_fourth 458026 458029 ∧
    S_not_fourth 458349 458352 ∧
    S_not_fourth 458697 458700 ∧
    S_not_fourth 459017 459020 ∧
    S_not_fourth 459358 459361 ∧
    S_not_fourth 459709 459712 ∧
    S_not_fourth 460039 460042 ∧
    S_not_fourth 460368 460371 ∧
    S_not_fourth 460712 460715 ∧
    S_not_fourth 461043 461046 ∧
    S_not_fourth 461378 461381 ∧
    S_not_fourth 461720 461723 ∧
    S_not_fourth 462065 462068 ∧
    S_not_fourth 462394 462397 ∧
    S_not_fourth 462729 462732 ∧
    S_not_fourth 463043 463046 ∧
    S_not_fourth 463390 463393 ∧
    S_not_fourth 463742 463745 ∧
    S_not_fourth 464076 464079 ∧
    S_not_fourth 464430 464433 ∧
    S_not_fourth 464767 464770 ∧
    S_not_fourth 465118 465121 ∧
    S_not_fourth 465464 465467 ∧
    S_not_fourth 465797 465800 ∧
    S_not_fourth 466134 466137 ∧
    S_not_fourth 466478 466481 ∧
    S_not_fourth 466815 466818 ∧
    S_not_fourth 467138 467141 ∧
    S_not_fourth 467469 467472 ∧
    S_not_fourth 467812 467815 ∧
    S_not_fourth 468153 468156 ∧
    S_not_fourth 468488 468491 ∧
    S_not_fourth 468821 468824 ∧
    S_not_fourth 469165 469168 ∧
    S_not_fourth 469482 469485 ∧
    S_not_fourth 469828 469831 ∧
    S_not_fourth 470167 470170 ∧
    S_not_fourth 470498 470501 ∧
    S_not_fourth 470829 470832 ∧
    S_not_fourth 471150 471153 ∧
    S_not_fourth 471495 471498 ∧
    S_not_fourth 471818 471821 ∧
    S_not_fourth 472181 472184 ∧
    S_not_fourth 472532 472535 ∧
    S_not_fourth 472849 472852 ∧
    S_not_fourth 473193 473196 ∧
    S_not_fourth 473520 473523 ∧
    S_not_fourth 473853 473856 ∧
    S_not_fourth 474181 474184 ∧
    S_not_fourth 474500 474503 ∧
    S_not_fourth 474840 474843 ∧
    S_not_fourth 475168 475171 ∧
    S_not_fourth 475489 475492 ∧
    S_not_fourth 475830 475833 ∧
    S_not_fourth 476158 476161 ∧
    S_not_fourth 476510 476513 ∧
    S_not_fourth 476842 476845 ∧
    S_not_fourth 477183 477186 ∧
    S_not_fourth 477518 477521 ∧
    S_not_fourth 477854 477857 ∧
    S_not_fourth 478204 478207 ∧
    S_not_fourth 478545 478548 ∧
    S_not_fourth 478873 478876 ∧
    S_not_fourth 479207 479210 ∧
    S_not_fourth 479549 479552 ∧
    S_not_fourth 479862 479865 ∧
    S_not_fourth 480215 480218 ∧
    S_not_fourth 480545 480548 ∧
    S_not_fourth 480871 480874 ∧
    S_not_fourth 481206 481209 ∧
    S_not_fourth 481539 481542 ∧
    S_not_fourth 481873 481876 ∧
    S_not_fourth 482200 482203 ∧
    S_not_fourth 482557 482560 ∧
    S_not_fourth 482909 482912 ∧
    S_not_fourth 483258 483261 ∧
    S_not_fourth 483590 483593 ∧
    S_not_fourth 483908 483911 ∧
    S_not_fourth 484233 484236 ∧
    S_not_fourth 484567 484570 ∧
    S_not_fourth 484900 484903 ∧
    S_not_fourth 485231 485234 ∧
    S_not_fourth 485559 485562 ∧
    S_not_fourth 485917 485920 ∧
    S_not_fourth 486262 486265 ∧
    S_not_fourth 486595 486598 ∧
    S_not_fourth 486924 486927 ∧
    S_not_fourth 487276 487279 ∧
    S_not_fourth 487584 487587 ∧
    S_not_fourth 487912 487915 ∧
    S_not_fourth 488234 488237 ∧
    S_not_fourth 488567 488570 ∧
    S_not_fourth 488920 488923 ∧
    S_not_fourth 489261 489264 ∧
    S_not_fourth 489596 489599 ∧
    S_not_fourth 489926 489929 ∧
    S_not_fourth 490257 490260 ∧
    S_not_fourth 490614 490617 ∧
    S_not_fourth 490944 490947 ∧
    S_not_fourth 491288 491291 ∧
    S_not_fourth 491635 491638 ∧
    S_not_fourth 491951 491954 ∧
    S_not_fourth 492274 492277 ∧
    S_not_fourth 492607 492610 ∧
    S_not_fourth 492962 492965 ∧
    S_not_fourth 493305 493308 ∧
    S_not_fourth 493635 493638 ∧
    S_not_fourth 493964 493967 ∧
    S_not_fourth 494306 494309 ∧
    S_not_fourth 494640 494643 ∧
    S_not_fourth 494985 494988 ∧
    S_not_fourth 495311 495314 ∧
    S_not_fourth 495649 495652 ∧
    S_not_fourth 495987 495990 ∧
    S_not_fourth 496331 496334 ∧
    S_not_fourth 496659 496662 ∧
    S_not_fourth 496998 497001 ∧
    S_not_fourth 497332 497335 ∧
    S_not_fourth 497687 497690 ∧
    S_not_fourth 498004 498007 ∧
    S_not_fourth 498343 498346 ∧
    S_not_fourth 498665 498668 ∧
    S_not_fourth 498999 499002 ∧
    S_not_fourth 499333 499336 ∧
    S_not_fourth 499688 499691 ∧
    S_not_fourth 500000 500003 :=
  ⟨row_400001_400004.2.2, row_400326_400329.2.2, row_400652_400655.2.2, row_400985_400988.2.2, row_401322_401325.2.2, row_401656_401659.2.2, row_401990_401993.2.2, row_402328_402331.2.2, row_402676_402679.2.2, row_403025_403028.2.2, row_403358_403361.2.2, row_403701_403704.2.2, row_404017_404020.2.2, row_404342_404345.2.2, row_404692_404695.2.2, row_405030_405033.2.2, row_405367_405370.2.2, row_405709_405712.2.2, row_406054_406057.2.2, row_406389_406392.2.2, row_406709_406712.2.2, row_407066_407069.2.2, row_407391_407394.2.2, row_407732_407735.2.2, row_408047_408050.2.2, row_408393_408396.2.2, row_408707_408710.2.2, row_409060_409063.2.2, row_409401_409404.2.2, row_409748_409751.2.2, row_410104_410107.2.2, row_410419_410422.2.2, row_410758_410761.2.2, row_411086_411089.2.2, row_411403_411406.2.2, row_411737_411740.2.2, row_412068_412071.2.2, row_412395_412398.2.2, row_412724_412727.2.2, row_413058_413061.2.2, row_413405_413408.2.2, row_413758_413761.2.2, row_414080_414083.2.2, row_414425_414428.2.2, row_414765_414768.2.2, row_415096_415099.2.2, row_415454_415457.2.2, row_415786_415789.2.2, row_416120_416123.2.2, row_416462_416465.2.2, row_416797_416800.2.2, row_417123_417126.2.2, row_417465_417468.2.2, row_417790_417793.2.2, row_418118_418121.2.2, row_418446_418449.2.2, row_418785_418788.2.2, row_419117_419120.2.2, row_419471_419474.2.2, row_419807_419810.2.2, row_420150_420153.2.2, row_420489_420492.2.2, row_420818_420821.2.2, row_421157_421160.2.2, row_421481_421484.2.2, row_421814_421817.2.2, row_422163_422166.2.2, row_422503_422506.2.2, row_422826_422829.2.2, row_423168_423171.2.2, row_423499_423502.2.2, row_423854_423857.2.2, row_424182_424185.2.2, row_424505_424508.2.2, row_424840_424843.2.2, row_425179_425182.2.2, row_425516_425519.2.2, row_425848_425851.2.2, row_426177_426180.2.2, row_426531_426534.2.2, row_426866_426869.2.2, row_427198_427201.2.2, row_427530_427533.2.2, row_427877_427880.2.2, row_428200_428203.2.2, row_428554_428557.2.2, row_428886_428889.2.2, row_429214_429217.2.2, row_429544_429547.2.2, row_429871_429874.2.2, row_430200_430203.2.2, row_430551_430554.2.2, row_430897_430900.2.2, row_431224_431227.2.2, row_431568_431571.2.2, row_431884_431887.2.2, row_432202_432205.2.2, row_432549_432552.2.2, row_432878_432881.2.2, row_433219_433222.2.2, row_433544_433547.2.2, row_433860_433863.2.2, row_434207_434210.2.2, row_434552_434555.2.2, row_434897_434900.2.2, row_435242_435245.2.2, row_435585_435588.2.2, row_435912_435915.2.2, row_436250_436253.2.2, row_436568_436571.2.2, row_436919_436922.2.2, row_437255_437258.2.2, row_437594_437597.2.2, row_437923_437926.2.2, row_438257_438260.2.2, row_438580_438583.2.2, row_438939_438942.2.2, row_439270_439273.2.2, row_439609_439612.2.2, row_439953_439956.2.2, row_440289_440292.2.2, row_440627_440630.2.2, row_440965_440968.2.2, row_441303_441306.2.2, row_441641_441644.2.2, row_441979_441982.2.2, row_442298_442301.2.2, row_442612_442615.2.2, row_442958_442961.2.2, row_443276_443279.2.2, row_443621_443624.2.2, row_443960_443963.2.2, row_444304_444307.2.2, row_444652_444655.2.2, row_444986_444989.2.2, row_445336_445339.2.2, row_445661_445664.2.2, row_445984_445987.2.2, row_446317_446320.2.2, row_446647_446650.2.2, row_446986_446989.2.2, row_447333_447336.2.2, row_447656_447659.2.2, row_447992_447995.2.2, row_448331_448334.2.2, row_448674_448677.2.2, row_449014_449017.2.2, row_449363_449366.2.2, row_449669_449672.2.2, row_450007_450010.2.2, row_450326_450329.2.2, row_450640_450643.2.2, row_450975_450978.2.2, row_451318_451321.2.2, row_451661_451664.2.2, row_451993_451996.2.2, row_452333_452336.2.2, row_452673_452676.2.2, row_452991_452994.2.2, row_453327_453330.2.2, row_453661_453664.2.2, row_453990_453993.2.2, row_454320_454323.2.2, row_454660_454663.2.2, row_454997_455000.2.2, row_455335_455338.2.2, row_455695_455698.2.2, row_456019_456022.2.2, row_456346_456349.2.2, row_456688_456691.2.2, row_457006_457009.2.2, row_457350_457353.2.2, row_457688_457691.2.2, row_458026_458029.2.2, row_458349_458352.2.2, row_458697_458700.2.2, row_459017_459020.2.2, row_459358_459361.2.2, row_459709_459712.2.2, row_460039_460042.2.2, row_460368_460371.2.2, row_460712_460715.2.2, row_461043_461046.2.2, row_461378_461381.2.2, row_461720_461723.2.2, row_462065_462068.2.2, row_462394_462397.2.2, row_462729_462732.2.2, row_463043_463046.2.2, row_463390_463393.2.2, row_463742_463745.2.2, row_464076_464079.2.2, row_464430_464433.2.2, row_464767_464770.2.2, row_465118_465121.2.2, row_465464_465467.2.2, row_465797_465800.2.2, row_466134_466137.2.2, row_466478_466481.2.2, row_466815_466818.2.2, row_467138_467141.2.2, row_467469_467472.2.2, row_467812_467815.2.2, row_468153_468156.2.2, row_468488_468491.2.2, row_468821_468824.2.2, row_469165_469168.2.2, row_469482_469485.2.2, row_469828_469831.2.2, row_470167_470170.2.2, row_470498_470501.2.2, row_470829_470832.2.2, row_471150_471153.2.2, row_471495_471498.2.2, row_471818_471821.2.2, row_472181_472184.2.2, row_472532_472535.2.2, row_472849_472852.2.2, row_473193_473196.2.2, row_473520_473523.2.2, row_473853_473856.2.2, row_474181_474184.2.2, row_474500_474503.2.2, row_474840_474843.2.2, row_475168_475171.2.2, row_475489_475492.2.2, row_475830_475833.2.2, row_476158_476161.2.2, row_476510_476513.2.2, row_476842_476845.2.2, row_477183_477186.2.2, row_477518_477521.2.2, row_477854_477857.2.2, row_478204_478207.2.2, row_478545_478548.2.2, row_478873_478876.2.2, row_479207_479210.2.2, row_479549_479552.2.2, row_479862_479865.2.2, row_480215_480218.2.2, row_480545_480548.2.2, row_480871_480874.2.2, row_481206_481209.2.2, row_481539_481542.2.2, row_481873_481876.2.2, row_482200_482203.2.2, row_482557_482560.2.2, row_482909_482912.2.2, row_483258_483261.2.2, row_483590_483593.2.2, row_483908_483911.2.2, row_484233_484236.2.2, row_484567_484570.2.2, row_484900_484903.2.2, row_485231_485234.2.2, row_485559_485562.2.2, row_485917_485920.2.2, row_486262_486265.2.2, row_486595_486598.2.2, row_486924_486927.2.2, row_487276_487279.2.2, row_487584_487587.2.2, row_487912_487915.2.2, row_488234_488237.2.2, row_488567_488570.2.2, row_488920_488923.2.2, row_489261_489264.2.2, row_489596_489599.2.2, row_489926_489929.2.2, row_490257_490260.2.2, row_490614_490617.2.2, row_490944_490947.2.2, row_491288_491291.2.2, row_491635_491638.2.2, row_491951_491954.2.2, row_492274_492277.2.2, row_492607_492610.2.2, row_492962_492965.2.2, row_493305_493308.2.2, row_493635_493638.2.2, row_493964_493967.2.2, row_494306_494309.2.2, row_494640_494643.2.2, row_494985_494988.2.2, row_495311_495314.2.2, row_495649_495652.2.2, row_495987_495990.2.2, row_496331_496334.2.2, row_496659_496662.2.2, row_496998_497001.2.2, row_497332_497335.2.2, row_497687_497690.2.2, row_498004_498007.2.2, row_498343_498346.2.2, row_498665_498668.2.2, row_498999_499002.2.2, row_499333_499336.2.2, row_499688_499691.2.2, row_500000_500003.2.2⟩
def S_has_prime_with_exp_one_B_le_500000_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_has_prime_with_exp_one_B_le_400000_table_rows
    S_has_prime_with_exp_one_400000_lt_B_le_500000_table_rows

def exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows
    exists_p_with_order_ne_13_400000_lt_B_le_500000_from_exp_one_table_rows

def S_not_fourth_B_le_500000_from_exp_one_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_not_fourth_B_le_400000_from_exp_one_table_rows
    S_not_fourth_400000_lt_B_le_500000_from_exp_one_table_rows

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Inhabited.  Displayed coefficient misses plus
displayed `S₂(Γ₀(2))` dimension `0`.  Not Ribet. -/
def level_lowering_26_to_2_from_no_match :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.level_lowering_26_to_2_from_no_match

/-- Inhabited.  Coefficient check, not residual iso. -/
def s2_26_displayed_newforms_miss_frey_traces :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.s2_26_displayed_newforms_miss_frey_traces

/-- Uninhabited.  Ljunggren-type; named rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  Named rows are not every `B ≤ 500000`.
`B > 500000` needs Bugeaud–Corvaja–Zannier. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 400000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_400000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.bugeaud_P_phi13_gt_C_when_B_gt_400000

/-- Uninhabited.  Squarefull + `B > 400000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_400000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_400000

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 500000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_500000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 500000 < B →
    C < P_phi13 B C

/-- Uninhabited.  Squarefull + `B > 500000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_500000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 500000 < B →
    IsSquarefull (S_val B C) →
    Nat.sqrt (13 * C ^ 12) < rad (S_val B C)

/-- Uninhabited.  Kraus matching at `q = 13`, level 26.
Even-`A` `13 ∣ A` close.  Coefficient misses plus
displayed `S₂(Γ₀(2)) = 0` are not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.kraus_elimination_q_13_level_26

/-- Uninhabited.  Missing Mathlib Ribet arrow `26 → 2`. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.ribet_26_to_2_from_displayed_miss

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

#check S_val
#check S_bounds
#check HasPrimeWithExpOne
#check S_not_fourth
#check S_has_prime_with_exp_one_B_le_500000_table_rows
#check exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows
#check S_not_fourth_B_le_500000_from_exp_one_table_rows
#check row_400001_400004
#check row_500000_500003
#check kraus_elimination_q_13_level_26
#check bugeaud_P_phi13_gt_C_when_B_gt_500000
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#check level_lowering_26_to_2_from_no_match
#check s2_26_displayed_newforms_miss_frey_traces
#print axioms S_has_prime_with_exp_one_B_le_500000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_500000_from_exp_one_table_rows
#print axioms row_400001_400004
#print axioms row_500000_500003
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299
