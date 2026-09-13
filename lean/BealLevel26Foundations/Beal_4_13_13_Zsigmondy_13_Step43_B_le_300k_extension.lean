/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.48.0 — B ≤ 300000 exp-one
extension (900 named gap-3 rows, not a ∀).

Wraps the 601 named Step42 rows
(B ≤ 200000, including the inhabited
outlier (200000, 200003) with
p = 12186951011) and adds new
computational pairs with
200000 < B ≤ 300000 and C = B+3.
Most new rows have a prime p ≤ 547
with p | S, p ∤ (C-B), p² ∤ S, so the
Step11 dichotomy gives order ≠ 13 and
S_not_fourth.  Remaining named pairs
in the window use the same modular
witnesses (p ≤ 547).

This is not every B ≤ 300000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 300000 squarefull
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

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 8000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension

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

/-! ## Inherited Step42 rows (601 wrappers) -/
def row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_1_4
def row_196_199 :
    HasPrimeWithExpOne (S_val 196 199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196 199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_196_199
def row_386_389 :
    HasPrimeWithExpOne (S_val 386 389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386 389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_386_389
def row_587_590 :
    HasPrimeWithExpOne (S_val 587 590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 587 590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_587_590
def row_1171_1174 :
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1171 1174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_1171_1174
def row_1366_1369 :
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1366 1369 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_1366_1369
def row_1559_1562 :
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1559 1562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_1559_1562
def row_1756_1759 :
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1756 1759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_1756_1759
def row_2146_2149 :
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2146 2149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_2146_2149
def row_2536_2539 :
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2536 2539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_2536_2539
def row_2731_2734 :
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2731 2734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_2731_2734
def row_3313_3316 :
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3313 3316 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_3313_3316
def row_3511_3514 :
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3511 3514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_3511_3514
def row_3706_3709 :
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3706 3709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_3706_3709
def row_3901_3904 :
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3901 3904 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_3901_3904
def row_4682_4685 :
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4682 4685 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_4682_4685
def row_4876_4879 :
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4876 4879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_4876_4879
def row_5071_5074 :
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5071 5074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_5071_5074
def row_5461_5464 :
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5461 5464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_5461_5464
def row_5849_5852 :
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5849 5852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_5849_5852
def row_6046_6049 :
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6046 6049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_6046_6049
def row_6241_6244 :
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6241 6244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_6241_6244
def row_6631_6634 :
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6631 6634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_6631_6634
def row_7411_7414 :
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7411 7414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_7411_7414
def row_7606_7609 :
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7606 7609 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_7606_7609
def row_7801_7804 :
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7801 7804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_7801_7804
def row_7997_8000 :
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7997 8000 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_7997_8000
def row_8194_8197 :
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8194 8197 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_8194_8197
def row_8582_8585 :
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8582 8585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_8582_8585
def row_9163_9166 :
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9163 9166 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_9163_9166
def row_9361_9364 :
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9361 9364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_9361_9364
def row_9751_9754 :
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9751 9754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_9751_9754
def row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_10000_10003
def row_10141_10144 :
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10141 10144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_10141_10144
def row_10531_10534 :
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10531 10534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_10531_10534
def row_10726_10729 :
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10726 10729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_10726_10729
def row_11311_11314 :
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11311 11314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_11311_11314
def row_11506_11509 :
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11506 11509 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_11506_11509
def row_11896_11899 :
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11896 11899 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_11896_11899
def row_12091_12094 :
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12091 12094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_12091_12094
def row_12871_12874 :
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12871 12874 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_12871_12874
def row_13066_13069 :
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13066 13069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_13066_13069
def row_13258_13261 :
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13258 13261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_13258_13261
def row_13457_13460 :
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13457 13460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_13457_13460
def row_13651_13654 :
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13651 13654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_13651_13654
def row_13846_13849 :
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13846 13849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_13846_13849
def row_14041_14044 :
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14041 14044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_14041_14044
def row_14236_14239 :
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14236 14239 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_14236_14239
def row_14431_14434 :
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14431 14434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_14431_14434
def row_14626_14629 :
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14626 14629 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_14626_14629
def row_14821_14824 :
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14821 14824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_14821_14824
def row_15016_15019 :
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15016 15019 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_15016_15019
def row_15211_15214 :
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15211 15214 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_15211_15214
def row_15406_15409 :
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15406 15409 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_15406_15409
def row_15991_15994 :
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15991 15994 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_15991_15994
def row_16186_16189 :
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16186 16189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_16186_16189
def row_16381_16384 :
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16381 16384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_16381_16384
def row_16576_16579 :
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16576 16579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_16576_16579
def row_16771_16774 :
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16771 16774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_16771_16774
def row_16966_16969 :
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16966 16969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_16966_16969
def row_17161_17164 :
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17161 17164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_17161_17164
def row_17354_17357 :
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17354 17357 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_17354_17357
def row_17551_17554 :
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17551 17554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_17551_17554
def row_17746_17749 :
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17746 17749 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_17746_17749
def row_17938_17941 :
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17938 17941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_17938_17941
def row_18136_18139 :
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18136 18139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_18136_18139
def row_18331_18334 :
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18331 18334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_18331_18334
def row_18526_18529 :
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18526 18529 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_18526_18529
def row_18721_18724 :
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18721 18724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_18721_18724
def row_19310_19313 :
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19310 19313 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_19310_19313
def row_19501_19504 :
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19501 19504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_19501_19504
def row_19694_19697 :
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19694 19697 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_19694_19697
def row_19891_19894 :
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19891 19894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_19891_19894
def row_20086_20089 :
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20086 20089 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_20086_20089
def row_20281_20284 :
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20281 20284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_20281_20284
def row_20476_20479 :
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20476 20479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_20476_20479
def row_20671_20674 :
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20671 20674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_20671_20674
def row_20866_20869 :
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20866 20869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_20866_20869
def row_21061_21064 :
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21061 21064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_21061_21064
def row_21256_21259 :
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21256 21259 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_21256_21259
def row_21451_21454 :
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21451 21454 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_21451_21454
def row_21841_21844 :
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21841 21844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_21841_21844
def row_22229_22232 :
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22229 22232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_22229_22232
def row_22621_22624 :
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22621 22624 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_22621_22624
def row_22814_22817 :
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22814 22817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_22814_22817
def row_23206_23209 :
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23206 23209 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_23206_23209
def row_23791_23794 :
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23791 23794 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_23791_23794
def row_24181_24184 :
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24181 24184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_24181_24184
def row_24374_24377 :
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24374 24377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_24374_24377
def row_24571_24574 :
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24571 24574 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_24571_24574
def row_24764_24767 :
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24764 24767 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_24764_24767
def row_25156_25159 :
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25156 25159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_25156_25159
def row_25351_25354 :
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25351 25354 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_25351_25354
def row_26132_26135 :
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26132 26135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_26132_26135
def row_26326_26329 :
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26326 26329 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_26326_26329
def row_26716_26719 :
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26716 26719 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_26716_26719
def row_26911_26914 :
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26911 26914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_26911_26914
def row_27301_27304 :
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27301 27304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_27301_27304
def row_27496_27499 :
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27496 27499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_27496_27499
def row_27692_27695 :
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27692 27695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_27692_27695
def row_28081_28084 :
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28081 28084 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_28081_28084
def row_28280_28283 :
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28280 28283 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_28280_28283
def row_28471_28474 :
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28471 28474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_28471_28474
def row_28666_28669 :
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28666 28669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_28666_28669
def row_29056_29059 :
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29056 29059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_29056_29059
def row_29251_29254 :
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29251 29254 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_29251_29254
def row_29446_29449 :
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29446 29449 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_29446_29449
def row_29641_29644 :
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29641 29644 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_29641_29644
def row_29836_29839 :
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29836 29839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_29836_29839
def row_30031_30034 :
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30031 30034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_30031_30034
def row_30223_30226 :
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30223 30226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_30223_30226
def row_30421_30424 :
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30421 30424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_30421_30424
def row_30617_30620 :
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30617 30620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_30617_30620
def row_30811_30814 :
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30811 30814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_30811_30814
def row_31006_31009 :
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31006 31009 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_31006_31009
def row_31201_31204 :
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31201 31204 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_31201_31204
def row_31591_31594 :
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31591 31594 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_31591_31594
def row_31979_31982 :
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31979 31982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_31979_31982
def row_32176_32179 :
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32176 32179 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_32176_32179
def row_32371_32374 :
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32371 32374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_32371_32374
def row_32566_32569 :
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32566 32569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_32566_32569
def row_32956_32959 :
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32956 32959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_32956_32959
def row_33152_33155 :
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33152 33155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_33152_33155
def row_33541_33544 :
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33541 33544 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_33541_33544
def row_33736_33739 :
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33736 33739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_33736_33739
def row_34124_34127 :
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34124 34127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_34124_34127
def row_34516_34519 :
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34516 34519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_34516_34519
def row_34708_34711 :
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34708 34711 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_34708_34711
def row_34906_34909 :
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34906 34909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_34906_34909
def row_35296_35299 :
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35296 35299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_35296_35299
def row_35489_35492 :
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35489 35492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_35489_35492
def row_35686_35689 :
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35686 35689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_35686_35689
def row_36077_36080 :
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36077 36080 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_36077_36080
def row_36272_36275 :
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36272 36275 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_36272_36275
def row_36856_36859 :
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36856 36859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_36856_36859
def row_37051_37054 :
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37051 37054 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_37051_37054
def row_37246_37249 :
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37246 37249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_37246_37249
def row_37441_37444 :
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37441 37444 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_37441_37444
def row_37636_37639 :
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37636 37639 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_37636_37639
def row_38027_38030 :
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38027 38030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_38027_38030
def row_38221_38224 :
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38221 38224 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_38221_38224
def row_38416_38419 :
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38416 38419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_38416_38419
def row_38611_38614 :
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38611 38614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_38611_38614
def row_38806_38809 :
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38806 38809 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_38806_38809
def row_39001_39004 :
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39001 39004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_39001_39004
def row_39196_39199 :
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39196 39199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_39196_39199
def row_39584_39587 :
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39584 39587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_39584_39587
def row_39782_39785 :
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39782 39785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_39782_39785
def row_40171_40174 :
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40171 40174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_40171_40174
def row_40561_40564 :
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40561 40564 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_40561_40564
def row_40949_40952 :
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40949 40952 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_40949_40952
def row_41146_41149 :
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41146 41149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_41146_41149
def row_41341_41344 :
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41341 41344 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_41341_41344
def row_41536_41539 :
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41536 41539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_41536_41539
def row_41731_41734 :
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41731 41734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_41731_41734
def row_41926_41929 :
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41926 41929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_41926_41929
def row_42121_42124 :
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42121 42124 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_42121_42124
def row_42511_42514 :
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42511 42514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_42511_42514
def row_42706_42709 :
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42706 42709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_42706_42709
def row_42899_42902 :
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42899 42902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_42899_42902
def row_43097_43100 :
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43097 43100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_43097_43100
def row_43876_43879 :
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43876 43879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_43876_43879
def row_44071_44074 :
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44071 44074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_44071_44074
def row_44266_44269 :
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44266 44269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_44266_44269
def row_44461_44464 :
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44461 44464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_44461_44464
def row_44656_44659 :
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44656 44659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_44656_44659
def row_44851_44854 :
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44851 44854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_44851_44854
def row_45046_45049 :
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45046 45049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_45046_45049
def row_45241_45244 :
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45241 45244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_45241_45244
def row_45436_45439 :
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45436 45439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_45436_45439
def row_45631_45634 :
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45631 45634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_45631_45634
def row_46021_46024 :
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46021 46024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_46021_46024
def row_46412_46415 :
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46412 46415 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_46412_46415
def row_46609_46612 :
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46609 46612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_46609_46612
def row_46801_46804 :
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46801 46804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_46801_46804
def row_46996_46999 :
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46996 46999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_46996_46999
def row_47191_47194 :
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47191 47194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_47191_47194
def row_47386_47389 :
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47386 47389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_47386_47389
def row_47581_47584 :
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47581 47584 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_47581_47584
def row_47971_47974 :
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47971 47974 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_47971_47974
def row_48166_48169 :
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48166 48169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_48166_48169
def row_48361_48364 :
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48361 48364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_48361_48364
def row_48554_48557 :
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48554 48557 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_48554_48557
def row_48751_48754 :
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48751 48754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_48751_48754
def row_49141_49144 :
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49141 49144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_49141_49144
def row_49336_49339 :
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49336 49339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_49336_49339
def row_49531_49534 :
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49531 49534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_49531_49534
def row_50000_50003 :
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50000 50003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_50000_50003
def row_50001_50004 :
    HasPrimeWithExpOne (S_val 50001 50004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50001 50004 ∧ ¬ p ∣ (50004 - 50001) ∧
      ∃ (hNotC : ¬ p ∣ 50004) (hNotB : ¬ p ∣ 50001),
        order_of_C_B_inv_mod_p2 50004 50001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50001 50004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_50001_50004
def row_50389_50392 :
    HasPrimeWithExpOne (S_val 50389 50392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50389 50392 ∧ ¬ p ∣ (50392 - 50389) ∧
      ∃ (hNotC : ¬ p ∣ 50392) (hNotB : ¬ p ∣ 50389),
        order_of_C_B_inv_mod_p2 50392 50389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50389 50392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_50389_50392
def row_50779_50782 :
    HasPrimeWithExpOne (S_val 50779 50782) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50779 50782 ∧ ¬ p ∣ (50782 - 50779) ∧
      ∃ (hNotC : ¬ p ∣ 50782) (hNotB : ¬ p ∣ 50779),
        order_of_C_B_inv_mod_p2 50782 50779 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50779 50782 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_50779_50782
def row_51191_51194 :
    HasPrimeWithExpOne (S_val 51191 51194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51191 51194 ∧ ¬ p ∣ (51194 - 51191) ∧
      ∃ (hNotC : ¬ p ∣ 51194) (hNotB : ¬ p ∣ 51191),
        order_of_C_B_inv_mod_p2 51194 51191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51191 51194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_51191_51194
def row_51574_51577 :
    HasPrimeWithExpOne (S_val 51574 51577) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51574 51577 ∧ ¬ p ∣ (51577 - 51574) ∧
      ∃ (hNotC : ¬ p ∣ 51577) (hNotB : ¬ p ∣ 51574),
        order_of_C_B_inv_mod_p2 51577 51574 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51574 51577 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_51574_51577
def row_51965_51968 :
    HasPrimeWithExpOne (S_val 51965 51968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51965 51968 ∧ ¬ p ∣ (51968 - 51965) ∧
      ∃ (hNotC : ¬ p ∣ 51968) (hNotB : ¬ p ∣ 51965),
        order_of_C_B_inv_mod_p2 51968 51965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51965 51968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_51965_51968
def row_52362_52365 :
    HasPrimeWithExpOne (S_val 52362 52365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52362 52365 ∧ ¬ p ∣ (52365 - 52362) ∧
      ∃ (hNotC : ¬ p ∣ 52365) (hNotB : ¬ p ∣ 52362),
        order_of_C_B_inv_mod_p2 52365 52362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52362 52365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_52362_52365
def row_52739_52742 :
    HasPrimeWithExpOne (S_val 52739 52742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52739 52742 ∧ ¬ p ∣ (52742 - 52739) ∧
      ∃ (hNotC : ¬ p ∣ 52742) (hNotB : ¬ p ∣ 52739),
        order_of_C_B_inv_mod_p2 52742 52739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52739 52742 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_52739_52742
def row_53136_53139 :
    HasPrimeWithExpOne (S_val 53136 53139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53136 53139 ∧ ¬ p ∣ (53139 - 53136) ∧
      ∃ (hNotC : ¬ p ∣ 53139) (hNotB : ¬ p ∣ 53136),
        order_of_C_B_inv_mod_p2 53139 53136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53136 53139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_53136_53139
def row_53525_53528 :
    HasPrimeWithExpOne (S_val 53525 53528) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53525 53528 ∧ ¬ p ∣ (53528 - 53525) ∧
      ∃ (hNotC : ¬ p ∣ 53528) (hNotB : ¬ p ∣ 53525),
        order_of_C_B_inv_mod_p2 53528 53525 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53525 53528 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_53525_53528
def row_53915_53918 :
    HasPrimeWithExpOne (S_val 53915 53918) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53915 53918 ∧ ¬ p ∣ (53918 - 53915) ∧
      ∃ (hNotC : ¬ p ∣ 53918) (hNotB : ¬ p ∣ 53915),
        order_of_C_B_inv_mod_p2 53918 53915 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53915 53918 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_53915_53918
def row_54302_54305 :
    HasPrimeWithExpOne (S_val 54302 54305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54302 54305 ∧ ¬ p ∣ (54305 - 54302) ∧
      ∃ (hNotC : ¬ p ∣ 54305) (hNotB : ¬ p ∣ 54302),
        order_of_C_B_inv_mod_p2 54305 54302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54302 54305 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_54302_54305
def row_54701_54704 :
    HasPrimeWithExpOne (S_val 54701 54704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54701 54704 ∧ ¬ p ∣ (54704 - 54701) ∧
      ∃ (hNotC : ¬ p ∣ 54704) (hNotB : ¬ p ∣ 54701),
        order_of_C_B_inv_mod_p2 54704 54701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54701 54704 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_54701_54704
def row_55091_55094 :
    HasPrimeWithExpOne (S_val 55091 55094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55091 55094 ∧ ¬ p ∣ (55094 - 55091) ∧
      ∃ (hNotC : ¬ p ∣ 55094) (hNotB : ¬ p ∣ 55091),
        order_of_C_B_inv_mod_p2 55094 55091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55091 55094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_55091_55094
def row_55496_55499 :
    HasPrimeWithExpOne (S_val 55496 55499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55496 55499 ∧ ¬ p ∣ (55499 - 55496) ∧
      ∃ (hNotC : ¬ p ∣ 55499) (hNotB : ¬ p ∣ 55496),
        order_of_C_B_inv_mod_p2 55499 55496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55496 55499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_55496_55499
def row_55894_55897 :
    HasPrimeWithExpOne (S_val 55894 55897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55894 55897 ∧ ¬ p ∣ (55897 - 55894) ∧
      ∃ (hNotC : ¬ p ∣ 55897) (hNotB : ¬ p ∣ 55894),
        order_of_C_B_inv_mod_p2 55897 55894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55894 55897 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_55894_55897
def row_56278_56281 :
    HasPrimeWithExpOne (S_val 56278 56281) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56278 56281 ∧ ¬ p ∣ (56281 - 56278) ∧
      ∃ (hNotC : ¬ p ∣ 56281) (hNotB : ¬ p ∣ 56278),
        order_of_C_B_inv_mod_p2 56281 56278 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56278 56281 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_56278_56281
def row_56667_56670 :
    HasPrimeWithExpOne (S_val 56667 56670) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56667 56670 ∧ ¬ p ∣ (56670 - 56667) ∧
      ∃ (hNotC : ¬ p ∣ 56670) (hNotB : ¬ p ∣ 56667),
        order_of_C_B_inv_mod_p2 56670 56667 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56667 56670 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_56667_56670
def row_57036_57039 :
    HasPrimeWithExpOne (S_val 57036 57039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57036 57039 ∧ ¬ p ∣ (57039 - 57036) ∧
      ∃ (hNotC : ¬ p ∣ 57039) (hNotB : ¬ p ∣ 57036),
        order_of_C_B_inv_mod_p2 57039 57036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57036 57039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_57036_57039
def row_57417_57420 :
    HasPrimeWithExpOne (S_val 57417 57420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57417 57420 ∧ ¬ p ∣ (57420 - 57417) ∧
      ∃ (hNotC : ¬ p ∣ 57420) (hNotB : ¬ p ∣ 57417),
        order_of_C_B_inv_mod_p2 57420 57417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57417 57420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_57417_57420
def row_57825_57828 :
    HasPrimeWithExpOne (S_val 57825 57828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57825 57828 ∧ ¬ p ∣ (57828 - 57825) ∧
      ∃ (hNotC : ¬ p ∣ 57828) (hNotB : ¬ p ∣ 57825),
        order_of_C_B_inv_mod_p2 57828 57825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57825 57828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_57825_57828
def row_58198_58201 :
    HasPrimeWithExpOne (S_val 58198 58201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58198 58201 ∧ ¬ p ∣ (58201 - 58198) ∧
      ∃ (hNotC : ¬ p ∣ 58201) (hNotB : ¬ p ∣ 58198),
        order_of_C_B_inv_mod_p2 58201 58198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58198 58201 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_58198_58201
def row_58587_58590 :
    HasPrimeWithExpOne (S_val 58587 58590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58587 58590 ∧ ¬ p ∣ (58590 - 58587) ∧
      ∃ (hNotC : ¬ p ∣ 58590) (hNotB : ¬ p ∣ 58587),
        order_of_C_B_inv_mod_p2 58590 58587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58587 58590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_58587_58590
def row_58995_58998 :
    HasPrimeWithExpOne (S_val 58995 58998) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58995 58998 ∧ ¬ p ∣ (58998 - 58995) ∧
      ∃ (hNotC : ¬ p ∣ 58998) (hNotB : ¬ p ∣ 58995),
        order_of_C_B_inv_mod_p2 58998 58995 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58995 58998 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_58995_58998
def row_59373_59376 :
    HasPrimeWithExpOne (S_val 59373 59376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59373 59376 ∧ ¬ p ∣ (59376 - 59373) ∧
      ∃ (hNotC : ¬ p ∣ 59376) (hNotB : ¬ p ∣ 59373),
        order_of_C_B_inv_mod_p2 59376 59373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59373 59376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_59373_59376
def row_59767_59770 :
    HasPrimeWithExpOne (S_val 59767 59770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59767 59770 ∧ ¬ p ∣ (59770 - 59767) ∧
      ∃ (hNotC : ¬ p ∣ 59770) (hNotB : ¬ p ∣ 59767),
        order_of_C_B_inv_mod_p2 59770 59767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59767 59770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_59767_59770
def row_60159_60162 :
    HasPrimeWithExpOne (S_val 60159 60162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60159 60162 ∧ ¬ p ∣ (60162 - 60159) ∧
      ∃ (hNotC : ¬ p ∣ 60162) (hNotB : ¬ p ∣ 60159),
        order_of_C_B_inv_mod_p2 60162 60159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60159 60162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_60159_60162
def row_60530_60533 :
    HasPrimeWithExpOne (S_val 60530 60533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60530 60533 ∧ ¬ p ∣ (60533 - 60530) ∧
      ∃ (hNotC : ¬ p ∣ 60533) (hNotB : ¬ p ∣ 60530),
        order_of_C_B_inv_mod_p2 60533 60530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60530 60533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_60530_60533
def row_60922_60925 :
    HasPrimeWithExpOne (S_val 60922 60925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60922 60925 ∧ ¬ p ∣ (60925 - 60922) ∧
      ∃ (hNotC : ¬ p ∣ 60925) (hNotB : ¬ p ∣ 60922),
        order_of_C_B_inv_mod_p2 60925 60922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60922 60925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_60922_60925
def row_61286_61289 :
    HasPrimeWithExpOne (S_val 61286 61289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61286 61289 ∧ ¬ p ∣ (61289 - 61286) ∧
      ∃ (hNotC : ¬ p ∣ 61289) (hNotB : ¬ p ∣ 61286),
        order_of_C_B_inv_mod_p2 61289 61286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61286 61289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_61286_61289
def row_61684_61687 :
    HasPrimeWithExpOne (S_val 61684 61687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61684 61687 ∧ ¬ p ∣ (61687 - 61684) ∧
      ∃ (hNotC : ¬ p ∣ 61687) (hNotB : ¬ p ∣ 61684),
        order_of_C_B_inv_mod_p2 61687 61684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61684 61687 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_61684_61687
def row_62056_62059 :
    HasPrimeWithExpOne (S_val 62056 62059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62056 62059 ∧ ¬ p ∣ (62059 - 62056) ∧
      ∃ (hNotC : ¬ p ∣ 62059) (hNotB : ¬ p ∣ 62056),
        order_of_C_B_inv_mod_p2 62059 62056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62056 62059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_62056_62059
def row_62452_62455 :
    HasPrimeWithExpOne (S_val 62452 62455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62452 62455 ∧ ¬ p ∣ (62455 - 62452) ∧
      ∃ (hNotC : ¬ p ∣ 62455) (hNotB : ¬ p ∣ 62452),
        order_of_C_B_inv_mod_p2 62455 62452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62452 62455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_62452_62455
def row_62849_62852 :
    HasPrimeWithExpOne (S_val 62849 62852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62849 62852 ∧ ¬ p ∣ (62852 - 62849) ∧
      ∃ (hNotC : ¬ p ∣ 62852) (hNotB : ¬ p ∣ 62849),
        order_of_C_B_inv_mod_p2 62852 62849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62849 62852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_62849_62852
def row_63234_63237 :
    HasPrimeWithExpOne (S_val 63234 63237) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63234 63237 ∧ ¬ p ∣ (63237 - 63234) ∧
      ∃ (hNotC : ¬ p ∣ 63237) (hNotB : ¬ p ∣ 63234),
        order_of_C_B_inv_mod_p2 63237 63234 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63234 63237 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_63234_63237
def row_63609_63612 :
    HasPrimeWithExpOne (S_val 63609 63612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63609 63612 ∧ ¬ p ∣ (63612 - 63609) ∧
      ∃ (hNotC : ¬ p ∣ 63612) (hNotB : ¬ p ∣ 63609),
        order_of_C_B_inv_mod_p2 63612 63609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63609 63612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_63609_63612
def row_63982_63985 :
    HasPrimeWithExpOne (S_val 63982 63985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63982 63985 ∧ ¬ p ∣ (63985 - 63982) ∧
      ∃ (hNotC : ¬ p ∣ 63985) (hNotB : ¬ p ∣ 63982),
        order_of_C_B_inv_mod_p2 63985 63982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63982 63985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_63982_63985
def row_64381_64384 :
    HasPrimeWithExpOne (S_val 64381 64384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64381 64384 ∧ ¬ p ∣ (64384 - 64381) ∧
      ∃ (hNotC : ¬ p ∣ 64384) (hNotB : ¬ p ∣ 64381),
        order_of_C_B_inv_mod_p2 64384 64381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64381 64384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_64381_64384
def row_64755_64758 :
    HasPrimeWithExpOne (S_val 64755 64758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64755 64758 ∧ ¬ p ∣ (64758 - 64755) ∧
      ∃ (hNotC : ¬ p ∣ 64758) (hNotB : ¬ p ∣ 64755),
        order_of_C_B_inv_mod_p2 64758 64755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64755 64758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_64755_64758
def row_65129_65132 :
    HasPrimeWithExpOne (S_val 65129 65132) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65129 65132 ∧ ¬ p ∣ (65132 - 65129) ∧
      ∃ (hNotC : ¬ p ∣ 65132) (hNotB : ¬ p ∣ 65129),
        order_of_C_B_inv_mod_p2 65132 65129 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65129 65132 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_65129_65132
def row_65501_65504 :
    HasPrimeWithExpOne (S_val 65501 65504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65501 65504 ∧ ¬ p ∣ (65504 - 65501) ∧
      ∃ (hNotC : ¬ p ∣ 65504) (hNotB : ¬ p ∣ 65501),
        order_of_C_B_inv_mod_p2 65504 65501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65501 65504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_65501_65504
def row_65883_65886 :
    HasPrimeWithExpOne (S_val 65883 65886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65883 65886 ∧ ¬ p ∣ (65886 - 65883) ∧
      ∃ (hNotC : ¬ p ∣ 65886) (hNotB : ¬ p ∣ 65883),
        order_of_C_B_inv_mod_p2 65886 65883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65883 65886 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_65883_65886
def row_66287_66290 :
    HasPrimeWithExpOne (S_val 66287 66290) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66287 66290 ∧ ¬ p ∣ (66290 - 66287) ∧
      ∃ (hNotC : ¬ p ∣ 66290) (hNotB : ¬ p ∣ 66287),
        order_of_C_B_inv_mod_p2 66290 66287 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66287 66290 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_66287_66290
def row_66655_66658 :
    HasPrimeWithExpOne (S_val 66655 66658) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66655 66658 ∧ ¬ p ∣ (66658 - 66655) ∧
      ∃ (hNotC : ¬ p ∣ 66658) (hNotB : ¬ p ∣ 66655),
        order_of_C_B_inv_mod_p2 66658 66655 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66655 66658 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_66655_66658
def row_67038_67041 :
    HasPrimeWithExpOne (S_val 67038 67041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67038 67041 ∧ ¬ p ∣ (67041 - 67038) ∧
      ∃ (hNotC : ¬ p ∣ 67041) (hNotB : ¬ p ∣ 67038),
        order_of_C_B_inv_mod_p2 67041 67038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67038 67041 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_67038_67041
def row_67426_67429 :
    HasPrimeWithExpOne (S_val 67426 67429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67426 67429 ∧ ¬ p ∣ (67429 - 67426) ∧
      ∃ (hNotC : ¬ p ∣ 67429) (hNotB : ¬ p ∣ 67426),
        order_of_C_B_inv_mod_p2 67429 67426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67426 67429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_67426_67429
def row_67819_67822 :
    HasPrimeWithExpOne (S_val 67819 67822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67819 67822 ∧ ¬ p ∣ (67822 - 67819) ∧
      ∃ (hNotC : ¬ p ∣ 67822) (hNotB : ¬ p ∣ 67819),
        order_of_C_B_inv_mod_p2 67822 67819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67819 67822 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_67819_67822
def row_68203_68206 :
    HasPrimeWithExpOne (S_val 68203 68206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68203 68206 ∧ ¬ p ∣ (68206 - 68203) ∧
      ∃ (hNotC : ¬ p ∣ 68206) (hNotB : ¬ p ∣ 68203),
        order_of_C_B_inv_mod_p2 68206 68203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68203 68206 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_68203_68206
def row_68595_68598 :
    HasPrimeWithExpOne (S_val 68595 68598) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68595 68598 ∧ ¬ p ∣ (68598 - 68595) ∧
      ∃ (hNotC : ¬ p ∣ 68598) (hNotB : ¬ p ∣ 68595),
        order_of_C_B_inv_mod_p2 68598 68595 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68595 68598 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_68595_68598
def row_68980_68983 :
    HasPrimeWithExpOne (S_val 68980 68983) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68980 68983 ∧ ¬ p ∣ (68983 - 68980) ∧
      ∃ (hNotC : ¬ p ∣ 68983) (hNotB : ¬ p ∣ 68980),
        order_of_C_B_inv_mod_p2 68983 68980 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68980 68983 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_68980_68983
def row_69387_69390 :
    HasPrimeWithExpOne (S_val 69387 69390) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69387 69390 ∧ ¬ p ∣ (69390 - 69387) ∧
      ∃ (hNotC : ¬ p ∣ 69390) (hNotB : ¬ p ∣ 69387),
        order_of_C_B_inv_mod_p2 69390 69387 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69387 69390 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_69387_69390
def row_69770_69773 :
    HasPrimeWithExpOne (S_val 69770 69773) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69770 69773 ∧ ¬ p ∣ (69773 - 69770) ∧
      ∃ (hNotC : ¬ p ∣ 69773) (hNotB : ¬ p ∣ 69770),
        order_of_C_B_inv_mod_p2 69773 69770 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69770 69773 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_69770_69773
def row_70145_70148 :
    HasPrimeWithExpOne (S_val 70145 70148) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70145 70148 ∧ ¬ p ∣ (70148 - 70145) ∧
      ∃ (hNotC : ¬ p ∣ 70148) (hNotB : ¬ p ∣ 70145),
        order_of_C_B_inv_mod_p2 70148 70145 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70145 70148 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_70145_70148
def row_70549_70552 :
    HasPrimeWithExpOne (S_val 70549 70552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70549 70552 ∧ ¬ p ∣ (70552 - 70549) ∧
      ∃ (hNotC : ¬ p ∣ 70552) (hNotB : ¬ p ∣ 70549),
        order_of_C_B_inv_mod_p2 70552 70549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70549 70552 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_70549_70552
def row_70931_70934 :
    HasPrimeWithExpOne (S_val 70931 70934) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70931 70934 ∧ ¬ p ∣ (70934 - 70931) ∧
      ∃ (hNotC : ¬ p ∣ 70934) (hNotB : ¬ p ∣ 70931),
        order_of_C_B_inv_mod_p2 70934 70931 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70931 70934 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_70931_70934
def row_71321_71324 :
    HasPrimeWithExpOne (S_val 71321 71324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71321 71324 ∧ ¬ p ∣ (71324 - 71321) ∧
      ∃ (hNotC : ¬ p ∣ 71324) (hNotB : ¬ p ∣ 71321),
        order_of_C_B_inv_mod_p2 71324 71321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71321 71324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_71321_71324
def row_71710_71713 :
    HasPrimeWithExpOne (S_val 71710 71713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71710 71713 ∧ ¬ p ∣ (71713 - 71710) ∧
      ∃ (hNotC : ¬ p ∣ 71713) (hNotB : ¬ p ∣ 71710),
        order_of_C_B_inv_mod_p2 71713 71710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71710 71713 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_71710_71713
def row_72104_72107 :
    HasPrimeWithExpOne (S_val 72104 72107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72104 72107 ∧ ¬ p ∣ (72107 - 72104) ∧
      ∃ (hNotC : ¬ p ∣ 72107) (hNotB : ¬ p ∣ 72104),
        order_of_C_B_inv_mod_p2 72107 72104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72104 72107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_72104_72107
def row_72497_72500 :
    HasPrimeWithExpOne (S_val 72497 72500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72497 72500 ∧ ¬ p ∣ (72500 - 72497) ∧
      ∃ (hNotC : ¬ p ∣ 72500) (hNotB : ¬ p ∣ 72497),
        order_of_C_B_inv_mod_p2 72500 72497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72497 72500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_72497_72500
def row_72899_72902 :
    HasPrimeWithExpOne (S_val 72899 72902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72899 72902 ∧ ¬ p ∣ (72902 - 72899) ∧
      ∃ (hNotC : ¬ p ∣ 72902) (hNotB : ¬ p ∣ 72899),
        order_of_C_B_inv_mod_p2 72902 72899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72899 72902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_72899_72902
def row_73286_73289 :
    HasPrimeWithExpOne (S_val 73286 73289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73286 73289 ∧ ¬ p ∣ (73289 - 73286) ∧
      ∃ (hNotC : ¬ p ∣ 73289) (hNotB : ¬ p ∣ 73286),
        order_of_C_B_inv_mod_p2 73289 73286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73286 73289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_73286_73289
def row_73675_73678 :
    HasPrimeWithExpOne (S_val 73675 73678) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73675 73678 ∧ ¬ p ∣ (73678 - 73675) ∧
      ∃ (hNotC : ¬ p ∣ 73678) (hNotB : ¬ p ∣ 73675),
        order_of_C_B_inv_mod_p2 73678 73675 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73675 73678 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_73675_73678
def row_74041_74044 :
    HasPrimeWithExpOne (S_val 74041 74044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74041 74044 ∧ ¬ p ∣ (74044 - 74041) ∧
      ∃ (hNotC : ¬ p ∣ 74044) (hNotB : ¬ p ∣ 74041),
        order_of_C_B_inv_mod_p2 74044 74041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74041 74044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_74041_74044
def row_74436_74439 :
    HasPrimeWithExpOne (S_val 74436 74439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74436 74439 ∧ ¬ p ∣ (74439 - 74436) ∧
      ∃ (hNotC : ¬ p ∣ 74439) (hNotB : ¬ p ∣ 74436),
        order_of_C_B_inv_mod_p2 74439 74436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74436 74439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_74436_74439
def row_74820_74823 :
    HasPrimeWithExpOne (S_val 74820 74823) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74820 74823 ∧ ¬ p ∣ (74823 - 74820) ∧
      ∃ (hNotC : ¬ p ∣ 74823) (hNotB : ¬ p ∣ 74820),
        order_of_C_B_inv_mod_p2 74823 74820 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74820 74823 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_74820_74823
def row_75171_75174 :
    HasPrimeWithExpOne (S_val 75171 75174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75171 75174 ∧ ¬ p ∣ (75174 - 75171) ∧
      ∃ (hNotC : ¬ p ∣ 75174) (hNotB : ¬ p ∣ 75171),
        order_of_C_B_inv_mod_p2 75174 75171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75171 75174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_75171_75174
def row_75575_75578 :
    HasPrimeWithExpOne (S_val 75575 75578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75575 75578 ∧ ¬ p ∣ (75578 - 75575) ∧
      ∃ (hNotC : ¬ p ∣ 75578) (hNotB : ¬ p ∣ 75575),
        order_of_C_B_inv_mod_p2 75578 75575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75575 75578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_75575_75578
def row_75953_75956 :
    HasPrimeWithExpOne (S_val 75953 75956) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75953 75956 ∧ ¬ p ∣ (75956 - 75953) ∧
      ∃ (hNotC : ¬ p ∣ 75956) (hNotB : ¬ p ∣ 75953),
        order_of_C_B_inv_mod_p2 75956 75953 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75953 75956 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_75953_75956
def row_76337_76340 :
    HasPrimeWithExpOne (S_val 76337 76340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76337 76340 ∧ ¬ p ∣ (76340 - 76337) ∧
      ∃ (hNotC : ¬ p ∣ 76340) (hNotB : ¬ p ∣ 76337),
        order_of_C_B_inv_mod_p2 76340 76337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76337 76340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_76337_76340
def row_76728_76731 :
    HasPrimeWithExpOne (S_val 76728 76731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76728 76731 ∧ ¬ p ∣ (76731 - 76728) ∧
      ∃ (hNotC : ¬ p ∣ 76731) (hNotB : ¬ p ∣ 76728),
        order_of_C_B_inv_mod_p2 76731 76728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76728 76731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_76728_76731
def row_77118_77121 :
    HasPrimeWithExpOne (S_val 77118 77121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77118 77121 ∧ ¬ p ∣ (77121 - 77118) ∧
      ∃ (hNotC : ¬ p ∣ 77121) (hNotB : ¬ p ∣ 77118),
        order_of_C_B_inv_mod_p2 77121 77118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77118 77121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_77118_77121
def row_77512_77515 :
    HasPrimeWithExpOne (S_val 77512 77515) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77512 77515 ∧ ¬ p ∣ (77515 - 77512) ∧
      ∃ (hNotC : ¬ p ∣ 77515) (hNotB : ¬ p ∣ 77512),
        order_of_C_B_inv_mod_p2 77515 77512 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77512 77515 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_77512_77515
def row_77902_77905 :
    HasPrimeWithExpOne (S_val 77902 77905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77902 77905 ∧ ¬ p ∣ (77905 - 77902) ∧
      ∃ (hNotC : ¬ p ∣ 77905) (hNotB : ¬ p ∣ 77902),
        order_of_C_B_inv_mod_p2 77905 77902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77902 77905 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_77902_77905
def row_78291_78294 :
    HasPrimeWithExpOne (S_val 78291 78294) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78291 78294 ∧ ¬ p ∣ (78294 - 78291) ∧
      ∃ (hNotC : ¬ p ∣ 78294) (hNotB : ¬ p ∣ 78291),
        order_of_C_B_inv_mod_p2 78294 78291 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78291 78294 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_78291_78294
def row_78678_78681 :
    HasPrimeWithExpOne (S_val 78678 78681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78678 78681 ∧ ¬ p ∣ (78681 - 78678) ∧
      ∃ (hNotC : ¬ p ∣ 78681) (hNotB : ¬ p ∣ 78678),
        order_of_C_B_inv_mod_p2 78681 78678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78678 78681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_78678_78681
def row_79069_79072 :
    HasPrimeWithExpOne (S_val 79069 79072) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79069 79072 ∧ ¬ p ∣ (79072 - 79069) ∧
      ∃ (hNotC : ¬ p ∣ 79072) (hNotB : ¬ p ∣ 79069),
        order_of_C_B_inv_mod_p2 79072 79069 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79069 79072 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_79069_79072
def row_79454_79457 :
    HasPrimeWithExpOne (S_val 79454 79457) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79454 79457 ∧ ¬ p ∣ (79457 - 79454) ∧
      ∃ (hNotC : ¬ p ∣ 79457) (hNotB : ¬ p ∣ 79454),
        order_of_C_B_inv_mod_p2 79457 79454 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79454 79457 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_79454_79457
def row_79843_79846 :
    HasPrimeWithExpOne (S_val 79843 79846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79843 79846 ∧ ¬ p ∣ (79846 - 79843) ∧
      ∃ (hNotC : ¬ p ∣ 79846) (hNotB : ¬ p ∣ 79843),
        order_of_C_B_inv_mod_p2 79846 79843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79843 79846 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_79843_79846
def row_80233_80236 :
    HasPrimeWithExpOne (S_val 80233 80236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80233 80236 ∧ ¬ p ∣ (80236 - 80233) ∧
      ∃ (hNotC : ¬ p ∣ 80236) (hNotB : ¬ p ∣ 80233),
        order_of_C_B_inv_mod_p2 80236 80233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80233 80236 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_80233_80236
def row_80625_80628 :
    HasPrimeWithExpOne (S_val 80625 80628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80625 80628 ∧ ¬ p ∣ (80628 - 80625) ∧
      ∃ (hNotC : ¬ p ∣ 80628) (hNotB : ¬ p ∣ 80625),
        order_of_C_B_inv_mod_p2 80628 80625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80625 80628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_80625_80628
def row_81029_81032 :
    HasPrimeWithExpOne (S_val 81029 81032) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81029 81032 ∧ ¬ p ∣ (81032 - 81029) ∧
      ∃ (hNotC : ¬ p ∣ 81032) (hNotB : ¬ p ∣ 81029),
        order_of_C_B_inv_mod_p2 81032 81029 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81029 81032 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_81029_81032
def row_81411_81414 :
    HasPrimeWithExpOne (S_val 81411 81414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81411 81414 ∧ ¬ p ∣ (81414 - 81411) ∧
      ∃ (hNotC : ¬ p ∣ 81414) (hNotB : ¬ p ∣ 81411),
        order_of_C_B_inv_mod_p2 81414 81411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81411 81414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_81411_81414
def row_81782_81785 :
    HasPrimeWithExpOne (S_val 81782 81785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81782 81785 ∧ ¬ p ∣ (81785 - 81782) ∧
      ∃ (hNotC : ¬ p ∣ 81785) (hNotB : ¬ p ∣ 81782),
        order_of_C_B_inv_mod_p2 81785 81782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81782 81785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_81782_81785
def row_82156_82159 :
    HasPrimeWithExpOne (S_val 82156 82159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82156 82159 ∧ ¬ p ∣ (82159 - 82156) ∧
      ∃ (hNotC : ¬ p ∣ 82159) (hNotB : ¬ p ∣ 82156),
        order_of_C_B_inv_mod_p2 82159 82156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82156 82159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_82156_82159
def row_82540_82543 :
    HasPrimeWithExpOne (S_val 82540 82543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82540 82543 ∧ ¬ p ∣ (82543 - 82540) ∧
      ∃ (hNotC : ¬ p ∣ 82543) (hNotB : ¬ p ∣ 82540),
        order_of_C_B_inv_mod_p2 82543 82540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82540 82543 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_82540_82543
def row_82938_82941 :
    HasPrimeWithExpOne (S_val 82938 82941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82938 82941 ∧ ¬ p ∣ (82941 - 82938) ∧
      ∃ (hNotC : ¬ p ∣ 82941) (hNotB : ¬ p ∣ 82938),
        order_of_C_B_inv_mod_p2 82941 82938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82938 82941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_82938_82941
def row_83321_83324 :
    HasPrimeWithExpOne (S_val 83321 83324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83321 83324 ∧ ¬ p ∣ (83324 - 83321) ∧
      ∃ (hNotC : ¬ p ∣ 83324) (hNotB : ¬ p ∣ 83321),
        order_of_C_B_inv_mod_p2 83324 83321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83321 83324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_83321_83324
def row_83714_83717 :
    HasPrimeWithExpOne (S_val 83714 83717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83714 83717 ∧ ¬ p ∣ (83717 - 83714) ∧
      ∃ (hNotC : ¬ p ∣ 83717) (hNotB : ¬ p ∣ 83714),
        order_of_C_B_inv_mod_p2 83717 83714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83714 83717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_83714_83717
def row_84116_84119 :
    HasPrimeWithExpOne (S_val 84116 84119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84116 84119 ∧ ¬ p ∣ (84119 - 84116) ∧
      ∃ (hNotC : ¬ p ∣ 84119) (hNotB : ¬ p ∣ 84116),
        order_of_C_B_inv_mod_p2 84119 84116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84116 84119 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_84116_84119
def row_84499_84502 :
    HasPrimeWithExpOne (S_val 84499 84502) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84499 84502 ∧ ¬ p ∣ (84502 - 84499) ∧
      ∃ (hNotC : ¬ p ∣ 84502) (hNotB : ¬ p ∣ 84499),
        order_of_C_B_inv_mod_p2 84502 84499 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84499 84502 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_84499_84502
def row_84888_84891 :
    HasPrimeWithExpOne (S_val 84888 84891) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84888 84891 ∧ ¬ p ∣ (84891 - 84888) ∧
      ∃ (hNotC : ¬ p ∣ 84891) (hNotB : ¬ p ∣ 84888),
        order_of_C_B_inv_mod_p2 84891 84888 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84888 84891 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_84888_84891
def row_85269_85272 :
    HasPrimeWithExpOne (S_val 85269 85272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85269 85272 ∧ ¬ p ∣ (85272 - 85269) ∧
      ∃ (hNotC : ¬ p ∣ 85272) (hNotB : ¬ p ∣ 85269),
        order_of_C_B_inv_mod_p2 85272 85269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85269 85272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_85269_85272
def row_85662_85665 :
    HasPrimeWithExpOne (S_val 85662 85665) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85662 85665 ∧ ¬ p ∣ (85665 - 85662) ∧
      ∃ (hNotC : ¬ p ∣ 85665) (hNotB : ¬ p ∣ 85662),
        order_of_C_B_inv_mod_p2 85665 85662 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85662 85665 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_85662_85665
def row_86026_86029 :
    HasPrimeWithExpOne (S_val 86026 86029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86026 86029 ∧ ¬ p ∣ (86029 - 86026) ∧
      ∃ (hNotC : ¬ p ∣ 86029) (hNotB : ¬ p ∣ 86026),
        order_of_C_B_inv_mod_p2 86029 86026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86026 86029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_86026_86029
def row_86409_86412 :
    HasPrimeWithExpOne (S_val 86409 86412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86409 86412 ∧ ¬ p ∣ (86412 - 86409) ∧
      ∃ (hNotC : ¬ p ∣ 86412) (hNotB : ¬ p ∣ 86409),
        order_of_C_B_inv_mod_p2 86412 86409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86409 86412 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_86409_86412
def row_86798_86801 :
    HasPrimeWithExpOne (S_val 86798 86801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86798 86801 ∧ ¬ p ∣ (86801 - 86798) ∧
      ∃ (hNotC : ¬ p ∣ 86801) (hNotB : ¬ p ∣ 86798),
        order_of_C_B_inv_mod_p2 86801 86798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86798 86801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_86798_86801
def row_87199_87202 :
    HasPrimeWithExpOne (S_val 87199 87202) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87199 87202 ∧ ¬ p ∣ (87202 - 87199) ∧
      ∃ (hNotC : ¬ p ∣ 87202) (hNotB : ¬ p ∣ 87199),
        order_of_C_B_inv_mod_p2 87202 87199 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87199 87202 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_87199_87202
def row_87582_87585 :
    HasPrimeWithExpOne (S_val 87582 87585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87582 87585 ∧ ¬ p ∣ (87585 - 87582) ∧
      ∃ (hNotC : ¬ p ∣ 87585) (hNotB : ¬ p ∣ 87582),
        order_of_C_B_inv_mod_p2 87585 87582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87582 87585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_87582_87585
def row_87972_87975 :
    HasPrimeWithExpOne (S_val 87972 87975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87972 87975 ∧ ¬ p ∣ (87975 - 87972) ∧
      ∃ (hNotC : ¬ p ∣ 87975) (hNotB : ¬ p ∣ 87972),
        order_of_C_B_inv_mod_p2 87975 87972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87972 87975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_87972_87975
def row_88355_88358 :
    HasPrimeWithExpOne (S_val 88355 88358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88355 88358 ∧ ¬ p ∣ (88358 - 88355) ∧
      ∃ (hNotC : ¬ p ∣ 88358) (hNotB : ¬ p ∣ 88355),
        order_of_C_B_inv_mod_p2 88358 88355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88355 88358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_88355_88358
def row_88772_88775 :
    HasPrimeWithExpOne (S_val 88772 88775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88772 88775 ∧ ¬ p ∣ (88775 - 88772) ∧
      ∃ (hNotC : ¬ p ∣ 88775) (hNotB : ¬ p ∣ 88772),
        order_of_C_B_inv_mod_p2 88775 88772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88772 88775 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_88772_88775
def row_89151_89154 :
    HasPrimeWithExpOne (S_val 89151 89154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89151 89154 ∧ ¬ p ∣ (89154 - 89151) ∧
      ∃ (hNotC : ¬ p ∣ 89154) (hNotB : ¬ p ∣ 89151),
        order_of_C_B_inv_mod_p2 89154 89151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89151 89154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_89151_89154
def row_89560_89563 :
    HasPrimeWithExpOne (S_val 89560 89563) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89560 89563 ∧ ¬ p ∣ (89563 - 89560) ∧
      ∃ (hNotC : ¬ p ∣ 89563) (hNotB : ¬ p ∣ 89560),
        order_of_C_B_inv_mod_p2 89563 89560 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89560 89563 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_89560_89563
def row_89934_89937 :
    HasPrimeWithExpOne (S_val 89934 89937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89934 89937 ∧ ¬ p ∣ (89937 - 89934) ∧
      ∃ (hNotC : ¬ p ∣ 89937) (hNotB : ¬ p ∣ 89934),
        order_of_C_B_inv_mod_p2 89937 89934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89934 89937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_89934_89937
def row_90331_90334 :
    HasPrimeWithExpOne (S_val 90331 90334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90331 90334 ∧ ¬ p ∣ (90334 - 90331) ∧
      ∃ (hNotC : ¬ p ∣ 90334) (hNotB : ¬ p ∣ 90331),
        order_of_C_B_inv_mod_p2 90334 90331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90331 90334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_90331_90334
def row_90707_90710 :
    HasPrimeWithExpOne (S_val 90707 90710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90707 90710 ∧ ¬ p ∣ (90710 - 90707) ∧
      ∃ (hNotC : ¬ p ∣ 90710) (hNotB : ¬ p ∣ 90707),
        order_of_C_B_inv_mod_p2 90710 90707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90707 90710 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_90707_90710
def row_91097_91100 :
    HasPrimeWithExpOne (S_val 91097 91100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91097 91100 ∧ ¬ p ∣ (91100 - 91097) ∧
      ∃ (hNotC : ¬ p ∣ 91100) (hNotB : ¬ p ∣ 91097),
        order_of_C_B_inv_mod_p2 91100 91097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91097 91100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_91097_91100
def row_91473_91476 :
    HasPrimeWithExpOne (S_val 91473 91476) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91473 91476 ∧ ¬ p ∣ (91476 - 91473) ∧
      ∃ (hNotC : ¬ p ∣ 91476) (hNotB : ¬ p ∣ 91473),
        order_of_C_B_inv_mod_p2 91476 91473 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91473 91476 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_91473_91476
def row_91853_91856 :
    HasPrimeWithExpOne (S_val 91853 91856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91853 91856 ∧ ¬ p ∣ (91856 - 91853) ∧
      ∃ (hNotC : ¬ p ∣ 91856) (hNotB : ¬ p ∣ 91853),
        order_of_C_B_inv_mod_p2 91856 91853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91853 91856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_91853_91856
def row_92255_92258 :
    HasPrimeWithExpOne (S_val 92255 92258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92255 92258 ∧ ¬ p ∣ (92258 - 92255) ∧
      ∃ (hNotC : ¬ p ∣ 92258) (hNotB : ¬ p ∣ 92255),
        order_of_C_B_inv_mod_p2 92258 92255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92255 92258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_92255_92258
def row_92611_92614 :
    HasPrimeWithExpOne (S_val 92611 92614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92611 92614 ∧ ¬ p ∣ (92614 - 92611) ∧
      ∃ (hNotC : ¬ p ∣ 92614) (hNotB : ¬ p ∣ 92611),
        order_of_C_B_inv_mod_p2 92614 92611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92611 92614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_92611_92614
def row_93019_93022 :
    HasPrimeWithExpOne (S_val 93019 93022) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93019 93022 ∧ ¬ p ∣ (93022 - 93019) ∧
      ∃ (hNotC : ¬ p ∣ 93022) (hNotB : ¬ p ∣ 93019),
        order_of_C_B_inv_mod_p2 93022 93019 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93019 93022 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_93019_93022
def row_93426_93429 :
    HasPrimeWithExpOne (S_val 93426 93429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93426 93429 ∧ ¬ p ∣ (93429 - 93426) ∧
      ∃ (hNotC : ¬ p ∣ 93429) (hNotB : ¬ p ∣ 93426),
        order_of_C_B_inv_mod_p2 93429 93426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93426 93429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_93426_93429
def row_93802_93805 :
    HasPrimeWithExpOne (S_val 93802 93805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93802 93805 ∧ ¬ p ∣ (93805 - 93802) ∧
      ∃ (hNotC : ¬ p ∣ 93805) (hNotB : ¬ p ∣ 93802),
        order_of_C_B_inv_mod_p2 93805 93802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93802 93805 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_93802_93805
def row_94186_94189 :
    HasPrimeWithExpOne (S_val 94186 94189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94186 94189 ∧ ¬ p ∣ (94189 - 94186) ∧
      ∃ (hNotC : ¬ p ∣ 94189) (hNotB : ¬ p ∣ 94186),
        order_of_C_B_inv_mod_p2 94189 94186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94186 94189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_94186_94189
def row_94570_94573 :
    HasPrimeWithExpOne (S_val 94570 94573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94570 94573 ∧ ¬ p ∣ (94573 - 94570) ∧
      ∃ (hNotC : ¬ p ∣ 94573) (hNotB : ¬ p ∣ 94570),
        order_of_C_B_inv_mod_p2 94573 94570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94570 94573 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_94570_94573
def row_94968_94971 :
    HasPrimeWithExpOne (S_val 94968 94971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94968 94971 ∧ ¬ p ∣ (94971 - 94968) ∧
      ∃ (hNotC : ¬ p ∣ 94971) (hNotB : ¬ p ∣ 94968),
        order_of_C_B_inv_mod_p2 94971 94968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94968 94971 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_94968_94971
def row_95360_95363 :
    HasPrimeWithExpOne (S_val 95360 95363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95360 95363 ∧ ¬ p ∣ (95363 - 95360) ∧
      ∃ (hNotC : ¬ p ∣ 95363) (hNotB : ¬ p ∣ 95360),
        order_of_C_B_inv_mod_p2 95363 95360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95360 95363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_95360_95363
def row_95736_95739 :
    HasPrimeWithExpOne (S_val 95736 95739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95736 95739 ∧ ¬ p ∣ (95739 - 95736) ∧
      ∃ (hNotC : ¬ p ∣ 95739) (hNotB : ¬ p ∣ 95736),
        order_of_C_B_inv_mod_p2 95739 95736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95736 95739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_95736_95739
def row_96128_96131 :
    HasPrimeWithExpOne (S_val 96128 96131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96128 96131 ∧ ¬ p ∣ (96131 - 96128) ∧
      ∃ (hNotC : ¬ p ∣ 96131) (hNotB : ¬ p ∣ 96128),
        order_of_C_B_inv_mod_p2 96131 96128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96128 96131 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_96128_96131
def row_96522_96525 :
    HasPrimeWithExpOne (S_val 96522 96525) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96522 96525 ∧ ¬ p ∣ (96525 - 96522) ∧
      ∃ (hNotC : ¬ p ∣ 96525) (hNotB : ¬ p ∣ 96522),
        order_of_C_B_inv_mod_p2 96525 96522 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96522 96525 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_96522_96525
def row_96930_96933 :
    HasPrimeWithExpOne (S_val 96930 96933) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96930 96933 ∧ ¬ p ∣ (96933 - 96930) ∧
      ∃ (hNotC : ¬ p ∣ 96933) (hNotB : ¬ p ∣ 96930),
        order_of_C_B_inv_mod_p2 96933 96930 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96930 96933 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_96930_96933
def row_97319_97322 :
    HasPrimeWithExpOne (S_val 97319 97322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97319 97322 ∧ ¬ p ∣ (97322 - 97319) ∧
      ∃ (hNotC : ¬ p ∣ 97322) (hNotB : ¬ p ∣ 97319),
        order_of_C_B_inv_mod_p2 97322 97319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97319 97322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_97319_97322
def row_97723_97726 :
    HasPrimeWithExpOne (S_val 97723 97726) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97723 97726 ∧ ¬ p ∣ (97726 - 97723) ∧
      ∃ (hNotC : ¬ p ∣ 97726) (hNotB : ¬ p ∣ 97723),
        order_of_C_B_inv_mod_p2 97726 97723 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97723 97726 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_97723_97726
def row_98109_98112 :
    HasPrimeWithExpOne (S_val 98109 98112) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98109 98112 ∧ ¬ p ∣ (98112 - 98109) ∧
      ∃ (hNotC : ¬ p ∣ 98112) (hNotB : ¬ p ∣ 98109),
        order_of_C_B_inv_mod_p2 98112 98109 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98109 98112 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_98109_98112
def row_98489_98492 :
    HasPrimeWithExpOne (S_val 98489 98492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98489 98492 ∧ ¬ p ∣ (98492 - 98489) ∧
      ∃ (hNotC : ¬ p ∣ 98492) (hNotB : ¬ p ∣ 98489),
        order_of_C_B_inv_mod_p2 98492 98489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98489 98492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_98489_98492
def row_98851_98854 :
    HasPrimeWithExpOne (S_val 98851 98854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98851 98854 ∧ ¬ p ∣ (98854 - 98851) ∧
      ∃ (hNotC : ¬ p ∣ 98854) (hNotB : ¬ p ∣ 98851),
        order_of_C_B_inv_mod_p2 98854 98851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98851 98854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_98851_98854
def row_99235_99238 :
    HasPrimeWithExpOne (S_val 99235 99238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99235 99238 ∧ ¬ p ∣ (99238 - 99235) ∧
      ∃ (hNotC : ¬ p ∣ 99238) (hNotB : ¬ p ∣ 99235),
        order_of_C_B_inv_mod_p2 99238 99235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99235 99238 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_99235_99238
def row_99615_99618 :
    HasPrimeWithExpOne (S_val 99615 99618) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99615 99618 ∧ ¬ p ∣ (99618 - 99615) ∧
      ∃ (hNotC : ¬ p ∣ 99618) (hNotB : ¬ p ∣ 99615),
        order_of_C_B_inv_mod_p2 99618 99615 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99615 99618 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_99615_99618
def row_100000_100003 :
    HasPrimeWithExpOne (S_val 100000 100003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100000 100003 ∧ ¬ p ∣ (100003 - 100000) ∧
      ∃ (hNotC : ¬ p ∣ 100003) (hNotB : ¬ p ∣ 100000),
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100000 100003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_100000_100003
def row_100355_100358 :
    HasPrimeWithExpOne (S_val 100355 100358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100355 100358 ∧ ¬ p ∣ (100358 - 100355) ∧
      ∃ (hNotC : ¬ p ∣ 100358) (hNotB : ¬ p ∣ 100355),
        order_of_C_B_inv_mod_p2 100358 100355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100355 100358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_100355_100358
def row_100709_100712 :
    HasPrimeWithExpOne (S_val 100709 100712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100709 100712 ∧ ¬ p ∣ (100712 - 100709) ∧
      ∃ (hNotC : ¬ p ∣ 100712) (hNotB : ¬ p ∣ 100709),
        order_of_C_B_inv_mod_p2 100712 100709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100709 100712 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_100709_100712
def row_101063_101066 :
    HasPrimeWithExpOne (S_val 101063 101066) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101063 101066 ∧ ¬ p ∣ (101066 - 101063) ∧
      ∃ (hNotC : ¬ p ∣ 101066) (hNotB : ¬ p ∣ 101063),
        order_of_C_B_inv_mod_p2 101066 101063 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101063 101066 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_101063_101066
def row_101419_101422 :
    HasPrimeWithExpOne (S_val 101419 101422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101419 101422 ∧ ¬ p ∣ (101422 - 101419) ∧
      ∃ (hNotC : ¬ p ∣ 101422) (hNotB : ¬ p ∣ 101419),
        order_of_C_B_inv_mod_p2 101422 101419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101419 101422 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_101419_101422
def row_101773_101776 :
    HasPrimeWithExpOne (S_val 101773 101776) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101773 101776 ∧ ¬ p ∣ (101776 - 101773) ∧
      ∃ (hNotC : ¬ p ∣ 101776) (hNotB : ¬ p ∣ 101773),
        order_of_C_B_inv_mod_p2 101776 101773 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101773 101776 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_101773_101776
def row_102126_102129 :
    HasPrimeWithExpOne (S_val 102126 102129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102126 102129 ∧ ¬ p ∣ (102129 - 102126) ∧
      ∃ (hNotC : ¬ p ∣ 102129) (hNotB : ¬ p ∣ 102126),
        order_of_C_B_inv_mod_p2 102129 102126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102126 102129 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_102126_102129
def row_102483_102486 :
    HasPrimeWithExpOne (S_val 102483 102486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102483 102486 ∧ ¬ p ∣ (102486 - 102483) ∧
      ∃ (hNotC : ¬ p ∣ 102486) (hNotB : ¬ p ∣ 102483),
        order_of_C_B_inv_mod_p2 102486 102483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102483 102486 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_102483_102486
def row_102836_102839 :
    HasPrimeWithExpOne (S_val 102836 102839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102836 102839 ∧ ¬ p ∣ (102839 - 102836) ∧
      ∃ (hNotC : ¬ p ∣ 102839) (hNotB : ¬ p ∣ 102836),
        order_of_C_B_inv_mod_p2 102839 102836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102836 102839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_102836_102839
def row_103192_103195 :
    HasPrimeWithExpOne (S_val 103192 103195) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103192 103195 ∧ ¬ p ∣ (103195 - 103192) ∧
      ∃ (hNotC : ¬ p ∣ 103195) (hNotB : ¬ p ∣ 103192),
        order_of_C_B_inv_mod_p2 103195 103192 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103192 103195 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_103192_103195
def row_103545_103548 :
    HasPrimeWithExpOne (S_val 103545 103548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103545 103548 ∧ ¬ p ∣ (103548 - 103545) ∧
      ∃ (hNotC : ¬ p ∣ 103548) (hNotB : ¬ p ∣ 103545),
        order_of_C_B_inv_mod_p2 103548 103545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103545 103548 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_103545_103548
def row_103900_103903 :
    HasPrimeWithExpOne (S_val 103900 103903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103900 103903 ∧ ¬ p ∣ (103903 - 103900) ∧
      ∃ (hNotC : ¬ p ∣ 103903) (hNotB : ¬ p ∣ 103900),
        order_of_C_B_inv_mod_p2 103903 103900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103900 103903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_103900_103903
def row_104255_104258 :
    HasPrimeWithExpOne (S_val 104255 104258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104255 104258 ∧ ¬ p ∣ (104258 - 104255) ∧
      ∃ (hNotC : ¬ p ∣ 104258) (hNotB : ¬ p ∣ 104255),
        order_of_C_B_inv_mod_p2 104258 104255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104255 104258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_104255_104258
def row_104609_104612 :
    HasPrimeWithExpOne (S_val 104609 104612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104609 104612 ∧ ¬ p ∣ (104612 - 104609) ∧
      ∃ (hNotC : ¬ p ∣ 104612) (hNotB : ¬ p ∣ 104609),
        order_of_C_B_inv_mod_p2 104612 104609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104609 104612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_104609_104612
def row_104965_104968 :
    HasPrimeWithExpOne (S_val 104965 104968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104965 104968 ∧ ¬ p ∣ (104968 - 104965) ∧
      ∃ (hNotC : ¬ p ∣ 104968) (hNotB : ¬ p ∣ 104965),
        order_of_C_B_inv_mod_p2 104968 104965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104965 104968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_104965_104968
def row_105319_105322 :
    HasPrimeWithExpOne (S_val 105319 105322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105319 105322 ∧ ¬ p ∣ (105322 - 105319) ∧
      ∃ (hNotC : ¬ p ∣ 105322) (hNotB : ¬ p ∣ 105319),
        order_of_C_B_inv_mod_p2 105322 105319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105319 105322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_105319_105322
def row_105673_105676 :
    HasPrimeWithExpOne (S_val 105673 105676) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105673 105676 ∧ ¬ p ∣ (105676 - 105673) ∧
      ∃ (hNotC : ¬ p ∣ 105676) (hNotB : ¬ p ∣ 105673),
        order_of_C_B_inv_mod_p2 105676 105673 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105673 105676 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_105673_105676
def row_106027_106030 :
    HasPrimeWithExpOne (S_val 106027 106030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106027 106030 ∧ ¬ p ∣ (106030 - 106027) ∧
      ∃ (hNotC : ¬ p ∣ 106030) (hNotB : ¬ p ∣ 106027),
        order_of_C_B_inv_mod_p2 106030 106027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106027 106030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_106027_106030
def row_106381_106384 :
    HasPrimeWithExpOne (S_val 106381 106384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106381 106384 ∧ ¬ p ∣ (106384 - 106381) ∧
      ∃ (hNotC : ¬ p ∣ 106384) (hNotB : ¬ p ∣ 106381),
        order_of_C_B_inv_mod_p2 106384 106381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106381 106384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_106381_106384
def row_106738_106741 :
    HasPrimeWithExpOne (S_val 106738 106741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106738 106741 ∧ ¬ p ∣ (106741 - 106738) ∧
      ∃ (hNotC : ¬ p ∣ 106741) (hNotB : ¬ p ∣ 106738),
        order_of_C_B_inv_mod_p2 106741 106738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106738 106741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_106738_106741
def row_107092_107095 :
    HasPrimeWithExpOne (S_val 107092 107095) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107092 107095 ∧ ¬ p ∣ (107095 - 107092) ∧
      ∃ (hNotC : ¬ p ∣ 107095) (hNotB : ¬ p ∣ 107092),
        order_of_C_B_inv_mod_p2 107095 107092 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107092 107095 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_107092_107095
def row_107444_107447 :
    HasPrimeWithExpOne (S_val 107444 107447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107444 107447 ∧ ¬ p ∣ (107447 - 107444) ∧
      ∃ (hNotC : ¬ p ∣ 107447) (hNotB : ¬ p ∣ 107444),
        order_of_C_B_inv_mod_p2 107447 107444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107444 107447 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_107444_107447
def row_107801_107804 :
    HasPrimeWithExpOne (S_val 107801 107804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107801 107804 ∧ ¬ p ∣ (107804 - 107801) ∧
      ∃ (hNotC : ¬ p ∣ 107804) (hNotB : ¬ p ∣ 107801),
        order_of_C_B_inv_mod_p2 107804 107801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107801 107804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_107801_107804
def row_108155_108158 :
    HasPrimeWithExpOne (S_val 108155 108158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108155 108158 ∧ ¬ p ∣ (108158 - 108155) ∧
      ∃ (hNotC : ¬ p ∣ 108158) (hNotB : ¬ p ∣ 108155),
        order_of_C_B_inv_mod_p2 108158 108155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108155 108158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_108155_108158
def row_108511_108514 :
    HasPrimeWithExpOne (S_val 108511 108514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108511 108514 ∧ ¬ p ∣ (108514 - 108511) ∧
      ∃ (hNotC : ¬ p ∣ 108514) (hNotB : ¬ p ∣ 108511),
        order_of_C_B_inv_mod_p2 108514 108511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108511 108514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_108511_108514
def row_108864_108867 :
    HasPrimeWithExpOne (S_val 108864 108867) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108864 108867 ∧ ¬ p ∣ (108867 - 108864) ∧
      ∃ (hNotC : ¬ p ∣ 108867) (hNotB : ¬ p ∣ 108864),
        order_of_C_B_inv_mod_p2 108867 108864 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108864 108867 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_108864_108867
def row_109219_109222 :
    HasPrimeWithExpOne (S_val 109219 109222) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109219 109222 ∧ ¬ p ∣ (109222 - 109219) ∧
      ∃ (hNotC : ¬ p ∣ 109222) (hNotB : ¬ p ∣ 109219),
        order_of_C_B_inv_mod_p2 109222 109219 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109219 109222 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_109219_109222
def row_109575_109578 :
    HasPrimeWithExpOne (S_val 109575 109578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109575 109578 ∧ ¬ p ∣ (109578 - 109575) ∧
      ∃ (hNotC : ¬ p ∣ 109578) (hNotB : ¬ p ∣ 109575),
        order_of_C_B_inv_mod_p2 109578 109575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109575 109578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_109575_109578
def row_109928_109931 :
    HasPrimeWithExpOne (S_val 109928 109931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109928 109931 ∧ ¬ p ∣ (109931 - 109928) ∧
      ∃ (hNotC : ¬ p ∣ 109931) (hNotB : ¬ p ∣ 109928),
        order_of_C_B_inv_mod_p2 109931 109928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109928 109931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_109928_109931
def row_110284_110287 :
    HasPrimeWithExpOne (S_val 110284 110287) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110284 110287 ∧ ¬ p ∣ (110287 - 110284) ∧
      ∃ (hNotC : ¬ p ∣ 110287) (hNotB : ¬ p ∣ 110284),
        order_of_C_B_inv_mod_p2 110287 110284 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110284 110287 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_110284_110287
def row_110637_110640 :
    HasPrimeWithExpOne (S_val 110637 110640) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110637 110640 ∧ ¬ p ∣ (110640 - 110637) ∧
      ∃ (hNotC : ¬ p ∣ 110640) (hNotB : ¬ p ∣ 110637),
        order_of_C_B_inv_mod_p2 110640 110637 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110637 110640 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_110637_110640
def row_110992_110995 :
    HasPrimeWithExpOne (S_val 110992 110995) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110992 110995 ∧ ¬ p ∣ (110995 - 110992) ∧
      ∃ (hNotC : ¬ p ∣ 110995) (hNotB : ¬ p ∣ 110992),
        order_of_C_B_inv_mod_p2 110995 110992 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110992 110995 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_110992_110995
def row_111347_111350 :
    HasPrimeWithExpOne (S_val 111347 111350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111347 111350 ∧ ¬ p ∣ (111350 - 111347) ∧
      ∃ (hNotC : ¬ p ∣ 111350) (hNotB : ¬ p ∣ 111347),
        order_of_C_B_inv_mod_p2 111350 111347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111347 111350 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_111347_111350
def row_111702_111705 :
    HasPrimeWithExpOne (S_val 111702 111705) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111702 111705 ∧ ¬ p ∣ (111705 - 111702) ∧
      ∃ (hNotC : ¬ p ∣ 111705) (hNotB : ¬ p ∣ 111702),
        order_of_C_B_inv_mod_p2 111705 111702 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111702 111705 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_111702_111705
def row_112056_112059 :
    HasPrimeWithExpOne (S_val 112056 112059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112056 112059 ∧ ¬ p ∣ (112059 - 112056) ∧
      ∃ (hNotC : ¬ p ∣ 112059) (hNotB : ¬ p ∣ 112056),
        order_of_C_B_inv_mod_p2 112059 112056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112056 112059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_112056_112059
def row_112410_112413 :
    HasPrimeWithExpOne (S_val 112410 112413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112410 112413 ∧ ¬ p ∣ (112413 - 112410) ∧
      ∃ (hNotC : ¬ p ∣ 112413) (hNotB : ¬ p ∣ 112410),
        order_of_C_B_inv_mod_p2 112413 112410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112410 112413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_112410_112413
def row_112767_112770 :
    HasPrimeWithExpOne (S_val 112767 112770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112767 112770 ∧ ¬ p ∣ (112770 - 112767) ∧
      ∃ (hNotC : ¬ p ∣ 112770) (hNotB : ¬ p ∣ 112767),
        order_of_C_B_inv_mod_p2 112770 112767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112767 112770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_112767_112770
def row_113120_113123 :
    HasPrimeWithExpOne (S_val 113120 113123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113120 113123 ∧ ¬ p ∣ (113123 - 113120) ∧
      ∃ (hNotC : ¬ p ∣ 113123) (hNotB : ¬ p ∣ 113120),
        order_of_C_B_inv_mod_p2 113123 113120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113120 113123 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_113120_113123
def row_113475_113478 :
    HasPrimeWithExpOne (S_val 113475 113478) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113475 113478 ∧ ¬ p ∣ (113478 - 113475) ∧
      ∃ (hNotC : ¬ p ∣ 113478) (hNotB : ¬ p ∣ 113475),
        order_of_C_B_inv_mod_p2 113478 113475 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113475 113478 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_113475_113478
def row_113828_113831 :
    HasPrimeWithExpOne (S_val 113828 113831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113828 113831 ∧ ¬ p ∣ (113831 - 113828) ∧
      ∃ (hNotC : ¬ p ∣ 113831) (hNotB : ¬ p ∣ 113828),
        order_of_C_B_inv_mod_p2 113831 113828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113828 113831 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_113828_113831
def row_114182_114185 :
    HasPrimeWithExpOne (S_val 114182 114185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114182 114185 ∧ ¬ p ∣ (114185 - 114182) ∧
      ∃ (hNotC : ¬ p ∣ 114185) (hNotB : ¬ p ∣ 114182),
        order_of_C_B_inv_mod_p2 114185 114182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114182 114185 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_114182_114185
def row_114538_114541 :
    HasPrimeWithExpOne (S_val 114538 114541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114538 114541 ∧ ¬ p ∣ (114541 - 114538) ∧
      ∃ (hNotC : ¬ p ∣ 114541) (hNotB : ¬ p ∣ 114538),
        order_of_C_B_inv_mod_p2 114541 114538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114538 114541 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_114538_114541
def row_114892_114895 :
    HasPrimeWithExpOne (S_val 114892 114895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114892 114895 ∧ ¬ p ∣ (114895 - 114892) ∧
      ∃ (hNotC : ¬ p ∣ 114895) (hNotB : ¬ p ∣ 114892),
        order_of_C_B_inv_mod_p2 114895 114892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114892 114895 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_114892_114895
def row_115246_115249 :
    HasPrimeWithExpOne (S_val 115246 115249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115246 115249 ∧ ¬ p ∣ (115249 - 115246) ∧
      ∃ (hNotC : ¬ p ∣ 115249) (hNotB : ¬ p ∣ 115246),
        order_of_C_B_inv_mod_p2 115249 115246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115246 115249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_115246_115249
def row_115602_115605 :
    HasPrimeWithExpOne (S_val 115602 115605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115602 115605 ∧ ¬ p ∣ (115605 - 115602) ∧
      ∃ (hNotC : ¬ p ∣ 115605) (hNotB : ¬ p ∣ 115602),
        order_of_C_B_inv_mod_p2 115605 115602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115602 115605 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_115602_115605
def row_115956_115959 :
    HasPrimeWithExpOne (S_val 115956 115959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115956 115959 ∧ ¬ p ∣ (115959 - 115956) ∧
      ∃ (hNotC : ¬ p ∣ 115959) (hNotB : ¬ p ∣ 115956),
        order_of_C_B_inv_mod_p2 115959 115956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115956 115959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_115956_115959
def row_116311_116314 :
    HasPrimeWithExpOne (S_val 116311 116314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116311 116314 ∧ ¬ p ∣ (116314 - 116311) ∧
      ∃ (hNotC : ¬ p ∣ 116314) (hNotB : ¬ p ∣ 116311),
        order_of_C_B_inv_mod_p2 116314 116311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116311 116314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_116311_116314
def row_116666_116669 :
    HasPrimeWithExpOne (S_val 116666 116669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116666 116669 ∧ ¬ p ∣ (116669 - 116666) ∧
      ∃ (hNotC : ¬ p ∣ 116669) (hNotB : ¬ p ∣ 116666),
        order_of_C_B_inv_mod_p2 116669 116666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116666 116669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_116666_116669
def row_117021_117024 :
    HasPrimeWithExpOne (S_val 117021 117024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117021 117024 ∧ ¬ p ∣ (117024 - 117021) ∧
      ∃ (hNotC : ¬ p ∣ 117024) (hNotB : ¬ p ∣ 117021),
        order_of_C_B_inv_mod_p2 117024 117021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117021 117024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_117021_117024
def row_117374_117377 :
    HasPrimeWithExpOne (S_val 117374 117377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117374 117377 ∧ ¬ p ∣ (117377 - 117374) ∧
      ∃ (hNotC : ¬ p ∣ 117377) (hNotB : ¬ p ∣ 117374),
        order_of_C_B_inv_mod_p2 117377 117374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117374 117377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_117374_117377
def row_117728_117731 :
    HasPrimeWithExpOne (S_val 117728 117731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117728 117731 ∧ ¬ p ∣ (117731 - 117728) ∧
      ∃ (hNotC : ¬ p ∣ 117731) (hNotB : ¬ p ∣ 117728),
        order_of_C_B_inv_mod_p2 117731 117728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117728 117731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_117728_117731
def row_118084_118087 :
    HasPrimeWithExpOne (S_val 118084 118087) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118084 118087 ∧ ¬ p ∣ (118087 - 118084) ∧
      ∃ (hNotC : ¬ p ∣ 118087) (hNotB : ¬ p ∣ 118084),
        order_of_C_B_inv_mod_p2 118087 118084 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118084 118087 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_118084_118087
def row_118439_118442 :
    HasPrimeWithExpOne (S_val 118439 118442) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118439 118442 ∧ ¬ p ∣ (118442 - 118439) ∧
      ∃ (hNotC : ¬ p ∣ 118442) (hNotB : ¬ p ∣ 118439),
        order_of_C_B_inv_mod_p2 118442 118439 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118439 118442 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_118439_118442
def row_118795_118798 :
    HasPrimeWithExpOne (S_val 118795 118798) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118795 118798 ∧ ¬ p ∣ (118798 - 118795) ∧
      ∃ (hNotC : ¬ p ∣ 118798) (hNotB : ¬ p ∣ 118795),
        order_of_C_B_inv_mod_p2 118798 118795 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118795 118798 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_118795_118798
def row_119148_119151 :
    HasPrimeWithExpOne (S_val 119148 119151) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119148 119151 ∧ ¬ p ∣ (119151 - 119148) ∧
      ∃ (hNotC : ¬ p ∣ 119151) (hNotB : ¬ p ∣ 119148),
        order_of_C_B_inv_mod_p2 119151 119148 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119148 119151 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_119148_119151
def row_119502_119505 :
    HasPrimeWithExpOne (S_val 119502 119505) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119502 119505 ∧ ¬ p ∣ (119505 - 119502) ∧
      ∃ (hNotC : ¬ p ∣ 119505) (hNotB : ¬ p ∣ 119502),
        order_of_C_B_inv_mod_p2 119505 119502 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119502 119505 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_119502_119505
def row_119857_119860 :
    HasPrimeWithExpOne (S_val 119857 119860) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119857 119860 ∧ ¬ p ∣ (119860 - 119857) ∧
      ∃ (hNotC : ¬ p ∣ 119860) (hNotB : ¬ p ∣ 119857),
        order_of_C_B_inv_mod_p2 119860 119857 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119857 119860 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_119857_119860
def row_120212_120215 :
    HasPrimeWithExpOne (S_val 120212 120215) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120212 120215 ∧ ¬ p ∣ (120215 - 120212) ∧
      ∃ (hNotC : ¬ p ∣ 120215) (hNotB : ¬ p ∣ 120212),
        order_of_C_B_inv_mod_p2 120215 120212 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120212 120215 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_120212_120215
def row_120566_120569 :
    HasPrimeWithExpOne (S_val 120566 120569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120566 120569 ∧ ¬ p ∣ (120569 - 120566) ∧
      ∃ (hNotC : ¬ p ∣ 120569) (hNotB : ¬ p ∣ 120566),
        order_of_C_B_inv_mod_p2 120569 120566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120566 120569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_120566_120569
def row_120922_120925 :
    HasPrimeWithExpOne (S_val 120922 120925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120922 120925 ∧ ¬ p ∣ (120925 - 120922) ∧
      ∃ (hNotC : ¬ p ∣ 120925) (hNotB : ¬ p ∣ 120922),
        order_of_C_B_inv_mod_p2 120925 120922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120922 120925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_120922_120925
def row_121274_121277 :
    HasPrimeWithExpOne (S_val 121274 121277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121274 121277 ∧ ¬ p ∣ (121277 - 121274) ∧
      ∃ (hNotC : ¬ p ∣ 121277) (hNotB : ¬ p ∣ 121274),
        order_of_C_B_inv_mod_p2 121277 121274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121274 121277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_121274_121277
def row_121628_121631 :
    HasPrimeWithExpOne (S_val 121628 121631) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121628 121631 ∧ ¬ p ∣ (121631 - 121628) ∧
      ∃ (hNotC : ¬ p ∣ 121631) (hNotB : ¬ p ∣ 121628),
        order_of_C_B_inv_mod_p2 121631 121628 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121628 121631 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_121628_121631
def row_121985_121988 :
    HasPrimeWithExpOne (S_val 121985 121988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121985 121988 ∧ ¬ p ∣ (121988 - 121985) ∧
      ∃ (hNotC : ¬ p ∣ 121988) (hNotB : ¬ p ∣ 121985),
        order_of_C_B_inv_mod_p2 121988 121985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121985 121988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_121985_121988
def row_122337_122340 :
    HasPrimeWithExpOne (S_val 122337 122340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122337 122340 ∧ ¬ p ∣ (122340 - 122337) ∧
      ∃ (hNotC : ¬ p ∣ 122340) (hNotB : ¬ p ∣ 122337),
        order_of_C_B_inv_mod_p2 122340 122337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122337 122340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_122337_122340
def row_122690_122693 :
    HasPrimeWithExpOne (S_val 122690 122693) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122690 122693 ∧ ¬ p ∣ (122693 - 122690) ∧
      ∃ (hNotC : ¬ p ∣ 122693) (hNotB : ¬ p ∣ 122690),
        order_of_C_B_inv_mod_p2 122693 122690 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122690 122693 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_122690_122693
def row_123047_123050 :
    HasPrimeWithExpOne (S_val 123047 123050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123047 123050 ∧ ¬ p ∣ (123050 - 123047) ∧
      ∃ (hNotC : ¬ p ∣ 123050) (hNotB : ¬ p ∣ 123047),
        order_of_C_B_inv_mod_p2 123050 123047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123047 123050 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_123047_123050
def row_123402_123405 :
    HasPrimeWithExpOne (S_val 123402 123405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123402 123405 ∧ ¬ p ∣ (123405 - 123402) ∧
      ∃ (hNotC : ¬ p ∣ 123405) (hNotB : ¬ p ∣ 123402),
        order_of_C_B_inv_mod_p2 123405 123402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123402 123405 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_123402_123405
def row_123756_123759 :
    HasPrimeWithExpOne (S_val 123756 123759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123756 123759 ∧ ¬ p ∣ (123759 - 123756) ∧
      ∃ (hNotC : ¬ p ∣ 123759) (hNotB : ¬ p ∣ 123756),
        order_of_C_B_inv_mod_p2 123759 123756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123756 123759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_123756_123759
def row_124112_124115 :
    HasPrimeWithExpOne (S_val 124112 124115) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124112 124115 ∧ ¬ p ∣ (124115 - 124112) ∧
      ∃ (hNotC : ¬ p ∣ 124115) (hNotB : ¬ p ∣ 124112),
        order_of_C_B_inv_mod_p2 124115 124112 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124112 124115 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_124112_124115
def row_124467_124470 :
    HasPrimeWithExpOne (S_val 124467 124470) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124467 124470 ∧ ¬ p ∣ (124470 - 124467) ∧
      ∃ (hNotC : ¬ p ∣ 124470) (hNotB : ¬ p ∣ 124467),
        order_of_C_B_inv_mod_p2 124470 124467 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124467 124470 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_124467_124470
def row_124821_124824 :
    HasPrimeWithExpOne (S_val 124821 124824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124821 124824 ∧ ¬ p ∣ (124824 - 124821) ∧
      ∃ (hNotC : ¬ p ∣ 124824) (hNotB : ¬ p ∣ 124821),
        order_of_C_B_inv_mod_p2 124824 124821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124821 124824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_124821_124824
def row_125177_125180 :
    HasPrimeWithExpOne (S_val 125177 125180) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125177 125180 ∧ ¬ p ∣ (125180 - 125177) ∧
      ∃ (hNotC : ¬ p ∣ 125180) (hNotB : ¬ p ∣ 125177),
        order_of_C_B_inv_mod_p2 125180 125177 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125177 125180 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_125177_125180
def row_125527_125530 :
    HasPrimeWithExpOne (S_val 125527 125530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125527 125530 ∧ ¬ p ∣ (125530 - 125527) ∧
      ∃ (hNotC : ¬ p ∣ 125530) (hNotB : ¬ p ∣ 125527),
        order_of_C_B_inv_mod_p2 125530 125527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125527 125530 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_125527_125530
def row_125885_125888 :
    HasPrimeWithExpOne (S_val 125885 125888) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125885 125888 ∧ ¬ p ∣ (125888 - 125885) ∧
      ∃ (hNotC : ¬ p ∣ 125888) (hNotB : ¬ p ∣ 125885),
        order_of_C_B_inv_mod_p2 125888 125885 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125885 125888 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_125885_125888
def row_126239_126242 :
    HasPrimeWithExpOne (S_val 126239 126242) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126239 126242 ∧ ¬ p ∣ (126242 - 126239) ∧
      ∃ (hNotC : ¬ p ∣ 126242) (hNotB : ¬ p ∣ 126239),
        order_of_C_B_inv_mod_p2 126242 126239 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126239 126242 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_126239_126242
def row_126596_126599 :
    HasPrimeWithExpOne (S_val 126596 126599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126596 126599 ∧ ¬ p ∣ (126599 - 126596) ∧
      ∃ (hNotC : ¬ p ∣ 126599) (hNotB : ¬ p ∣ 126596),
        order_of_C_B_inv_mod_p2 126599 126596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126596 126599 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_126596_126599
def row_126948_126951 :
    HasPrimeWithExpOne (S_val 126948 126951) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126948 126951 ∧ ¬ p ∣ (126951 - 126948) ∧
      ∃ (hNotC : ¬ p ∣ 126951) (hNotB : ¬ p ∣ 126948),
        order_of_C_B_inv_mod_p2 126951 126948 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126948 126951 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_126948_126951
def row_127303_127306 :
    HasPrimeWithExpOne (S_val 127303 127306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127303 127306 ∧ ¬ p ∣ (127306 - 127303) ∧
      ∃ (hNotC : ¬ p ∣ 127306) (hNotB : ¬ p ∣ 127303),
        order_of_C_B_inv_mod_p2 127306 127303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127303 127306 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_127303_127306
def row_127658_127661 :
    HasPrimeWithExpOne (S_val 127658 127661) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127658 127661 ∧ ¬ p ∣ (127661 - 127658) ∧
      ∃ (hNotC : ¬ p ∣ 127661) (hNotB : ¬ p ∣ 127658),
        order_of_C_B_inv_mod_p2 127661 127658 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127658 127661 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_127658_127661
def row_128013_128016 :
    HasPrimeWithExpOne (S_val 128013 128016) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128013 128016 ∧ ¬ p ∣ (128016 - 128013) ∧
      ∃ (hNotC : ¬ p ∣ 128016) (hNotB : ¬ p ∣ 128013),
        order_of_C_B_inv_mod_p2 128016 128013 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128013 128016 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_128013_128016
def row_128368_128371 :
    HasPrimeWithExpOne (S_val 128368 128371) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128368 128371 ∧ ¬ p ∣ (128371 - 128368) ∧
      ∃ (hNotC : ¬ p ∣ 128371) (hNotB : ¬ p ∣ 128368),
        order_of_C_B_inv_mod_p2 128371 128368 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128368 128371 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_128368_128371
def row_128721_128724 :
    HasPrimeWithExpOne (S_val 128721 128724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128721 128724 ∧ ¬ p ∣ (128724 - 128721) ∧
      ∃ (hNotC : ¬ p ∣ 128724) (hNotB : ¬ p ∣ 128721),
        order_of_C_B_inv_mod_p2 128724 128721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128721 128724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_128721_128724
def row_129075_129078 :
    HasPrimeWithExpOne (S_val 129075 129078) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129075 129078 ∧ ¬ p ∣ (129078 - 129075) ∧
      ∃ (hNotC : ¬ p ∣ 129078) (hNotB : ¬ p ∣ 129075),
        order_of_C_B_inv_mod_p2 129078 129075 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129075 129078 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_129075_129078
def row_129431_129434 :
    HasPrimeWithExpOne (S_val 129431 129434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129431 129434 ∧ ¬ p ∣ (129434 - 129431) ∧
      ∃ (hNotC : ¬ p ∣ 129434) (hNotB : ¬ p ∣ 129431),
        order_of_C_B_inv_mod_p2 129434 129431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129431 129434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_129431_129434
def row_129786_129789 :
    HasPrimeWithExpOne (S_val 129786 129789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129786 129789 ∧ ¬ p ∣ (129789 - 129786) ∧
      ∃ (hNotC : ¬ p ∣ 129789) (hNotB : ¬ p ∣ 129786),
        order_of_C_B_inv_mod_p2 129789 129786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129786 129789 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_129786_129789
def row_130141_130144 :
    HasPrimeWithExpOne (S_val 130141 130144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130141 130144 ∧ ¬ p ∣ (130144 - 130141) ∧
      ∃ (hNotC : ¬ p ∣ 130144) (hNotB : ¬ p ∣ 130141),
        order_of_C_B_inv_mod_p2 130144 130141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130141 130144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_130141_130144
def row_130496_130499 :
    HasPrimeWithExpOne (S_val 130496 130499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130496 130499 ∧ ¬ p ∣ (130499 - 130496) ∧
      ∃ (hNotC : ¬ p ∣ 130499) (hNotB : ¬ p ∣ 130496),
        order_of_C_B_inv_mod_p2 130499 130496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130496 130499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_130496_130499
def row_130849_130852 :
    HasPrimeWithExpOne (S_val 130849 130852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130849 130852 ∧ ¬ p ∣ (130852 - 130849) ∧
      ∃ (hNotC : ¬ p ∣ 130852) (hNotB : ¬ p ∣ 130849),
        order_of_C_B_inv_mod_p2 130852 130849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130849 130852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_130849_130852
def row_131204_131207 :
    HasPrimeWithExpOne (S_val 131204 131207) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131204 131207 ∧ ¬ p ∣ (131207 - 131204) ∧
      ∃ (hNotC : ¬ p ∣ 131207) (hNotB : ¬ p ∣ 131204),
        order_of_C_B_inv_mod_p2 131207 131204 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131204 131207 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_131204_131207
def row_131559_131562 :
    HasPrimeWithExpOne (S_val 131559 131562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131559 131562 ∧ ¬ p ∣ (131562 - 131559) ∧
      ∃ (hNotC : ¬ p ∣ 131562) (hNotB : ¬ p ∣ 131559),
        order_of_C_B_inv_mod_p2 131562 131559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131559 131562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_131559_131562
def row_131913_131916 :
    HasPrimeWithExpOne (S_val 131913 131916) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131913 131916 ∧ ¬ p ∣ (131916 - 131913) ∧
      ∃ (hNotC : ¬ p ∣ 131916) (hNotB : ¬ p ∣ 131913),
        order_of_C_B_inv_mod_p2 131916 131913 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131913 131916 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_131913_131916
def row_132269_132272 :
    HasPrimeWithExpOne (S_val 132269 132272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132269 132272 ∧ ¬ p ∣ (132272 - 132269) ∧
      ∃ (hNotC : ¬ p ∣ 132272) (hNotB : ¬ p ∣ 132269),
        order_of_C_B_inv_mod_p2 132272 132269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132269 132272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_132269_132272
def row_132624_132627 :
    HasPrimeWithExpOne (S_val 132624 132627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132624 132627 ∧ ¬ p ∣ (132627 - 132624) ∧
      ∃ (hNotC : ¬ p ∣ 132627) (hNotB : ¬ p ∣ 132624),
        order_of_C_B_inv_mod_p2 132627 132624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132624 132627 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_132624_132627
def row_132979_132982 :
    HasPrimeWithExpOne (S_val 132979 132982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132979 132982 ∧ ¬ p ∣ (132982 - 132979) ∧
      ∃ (hNotC : ¬ p ∣ 132982) (hNotB : ¬ p ∣ 132979),
        order_of_C_B_inv_mod_p2 132982 132979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132979 132982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_132979_132982
def row_133332_133335 :
    HasPrimeWithExpOne (S_val 133332 133335) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133332 133335 ∧ ¬ p ∣ (133335 - 133332) ∧
      ∃ (hNotC : ¬ p ∣ 133335) (hNotB : ¬ p ∣ 133332),
        order_of_C_B_inv_mod_p2 133335 133332 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133332 133335 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_133332_133335
def row_133686_133689 :
    HasPrimeWithExpOne (S_val 133686 133689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133686 133689 ∧ ¬ p ∣ (133689 - 133686) ∧
      ∃ (hNotC : ¬ p ∣ 133689) (hNotB : ¬ p ∣ 133686),
        order_of_C_B_inv_mod_p2 133689 133686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133686 133689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_133686_133689
def row_134041_134044 :
    HasPrimeWithExpOne (S_val 134041 134044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134041 134044 ∧ ¬ p ∣ (134044 - 134041) ∧
      ∃ (hNotC : ¬ p ∣ 134044) (hNotB : ¬ p ∣ 134041),
        order_of_C_B_inv_mod_p2 134044 134041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134041 134044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_134041_134044
def row_134395_134398 :
    HasPrimeWithExpOne (S_val 134395 134398) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134395 134398 ∧ ¬ p ∣ (134398 - 134395) ∧
      ∃ (hNotC : ¬ p ∣ 134398) (hNotB : ¬ p ∣ 134395),
        order_of_C_B_inv_mod_p2 134398 134395 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134395 134398 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_134395_134398
def row_134748_134751 :
    HasPrimeWithExpOne (S_val 134748 134751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134748 134751 ∧ ¬ p ∣ (134751 - 134748) ∧
      ∃ (hNotC : ¬ p ∣ 134751) (hNotB : ¬ p ∣ 134748),
        order_of_C_B_inv_mod_p2 134751 134748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134748 134751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_134748_134751
def row_135104_135107 :
    HasPrimeWithExpOne (S_val 135104 135107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135104 135107 ∧ ¬ p ∣ (135107 - 135104) ∧
      ∃ (hNotC : ¬ p ∣ 135107) (hNotB : ¬ p ∣ 135104),
        order_of_C_B_inv_mod_p2 135107 135104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135104 135107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_135104_135107
def row_135459_135462 :
    HasPrimeWithExpOne (S_val 135459 135462) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135459 135462 ∧ ¬ p ∣ (135462 - 135459) ∧
      ∃ (hNotC : ¬ p ∣ 135462) (hNotB : ¬ p ∣ 135459),
        order_of_C_B_inv_mod_p2 135462 135459 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135459 135462 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_135459_135462
def row_135814_135817 :
    HasPrimeWithExpOne (S_val 135814 135817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135814 135817 ∧ ¬ p ∣ (135817 - 135814) ∧
      ∃ (hNotC : ¬ p ∣ 135817) (hNotB : ¬ p ∣ 135814),
        order_of_C_B_inv_mod_p2 135817 135814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135814 135817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_135814_135817
def row_136169_136172 :
    HasPrimeWithExpOne (S_val 136169 136172) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136169 136172 ∧ ¬ p ∣ (136172 - 136169) ∧
      ∃ (hNotC : ¬ p ∣ 136172) (hNotB : ¬ p ∣ 136169),
        order_of_C_B_inv_mod_p2 136172 136169 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136169 136172 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_136169_136172
def row_136524_136527 :
    HasPrimeWithExpOne (S_val 136524 136527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136524 136527 ∧ ¬ p ∣ (136527 - 136524) ∧
      ∃ (hNotC : ¬ p ∣ 136527) (hNotB : ¬ p ∣ 136524),
        order_of_C_B_inv_mod_p2 136527 136524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136524 136527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_136524_136527
def row_136878_136881 :
    HasPrimeWithExpOne (S_val 136878 136881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136878 136881 ∧ ¬ p ∣ (136881 - 136878) ∧
      ∃ (hNotC : ¬ p ∣ 136881) (hNotB : ¬ p ∣ 136878),
        order_of_C_B_inv_mod_p2 136881 136878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136878 136881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_136878_136881
def row_137232_137235 :
    HasPrimeWithExpOne (S_val 137232 137235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137232 137235 ∧ ¬ p ∣ (137235 - 137232) ∧
      ∃ (hNotC : ¬ p ∣ 137235) (hNotB : ¬ p ∣ 137232),
        order_of_C_B_inv_mod_p2 137235 137232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137232 137235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_137232_137235
def row_137588_137591 :
    HasPrimeWithExpOne (S_val 137588 137591) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137588 137591 ∧ ¬ p ∣ (137591 - 137588) ∧
      ∃ (hNotC : ¬ p ∣ 137591) (hNotB : ¬ p ∣ 137588),
        order_of_C_B_inv_mod_p2 137591 137588 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137588 137591 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_137588_137591
def row_137942_137945 :
    HasPrimeWithExpOne (S_val 137942 137945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137942 137945 ∧ ¬ p ∣ (137945 - 137942) ∧
      ∃ (hNotC : ¬ p ∣ 137945) (hNotB : ¬ p ∣ 137942),
        order_of_C_B_inv_mod_p2 137945 137942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137942 137945 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_137942_137945
def row_138295_138298 :
    HasPrimeWithExpOne (S_val 138295 138298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138295 138298 ∧ ¬ p ∣ (138298 - 138295) ∧
      ∃ (hNotC : ¬ p ∣ 138298) (hNotB : ¬ p ∣ 138295),
        order_of_C_B_inv_mod_p2 138298 138295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138295 138298 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_138295_138298
def row_138651_138654 :
    HasPrimeWithExpOne (S_val 138651 138654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138651 138654 ∧ ¬ p ∣ (138654 - 138651) ∧
      ∃ (hNotC : ¬ p ∣ 138654) (hNotB : ¬ p ∣ 138651),
        order_of_C_B_inv_mod_p2 138654 138651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138651 138654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_138651_138654
def row_139005_139008 :
    HasPrimeWithExpOne (S_val 139005 139008) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139005 139008 ∧ ¬ p ∣ (139008 - 139005) ∧
      ∃ (hNotC : ¬ p ∣ 139008) (hNotB : ¬ p ∣ 139005),
        order_of_C_B_inv_mod_p2 139008 139005 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139005 139008 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_139005_139008
def row_139362_139365 :
    HasPrimeWithExpOne (S_val 139362 139365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139362 139365 ∧ ¬ p ∣ (139365 - 139362) ∧
      ∃ (hNotC : ¬ p ∣ 139365) (hNotB : ¬ p ∣ 139362),
        order_of_C_B_inv_mod_p2 139365 139362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139362 139365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_139362_139365
def row_139714_139717 :
    HasPrimeWithExpOne (S_val 139714 139717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139714 139717 ∧ ¬ p ∣ (139717 - 139714) ∧
      ∃ (hNotC : ¬ p ∣ 139717) (hNotB : ¬ p ∣ 139714),
        order_of_C_B_inv_mod_p2 139717 139714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139714 139717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_139714_139717
def row_140070_140073 :
    HasPrimeWithExpOne (S_val 140070 140073) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140070 140073 ∧ ¬ p ∣ (140073 - 140070) ∧
      ∃ (hNotC : ¬ p ∣ 140073) (hNotB : ¬ p ∣ 140070),
        order_of_C_B_inv_mod_p2 140073 140070 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140070 140073 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_140070_140073
def row_140423_140426 :
    HasPrimeWithExpOne (S_val 140423 140426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140423 140426 ∧ ¬ p ∣ (140426 - 140423) ∧
      ∃ (hNotC : ¬ p ∣ 140426) (hNotB : ¬ p ∣ 140423),
        order_of_C_B_inv_mod_p2 140426 140423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140423 140426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_140423_140426
def row_140778_140781 :
    HasPrimeWithExpOne (S_val 140778 140781) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140778 140781 ∧ ¬ p ∣ (140781 - 140778) ∧
      ∃ (hNotC : ¬ p ∣ 140781) (hNotB : ¬ p ∣ 140778),
        order_of_C_B_inv_mod_p2 140781 140778 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140778 140781 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_140778_140781
def row_141132_141135 :
    HasPrimeWithExpOne (S_val 141132 141135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141132 141135 ∧ ¬ p ∣ (141135 - 141132) ∧
      ∃ (hNotC : ¬ p ∣ 141135) (hNotB : ¬ p ∣ 141132),
        order_of_C_B_inv_mod_p2 141135 141132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141132 141135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_141132_141135
def row_141488_141491 :
    HasPrimeWithExpOne (S_val 141488 141491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141488 141491 ∧ ¬ p ∣ (141491 - 141488) ∧
      ∃ (hNotC : ¬ p ∣ 141491) (hNotB : ¬ p ∣ 141488),
        order_of_C_B_inv_mod_p2 141491 141488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141488 141491 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_141488_141491
def row_141841_141844 :
    HasPrimeWithExpOne (S_val 141841 141844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141841 141844 ∧ ¬ p ∣ (141844 - 141841) ∧
      ∃ (hNotC : ¬ p ∣ 141844) (hNotB : ¬ p ∣ 141841),
        order_of_C_B_inv_mod_p2 141844 141841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141841 141844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_141841_141844
def row_142195_142198 :
    HasPrimeWithExpOne (S_val 142195 142198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142195 142198 ∧ ¬ p ∣ (142198 - 142195) ∧
      ∃ (hNotC : ¬ p ∣ 142198) (hNotB : ¬ p ∣ 142195),
        order_of_C_B_inv_mod_p2 142198 142195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142195 142198 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_142195_142198
def row_142550_142553 :
    HasPrimeWithExpOne (S_val 142550 142553) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142550 142553 ∧ ¬ p ∣ (142553 - 142550) ∧
      ∃ (hNotC : ¬ p ∣ 142553) (hNotB : ¬ p ∣ 142550),
        order_of_C_B_inv_mod_p2 142553 142550 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142550 142553 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_142550_142553
def row_142906_142909 :
    HasPrimeWithExpOne (S_val 142906 142909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142906 142909 ∧ ¬ p ∣ (142909 - 142906) ∧
      ∃ (hNotC : ¬ p ∣ 142909) (hNotB : ¬ p ∣ 142906),
        order_of_C_B_inv_mod_p2 142909 142906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142906 142909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_142906_142909
def row_143261_143264 :
    HasPrimeWithExpOne (S_val 143261 143264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143261 143264 ∧ ¬ p ∣ (143264 - 143261) ∧
      ∃ (hNotC : ¬ p ∣ 143264) (hNotB : ¬ p ∣ 143261),
        order_of_C_B_inv_mod_p2 143264 143261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143261 143264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_143261_143264
def row_143614_143617 :
    HasPrimeWithExpOne (S_val 143614 143617) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143614 143617 ∧ ¬ p ∣ (143617 - 143614) ∧
      ∃ (hNotC : ¬ p ∣ 143617) (hNotB : ¬ p ∣ 143614),
        order_of_C_B_inv_mod_p2 143617 143614 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143614 143617 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_143614_143617
def row_143967_143970 :
    HasPrimeWithExpOne (S_val 143967 143970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143967 143970 ∧ ¬ p ∣ (143970 - 143967) ∧
      ∃ (hNotC : ¬ p ∣ 143970) (hNotB : ¬ p ∣ 143967),
        order_of_C_B_inv_mod_p2 143970 143967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143967 143970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_143967_143970
def row_144324_144327 :
    HasPrimeWithExpOne (S_val 144324 144327) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144324 144327 ∧ ¬ p ∣ (144327 - 144324) ∧
      ∃ (hNotC : ¬ p ∣ 144327) (hNotB : ¬ p ∣ 144324),
        order_of_C_B_inv_mod_p2 144327 144324 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144324 144327 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_144324_144327
def row_144679_144682 :
    HasPrimeWithExpOne (S_val 144679 144682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144679 144682 ∧ ¬ p ∣ (144682 - 144679) ∧
      ∃ (hNotC : ¬ p ∣ 144682) (hNotB : ¬ p ∣ 144679),
        order_of_C_B_inv_mod_p2 144682 144679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144679 144682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_144679_144682
def row_145032_145035 :
    HasPrimeWithExpOne (S_val 145032 145035) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145032 145035 ∧ ¬ p ∣ (145035 - 145032) ∧
      ∃ (hNotC : ¬ p ∣ 145035) (hNotB : ¬ p ∣ 145032),
        order_of_C_B_inv_mod_p2 145035 145032 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145032 145035 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_145032_145035
def row_145389_145392 :
    HasPrimeWithExpOne (S_val 145389 145392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145389 145392 ∧ ¬ p ∣ (145392 - 145389) ∧
      ∃ (hNotC : ¬ p ∣ 145392) (hNotB : ¬ p ∣ 145389),
        order_of_C_B_inv_mod_p2 145392 145389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145389 145392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_145389_145392
def row_145742_145745 :
    HasPrimeWithExpOne (S_val 145742 145745) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145742 145745 ∧ ¬ p ∣ (145745 - 145742) ∧
      ∃ (hNotC : ¬ p ∣ 145745) (hNotB : ¬ p ∣ 145742),
        order_of_C_B_inv_mod_p2 145745 145742 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145742 145745 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_145742_145745
def row_146100_146103 :
    HasPrimeWithExpOne (S_val 146100 146103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146100 146103 ∧ ¬ p ∣ (146103 - 146100) ∧
      ∃ (hNotC : ¬ p ∣ 146103) (hNotB : ¬ p ∣ 146100),
        order_of_C_B_inv_mod_p2 146103 146100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146100 146103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_146100_146103
def row_146452_146455 :
    HasPrimeWithExpOne (S_val 146452 146455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146452 146455 ∧ ¬ p ∣ (146455 - 146452) ∧
      ∃ (hNotC : ¬ p ∣ 146455) (hNotB : ¬ p ∣ 146452),
        order_of_C_B_inv_mod_p2 146455 146452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146452 146455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_146452_146455
def row_146805_146808 :
    HasPrimeWithExpOne (S_val 146805 146808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146805 146808 ∧ ¬ p ∣ (146808 - 146805) ∧
      ∃ (hNotC : ¬ p ∣ 146808) (hNotB : ¬ p ∣ 146805),
        order_of_C_B_inv_mod_p2 146808 146805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146805 146808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_146805_146808
def row_147161_147164 :
    HasPrimeWithExpOne (S_val 147161 147164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147161 147164 ∧ ¬ p ∣ (147164 - 147161) ∧
      ∃ (hNotC : ¬ p ∣ 147164) (hNotB : ¬ p ∣ 147161),
        order_of_C_B_inv_mod_p2 147164 147161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147161 147164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_147161_147164
def row_147515_147518 :
    HasPrimeWithExpOne (S_val 147515 147518) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147515 147518 ∧ ¬ p ∣ (147518 - 147515) ∧
      ∃ (hNotC : ¬ p ∣ 147518) (hNotB : ¬ p ∣ 147515),
        order_of_C_B_inv_mod_p2 147518 147515 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147515 147518 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_147515_147518
def row_147870_147873 :
    HasPrimeWithExpOne (S_val 147870 147873) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147870 147873 ∧ ¬ p ∣ (147873 - 147870) ∧
      ∃ (hNotC : ¬ p ∣ 147873) (hNotB : ¬ p ∣ 147870),
        order_of_C_B_inv_mod_p2 147873 147870 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147870 147873 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_147870_147873
def row_148225_148228 :
    HasPrimeWithExpOne (S_val 148225 148228) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148225 148228 ∧ ¬ p ∣ (148228 - 148225) ∧
      ∃ (hNotC : ¬ p ∣ 148228) (hNotB : ¬ p ∣ 148225),
        order_of_C_B_inv_mod_p2 148228 148225 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148225 148228 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_148225_148228
def row_148578_148581 :
    HasPrimeWithExpOne (S_val 148578 148581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148578 148581 ∧ ¬ p ∣ (148581 - 148578) ∧
      ∃ (hNotC : ¬ p ∣ 148581) (hNotB : ¬ p ∣ 148578),
        order_of_C_B_inv_mod_p2 148581 148578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148578 148581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_148578_148581
def row_148934_148937 :
    HasPrimeWithExpOne (S_val 148934 148937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148934 148937 ∧ ¬ p ∣ (148937 - 148934) ∧
      ∃ (hNotC : ¬ p ∣ 148937) (hNotB : ¬ p ∣ 148934),
        order_of_C_B_inv_mod_p2 148937 148934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148934 148937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_148934_148937
def row_149288_149291 :
    HasPrimeWithExpOne (S_val 149288 149291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149288 149291 ∧ ¬ p ∣ (149291 - 149288) ∧
      ∃ (hNotC : ¬ p ∣ 149291) (hNotB : ¬ p ∣ 149288),
        order_of_C_B_inv_mod_p2 149291 149288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149288 149291 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_149288_149291
def row_149644_149647 :
    HasPrimeWithExpOne (S_val 149644 149647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149644 149647 ∧ ¬ p ∣ (149647 - 149644) ∧
      ∃ (hNotC : ¬ p ∣ 149647) (hNotB : ¬ p ∣ 149644),
        order_of_C_B_inv_mod_p2 149647 149644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149644 149647 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_149644_149647
def row_149998_150001 :
    HasPrimeWithExpOne (S_val 149998 150001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149998 150001 ∧ ¬ p ∣ (150001 - 149998) ∧
      ∃ (hNotC : ¬ p ∣ 150001) (hNotB : ¬ p ∣ 149998),
        order_of_C_B_inv_mod_p2 150001 149998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149998 150001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_149998_150001
def row_150352_150355 :
    HasPrimeWithExpOne (S_val 150352 150355) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150352 150355 ∧ ¬ p ∣ (150355 - 150352) ∧
      ∃ (hNotC : ¬ p ∣ 150355) (hNotB : ¬ p ∣ 150352),
        order_of_C_B_inv_mod_p2 150355 150352 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150352 150355 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_150352_150355
def row_150706_150709 :
    HasPrimeWithExpOne (S_val 150706 150709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150706 150709 ∧ ¬ p ∣ (150709 - 150706) ∧
      ∃ (hNotC : ¬ p ∣ 150709) (hNotB : ¬ p ∣ 150706),
        order_of_C_B_inv_mod_p2 150709 150706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150706 150709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_150706_150709
def row_151061_151064 :
    HasPrimeWithExpOne (S_val 151061 151064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151061 151064 ∧ ¬ p ∣ (151064 - 151061) ∧
      ∃ (hNotC : ¬ p ∣ 151064) (hNotB : ¬ p ∣ 151061),
        order_of_C_B_inv_mod_p2 151064 151061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151061 151064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_151061_151064
def row_151417_151420 :
    HasPrimeWithExpOne (S_val 151417 151420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151417 151420 ∧ ¬ p ∣ (151420 - 151417) ∧
      ∃ (hNotC : ¬ p ∣ 151420) (hNotB : ¬ p ∣ 151417),
        order_of_C_B_inv_mod_p2 151420 151417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151417 151420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_151417_151420
def row_151771_151774 :
    HasPrimeWithExpOne (S_val 151771 151774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151771 151774 ∧ ¬ p ∣ (151774 - 151771) ∧
      ∃ (hNotC : ¬ p ∣ 151774) (hNotB : ¬ p ∣ 151771),
        order_of_C_B_inv_mod_p2 151774 151771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151771 151774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_151771_151774
def row_152124_152127 :
    HasPrimeWithExpOne (S_val 152124 152127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152124 152127 ∧ ¬ p ∣ (152127 - 152124) ∧
      ∃ (hNotC : ¬ p ∣ 152127) (hNotB : ¬ p ∣ 152124),
        order_of_C_B_inv_mod_p2 152127 152124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152124 152127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_152124_152127
def row_152480_152483 :
    HasPrimeWithExpOne (S_val 152480 152483) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152480 152483 ∧ ¬ p ∣ (152483 - 152480) ∧
      ∃ (hNotC : ¬ p ∣ 152483) (hNotB : ¬ p ∣ 152480),
        order_of_C_B_inv_mod_p2 152483 152480 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152480 152483 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_152480_152483
def row_152836_152839 :
    HasPrimeWithExpOne (S_val 152836 152839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152836 152839 ∧ ¬ p ∣ (152839 - 152836) ∧
      ∃ (hNotC : ¬ p ∣ 152839) (hNotB : ¬ p ∣ 152836),
        order_of_C_B_inv_mod_p2 152839 152836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152836 152839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_152836_152839
def row_153188_153191 :
    HasPrimeWithExpOne (S_val 153188 153191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153188 153191 ∧ ¬ p ∣ (153191 - 153188) ∧
      ∃ (hNotC : ¬ p ∣ 153191) (hNotB : ¬ p ∣ 153188),
        order_of_C_B_inv_mod_p2 153191 153188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153188 153191 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_153188_153191
def row_153542_153545 :
    HasPrimeWithExpOne (S_val 153542 153545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153542 153545 ∧ ¬ p ∣ (153545 - 153542) ∧
      ∃ (hNotC : ¬ p ∣ 153545) (hNotB : ¬ p ∣ 153542),
        order_of_C_B_inv_mod_p2 153545 153542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153542 153545 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_153542_153545
def row_153899_153902 :
    HasPrimeWithExpOne (S_val 153899 153902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153899 153902 ∧ ¬ p ∣ (153902 - 153899) ∧
      ∃ (hNotC : ¬ p ∣ 153902) (hNotB : ¬ p ∣ 153899),
        order_of_C_B_inv_mod_p2 153902 153899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153899 153902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_153899_153902
def row_154255_154258 :
    HasPrimeWithExpOne (S_val 154255 154258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154255 154258 ∧ ¬ p ∣ (154258 - 154255) ∧
      ∃ (hNotC : ¬ p ∣ 154258) (hNotB : ¬ p ∣ 154255),
        order_of_C_B_inv_mod_p2 154258 154255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154255 154258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_154255_154258
def row_154607_154610 :
    HasPrimeWithExpOne (S_val 154607 154610) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154607 154610 ∧ ¬ p ∣ (154610 - 154607) ∧
      ∃ (hNotC : ¬ p ∣ 154610) (hNotB : ¬ p ∣ 154607),
        order_of_C_B_inv_mod_p2 154610 154607 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154607 154610 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_154607_154610
def row_154963_154966 :
    HasPrimeWithExpOne (S_val 154963 154966) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154963 154966 ∧ ¬ p ∣ (154966 - 154963) ∧
      ∃ (hNotC : ¬ p ∣ 154966) (hNotB : ¬ p ∣ 154963),
        order_of_C_B_inv_mod_p2 154966 154963 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154963 154966 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_154963_154966
def row_155320_155323 :
    HasPrimeWithExpOne (S_val 155320 155323) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155320 155323 ∧ ¬ p ∣ (155323 - 155320) ∧
      ∃ (hNotC : ¬ p ∣ 155323) (hNotB : ¬ p ∣ 155320),
        order_of_C_B_inv_mod_p2 155323 155320 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155320 155323 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_155320_155323
def row_155671_155674 :
    HasPrimeWithExpOne (S_val 155671 155674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155671 155674 ∧ ¬ p ∣ (155674 - 155671) ∧
      ∃ (hNotC : ¬ p ∣ 155674) (hNotB : ¬ p ∣ 155671),
        order_of_C_B_inv_mod_p2 155674 155671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155671 155674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_155671_155674
def row_156026_156029 :
    HasPrimeWithExpOne (S_val 156026 156029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156026 156029 ∧ ¬ p ∣ (156029 - 156026) ∧
      ∃ (hNotC : ¬ p ∣ 156029) (hNotB : ¬ p ∣ 156026),
        order_of_C_B_inv_mod_p2 156029 156026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156026 156029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_156026_156029
def row_156381_156384 :
    HasPrimeWithExpOne (S_val 156381 156384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156381 156384 ∧ ¬ p ∣ (156384 - 156381) ∧
      ∃ (hNotC : ¬ p ∣ 156384) (hNotB : ¬ p ∣ 156381),
        order_of_C_B_inv_mod_p2 156384 156381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156381 156384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_156381_156384
def row_156736_156739 :
    HasPrimeWithExpOne (S_val 156736 156739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156736 156739 ∧ ¬ p ∣ (156739 - 156736) ∧
      ∃ (hNotC : ¬ p ∣ 156739) (hNotB : ¬ p ∣ 156736),
        order_of_C_B_inv_mod_p2 156739 156736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156736 156739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_156736_156739
def row_157090_157093 :
    HasPrimeWithExpOne (S_val 157090 157093) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157090 157093 ∧ ¬ p ∣ (157093 - 157090) ∧
      ∃ (hNotC : ¬ p ∣ 157093) (hNotB : ¬ p ∣ 157090),
        order_of_C_B_inv_mod_p2 157093 157090 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157090 157093 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_157090_157093
def row_157442_157445 :
    HasPrimeWithExpOne (S_val 157442 157445) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157442 157445 ∧ ¬ p ∣ (157445 - 157442) ∧
      ∃ (hNotC : ¬ p ∣ 157445) (hNotB : ¬ p ∣ 157442),
        order_of_C_B_inv_mod_p2 157445 157442 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157442 157445 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_157442_157445
def row_157799_157802 :
    HasPrimeWithExpOne (S_val 157799 157802) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157799 157802 ∧ ¬ p ∣ (157802 - 157799) ∧
      ∃ (hNotC : ¬ p ∣ 157802) (hNotB : ¬ p ∣ 157799),
        order_of_C_B_inv_mod_p2 157802 157799 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157799 157802 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_157799_157802
def row_158155_158158 :
    HasPrimeWithExpOne (S_val 158155 158158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158155 158158 ∧ ¬ p ∣ (158158 - 158155) ∧
      ∃ (hNotC : ¬ p ∣ 158158) (hNotB : ¬ p ∣ 158155),
        order_of_C_B_inv_mod_p2 158158 158155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158155 158158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_158155_158158
def row_158508_158511 :
    HasPrimeWithExpOne (S_val 158508 158511) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158508 158511 ∧ ¬ p ∣ (158511 - 158508) ∧
      ∃ (hNotC : ¬ p ∣ 158511) (hNotB : ¬ p ∣ 158508),
        order_of_C_B_inv_mod_p2 158511 158508 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158508 158511 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_158508_158511
def row_158862_158865 :
    HasPrimeWithExpOne (S_val 158862 158865) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158862 158865 ∧ ¬ p ∣ (158865 - 158862) ∧
      ∃ (hNotC : ¬ p ∣ 158865) (hNotB : ¬ p ∣ 158862),
        order_of_C_B_inv_mod_p2 158865 158862 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158862 158865 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_158862_158865
def row_159217_159220 :
    HasPrimeWithExpOne (S_val 159217 159220) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159217 159220 ∧ ¬ p ∣ (159220 - 159217) ∧
      ∃ (hNotC : ¬ p ∣ 159220) (hNotB : ¬ p ∣ 159217),
        order_of_C_B_inv_mod_p2 159220 159217 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159217 159220 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_159217_159220
def row_159573_159576 :
    HasPrimeWithExpOne (S_val 159573 159576) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159573 159576 ∧ ¬ p ∣ (159576 - 159573) ∧
      ∃ (hNotC : ¬ p ∣ 159576) (hNotB : ¬ p ∣ 159573),
        order_of_C_B_inv_mod_p2 159576 159573 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159573 159576 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_159573_159576
def row_159926_159929 :
    HasPrimeWithExpOne (S_val 159926 159929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159926 159929 ∧ ¬ p ∣ (159929 - 159926) ∧
      ∃ (hNotC : ¬ p ∣ 159929) (hNotB : ¬ p ∣ 159926),
        order_of_C_B_inv_mod_p2 159929 159926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159926 159929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_159926_159929
def row_160281_160284 :
    HasPrimeWithExpOne (S_val 160281 160284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160281 160284 ∧ ¬ p ∣ (160284 - 160281) ∧
      ∃ (hNotC : ¬ p ∣ 160284) (hNotB : ¬ p ∣ 160281),
        order_of_C_B_inv_mod_p2 160284 160281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160281 160284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_160281_160284
def row_160635_160638 :
    HasPrimeWithExpOne (S_val 160635 160638) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160635 160638 ∧ ¬ p ∣ (160638 - 160635) ∧
      ∃ (hNotC : ¬ p ∣ 160638) (hNotB : ¬ p ∣ 160635),
        order_of_C_B_inv_mod_p2 160638 160635 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160635 160638 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_160635_160638
def row_160988_160991 :
    HasPrimeWithExpOne (S_val 160988 160991) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160988 160991 ∧ ¬ p ∣ (160991 - 160988) ∧
      ∃ (hNotC : ¬ p ∣ 160991) (hNotB : ¬ p ∣ 160988),
        order_of_C_B_inv_mod_p2 160991 160988 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160988 160991 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_160988_160991
def row_161345_161348 :
    HasPrimeWithExpOne (S_val 161345 161348) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161345 161348 ∧ ¬ p ∣ (161348 - 161345) ∧
      ∃ (hNotC : ¬ p ∣ 161348) (hNotB : ¬ p ∣ 161345),
        order_of_C_B_inv_mod_p2 161348 161345 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161345 161348 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_161345_161348
def row_161700_161703 :
    HasPrimeWithExpOne (S_val 161700 161703) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161700 161703 ∧ ¬ p ∣ (161703 - 161700) ∧
      ∃ (hNotC : ¬ p ∣ 161703) (hNotB : ¬ p ∣ 161700),
        order_of_C_B_inv_mod_p2 161703 161700 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161700 161703 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_161700_161703
def row_162054_162057 :
    HasPrimeWithExpOne (S_val 162054 162057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162054 162057 ∧ ¬ p ∣ (162057 - 162054) ∧
      ∃ (hNotC : ¬ p ∣ 162057) (hNotB : ¬ p ∣ 162054),
        order_of_C_B_inv_mod_p2 162057 162054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162054 162057 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_162054_162057
def row_162408_162411 :
    HasPrimeWithExpOne (S_val 162408 162411) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162408 162411 ∧ ¬ p ∣ (162411 - 162408) ∧
      ∃ (hNotC : ¬ p ∣ 162411) (hNotB : ¬ p ∣ 162408),
        order_of_C_B_inv_mod_p2 162411 162408 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162408 162411 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_162408_162411
def row_162763_162766 :
    HasPrimeWithExpOne (S_val 162763 162766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162763 162766 ∧ ¬ p ∣ (162766 - 162763) ∧
      ∃ (hNotC : ¬ p ∣ 162766) (hNotB : ¬ p ∣ 162763),
        order_of_C_B_inv_mod_p2 162766 162763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162763 162766 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_162763_162766
def row_163118_163121 :
    HasPrimeWithExpOne (S_val 163118 163121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163118 163121 ∧ ¬ p ∣ (163121 - 163118) ∧
      ∃ (hNotC : ¬ p ∣ 163121) (hNotB : ¬ p ∣ 163118),
        order_of_C_B_inv_mod_p2 163121 163118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163118 163121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_163118_163121
def row_163472_163475 :
    HasPrimeWithExpOne (S_val 163472 163475) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163472 163475 ∧ ¬ p ∣ (163475 - 163472) ∧
      ∃ (hNotC : ¬ p ∣ 163475) (hNotB : ¬ p ∣ 163472),
        order_of_C_B_inv_mod_p2 163475 163472 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163472 163475 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_163472_163475
def row_163827_163830 :
    HasPrimeWithExpOne (S_val 163827 163830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163827 163830 ∧ ¬ p ∣ (163830 - 163827) ∧
      ∃ (hNotC : ¬ p ∣ 163830) (hNotB : ¬ p ∣ 163827),
        order_of_C_B_inv_mod_p2 163830 163827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163827 163830 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_163827_163830
def row_164181_164184 :
    HasPrimeWithExpOne (S_val 164181 164184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164181 164184 ∧ ¬ p ∣ (164184 - 164181) ∧
      ∃ (hNotC : ¬ p ∣ 164184) (hNotB : ¬ p ∣ 164181),
        order_of_C_B_inv_mod_p2 164184 164181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164181 164184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_164181_164184
def row_164536_164539 :
    HasPrimeWithExpOne (S_val 164536 164539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164536 164539 ∧ ¬ p ∣ (164539 - 164536) ∧
      ∃ (hNotC : ¬ p ∣ 164539) (hNotB : ¬ p ∣ 164536),
        order_of_C_B_inv_mod_p2 164539 164536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164536 164539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_164536_164539
def row_164891_164894 :
    HasPrimeWithExpOne (S_val 164891 164894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164891 164894 ∧ ¬ p ∣ (164894 - 164891) ∧
      ∃ (hNotC : ¬ p ∣ 164894) (hNotB : ¬ p ∣ 164891),
        order_of_C_B_inv_mod_p2 164894 164891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164891 164894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_164891_164894
def row_165245_165248 :
    HasPrimeWithExpOne (S_val 165245 165248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165245 165248 ∧ ¬ p ∣ (165248 - 165245) ∧
      ∃ (hNotC : ¬ p ∣ 165248) (hNotB : ¬ p ∣ 165245),
        order_of_C_B_inv_mod_p2 165248 165245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165245 165248 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_165245_165248
def row_165599_165602 :
    HasPrimeWithExpOne (S_val 165599 165602) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165599 165602 ∧ ¬ p ∣ (165602 - 165599) ∧
      ∃ (hNotC : ¬ p ∣ 165602) (hNotB : ¬ p ∣ 165599),
        order_of_C_B_inv_mod_p2 165602 165599 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165599 165602 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_165599_165602
def row_165954_165957 :
    HasPrimeWithExpOne (S_val 165954 165957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165954 165957 ∧ ¬ p ∣ (165957 - 165954) ∧
      ∃ (hNotC : ¬ p ∣ 165957) (hNotB : ¬ p ∣ 165954),
        order_of_C_B_inv_mod_p2 165957 165954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165954 165957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_165954_165957
def row_166309_166312 :
    HasPrimeWithExpOne (S_val 166309 166312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166309 166312 ∧ ¬ p ∣ (166312 - 166309) ∧
      ∃ (hNotC : ¬ p ∣ 166312) (hNotB : ¬ p ∣ 166309),
        order_of_C_B_inv_mod_p2 166312 166309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166309 166312 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_166309_166312
def row_166664_166667 :
    HasPrimeWithExpOne (S_val 166664 166667) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166664 166667 ∧ ¬ p ∣ (166667 - 166664) ∧
      ∃ (hNotC : ¬ p ∣ 166667) (hNotB : ¬ p ∣ 166664),
        order_of_C_B_inv_mod_p2 166667 166664 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166664 166667 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_166664_166667
def row_167018_167021 :
    HasPrimeWithExpOne (S_val 167018 167021) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167018 167021 ∧ ¬ p ∣ (167021 - 167018) ∧
      ∃ (hNotC : ¬ p ∣ 167021) (hNotB : ¬ p ∣ 167018),
        order_of_C_B_inv_mod_p2 167021 167018 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167018 167021 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_167018_167021
def row_167373_167376 :
    HasPrimeWithExpOne (S_val 167373 167376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167373 167376 ∧ ¬ p ∣ (167376 - 167373) ∧
      ∃ (hNotC : ¬ p ∣ 167376) (hNotB : ¬ p ∣ 167373),
        order_of_C_B_inv_mod_p2 167376 167373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167373 167376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_167373_167376
def row_167726_167729 :
    HasPrimeWithExpOne (S_val 167726 167729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167726 167729 ∧ ¬ p ∣ (167729 - 167726) ∧
      ∃ (hNotC : ¬ p ∣ 167729) (hNotB : ¬ p ∣ 167726),
        order_of_C_B_inv_mod_p2 167729 167726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167726 167729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_167726_167729
def row_168082_168085 :
    HasPrimeWithExpOne (S_val 168082 168085) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168082 168085 ∧ ¬ p ∣ (168085 - 168082) ∧
      ∃ (hNotC : ¬ p ∣ 168085) (hNotB : ¬ p ∣ 168082),
        order_of_C_B_inv_mod_p2 168085 168082 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168082 168085 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_168082_168085
def row_168437_168440 :
    HasPrimeWithExpOne (S_val 168437 168440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168437 168440 ∧ ¬ p ∣ (168440 - 168437) ∧
      ∃ (hNotC : ¬ p ∣ 168440) (hNotB : ¬ p ∣ 168437),
        order_of_C_B_inv_mod_p2 168440 168437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168437 168440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_168437_168440
def row_168792_168795 :
    HasPrimeWithExpOne (S_val 168792 168795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168792 168795 ∧ ¬ p ∣ (168795 - 168792) ∧
      ∃ (hNotC : ¬ p ∣ 168795) (hNotB : ¬ p ∣ 168792),
        order_of_C_B_inv_mod_p2 168795 168792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168792 168795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_168792_168795
def row_169151_169154 :
    HasPrimeWithExpOne (S_val 169151 169154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169151 169154 ∧ ¬ p ∣ (169154 - 169151) ∧
      ∃ (hNotC : ¬ p ∣ 169154) (hNotB : ¬ p ∣ 169151),
        order_of_C_B_inv_mod_p2 169154 169151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169151 169154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_169151_169154
def row_169500_169503 :
    HasPrimeWithExpOne (S_val 169500 169503) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169500 169503 ∧ ¬ p ∣ (169503 - 169500) ∧
      ∃ (hNotC : ¬ p ∣ 169503) (hNotB : ¬ p ∣ 169500),
        order_of_C_B_inv_mod_p2 169503 169500 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169500 169503 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_169500_169503
def row_169856_169859 :
    HasPrimeWithExpOne (S_val 169856 169859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169856 169859 ∧ ¬ p ∣ (169859 - 169856) ∧
      ∃ (hNotC : ¬ p ∣ 169859) (hNotB : ¬ p ∣ 169856),
        order_of_C_B_inv_mod_p2 169859 169856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169856 169859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_169856_169859
def row_170209_170212 :
    HasPrimeWithExpOne (S_val 170209 170212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170209 170212 ∧ ¬ p ∣ (170212 - 170209) ∧
      ∃ (hNotC : ¬ p ∣ 170212) (hNotB : ¬ p ∣ 170209),
        order_of_C_B_inv_mod_p2 170212 170209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170209 170212 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_170209_170212
def row_170564_170567 :
    HasPrimeWithExpOne (S_val 170564 170567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170564 170567 ∧ ¬ p ∣ (170567 - 170564) ∧
      ∃ (hNotC : ¬ p ∣ 170567) (hNotB : ¬ p ∣ 170564),
        order_of_C_B_inv_mod_p2 170567 170564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170564 170567 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_170564_170567
def row_170919_170922 :
    HasPrimeWithExpOne (S_val 170919 170922) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170919 170922 ∧ ¬ p ∣ (170922 - 170919) ∧
      ∃ (hNotC : ¬ p ∣ 170922) (hNotB : ¬ p ∣ 170919),
        order_of_C_B_inv_mod_p2 170922 170919 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170919 170922 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_170919_170922
def row_171274_171277 :
    HasPrimeWithExpOne (S_val 171274 171277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171274 171277 ∧ ¬ p ∣ (171277 - 171274) ∧
      ∃ (hNotC : ¬ p ∣ 171277) (hNotB : ¬ p ∣ 171274),
        order_of_C_B_inv_mod_p2 171277 171274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171274 171277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_171274_171277
def row_171627_171630 :
    HasPrimeWithExpOne (S_val 171627 171630) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171627 171630 ∧ ¬ p ∣ (171630 - 171627) ∧
      ∃ (hNotC : ¬ p ∣ 171630) (hNotB : ¬ p ∣ 171627),
        order_of_C_B_inv_mod_p2 171630 171627 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171627 171630 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_171627_171630
def row_171985_171988 :
    HasPrimeWithExpOne (S_val 171985 171988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171985 171988 ∧ ¬ p ∣ (171988 - 171985) ∧
      ∃ (hNotC : ¬ p ∣ 171988) (hNotB : ¬ p ∣ 171985),
        order_of_C_B_inv_mod_p2 171988 171985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171985 171988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_171985_171988
def row_172338_172341 :
    HasPrimeWithExpOne (S_val 172338 172341) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172338 172341 ∧ ¬ p ∣ (172341 - 172338) ∧
      ∃ (hNotC : ¬ p ∣ 172341) (hNotB : ¬ p ∣ 172338),
        order_of_C_B_inv_mod_p2 172341 172338 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172338 172341 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_172338_172341
def row_172692_172695 :
    HasPrimeWithExpOne (S_val 172692 172695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172692 172695 ∧ ¬ p ∣ (172695 - 172692) ∧
      ∃ (hNotC : ¬ p ∣ 172695) (hNotB : ¬ p ∣ 172692),
        order_of_C_B_inv_mod_p2 172695 172692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172692 172695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_172692_172695
def row_173046_173049 :
    HasPrimeWithExpOne (S_val 173046 173049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173046 173049 ∧ ¬ p ∣ (173049 - 173046) ∧
      ∃ (hNotC : ¬ p ∣ 173049) (hNotB : ¬ p ∣ 173046),
        order_of_C_B_inv_mod_p2 173049 173046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173046 173049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_173046_173049
def row_173400_173403 :
    HasPrimeWithExpOne (S_val 173400 173403) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173400 173403 ∧ ¬ p ∣ (173403 - 173400) ∧
      ∃ (hNotC : ¬ p ∣ 173403) (hNotB : ¬ p ∣ 173400),
        order_of_C_B_inv_mod_p2 173403 173400 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173400 173403 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_173400_173403
def row_173755_173758 :
    HasPrimeWithExpOne (S_val 173755 173758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173755 173758 ∧ ¬ p ∣ (173758 - 173755) ∧
      ∃ (hNotC : ¬ p ∣ 173758) (hNotB : ¬ p ∣ 173755),
        order_of_C_B_inv_mod_p2 173758 173755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173755 173758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_173755_173758
def row_174110_174113 :
    HasPrimeWithExpOne (S_val 174110 174113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174110 174113 ∧ ¬ p ∣ (174113 - 174110) ∧
      ∃ (hNotC : ¬ p ∣ 174113) (hNotB : ¬ p ∣ 174110),
        order_of_C_B_inv_mod_p2 174113 174110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174110 174113 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_174110_174113
def row_174466_174469 :
    HasPrimeWithExpOne (S_val 174466 174469) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174466 174469 ∧ ¬ p ∣ (174469 - 174466) ∧
      ∃ (hNotC : ¬ p ∣ 174469) (hNotB : ¬ p ∣ 174466),
        order_of_C_B_inv_mod_p2 174469 174466 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174466 174469 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_174466_174469
def row_174822_174825 :
    HasPrimeWithExpOne (S_val 174822 174825) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174822 174825 ∧ ¬ p ∣ (174825 - 174822) ∧
      ∃ (hNotC : ¬ p ∣ 174825) (hNotB : ¬ p ∣ 174822),
        order_of_C_B_inv_mod_p2 174825 174822 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174822 174825 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_174822_174825
def row_175175_175178 :
    HasPrimeWithExpOne (S_val 175175 175178) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175175 175178 ∧ ¬ p ∣ (175178 - 175175) ∧
      ∃ (hNotC : ¬ p ∣ 175178) (hNotB : ¬ p ∣ 175175),
        order_of_C_B_inv_mod_p2 175178 175175 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175175 175178 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_175175_175178
def row_175528_175531 :
    HasPrimeWithExpOne (S_val 175528 175531) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175528 175531 ∧ ¬ p ∣ (175531 - 175528) ∧
      ∃ (hNotC : ¬ p ∣ 175531) (hNotB : ¬ p ∣ 175528),
        order_of_C_B_inv_mod_p2 175531 175528 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175528 175531 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_175528_175531
def row_175886_175889 :
    HasPrimeWithExpOne (S_val 175886 175889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175886 175889 ∧ ¬ p ∣ (175889 - 175886) ∧
      ∃ (hNotC : ¬ p ∣ 175889) (hNotB : ¬ p ∣ 175886),
        order_of_C_B_inv_mod_p2 175889 175886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175886 175889 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_175886_175889
def row_176238_176241 :
    HasPrimeWithExpOne (S_val 176238 176241) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176238 176241 ∧ ¬ p ∣ (176241 - 176238) ∧
      ∃ (hNotC : ¬ p ∣ 176241) (hNotB : ¬ p ∣ 176238),
        order_of_C_B_inv_mod_p2 176241 176238 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176238 176241 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_176238_176241
def row_176592_176595 :
    HasPrimeWithExpOne (S_val 176592 176595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176592 176595 ∧ ¬ p ∣ (176595 - 176592) ∧
      ∃ (hNotC : ¬ p ∣ 176595) (hNotB : ¬ p ∣ 176592),
        order_of_C_B_inv_mod_p2 176595 176592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176592 176595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_176592_176595
def row_176946_176949 :
    HasPrimeWithExpOne (S_val 176946 176949) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176946 176949 ∧ ¬ p ∣ (176949 - 176946) ∧
      ∃ (hNotC : ¬ p ∣ 176949) (hNotB : ¬ p ∣ 176946),
        order_of_C_B_inv_mod_p2 176949 176946 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176946 176949 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_176946_176949
def row_177301_177304 :
    HasPrimeWithExpOne (S_val 177301 177304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177301 177304 ∧ ¬ p ∣ (177304 - 177301) ∧
      ∃ (hNotC : ¬ p ∣ 177304) (hNotB : ¬ p ∣ 177301),
        order_of_C_B_inv_mod_p2 177304 177301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177301 177304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_177301_177304
def row_177656_177659 :
    HasPrimeWithExpOne (S_val 177656 177659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177656 177659 ∧ ¬ p ∣ (177659 - 177656) ∧
      ∃ (hNotC : ¬ p ∣ 177659) (hNotB : ¬ p ∣ 177656),
        order_of_C_B_inv_mod_p2 177659 177656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177656 177659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_177656_177659
def row_178011_178014 :
    HasPrimeWithExpOne (S_val 178011 178014) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178011 178014 ∧ ¬ p ∣ (178014 - 178011) ∧
      ∃ (hNotC : ¬ p ∣ 178014) (hNotB : ¬ p ∣ 178011),
        order_of_C_B_inv_mod_p2 178014 178011 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178011 178014 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_178011_178014
def row_178365_178368 :
    HasPrimeWithExpOne (S_val 178365 178368) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178365 178368 ∧ ¬ p ∣ (178368 - 178365) ∧
      ∃ (hNotC : ¬ p ∣ 178368) (hNotB : ¬ p ∣ 178365),
        order_of_C_B_inv_mod_p2 178368 178365 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178365 178368 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_178365_178368
def row_178720_178723 :
    HasPrimeWithExpOne (S_val 178720 178723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178720 178723 ∧ ¬ p ∣ (178723 - 178720) ∧
      ∃ (hNotC : ¬ p ∣ 178723) (hNotB : ¬ p ∣ 178720),
        order_of_C_B_inv_mod_p2 178723 178720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178720 178723 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_178720_178723
def row_179074_179077 :
    HasPrimeWithExpOne (S_val 179074 179077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179074 179077 ∧ ¬ p ∣ (179077 - 179074) ∧
      ∃ (hNotC : ¬ p ∣ 179077) (hNotB : ¬ p ∣ 179074),
        order_of_C_B_inv_mod_p2 179077 179074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179074 179077 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_179074_179077
def row_179429_179432 :
    HasPrimeWithExpOne (S_val 179429 179432) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179429 179432 ∧ ¬ p ∣ (179432 - 179429) ∧
      ∃ (hNotC : ¬ p ∣ 179432) (hNotB : ¬ p ∣ 179429),
        order_of_C_B_inv_mod_p2 179432 179429 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179429 179432 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_179429_179432
def row_179783_179786 :
    HasPrimeWithExpOne (S_val 179783 179786) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179783 179786 ∧ ¬ p ∣ (179786 - 179783) ∧
      ∃ (hNotC : ¬ p ∣ 179786) (hNotB : ¬ p ∣ 179783),
        order_of_C_B_inv_mod_p2 179786 179783 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179783 179786 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_179783_179786
def row_180138_180141 :
    HasPrimeWithExpOne (S_val 180138 180141) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180138 180141 ∧ ¬ p ∣ (180141 - 180138) ∧
      ∃ (hNotC : ¬ p ∣ 180141) (hNotB : ¬ p ∣ 180138),
        order_of_C_B_inv_mod_p2 180141 180138 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180138 180141 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_180138_180141
def row_180494_180497 :
    HasPrimeWithExpOne (S_val 180494 180497) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180494 180497 ∧ ¬ p ∣ (180497 - 180494) ∧
      ∃ (hNotC : ¬ p ∣ 180497) (hNotB : ¬ p ∣ 180494),
        order_of_C_B_inv_mod_p2 180497 180494 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180494 180497 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_180494_180497
def row_180848_180851 :
    HasPrimeWithExpOne (S_val 180848 180851) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180848 180851 ∧ ¬ p ∣ (180851 - 180848) ∧
      ∃ (hNotC : ¬ p ∣ 180851) (hNotB : ¬ p ∣ 180848),
        order_of_C_B_inv_mod_p2 180851 180848 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180848 180851 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_180848_180851
def row_181200_181203 :
    HasPrimeWithExpOne (S_val 181200 181203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181200 181203 ∧ ¬ p ∣ (181203 - 181200) ∧
      ∃ (hNotC : ¬ p ∣ 181203) (hNotB : ¬ p ∣ 181200),
        order_of_C_B_inv_mod_p2 181203 181200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181200 181203 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_181200_181203
def row_181557_181560 :
    HasPrimeWithExpOne (S_val 181557 181560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181557 181560 ∧ ¬ p ∣ (181560 - 181557) ∧
      ∃ (hNotC : ¬ p ∣ 181560) (hNotB : ¬ p ∣ 181557),
        order_of_C_B_inv_mod_p2 181560 181557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181557 181560 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_181557_181560
def row_181911_181914 :
    HasPrimeWithExpOne (S_val 181911 181914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181911 181914 ∧ ¬ p ∣ (181914 - 181911) ∧
      ∃ (hNotC : ¬ p ∣ 181914) (hNotB : ¬ p ∣ 181911),
        order_of_C_B_inv_mod_p2 181914 181911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181911 181914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_181911_181914
def row_182266_182269 :
    HasPrimeWithExpOne (S_val 182266 182269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182266 182269 ∧ ¬ p ∣ (182269 - 182266) ∧
      ∃ (hNotC : ¬ p ∣ 182269) (hNotB : ¬ p ∣ 182266),
        order_of_C_B_inv_mod_p2 182269 182266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182266 182269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_182266_182269
def row_182620_182623 :
    HasPrimeWithExpOne (S_val 182620 182623) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182620 182623 ∧ ¬ p ∣ (182623 - 182620) ∧
      ∃ (hNotC : ¬ p ∣ 182623) (hNotB : ¬ p ∣ 182620),
        order_of_C_B_inv_mod_p2 182623 182620 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182620 182623 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_182620_182623
def row_182975_182978 :
    HasPrimeWithExpOne (S_val 182975 182978) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182975 182978 ∧ ¬ p ∣ (182978 - 182975) ∧
      ∃ (hNotC : ¬ p ∣ 182978) (hNotB : ¬ p ∣ 182975),
        order_of_C_B_inv_mod_p2 182978 182975 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182975 182978 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_182975_182978
def row_183331_183334 :
    HasPrimeWithExpOne (S_val 183331 183334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183331 183334 ∧ ¬ p ∣ (183334 - 183331) ∧
      ∃ (hNotC : ¬ p ∣ 183334) (hNotB : ¬ p ∣ 183331),
        order_of_C_B_inv_mod_p2 183334 183331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183331 183334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_183331_183334
def row_183685_183688 :
    HasPrimeWithExpOne (S_val 183685 183688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183685 183688 ∧ ¬ p ∣ (183688 - 183685) ∧
      ∃ (hNotC : ¬ p ∣ 183688) (hNotB : ¬ p ∣ 183685),
        order_of_C_B_inv_mod_p2 183688 183685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183685 183688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_183685_183688
def row_184037_184040 :
    HasPrimeWithExpOne (S_val 184037 184040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184037 184040 ∧ ¬ p ∣ (184040 - 184037) ∧
      ∃ (hNotC : ¬ p ∣ 184040) (hNotB : ¬ p ∣ 184037),
        order_of_C_B_inv_mod_p2 184040 184037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184037 184040 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_184037_184040
def row_184393_184396 :
    HasPrimeWithExpOne (S_val 184393 184396) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184393 184396 ∧ ¬ p ∣ (184396 - 184393) ∧
      ∃ (hNotC : ¬ p ∣ 184396) (hNotB : ¬ p ∣ 184393),
        order_of_C_B_inv_mod_p2 184396 184393 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184393 184396 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_184393_184396
def row_184748_184751 :
    HasPrimeWithExpOne (S_val 184748 184751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184748 184751 ∧ ¬ p ∣ (184751 - 184748) ∧
      ∃ (hNotC : ¬ p ∣ 184751) (hNotB : ¬ p ∣ 184748),
        order_of_C_B_inv_mod_p2 184751 184748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184748 184751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_184748_184751
def row_185102_185105 :
    HasPrimeWithExpOne (S_val 185102 185105) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185102 185105 ∧ ¬ p ∣ (185105 - 185102) ∧
      ∃ (hNotC : ¬ p ∣ 185105) (hNotB : ¬ p ∣ 185102),
        order_of_C_B_inv_mod_p2 185105 185102 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185102 185105 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_185102_185105
def row_185457_185460 :
    HasPrimeWithExpOne (S_val 185457 185460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185457 185460 ∧ ¬ p ∣ (185460 - 185457) ∧
      ∃ (hNotC : ¬ p ∣ 185460) (hNotB : ¬ p ∣ 185457),
        order_of_C_B_inv_mod_p2 185460 185457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185457 185460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_185457_185460
def row_185812_185815 :
    HasPrimeWithExpOne (S_val 185812 185815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185812 185815 ∧ ¬ p ∣ (185815 - 185812) ∧
      ∃ (hNotC : ¬ p ∣ 185815) (hNotB : ¬ p ∣ 185812),
        order_of_C_B_inv_mod_p2 185815 185812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185812 185815 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_185812_185815
def row_186166_186169 :
    HasPrimeWithExpOne (S_val 186166 186169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186166 186169 ∧ ¬ p ∣ (186169 - 186166) ∧
      ∃ (hNotC : ¬ p ∣ 186169) (hNotB : ¬ p ∣ 186166),
        order_of_C_B_inv_mod_p2 186169 186166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186166 186169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_186166_186169
def row_186520_186523 :
    HasPrimeWithExpOne (S_val 186520 186523) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186520 186523 ∧ ¬ p ∣ (186523 - 186520) ∧
      ∃ (hNotC : ¬ p ∣ 186523) (hNotB : ¬ p ∣ 186520),
        order_of_C_B_inv_mod_p2 186523 186520 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186520 186523 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_186520_186523
def row_186875_186878 :
    HasPrimeWithExpOne (S_val 186875 186878) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186875 186878 ∧ ¬ p ∣ (186878 - 186875) ∧
      ∃ (hNotC : ¬ p ∣ 186878) (hNotB : ¬ p ∣ 186875),
        order_of_C_B_inv_mod_p2 186878 186875 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186875 186878 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_186875_186878
def row_187232_187235 :
    HasPrimeWithExpOne (S_val 187232 187235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187232 187235 ∧ ¬ p ∣ (187235 - 187232) ∧
      ∃ (hNotC : ¬ p ∣ 187235) (hNotB : ¬ p ∣ 187232),
        order_of_C_B_inv_mod_p2 187235 187232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187232 187235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_187232_187235
def row_187585_187588 :
    HasPrimeWithExpOne (S_val 187585 187588) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187585 187588 ∧ ¬ p ∣ (187588 - 187585) ∧
      ∃ (hNotC : ¬ p ∣ 187588) (hNotB : ¬ p ∣ 187585),
        order_of_C_B_inv_mod_p2 187588 187585 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187585 187588 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_187585_187588
def row_187939_187942 :
    HasPrimeWithExpOne (S_val 187939 187942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187939 187942 ∧ ¬ p ∣ (187942 - 187939) ∧
      ∃ (hNotC : ¬ p ∣ 187942) (hNotB : ¬ p ∣ 187939),
        order_of_C_B_inv_mod_p2 187942 187939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187939 187942 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_187939_187942
def row_188293_188296 :
    HasPrimeWithExpOne (S_val 188293 188296) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188293 188296 ∧ ¬ p ∣ (188296 - 188293) ∧
      ∃ (hNotC : ¬ p ∣ 188296) (hNotB : ¬ p ∣ 188293),
        order_of_C_B_inv_mod_p2 188296 188293 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188293 188296 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_188293_188296
def row_188648_188651 :
    HasPrimeWithExpOne (S_val 188648 188651) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188648 188651 ∧ ¬ p ∣ (188651 - 188648) ∧
      ∃ (hNotC : ¬ p ∣ 188651) (hNotB : ¬ p ∣ 188648),
        order_of_C_B_inv_mod_p2 188651 188648 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188648 188651 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_188648_188651
def row_189003_189006 :
    HasPrimeWithExpOne (S_val 189003 189006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189003 189006 ∧ ¬ p ∣ (189006 - 189003) ∧
      ∃ (hNotC : ¬ p ∣ 189006) (hNotB : ¬ p ∣ 189003),
        order_of_C_B_inv_mod_p2 189006 189003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189003 189006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_189003_189006
def row_189360_189363 :
    HasPrimeWithExpOne (S_val 189360 189363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189360 189363 ∧ ¬ p ∣ (189363 - 189360) ∧
      ∃ (hNotC : ¬ p ∣ 189363) (hNotB : ¬ p ∣ 189360),
        order_of_C_B_inv_mod_p2 189363 189360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189360 189363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_189360_189363
def row_189713_189716 :
    HasPrimeWithExpOne (S_val 189713 189716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189713 189716 ∧ ¬ p ∣ (189716 - 189713) ∧
      ∃ (hNotC : ¬ p ∣ 189716) (hNotB : ¬ p ∣ 189713),
        order_of_C_B_inv_mod_p2 189716 189713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189713 189716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_189713_189716
def row_190068_190071 :
    HasPrimeWithExpOne (S_val 190068 190071) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190068 190071 ∧ ¬ p ∣ (190071 - 190068) ∧
      ∃ (hNotC : ¬ p ∣ 190071) (hNotB : ¬ p ∣ 190068),
        order_of_C_B_inv_mod_p2 190071 190068 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190068 190071 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_190068_190071
def row_190421_190424 :
    HasPrimeWithExpOne (S_val 190421 190424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190421 190424 ∧ ¬ p ∣ (190424 - 190421) ∧
      ∃ (hNotC : ¬ p ∣ 190424) (hNotB : ¬ p ∣ 190421),
        order_of_C_B_inv_mod_p2 190424 190421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190421 190424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_190421_190424
def row_190776_190779 :
    HasPrimeWithExpOne (S_val 190776 190779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190776 190779 ∧ ¬ p ∣ (190779 - 190776) ∧
      ∃ (hNotC : ¬ p ∣ 190779) (hNotB : ¬ p ∣ 190776),
        order_of_C_B_inv_mod_p2 190779 190776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190776 190779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_190776_190779
def row_191131_191134 :
    HasPrimeWithExpOne (S_val 191131 191134) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191131 191134 ∧ ¬ p ∣ (191134 - 191131) ∧
      ∃ (hNotC : ¬ p ∣ 191134) (hNotB : ¬ p ∣ 191131),
        order_of_C_B_inv_mod_p2 191134 191131 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191131 191134 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_191131_191134
def row_191485_191488 :
    HasPrimeWithExpOne (S_val 191485 191488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191485 191488 ∧ ¬ p ∣ (191488 - 191485) ∧
      ∃ (hNotC : ¬ p ∣ 191488) (hNotB : ¬ p ∣ 191485),
        order_of_C_B_inv_mod_p2 191488 191485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191485 191488 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_191485_191488
def row_191839_191842 :
    HasPrimeWithExpOne (S_val 191839 191842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191839 191842 ∧ ¬ p ∣ (191842 - 191839) ∧
      ∃ (hNotC : ¬ p ∣ 191842) (hNotB : ¬ p ∣ 191839),
        order_of_C_B_inv_mod_p2 191842 191839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191839 191842 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_191839_191842
def row_192196_192199 :
    HasPrimeWithExpOne (S_val 192196 192199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192196 192199 ∧ ¬ p ∣ (192199 - 192196) ∧
      ∃ (hNotC : ¬ p ∣ 192199) (hNotB : ¬ p ∣ 192196),
        order_of_C_B_inv_mod_p2 192199 192196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192196 192199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_192196_192199
def row_192548_192551 :
    HasPrimeWithExpOne (S_val 192548 192551) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192548 192551 ∧ ¬ p ∣ (192551 - 192548) ∧
      ∃ (hNotC : ¬ p ∣ 192551) (hNotB : ¬ p ∣ 192548),
        order_of_C_B_inv_mod_p2 192551 192548 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192548 192551 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_192548_192551
def row_192904_192907 :
    HasPrimeWithExpOne (S_val 192904 192907) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192904 192907 ∧ ¬ p ∣ (192907 - 192904) ∧
      ∃ (hNotC : ¬ p ∣ 192907) (hNotB : ¬ p ∣ 192904),
        order_of_C_B_inv_mod_p2 192907 192904 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192904 192907 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_192904_192907
def row_193259_193262 :
    HasPrimeWithExpOne (S_val 193259 193262) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193259 193262 ∧ ¬ p ∣ (193262 - 193259) ∧
      ∃ (hNotC : ¬ p ∣ 193262) (hNotB : ¬ p ∣ 193259),
        order_of_C_B_inv_mod_p2 193262 193259 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193259 193262 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_193259_193262
def row_193613_193616 :
    HasPrimeWithExpOne (S_val 193613 193616) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193613 193616 ∧ ¬ p ∣ (193616 - 193613) ∧
      ∃ (hNotC : ¬ p ∣ 193616) (hNotB : ¬ p ∣ 193613),
        order_of_C_B_inv_mod_p2 193616 193613 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193613 193616 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_193613_193616
def row_193967_193970 :
    HasPrimeWithExpOne (S_val 193967 193970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193967 193970 ∧ ¬ p ∣ (193970 - 193967) ∧
      ∃ (hNotC : ¬ p ∣ 193970) (hNotB : ¬ p ∣ 193967),
        order_of_C_B_inv_mod_p2 193970 193967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193967 193970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_193967_193970
def row_194323_194326 :
    HasPrimeWithExpOne (S_val 194323 194326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194323 194326 ∧ ¬ p ∣ (194326 - 194323) ∧
      ∃ (hNotC : ¬ p ∣ 194326) (hNotB : ¬ p ∣ 194323),
        order_of_C_B_inv_mod_p2 194326 194323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194323 194326 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_194323_194326
def row_194679_194682 :
    HasPrimeWithExpOne (S_val 194679 194682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194679 194682 ∧ ¬ p ∣ (194682 - 194679) ∧
      ∃ (hNotC : ¬ p ∣ 194682) (hNotB : ¬ p ∣ 194679),
        order_of_C_B_inv_mod_p2 194682 194679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194679 194682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_194679_194682
def row_195031_195034 :
    HasPrimeWithExpOne (S_val 195031 195034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195031 195034 ∧ ¬ p ∣ (195034 - 195031) ∧
      ∃ (hNotC : ¬ p ∣ 195034) (hNotB : ¬ p ∣ 195031),
        order_of_C_B_inv_mod_p2 195034 195031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195031 195034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_195031_195034
def row_195385_195388 :
    HasPrimeWithExpOne (S_val 195385 195388) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195385 195388 ∧ ¬ p ∣ (195388 - 195385) ∧
      ∃ (hNotC : ¬ p ∣ 195388) (hNotB : ¬ p ∣ 195385),
        order_of_C_B_inv_mod_p2 195388 195385 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195385 195388 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_195385_195388
def row_195741_195744 :
    HasPrimeWithExpOne (S_val 195741 195744) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195741 195744 ∧ ¬ p ∣ (195744 - 195741) ∧
      ∃ (hNotC : ¬ p ∣ 195744) (hNotB : ¬ p ∣ 195741),
        order_of_C_B_inv_mod_p2 195744 195741 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195741 195744 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_195741_195744
def row_196095_196098 :
    HasPrimeWithExpOne (S_val 196095 196098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196095 196098 ∧ ¬ p ∣ (196098 - 196095) ∧
      ∃ (hNotC : ¬ p ∣ 196098) (hNotB : ¬ p ∣ 196095),
        order_of_C_B_inv_mod_p2 196098 196095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196095 196098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_196095_196098
def row_196450_196453 :
    HasPrimeWithExpOne (S_val 196450 196453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196450 196453 ∧ ¬ p ∣ (196453 - 196450) ∧
      ∃ (hNotC : ¬ p ∣ 196453) (hNotB : ¬ p ∣ 196450),
        order_of_C_B_inv_mod_p2 196453 196450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196450 196453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_196450_196453
def row_196805_196808 :
    HasPrimeWithExpOne (S_val 196805 196808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196805 196808 ∧ ¬ p ∣ (196808 - 196805) ∧
      ∃ (hNotC : ¬ p ∣ 196808) (hNotB : ¬ p ∣ 196805),
        order_of_C_B_inv_mod_p2 196808 196805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196805 196808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_196805_196808
def row_197159_197162 :
    HasPrimeWithExpOne (S_val 197159 197162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197159 197162 ∧ ¬ p ∣ (197162 - 197159) ∧
      ∃ (hNotC : ¬ p ∣ 197162) (hNotB : ¬ p ∣ 197159),
        order_of_C_B_inv_mod_p2 197162 197159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197159 197162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_197159_197162
def row_197513_197516 :
    HasPrimeWithExpOne (S_val 197513 197516) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197513 197516 ∧ ¬ p ∣ (197516 - 197513) ∧
      ∃ (hNotC : ¬ p ∣ 197516) (hNotB : ¬ p ∣ 197513),
        order_of_C_B_inv_mod_p2 197516 197513 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197513 197516 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_197513_197516
def row_197869_197872 :
    HasPrimeWithExpOne (S_val 197869 197872) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197869 197872 ∧ ¬ p ∣ (197872 - 197869) ∧
      ∃ (hNotC : ¬ p ∣ 197872) (hNotB : ¬ p ∣ 197869),
        order_of_C_B_inv_mod_p2 197872 197869 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197869 197872 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_197869_197872
def row_198223_198226 :
    HasPrimeWithExpOne (S_val 198223 198226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198223 198226 ∧ ¬ p ∣ (198226 - 198223) ∧
      ∃ (hNotC : ¬ p ∣ 198226) (hNotB : ¬ p ∣ 198223),
        order_of_C_B_inv_mod_p2 198226 198223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198223 198226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_198223_198226
def row_198578_198581 :
    HasPrimeWithExpOne (S_val 198578 198581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198578 198581 ∧ ¬ p ∣ (198581 - 198578) ∧
      ∃ (hNotC : ¬ p ∣ 198581) (hNotB : ¬ p ∣ 198578),
        order_of_C_B_inv_mod_p2 198581 198578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198578 198581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_198578_198581
def row_198932_198935 :
    HasPrimeWithExpOne (S_val 198932 198935) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198932 198935 ∧ ¬ p ∣ (198935 - 198932) ∧
      ∃ (hNotC : ¬ p ∣ 198935) (hNotB : ¬ p ∣ 198932),
        order_of_C_B_inv_mod_p2 198935 198932 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198932 198935 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_198932_198935
def row_199286_199289 :
    HasPrimeWithExpOne (S_val 199286 199289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199286 199289 ∧ ¬ p ∣ (199289 - 199286) ∧
      ∃ (hNotC : ¬ p ∣ 199289) (hNotB : ¬ p ∣ 199286),
        order_of_C_B_inv_mod_p2 199289 199286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199286 199289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_199286_199289
def row_199642_199645 :
    HasPrimeWithExpOne (S_val 199642 199645) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199642 199645 ∧ ¬ p ∣ (199645 - 199642) ∧
      ∃ (hNotC : ¬ p ∣ 199645) (hNotB : ¬ p ∣ 199642),
        order_of_C_B_inv_mod_p2 199645 199642 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199642 199645 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_199642_199645
def row_199996_199999 :
    HasPrimeWithExpOne (S_val 199996 199999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199996 199999 ∧ ¬ p ∣ (199999 - 199996) ∧
      ∃ (hNotC : ¬ p ∣ 199999) (hNotB : ¬ p ∣ 199996),
        order_of_C_B_inv_mod_p2 199999 199996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199996 199999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_199996_199999
def row_200000_200003 :
    HasPrimeWithExpOne (S_val 200000 200003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200000 200003 ∧ ¬ p ∣ (200003 - 200000) ∧
      ∃ (hNotC : ¬ p ∣ 200003) (hNotB : ¬ p ∣ 200000),
        order_of_C_B_inv_mod_p2 200003 200000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200000 200003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_200000_200003
/-! ## New 200000 < B ≤ 300000 rows -/
theorem row_200001_200004 :
    HasPrimeWithExpOne (S_val 200001 200004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200001 200004 ∧ ¬ p ∣ (200004 - 200001) ∧
      ∃ (hNotC : ¬ p ∣ 200004) (hNotB : ¬ p ∣ 200001),
        order_of_C_B_inv_mod_p2 200004 200001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200001 200004 := by
  have hlt : (200001 : Nat) < 200004 := by decide
  have hcop : ¬ 53 ∣ (200004 - 200001) := by decide
  have heq : (200004 : ZMod 53) ^ 13 = (200001 : ZMod 53) ^ 13 := by decide
  have hne : (200004 : ZMod 2809) ^ 13 ≠ (200001 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 200004 := by decide
  have hB : ¬ 53 ∣ 200001 := by decide
  have hexp :=
    has_exp_one_of_zmod 200001 200004 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 200001 200004 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 200001 200004 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      200001 200004 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      200001 200004 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_200337_200340 :
    HasPrimeWithExpOne (S_val 200337 200340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200337 200340 ∧ ¬ p ∣ (200340 - 200337) ∧
      ∃ (hNotC : ¬ p ∣ 200340) (hNotB : ¬ p ∣ 200337),
        order_of_C_B_inv_mod_p2 200340 200337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200337 200340 := by
  have hlt : (200337 : Nat) < 200340 := by decide
  have hcop : ¬ 131 ∣ (200340 - 200337) := by decide
  have heq : (200340 : ZMod 131) ^ 13 = (200337 : ZMod 131) ^ 13 := by decide
  have hne : (200340 : ZMod 17161) ^ 13 ≠ (200337 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 200340 := by decide
  have hB : ¬ 131 ∣ 200337 := by decide
  have hexp :=
    has_exp_one_of_zmod 200337 200340 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 200337 200340 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 200337 200340 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      200337 200340 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      200337 200340 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_200672_200675 :
    HasPrimeWithExpOne (S_val 200672 200675) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200672 200675 ∧ ¬ p ∣ (200675 - 200672) ∧
      ∃ (hNotC : ¬ p ∣ 200675) (hNotB : ¬ p ∣ 200672),
        order_of_C_B_inv_mod_p2 200675 200672 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200672 200675 := by
  have hlt : (200672 : Nat) < 200675 := by decide
  have hcop : ¬ 79 ∣ (200675 - 200672) := by decide
  have heq : (200675 : ZMod 79) ^ 13 = (200672 : ZMod 79) ^ 13 := by decide
  have hne : (200675 : ZMod 6241) ^ 13 ≠ (200672 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 200675 := by decide
  have hB : ¬ 79 ∣ 200672 := by decide
  have hexp :=
    has_exp_one_of_zmod 200672 200675 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 200672 200675 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 200672 200675 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      200672 200675 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      200672 200675 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_201008_201011 :
    HasPrimeWithExpOne (S_val 201008 201011) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201008 201011 ∧ ¬ p ∣ (201011 - 201008) ∧
      ∃ (hNotC : ¬ p ∣ 201011) (hNotB : ¬ p ∣ 201008),
        order_of_C_B_inv_mod_p2 201011 201008 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201008 201011 := by
  have hlt : (201008 : Nat) < 201011 := by decide
  have hcop : ¬ 53 ∣ (201011 - 201008) := by decide
  have heq : (201011 : ZMod 53) ^ 13 = (201008 : ZMod 53) ^ 13 := by decide
  have hne : (201011 : ZMod 2809) ^ 13 ≠ (201008 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 201011 := by decide
  have hB : ¬ 53 ∣ 201008 := by decide
  have hexp :=
    has_exp_one_of_zmod 201008 201011 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 201008 201011 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 201008 201011 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      201008 201011 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      201008 201011 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_201344_201347 :
    HasPrimeWithExpOne (S_val 201344 201347) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201344 201347 ∧ ¬ p ∣ (201347 - 201344) ∧
      ∃ (hNotC : ¬ p ∣ 201347) (hNotB : ¬ p ∣ 201344),
        order_of_C_B_inv_mod_p2 201347 201344 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201344 201347 := by
  have hlt : (201344 : Nat) < 201347 := by decide
  have hcop : ¬ 157 ∣ (201347 - 201344) := by decide
  have heq : (201347 : ZMod 157) ^ 13 = (201344 : ZMod 157) ^ 13 := by decide
  have hne : (201347 : ZMod 24649) ^ 13 ≠ (201344 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 201347 := by decide
  have hB : ¬ 157 ∣ 201344 := by decide
  have hexp :=
    has_exp_one_of_zmod 201344 201347 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 201344 201347 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 201344 201347 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      201344 201347 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      201344 201347 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_201678_201681 :
    HasPrimeWithExpOne (S_val 201678 201681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201678 201681 ∧ ¬ p ∣ (201681 - 201678) ∧
      ∃ (hNotC : ¬ p ∣ 201681) (hNotB : ¬ p ∣ 201678),
        order_of_C_B_inv_mod_p2 201681 201678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201678 201681 := by
  have hlt : (201678 : Nat) < 201681 := by decide
  have hcop : ¬ 53 ∣ (201681 - 201678) := by decide
  have heq : (201681 : ZMod 53) ^ 13 = (201678 : ZMod 53) ^ 13 := by decide
  have hne : (201681 : ZMod 2809) ^ 13 ≠ (201678 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 201681 := by decide
  have hB : ¬ 53 ∣ 201678 := by decide
  have hexp :=
    has_exp_one_of_zmod 201678 201681 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 201678 201681 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 201678 201681 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      201678 201681 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      201678 201681 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_202015_202018 :
    HasPrimeWithExpOne (S_val 202015 202018) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202015 202018 ∧ ¬ p ∣ (202018 - 202015) ∧
      ∃ (hNotC : ¬ p ∣ 202018) (hNotB : ¬ p ∣ 202015),
        order_of_C_B_inv_mod_p2 202018 202015 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202015 202018 := by
  have hlt : (202015 : Nat) < 202018 := by decide
  have hcop : ¬ 53 ∣ (202018 - 202015) := by decide
  have heq : (202018 : ZMod 53) ^ 13 = (202015 : ZMod 53) ^ 13 := by decide
  have hne : (202018 : ZMod 2809) ^ 13 ≠ (202015 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 202018 := by decide
  have hB : ¬ 53 ∣ 202015 := by decide
  have hexp :=
    has_exp_one_of_zmod 202015 202018 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 202015 202018 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 202015 202018 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      202015 202018 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      202015 202018 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_202349_202352 :
    HasPrimeWithExpOne (S_val 202349 202352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202349 202352 ∧ ¬ p ∣ (202352 - 202349) ∧
      ∃ (hNotC : ¬ p ∣ 202352) (hNotB : ¬ p ∣ 202349),
        order_of_C_B_inv_mod_p2 202352 202349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202349 202352 := by
  have hlt : (202349 : Nat) < 202352 := by decide
  have hcop : ¬ 131 ∣ (202352 - 202349) := by decide
  have heq : (202352 : ZMod 131) ^ 13 = (202349 : ZMod 131) ^ 13 := by decide
  have hne : (202352 : ZMod 17161) ^ 13 ≠ (202349 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 202352 := by decide
  have hB : ¬ 131 ∣ 202349 := by decide
  have hexp :=
    has_exp_one_of_zmod 202349 202352 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 202349 202352 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 202349 202352 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      202349 202352 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      202349 202352 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_202685_202688 :
    HasPrimeWithExpOne (S_val 202685 202688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202685 202688 ∧ ¬ p ∣ (202688 - 202685) ∧
      ∃ (hNotC : ¬ p ∣ 202688) (hNotB : ¬ p ∣ 202685),
        order_of_C_B_inv_mod_p2 202688 202685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202685 202688 := by
  have hlt : (202685 : Nat) < 202688 := by decide
  have hcop : ¬ 53 ∣ (202688 - 202685) := by decide
  have heq : (202688 : ZMod 53) ^ 13 = (202685 : ZMod 53) ^ 13 := by decide
  have hne : (202688 : ZMod 2809) ^ 13 ≠ (202685 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 202688 := by decide
  have hB : ¬ 53 ∣ 202685 := by decide
  have hexp :=
    has_exp_one_of_zmod 202685 202688 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 202685 202688 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 202685 202688 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      202685 202688 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      202685 202688 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_203022_203025 :
    HasPrimeWithExpOne (S_val 203022 203025) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203022 203025 ∧ ¬ p ∣ (203025 - 203022) ∧
      ∃ (hNotC : ¬ p ∣ 203025) (hNotB : ¬ p ∣ 203022),
        order_of_C_B_inv_mod_p2 203025 203022 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203022 203025 := by
  have hlt : (203022 : Nat) < 203025 := by decide
  have hcop : ¬ 53 ∣ (203025 - 203022) := by decide
  have heq : (203025 : ZMod 53) ^ 13 = (203022 : ZMod 53) ^ 13 := by decide
  have hne : (203025 : ZMod 2809) ^ 13 ≠ (203022 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 203025 := by decide
  have hB : ¬ 53 ∣ 203022 := by decide
  have hexp :=
    has_exp_one_of_zmod 203022 203025 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 203022 203025 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 203022 203025 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      203022 203025 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      203022 203025 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_203355_203358 :
    HasPrimeWithExpOne (S_val 203355 203358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203355 203358 ∧ ¬ p ∣ (203358 - 203355) ∧
      ∃ (hNotC : ¬ p ∣ 203358) (hNotB : ¬ p ∣ 203355),
        order_of_C_B_inv_mod_p2 203358 203355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203355 203358 := by
  have hlt : (203355 : Nat) < 203358 := by decide
  have hcop : ¬ 131 ∣ (203358 - 203355) := by decide
  have heq : (203358 : ZMod 131) ^ 13 = (203355 : ZMod 131) ^ 13 := by decide
  have hne : (203358 : ZMod 17161) ^ 13 ≠ (203355 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 203358 := by decide
  have hB : ¬ 131 ∣ 203355 := by decide
  have hexp :=
    has_exp_one_of_zmod 203355 203358 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 203355 203358 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 203355 203358 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      203355 203358 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      203355 203358 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_203692_203695 :
    HasPrimeWithExpOne (S_val 203692 203695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203692 203695 ∧ ¬ p ∣ (203695 - 203692) ∧
      ∃ (hNotC : ¬ p ∣ 203695) (hNotB : ¬ p ∣ 203692),
        order_of_C_B_inv_mod_p2 203695 203692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203692 203695 := by
  have hlt : (203692 : Nat) < 203695 := by decide
  have hcop : ¬ 53 ∣ (203695 - 203692) := by decide
  have heq : (203695 : ZMod 53) ^ 13 = (203692 : ZMod 53) ^ 13 := by decide
  have hne : (203695 : ZMod 2809) ^ 13 ≠ (203692 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 203695 := by decide
  have hB : ¬ 53 ∣ 203692 := by decide
  have hexp :=
    has_exp_one_of_zmod 203692 203695 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 203692 203695 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 203692 203695 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      203692 203695 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      203692 203695 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_204027_204030 :
    HasPrimeWithExpOne (S_val 204027 204030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204027 204030 ∧ ¬ p ∣ (204030 - 204027) ∧
      ∃ (hNotC : ¬ p ∣ 204030) (hNotB : ¬ p ∣ 204027),
        order_of_C_B_inv_mod_p2 204030 204027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204027 204030 := by
  have hlt : (204027 : Nat) < 204030 := by decide
  have hcop : ¬ 131 ∣ (204030 - 204027) := by decide
  have heq : (204030 : ZMod 131) ^ 13 = (204027 : ZMod 131) ^ 13 := by decide
  have hne : (204030 : ZMod 17161) ^ 13 ≠ (204027 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 204030 := by decide
  have hB : ¬ 131 ∣ 204027 := by decide
  have hexp :=
    has_exp_one_of_zmod 204027 204030 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 204027 204030 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 204027 204030 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      204027 204030 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      204027 204030 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_204364_204367 :
    HasPrimeWithExpOne (S_val 204364 204367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204364 204367 ∧ ¬ p ∣ (204367 - 204364) ∧
      ∃ (hNotC : ¬ p ∣ 204367) (hNotB : ¬ p ∣ 204364),
        order_of_C_B_inv_mod_p2 204367 204364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204364 204367 := by
  have hlt : (204364 : Nat) < 204367 := by decide
  have hcop : ¬ 521 ∣ (204367 - 204364) := by decide
  have heq : (204367 : ZMod 521) ^ 13 = (204364 : ZMod 521) ^ 13 := by decide
  have hne : (204367 : ZMod 271441) ^ 13 ≠ (204364 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 204367 := by decide
  have hB : ¬ 521 ∣ 204364 := by decide
  have hexp :=
    has_exp_one_of_zmod 204364 204367 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 204364 204367 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 204364 204367 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      204364 204367 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      204364 204367 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_204699_204702 :
    HasPrimeWithExpOne (S_val 204699 204702) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204699 204702 ∧ ¬ p ∣ (204702 - 204699) ∧
      ∃ (hNotC : ¬ p ∣ 204702) (hNotB : ¬ p ∣ 204699),
        order_of_C_B_inv_mod_p2 204702 204699 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204699 204702 := by
  have hlt : (204699 : Nat) < 204702 := by decide
  have hcop : ¬ 53 ∣ (204702 - 204699) := by decide
  have heq : (204702 : ZMod 53) ^ 13 = (204699 : ZMod 53) ^ 13 := by decide
  have hne : (204702 : ZMod 2809) ^ 13 ≠ (204699 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 204702 := by decide
  have hB : ¬ 53 ∣ 204699 := by decide
  have hexp :=
    has_exp_one_of_zmod 204699 204702 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 204699 204702 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 204699 204702 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      204699 204702 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      204699 204702 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_205036_205039 :
    HasPrimeWithExpOne (S_val 205036 205039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205036 205039 ∧ ¬ p ∣ (205039 - 205036) ∧
      ∃ (hNotC : ¬ p ∣ 205039) (hNotB : ¬ p ∣ 205036),
        order_of_C_B_inv_mod_p2 205039 205036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205036 205039 := by
  have hlt : (205036 : Nat) < 205039 := by decide
  have hcop : ¬ 53 ∣ (205039 - 205036) := by decide
  have heq : (205039 : ZMod 53) ^ 13 = (205036 : ZMod 53) ^ 13 := by decide
  have hne : (205039 : ZMod 2809) ^ 13 ≠ (205036 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 205039 := by decide
  have hB : ¬ 53 ∣ 205036 := by decide
  have hexp :=
    has_exp_one_of_zmod 205036 205039 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 205036 205039 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 205036 205039 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      205036 205039 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      205036 205039 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_205371_205374 :
    HasPrimeWithExpOne (S_val 205371 205374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205371 205374 ∧ ¬ p ∣ (205374 - 205371) ∧
      ∃ (hNotC : ¬ p ∣ 205374) (hNotB : ¬ p ∣ 205371),
        order_of_C_B_inv_mod_p2 205374 205371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205371 205374 := by
  have hlt : (205371 : Nat) < 205374 := by decide
  have hcop : ¬ 313 ∣ (205374 - 205371) := by decide
  have heq : (205374 : ZMod 313) ^ 13 = (205371 : ZMod 313) ^ 13 := by decide
  have hne : (205374 : ZMod 97969) ^ 13 ≠ (205371 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 205374 := by decide
  have hB : ¬ 313 ∣ 205371 := by decide
  have hexp :=
    has_exp_one_of_zmod 205371 205374 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 205371 205374 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 205371 205374 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      205371 205374 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      205371 205374 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_205706_205709 :
    HasPrimeWithExpOne (S_val 205706 205709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205706 205709 ∧ ¬ p ∣ (205709 - 205706) ∧
      ∃ (hNotC : ¬ p ∣ 205709) (hNotB : ¬ p ∣ 205706),
        order_of_C_B_inv_mod_p2 205709 205706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205706 205709 := by
  have hlt : (205706 : Nat) < 205709 := by decide
  have hcop : ¬ 53 ∣ (205709 - 205706) := by decide
  have heq : (205709 : ZMod 53) ^ 13 = (205706 : ZMod 53) ^ 13 := by decide
  have hne : (205709 : ZMod 2809) ^ 13 ≠ (205706 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 205709 := by decide
  have hB : ¬ 53 ∣ 205706 := by decide
  have hexp :=
    has_exp_one_of_zmod 205706 205709 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 205706 205709 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 205706 205709 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      205706 205709 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      205706 205709 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_206043_206046 :
    HasPrimeWithExpOne (S_val 206043 206046) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206043 206046 ∧ ¬ p ∣ (206046 - 206043) ∧
      ∃ (hNotC : ¬ p ∣ 206046) (hNotB : ¬ p ∣ 206043),
        order_of_C_B_inv_mod_p2 206046 206043 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206043 206046 := by
  have hlt : (206043 : Nat) < 206046 := by decide
  have hcop : ¬ 53 ∣ (206046 - 206043) := by decide
  have heq : (206046 : ZMod 53) ^ 13 = (206043 : ZMod 53) ^ 13 := by decide
  have hne : (206046 : ZMod 2809) ^ 13 ≠ (206043 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 206046 := by decide
  have hB : ¬ 53 ∣ 206043 := by decide
  have hexp :=
    has_exp_one_of_zmod 206043 206046 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 206043 206046 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 206043 206046 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      206043 206046 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      206043 206046 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_206375_206378 :
    HasPrimeWithExpOne (S_val 206375 206378) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206375 206378 ∧ ¬ p ∣ (206378 - 206375) ∧
      ∃ (hNotC : ¬ p ∣ 206378) (hNotB : ¬ p ∣ 206375),
        order_of_C_B_inv_mod_p2 206378 206375 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206375 206378 := by
  have hlt : (206375 : Nat) < 206378 := by decide
  have hcop : ¬ 53 ∣ (206378 - 206375) := by decide
  have heq : (206378 : ZMod 53) ^ 13 = (206375 : ZMod 53) ^ 13 := by decide
  have hne : (206378 : ZMod 2809) ^ 13 ≠ (206375 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 206378 := by decide
  have hB : ¬ 53 ∣ 206375 := by decide
  have hexp :=
    has_exp_one_of_zmod 206375 206378 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 206375 206378 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 206375 206378 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      206375 206378 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      206375 206378 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_206713_206716 :
    HasPrimeWithExpOne (S_val 206713 206716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206713 206716 ∧ ¬ p ∣ (206716 - 206713) ∧
      ∃ (hNotC : ¬ p ∣ 206716) (hNotB : ¬ p ∣ 206713),
        order_of_C_B_inv_mod_p2 206716 206713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206713 206716 := by
  have hlt : (206713 : Nat) < 206716 := by decide
  have hcop : ¬ 53 ∣ (206716 - 206713) := by decide
  have heq : (206716 : ZMod 53) ^ 13 = (206713 : ZMod 53) ^ 13 := by decide
  have hne : (206716 : ZMod 2809) ^ 13 ≠ (206713 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 206716 := by decide
  have hB : ¬ 53 ∣ 206713 := by decide
  have hexp :=
    has_exp_one_of_zmod 206713 206716 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 206713 206716 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 206713 206716 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      206713 206716 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      206713 206716 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_207047_207050 :
    HasPrimeWithExpOne (S_val 207047 207050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207047 207050 ∧ ¬ p ∣ (207050 - 207047) ∧
      ∃ (hNotC : ¬ p ∣ 207050) (hNotB : ¬ p ∣ 207047),
        order_of_C_B_inv_mod_p2 207050 207047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207047 207050 := by
  have hlt : (207047 : Nat) < 207050 := by decide
  have hcop : ¬ 157 ∣ (207050 - 207047) := by decide
  have heq : (207050 : ZMod 157) ^ 13 = (207047 : ZMod 157) ^ 13 := by decide
  have hne : (207050 : ZMod 24649) ^ 13 ≠ (207047 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 207050 := by decide
  have hB : ¬ 157 ∣ 207047 := by decide
  have hexp :=
    has_exp_one_of_zmod 207047 207050 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 207047 207050 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 207047 207050 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      207047 207050 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      207047 207050 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_207382_207385 :
    HasPrimeWithExpOne (S_val 207382 207385) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207382 207385 ∧ ¬ p ∣ (207385 - 207382) ∧
      ∃ (hNotC : ¬ p ∣ 207385) (hNotB : ¬ p ∣ 207382),
        order_of_C_B_inv_mod_p2 207385 207382 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207382 207385 := by
  have hlt : (207382 : Nat) < 207385 := by decide
  have hcop : ¬ 53 ∣ (207385 - 207382) := by decide
  have heq : (207385 : ZMod 53) ^ 13 = (207382 : ZMod 53) ^ 13 := by decide
  have hne : (207385 : ZMod 2809) ^ 13 ≠ (207382 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 207385 := by decide
  have hB : ¬ 53 ∣ 207382 := by decide
  have hexp :=
    has_exp_one_of_zmod 207382 207385 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 207382 207385 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 207382 207385 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      207382 207385 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      207382 207385 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_207720_207723 :
    HasPrimeWithExpOne (S_val 207720 207723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207720 207723 ∧ ¬ p ∣ (207723 - 207720) ∧
      ∃ (hNotC : ¬ p ∣ 207723) (hNotB : ¬ p ∣ 207720),
        order_of_C_B_inv_mod_p2 207723 207720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207720 207723 := by
  have hlt : (207720 : Nat) < 207723 := by decide
  have hcop : ¬ 53 ∣ (207723 - 207720) := by decide
  have heq : (207723 : ZMod 53) ^ 13 = (207720 : ZMod 53) ^ 13 := by decide
  have hne : (207723 : ZMod 2809) ^ 13 ≠ (207720 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 207723 := by decide
  have hB : ¬ 53 ∣ 207720 := by decide
  have hexp :=
    has_exp_one_of_zmod 207720 207723 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 207720 207723 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 207720 207723 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      207720 207723 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      207720 207723 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_208054_208057 :
    HasPrimeWithExpOne (S_val 208054 208057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208054 208057 ∧ ¬ p ∣ (208057 - 208054) ∧
      ∃ (hNotC : ¬ p ∣ 208057) (hNotB : ¬ p ∣ 208054),
        order_of_C_B_inv_mod_p2 208057 208054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208054 208057 := by
  have hlt : (208054 : Nat) < 208057 := by decide
  have hcop : ¬ 157 ∣ (208057 - 208054) := by decide
  have heq : (208057 : ZMod 157) ^ 13 = (208054 : ZMod 157) ^ 13 := by decide
  have hne : (208057 : ZMod 24649) ^ 13 ≠ (208054 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 208057 := by decide
  have hB : ¬ 157 ∣ 208054 := by decide
  have hexp :=
    has_exp_one_of_zmod 208054 208057 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 208054 208057 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 208054 208057 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      208054 208057 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      208054 208057 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_208389_208392 :
    HasPrimeWithExpOne (S_val 208389 208392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208389 208392 ∧ ¬ p ∣ (208392 - 208389) ∧
      ∃ (hNotC : ¬ p ∣ 208392) (hNotB : ¬ p ∣ 208389),
        order_of_C_B_inv_mod_p2 208392 208389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208389 208392 := by
  have hlt : (208389 : Nat) < 208392 := by decide
  have hcop : ¬ 53 ∣ (208392 - 208389) := by decide
  have heq : (208392 : ZMod 53) ^ 13 = (208389 : ZMod 53) ^ 13 := by decide
  have hne : (208392 : ZMod 2809) ^ 13 ≠ (208389 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 208392 := by decide
  have hB : ¬ 53 ∣ 208389 := by decide
  have hexp :=
    has_exp_one_of_zmod 208389 208392 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 208389 208392 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 208389 208392 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      208389 208392 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      208389 208392 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_208725_208728 :
    HasPrimeWithExpOne (S_val 208725 208728) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208725 208728 ∧ ¬ p ∣ (208728 - 208725) ∧
      ∃ (hNotC : ¬ p ∣ 208728) (hNotB : ¬ p ∣ 208725),
        order_of_C_B_inv_mod_p2 208728 208725 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208725 208728 := by
  have hlt : (208725 : Nat) < 208728 := by decide
  have hcop : ¬ 313 ∣ (208728 - 208725) := by decide
  have heq : (208728 : ZMod 313) ^ 13 = (208725 : ZMod 313) ^ 13 := by decide
  have hne : (208728 : ZMod 97969) ^ 13 ≠ (208725 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 208728 := by decide
  have hB : ¬ 313 ∣ 208725 := by decide
  have hexp :=
    has_exp_one_of_zmod 208725 208728 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 208725 208728 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 208725 208728 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      208725 208728 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      208725 208728 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_209064_209067 :
    HasPrimeWithExpOne (S_val 209064 209067) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209064 209067 ∧ ¬ p ∣ (209067 - 209064) ∧
      ∃ (hNotC : ¬ p ∣ 209067) (hNotB : ¬ p ∣ 209064),
        order_of_C_B_inv_mod_p2 209067 209064 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209064 209067 := by
  have hlt : (209064 : Nat) < 209067 := by decide
  have hcop : ¬ 53 ∣ (209067 - 209064) := by decide
  have heq : (209067 : ZMod 53) ^ 13 = (209064 : ZMod 53) ^ 13 := by decide
  have hne : (209067 : ZMod 2809) ^ 13 ≠ (209064 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 209067 := by decide
  have hB : ¬ 53 ∣ 209064 := by decide
  have hexp :=
    has_exp_one_of_zmod 209064 209067 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 209064 209067 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 209064 209067 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      209064 209067 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      209064 209067 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_209396_209399 :
    HasPrimeWithExpOne (S_val 209396 209399) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209396 209399 ∧ ¬ p ∣ (209399 - 209396) ∧
      ∃ (hNotC : ¬ p ∣ 209399) (hNotB : ¬ p ∣ 209396),
        order_of_C_B_inv_mod_p2 209399 209396 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209396 209399 := by
  have hlt : (209396 : Nat) < 209399 := by decide
  have hcop : ¬ 53 ∣ (209399 - 209396) := by decide
  have heq : (209399 : ZMod 53) ^ 13 = (209396 : ZMod 53) ^ 13 := by decide
  have hne : (209399 : ZMod 2809) ^ 13 ≠ (209396 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 209399 := by decide
  have hB : ¬ 53 ∣ 209396 := by decide
  have hexp :=
    has_exp_one_of_zmod 209396 209399 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 209396 209399 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 209396 209399 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      209396 209399 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      209396 209399 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_209731_209734 :
    HasPrimeWithExpOne (S_val 209731 209734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209731 209734 ∧ ¬ p ∣ (209734 - 209731) ∧
      ∃ (hNotC : ¬ p ∣ 209734) (hNotB : ¬ p ∣ 209731),
        order_of_C_B_inv_mod_p2 209734 209731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209731 209734 := by
  have hlt : (209731 : Nat) < 209734 := by decide
  have hcop : ¬ 53 ∣ (209734 - 209731) := by decide
  have heq : (209734 : ZMod 53) ^ 13 = (209731 : ZMod 53) ^ 13 := by decide
  have hne : (209734 : ZMod 2809) ^ 13 ≠ (209731 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 209734 := by decide
  have hB : ¬ 53 ∣ 209731 := by decide
  have hexp :=
    has_exp_one_of_zmod 209731 209734 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 209731 209734 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 209731 209734 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      209731 209734 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      209731 209734 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_210066_210069 :
    HasPrimeWithExpOne (S_val 210066 210069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210066 210069 ∧ ¬ p ∣ (210069 - 210066) ∧
      ∃ (hNotC : ¬ p ∣ 210069) (hNotB : ¬ p ∣ 210066),
        order_of_C_B_inv_mod_p2 210069 210066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210066 210069 := by
  have hlt : (210066 : Nat) < 210069 := by decide
  have hcop : ¬ 131 ∣ (210069 - 210066) := by decide
  have heq : (210069 : ZMod 131) ^ 13 = (210066 : ZMod 131) ^ 13 := by decide
  have hne : (210069 : ZMod 17161) ^ 13 ≠ (210066 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 210069 := by decide
  have hB : ¬ 131 ∣ 210066 := by decide
  have hexp :=
    has_exp_one_of_zmod 210066 210069 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 210066 210069 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 210066 210069 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      210066 210069 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      210066 210069 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_210403_210406 :
    HasPrimeWithExpOne (S_val 210403 210406) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210403 210406 ∧ ¬ p ∣ (210406 - 210403) ∧
      ∃ (hNotC : ¬ p ∣ 210406) (hNotB : ¬ p ∣ 210403),
        order_of_C_B_inv_mod_p2 210406 210403 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210403 210406 := by
  have hlt : (210403 : Nat) < 210406 := by decide
  have hcop : ¬ 53 ∣ (210406 - 210403) := by decide
  have heq : (210406 : ZMod 53) ^ 13 = (210403 : ZMod 53) ^ 13 := by decide
  have hne : (210406 : ZMod 2809) ^ 13 ≠ (210403 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 210406 := by decide
  have hB : ¬ 53 ∣ 210403 := by decide
  have hexp :=
    has_exp_one_of_zmod 210403 210406 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 210403 210406 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 210403 210406 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      210403 210406 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      210403 210406 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_210738_210741 :
    HasPrimeWithExpOne (S_val 210738 210741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210738 210741 ∧ ¬ p ∣ (210741 - 210738) ∧
      ∃ (hNotC : ¬ p ∣ 210741) (hNotB : ¬ p ∣ 210738),
        order_of_C_B_inv_mod_p2 210741 210738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210738 210741 := by
  have hlt : (210738 : Nat) < 210741 := by decide
  have hcop : ¬ 53 ∣ (210741 - 210738) := by decide
  have heq : (210741 : ZMod 53) ^ 13 = (210738 : ZMod 53) ^ 13 := by decide
  have hne : (210741 : ZMod 2809) ^ 13 ≠ (210738 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 210741 := by decide
  have hB : ¬ 53 ∣ 210738 := by decide
  have hexp :=
    has_exp_one_of_zmod 210738 210741 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 210738 210741 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 210738 210741 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      210738 210741 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      210738 210741 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_211073_211076 :
    HasPrimeWithExpOne (S_val 211073 211076) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211073 211076 ∧ ¬ p ∣ (211076 - 211073) ∧
      ∃ (hNotC : ¬ p ∣ 211076) (hNotB : ¬ p ∣ 211073),
        order_of_C_B_inv_mod_p2 211076 211073 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211073 211076 := by
  have hlt : (211073 : Nat) < 211076 := by decide
  have hcop : ¬ 79 ∣ (211076 - 211073) := by decide
  have heq : (211076 : ZMod 79) ^ 13 = (211073 : ZMod 79) ^ 13 := by decide
  have hne : (211076 : ZMod 6241) ^ 13 ≠ (211073 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 211076 := by decide
  have hB : ¬ 79 ∣ 211073 := by decide
  have hexp :=
    has_exp_one_of_zmod 211073 211076 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 211073 211076 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 211073 211076 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      211073 211076 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      211073 211076 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_211410_211413 :
    HasPrimeWithExpOne (S_val 211410 211413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211410 211413 ∧ ¬ p ∣ (211413 - 211410) ∧
      ∃ (hNotC : ¬ p ∣ 211413) (hNotB : ¬ p ∣ 211410),
        order_of_C_B_inv_mod_p2 211413 211410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211410 211413 := by
  have hlt : (211410 : Nat) < 211413 := by decide
  have hcop : ¬ 53 ∣ (211413 - 211410) := by decide
  have heq : (211413 : ZMod 53) ^ 13 = (211410 : ZMod 53) ^ 13 := by decide
  have hne : (211413 : ZMod 2809) ^ 13 ≠ (211410 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 211413 := by decide
  have hB : ¬ 53 ∣ 211410 := by decide
  have hexp :=
    has_exp_one_of_zmod 211410 211413 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 211410 211413 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 211410 211413 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      211410 211413 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      211410 211413 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_211745_211748 :
    HasPrimeWithExpOne (S_val 211745 211748) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211745 211748 ∧ ¬ p ∣ (211748 - 211745) ∧
      ∃ (hNotC : ¬ p ∣ 211748) (hNotB : ¬ p ∣ 211745),
        order_of_C_B_inv_mod_p2 211748 211745 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211745 211748 := by
  have hlt : (211745 : Nat) < 211748 := by decide
  have hcop : ¬ 53 ∣ (211748 - 211745) := by decide
  have heq : (211748 : ZMod 53) ^ 13 = (211745 : ZMod 53) ^ 13 := by decide
  have hne : (211748 : ZMod 2809) ^ 13 ≠ (211745 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 211748 := by decide
  have hB : ¬ 53 ∣ 211745 := by decide
  have hexp :=
    has_exp_one_of_zmod 211745 211748 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 211745 211748 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 211745 211748 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      211745 211748 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      211745 211748 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_212083_212086 :
    HasPrimeWithExpOne (S_val 212083 212086) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212083 212086 ∧ ¬ p ∣ (212086 - 212083) ∧
      ∃ (hNotC : ¬ p ∣ 212086) (hNotB : ¬ p ∣ 212083),
        order_of_C_B_inv_mod_p2 212086 212083 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212083 212086 := by
  have hlt : (212083 : Nat) < 212086 := by decide
  have hcop : ¬ 157 ∣ (212086 - 212083) := by decide
  have heq : (212086 : ZMod 157) ^ 13 = (212083 : ZMod 157) ^ 13 := by decide
  have hne : (212086 : ZMod 24649) ^ 13 ≠ (212083 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 212086 := by decide
  have hB : ¬ 157 ∣ 212083 := by decide
  have hexp :=
    has_exp_one_of_zmod 212083 212086 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 212083 212086 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 212083 212086 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      212083 212086 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      212083 212086 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_212416_212419 :
    HasPrimeWithExpOne (S_val 212416 212419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212416 212419 ∧ ¬ p ∣ (212419 - 212416) ∧
      ∃ (hNotC : ¬ p ∣ 212419) (hNotB : ¬ p ∣ 212416),
        order_of_C_B_inv_mod_p2 212419 212416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212416 212419 := by
  have hlt : (212416 : Nat) < 212419 := by decide
  have hcop : ¬ 53 ∣ (212419 - 212416) := by decide
  have heq : (212419 : ZMod 53) ^ 13 = (212416 : ZMod 53) ^ 13 := by decide
  have hne : (212419 : ZMod 2809) ^ 13 ≠ (212416 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 212419 := by decide
  have hB : ¬ 53 ∣ 212416 := by decide
  have hexp :=
    has_exp_one_of_zmod 212416 212419 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 212416 212419 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 212416 212419 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      212416 212419 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      212416 212419 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_212752_212755 :
    HasPrimeWithExpOne (S_val 212752 212755) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212752 212755 ∧ ¬ p ∣ (212755 - 212752) ∧
      ∃ (hNotC : ¬ p ∣ 212755) (hNotB : ¬ p ∣ 212752),
        order_of_C_B_inv_mod_p2 212755 212752 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212752 212755 := by
  have hlt : (212752 : Nat) < 212755 := by decide
  have hcop : ¬ 53 ∣ (212755 - 212752) := by decide
  have heq : (212755 : ZMod 53) ^ 13 = (212752 : ZMod 53) ^ 13 := by decide
  have hne : (212755 : ZMod 2809) ^ 13 ≠ (212752 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 212755 := by decide
  have hB : ¬ 53 ∣ 212752 := by decide
  have hexp :=
    has_exp_one_of_zmod 212752 212755 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 212752 212755 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 212752 212755 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      212752 212755 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      212752 212755 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_213088_213091 :
    HasPrimeWithExpOne (S_val 213088 213091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213088 213091 ∧ ¬ p ∣ (213091 - 213088) ∧
      ∃ (hNotC : ¬ p ∣ 213091) (hNotB : ¬ p ∣ 213088),
        order_of_C_B_inv_mod_p2 213091 213088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213088 213091 := by
  have hlt : (213088 : Nat) < 213091 := by decide
  have hcop : ¬ 443 ∣ (213091 - 213088) := by decide
  have heq : (213091 : ZMod 443) ^ 13 = (213088 : ZMod 443) ^ 13 := by decide
  have hne : (213091 : ZMod 196249) ^ 13 ≠ (213088 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 213091 := by decide
  have hB : ¬ 443 ∣ 213088 := by decide
  have hexp :=
    has_exp_one_of_zmod 213088 213091 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 213088 213091 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 213088 213091 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      213088 213091 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      213088 213091 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_213423_213426 :
    HasPrimeWithExpOne (S_val 213423 213426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213423 213426 ∧ ¬ p ∣ (213426 - 213423) ∧
      ∃ (hNotC : ¬ p ∣ 213426) (hNotB : ¬ p ∣ 213423),
        order_of_C_B_inv_mod_p2 213426 213423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213423 213426 := by
  have hlt : (213423 : Nat) < 213426 := by decide
  have hcop : ¬ 53 ∣ (213426 - 213423) := by decide
  have heq : (213426 : ZMod 53) ^ 13 = (213423 : ZMod 53) ^ 13 := by decide
  have hne : (213426 : ZMod 2809) ^ 13 ≠ (213423 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 213426 := by decide
  have hB : ¬ 53 ∣ 213423 := by decide
  have hexp :=
    has_exp_one_of_zmod 213423 213426 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 213423 213426 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 213423 213426 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      213423 213426 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      213423 213426 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_213759_213762 :
    HasPrimeWithExpOne (S_val 213759 213762) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213759 213762 ∧ ¬ p ∣ (213762 - 213759) ∧
      ∃ (hNotC : ¬ p ∣ 213762) (hNotB : ¬ p ∣ 213759),
        order_of_C_B_inv_mod_p2 213762 213759 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213759 213762 := by
  have hlt : (213759 : Nat) < 213762 := by decide
  have hcop : ¬ 53 ∣ (213762 - 213759) := by decide
  have heq : (213762 : ZMod 53) ^ 13 = (213759 : ZMod 53) ^ 13 := by decide
  have hne : (213762 : ZMod 2809) ^ 13 ≠ (213759 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 213762 := by decide
  have hB : ¬ 53 ∣ 213759 := by decide
  have hexp :=
    has_exp_one_of_zmod 213759 213762 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 213759 213762 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 213759 213762 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      213759 213762 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      213759 213762 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_214095_214098 :
    HasPrimeWithExpOne (S_val 214095 214098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214095 214098 ∧ ¬ p ∣ (214098 - 214095) ∧
      ∃ (hNotC : ¬ p ∣ 214098) (hNotB : ¬ p ∣ 214095),
        order_of_C_B_inv_mod_p2 214098 214095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214095 214098 := by
  have hlt : (214095 : Nat) < 214098 := by decide
  have hcop : ¬ 157 ∣ (214098 - 214095) := by decide
  have heq : (214098 : ZMod 157) ^ 13 = (214095 : ZMod 157) ^ 13 := by decide
  have hne : (214098 : ZMod 24649) ^ 13 ≠ (214095 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 214098 := by decide
  have hB : ¬ 157 ∣ 214095 := by decide
  have hexp :=
    has_exp_one_of_zmod 214095 214098 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 214095 214098 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 214095 214098 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      214095 214098 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      214095 214098 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_214430_214433 :
    HasPrimeWithExpOne (S_val 214430 214433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214430 214433 ∧ ¬ p ∣ (214433 - 214430) ∧
      ∃ (hNotC : ¬ p ∣ 214433) (hNotB : ¬ p ∣ 214430),
        order_of_C_B_inv_mod_p2 214433 214430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214430 214433 := by
  have hlt : (214430 : Nat) < 214433 := by decide
  have hcop : ¬ 53 ∣ (214433 - 214430) := by decide
  have heq : (214433 : ZMod 53) ^ 13 = (214430 : ZMod 53) ^ 13 := by decide
  have hne : (214433 : ZMod 2809) ^ 13 ≠ (214430 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 214433 := by decide
  have hB : ¬ 53 ∣ 214430 := by decide
  have hexp :=
    has_exp_one_of_zmod 214430 214433 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 214430 214433 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 214430 214433 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      214430 214433 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      214430 214433 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_214766_214769 :
    HasPrimeWithExpOne (S_val 214766 214769) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214766 214769 ∧ ¬ p ∣ (214769 - 214766) ∧
      ∃ (hNotC : ¬ p ∣ 214769) (hNotB : ¬ p ∣ 214766),
        order_of_C_B_inv_mod_p2 214769 214766 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214766 214769 := by
  have hlt : (214766 : Nat) < 214769 := by decide
  have hcop : ¬ 53 ∣ (214769 - 214766) := by decide
  have heq : (214769 : ZMod 53) ^ 13 = (214766 : ZMod 53) ^ 13 := by decide
  have hne : (214769 : ZMod 2809) ^ 13 ≠ (214766 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 214769 := by decide
  have hB : ¬ 53 ∣ 214766 := by decide
  have hexp :=
    has_exp_one_of_zmod 214766 214769 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 214766 214769 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 214766 214769 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      214766 214769 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      214766 214769 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_215101_215104 :
    HasPrimeWithExpOne (S_val 215101 215104) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215101 215104 ∧ ¬ p ∣ (215104 - 215101) ∧
      ∃ (hNotC : ¬ p ∣ 215104) (hNotB : ¬ p ∣ 215101),
        order_of_C_B_inv_mod_p2 215104 215101 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215101 215104 := by
  have hlt : (215101 : Nat) < 215104 := by decide
  have hcop : ¬ 79 ∣ (215104 - 215101) := by decide
  have heq : (215104 : ZMod 79) ^ 13 = (215101 : ZMod 79) ^ 13 := by decide
  have hne : (215104 : ZMod 6241) ^ 13 ≠ (215101 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 215104 := by decide
  have hB : ¬ 79 ∣ 215101 := by decide
  have hexp :=
    has_exp_one_of_zmod 215101 215104 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 215101 215104 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 215101 215104 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      215101 215104 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      215101 215104 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_215437_215440 :
    HasPrimeWithExpOne (S_val 215437 215440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215437 215440 ∧ ¬ p ∣ (215440 - 215437) ∧
      ∃ (hNotC : ¬ p ∣ 215440) (hNotB : ¬ p ∣ 215437),
        order_of_C_B_inv_mod_p2 215440 215437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215437 215440 := by
  have hlt : (215437 : Nat) < 215440 := by decide
  have hcop : ¬ 53 ∣ (215440 - 215437) := by decide
  have heq : (215440 : ZMod 53) ^ 13 = (215437 : ZMod 53) ^ 13 := by decide
  have hne : (215440 : ZMod 2809) ^ 13 ≠ (215437 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 215440 := by decide
  have hB : ¬ 53 ∣ 215437 := by decide
  have hexp :=
    has_exp_one_of_zmod 215437 215440 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 215437 215440 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 215437 215440 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      215437 215440 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      215437 215440 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_215772_215775 :
    HasPrimeWithExpOne (S_val 215772 215775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215772 215775 ∧ ¬ p ∣ (215775 - 215772) ∧
      ∃ (hNotC : ¬ p ∣ 215775) (hNotB : ¬ p ∣ 215772),
        order_of_C_B_inv_mod_p2 215775 215772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215772 215775 := by
  have hlt : (215772 : Nat) < 215775 := by decide
  have hcop : ¬ 79 ∣ (215775 - 215772) := by decide
  have heq : (215775 : ZMod 79) ^ 13 = (215772 : ZMod 79) ^ 13 := by decide
  have hne : (215775 : ZMod 6241) ^ 13 ≠ (215772 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 215775 := by decide
  have hB : ¬ 79 ∣ 215772 := by decide
  have hexp :=
    has_exp_one_of_zmod 215772 215775 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 215772 215775 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 215772 215775 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      215772 215775 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      215772 215775 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_216108_216111 :
    HasPrimeWithExpOne (S_val 216108 216111) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216108 216111 ∧ ¬ p ∣ (216111 - 216108) ∧
      ∃ (hNotC : ¬ p ∣ 216111) (hNotB : ¬ p ∣ 216108),
        order_of_C_B_inv_mod_p2 216111 216108 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216108 216111 := by
  have hlt : (216108 : Nat) < 216111 := by decide
  have hcop : ¬ 313 ∣ (216111 - 216108) := by decide
  have heq : (216111 : ZMod 313) ^ 13 = (216108 : ZMod 313) ^ 13 := by decide
  have hne : (216111 : ZMod 97969) ^ 13 ≠ (216108 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 216111 := by decide
  have hB : ¬ 313 ∣ 216108 := by decide
  have hexp :=
    has_exp_one_of_zmod 216108 216111 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 216108 216111 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 216108 216111 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      216108 216111 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      216108 216111 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_216443_216446 :
    HasPrimeWithExpOne (S_val 216443 216446) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216443 216446 ∧ ¬ p ∣ (216446 - 216443) ∧
      ∃ (hNotC : ¬ p ∣ 216446) (hNotB : ¬ p ∣ 216443),
        order_of_C_B_inv_mod_p2 216446 216443 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216443 216446 := by
  have hlt : (216443 : Nat) < 216446 := by decide
  have hcop : ¬ 53 ∣ (216446 - 216443) := by decide
  have heq : (216446 : ZMod 53) ^ 13 = (216443 : ZMod 53) ^ 13 := by decide
  have hne : (216446 : ZMod 2809) ^ 13 ≠ (216443 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 216446 := by decide
  have hB : ¬ 53 ∣ 216443 := by decide
  have hexp :=
    has_exp_one_of_zmod 216443 216446 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 216443 216446 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 216443 216446 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      216443 216446 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      216443 216446 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_216780_216783 :
    HasPrimeWithExpOne (S_val 216780 216783) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216780 216783 ∧ ¬ p ∣ (216783 - 216780) ∧
      ∃ (hNotC : ¬ p ∣ 216783) (hNotB : ¬ p ∣ 216780),
        order_of_C_B_inv_mod_p2 216783 216780 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216780 216783 := by
  have hlt : (216780 : Nat) < 216783 := by decide
  have hcop : ¬ 53 ∣ (216783 - 216780) := by decide
  have heq : (216783 : ZMod 53) ^ 13 = (216780 : ZMod 53) ^ 13 := by decide
  have hne : (216783 : ZMod 2809) ^ 13 ≠ (216780 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 216783 := by decide
  have hB : ¬ 53 ∣ 216780 := by decide
  have hexp :=
    has_exp_one_of_zmod 216780 216783 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 216780 216783 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 216780 216783 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      216780 216783 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      216780 216783 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_217114_217117 :
    HasPrimeWithExpOne (S_val 217114 217117) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217114 217117 ∧ ¬ p ∣ (217117 - 217114) ∧
      ∃ (hNotC : ¬ p ∣ 217117) (hNotB : ¬ p ∣ 217114),
        order_of_C_B_inv_mod_p2 217117 217114 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217114 217117 := by
  have hlt : (217114 : Nat) < 217117 := by decide
  have hcop : ¬ 547 ∣ (217117 - 217114) := by decide
  have heq : (217117 : ZMod 547) ^ 13 = (217114 : ZMod 547) ^ 13 := by decide
  have hne : (217117 : ZMod 299209) ^ 13 ≠ (217114 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 217117 := by decide
  have hB : ¬ 547 ∣ 217114 := by decide
  have hexp :=
    has_exp_one_of_zmod 217114 217117 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 217114 217117 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 217114 217117 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      217114 217117 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      217114 217117 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_217450_217453 :
    HasPrimeWithExpOne (S_val 217450 217453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217450 217453 ∧ ¬ p ∣ (217453 - 217450) ∧
      ∃ (hNotC : ¬ p ∣ 217453) (hNotB : ¬ p ∣ 217450),
        order_of_C_B_inv_mod_p2 217453 217450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217450 217453 := by
  have hlt : (217450 : Nat) < 217453 := by decide
  have hcop : ¬ 53 ∣ (217453 - 217450) := by decide
  have heq : (217453 : ZMod 53) ^ 13 = (217450 : ZMod 53) ^ 13 := by decide
  have hne : (217453 : ZMod 2809) ^ 13 ≠ (217450 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 217453 := by decide
  have hB : ¬ 53 ∣ 217450 := by decide
  have hexp :=
    has_exp_one_of_zmod 217450 217453 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 217450 217453 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 217450 217453 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      217450 217453 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      217450 217453 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_217786_217789 :
    HasPrimeWithExpOne (S_val 217786 217789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217786 217789 ∧ ¬ p ∣ (217789 - 217786) ∧
      ∃ (hNotC : ¬ p ∣ 217789) (hNotB : ¬ p ∣ 217786),
        order_of_C_B_inv_mod_p2 217789 217786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217786 217789 := by
  have hlt : (217786 : Nat) < 217789 := by decide
  have hcop : ¬ 79 ∣ (217789 - 217786) := by decide
  have heq : (217789 : ZMod 79) ^ 13 = (217786 : ZMod 79) ^ 13 := by decide
  have hne : (217789 : ZMod 6241) ^ 13 ≠ (217786 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 217789 := by decide
  have hB : ¬ 79 ∣ 217786 := by decide
  have hexp :=
    has_exp_one_of_zmod 217786 217789 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 217786 217789 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 217786 217789 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      217786 217789 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      217786 217789 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_218123_218126 :
    HasPrimeWithExpOne (S_val 218123 218126) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218123 218126 ∧ ¬ p ∣ (218126 - 218123) ∧
      ∃ (hNotC : ¬ p ∣ 218126) (hNotB : ¬ p ∣ 218123),
        order_of_C_B_inv_mod_p2 218126 218123 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218123 218126 := by
  have hlt : (218123 : Nat) < 218126 := by decide
  have hcop : ¬ 157 ∣ (218126 - 218123) := by decide
  have heq : (218126 : ZMod 157) ^ 13 = (218123 : ZMod 157) ^ 13 := by decide
  have hne : (218126 : ZMod 24649) ^ 13 ≠ (218123 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 218126 := by decide
  have hB : ¬ 157 ∣ 218123 := by decide
  have hexp :=
    has_exp_one_of_zmod 218123 218126 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 218123 218126 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 218123 218126 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      218123 218126 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      218123 218126 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_218457_218460 :
    HasPrimeWithExpOne (S_val 218457 218460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218457 218460 ∧ ¬ p ∣ (218460 - 218457) ∧
      ∃ (hNotC : ¬ p ∣ 218460) (hNotB : ¬ p ∣ 218457),
        order_of_C_B_inv_mod_p2 218460 218457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218457 218460 := by
  have hlt : (218457 : Nat) < 218460 := by decide
  have hcop : ¬ 53 ∣ (218460 - 218457) := by decide
  have heq : (218460 : ZMod 53) ^ 13 = (218457 : ZMod 53) ^ 13 := by decide
  have hne : (218460 : ZMod 2809) ^ 13 ≠ (218457 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 218460 := by decide
  have hB : ¬ 53 ∣ 218457 := by decide
  have hexp :=
    has_exp_one_of_zmod 218457 218460 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 218457 218460 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 218457 218460 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      218457 218460 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      218457 218460 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_218792_218795 :
    HasPrimeWithExpOne (S_val 218792 218795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218792 218795 ∧ ¬ p ∣ (218795 - 218792) ∧
      ∃ (hNotC : ¬ p ∣ 218795) (hNotB : ¬ p ∣ 218792),
        order_of_C_B_inv_mod_p2 218795 218792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218792 218795 := by
  have hlt : (218792 : Nat) < 218795 := by decide
  have hcop : ¬ 157 ∣ (218795 - 218792) := by decide
  have heq : (218795 : ZMod 157) ^ 13 = (218792 : ZMod 157) ^ 13 := by decide
  have hne : (218795 : ZMod 24649) ^ 13 ≠ (218792 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 218795 := by decide
  have hB : ¬ 157 ∣ 218792 := by decide
  have hexp :=
    has_exp_one_of_zmod 218792 218795 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 218792 218795 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 218792 218795 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      218792 218795 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      218792 218795 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_219128_219131 :
    HasPrimeWithExpOne (S_val 219128 219131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219128 219131 ∧ ¬ p ∣ (219131 - 219128) ∧
      ∃ (hNotC : ¬ p ∣ 219131) (hNotB : ¬ p ∣ 219128),
        order_of_C_B_inv_mod_p2 219131 219128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219128 219131 := by
  have hlt : (219128 : Nat) < 219131 := by decide
  have hcop : ¬ 443 ∣ (219131 - 219128) := by decide
  have heq : (219131 : ZMod 443) ^ 13 = (219128 : ZMod 443) ^ 13 := by decide
  have hne : (219131 : ZMod 196249) ^ 13 ≠ (219128 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 219131 := by decide
  have hB : ¬ 443 ∣ 219128 := by decide
  have hexp :=
    has_exp_one_of_zmod 219128 219131 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 219128 219131 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 219128 219131 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      219128 219131 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      219128 219131 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_219463_219466 :
    HasPrimeWithExpOne (S_val 219463 219466) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219463 219466 ∧ ¬ p ∣ (219466 - 219463) ∧
      ∃ (hNotC : ¬ p ∣ 219466) (hNotB : ¬ p ∣ 219463),
        order_of_C_B_inv_mod_p2 219466 219463 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219463 219466 := by
  have hlt : (219463 : Nat) < 219466 := by decide
  have hcop : ¬ 131 ∣ (219466 - 219463) := by decide
  have heq : (219466 : ZMod 131) ^ 13 = (219463 : ZMod 131) ^ 13 := by decide
  have hne : (219466 : ZMod 17161) ^ 13 ≠ (219463 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 219466 := by decide
  have hB : ¬ 131 ∣ 219463 := by decide
  have hexp :=
    has_exp_one_of_zmod 219463 219466 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 219463 219466 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 219463 219466 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      219463 219466 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      219463 219466 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_219801_219804 :
    HasPrimeWithExpOne (S_val 219801 219804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219801 219804 ∧ ¬ p ∣ (219804 - 219801) ∧
      ∃ (hNotC : ¬ p ∣ 219804) (hNotB : ¬ p ∣ 219801),
        order_of_C_B_inv_mod_p2 219804 219801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219801 219804 := by
  have hlt : (219801 : Nat) < 219804 := by decide
  have hcop : ¬ 53 ∣ (219804 - 219801) := by decide
  have heq : (219804 : ZMod 53) ^ 13 = (219801 : ZMod 53) ^ 13 := by decide
  have hne : (219804 : ZMod 2809) ^ 13 ≠ (219801 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 219804 := by decide
  have hB : ¬ 53 ∣ 219801 := by decide
  have hexp :=
    has_exp_one_of_zmod 219801 219804 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 219801 219804 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 219801 219804 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      219801 219804 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      219801 219804 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_220135_220138 :
    HasPrimeWithExpOne (S_val 220135 220138) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220135 220138 ∧ ¬ p ∣ (220138 - 220135) ∧
      ∃ (hNotC : ¬ p ∣ 220138) (hNotB : ¬ p ∣ 220135),
        order_of_C_B_inv_mod_p2 220138 220135 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220135 220138 := by
  have hlt : (220135 : Nat) < 220138 := by decide
  have hcop : ¬ 131 ∣ (220138 - 220135) := by decide
  have heq : (220138 : ZMod 131) ^ 13 = (220135 : ZMod 131) ^ 13 := by decide
  have hne : (220138 : ZMod 17161) ^ 13 ≠ (220135 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 220138 := by decide
  have hB : ¬ 131 ∣ 220135 := by decide
  have hexp :=
    has_exp_one_of_zmod 220135 220138 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 220135 220138 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 220135 220138 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      220135 220138 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      220135 220138 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_220471_220474 :
    HasPrimeWithExpOne (S_val 220471 220474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220471 220474 ∧ ¬ p ∣ (220474 - 220471) ∧
      ∃ (hNotC : ¬ p ∣ 220474) (hNotB : ¬ p ∣ 220471),
        order_of_C_B_inv_mod_p2 220474 220471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220471 220474 := by
  have hlt : (220471 : Nat) < 220474 := by decide
  have hcop : ¬ 53 ∣ (220474 - 220471) := by decide
  have heq : (220474 : ZMod 53) ^ 13 = (220471 : ZMod 53) ^ 13 := by decide
  have hne : (220474 : ZMod 2809) ^ 13 ≠ (220471 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 220474 := by decide
  have hB : ¬ 53 ∣ 220471 := by decide
  have hexp :=
    has_exp_one_of_zmod 220471 220474 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 220471 220474 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 220471 220474 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      220471 220474 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      220471 220474 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_220805_220808 :
    HasPrimeWithExpOne (S_val 220805 220808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220805 220808 ∧ ¬ p ∣ (220808 - 220805) ∧
      ∃ (hNotC : ¬ p ∣ 220808) (hNotB : ¬ p ∣ 220805),
        order_of_C_B_inv_mod_p2 220808 220805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220805 220808 := by
  have hlt : (220805 : Nat) < 220808 := by decide
  have hcop : ¬ 157 ∣ (220808 - 220805) := by decide
  have heq : (220808 : ZMod 157) ^ 13 = (220805 : ZMod 157) ^ 13 := by decide
  have hne : (220808 : ZMod 24649) ^ 13 ≠ (220805 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 220808 := by decide
  have hB : ¬ 157 ∣ 220805 := by decide
  have hexp :=
    has_exp_one_of_zmod 220805 220808 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 220805 220808 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 220805 220808 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      220805 220808 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      220805 220808 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_221140_221143 :
    HasPrimeWithExpOne (S_val 221140 221143) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221140 221143 ∧ ¬ p ∣ (221143 - 221140) ∧
      ∃ (hNotC : ¬ p ∣ 221143) (hNotB : ¬ p ∣ 221140),
        order_of_C_B_inv_mod_p2 221143 221140 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221140 221143 := by
  have hlt : (221140 : Nat) < 221143 := by decide
  have hcop : ¬ 157 ∣ (221143 - 221140) := by decide
  have heq : (221143 : ZMod 157) ^ 13 = (221140 : ZMod 157) ^ 13 := by decide
  have hne : (221143 : ZMod 24649) ^ 13 ≠ (221140 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 221143 := by decide
  have hB : ¬ 157 ∣ 221140 := by decide
  have hexp :=
    has_exp_one_of_zmod 221140 221143 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 221140 221143 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 221140 221143 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      221140 221143 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      221140 221143 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_221478_221481 :
    HasPrimeWithExpOne (S_val 221478 221481) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221478 221481 ∧ ¬ p ∣ (221481 - 221478) ∧
      ∃ (hNotC : ¬ p ∣ 221481) (hNotB : ¬ p ∣ 221478),
        order_of_C_B_inv_mod_p2 221481 221478 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221478 221481 := by
  have hlt : (221478 : Nat) < 221481 := by decide
  have hcop : ¬ 53 ∣ (221481 - 221478) := by decide
  have heq : (221481 : ZMod 53) ^ 13 = (221478 : ZMod 53) ^ 13 := by decide
  have hne : (221481 : ZMod 2809) ^ 13 ≠ (221478 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 221481 := by decide
  have hB : ¬ 53 ∣ 221478 := by decide
  have hexp :=
    has_exp_one_of_zmod 221478 221481 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 221478 221481 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 221478 221481 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      221478 221481 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      221478 221481 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_221811_221814 :
    HasPrimeWithExpOne (S_val 221811 221814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221811 221814 ∧ ¬ p ∣ (221814 - 221811) ∧
      ∃ (hNotC : ¬ p ∣ 221814) (hNotB : ¬ p ∣ 221811),
        order_of_C_B_inv_mod_p2 221814 221811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221811 221814 := by
  have hlt : (221811 : Nat) < 221814 := by decide
  have hcop : ¬ 53 ∣ (221814 - 221811) := by decide
  have heq : (221814 : ZMod 53) ^ 13 = (221811 : ZMod 53) ^ 13 := by decide
  have hne : (221814 : ZMod 2809) ^ 13 ≠ (221811 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 221814 := by decide
  have hB : ¬ 53 ∣ 221811 := by decide
  have hexp :=
    has_exp_one_of_zmod 221811 221814 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 221811 221814 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 221811 221814 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      221811 221814 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      221811 221814 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_222150_222153 :
    HasPrimeWithExpOne (S_val 222150 222153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222150 222153 ∧ ¬ p ∣ (222153 - 222150) ∧
      ∃ (hNotC : ¬ p ∣ 222153) (hNotB : ¬ p ∣ 222150),
        order_of_C_B_inv_mod_p2 222153 222150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222150 222153 := by
  have hlt : (222150 : Nat) < 222153 := by decide
  have hcop : ¬ 313 ∣ (222153 - 222150) := by decide
  have heq : (222153 : ZMod 313) ^ 13 = (222150 : ZMod 313) ^ 13 := by decide
  have hne : (222153 : ZMod 97969) ^ 13 ≠ (222150 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 222153 := by decide
  have hB : ¬ 313 ∣ 222150 := by decide
  have hexp :=
    has_exp_one_of_zmod 222150 222153 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 222150 222153 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 222150 222153 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      222150 222153 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      222150 222153 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_222482_222485 :
    HasPrimeWithExpOne (S_val 222482 222485) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222482 222485 ∧ ¬ p ∣ (222485 - 222482) ∧
      ∃ (hNotC : ¬ p ∣ 222485) (hNotB : ¬ p ∣ 222482),
        order_of_C_B_inv_mod_p2 222485 222482 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222482 222485 := by
  have hlt : (222482 : Nat) < 222485 := by decide
  have hcop : ¬ 79 ∣ (222485 - 222482) := by decide
  have heq : (222485 : ZMod 79) ^ 13 = (222482 : ZMod 79) ^ 13 := by decide
  have hne : (222485 : ZMod 6241) ^ 13 ≠ (222482 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 222485 := by decide
  have hB : ¬ 79 ∣ 222482 := by decide
  have hexp :=
    has_exp_one_of_zmod 222482 222485 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 222482 222485 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 222482 222485 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      222482 222485 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      222482 222485 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_222819_222822 :
    HasPrimeWithExpOne (S_val 222819 222822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222819 222822 ∧ ¬ p ∣ (222822 - 222819) ∧
      ∃ (hNotC : ¬ p ∣ 222822) (hNotB : ¬ p ∣ 222819),
        order_of_C_B_inv_mod_p2 222822 222819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222819 222822 := by
  have hlt : (222819 : Nat) < 222822 := by decide
  have hcop : ¬ 131 ∣ (222822 - 222819) := by decide
  have heq : (222822 : ZMod 131) ^ 13 = (222819 : ZMod 131) ^ 13 := by decide
  have hne : (222822 : ZMod 17161) ^ 13 ≠ (222819 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 222822 := by decide
  have hB : ¬ 131 ∣ 222819 := by decide
  have hexp :=
    has_exp_one_of_zmod 222819 222822 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 222819 222822 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 222819 222822 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      222819 222822 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      222819 222822 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_223154_223157 :
    HasPrimeWithExpOne (S_val 223154 223157) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223154 223157 ∧ ¬ p ∣ (223157 - 223154) ∧
      ∃ (hNotC : ¬ p ∣ 223157) (hNotB : ¬ p ∣ 223154),
        order_of_C_B_inv_mod_p2 223157 223154 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223154 223157 := by
  have hlt : (223154 : Nat) < 223157 := by decide
  have hcop : ¬ 79 ∣ (223157 - 223154) := by decide
  have heq : (223157 : ZMod 79) ^ 13 = (223154 : ZMod 79) ^ 13 := by decide
  have hne : (223157 : ZMod 6241) ^ 13 ≠ (223154 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 223157 := by decide
  have hB : ¬ 79 ∣ 223154 := by decide
  have hexp :=
    has_exp_one_of_zmod 223154 223157 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 223154 223157 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 223154 223157 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      223154 223157 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      223154 223157 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_223492_223495 :
    HasPrimeWithExpOne (S_val 223492 223495) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223492 223495 ∧ ¬ p ∣ (223495 - 223492) ∧
      ∃ (hNotC : ¬ p ∣ 223495) (hNotB : ¬ p ∣ 223492),
        order_of_C_B_inv_mod_p2 223495 223492 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223492 223495 := by
  have hlt : (223492 : Nat) < 223495 := by decide
  have hcop : ¬ 53 ∣ (223495 - 223492) := by decide
  have heq : (223495 : ZMod 53) ^ 13 = (223492 : ZMod 53) ^ 13 := by decide
  have hne : (223495 : ZMod 2809) ^ 13 ≠ (223492 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 223495 := by decide
  have hB : ¬ 53 ∣ 223492 := by decide
  have hexp :=
    has_exp_one_of_zmod 223492 223495 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 223492 223495 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 223492 223495 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      223492 223495 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      223492 223495 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_223825_223828 :
    HasPrimeWithExpOne (S_val 223825 223828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223825 223828 ∧ ¬ p ∣ (223828 - 223825) ∧
      ∃ (hNotC : ¬ p ∣ 223828) (hNotB : ¬ p ∣ 223825),
        order_of_C_B_inv_mod_p2 223828 223825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223825 223828 := by
  have hlt : (223825 : Nat) < 223828 := by decide
  have hcop : ¬ 53 ∣ (223828 - 223825) := by decide
  have heq : (223828 : ZMod 53) ^ 13 = (223825 : ZMod 53) ^ 13 := by decide
  have hne : (223828 : ZMod 2809) ^ 13 ≠ (223825 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 223828 := by decide
  have hB : ¬ 53 ∣ 223825 := by decide
  have hexp :=
    has_exp_one_of_zmod 223825 223828 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 223825 223828 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 223825 223828 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      223825 223828 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      223825 223828 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_224162_224165 :
    HasPrimeWithExpOne (S_val 224162 224165) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224162 224165 ∧ ¬ p ∣ (224165 - 224162) ∧
      ∃ (hNotC : ¬ p ∣ 224165) (hNotB : ¬ p ∣ 224162),
        order_of_C_B_inv_mod_p2 224165 224162 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224162 224165 := by
  have hlt : (224162 : Nat) < 224165 := by decide
  have hcop : ¬ 521 ∣ (224165 - 224162) := by decide
  have heq : (224165 : ZMod 521) ^ 13 = (224162 : ZMod 521) ^ 13 := by decide
  have hne : (224165 : ZMod 271441) ^ 13 ≠ (224162 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 224165 := by decide
  have hB : ¬ 521 ∣ 224162 := by decide
  have hexp :=
    has_exp_one_of_zmod 224162 224165 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 224162 224165 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 224162 224165 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      224162 224165 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      224162 224165 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_224497_224500 :
    HasPrimeWithExpOne (S_val 224497 224500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224497 224500 ∧ ¬ p ∣ (224500 - 224497) ∧
      ∃ (hNotC : ¬ p ∣ 224500) (hNotB : ¬ p ∣ 224497),
        order_of_C_B_inv_mod_p2 224500 224497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224497 224500 := by
  have hlt : (224497 : Nat) < 224500 := by decide
  have hcop : ¬ 79 ∣ (224500 - 224497) := by decide
  have heq : (224500 : ZMod 79) ^ 13 = (224497 : ZMod 79) ^ 13 := by decide
  have hne : (224500 : ZMod 6241) ^ 13 ≠ (224497 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 224500 := by decide
  have hB : ¬ 79 ∣ 224497 := by decide
  have hexp :=
    has_exp_one_of_zmod 224497 224500 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 224497 224500 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 224497 224500 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      224497 224500 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      224497 224500 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_224832_224835 :
    HasPrimeWithExpOne (S_val 224832 224835) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224832 224835 ∧ ¬ p ∣ (224835 - 224832) ∧
      ∃ (hNotC : ¬ p ∣ 224835) (hNotB : ¬ p ∣ 224832),
        order_of_C_B_inv_mod_p2 224835 224832 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224832 224835 := by
  have hlt : (224832 : Nat) < 224835 := by decide
  have hcop : ¬ 53 ∣ (224835 - 224832) := by decide
  have heq : (224835 : ZMod 53) ^ 13 = (224832 : ZMod 53) ^ 13 := by decide
  have hne : (224835 : ZMod 2809) ^ 13 ≠ (224832 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 224835 := by decide
  have hB : ¬ 53 ∣ 224832 := by decide
  have hexp :=
    has_exp_one_of_zmod 224832 224835 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 224832 224835 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 224832 224835 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      224832 224835 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      224832 224835 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_225168_225171 :
    HasPrimeWithExpOne (S_val 225168 225171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225168 225171 ∧ ¬ p ∣ (225171 - 225168) ∧
      ∃ (hNotC : ¬ p ∣ 225171) (hNotB : ¬ p ∣ 225168),
        order_of_C_B_inv_mod_p2 225171 225168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225168 225171 := by
  have hlt : (225168 : Nat) < 225171 := by decide
  have hcop : ¬ 79 ∣ (225171 - 225168) := by decide
  have heq : (225171 : ZMod 79) ^ 13 = (225168 : ZMod 79) ^ 13 := by decide
  have hne : (225171 : ZMod 6241) ^ 13 ≠ (225168 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 225171 := by decide
  have hB : ¬ 79 ∣ 225168 := by decide
  have hexp :=
    has_exp_one_of_zmod 225168 225171 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 225168 225171 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 225168 225171 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      225168 225171 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      225168 225171 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_225505_225508 :
    HasPrimeWithExpOne (S_val 225505 225508) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225505 225508 ∧ ¬ p ∣ (225508 - 225505) ∧
      ∃ (hNotC : ¬ p ∣ 225508) (hNotB : ¬ p ∣ 225505),
        order_of_C_B_inv_mod_p2 225508 225505 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225505 225508 := by
  have hlt : (225505 : Nat) < 225508 := by decide
  have hcop : ¬ 131 ∣ (225508 - 225505) := by decide
  have heq : (225508 : ZMod 131) ^ 13 = (225505 : ZMod 131) ^ 13 := by decide
  have hne : (225508 : ZMod 17161) ^ 13 ≠ (225505 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 225508 := by decide
  have hB : ¬ 131 ∣ 225505 := by decide
  have hexp :=
    has_exp_one_of_zmod 225505 225508 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 225505 225508 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 225505 225508 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      225505 225508 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      225505 225508 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_225839_225842 :
    HasPrimeWithExpOne (S_val 225839 225842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225839 225842 ∧ ¬ p ∣ (225842 - 225839) ∧
      ∃ (hNotC : ¬ p ∣ 225842) (hNotB : ¬ p ∣ 225839),
        order_of_C_B_inv_mod_p2 225842 225839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225839 225842 := by
  have hlt : (225839 : Nat) < 225842 := by decide
  have hcop : ¬ 53 ∣ (225842 - 225839) := by decide
  have heq : (225842 : ZMod 53) ^ 13 = (225839 : ZMod 53) ^ 13 := by decide
  have hne : (225842 : ZMod 2809) ^ 13 ≠ (225839 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 225842 := by decide
  have hB : ¬ 53 ∣ 225839 := by decide
  have hexp :=
    has_exp_one_of_zmod 225839 225842 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 225839 225842 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 225839 225842 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      225839 225842 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      225839 225842 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_226174_226177 :
    HasPrimeWithExpOne (S_val 226174 226177) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226174 226177 ∧ ¬ p ∣ (226177 - 226174) ∧
      ∃ (hNotC : ¬ p ∣ 226177) (hNotB : ¬ p ∣ 226174),
        order_of_C_B_inv_mod_p2 226177 226174 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226174 226177 := by
  have hlt : (226174 : Nat) < 226177 := by decide
  have hcop : ¬ 131 ∣ (226177 - 226174) := by decide
  have heq : (226177 : ZMod 131) ^ 13 = (226174 : ZMod 131) ^ 13 := by decide
  have hne : (226177 : ZMod 17161) ^ 13 ≠ (226174 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 226177 := by decide
  have hB : ¬ 131 ∣ 226174 := by decide
  have hexp :=
    has_exp_one_of_zmod 226174 226177 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 226174 226177 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 226174 226177 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      226174 226177 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      226174 226177 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_226511_226514 :
    HasPrimeWithExpOne (S_val 226511 226514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226511 226514 ∧ ¬ p ∣ (226514 - 226511) ∧
      ∃ (hNotC : ¬ p ∣ 226514) (hNotB : ¬ p ∣ 226511),
        order_of_C_B_inv_mod_p2 226514 226511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226511 226514 := by
  have hlt : (226511 : Nat) < 226514 := by decide
  have hcop : ¬ 79 ∣ (226514 - 226511) := by decide
  have heq : (226514 : ZMod 79) ^ 13 = (226511 : ZMod 79) ^ 13 := by decide
  have hne : (226514 : ZMod 6241) ^ 13 ≠ (226511 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 226514 := by decide
  have hB : ¬ 79 ∣ 226511 := by decide
  have hexp :=
    has_exp_one_of_zmod 226511 226514 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 226511 226514 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 226511 226514 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      226511 226514 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      226511 226514 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_226846_226849 :
    HasPrimeWithExpOne (S_val 226846 226849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226846 226849 ∧ ¬ p ∣ (226849 - 226846) ∧
      ∃ (hNotC : ¬ p ∣ 226849) (hNotB : ¬ p ∣ 226846),
        order_of_C_B_inv_mod_p2 226849 226846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226846 226849 := by
  have hlt : (226846 : Nat) < 226849 := by decide
  have hcop : ¬ 53 ∣ (226849 - 226846) := by decide
  have heq : (226849 : ZMod 53) ^ 13 = (226846 : ZMod 53) ^ 13 := by decide
  have hne : (226849 : ZMod 2809) ^ 13 ≠ (226846 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 226849 := by decide
  have hB : ¬ 53 ∣ 226846 := by decide
  have hexp :=
    has_exp_one_of_zmod 226846 226849 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 226846 226849 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 226846 226849 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      226846 226849 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      226846 226849 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_227183_227186 :
    HasPrimeWithExpOne (S_val 227183 227186) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227183 227186 ∧ ¬ p ∣ (227186 - 227183) ∧
      ∃ (hNotC : ¬ p ∣ 227186) (hNotB : ¬ p ∣ 227183),
        order_of_C_B_inv_mod_p2 227186 227183 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227183 227186 := by
  have hlt : (227183 : Nat) < 227186 := by decide
  have hcop : ¬ 79 ∣ (227186 - 227183) := by decide
  have heq : (227186 : ZMod 79) ^ 13 = (227183 : ZMod 79) ^ 13 := by decide
  have hne : (227186 : ZMod 6241) ^ 13 ≠ (227183 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 227186 := by decide
  have hB : ¬ 79 ∣ 227183 := by decide
  have hexp :=
    has_exp_one_of_zmod 227183 227186 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 227183 227186 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 227183 227186 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      227183 227186 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      227183 227186 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_227516_227519 :
    HasPrimeWithExpOne (S_val 227516 227519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227516 227519 ∧ ¬ p ∣ (227519 - 227516) ∧
      ∃ (hNotC : ¬ p ∣ 227519) (hNotB : ¬ p ∣ 227516),
        order_of_C_B_inv_mod_p2 227519 227516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227516 227519 := by
  have hlt : (227516 : Nat) < 227519 := by decide
  have hcop : ¬ 53 ∣ (227519 - 227516) := by decide
  have heq : (227519 : ZMod 53) ^ 13 = (227516 : ZMod 53) ^ 13 := by decide
  have hne : (227519 : ZMod 2809) ^ 13 ≠ (227516 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 227519 := by decide
  have hB : ¬ 53 ∣ 227516 := by decide
  have hexp :=
    has_exp_one_of_zmod 227516 227519 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 227516 227519 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 227516 227519 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      227516 227519 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      227516 227519 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_227853_227856 :
    HasPrimeWithExpOne (S_val 227853 227856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227853 227856 ∧ ¬ p ∣ (227856 - 227853) ∧
      ∃ (hNotC : ¬ p ∣ 227856) (hNotB : ¬ p ∣ 227853),
        order_of_C_B_inv_mod_p2 227856 227853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227853 227856 := by
  have hlt : (227853 : Nat) < 227856 := by decide
  have hcop : ¬ 53 ∣ (227856 - 227853) := by decide
  have heq : (227856 : ZMod 53) ^ 13 = (227853 : ZMod 53) ^ 13 := by decide
  have hne : (227856 : ZMod 2809) ^ 13 ≠ (227853 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 227856 := by decide
  have hB : ¬ 53 ∣ 227853 := by decide
  have hexp :=
    has_exp_one_of_zmod 227853 227856 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 227853 227856 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 227853 227856 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      227853 227856 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      227853 227856 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_228190_228193 :
    HasPrimeWithExpOne (S_val 228190 228193) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228190 228193 ∧ ¬ p ∣ (228193 - 228190) ∧
      ∃ (hNotC : ¬ p ∣ 228193) (hNotB : ¬ p ∣ 228190),
        order_of_C_B_inv_mod_p2 228193 228190 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228190 228193 := by
  have hlt : (228190 : Nat) < 228193 := by decide
  have hcop : ¬ 131 ∣ (228193 - 228190) := by decide
  have heq : (228193 : ZMod 131) ^ 13 = (228190 : ZMod 131) ^ 13 := by decide
  have hne : (228193 : ZMod 17161) ^ 13 ≠ (228190 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 228193 := by decide
  have hB : ¬ 131 ∣ 228190 := by decide
  have hexp :=
    has_exp_one_of_zmod 228190 228193 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 228190 228193 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 228190 228193 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      228190 228193 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      228190 228193 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_228524_228527 :
    HasPrimeWithExpOne (S_val 228524 228527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228524 228527 ∧ ¬ p ∣ (228527 - 228524) ∧
      ∃ (hNotC : ¬ p ∣ 228527) (hNotB : ¬ p ∣ 228524),
        order_of_C_B_inv_mod_p2 228527 228524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228524 228527 := by
  have hlt : (228524 : Nat) < 228527 := by decide
  have hcop : ¬ 131 ∣ (228527 - 228524) := by decide
  have heq : (228527 : ZMod 131) ^ 13 = (228524 : ZMod 131) ^ 13 := by decide
  have hne : (228527 : ZMod 17161) ^ 13 ≠ (228524 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 228527 := by decide
  have hB : ¬ 131 ∣ 228524 := by decide
  have hexp :=
    has_exp_one_of_zmod 228524 228527 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 228524 228527 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 228524 228527 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      228524 228527 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      228524 228527 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_228859_228862 :
    HasPrimeWithExpOne (S_val 228859 228862) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228859 228862 ∧ ¬ p ∣ (228862 - 228859) ∧
      ∃ (hNotC : ¬ p ∣ 228862) (hNotB : ¬ p ∣ 228859),
        order_of_C_B_inv_mod_p2 228862 228859 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228859 228862 := by
  have hlt : (228859 : Nat) < 228862 := by decide
  have hcop : ¬ 53 ∣ (228862 - 228859) := by decide
  have heq : (228862 : ZMod 53) ^ 13 = (228859 : ZMod 53) ^ 13 := by decide
  have hne : (228862 : ZMod 2809) ^ 13 ≠ (228859 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 228862 := by decide
  have hB : ¬ 53 ∣ 228859 := by decide
  have hexp :=
    has_exp_one_of_zmod 228859 228862 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 228859 228862 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 228859 228862 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      228859 228862 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      228859 228862 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_229196_229199 :
    HasPrimeWithExpOne (S_val 229196 229199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229196 229199 ∧ ¬ p ∣ (229199 - 229196) ∧
      ∃ (hNotC : ¬ p ∣ 229199) (hNotB : ¬ p ∣ 229196),
        order_of_C_B_inv_mod_p2 229199 229196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229196 229199 := by
  have hlt : (229196 : Nat) < 229199 := by decide
  have hcop : ¬ 157 ∣ (229199 - 229196) := by decide
  have heq : (229199 : ZMod 157) ^ 13 = (229196 : ZMod 157) ^ 13 := by decide
  have hne : (229199 : ZMod 24649) ^ 13 ≠ (229196 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 229199 := by decide
  have hB : ¬ 157 ∣ 229196 := by decide
  have hexp :=
    has_exp_one_of_zmod 229196 229199 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 229196 229199 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 229196 229199 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      229196 229199 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      229196 229199 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_229530_229533 :
    HasPrimeWithExpOne (S_val 229530 229533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229530 229533 ∧ ¬ p ∣ (229533 - 229530) ∧
      ∃ (hNotC : ¬ p ∣ 229533) (hNotB : ¬ p ∣ 229530),
        order_of_C_B_inv_mod_p2 229533 229530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229530 229533 := by
  have hlt : (229530 : Nat) < 229533 := by decide
  have hcop : ¬ 53 ∣ (229533 - 229530) := by decide
  have heq : (229533 : ZMod 53) ^ 13 = (229530 : ZMod 53) ^ 13 := by decide
  have hne : (229533 : ZMod 2809) ^ 13 ≠ (229530 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 229533 := by decide
  have hB : ¬ 53 ∣ 229530 := by decide
  have hexp :=
    has_exp_one_of_zmod 229530 229533 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 229530 229533 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 229530 229533 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      229530 229533 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      229530 229533 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_229866_229869 :
    HasPrimeWithExpOne (S_val 229866 229869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229866 229869 ∧ ¬ p ∣ (229869 - 229866) ∧
      ∃ (hNotC : ¬ p ∣ 229869) (hNotB : ¬ p ∣ 229866),
        order_of_C_B_inv_mod_p2 229869 229866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229866 229869 := by
  have hlt : (229866 : Nat) < 229869 := by decide
  have hcop : ¬ 53 ∣ (229869 - 229866) := by decide
  have heq : (229869 : ZMod 53) ^ 13 = (229866 : ZMod 53) ^ 13 := by decide
  have hne : (229869 : ZMod 2809) ^ 13 ≠ (229866 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 229869 := by decide
  have hB : ¬ 53 ∣ 229866 := by decide
  have hexp :=
    has_exp_one_of_zmod 229866 229869 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 229866 229869 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 229866 229869 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      229866 229869 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      229866 229869 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_230203_230206 :
    HasPrimeWithExpOne (S_val 230203 230206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230203 230206 ∧ ¬ p ∣ (230206 - 230203) ∧
      ∃ (hNotC : ¬ p ∣ 230206) (hNotB : ¬ p ∣ 230203),
        order_of_C_B_inv_mod_p2 230206 230203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230203 230206 := by
  have hlt : (230203 : Nat) < 230206 := by decide
  have hcop : ¬ 443 ∣ (230206 - 230203) := by decide
  have heq : (230206 : ZMod 443) ^ 13 = (230203 : ZMod 443) ^ 13 := by decide
  have hne : (230206 : ZMod 196249) ^ 13 ≠ (230203 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 230206 := by decide
  have hB : ¬ 443 ∣ 230203 := by decide
  have hexp :=
    has_exp_one_of_zmod 230203 230206 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 230203 230206 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 230203 230206 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      230203 230206 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      230203 230206 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_230537_230540 :
    HasPrimeWithExpOne (S_val 230537 230540) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230537 230540 ∧ ¬ p ∣ (230540 - 230537) ∧
      ∃ (hNotC : ¬ p ∣ 230540) (hNotB : ¬ p ∣ 230537),
        order_of_C_B_inv_mod_p2 230540 230537 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230537 230540 := by
  have hlt : (230537 : Nat) < 230540 := by decide
  have hcop : ¬ 53 ∣ (230540 - 230537) := by decide
  have heq : (230540 : ZMod 53) ^ 13 = (230537 : ZMod 53) ^ 13 := by decide
  have hne : (230540 : ZMod 2809) ^ 13 ≠ (230537 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 230540 := by decide
  have hB : ¬ 53 ∣ 230537 := by decide
  have hexp :=
    has_exp_one_of_zmod 230537 230540 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 230537 230540 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 230537 230540 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      230537 230540 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      230537 230540 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_230873_230876 :
    HasPrimeWithExpOne (S_val 230873 230876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230873 230876 ∧ ¬ p ∣ (230876 - 230873) ∧
      ∃ (hNotC : ¬ p ∣ 230876) (hNotB : ¬ p ∣ 230873),
        order_of_C_B_inv_mod_p2 230876 230873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230873 230876 := by
  have hlt : (230873 : Nat) < 230876 := by decide
  have hcop : ¬ 53 ∣ (230876 - 230873) := by decide
  have heq : (230876 : ZMod 53) ^ 13 = (230873 : ZMod 53) ^ 13 := by decide
  have hne : (230876 : ZMod 2809) ^ 13 ≠ (230873 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 230876 := by decide
  have hB : ¬ 53 ∣ 230873 := by decide
  have hexp :=
    has_exp_one_of_zmod 230873 230876 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 230873 230876 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 230873 230876 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      230873 230876 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      230873 230876 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_231208_231211 :
    HasPrimeWithExpOne (S_val 231208 231211) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231208 231211 ∧ ¬ p ∣ (231211 - 231208) ∧
      ∃ (hNotC : ¬ p ∣ 231211) (hNotB : ¬ p ∣ 231208),
        order_of_C_B_inv_mod_p2 231211 231208 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231208 231211 := by
  have hlt : (231208 : Nat) < 231211 := by decide
  have hcop : ¬ 157 ∣ (231211 - 231208) := by decide
  have heq : (231211 : ZMod 157) ^ 13 = (231208 : ZMod 157) ^ 13 := by decide
  have hne : (231211 : ZMod 24649) ^ 13 ≠ (231208 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 231211 := by decide
  have hB : ¬ 157 ∣ 231208 := by decide
  have hexp :=
    has_exp_one_of_zmod 231208 231211 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 231208 231211 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 231208 231211 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      231208 231211 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      231208 231211 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_231544_231547 :
    HasPrimeWithExpOne (S_val 231544 231547) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231544 231547 ∧ ¬ p ∣ (231547 - 231544) ∧
      ∃ (hNotC : ¬ p ∣ 231547) (hNotB : ¬ p ∣ 231544),
        order_of_C_B_inv_mod_p2 231547 231544 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231544 231547 := by
  have hlt : (231544 : Nat) < 231547 := by decide
  have hcop : ¬ 53 ∣ (231547 - 231544) := by decide
  have heq : (231547 : ZMod 53) ^ 13 = (231544 : ZMod 53) ^ 13 := by decide
  have hne : (231547 : ZMod 2809) ^ 13 ≠ (231544 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 231547 := by decide
  have hB : ¬ 53 ∣ 231544 := by decide
  have hexp :=
    has_exp_one_of_zmod 231544 231547 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 231544 231547 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 231544 231547 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      231544 231547 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      231544 231547 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_231879_231882 :
    HasPrimeWithExpOne (S_val 231879 231882) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231879 231882 ∧ ¬ p ∣ (231882 - 231879) ∧
      ∃ (hNotC : ¬ p ∣ 231882) (hNotB : ¬ p ∣ 231879),
        order_of_C_B_inv_mod_p2 231882 231879 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231879 231882 := by
  have hlt : (231879 : Nat) < 231882 := by decide
  have hcop : ¬ 53 ∣ (231882 - 231879) := by decide
  have heq : (231882 : ZMod 53) ^ 13 = (231879 : ZMod 53) ^ 13 := by decide
  have hne : (231882 : ZMod 2809) ^ 13 ≠ (231879 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 231882 := by decide
  have hB : ¬ 53 ∣ 231879 := by decide
  have hexp :=
    has_exp_one_of_zmod 231879 231882 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 231879 231882 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 231879 231882 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      231879 231882 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      231879 231882 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_232215_232218 :
    HasPrimeWithExpOne (S_val 232215 232218) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232215 232218 ∧ ¬ p ∣ (232218 - 232215) ∧
      ∃ (hNotC : ¬ p ∣ 232218) (hNotB : ¬ p ∣ 232215),
        order_of_C_B_inv_mod_p2 232218 232215 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232215 232218 := by
  have hlt : (232215 : Nat) < 232218 := by decide
  have hcop : ¬ 79 ∣ (232218 - 232215) := by decide
  have heq : (232218 : ZMod 79) ^ 13 = (232215 : ZMod 79) ^ 13 := by decide
  have hne : (232218 : ZMod 6241) ^ 13 ≠ (232215 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 232218 := by decide
  have hB : ¬ 79 ∣ 232215 := by decide
  have hexp :=
    has_exp_one_of_zmod 232215 232218 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 232215 232218 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 232215 232218 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      232215 232218 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      232215 232218 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_232551_232554 :
    HasPrimeWithExpOne (S_val 232551 232554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232551 232554 ∧ ¬ p ∣ (232554 - 232551) ∧
      ∃ (hNotC : ¬ p ∣ 232554) (hNotB : ¬ p ∣ 232551),
        order_of_C_B_inv_mod_p2 232554 232551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232551 232554 := by
  have hlt : (232551 : Nat) < 232554 := by decide
  have hcop : ¬ 53 ∣ (232554 - 232551) := by decide
  have heq : (232554 : ZMod 53) ^ 13 = (232551 : ZMod 53) ^ 13 := by decide
  have hne : (232554 : ZMod 2809) ^ 13 ≠ (232551 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 232554 := by decide
  have hB : ¬ 53 ∣ 232551 := by decide
  have hexp :=
    has_exp_one_of_zmod 232551 232554 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 232551 232554 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 232551 232554 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      232551 232554 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      232551 232554 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_232886_232889 :
    HasPrimeWithExpOne (S_val 232886 232889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232886 232889 ∧ ¬ p ∣ (232889 - 232886) ∧
      ∃ (hNotC : ¬ p ∣ 232889) (hNotB : ¬ p ∣ 232886),
        order_of_C_B_inv_mod_p2 232889 232886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232886 232889 := by
  have hlt : (232886 : Nat) < 232889 := by decide
  have hcop : ¬ 53 ∣ (232889 - 232886) := by decide
  have heq : (232889 : ZMod 53) ^ 13 = (232886 : ZMod 53) ^ 13 := by decide
  have hne : (232889 : ZMod 2809) ^ 13 ≠ (232886 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 232889 := by decide
  have hB : ¬ 53 ∣ 232886 := by decide
  have hexp :=
    has_exp_one_of_zmod 232886 232889 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 232886 232889 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 232886 232889 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      232886 232889 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      232886 232889 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_233222_233225 :
    HasPrimeWithExpOne (S_val 233222 233225) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233222 233225 ∧ ¬ p ∣ (233225 - 233222) ∧
      ∃ (hNotC : ¬ p ∣ 233225) (hNotB : ¬ p ∣ 233222),
        order_of_C_B_inv_mod_p2 233225 233222 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233222 233225 := by
  have hlt : (233222 : Nat) < 233225 := by decide
  have hcop : ¬ 79 ∣ (233225 - 233222) := by decide
  have heq : (233225 : ZMod 79) ^ 13 = (233222 : ZMod 79) ^ 13 := by decide
  have hne : (233225 : ZMod 6241) ^ 13 ≠ (233222 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 233225 := by decide
  have hB : ¬ 79 ∣ 233222 := by decide
  have hexp :=
    has_exp_one_of_zmod 233222 233225 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 233222 233225 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 233222 233225 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      233222 233225 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      233222 233225 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_233558_233561 :
    HasPrimeWithExpOne (S_val 233558 233561) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233558 233561 ∧ ¬ p ∣ (233561 - 233558) ∧
      ∃ (hNotC : ¬ p ∣ 233561) (hNotB : ¬ p ∣ 233558),
        order_of_C_B_inv_mod_p2 233561 233558 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233558 233561 := by
  have hlt : (233558 : Nat) < 233561 := by decide
  have hcop : ¬ 53 ∣ (233561 - 233558) := by decide
  have heq : (233561 : ZMod 53) ^ 13 = (233558 : ZMod 53) ^ 13 := by decide
  have hne : (233561 : ZMod 2809) ^ 13 ≠ (233558 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 233561 := by decide
  have hB : ¬ 53 ∣ 233558 := by decide
  have hexp :=
    has_exp_one_of_zmod 233558 233561 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 233558 233561 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 233558 233561 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      233558 233561 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      233558 233561 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_233893_233896 :
    HasPrimeWithExpOne (S_val 233893 233896) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233893 233896 ∧ ¬ p ∣ (233896 - 233893) ∧
      ∃ (hNotC : ¬ p ∣ 233896) (hNotB : ¬ p ∣ 233893),
        order_of_C_B_inv_mod_p2 233896 233893 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233893 233896 := by
  have hlt : (233893 : Nat) < 233896 := by decide
  have hcop : ¬ 53 ∣ (233896 - 233893) := by decide
  have heq : (233896 : ZMod 53) ^ 13 = (233893 : ZMod 53) ^ 13 := by decide
  have hne : (233896 : ZMod 2809) ^ 13 ≠ (233893 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 233896 := by decide
  have hB : ¬ 53 ∣ 233893 := by decide
  have hexp :=
    has_exp_one_of_zmod 233893 233896 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 233893 233896 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 233893 233896 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      233893 233896 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      233893 233896 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_234226_234229 :
    HasPrimeWithExpOne (S_val 234226 234229) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234226 234229 ∧ ¬ p ∣ (234229 - 234226) ∧
      ∃ (hNotC : ¬ p ∣ 234229) (hNotB : ¬ p ∣ 234226),
        order_of_C_B_inv_mod_p2 234229 234226 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234226 234229 := by
  have hlt : (234226 : Nat) < 234229 := by decide
  have hcop : ¬ 521 ∣ (234229 - 234226) := by decide
  have heq : (234229 : ZMod 521) ^ 13 = (234226 : ZMod 521) ^ 13 := by decide
  have hne : (234229 : ZMod 271441) ^ 13 ≠ (234226 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 234229 := by decide
  have hB : ¬ 521 ∣ 234226 := by decide
  have hexp :=
    has_exp_one_of_zmod 234226 234229 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 234226 234229 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 234226 234229 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      234226 234229 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      234226 234229 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_234564_234567 :
    HasPrimeWithExpOne (S_val 234564 234567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234564 234567 ∧ ¬ p ∣ (234567 - 234564) ∧
      ∃ (hNotC : ¬ p ∣ 234567) (hNotB : ¬ p ∣ 234564),
        order_of_C_B_inv_mod_p2 234567 234564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234564 234567 := by
  have hlt : (234564 : Nat) < 234567 := by decide
  have hcop : ¬ 79 ∣ (234567 - 234564) := by decide
  have heq : (234567 : ZMod 79) ^ 13 = (234564 : ZMod 79) ^ 13 := by decide
  have hne : (234567 : ZMod 6241) ^ 13 ≠ (234564 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 234567 := by decide
  have hB : ¬ 79 ∣ 234564 := by decide
  have hexp :=
    has_exp_one_of_zmod 234564 234567 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 234564 234567 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 234564 234567 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      234564 234567 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      234564 234567 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_234900_234903 :
    HasPrimeWithExpOne (S_val 234900 234903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234900 234903 ∧ ¬ p ∣ (234903 - 234900) ∧
      ∃ (hNotC : ¬ p ∣ 234903) (hNotB : ¬ p ∣ 234900),
        order_of_C_B_inv_mod_p2 234903 234900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234900 234903 := by
  have hlt : (234900 : Nat) < 234903 := by decide
  have hcop : ¬ 53 ∣ (234903 - 234900) := by decide
  have heq : (234903 : ZMod 53) ^ 13 = (234900 : ZMod 53) ^ 13 := by decide
  have hne : (234903 : ZMod 2809) ^ 13 ≠ (234900 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 234903 := by decide
  have hB : ¬ 53 ∣ 234900 := by decide
  have hexp :=
    has_exp_one_of_zmod 234900 234903 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 234900 234903 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 234900 234903 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      234900 234903 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      234900 234903 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_235235_235238 :
    HasPrimeWithExpOne (S_val 235235 235238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235235 235238 ∧ ¬ p ∣ (235238 - 235235) ∧
      ∃ (hNotC : ¬ p ∣ 235238) (hNotB : ¬ p ∣ 235235),
        order_of_C_B_inv_mod_p2 235238 235235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235235 235238 := by
  have hlt : (235235 : Nat) < 235238 := by decide
  have hcop : ¬ 131 ∣ (235238 - 235235) := by decide
  have heq : (235238 : ZMod 131) ^ 13 = (235235 : ZMod 131) ^ 13 := by decide
  have hne : (235238 : ZMod 17161) ^ 13 ≠ (235235 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 235238 := by decide
  have hB : ¬ 131 ∣ 235235 := by decide
  have hexp :=
    has_exp_one_of_zmod 235235 235238 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 235235 235238 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 235235 235238 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      235235 235238 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      235235 235238 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_235572_235575 :
    HasPrimeWithExpOne (S_val 235572 235575) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235572 235575 ∧ ¬ p ∣ (235575 - 235572) ∧
      ∃ (hNotC : ¬ p ∣ 235575) (hNotB : ¬ p ∣ 235572),
        order_of_C_B_inv_mod_p2 235575 235572 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235572 235575 := by
  have hlt : (235572 : Nat) < 235575 := by decide
  have hcop : ¬ 53 ∣ (235575 - 235572) := by decide
  have heq : (235575 : ZMod 53) ^ 13 = (235572 : ZMod 53) ^ 13 := by decide
  have hne : (235575 : ZMod 2809) ^ 13 ≠ (235572 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 235575 := by decide
  have hB : ¬ 53 ∣ 235572 := by decide
  have hexp :=
    has_exp_one_of_zmod 235572 235575 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 235572 235575 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 235572 235575 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      235572 235575 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      235572 235575 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_235906_235909 :
    HasPrimeWithExpOne (S_val 235906 235909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235906 235909 ∧ ¬ p ∣ (235909 - 235906) ∧
      ∃ (hNotC : ¬ p ∣ 235909) (hNotB : ¬ p ∣ 235906),
        order_of_C_B_inv_mod_p2 235909 235906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235906 235909 := by
  have hlt : (235906 : Nat) < 235909 := by decide
  have hcop : ¬ 79 ∣ (235909 - 235906) := by decide
  have heq : (235909 : ZMod 79) ^ 13 = (235906 : ZMod 79) ^ 13 := by decide
  have hne : (235909 : ZMod 6241) ^ 13 ≠ (235906 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 235909 := by decide
  have hB : ¬ 79 ∣ 235906 := by decide
  have hexp :=
    has_exp_one_of_zmod 235906 235909 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 235906 235909 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 235906 235909 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      235906 235909 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      235906 235909 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_236243_236246 :
    HasPrimeWithExpOne (S_val 236243 236246) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236243 236246 ∧ ¬ p ∣ (236246 - 236243) ∧
      ∃ (hNotC : ¬ p ∣ 236246) (hNotB : ¬ p ∣ 236243),
        order_of_C_B_inv_mod_p2 236246 236243 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236243 236246 := by
  have hlt : (236243 : Nat) < 236246 := by decide
  have hcop : ¬ 547 ∣ (236246 - 236243) := by decide
  have heq : (236246 : ZMod 547) ^ 13 = (236243 : ZMod 547) ^ 13 := by decide
  have hne : (236246 : ZMod 299209) ^ 13 ≠ (236243 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 236246 := by decide
  have hB : ¬ 547 ∣ 236243 := by decide
  have hexp :=
    has_exp_one_of_zmod 236243 236246 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 236243 236246 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 236243 236246 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      236243 236246 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      236243 236246 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_236576_236579 :
    HasPrimeWithExpOne (S_val 236576 236579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236576 236579 ∧ ¬ p ∣ (236579 - 236576) ∧
      ∃ (hNotC : ¬ p ∣ 236579) (hNotB : ¬ p ∣ 236576),
        order_of_C_B_inv_mod_p2 236579 236576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236576 236579 := by
  have hlt : (236576 : Nat) < 236579 := by decide
  have hcop : ¬ 53 ∣ (236579 - 236576) := by decide
  have heq : (236579 : ZMod 53) ^ 13 = (236576 : ZMod 53) ^ 13 := by decide
  have hne : (236579 : ZMod 2809) ^ 13 ≠ (236576 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 236579 := by decide
  have hB : ¬ 53 ∣ 236576 := by decide
  have hexp :=
    has_exp_one_of_zmod 236576 236579 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 236576 236579 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 236576 236579 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      236576 236579 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      236576 236579 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_236914_236917 :
    HasPrimeWithExpOne (S_val 236914 236917) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236914 236917 ∧ ¬ p ∣ (236917 - 236914) ∧
      ∃ (hNotC : ¬ p ∣ 236917) (hNotB : ¬ p ∣ 236914),
        order_of_C_B_inv_mod_p2 236917 236914 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236914 236917 := by
  have hlt : (236914 : Nat) < 236917 := by decide
  have hcop : ¬ 53 ∣ (236917 - 236914) := by decide
  have heq : (236917 : ZMod 53) ^ 13 = (236914 : ZMod 53) ^ 13 := by decide
  have hne : (236917 : ZMod 2809) ^ 13 ≠ (236914 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 236917 := by decide
  have hB : ¬ 53 ∣ 236914 := by decide
  have hexp :=
    has_exp_one_of_zmod 236914 236917 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 236914 236917 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 236914 236917 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      236914 236917 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      236914 236917 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_237248_237251 :
    HasPrimeWithExpOne (S_val 237248 237251) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237248 237251 ∧ ¬ p ∣ (237251 - 237248) ∧
      ∃ (hNotC : ¬ p ∣ 237251) (hNotB : ¬ p ∣ 237248),
        order_of_C_B_inv_mod_p2 237251 237248 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237248 237251 := by
  have hlt : (237248 : Nat) < 237251 := by decide
  have hcop : ¬ 157 ∣ (237251 - 237248) := by decide
  have heq : (237251 : ZMod 157) ^ 13 = (237248 : ZMod 157) ^ 13 := by decide
  have hne : (237251 : ZMod 24649) ^ 13 ≠ (237248 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 237251 := by decide
  have hB : ¬ 157 ∣ 237248 := by decide
  have hexp :=
    has_exp_one_of_zmod 237248 237251 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 237248 237251 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 237248 237251 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      237248 237251 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      237248 237251 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_237583_237586 :
    HasPrimeWithExpOne (S_val 237583 237586) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237583 237586 ∧ ¬ p ∣ (237586 - 237583) ∧
      ∃ (hNotC : ¬ p ∣ 237586) (hNotB : ¬ p ∣ 237583),
        order_of_C_B_inv_mod_p2 237586 237583 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237583 237586 := by
  have hlt : (237583 : Nat) < 237586 := by decide
  have hcop : ¬ 53 ∣ (237586 - 237583) := by decide
  have heq : (237586 : ZMod 53) ^ 13 = (237583 : ZMod 53) ^ 13 := by decide
  have hne : (237586 : ZMod 2809) ^ 13 ≠ (237583 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 237586 := by decide
  have hB : ¬ 53 ∣ 237583 := by decide
  have hexp :=
    has_exp_one_of_zmod 237583 237586 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 237583 237586 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 237583 237586 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      237583 237586 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      237583 237586 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_237920_237923 :
    HasPrimeWithExpOne (S_val 237920 237923) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237920 237923 ∧ ¬ p ∣ (237923 - 237920) ∧
      ∃ (hNotC : ¬ p ∣ 237923) (hNotB : ¬ p ∣ 237920),
        order_of_C_B_inv_mod_p2 237923 237920 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237920 237923 := by
  have hlt : (237920 : Nat) < 237923 := by decide
  have hcop : ¬ 443 ∣ (237923 - 237920) := by decide
  have heq : (237923 : ZMod 443) ^ 13 = (237920 : ZMod 443) ^ 13 := by decide
  have hne : (237923 : ZMod 196249) ^ 13 ≠ (237920 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 237923 := by decide
  have hB : ¬ 443 ∣ 237920 := by decide
  have hexp :=
    has_exp_one_of_zmod 237920 237923 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 237920 237923 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 237920 237923 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      237920 237923 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      237920 237923 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_238253_238256 :
    HasPrimeWithExpOne (S_val 238253 238256) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238253 238256 ∧ ¬ p ∣ (238256 - 238253) ∧
      ∃ (hNotC : ¬ p ∣ 238256) (hNotB : ¬ p ∣ 238253),
        order_of_C_B_inv_mod_p2 238256 238253 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238253 238256 := by
  have hlt : (238253 : Nat) < 238256 := by decide
  have hcop : ¬ 53 ∣ (238256 - 238253) := by decide
  have heq : (238256 : ZMod 53) ^ 13 = (238253 : ZMod 53) ^ 13 := by decide
  have hne : (238256 : ZMod 2809) ^ 13 ≠ (238253 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 238256 := by decide
  have hB : ¬ 53 ∣ 238253 := by decide
  have hexp :=
    has_exp_one_of_zmod 238253 238256 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 238253 238256 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 238253 238256 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      238253 238256 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      238253 238256 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_238592_238595 :
    HasPrimeWithExpOne (S_val 238592 238595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238592 238595 ∧ ¬ p ∣ (238595 - 238592) ∧
      ∃ (hNotC : ¬ p ∣ 238595) (hNotB : ¬ p ∣ 238592),
        order_of_C_B_inv_mod_p2 238595 238592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238592 238595 := by
  have hlt : (238592 : Nat) < 238595 := by decide
  have hcop : ¬ 79 ∣ (238595 - 238592) := by decide
  have heq : (238595 : ZMod 79) ^ 13 = (238592 : ZMod 79) ^ 13 := by decide
  have hne : (238595 : ZMod 6241) ^ 13 ≠ (238592 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 238595 := by decide
  have hB : ¬ 79 ∣ 238592 := by decide
  have hexp :=
    has_exp_one_of_zmod 238592 238595 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 238592 238595 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 238592 238595 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      238592 238595 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      238592 238595 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_238928_238931 :
    HasPrimeWithExpOne (S_val 238928 238931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238928 238931 ∧ ¬ p ∣ (238931 - 238928) ∧
      ∃ (hNotC : ¬ p ∣ 238931) (hNotB : ¬ p ∣ 238928),
        order_of_C_B_inv_mod_p2 238931 238928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238928 238931 := by
  have hlt : (238928 : Nat) < 238931 := by decide
  have hcop : ¬ 53 ∣ (238931 - 238928) := by decide
  have heq : (238931 : ZMod 53) ^ 13 = (238928 : ZMod 53) ^ 13 := by decide
  have hne : (238931 : ZMod 2809) ^ 13 ≠ (238928 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 238931 := by decide
  have hB : ¬ 53 ∣ 238928 := by decide
  have hexp :=
    has_exp_one_of_zmod 238928 238931 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 238928 238931 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 238928 238931 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      238928 238931 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      238928 238931 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_239261_239264 :
    HasPrimeWithExpOne (S_val 239261 239264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239261 239264 ∧ ¬ p ∣ (239264 - 239261) ∧
      ∃ (hNotC : ¬ p ∣ 239264) (hNotB : ¬ p ∣ 239261),
        order_of_C_B_inv_mod_p2 239264 239261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239261 239264 := by
  have hlt : (239261 : Nat) < 239264 := by decide
  have hcop : ¬ 131 ∣ (239264 - 239261) := by decide
  have heq : (239264 : ZMod 131) ^ 13 = (239261 : ZMod 131) ^ 13 := by decide
  have hne : (239264 : ZMod 17161) ^ 13 ≠ (239261 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 239264 := by decide
  have hB : ¬ 131 ∣ 239261 := by decide
  have hexp :=
    has_exp_one_of_zmod 239261 239264 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 239261 239264 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 239261 239264 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      239261 239264 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      239261 239264 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_239597_239600 :
    HasPrimeWithExpOne (S_val 239597 239600) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239597 239600 ∧ ¬ p ∣ (239600 - 239597) ∧
      ∃ (hNotC : ¬ p ∣ 239600) (hNotB : ¬ p ∣ 239597),
        order_of_C_B_inv_mod_p2 239600 239597 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239597 239600 := by
  have hlt : (239597 : Nat) < 239600 := by decide
  have hcop : ¬ 53 ∣ (239600 - 239597) := by decide
  have heq : (239600 : ZMod 53) ^ 13 = (239597 : ZMod 53) ^ 13 := by decide
  have hne : (239600 : ZMod 2809) ^ 13 ≠ (239597 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 239600 := by decide
  have hB : ¬ 53 ∣ 239597 := by decide
  have hexp :=
    has_exp_one_of_zmod 239597 239600 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 239597 239600 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 239597 239600 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      239597 239600 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      239597 239600 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_239934_239937 :
    HasPrimeWithExpOne (S_val 239934 239937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239934 239937 ∧ ¬ p ∣ (239937 - 239934) ∧
      ∃ (hNotC : ¬ p ∣ 239937) (hNotB : ¬ p ∣ 239934),
        order_of_C_B_inv_mod_p2 239937 239934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239934 239937 := by
  have hlt : (239934 : Nat) < 239937 := by decide
  have hcop : ¬ 131 ∣ (239937 - 239934) := by decide
  have heq : (239937 : ZMod 131) ^ 13 = (239934 : ZMod 131) ^ 13 := by decide
  have hne : (239937 : ZMod 17161) ^ 13 ≠ (239934 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 239937 := by decide
  have hB : ¬ 131 ∣ 239934 := by decide
  have hexp :=
    has_exp_one_of_zmod 239934 239937 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 239934 239937 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 239934 239937 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      239934 239937 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      239934 239937 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_240267_240270 :
    HasPrimeWithExpOne (S_val 240267 240270) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240267 240270 ∧ ¬ p ∣ (240270 - 240267) ∧
      ∃ (hNotC : ¬ p ∣ 240270) (hNotB : ¬ p ∣ 240267),
        order_of_C_B_inv_mod_p2 240270 240267 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240267 240270 := by
  have hlt : (240267 : Nat) < 240270 := by decide
  have hcop : ¬ 53 ∣ (240270 - 240267) := by decide
  have heq : (240270 : ZMod 53) ^ 13 = (240267 : ZMod 53) ^ 13 := by decide
  have hne : (240270 : ZMod 2809) ^ 13 ≠ (240267 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 240270 := by decide
  have hB : ¬ 53 ∣ 240267 := by decide
  have hexp :=
    has_exp_one_of_zmod 240267 240270 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 240267 240270 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 240267 240270 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      240267 240270 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      240267 240270 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_240604_240607 :
    HasPrimeWithExpOne (S_val 240604 240607) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240604 240607 ∧ ¬ p ∣ (240607 - 240604) ∧
      ∃ (hNotC : ¬ p ∣ 240607) (hNotB : ¬ p ∣ 240604),
        order_of_C_B_inv_mod_p2 240607 240604 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240604 240607 := by
  have hlt : (240604 : Nat) < 240607 := by decide
  have hcop : ¬ 53 ∣ (240607 - 240604) := by decide
  have heq : (240607 : ZMod 53) ^ 13 = (240604 : ZMod 53) ^ 13 := by decide
  have hne : (240607 : ZMod 2809) ^ 13 ≠ (240604 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 240607 := by decide
  have hB : ¬ 53 ∣ 240604 := by decide
  have hexp :=
    has_exp_one_of_zmod 240604 240607 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 240604 240607 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 240604 240607 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      240604 240607 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      240604 240607 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_240942_240945 :
    HasPrimeWithExpOne (S_val 240942 240945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240942 240945 ∧ ¬ p ∣ (240945 - 240942) ∧
      ∃ (hNotC : ¬ p ∣ 240945) (hNotB : ¬ p ∣ 240942),
        order_of_C_B_inv_mod_p2 240945 240942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240942 240945 := by
  have hlt : (240942 : Nat) < 240945 := by decide
  have hcop : ¬ 53 ∣ (240945 - 240942) := by decide
  have heq : (240945 : ZMod 53) ^ 13 = (240942 : ZMod 53) ^ 13 := by decide
  have hne : (240945 : ZMod 2809) ^ 13 ≠ (240942 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 240945 := by decide
  have hB : ¬ 53 ∣ 240942 := by decide
  have hexp :=
    has_exp_one_of_zmod 240942 240945 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 240942 240945 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 240942 240945 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      240942 240945 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      240942 240945 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_241274_241277 :
    HasPrimeWithExpOne (S_val 241274 241277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241274 241277 ∧ ¬ p ∣ (241277 - 241274) ∧
      ∃ (hNotC : ¬ p ∣ 241277) (hNotB : ¬ p ∣ 241274),
        order_of_C_B_inv_mod_p2 241277 241274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241274 241277 := by
  have hlt : (241274 : Nat) < 241277 := by decide
  have hcop : ¬ 53 ∣ (241277 - 241274) := by decide
  have heq : (241277 : ZMod 53) ^ 13 = (241274 : ZMod 53) ^ 13 := by decide
  have hne : (241277 : ZMod 2809) ^ 13 ≠ (241274 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 241277 := by decide
  have hB : ¬ 53 ∣ 241274 := by decide
  have hexp :=
    has_exp_one_of_zmod 241274 241277 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 241274 241277 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 241274 241277 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      241274 241277 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      241274 241277 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_241611_241614 :
    HasPrimeWithExpOne (S_val 241611 241614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241611 241614 ∧ ¬ p ∣ (241614 - 241611) ∧
      ∃ (hNotC : ¬ p ∣ 241614) (hNotB : ¬ p ∣ 241611),
        order_of_C_B_inv_mod_p2 241614 241611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241611 241614 := by
  have hlt : (241611 : Nat) < 241614 := by decide
  have hcop : ¬ 53 ∣ (241614 - 241611) := by decide
  have heq : (241614 : ZMod 53) ^ 13 = (241611 : ZMod 53) ^ 13 := by decide
  have hne : (241614 : ZMod 2809) ^ 13 ≠ (241611 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 241614 := by decide
  have hB : ¬ 53 ∣ 241611 := by decide
  have hexp :=
    has_exp_one_of_zmod 241611 241614 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 241611 241614 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 241611 241614 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      241611 241614 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      241611 241614 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_241945_241948 :
    HasPrimeWithExpOne (S_val 241945 241948) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241945 241948 ∧ ¬ p ∣ (241948 - 241945) ∧
      ∃ (hNotC : ¬ p ∣ 241948) (hNotB : ¬ p ∣ 241945),
        order_of_C_B_inv_mod_p2 241948 241945 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241945 241948 := by
  have hlt : (241945 : Nat) < 241948 := by decide
  have hcop : ¬ 131 ∣ (241948 - 241945) := by decide
  have heq : (241948 : ZMod 131) ^ 13 = (241945 : ZMod 131) ^ 13 := by decide
  have hne : (241948 : ZMod 17161) ^ 13 ≠ (241945 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 241948 := by decide
  have hB : ¬ 131 ∣ 241945 := by decide
  have hexp :=
    has_exp_one_of_zmod 241945 241948 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 241945 241948 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 241945 241948 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      241945 241948 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      241945 241948 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_242282_242285 :
    HasPrimeWithExpOne (S_val 242282 242285) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242282 242285 ∧ ¬ p ∣ (242285 - 242282) ∧
      ∃ (hNotC : ¬ p ∣ 242285) (hNotB : ¬ p ∣ 242282),
        order_of_C_B_inv_mod_p2 242285 242282 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242282 242285 := by
  have hlt : (242282 : Nat) < 242285 := by decide
  have hcop : ¬ 443 ∣ (242285 - 242282) := by decide
  have heq : (242285 : ZMod 443) ^ 13 = (242282 : ZMod 443) ^ 13 := by decide
  have hne : (242285 : ZMod 196249) ^ 13 ≠ (242282 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 242285 := by decide
  have hB : ¬ 443 ∣ 242282 := by decide
  have hexp :=
    has_exp_one_of_zmod 242282 242285 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 242282 242285 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 242282 242285 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      242282 242285 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      242282 242285 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_242618_242621 :
    HasPrimeWithExpOne (S_val 242618 242621) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242618 242621 ∧ ¬ p ∣ (242621 - 242618) ∧
      ∃ (hNotC : ¬ p ∣ 242621) (hNotB : ¬ p ∣ 242618),
        order_of_C_B_inv_mod_p2 242621 242618 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242618 242621 := by
  have hlt : (242618 : Nat) < 242621 := by decide
  have hcop : ¬ 53 ∣ (242621 - 242618) := by decide
  have heq : (242621 : ZMod 53) ^ 13 = (242618 : ZMod 53) ^ 13 := by decide
  have hne : (242621 : ZMod 2809) ^ 13 ≠ (242618 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 242621 := by decide
  have hB : ¬ 53 ∣ 242618 := by decide
  have hexp :=
    has_exp_one_of_zmod 242618 242621 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 242618 242621 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 242618 242621 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      242618 242621 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      242618 242621 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_242956_242959 :
    HasPrimeWithExpOne (S_val 242956 242959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242956 242959 ∧ ¬ p ∣ (242959 - 242956) ∧
      ∃ (hNotC : ¬ p ∣ 242959) (hNotB : ¬ p ∣ 242956),
        order_of_C_B_inv_mod_p2 242959 242956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242956 242959 := by
  have hlt : (242956 : Nat) < 242959 := by decide
  have hcop : ¬ 53 ∣ (242959 - 242956) := by decide
  have heq : (242959 : ZMod 53) ^ 13 = (242956 : ZMod 53) ^ 13 := by decide
  have hne : (242959 : ZMod 2809) ^ 13 ≠ (242956 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 242959 := by decide
  have hB : ¬ 53 ∣ 242956 := by decide
  have hexp :=
    has_exp_one_of_zmod 242956 242959 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 242956 242959 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 242956 242959 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      242956 242959 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      242956 242959 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_243288_243291 :
    HasPrimeWithExpOne (S_val 243288 243291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243288 243291 ∧ ¬ p ∣ (243291 - 243288) ∧
      ∃ (hNotC : ¬ p ∣ 243291) (hNotB : ¬ p ∣ 243288),
        order_of_C_B_inv_mod_p2 243291 243288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243288 243291 := by
  have hlt : (243288 : Nat) < 243291 := by decide
  have hcop : ¬ 53 ∣ (243291 - 243288) := by decide
  have heq : (243291 : ZMod 53) ^ 13 = (243288 : ZMod 53) ^ 13 := by decide
  have hne : (243291 : ZMod 2809) ^ 13 ≠ (243288 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 243291 := by decide
  have hB : ¬ 53 ∣ 243288 := by decide
  have hexp :=
    has_exp_one_of_zmod 243288 243291 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 243288 243291 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 243288 243291 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      243288 243291 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      243288 243291 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_243625_243628 :
    HasPrimeWithExpOne (S_val 243625 243628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243625 243628 ∧ ¬ p ∣ (243628 - 243625) ∧
      ∃ (hNotC : ¬ p ∣ 243628) (hNotB : ¬ p ∣ 243625),
        order_of_C_B_inv_mod_p2 243628 243625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243625 243628 := by
  have hlt : (243625 : Nat) < 243628 := by decide
  have hcop : ¬ 53 ∣ (243628 - 243625) := by decide
  have heq : (243628 : ZMod 53) ^ 13 = (243625 : ZMod 53) ^ 13 := by decide
  have hne : (243628 : ZMod 2809) ^ 13 ≠ (243625 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 243628 := by decide
  have hB : ¬ 53 ∣ 243625 := by decide
  have hexp :=
    has_exp_one_of_zmod 243625 243628 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 243625 243628 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 243625 243628 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      243625 243628 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      243625 243628 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_243960_243963 :
    HasPrimeWithExpOne (S_val 243960 243963) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243960 243963 ∧ ¬ p ∣ (243963 - 243960) ∧
      ∃ (hNotC : ¬ p ∣ 243963) (hNotB : ¬ p ∣ 243960),
        order_of_C_B_inv_mod_p2 243963 243960 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243960 243963 := by
  have hlt : (243960 : Nat) < 243963 := by decide
  have hcop : ¬ 131 ∣ (243963 - 243960) := by decide
  have heq : (243963 : ZMod 131) ^ 13 = (243960 : ZMod 131) ^ 13 := by decide
  have hne : (243963 : ZMod 17161) ^ 13 ≠ (243960 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 243963 := by decide
  have hB : ¬ 131 ∣ 243960 := by decide
  have hexp :=
    has_exp_one_of_zmod 243960 243963 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 243960 243963 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 243960 243963 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      243960 243963 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      243960 243963 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_244295_244298 :
    HasPrimeWithExpOne (S_val 244295 244298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244295 244298 ∧ ¬ p ∣ (244298 - 244295) ∧
      ∃ (hNotC : ¬ p ∣ 244298) (hNotB : ¬ p ∣ 244295),
        order_of_C_B_inv_mod_p2 244298 244295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244295 244298 := by
  have hlt : (244295 : Nat) < 244298 := by decide
  have hcop : ¬ 53 ∣ (244298 - 244295) := by decide
  have heq : (244298 : ZMod 53) ^ 13 = (244295 : ZMod 53) ^ 13 := by decide
  have hne : (244298 : ZMod 2809) ^ 13 ≠ (244295 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 244298 := by decide
  have hB : ¬ 53 ∣ 244295 := by decide
  have hexp :=
    has_exp_one_of_zmod 244295 244298 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 244295 244298 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 244295 244298 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      244295 244298 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      244295 244298 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_244631_244634 :
    HasPrimeWithExpOne (S_val 244631 244634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244631 244634 ∧ ¬ p ∣ (244634 - 244631) ∧
      ∃ (hNotC : ¬ p ∣ 244634) (hNotB : ¬ p ∣ 244631),
        order_of_C_B_inv_mod_p2 244634 244631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244631 244634 := by
  have hlt : (244631 : Nat) < 244634 := by decide
  have hcop : ¬ 131 ∣ (244634 - 244631) := by decide
  have heq : (244634 : ZMod 131) ^ 13 = (244631 : ZMod 131) ^ 13 := by decide
  have hne : (244634 : ZMod 17161) ^ 13 ≠ (244631 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 244634 := by decide
  have hB : ¬ 131 ∣ 244631 := by decide
  have hexp :=
    has_exp_one_of_zmod 244631 244634 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 244631 244634 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 244631 244634 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      244631 244634 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      244631 244634 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_244964_244967 :
    HasPrimeWithExpOne (S_val 244964 244967) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244964 244967 ∧ ¬ p ∣ (244967 - 244964) ∧
      ∃ (hNotC : ¬ p ∣ 244967) (hNotB : ¬ p ∣ 244964),
        order_of_C_B_inv_mod_p2 244967 244964 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244964 244967 := by
  have hlt : (244964 : Nat) < 244967 := by decide
  have hcop : ¬ 79 ∣ (244967 - 244964) := by decide
  have heq : (244967 : ZMod 79) ^ 13 = (244964 : ZMod 79) ^ 13 := by decide
  have hne : (244967 : ZMod 6241) ^ 13 ≠ (244964 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 244967 := by decide
  have hB : ¬ 79 ∣ 244964 := by decide
  have hexp :=
    has_exp_one_of_zmod 244964 244967 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 244964 244967 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 244964 244967 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      244964 244967 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      244964 244967 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_245302_245305 :
    HasPrimeWithExpOne (S_val 245302 245305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245302 245305 ∧ ¬ p ∣ (245305 - 245302) ∧
      ∃ (hNotC : ¬ p ∣ 245305) (hNotB : ¬ p ∣ 245302),
        order_of_C_B_inv_mod_p2 245305 245302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245302 245305 := by
  have hlt : (245302 : Nat) < 245305 := by decide
  have hcop : ¬ 53 ∣ (245305 - 245302) := by decide
  have heq : (245305 : ZMod 53) ^ 13 = (245302 : ZMod 53) ^ 13 := by decide
  have hne : (245305 : ZMod 2809) ^ 13 ≠ (245302 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 245305 := by decide
  have hB : ¬ 53 ∣ 245302 := by decide
  have hexp :=
    has_exp_one_of_zmod 245302 245305 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 245302 245305 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 245302 245305 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      245302 245305 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      245302 245305 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_245639_245642 :
    HasPrimeWithExpOne (S_val 245639 245642) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245639 245642 ∧ ¬ p ∣ (245642 - 245639) ∧
      ∃ (hNotC : ¬ p ∣ 245642) (hNotB : ¬ p ∣ 245639),
        order_of_C_B_inv_mod_p2 245642 245639 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245639 245642 := by
  have hlt : (245639 : Nat) < 245642 := by decide
  have hcop : ¬ 53 ∣ (245642 - 245639) := by decide
  have heq : (245642 : ZMod 53) ^ 13 = (245639 : ZMod 53) ^ 13 := by decide
  have hne : (245642 : ZMod 2809) ^ 13 ≠ (245639 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 245642 := by decide
  have hB : ¬ 53 ∣ 245639 := by decide
  have hexp :=
    has_exp_one_of_zmod 245639 245642 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 245639 245642 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 245639 245642 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      245639 245642 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      245639 245642 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_245972_245975 :
    HasPrimeWithExpOne (S_val 245972 245975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245972 245975 ∧ ¬ p ∣ (245975 - 245972) ∧
      ∃ (hNotC : ¬ p ∣ 245975) (hNotB : ¬ p ∣ 245972),
        order_of_C_B_inv_mod_p2 245975 245972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245972 245975 := by
  have hlt : (245972 : Nat) < 245975 := by decide
  have hcop : ¬ 131 ∣ (245975 - 245972) := by decide
  have heq : (245975 : ZMod 131) ^ 13 = (245972 : ZMod 131) ^ 13 := by decide
  have hne : (245975 : ZMod 17161) ^ 13 ≠ (245972 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 245975 := by decide
  have hB : ¬ 131 ∣ 245972 := by decide
  have hexp :=
    has_exp_one_of_zmod 245972 245975 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 245972 245975 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 245972 245975 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      245972 245975 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      245972 245975 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_246309_246312 :
    HasPrimeWithExpOne (S_val 246309 246312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246309 246312 ∧ ¬ p ∣ (246312 - 246309) ∧
      ∃ (hNotC : ¬ p ∣ 246312) (hNotB : ¬ p ∣ 246309),
        order_of_C_B_inv_mod_p2 246312 246309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246309 246312 := by
  have hlt : (246309 : Nat) < 246312 := by decide
  have hcop : ¬ 53 ∣ (246312 - 246309) := by decide
  have heq : (246312 : ZMod 53) ^ 13 = (246309 : ZMod 53) ^ 13 := by decide
  have hne : (246312 : ZMod 2809) ^ 13 ≠ (246309 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 246312 := by decide
  have hB : ¬ 53 ∣ 246309 := by decide
  have hexp :=
    has_exp_one_of_zmod 246309 246312 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 246309 246312 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 246309 246312 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      246309 246312 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      246309 246312 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_246646_246649 :
    HasPrimeWithExpOne (S_val 246646 246649) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246646 246649 ∧ ¬ p ∣ (246649 - 246646) ∧
      ∃ (hNotC : ¬ p ∣ 246649) (hNotB : ¬ p ∣ 246646),
        order_of_C_B_inv_mod_p2 246649 246646 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246646 246649 := by
  have hlt : (246646 : Nat) < 246649 := by decide
  have hcop : ¬ 53 ∣ (246649 - 246646) := by decide
  have heq : (246649 : ZMod 53) ^ 13 = (246646 : ZMod 53) ^ 13 := by decide
  have hne : (246649 : ZMod 2809) ^ 13 ≠ (246646 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 246649 := by decide
  have hB : ¬ 53 ∣ 246646 := by decide
  have hexp :=
    has_exp_one_of_zmod 246646 246649 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 246646 246649 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 246646 246649 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      246646 246649 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      246646 246649 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_246982_246985 :
    HasPrimeWithExpOne (S_val 246982 246985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246982 246985 ∧ ¬ p ∣ (246985 - 246982) ∧
      ∃ (hNotC : ¬ p ∣ 246985) (hNotB : ¬ p ∣ 246982),
        order_of_C_B_inv_mod_p2 246985 246982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246982 246985 := by
  have hlt : (246982 : Nat) < 246985 := by decide
  have hcop : ¬ 157 ∣ (246985 - 246982) := by decide
  have heq : (246985 : ZMod 157) ^ 13 = (246982 : ZMod 157) ^ 13 := by decide
  have hne : (246985 : ZMod 24649) ^ 13 ≠ (246982 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 246985 := by decide
  have hB : ¬ 157 ∣ 246982 := by decide
  have hexp :=
    has_exp_one_of_zmod 246982 246985 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 246982 246985 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 246982 246985 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      246982 246985 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      246982 246985 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_247316_247319 :
    HasPrimeWithExpOne (S_val 247316 247319) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247316 247319 ∧ ¬ p ∣ (247319 - 247316) ∧
      ∃ (hNotC : ¬ p ∣ 247319) (hNotB : ¬ p ∣ 247316),
        order_of_C_B_inv_mod_p2 247319 247316 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247316 247319 := by
  have hlt : (247316 : Nat) < 247319 := by decide
  have hcop : ¬ 53 ∣ (247319 - 247316) := by decide
  have heq : (247319 : ZMod 53) ^ 13 = (247316 : ZMod 53) ^ 13 := by decide
  have hne : (247319 : ZMod 2809) ^ 13 ≠ (247316 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 247319 := by decide
  have hB : ¬ 53 ∣ 247316 := by decide
  have hexp :=
    has_exp_one_of_zmod 247316 247319 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 247316 247319 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 247316 247319 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      247316 247319 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      247316 247319 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_247652_247655 :
    HasPrimeWithExpOne (S_val 247652 247655) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247652 247655 ∧ ¬ p ∣ (247655 - 247652) ∧
      ∃ (hNotC : ¬ p ∣ 247655) (hNotB : ¬ p ∣ 247652),
        order_of_C_B_inv_mod_p2 247655 247652 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247652 247655 := by
  have hlt : (247652 : Nat) < 247655 := by decide
  have hcop : ¬ 157 ∣ (247655 - 247652) := by decide
  have heq : (247655 : ZMod 157) ^ 13 = (247652 : ZMod 157) ^ 13 := by decide
  have hne : (247655 : ZMod 24649) ^ 13 ≠ (247652 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 247655 := by decide
  have hB : ¬ 157 ∣ 247652 := by decide
  have hexp :=
    has_exp_one_of_zmod 247652 247655 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 247652 247655 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 247652 247655 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      247652 247655 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      247652 247655 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_247987_247990 :
    HasPrimeWithExpOne (S_val 247987 247990) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247987 247990 ∧ ¬ p ∣ (247990 - 247987) ∧
      ∃ (hNotC : ¬ p ∣ 247990) (hNotB : ¬ p ∣ 247987),
        order_of_C_B_inv_mod_p2 247990 247987 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247987 247990 := by
  have hlt : (247987 : Nat) < 247990 := by decide
  have hcop : ¬ 157 ∣ (247990 - 247987) := by decide
  have heq : (247990 : ZMod 157) ^ 13 = (247987 : ZMod 157) ^ 13 := by decide
  have hne : (247990 : ZMod 24649) ^ 13 ≠ (247987 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 247990 := by decide
  have hB : ¬ 157 ∣ 247987 := by decide
  have hexp :=
    has_exp_one_of_zmod 247987 247990 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 247987 247990 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 247987 247990 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      247987 247990 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      247987 247990 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_248323_248326 :
    HasPrimeWithExpOne (S_val 248323 248326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248323 248326 ∧ ¬ p ∣ (248326 - 248323) ∧
      ∃ (hNotC : ¬ p ∣ 248326) (hNotB : ¬ p ∣ 248323),
        order_of_C_B_inv_mod_p2 248326 248323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248323 248326 := by
  have hlt : (248323 : Nat) < 248326 := by decide
  have hcop : ¬ 53 ∣ (248326 - 248323) := by decide
  have heq : (248326 : ZMod 53) ^ 13 = (248323 : ZMod 53) ^ 13 := by decide
  have hne : (248326 : ZMod 2809) ^ 13 ≠ (248323 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 248326 := by decide
  have hB : ¬ 53 ∣ 248323 := by decide
  have hexp :=
    has_exp_one_of_zmod 248323 248326 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 248323 248326 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 248323 248326 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      248323 248326 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      248323 248326 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_248660_248663 :
    HasPrimeWithExpOne (S_val 248660 248663) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248660 248663 ∧ ¬ p ∣ (248663 - 248660) ∧
      ∃ (hNotC : ¬ p ∣ 248663) (hNotB : ¬ p ∣ 248660),
        order_of_C_B_inv_mod_p2 248663 248660 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248660 248663 := by
  have hlt : (248660 : Nat) < 248663 := by decide
  have hcop : ¬ 53 ∣ (248663 - 248660) := by decide
  have heq : (248663 : ZMod 53) ^ 13 = (248660 : ZMod 53) ^ 13 := by decide
  have hne : (248663 : ZMod 2809) ^ 13 ≠ (248660 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 248663 := by decide
  have hB : ¬ 53 ∣ 248660 := by decide
  have hexp :=
    has_exp_one_of_zmod 248660 248663 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 248660 248663 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 248660 248663 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      248660 248663 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      248660 248663 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_248993_248996 :
    HasPrimeWithExpOne (S_val 248993 248996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248993 248996 ∧ ¬ p ∣ (248996 - 248993) ∧
      ∃ (hNotC : ¬ p ∣ 248996) (hNotB : ¬ p ∣ 248993),
        order_of_C_B_inv_mod_p2 248996 248993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248993 248996 := by
  have hlt : (248993 : Nat) < 248996 := by decide
  have hcop : ¬ 79 ∣ (248996 - 248993) := by decide
  have heq : (248996 : ZMod 79) ^ 13 = (248993 : ZMod 79) ^ 13 := by decide
  have hne : (248996 : ZMod 6241) ^ 13 ≠ (248993 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 248996 := by decide
  have hB : ¬ 79 ∣ 248993 := by decide
  have hexp :=
    has_exp_one_of_zmod 248993 248996 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 248993 248996 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 248993 248996 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      248993 248996 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      248993 248996 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_249330_249333 :
    HasPrimeWithExpOne (S_val 249330 249333) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249330 249333 ∧ ¬ p ∣ (249333 - 249330) ∧
      ∃ (hNotC : ¬ p ∣ 249333) (hNotB : ¬ p ∣ 249330),
        order_of_C_B_inv_mod_p2 249333 249330 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 249330 249333 := by
  have hlt : (249330 : Nat) < 249333 := by decide
  have hcop : ¬ 53 ∣ (249333 - 249330) := by decide
  have heq : (249333 : ZMod 53) ^ 13 = (249330 : ZMod 53) ^ 13 := by decide
  have hne : (249333 : ZMod 2809) ^ 13 ≠ (249330 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 249333 := by decide
  have hB : ¬ 53 ∣ 249330 := by decide
  have hexp :=
    has_exp_one_of_zmod 249330 249333 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 249330 249333 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 249330 249333 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      249330 249333 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      249330 249333 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_249663_249666 :
    HasPrimeWithExpOne (S_val 249663 249666) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249663 249666 ∧ ¬ p ∣ (249666 - 249663) ∧
      ∃ (hNotC : ¬ p ∣ 249666) (hNotB : ¬ p ∣ 249663),
        order_of_C_B_inv_mod_p2 249666 249663 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 249663 249666 := by
  have hlt : (249663 : Nat) < 249666 := by decide
  have hcop : ¬ 79 ∣ (249666 - 249663) := by decide
  have heq : (249666 : ZMod 79) ^ 13 = (249663 : ZMod 79) ^ 13 := by decide
  have hne : (249666 : ZMod 6241) ^ 13 ≠ (249663 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 249666 := by decide
  have hB : ¬ 79 ∣ 249663 := by decide
  have hexp :=
    has_exp_one_of_zmod 249663 249666 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 249663 249666 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 249663 249666 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      249663 249666 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      249663 249666 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_250002_250005 :
    HasPrimeWithExpOne (S_val 250002 250005) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250002 250005 ∧ ¬ p ∣ (250005 - 250002) ∧
      ∃ (hNotC : ¬ p ∣ 250005) (hNotB : ¬ p ∣ 250002),
        order_of_C_B_inv_mod_p2 250005 250002 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250002 250005 := by
  have hlt : (250002 : Nat) < 250005 := by decide
  have hcop : ¬ 131 ∣ (250005 - 250002) := by decide
  have heq : (250005 : ZMod 131) ^ 13 = (250002 : ZMod 131) ^ 13 := by decide
  have hne : (250005 : ZMod 17161) ^ 13 ≠ (250002 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 250005 := by decide
  have hB : ¬ 131 ∣ 250002 := by decide
  have hexp :=
    has_exp_one_of_zmod 250002 250005 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 250002 250005 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 250002 250005 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      250002 250005 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      250002 250005 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_250336_250339 :
    HasPrimeWithExpOne (S_val 250336 250339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250336 250339 ∧ ¬ p ∣ (250339 - 250336) ∧
      ∃ (hNotC : ¬ p ∣ 250339) (hNotB : ¬ p ∣ 250336),
        order_of_C_B_inv_mod_p2 250339 250336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250336 250339 := by
  have hlt : (250336 : Nat) < 250339 := by decide
  have hcop : ¬ 79 ∣ (250339 - 250336) := by decide
  have heq : (250339 : ZMod 79) ^ 13 = (250336 : ZMod 79) ^ 13 := by decide
  have hne : (250339 : ZMod 6241) ^ 13 ≠ (250336 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 250339 := by decide
  have hB : ¬ 79 ∣ 250336 := by decide
  have hexp :=
    has_exp_one_of_zmod 250336 250339 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 250336 250339 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 250336 250339 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      250336 250339 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      250336 250339 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_250671_250674 :
    HasPrimeWithExpOne (S_val 250671 250674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250671 250674 ∧ ¬ p ∣ (250674 - 250671) ∧
      ∃ (hNotC : ¬ p ∣ 250674) (hNotB : ¬ p ∣ 250671),
        order_of_C_B_inv_mod_p2 250674 250671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250671 250674 := by
  have hlt : (250671 : Nat) < 250674 := by decide
  have hcop : ¬ 131 ∣ (250674 - 250671) := by decide
  have heq : (250674 : ZMod 131) ^ 13 = (250671 : ZMod 131) ^ 13 := by decide
  have hne : (250674 : ZMod 17161) ^ 13 ≠ (250671 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 250674 := by decide
  have hB : ¬ 131 ∣ 250671 := by decide
  have hexp :=
    has_exp_one_of_zmod 250671 250674 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 250671 250674 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 250671 250674 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      250671 250674 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      250671 250674 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_251007_251010 :
    HasPrimeWithExpOne (S_val 251007 251010) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251007 251010 ∧ ¬ p ∣ (251010 - 251007) ∧
      ∃ (hNotC : ¬ p ∣ 251010) (hNotB : ¬ p ∣ 251007),
        order_of_C_B_inv_mod_p2 251010 251007 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251007 251010 := by
  have hlt : (251007 : Nat) < 251010 := by decide
  have hcop : ¬ 157 ∣ (251010 - 251007) := by decide
  have heq : (251010 : ZMod 157) ^ 13 = (251007 : ZMod 157) ^ 13 := by decide
  have hne : (251010 : ZMod 24649) ^ 13 ≠ (251007 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 251010 := by decide
  have hB : ¬ 157 ∣ 251007 := by decide
  have hexp :=
    has_exp_one_of_zmod 251007 251010 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 251007 251010 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 251007 251010 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      251007 251010 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      251007 251010 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_251343_251346 :
    HasPrimeWithExpOne (S_val 251343 251346) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251343 251346 ∧ ¬ p ∣ (251346 - 251343) ∧
      ∃ (hNotC : ¬ p ∣ 251346) (hNotB : ¬ p ∣ 251343),
        order_of_C_B_inv_mod_p2 251346 251343 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251343 251346 := by
  have hlt : (251343 : Nat) < 251346 := by decide
  have hcop : ¬ 131 ∣ (251346 - 251343) := by decide
  have heq : (251346 : ZMod 131) ^ 13 = (251343 : ZMod 131) ^ 13 := by decide
  have hne : (251346 : ZMod 17161) ^ 13 ≠ (251343 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 251346 := by decide
  have hB : ¬ 131 ∣ 251343 := by decide
  have hexp :=
    has_exp_one_of_zmod 251343 251346 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 251343 251346 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 251343 251346 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      251343 251346 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      251343 251346 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_251678_251681 :
    HasPrimeWithExpOne (S_val 251678 251681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251678 251681 ∧ ¬ p ∣ (251681 - 251678) ∧
      ∃ (hNotC : ¬ p ∣ 251681) (hNotB : ¬ p ∣ 251678),
        order_of_C_B_inv_mod_p2 251681 251678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251678 251681 := by
  have hlt : (251678 : Nat) < 251681 := by decide
  have hcop : ¬ 79 ∣ (251681 - 251678) := by decide
  have heq : (251681 : ZMod 79) ^ 13 = (251678 : ZMod 79) ^ 13 := by decide
  have hne : (251681 : ZMod 6241) ^ 13 ≠ (251678 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 251681 := by decide
  have hB : ¬ 79 ∣ 251678 := by decide
  have hexp :=
    has_exp_one_of_zmod 251678 251681 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 251678 251681 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 251678 251681 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      251678 251681 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      251678 251681 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_252014_252017 :
    HasPrimeWithExpOne (S_val 252014 252017) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252014 252017 ∧ ¬ p ∣ (252017 - 252014) ∧
      ∃ (hNotC : ¬ p ∣ 252017) (hNotB : ¬ p ∣ 252014),
        order_of_C_B_inv_mod_p2 252017 252014 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252014 252017 := by
  have hlt : (252014 : Nat) < 252017 := by decide
  have hcop : ¬ 157 ∣ (252017 - 252014) := by decide
  have heq : (252017 : ZMod 157) ^ 13 = (252014 : ZMod 157) ^ 13 := by decide
  have hne : (252017 : ZMod 24649) ^ 13 ≠ (252014 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 252017 := by decide
  have hB : ¬ 157 ∣ 252014 := by decide
  have hexp :=
    has_exp_one_of_zmod 252014 252017 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 252014 252017 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 252014 252017 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      252014 252017 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      252014 252017 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_252349_252352 :
    HasPrimeWithExpOne (S_val 252349 252352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252349 252352 ∧ ¬ p ∣ (252352 - 252349) ∧
      ∃ (hNotC : ¬ p ∣ 252352) (hNotB : ¬ p ∣ 252349),
        order_of_C_B_inv_mod_p2 252352 252349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252349 252352 := by
  have hlt : (252349 : Nat) < 252352 := by decide
  have hcop : ¬ 79 ∣ (252352 - 252349) := by decide
  have heq : (252352 : ZMod 79) ^ 13 = (252349 : ZMod 79) ^ 13 := by decide
  have hne : (252352 : ZMod 6241) ^ 13 ≠ (252349 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 252352 := by decide
  have hB : ¬ 79 ∣ 252349 := by decide
  have hexp :=
    has_exp_one_of_zmod 252349 252352 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 252349 252352 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 252349 252352 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      252349 252352 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      252349 252352 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_252684_252687 :
    HasPrimeWithExpOne (S_val 252684 252687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252684 252687 ∧ ¬ p ∣ (252687 - 252684) ∧
      ∃ (hNotC : ¬ p ∣ 252687) (hNotB : ¬ p ∣ 252684),
        order_of_C_B_inv_mod_p2 252687 252684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252684 252687 := by
  have hlt : (252684 : Nat) < 252687 := by decide
  have hcop : ¬ 79 ∣ (252687 - 252684) := by decide
  have heq : (252687 : ZMod 79) ^ 13 = (252684 : ZMod 79) ^ 13 := by decide
  have hne : (252687 : ZMod 6241) ^ 13 ≠ (252684 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 252687 := by decide
  have hB : ¬ 79 ∣ 252684 := by decide
  have hexp :=
    has_exp_one_of_zmod 252684 252687 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 252684 252687 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 252684 252687 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      252684 252687 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      252684 252687 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_253020_253023 :
    HasPrimeWithExpOne (S_val 253020 253023) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253020 253023 ∧ ¬ p ∣ (253023 - 253020) ∧
      ∃ (hNotC : ¬ p ∣ 253023) (hNotB : ¬ p ∣ 253020),
        order_of_C_B_inv_mod_p2 253023 253020 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253020 253023 := by
  have hlt : (253020 : Nat) < 253023 := by decide
  have hcop : ¬ 79 ∣ (253023 - 253020) := by decide
  have heq : (253023 : ZMod 79) ^ 13 = (253020 : ZMod 79) ^ 13 := by decide
  have hne : (253023 : ZMod 6241) ^ 13 ≠ (253020 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 253023 := by decide
  have hB : ¬ 79 ∣ 253020 := by decide
  have hexp :=
    has_exp_one_of_zmod 253020 253023 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 253020 253023 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 253020 253023 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      253020 253023 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      253020 253023 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_253357_253360 :
    HasPrimeWithExpOne (S_val 253357 253360) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253357 253360 ∧ ¬ p ∣ (253360 - 253357) ∧
      ∃ (hNotC : ¬ p ∣ 253360) (hNotB : ¬ p ∣ 253357),
        order_of_C_B_inv_mod_p2 253360 253357 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253357 253360 := by
  have hlt : (253357 : Nat) < 253360 := by decide
  have hcop : ¬ 443 ∣ (253360 - 253357) := by decide
  have heq : (253360 : ZMod 443) ^ 13 = (253357 : ZMod 443) ^ 13 := by decide
  have hne : (253360 : ZMod 196249) ^ 13 ≠ (253357 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 253360 := by decide
  have hB : ¬ 443 ∣ 253357 := by decide
  have hexp :=
    has_exp_one_of_zmod 253357 253360 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 253357 253360 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 253357 253360 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      253357 253360 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      253357 253360 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_253692_253695 :
    HasPrimeWithExpOne (S_val 253692 253695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253692 253695 ∧ ¬ p ∣ (253695 - 253692) ∧
      ∃ (hNotC : ¬ p ∣ 253695) (hNotB : ¬ p ∣ 253692),
        order_of_C_B_inv_mod_p2 253695 253692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253692 253695 := by
  have hlt : (253692 : Nat) < 253695 := by decide
  have hcop : ¬ 79 ∣ (253695 - 253692) := by decide
  have heq : (253695 : ZMod 79) ^ 13 = (253692 : ZMod 79) ^ 13 := by decide
  have hne : (253695 : ZMod 6241) ^ 13 ≠ (253692 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 253695 := by decide
  have hB : ¬ 79 ∣ 253692 := by decide
  have hexp :=
    has_exp_one_of_zmod 253692 253695 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 253692 253695 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 253692 253695 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      253692 253695 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      253692 253695 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_254027_254030 :
    HasPrimeWithExpOne (S_val 254027 254030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254027 254030 ∧ ¬ p ∣ (254030 - 254027) ∧
      ∃ (hNotC : ¬ p ∣ 254030) (hNotB : ¬ p ∣ 254027),
        order_of_C_B_inv_mod_p2 254030 254027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254027 254030 := by
  have hlt : (254027 : Nat) < 254030 := by decide
  have hcop : ¬ 79 ∣ (254030 - 254027) := by decide
  have heq : (254030 : ZMod 79) ^ 13 = (254027 : ZMod 79) ^ 13 := by decide
  have hne : (254030 : ZMod 6241) ^ 13 ≠ (254027 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 254030 := by decide
  have hB : ¬ 79 ∣ 254027 := by decide
  have hexp :=
    has_exp_one_of_zmod 254027 254030 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 254027 254030 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 254027 254030 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      254027 254030 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      254027 254030 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_254363_254366 :
    HasPrimeWithExpOne (S_val 254363 254366) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254363 254366 ∧ ¬ p ∣ (254366 - 254363) ∧
      ∃ (hNotC : ¬ p ∣ 254366) (hNotB : ¬ p ∣ 254363),
        order_of_C_B_inv_mod_p2 254366 254363 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254363 254366 := by
  have hlt : (254363 : Nat) < 254366 := by decide
  have hcop : ¬ 79 ∣ (254366 - 254363) := by decide
  have heq : (254366 : ZMod 79) ^ 13 = (254363 : ZMod 79) ^ 13 := by decide
  have hne : (254366 : ZMod 6241) ^ 13 ≠ (254363 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 254366 := by decide
  have hB : ¬ 79 ∣ 254363 := by decide
  have hexp :=
    has_exp_one_of_zmod 254363 254366 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 254363 254366 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 254363 254366 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      254363 254366 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      254363 254366 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_254697_254700 :
    HasPrimeWithExpOne (S_val 254697 254700) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254697 254700 ∧ ¬ p ∣ (254700 - 254697) ∧
      ∃ (hNotC : ¬ p ∣ 254700) (hNotB : ¬ p ∣ 254697),
        order_of_C_B_inv_mod_p2 254700 254697 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254697 254700 := by
  have hlt : (254697 : Nat) < 254700 := by decide
  have hcop : ¬ 53 ∣ (254700 - 254697) := by decide
  have heq : (254700 : ZMod 53) ^ 13 = (254697 : ZMod 53) ^ 13 := by decide
  have hne : (254700 : ZMod 2809) ^ 13 ≠ (254697 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 254700 := by decide
  have hB : ¬ 53 ∣ 254697 := by decide
  have hexp :=
    has_exp_one_of_zmod 254697 254700 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 254697 254700 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 254697 254700 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      254697 254700 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      254697 254700 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_255035_255038 :
    HasPrimeWithExpOne (S_val 255035 255038) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255035 255038 ∧ ¬ p ∣ (255038 - 255035) ∧
      ∃ (hNotC : ¬ p ∣ 255038) (hNotB : ¬ p ∣ 255035),
        order_of_C_B_inv_mod_p2 255038 255035 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255035 255038 := by
  have hlt : (255035 : Nat) < 255038 := by decide
  have hcop : ¬ 79 ∣ (255038 - 255035) := by decide
  have heq : (255038 : ZMod 79) ^ 13 = (255035 : ZMod 79) ^ 13 := by decide
  have hne : (255038 : ZMod 6241) ^ 13 ≠ (255035 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 255038 := by decide
  have hB : ¬ 79 ∣ 255035 := by decide
  have hexp :=
    has_exp_one_of_zmod 255035 255038 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 255035 255038 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 255035 255038 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      255035 255038 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      255035 255038 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_255370_255373 :
    HasPrimeWithExpOne (S_val 255370 255373) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255370 255373 ∧ ¬ p ∣ (255373 - 255370) ∧
      ∃ (hNotC : ¬ p ∣ 255373) (hNotB : ¬ p ∣ 255370),
        order_of_C_B_inv_mod_p2 255373 255370 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255370 255373 := by
  have hlt : (255370 : Nat) < 255373 := by decide
  have hcop : ¬ 79 ∣ (255373 - 255370) := by decide
  have heq : (255373 : ZMod 79) ^ 13 = (255370 : ZMod 79) ^ 13 := by decide
  have hne : (255373 : ZMod 6241) ^ 13 ≠ (255370 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 255373 := by decide
  have hB : ¬ 79 ∣ 255370 := by decide
  have hexp :=
    has_exp_one_of_zmod 255370 255373 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 255370 255373 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 255370 255373 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      255370 255373 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      255370 255373 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_255706_255709 :
    HasPrimeWithExpOne (S_val 255706 255709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255706 255709 ∧ ¬ p ∣ (255709 - 255706) ∧
      ∃ (hNotC : ¬ p ∣ 255709) (hNotB : ¬ p ∣ 255706),
        order_of_C_B_inv_mod_p2 255709 255706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255706 255709 := by
  have hlt : (255706 : Nat) < 255709 := by decide
  have hcop : ¬ 79 ∣ (255709 - 255706) := by decide
  have heq : (255709 : ZMod 79) ^ 13 = (255706 : ZMod 79) ^ 13 := by decide
  have hne : (255709 : ZMod 6241) ^ 13 ≠ (255706 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 255709 := by decide
  have hB : ¬ 79 ∣ 255706 := by decide
  have hexp :=
    has_exp_one_of_zmod 255706 255709 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 255706 255709 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 255706 255709 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      255706 255709 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      255706 255709 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_256042_256045 :
    HasPrimeWithExpOne (S_val 256042 256045) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256042 256045 ∧ ¬ p ∣ (256045 - 256042) ∧
      ∃ (hNotC : ¬ p ∣ 256045) (hNotB : ¬ p ∣ 256042),
        order_of_C_B_inv_mod_p2 256045 256042 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256042 256045 := by
  have hlt : (256042 : Nat) < 256045 := by decide
  have hcop : ¬ 131 ∣ (256045 - 256042) := by decide
  have heq : (256045 : ZMod 131) ^ 13 = (256042 : ZMod 131) ^ 13 := by decide
  have hne : (256045 : ZMod 17161) ^ 13 ≠ (256042 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 256045 := by decide
  have hB : ¬ 131 ∣ 256042 := by decide
  have hexp :=
    has_exp_one_of_zmod 256042 256045 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 256042 256045 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 256042 256045 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      256042 256045 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      256042 256045 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_256376_256379 :
    HasPrimeWithExpOne (S_val 256376 256379) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256376 256379 ∧ ¬ p ∣ (256379 - 256376) ∧
      ∃ (hNotC : ¬ p ∣ 256379) (hNotB : ¬ p ∣ 256376),
        order_of_C_B_inv_mod_p2 256379 256376 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256376 256379 := by
  have hlt : (256376 : Nat) < 256379 := by decide
  have hcop : ¬ 131 ∣ (256379 - 256376) := by decide
  have heq : (256379 : ZMod 131) ^ 13 = (256376 : ZMod 131) ^ 13 := by decide
  have hne : (256379 : ZMod 17161) ^ 13 ≠ (256376 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 256379 := by decide
  have hB : ¬ 131 ∣ 256376 := by decide
  have hexp :=
    has_exp_one_of_zmod 256376 256379 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 256376 256379 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 256376 256379 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      256376 256379 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      256376 256379 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_256711_256714 :
    HasPrimeWithExpOne (S_val 256711 256714) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256711 256714 ∧ ¬ p ∣ (256714 - 256711) ∧
      ∃ (hNotC : ¬ p ∣ 256714) (hNotB : ¬ p ∣ 256711),
        order_of_C_B_inv_mod_p2 256714 256711 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256711 256714 := by
  have hlt : (256711 : Nat) < 256714 := by decide
  have hcop : ¬ 53 ∣ (256714 - 256711) := by decide
  have heq : (256714 : ZMod 53) ^ 13 = (256711 : ZMod 53) ^ 13 := by decide
  have hne : (256714 : ZMod 2809) ^ 13 ≠ (256711 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 256714 := by decide
  have hB : ¬ 53 ∣ 256711 := by decide
  have hexp :=
    has_exp_one_of_zmod 256711 256714 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 256711 256714 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 256711 256714 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      256711 256714 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      256711 256714 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_257049_257052 :
    HasPrimeWithExpOne (S_val 257049 257052) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257049 257052 ∧ ¬ p ∣ (257052 - 257049) ∧
      ∃ (hNotC : ¬ p ∣ 257052) (hNotB : ¬ p ∣ 257049),
        order_of_C_B_inv_mod_p2 257052 257049 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257049 257052 := by
  have hlt : (257049 : Nat) < 257052 := by decide
  have hcop : ¬ 79 ∣ (257052 - 257049) := by decide
  have heq : (257052 : ZMod 79) ^ 13 = (257049 : ZMod 79) ^ 13 := by decide
  have hne : (257052 : ZMod 6241) ^ 13 ≠ (257049 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 257052 := by decide
  have hB : ¬ 79 ∣ 257049 := by decide
  have hexp :=
    has_exp_one_of_zmod 257049 257052 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 257049 257052 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 257049 257052 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      257049 257052 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      257049 257052 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_257381_257384 :
    HasPrimeWithExpOne (S_val 257381 257384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257381 257384 ∧ ¬ p ∣ (257384 - 257381) ∧
      ∃ (hNotC : ¬ p ∣ 257384) (hNotB : ¬ p ∣ 257381),
        order_of_C_B_inv_mod_p2 257384 257381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257381 257384 := by
  have hlt : (257381 : Nat) < 257384 := by decide
  have hcop : ¬ 53 ∣ (257384 - 257381) := by decide
  have heq : (257384 : ZMod 53) ^ 13 = (257381 : ZMod 53) ^ 13 := by decide
  have hne : (257384 : ZMod 2809) ^ 13 ≠ (257381 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 257384 := by decide
  have hB : ¬ 53 ∣ 257381 := by decide
  have hexp :=
    has_exp_one_of_zmod 257381 257384 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 257381 257384 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 257381 257384 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      257381 257384 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      257381 257384 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_257718_257721 :
    HasPrimeWithExpOne (S_val 257718 257721) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257718 257721 ∧ ¬ p ∣ (257721 - 257718) ∧
      ∃ (hNotC : ¬ p ∣ 257721) (hNotB : ¬ p ∣ 257718),
        order_of_C_B_inv_mod_p2 257721 257718 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257718 257721 := by
  have hlt : (257718 : Nat) < 257721 := by decide
  have hcop : ¬ 53 ∣ (257721 - 257718) := by decide
  have heq : (257721 : ZMod 53) ^ 13 = (257718 : ZMod 53) ^ 13 := by decide
  have hne : (257721 : ZMod 2809) ^ 13 ≠ (257718 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 257721 := by decide
  have hB : ¬ 53 ∣ 257718 := by decide
  have hexp :=
    has_exp_one_of_zmod 257718 257721 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 257718 257721 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 257718 257721 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      257718 257721 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      257718 257721 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_258055_258058 :
    HasPrimeWithExpOne (S_val 258055 258058) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258055 258058 ∧ ¬ p ∣ (258058 - 258055) ∧
      ∃ (hNotC : ¬ p ∣ 258058) (hNotB : ¬ p ∣ 258055),
        order_of_C_B_inv_mod_p2 258058 258055 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258055 258058 := by
  have hlt : (258055 : Nat) < 258058 := by decide
  have hcop : ¬ 157 ∣ (258058 - 258055) := by decide
  have heq : (258058 : ZMod 157) ^ 13 = (258055 : ZMod 157) ^ 13 := by decide
  have hne : (258058 : ZMod 24649) ^ 13 ≠ (258055 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 258058 := by decide
  have hB : ¬ 157 ∣ 258055 := by decide
  have hexp :=
    has_exp_one_of_zmod 258055 258058 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 258055 258058 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 258055 258058 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      258055 258058 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      258055 258058 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_258390_258393 :
    HasPrimeWithExpOne (S_val 258390 258393) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258390 258393 ∧ ¬ p ∣ (258393 - 258390) ∧
      ∃ (hNotC : ¬ p ∣ 258393) (hNotB : ¬ p ∣ 258390),
        order_of_C_B_inv_mod_p2 258393 258390 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258390 258393 := by
  have hlt : (258390 : Nat) < 258393 := by decide
  have hcop : ¬ 157 ∣ (258393 - 258390) := by decide
  have heq : (258393 : ZMod 157) ^ 13 = (258390 : ZMod 157) ^ 13 := by decide
  have hne : (258393 : ZMod 24649) ^ 13 ≠ (258390 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 258393 := by decide
  have hB : ¬ 157 ∣ 258390 := by decide
  have hexp :=
    has_exp_one_of_zmod 258390 258393 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 258390 258393 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 258390 258393 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      258390 258393 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      258390 258393 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_258725_258728 :
    HasPrimeWithExpOne (S_val 258725 258728) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258725 258728 ∧ ¬ p ∣ (258728 - 258725) ∧
      ∃ (hNotC : ¬ p ∣ 258728) (hNotB : ¬ p ∣ 258725),
        order_of_C_B_inv_mod_p2 258728 258725 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258725 258728 := by
  have hlt : (258725 : Nat) < 258728 := by decide
  have hcop : ¬ 53 ∣ (258728 - 258725) := by decide
  have heq : (258728 : ZMod 53) ^ 13 = (258725 : ZMod 53) ^ 13 := by decide
  have hne : (258728 : ZMod 2809) ^ 13 ≠ (258725 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 258728 := by decide
  have hB : ¬ 53 ∣ 258725 := by decide
  have hexp :=
    has_exp_one_of_zmod 258725 258728 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 258725 258728 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 258725 258728 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      258725 258728 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      258725 258728 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_259060_259063 :
    HasPrimeWithExpOne (S_val 259060 259063) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259060 259063 ∧ ¬ p ∣ (259063 - 259060) ∧
      ∃ (hNotC : ¬ p ∣ 259063) (hNotB : ¬ p ∣ 259060),
        order_of_C_B_inv_mod_p2 259063 259060 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259060 259063 := by
  have hlt : (259060 : Nat) < 259063 := by decide
  have hcop : ¬ 131 ∣ (259063 - 259060) := by decide
  have heq : (259063 : ZMod 131) ^ 13 = (259060 : ZMod 131) ^ 13 := by decide
  have hne : (259063 : ZMod 17161) ^ 13 ≠ (259060 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 259063 := by decide
  have hB : ¬ 131 ∣ 259060 := by decide
  have hexp :=
    has_exp_one_of_zmod 259060 259063 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 259060 259063 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 259060 259063 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      259060 259063 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      259060 259063 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_259397_259400 :
    HasPrimeWithExpOne (S_val 259397 259400) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259397 259400 ∧ ¬ p ∣ (259400 - 259397) ∧
      ∃ (hNotC : ¬ p ∣ 259400) (hNotB : ¬ p ∣ 259397),
        order_of_C_B_inv_mod_p2 259400 259397 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259397 259400 := by
  have hlt : (259397 : Nat) < 259400 := by decide
  have hcop : ¬ 157 ∣ (259400 - 259397) := by decide
  have heq : (259400 : ZMod 157) ^ 13 = (259397 : ZMod 157) ^ 13 := by decide
  have hne : (259400 : ZMod 24649) ^ 13 ≠ (259397 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 259400 := by decide
  have hB : ¬ 157 ∣ 259397 := by decide
  have hexp :=
    has_exp_one_of_zmod 259397 259400 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 259397 259400 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 259397 259400 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      259397 259400 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      259397 259400 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_259731_259734 :
    HasPrimeWithExpOne (S_val 259731 259734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259731 259734 ∧ ¬ p ∣ (259734 - 259731) ∧
      ∃ (hNotC : ¬ p ∣ 259734) (hNotB : ¬ p ∣ 259731),
        order_of_C_B_inv_mod_p2 259734 259731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259731 259734 := by
  have hlt : (259731 : Nat) < 259734 := by decide
  have hcop : ¬ 79 ∣ (259734 - 259731) := by decide
  have heq : (259734 : ZMod 79) ^ 13 = (259731 : ZMod 79) ^ 13 := by decide
  have hne : (259734 : ZMod 6241) ^ 13 ≠ (259731 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 259734 := by decide
  have hB : ¬ 79 ∣ 259731 := by decide
  have hexp :=
    has_exp_one_of_zmod 259731 259734 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 259731 259734 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 259731 259734 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      259731 259734 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      259731 259734 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_260067_260070 :
    HasPrimeWithExpOne (S_val 260067 260070) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260067 260070 ∧ ¬ p ∣ (260070 - 260067) ∧
      ∃ (hNotC : ¬ p ∣ 260070) (hNotB : ¬ p ∣ 260067),
        order_of_C_B_inv_mod_p2 260070 260067 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260067 260070 := by
  have hlt : (260067 : Nat) < 260070 := by decide
  have hcop : ¬ 313 ∣ (260070 - 260067) := by decide
  have heq : (260070 : ZMod 313) ^ 13 = (260067 : ZMod 313) ^ 13 := by decide
  have hne : (260070 : ZMod 97969) ^ 13 ≠ (260067 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 260070 := by decide
  have hB : ¬ 313 ∣ 260067 := by decide
  have hexp :=
    has_exp_one_of_zmod 260067 260070 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 260067 260070 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 260067 260070 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      260067 260070 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      260067 260070 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_260402_260405 :
    HasPrimeWithExpOne (S_val 260402 260405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260402 260405 ∧ ¬ p ∣ (260405 - 260402) ∧
      ∃ (hNotC : ¬ p ∣ 260405) (hNotB : ¬ p ∣ 260402),
        order_of_C_B_inv_mod_p2 260405 260402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260402 260405 := by
  have hlt : (260402 : Nat) < 260405 := by decide
  have hcop : ¬ 53 ∣ (260405 - 260402) := by decide
  have heq : (260405 : ZMod 53) ^ 13 = (260402 : ZMod 53) ^ 13 := by decide
  have hne : (260405 : ZMod 2809) ^ 13 ≠ (260402 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 260405 := by decide
  have hB : ¬ 53 ∣ 260402 := by decide
  have hexp :=
    has_exp_one_of_zmod 260402 260405 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 260402 260405 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 260402 260405 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      260402 260405 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      260402 260405 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_260739_260742 :
    HasPrimeWithExpOne (S_val 260739 260742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260739 260742 ∧ ¬ p ∣ (260742 - 260739) ∧
      ∃ (hNotC : ¬ p ∣ 260742) (hNotB : ¬ p ∣ 260739),
        order_of_C_B_inv_mod_p2 260742 260739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260739 260742 := by
  have hlt : (260739 : Nat) < 260742 := by decide
  have hcop : ¬ 53 ∣ (260742 - 260739) := by decide
  have heq : (260742 : ZMod 53) ^ 13 = (260739 : ZMod 53) ^ 13 := by decide
  have hne : (260742 : ZMod 2809) ^ 13 ≠ (260739 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 260742 := by decide
  have hB : ¬ 53 ∣ 260739 := by decide
  have hexp :=
    has_exp_one_of_zmod 260739 260742 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 260739 260742 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 260739 260742 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      260739 260742 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      260739 260742 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_261074_261077 :
    HasPrimeWithExpOne (S_val 261074 261077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261074 261077 ∧ ¬ p ∣ (261077 - 261074) ∧
      ∃ (hNotC : ¬ p ∣ 261077) (hNotB : ¬ p ∣ 261074),
        order_of_C_B_inv_mod_p2 261077 261074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261074 261077 := by
  have hlt : (261074 : Nat) < 261077 := by decide
  have hcop : ¬ 79 ∣ (261077 - 261074) := by decide
  have heq : (261077 : ZMod 79) ^ 13 = (261074 : ZMod 79) ^ 13 := by decide
  have hne : (261077 : ZMod 6241) ^ 13 ≠ (261074 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 261077 := by decide
  have hB : ¬ 79 ∣ 261074 := by decide
  have hexp :=
    has_exp_one_of_zmod 261074 261077 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 261074 261077 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 261074 261077 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      261074 261077 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      261074 261077 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_261409_261412 :
    HasPrimeWithExpOne (S_val 261409 261412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261409 261412 ∧ ¬ p ∣ (261412 - 261409) ∧
      ∃ (hNotC : ¬ p ∣ 261412) (hNotB : ¬ p ∣ 261409),
        order_of_C_B_inv_mod_p2 261412 261409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261409 261412 := by
  have hlt : (261409 : Nat) < 261412 := by decide
  have hcop : ¬ 53 ∣ (261412 - 261409) := by decide
  have heq : (261412 : ZMod 53) ^ 13 = (261409 : ZMod 53) ^ 13 := by decide
  have hne : (261412 : ZMod 2809) ^ 13 ≠ (261409 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 261412 := by decide
  have hB : ¬ 53 ∣ 261409 := by decide
  have hexp :=
    has_exp_one_of_zmod 261409 261412 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 261409 261412 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 261409 261412 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      261409 261412 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      261409 261412 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_261745_261748 :
    HasPrimeWithExpOne (S_val 261745 261748) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261745 261748 ∧ ¬ p ∣ (261748 - 261745) ∧
      ∃ (hNotC : ¬ p ∣ 261748) (hNotB : ¬ p ∣ 261745),
        order_of_C_B_inv_mod_p2 261748 261745 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261745 261748 := by
  have hlt : (261745 : Nat) < 261748 := by decide
  have hcop : ¬ 79 ∣ (261748 - 261745) := by decide
  have heq : (261748 : ZMod 79) ^ 13 = (261745 : ZMod 79) ^ 13 := by decide
  have hne : (261748 : ZMod 6241) ^ 13 ≠ (261745 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 261748 := by decide
  have hB : ¬ 79 ∣ 261745 := by decide
  have hexp :=
    has_exp_one_of_zmod 261745 261748 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 261745 261748 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 261745 261748 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      261745 261748 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      261745 261748 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_262078_262081 :
    HasPrimeWithExpOne (S_val 262078 262081) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262078 262081 ∧ ¬ p ∣ (262081 - 262078) ∧
      ∃ (hNotC : ¬ p ∣ 262081) (hNotB : ¬ p ∣ 262078),
        order_of_C_B_inv_mod_p2 262081 262078 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262078 262081 := by
  have hlt : (262078 : Nat) < 262081 := by decide
  have hcop : ¬ 53 ∣ (262081 - 262078) := by decide
  have heq : (262081 : ZMod 53) ^ 13 = (262078 : ZMod 53) ^ 13 := by decide
  have hne : (262081 : ZMod 2809) ^ 13 ≠ (262078 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 262081 := by decide
  have hB : ¬ 53 ∣ 262078 := by decide
  have hexp :=
    has_exp_one_of_zmod 262078 262081 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 262078 262081 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 262078 262081 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      262078 262081 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      262078 262081 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_262416_262419 :
    HasPrimeWithExpOne (S_val 262416 262419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262416 262419 ∧ ¬ p ∣ (262419 - 262416) ∧
      ∃ (hNotC : ¬ p ∣ 262419) (hNotB : ¬ p ∣ 262416),
        order_of_C_B_inv_mod_p2 262419 262416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262416 262419 := by
  have hlt : (262416 : Nat) < 262419 := by decide
  have hcop : ¬ 53 ∣ (262419 - 262416) := by decide
  have heq : (262419 : ZMod 53) ^ 13 = (262416 : ZMod 53) ^ 13 := by decide
  have hne : (262419 : ZMod 2809) ^ 13 ≠ (262416 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 262419 := by decide
  have hB : ¬ 53 ∣ 262416 := by decide
  have hexp :=
    has_exp_one_of_zmod 262416 262419 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 262416 262419 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 262416 262419 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      262416 262419 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      262416 262419 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_262752_262755 :
    HasPrimeWithExpOne (S_val 262752 262755) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262752 262755 ∧ ¬ p ∣ (262755 - 262752) ∧
      ∃ (hNotC : ¬ p ∣ 262755) (hNotB : ¬ p ∣ 262752),
        order_of_C_B_inv_mod_p2 262755 262752 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262752 262755 := by
  have hlt : (262752 : Nat) < 262755 := by decide
  have hcop : ¬ 157 ∣ (262755 - 262752) := by decide
  have heq : (262755 : ZMod 157) ^ 13 = (262752 : ZMod 157) ^ 13 := by decide
  have hne : (262755 : ZMod 24649) ^ 13 ≠ (262752 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 262755 := by decide
  have hB : ¬ 157 ∣ 262752 := by decide
  have hexp :=
    has_exp_one_of_zmod 262752 262755 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 262752 262755 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 262752 262755 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      262752 262755 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      262752 262755 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_263088_263091 :
    HasPrimeWithExpOne (S_val 263088 263091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263088 263091 ∧ ¬ p ∣ (263091 - 263088) ∧
      ∃ (hNotC : ¬ p ∣ 263091) (hNotB : ¬ p ∣ 263088),
        order_of_C_B_inv_mod_p2 263091 263088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263088 263091 := by
  have hlt : (263088 : Nat) < 263091 := by decide
  have hcop : ¬ 79 ∣ (263091 - 263088) := by decide
  have heq : (263091 : ZMod 79) ^ 13 = (263088 : ZMod 79) ^ 13 := by decide
  have hne : (263091 : ZMod 6241) ^ 13 ≠ (263088 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 263091 := by decide
  have hB : ¬ 79 ∣ 263088 := by decide
  have hexp :=
    has_exp_one_of_zmod 263088 263091 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 263088 263091 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 263088 263091 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      263088 263091 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      263088 263091 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_263423_263426 :
    HasPrimeWithExpOne (S_val 263423 263426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263423 263426 ∧ ¬ p ∣ (263426 - 263423) ∧
      ∃ (hNotC : ¬ p ∣ 263426) (hNotB : ¬ p ∣ 263423),
        order_of_C_B_inv_mod_p2 263426 263423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263423 263426 := by
  have hlt : (263423 : Nat) < 263426 := by decide
  have hcop : ¬ 53 ∣ (263426 - 263423) := by decide
  have heq : (263426 : ZMod 53) ^ 13 = (263423 : ZMod 53) ^ 13 := by decide
  have hne : (263426 : ZMod 2809) ^ 13 ≠ (263423 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 263426 := by decide
  have hB : ¬ 53 ∣ 263423 := by decide
  have hexp :=
    has_exp_one_of_zmod 263423 263426 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 263423 263426 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 263423 263426 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      263423 263426 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      263423 263426 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_263758_263761 :
    HasPrimeWithExpOne (S_val 263758 263761) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263758 263761 ∧ ¬ p ∣ (263761 - 263758) ∧
      ∃ (hNotC : ¬ p ∣ 263761) (hNotB : ¬ p ∣ 263758),
        order_of_C_B_inv_mod_p2 263761 263758 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263758 263761 := by
  have hlt : (263758 : Nat) < 263761 := by decide
  have hcop : ¬ 131 ∣ (263761 - 263758) := by decide
  have heq : (263761 : ZMod 131) ^ 13 = (263758 : ZMod 131) ^ 13 := by decide
  have hne : (263761 : ZMod 17161) ^ 13 ≠ (263758 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 263761 := by decide
  have hB : ¬ 131 ∣ 263758 := by decide
  have hexp :=
    has_exp_one_of_zmod 263758 263761 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 263758 263761 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 263758 263761 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      263758 263761 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      263758 263761 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_264095_264098 :
    HasPrimeWithExpOne (S_val 264095 264098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264095 264098 ∧ ¬ p ∣ (264098 - 264095) ∧
      ∃ (hNotC : ¬ p ∣ 264098) (hNotB : ¬ p ∣ 264095),
        order_of_C_B_inv_mod_p2 264098 264095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264095 264098 := by
  have hlt : (264095 : Nat) < 264098 := by decide
  have hcop : ¬ 157 ∣ (264098 - 264095) := by decide
  have heq : (264098 : ZMod 157) ^ 13 = (264095 : ZMod 157) ^ 13 := by decide
  have hne : (264098 : ZMod 24649) ^ 13 ≠ (264095 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 264098 := by decide
  have hB : ¬ 157 ∣ 264095 := by decide
  have hexp :=
    has_exp_one_of_zmod 264095 264098 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 264095 264098 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 264095 264098 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      264095 264098 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      264095 264098 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_264430_264433 :
    HasPrimeWithExpOne (S_val 264430 264433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264430 264433 ∧ ¬ p ∣ (264433 - 264430) ∧
      ∃ (hNotC : ¬ p ∣ 264433) (hNotB : ¬ p ∣ 264430),
        order_of_C_B_inv_mod_p2 264433 264430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264430 264433 := by
  have hlt : (264430 : Nat) < 264433 := by decide
  have hcop : ¬ 53 ∣ (264433 - 264430) := by decide
  have heq : (264433 : ZMod 53) ^ 13 = (264430 : ZMod 53) ^ 13 := by decide
  have hne : (264433 : ZMod 2809) ^ 13 ≠ (264430 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 264433 := by decide
  have hB : ¬ 53 ∣ 264430 := by decide
  have hexp :=
    has_exp_one_of_zmod 264430 264433 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 264430 264433 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 264430 264433 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      264430 264433 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      264430 264433 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_264765_264768 :
    HasPrimeWithExpOne (S_val 264765 264768) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264765 264768 ∧ ¬ p ∣ (264768 - 264765) ∧
      ∃ (hNotC : ¬ p ∣ 264768) (hNotB : ¬ p ∣ 264765),
        order_of_C_B_inv_mod_p2 264768 264765 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264765 264768 := by
  have hlt : (264765 : Nat) < 264768 := by decide
  have hcop : ¬ 157 ∣ (264768 - 264765) := by decide
  have heq : (264768 : ZMod 157) ^ 13 = (264765 : ZMod 157) ^ 13 := by decide
  have hne : (264768 : ZMod 24649) ^ 13 ≠ (264765 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 264768 := by decide
  have hB : ¬ 157 ∣ 264765 := by decide
  have hexp :=
    has_exp_one_of_zmod 264765 264768 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 264765 264768 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 264765 264768 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      264765 264768 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      264765 264768 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_265100_265103 :
    HasPrimeWithExpOne (S_val 265100 265103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265100 265103 ∧ ¬ p ∣ (265103 - 265100) ∧
      ∃ (hNotC : ¬ p ∣ 265103) (hNotB : ¬ p ∣ 265100),
        order_of_C_B_inv_mod_p2 265103 265100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265100 265103 := by
  have hlt : (265100 : Nat) < 265103 := by decide
  have hcop : ¬ 157 ∣ (265103 - 265100) := by decide
  have heq : (265103 : ZMod 157) ^ 13 = (265100 : ZMod 157) ^ 13 := by decide
  have hne : (265103 : ZMod 24649) ^ 13 ≠ (265100 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 265103 := by decide
  have hB : ¬ 157 ∣ 265100 := by decide
  have hexp :=
    has_exp_one_of_zmod 265100 265103 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 265100 265103 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 265100 265103 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      265100 265103 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      265100 265103 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_265437_265440 :
    HasPrimeWithExpOne (S_val 265437 265440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265437 265440 ∧ ¬ p ∣ (265440 - 265437) ∧
      ∃ (hNotC : ¬ p ∣ 265440) (hNotB : ¬ p ∣ 265437),
        order_of_C_B_inv_mod_p2 265440 265437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265437 265440 := by
  have hlt : (265437 : Nat) < 265440 := by decide
  have hcop : ¬ 53 ∣ (265440 - 265437) := by decide
  have heq : (265440 : ZMod 53) ^ 13 = (265437 : ZMod 53) ^ 13 := by decide
  have hne : (265440 : ZMod 2809) ^ 13 ≠ (265437 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 265440 := by decide
  have hB : ¬ 53 ∣ 265437 := by decide
  have hexp :=
    has_exp_one_of_zmod 265437 265440 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 265437 265440 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 265437 265440 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      265437 265440 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      265437 265440 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_265774_265777 :
    HasPrimeWithExpOne (S_val 265774 265777) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265774 265777 ∧ ¬ p ∣ (265777 - 265774) ∧
      ∃ (hNotC : ¬ p ∣ 265777) (hNotB : ¬ p ∣ 265774),
        order_of_C_B_inv_mod_p2 265777 265774 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265774 265777 := by
  have hlt : (265774 : Nat) < 265777 := by decide
  have hcop : ¬ 53 ∣ (265777 - 265774) := by decide
  have heq : (265777 : ZMod 53) ^ 13 = (265774 : ZMod 53) ^ 13 := by decide
  have hne : (265777 : ZMod 2809) ^ 13 ≠ (265774 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 265777 := by decide
  have hB : ¬ 53 ∣ 265774 := by decide
  have hexp :=
    has_exp_one_of_zmod 265774 265777 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 265774 265777 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 265774 265777 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      265774 265777 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      265774 265777 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_266106_266109 :
    HasPrimeWithExpOne (S_val 266106 266109) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266106 266109 ∧ ¬ p ∣ (266109 - 266106) ∧
      ∃ (hNotC : ¬ p ∣ 266109) (hNotB : ¬ p ∣ 266106),
        order_of_C_B_inv_mod_p2 266109 266106 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266106 266109 := by
  have hlt : (266106 : Nat) < 266109 := by decide
  have hcop : ¬ 53 ∣ (266109 - 266106) := by decide
  have heq : (266109 : ZMod 53) ^ 13 = (266106 : ZMod 53) ^ 13 := by decide
  have hne : (266109 : ZMod 2809) ^ 13 ≠ (266106 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 266109 := by decide
  have hB : ¬ 53 ∣ 266106 := by decide
  have hexp :=
    has_exp_one_of_zmod 266106 266109 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 266106 266109 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 266106 266109 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      266106 266109 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      266106 266109 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_266444_266447 :
    HasPrimeWithExpOne (S_val 266444 266447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266444 266447 ∧ ¬ p ∣ (266447 - 266444) ∧
      ∃ (hNotC : ¬ p ∣ 266447) (hNotB : ¬ p ∣ 266444),
        order_of_C_B_inv_mod_p2 266447 266444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266444 266447 := by
  have hlt : (266444 : Nat) < 266447 := by decide
  have hcop : ¬ 53 ∣ (266447 - 266444) := by decide
  have heq : (266447 : ZMod 53) ^ 13 = (266444 : ZMod 53) ^ 13 := by decide
  have hne : (266447 : ZMod 2809) ^ 13 ≠ (266444 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 266447 := by decide
  have hB : ¬ 53 ∣ 266444 := by decide
  have hexp :=
    has_exp_one_of_zmod 266444 266447 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 266444 266447 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 266444 266447 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      266444 266447 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      266444 266447 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_266776_266779 :
    HasPrimeWithExpOne (S_val 266776 266779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266776 266779 ∧ ¬ p ∣ (266779 - 266776) ∧
      ∃ (hNotC : ¬ p ∣ 266779) (hNotB : ¬ p ∣ 266776),
        order_of_C_B_inv_mod_p2 266779 266776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266776 266779 := by
  have hlt : (266776 : Nat) < 266779 := by decide
  have hcop : ¬ 131 ∣ (266779 - 266776) := by decide
  have heq : (266779 : ZMod 131) ^ 13 = (266776 : ZMod 131) ^ 13 := by decide
  have hne : (266779 : ZMod 17161) ^ 13 ≠ (266776 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 266779 := by decide
  have hB : ¬ 131 ∣ 266776 := by decide
  have hexp :=
    has_exp_one_of_zmod 266776 266779 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 266776 266779 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 266776 266779 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      266776 266779 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      266776 266779 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_267113_267116 :
    HasPrimeWithExpOne (S_val 267113 267116) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267113 267116 ∧ ¬ p ∣ (267116 - 267113) ∧
      ∃ (hNotC : ¬ p ∣ 267116) (hNotB : ¬ p ∣ 267113),
        order_of_C_B_inv_mod_p2 267116 267113 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267113 267116 := by
  have hlt : (267113 : Nat) < 267116 := by decide
  have hcop : ¬ 53 ∣ (267116 - 267113) := by decide
  have heq : (267116 : ZMod 53) ^ 13 = (267113 : ZMod 53) ^ 13 := by decide
  have hne : (267116 : ZMod 2809) ^ 13 ≠ (267113 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 267116 := by decide
  have hB : ¬ 53 ∣ 267113 := by decide
  have hexp :=
    has_exp_one_of_zmod 267113 267116 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 267113 267116 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 267113 267116 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      267113 267116 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      267113 267116 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_267449_267452 :
    HasPrimeWithExpOne (S_val 267449 267452) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267449 267452 ∧ ¬ p ∣ (267452 - 267449) ∧
      ∃ (hNotC : ¬ p ∣ 267452) (hNotB : ¬ p ∣ 267449),
        order_of_C_B_inv_mod_p2 267452 267449 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267449 267452 := by
  have hlt : (267449 : Nat) < 267452 := by decide
  have hcop : ¬ 79 ∣ (267452 - 267449) := by decide
  have heq : (267452 : ZMod 79) ^ 13 = (267449 : ZMod 79) ^ 13 := by decide
  have hne : (267452 : ZMod 6241) ^ 13 ≠ (267449 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 267452 := by decide
  have hB : ¬ 79 ∣ 267449 := by decide
  have hexp :=
    has_exp_one_of_zmod 267449 267452 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 267449 267452 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 267449 267452 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      267449 267452 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      267449 267452 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_267784_267787 :
    HasPrimeWithExpOne (S_val 267784 267787) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267784 267787 ∧ ¬ p ∣ (267787 - 267784) ∧
      ∃ (hNotC : ¬ p ∣ 267787) (hNotB : ¬ p ∣ 267784),
        order_of_C_B_inv_mod_p2 267787 267784 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267784 267787 := by
  have hlt : (267784 : Nat) < 267787 := by decide
  have hcop : ¬ 79 ∣ (267787 - 267784) := by decide
  have heq : (267787 : ZMod 79) ^ 13 = (267784 : ZMod 79) ^ 13 := by decide
  have hne : (267787 : ZMod 6241) ^ 13 ≠ (267784 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 267787 := by decide
  have hB : ¬ 79 ∣ 267784 := by decide
  have hexp :=
    has_exp_one_of_zmod 267784 267787 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 267784 267787 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 267784 267787 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      267784 267787 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      267784 267787 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_268120_268123 :
    HasPrimeWithExpOne (S_val 268120 268123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268120 268123 ∧ ¬ p ∣ (268123 - 268120) ∧
      ∃ (hNotC : ¬ p ∣ 268123) (hNotB : ¬ p ∣ 268120),
        order_of_C_B_inv_mod_p2 268123 268120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268120 268123 := by
  have hlt : (268120 : Nat) < 268123 := by decide
  have hcop : ¬ 53 ∣ (268123 - 268120) := by decide
  have heq : (268123 : ZMod 53) ^ 13 = (268120 : ZMod 53) ^ 13 := by decide
  have hne : (268123 : ZMod 2809) ^ 13 ≠ (268120 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 268123 := by decide
  have hB : ¬ 53 ∣ 268120 := by decide
  have hexp :=
    has_exp_one_of_zmod 268120 268123 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 268120 268123 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 268120 268123 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      268120 268123 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      268120 268123 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_268456_268459 :
    HasPrimeWithExpOne (S_val 268456 268459) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268456 268459 ∧ ¬ p ∣ (268459 - 268456) ∧
      ∃ (hNotC : ¬ p ∣ 268459) (hNotB : ¬ p ∣ 268456),
        order_of_C_B_inv_mod_p2 268459 268456 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268456 268459 := by
  have hlt : (268456 : Nat) < 268459 := by decide
  have hcop : ¬ 79 ∣ (268459 - 268456) := by decide
  have heq : (268459 : ZMod 79) ^ 13 = (268456 : ZMod 79) ^ 13 := by decide
  have hne : (268459 : ZMod 6241) ^ 13 ≠ (268456 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 268459 := by decide
  have hB : ¬ 79 ∣ 268456 := by decide
  have hexp :=
    has_exp_one_of_zmod 268456 268459 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 268456 268459 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 268456 268459 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      268456 268459 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      268456 268459 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_268792_268795 :
    HasPrimeWithExpOne (S_val 268792 268795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268792 268795 ∧ ¬ p ∣ (268795 - 268792) ∧
      ∃ (hNotC : ¬ p ∣ 268795) (hNotB : ¬ p ∣ 268792),
        order_of_C_B_inv_mod_p2 268795 268792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268792 268795 := by
  have hlt : (268792 : Nat) < 268795 := by decide
  have hcop : ¬ 79 ∣ (268795 - 268792) := by decide
  have heq : (268795 : ZMod 79) ^ 13 = (268792 : ZMod 79) ^ 13 := by decide
  have hne : (268795 : ZMod 6241) ^ 13 ≠ (268792 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 268795 := by decide
  have hB : ¬ 79 ∣ 268792 := by decide
  have hexp :=
    has_exp_one_of_zmod 268792 268795 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 268792 268795 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 268792 268795 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      268792 268795 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      268792 268795 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_269127_269130 :
    HasPrimeWithExpOne (S_val 269127 269130) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269127 269130 ∧ ¬ p ∣ (269130 - 269127) ∧
      ∃ (hNotC : ¬ p ∣ 269130) (hNotB : ¬ p ∣ 269127),
        order_of_C_B_inv_mod_p2 269130 269127 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269127 269130 := by
  have hlt : (269127 : Nat) < 269130 := by decide
  have hcop : ¬ 53 ∣ (269130 - 269127) := by decide
  have heq : (269130 : ZMod 53) ^ 13 = (269127 : ZMod 53) ^ 13 := by decide
  have hne : (269130 : ZMod 2809) ^ 13 ≠ (269127 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 269130 := by decide
  have hB : ¬ 53 ∣ 269127 := by decide
  have hexp :=
    has_exp_one_of_zmod 269127 269130 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 269127 269130 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 269127 269130 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      269127 269130 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      269127 269130 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_269462_269465 :
    HasPrimeWithExpOne (S_val 269462 269465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269462 269465 ∧ ¬ p ∣ (269465 - 269462) ∧
      ∃ (hNotC : ¬ p ∣ 269465) (hNotB : ¬ p ∣ 269462),
        order_of_C_B_inv_mod_p2 269465 269462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269462 269465 := by
  have hlt : (269462 : Nat) < 269465 := by decide
  have hcop : ¬ 53 ∣ (269465 - 269462) := by decide
  have heq : (269465 : ZMod 53) ^ 13 = (269462 : ZMod 53) ^ 13 := by decide
  have hne : (269465 : ZMod 2809) ^ 13 ≠ (269462 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 269465 := by decide
  have hB : ¬ 53 ∣ 269462 := by decide
  have hexp :=
    has_exp_one_of_zmod 269462 269465 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 269462 269465 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 269462 269465 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      269462 269465 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      269462 269465 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_269798_269801 :
    HasPrimeWithExpOne (S_val 269798 269801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269798 269801 ∧ ¬ p ∣ (269801 - 269798) ∧
      ∃ (hNotC : ¬ p ∣ 269801) (hNotB : ¬ p ∣ 269798),
        order_of_C_B_inv_mod_p2 269801 269798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269798 269801 := by
  have hlt : (269798 : Nat) < 269801 := by decide
  have hcop : ¬ 79 ∣ (269801 - 269798) := by decide
  have heq : (269801 : ZMod 79) ^ 13 = (269798 : ZMod 79) ^ 13 := by decide
  have hne : (269801 : ZMod 6241) ^ 13 ≠ (269798 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 269801 := by decide
  have hB : ¬ 79 ∣ 269798 := by decide
  have hexp :=
    has_exp_one_of_zmod 269798 269801 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 269798 269801 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 269798 269801 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      269798 269801 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      269798 269801 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_270134_270137 :
    HasPrimeWithExpOne (S_val 270134 270137) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270134 270137 ∧ ¬ p ∣ (270137 - 270134) ∧
      ∃ (hNotC : ¬ p ∣ 270137) (hNotB : ¬ p ∣ 270134),
        order_of_C_B_inv_mod_p2 270137 270134 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270134 270137 := by
  have hlt : (270134 : Nat) < 270137 := by decide
  have hcop : ¬ 53 ∣ (270137 - 270134) := by decide
  have heq : (270137 : ZMod 53) ^ 13 = (270134 : ZMod 53) ^ 13 := by decide
  have hne : (270137 : ZMod 2809) ^ 13 ≠ (270134 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 270137 := by decide
  have hB : ¬ 53 ∣ 270134 := by decide
  have hexp :=
    has_exp_one_of_zmod 270134 270137 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 270134 270137 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 270134 270137 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      270134 270137 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      270134 270137 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_270470_270473 :
    HasPrimeWithExpOne (S_val 270470 270473) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270470 270473 ∧ ¬ p ∣ (270473 - 270470) ∧
      ∃ (hNotC : ¬ p ∣ 270473) (hNotB : ¬ p ∣ 270470),
        order_of_C_B_inv_mod_p2 270473 270470 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270470 270473 := by
  have hlt : (270470 : Nat) < 270473 := by decide
  have hcop : ¬ 79 ∣ (270473 - 270470) := by decide
  have heq : (270473 : ZMod 79) ^ 13 = (270470 : ZMod 79) ^ 13 := by decide
  have hne : (270473 : ZMod 6241) ^ 13 ≠ (270470 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 270473 := by decide
  have hB : ¬ 79 ∣ 270470 := by decide
  have hexp :=
    has_exp_one_of_zmod 270470 270473 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 270470 270473 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 270470 270473 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      270470 270473 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      270470 270473 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_270805_270808 :
    HasPrimeWithExpOne (S_val 270805 270808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270805 270808 ∧ ¬ p ∣ (270808 - 270805) ∧
      ∃ (hNotC : ¬ p ∣ 270808) (hNotB : ¬ p ∣ 270805),
        order_of_C_B_inv_mod_p2 270808 270805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270805 270808 := by
  have hlt : (270805 : Nat) < 270808 := by decide
  have hcop : ¬ 313 ∣ (270808 - 270805) := by decide
  have heq : (270808 : ZMod 313) ^ 13 = (270805 : ZMod 313) ^ 13 := by decide
  have hne : (270808 : ZMod 97969) ^ 13 ≠ (270805 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 270808 := by decide
  have hB : ¬ 313 ∣ 270805 := by decide
  have hexp :=
    has_exp_one_of_zmod 270805 270808 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 270805 270808 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 270805 270808 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      270805 270808 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      270805 270808 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_271141_271144 :
    HasPrimeWithExpOne (S_val 271141 271144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271141 271144 ∧ ¬ p ∣ (271144 - 271141) ∧
      ∃ (hNotC : ¬ p ∣ 271144) (hNotB : ¬ p ∣ 271141),
        order_of_C_B_inv_mod_p2 271144 271141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271141 271144 := by
  have hlt : (271141 : Nat) < 271144 := by decide
  have hcop : ¬ 53 ∣ (271144 - 271141) := by decide
  have heq : (271144 : ZMod 53) ^ 13 = (271141 : ZMod 53) ^ 13 := by decide
  have hne : (271144 : ZMod 2809) ^ 13 ≠ (271141 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 271144 := by decide
  have hB : ¬ 53 ∣ 271141 := by decide
  have hexp :=
    has_exp_one_of_zmod 271141 271144 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 271141 271144 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 271141 271144 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      271141 271144 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      271141 271144 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_271476_271479 :
    HasPrimeWithExpOne (S_val 271476 271479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271476 271479 ∧ ¬ p ∣ (271479 - 271476) ∧
      ∃ (hNotC : ¬ p ∣ 271479) (hNotB : ¬ p ∣ 271476),
        order_of_C_B_inv_mod_p2 271479 271476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271476 271479 := by
  have hlt : (271476 : Nat) < 271479 := by decide
  have hcop : ¬ 53 ∣ (271479 - 271476) := by decide
  have heq : (271479 : ZMod 53) ^ 13 = (271476 : ZMod 53) ^ 13 := by decide
  have hne : (271479 : ZMod 2809) ^ 13 ≠ (271476 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 271479 := by decide
  have hB : ¬ 53 ∣ 271476 := by decide
  have hexp :=
    has_exp_one_of_zmod 271476 271479 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 271476 271479 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 271476 271479 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      271476 271479 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      271476 271479 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_271812_271815 :
    HasPrimeWithExpOne (S_val 271812 271815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271812 271815 ∧ ¬ p ∣ (271815 - 271812) ∧
      ∃ (hNotC : ¬ p ∣ 271815) (hNotB : ¬ p ∣ 271812),
        order_of_C_B_inv_mod_p2 271815 271812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271812 271815 := by
  have hlt : (271812 : Nat) < 271815 := by decide
  have hcop : ¬ 521 ∣ (271815 - 271812) := by decide
  have heq : (271815 : ZMod 521) ^ 13 = (271812 : ZMod 521) ^ 13 := by decide
  have hne : (271815 : ZMod 271441) ^ 13 ≠ (271812 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 271815 := by decide
  have hB : ¬ 521 ∣ 271812 := by decide
  have hexp :=
    has_exp_one_of_zmod 271812 271815 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 271812 271815 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 271812 271815 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      271812 271815 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      271812 271815 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_272147_272150 :
    HasPrimeWithExpOne (S_val 272147 272150) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272147 272150 ∧ ¬ p ∣ (272150 - 272147) ∧
      ∃ (hNotC : ¬ p ∣ 272150) (hNotB : ¬ p ∣ 272147),
        order_of_C_B_inv_mod_p2 272150 272147 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272147 272150 := by
  have hlt : (272147 : Nat) < 272150 := by decide
  have hcop : ¬ 53 ∣ (272150 - 272147) := by decide
  have heq : (272150 : ZMod 53) ^ 13 = (272147 : ZMod 53) ^ 13 := by decide
  have hne : (272150 : ZMod 2809) ^ 13 ≠ (272147 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 272150 := by decide
  have hB : ¬ 53 ∣ 272147 := by decide
  have hexp :=
    has_exp_one_of_zmod 272147 272150 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 272147 272150 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 272147 272150 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      272147 272150 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      272147 272150 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_272483_272486 :
    HasPrimeWithExpOne (S_val 272483 272486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272483 272486 ∧ ¬ p ∣ (272486 - 272483) ∧
      ∃ (hNotC : ¬ p ∣ 272486) (hNotB : ¬ p ∣ 272483),
        order_of_C_B_inv_mod_p2 272486 272483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272483 272486 := by
  have hlt : (272483 : Nat) < 272486 := by decide
  have hcop : ¬ 53 ∣ (272486 - 272483) := by decide
  have heq : (272486 : ZMod 53) ^ 13 = (272483 : ZMod 53) ^ 13 := by decide
  have hne : (272486 : ZMod 2809) ^ 13 ≠ (272483 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 272486 := by decide
  have hB : ¬ 53 ∣ 272483 := by decide
  have hexp :=
    has_exp_one_of_zmod 272483 272486 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 272483 272486 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 272483 272486 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      272483 272486 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      272483 272486 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_272821_272824 :
    HasPrimeWithExpOne (S_val 272821 272824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272821 272824 ∧ ¬ p ∣ (272824 - 272821) ∧
      ∃ (hNotC : ¬ p ∣ 272824) (hNotB : ¬ p ∣ 272821),
        order_of_C_B_inv_mod_p2 272824 272821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272821 272824 := by
  have hlt : (272821 : Nat) < 272824 := by decide
  have hcop : ¬ 79 ∣ (272824 - 272821) := by decide
  have heq : (272824 : ZMod 79) ^ 13 = (272821 : ZMod 79) ^ 13 := by decide
  have hne : (272824 : ZMod 6241) ^ 13 ≠ (272821 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 272824 := by decide
  have hB : ¬ 79 ∣ 272821 := by decide
  have hexp :=
    has_exp_one_of_zmod 272821 272824 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 272821 272824 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 272821 272824 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      272821 272824 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      272821 272824 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_273154_273157 :
    HasPrimeWithExpOne (S_val 273154 273157) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273154 273157 ∧ ¬ p ∣ (273157 - 273154) ∧
      ∃ (hNotC : ¬ p ∣ 273157) (hNotB : ¬ p ∣ 273154),
        order_of_C_B_inv_mod_p2 273157 273154 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273154 273157 := by
  have hlt : (273154 : Nat) < 273157 := by decide
  have hcop : ¬ 53 ∣ (273157 - 273154) := by decide
  have heq : (273157 : ZMod 53) ^ 13 = (273154 : ZMod 53) ^ 13 := by decide
  have hne : (273157 : ZMod 2809) ^ 13 ≠ (273154 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 273157 := by decide
  have hB : ¬ 53 ∣ 273154 := by decide
  have hexp :=
    has_exp_one_of_zmod 273154 273157 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 273154 273157 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 273154 273157 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      273154 273157 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      273154 273157 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_273490_273493 :
    HasPrimeWithExpOne (S_val 273490 273493) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273490 273493 ∧ ¬ p ∣ (273493 - 273490) ∧
      ∃ (hNotC : ¬ p ∣ 273493) (hNotB : ¬ p ∣ 273490),
        order_of_C_B_inv_mod_p2 273493 273490 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273490 273493 := by
  have hlt : (273490 : Nat) < 273493 := by decide
  have hcop : ¬ 53 ∣ (273493 - 273490) := by decide
  have heq : (273493 : ZMod 53) ^ 13 = (273490 : ZMod 53) ^ 13 := by decide
  have hne : (273493 : ZMod 2809) ^ 13 ≠ (273490 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 273493 := by decide
  have hB : ¬ 53 ∣ 273490 := by decide
  have hexp :=
    has_exp_one_of_zmod 273490 273493 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 273490 273493 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 273490 273493 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      273490 273493 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      273490 273493 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_273826_273829 :
    HasPrimeWithExpOne (S_val 273826 273829) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273826 273829 ∧ ¬ p ∣ (273829 - 273826) ∧
      ∃ (hNotC : ¬ p ∣ 273829) (hNotB : ¬ p ∣ 273826),
        order_of_C_B_inv_mod_p2 273829 273826 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273826 273829 := by
  have hlt : (273826 : Nat) < 273829 := by decide
  have hcop : ¬ 79 ∣ (273829 - 273826) := by decide
  have heq : (273829 : ZMod 79) ^ 13 = (273826 : ZMod 79) ^ 13 := by decide
  have hne : (273829 : ZMod 6241) ^ 13 ≠ (273826 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 273829 := by decide
  have hB : ¬ 79 ∣ 273826 := by decide
  have hexp :=
    has_exp_one_of_zmod 273826 273829 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 273826 273829 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 273826 273829 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      273826 273829 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      273826 273829 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_274161_274164 :
    HasPrimeWithExpOne (S_val 274161 274164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274161 274164 ∧ ¬ p ∣ (274164 - 274161) ∧
      ∃ (hNotC : ¬ p ∣ 274164) (hNotB : ¬ p ∣ 274161),
        order_of_C_B_inv_mod_p2 274164 274161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274161 274164 := by
  have hlt : (274161 : Nat) < 274164 := by decide
  have hcop : ¬ 53 ∣ (274164 - 274161) := by decide
  have heq : (274164 : ZMod 53) ^ 13 = (274161 : ZMod 53) ^ 13 := by decide
  have hne : (274164 : ZMod 2809) ^ 13 ≠ (274161 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 274164 := by decide
  have hB : ¬ 53 ∣ 274161 := by decide
  have hexp :=
    has_exp_one_of_zmod 274161 274164 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 274161 274164 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 274161 274164 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      274161 274164 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      274161 274164 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_274497_274500 :
    HasPrimeWithExpOne (S_val 274497 274500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274497 274500 ∧ ¬ p ∣ (274500 - 274497) ∧
      ∃ (hNotC : ¬ p ∣ 274500) (hNotB : ¬ p ∣ 274497),
        order_of_C_B_inv_mod_p2 274500 274497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274497 274500 := by
  have hlt : (274497 : Nat) < 274500 := by decide
  have hcop : ¬ 53 ∣ (274500 - 274497) := by decide
  have heq : (274500 : ZMod 53) ^ 13 = (274497 : ZMod 53) ^ 13 := by decide
  have hne : (274500 : ZMod 2809) ^ 13 ≠ (274497 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 274500 := by decide
  have hB : ¬ 53 ∣ 274497 := by decide
  have hexp :=
    has_exp_one_of_zmod 274497 274500 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 274497 274500 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 274497 274500 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      274497 274500 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      274497 274500 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_274834_274837 :
    HasPrimeWithExpOne (S_val 274834 274837) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274834 274837 ∧ ¬ p ∣ (274837 - 274834) ∧
      ∃ (hNotC : ¬ p ∣ 274837) (hNotB : ¬ p ∣ 274834),
        order_of_C_B_inv_mod_p2 274837 274834 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274834 274837 := by
  have hlt : (274834 : Nat) < 274837 := by decide
  have hcop : ¬ 157 ∣ (274837 - 274834) := by decide
  have heq : (274837 : ZMod 157) ^ 13 = (274834 : ZMod 157) ^ 13 := by decide
  have hne : (274837 : ZMod 24649) ^ 13 ≠ (274834 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 274837 := by decide
  have hB : ¬ 157 ∣ 274834 := by decide
  have hexp :=
    has_exp_one_of_zmod 274834 274837 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 274834 274837 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 274834 274837 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      274834 274837 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      274834 274837 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_275168_275171 :
    HasPrimeWithExpOne (S_val 275168 275171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275168 275171 ∧ ¬ p ∣ (275171 - 275168) ∧
      ∃ (hNotC : ¬ p ∣ 275171) (hNotB : ¬ p ∣ 275168),
        order_of_C_B_inv_mod_p2 275171 275168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275168 275171 := by
  have hlt : (275168 : Nat) < 275171 := by decide
  have hcop : ¬ 53 ∣ (275171 - 275168) := by decide
  have heq : (275171 : ZMod 53) ^ 13 = (275168 : ZMod 53) ^ 13 := by decide
  have hne : (275171 : ZMod 2809) ^ 13 ≠ (275168 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 275171 := by decide
  have hB : ¬ 53 ∣ 275168 := by decide
  have hexp :=
    has_exp_one_of_zmod 275168 275171 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 275168 275171 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 275168 275171 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      275168 275171 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      275168 275171 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_275503_275506 :
    HasPrimeWithExpOne (S_val 275503 275506) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275503 275506 ∧ ¬ p ∣ (275506 - 275503) ∧
      ∃ (hNotC : ¬ p ∣ 275506) (hNotB : ¬ p ∣ 275503),
        order_of_C_B_inv_mod_p2 275506 275503 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275503 275506 := by
  have hlt : (275503 : Nat) < 275506 := by decide
  have hcop : ¬ 157 ∣ (275506 - 275503) := by decide
  have heq : (275506 : ZMod 157) ^ 13 = (275503 : ZMod 157) ^ 13 := by decide
  have hne : (275506 : ZMod 24649) ^ 13 ≠ (275503 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 275506 := by decide
  have hB : ¬ 157 ∣ 275503 := by decide
  have hexp :=
    has_exp_one_of_zmod 275503 275506 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 275503 275506 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 275503 275506 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      275503 275506 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      275503 275506 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_275840_275843 :
    HasPrimeWithExpOne (S_val 275840 275843) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275840 275843 ∧ ¬ p ∣ (275843 - 275840) ∧
      ∃ (hNotC : ¬ p ∣ 275843) (hNotB : ¬ p ∣ 275840),
        order_of_C_B_inv_mod_p2 275843 275840 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275840 275843 := by
  have hlt : (275840 : Nat) < 275843 := by decide
  have hcop : ¬ 131 ∣ (275843 - 275840) := by decide
  have heq : (275843 : ZMod 131) ^ 13 = (275840 : ZMod 131) ^ 13 := by decide
  have hne : (275843 : ZMod 17161) ^ 13 ≠ (275840 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 275843 := by decide
  have hB : ¬ 131 ∣ 275840 := by decide
  have hexp :=
    has_exp_one_of_zmod 275840 275843 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 275840 275843 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 275840 275843 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      275840 275843 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      275840 275843 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_276174_276177 :
    HasPrimeWithExpOne (S_val 276174 276177) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276174 276177 ∧ ¬ p ∣ (276177 - 276174) ∧
      ∃ (hNotC : ¬ p ∣ 276177) (hNotB : ¬ p ∣ 276174),
        order_of_C_B_inv_mod_p2 276177 276174 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276174 276177 := by
  have hlt : (276174 : Nat) < 276177 := by decide
  have hcop : ¬ 53 ∣ (276177 - 276174) := by decide
  have heq : (276177 : ZMod 53) ^ 13 = (276174 : ZMod 53) ^ 13 := by decide
  have hne : (276177 : ZMod 2809) ^ 13 ≠ (276174 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 276177 := by decide
  have hB : ¬ 53 ∣ 276174 := by decide
  have hexp :=
    has_exp_one_of_zmod 276174 276177 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 276174 276177 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 276174 276177 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      276174 276177 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      276174 276177 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_276510_276513 :
    HasPrimeWithExpOne (S_val 276510 276513) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276510 276513 ∧ ¬ p ∣ (276513 - 276510) ∧
      ∃ (hNotC : ¬ p ∣ 276513) (hNotB : ¬ p ∣ 276510),
        order_of_C_B_inv_mod_p2 276513 276510 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276510 276513 := by
  have hlt : (276510 : Nat) < 276513 := by decide
  have hcop : ¬ 157 ∣ (276513 - 276510) := by decide
  have heq : (276513 : ZMod 157) ^ 13 = (276510 : ZMod 157) ^ 13 := by decide
  have hne : (276513 : ZMod 24649) ^ 13 ≠ (276510 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 276513 := by decide
  have hB : ¬ 157 ∣ 276510 := by decide
  have hexp :=
    has_exp_one_of_zmod 276510 276513 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 276510 276513 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 276510 276513 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      276510 276513 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      276510 276513 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_276846_276849 :
    HasPrimeWithExpOne (S_val 276846 276849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276846 276849 ∧ ¬ p ∣ (276849 - 276846) ∧
      ∃ (hNotC : ¬ p ∣ 276849) (hNotB : ¬ p ∣ 276846),
        order_of_C_B_inv_mod_p2 276849 276846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276846 276849 := by
  have hlt : (276846 : Nat) < 276849 := by decide
  have hcop : ¬ 131 ∣ (276849 - 276846) := by decide
  have heq : (276849 : ZMod 131) ^ 13 = (276846 : ZMod 131) ^ 13 := by decide
  have hne : (276849 : ZMod 17161) ^ 13 ≠ (276846 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 276849 := by decide
  have hB : ¬ 131 ∣ 276846 := by decide
  have hexp :=
    has_exp_one_of_zmod 276846 276849 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 276846 276849 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 276846 276849 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      276846 276849 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      276846 276849 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_277181_277184 :
    HasPrimeWithExpOne (S_val 277181 277184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277181 277184 ∧ ¬ p ∣ (277184 - 277181) ∧
      ∃ (hNotC : ¬ p ∣ 277184) (hNotB : ¬ p ∣ 277181),
        order_of_C_B_inv_mod_p2 277184 277181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277181 277184 := by
  have hlt : (277181 : Nat) < 277184 := by decide
  have hcop : ¬ 53 ∣ (277184 - 277181) := by decide
  have heq : (277184 : ZMod 53) ^ 13 = (277181 : ZMod 53) ^ 13 := by decide
  have hne : (277184 : ZMod 2809) ^ 13 ≠ (277181 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 277184 := by decide
  have hB : ¬ 53 ∣ 277181 := by decide
  have hexp :=
    has_exp_one_of_zmod 277181 277184 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 277181 277184 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 277181 277184 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      277181 277184 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      277181 277184 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_277518_277521 :
    HasPrimeWithExpOne (S_val 277518 277521) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277518 277521 ∧ ¬ p ∣ (277521 - 277518) ∧
      ∃ (hNotC : ¬ p ∣ 277521) (hNotB : ¬ p ∣ 277518),
        order_of_C_B_inv_mod_p2 277521 277518 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277518 277521 := by
  have hlt : (277518 : Nat) < 277521 := by decide
  have hcop : ¬ 53 ∣ (277521 - 277518) := by decide
  have heq : (277521 : ZMod 53) ^ 13 = (277518 : ZMod 53) ^ 13 := by decide
  have hne : (277521 : ZMod 2809) ^ 13 ≠ (277518 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 277521 := by decide
  have hB : ¬ 53 ∣ 277518 := by decide
  have hexp :=
    has_exp_one_of_zmod 277518 277521 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 277518 277521 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 277518 277521 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      277518 277521 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      277518 277521 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_277854_277857 :
    HasPrimeWithExpOne (S_val 277854 277857) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277854 277857 ∧ ¬ p ∣ (277857 - 277854) ∧
      ∃ (hNotC : ¬ p ∣ 277857) (hNotB : ¬ p ∣ 277854),
        order_of_C_B_inv_mod_p2 277857 277854 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277854 277857 := by
  have hlt : (277854 : Nat) < 277857 := by decide
  have hcop : ¬ 157 ∣ (277857 - 277854) := by decide
  have heq : (277857 : ZMod 157) ^ 13 = (277854 : ZMod 157) ^ 13 := by decide
  have hne : (277857 : ZMod 24649) ^ 13 ≠ (277854 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 277857 := by decide
  have hB : ¬ 157 ∣ 277854 := by decide
  have hexp :=
    has_exp_one_of_zmod 277854 277857 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 277854 277857 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 277854 277857 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      277854 277857 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      277854 277857 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_278188_278191 :
    HasPrimeWithExpOne (S_val 278188 278191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278188 278191 ∧ ¬ p ∣ (278191 - 278188) ∧
      ∃ (hNotC : ¬ p ∣ 278191) (hNotB : ¬ p ∣ 278188),
        order_of_C_B_inv_mod_p2 278191 278188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278188 278191 := by
  have hlt : (278188 : Nat) < 278191 := by decide
  have hcop : ¬ 53 ∣ (278191 - 278188) := by decide
  have heq : (278191 : ZMod 53) ^ 13 = (278188 : ZMod 53) ^ 13 := by decide
  have hne : (278191 : ZMod 2809) ^ 13 ≠ (278188 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 278191 := by decide
  have hB : ¬ 53 ∣ 278188 := by decide
  have hexp :=
    has_exp_one_of_zmod 278188 278191 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 278188 278191 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 278188 278191 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      278188 278191 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      278188 278191 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_278524_278527 :
    HasPrimeWithExpOne (S_val 278524 278527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278524 278527 ∧ ¬ p ∣ (278527 - 278524) ∧
      ∃ (hNotC : ¬ p ∣ 278527) (hNotB : ¬ p ∣ 278524),
        order_of_C_B_inv_mod_p2 278527 278524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278524 278527 := by
  have hlt : (278524 : Nat) < 278527 := by decide
  have hcop : ¬ 313 ∣ (278527 - 278524) := by decide
  have heq : (278527 : ZMod 313) ^ 13 = (278524 : ZMod 313) ^ 13 := by decide
  have hne : (278527 : ZMod 97969) ^ 13 ≠ (278524 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 278527 := by decide
  have hB : ¬ 313 ∣ 278524 := by decide
  have hexp :=
    has_exp_one_of_zmod 278524 278527 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 278524 278527 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 278524 278527 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      278524 278527 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      278524 278527 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_278858_278861 :
    HasPrimeWithExpOne (S_val 278858 278861) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278858 278861 ∧ ¬ p ∣ (278861 - 278858) ∧
      ∃ (hNotC : ¬ p ∣ 278861) (hNotB : ¬ p ∣ 278858),
        order_of_C_B_inv_mod_p2 278861 278858 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278858 278861 := by
  have hlt : (278858 : Nat) < 278861 := by decide
  have hcop : ¬ 131 ∣ (278861 - 278858) := by decide
  have heq : (278861 : ZMod 131) ^ 13 = (278858 : ZMod 131) ^ 13 := by decide
  have hne : (278861 : ZMod 17161) ^ 13 ≠ (278858 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 278861 := by decide
  have hB : ¬ 131 ∣ 278858 := by decide
  have hexp :=
    has_exp_one_of_zmod 278858 278861 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 278858 278861 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 278858 278861 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      278858 278861 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      278858 278861 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_279195_279198 :
    HasPrimeWithExpOne (S_val 279195 279198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279195 279198 ∧ ¬ p ∣ (279198 - 279195) ∧
      ∃ (hNotC : ¬ p ∣ 279198) (hNotB : ¬ p ∣ 279195),
        order_of_C_B_inv_mod_p2 279198 279195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279195 279198 := by
  have hlt : (279195 : Nat) < 279198 := by decide
  have hcop : ¬ 53 ∣ (279198 - 279195) := by decide
  have heq : (279198 : ZMod 53) ^ 13 = (279195 : ZMod 53) ^ 13 := by decide
  have hne : (279198 : ZMod 2809) ^ 13 ≠ (279195 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 279198 := by decide
  have hB : ¬ 53 ∣ 279195 := by decide
  have hexp :=
    has_exp_one_of_zmod 279195 279198 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 279195 279198 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 279195 279198 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      279195 279198 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      279195 279198 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_279530_279533 :
    HasPrimeWithExpOne (S_val 279530 279533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279530 279533 ∧ ¬ p ∣ (279533 - 279530) ∧
      ∃ (hNotC : ¬ p ∣ 279533) (hNotB : ¬ p ∣ 279530),
        order_of_C_B_inv_mod_p2 279533 279530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279530 279533 := by
  have hlt : (279530 : Nat) < 279533 := by decide
  have hcop : ¬ 157 ∣ (279533 - 279530) := by decide
  have heq : (279533 : ZMod 157) ^ 13 = (279530 : ZMod 157) ^ 13 := by decide
  have hne : (279533 : ZMod 24649) ^ 13 ≠ (279530 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 279533 := by decide
  have hB : ¬ 157 ∣ 279530 := by decide
  have hexp :=
    has_exp_one_of_zmod 279530 279533 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 279530 279533 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 279530 279533 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      279530 279533 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      279530 279533 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_279865_279868 :
    HasPrimeWithExpOne (S_val 279865 279868) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279865 279868 ∧ ¬ p ∣ (279868 - 279865) ∧
      ∃ (hNotC : ¬ p ∣ 279868) (hNotB : ¬ p ∣ 279865),
        order_of_C_B_inv_mod_p2 279868 279865 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279865 279868 := by
  have hlt : (279865 : Nat) < 279868 := by decide
  have hcop : ¬ 157 ∣ (279868 - 279865) := by decide
  have heq : (279868 : ZMod 157) ^ 13 = (279865 : ZMod 157) ^ 13 := by decide
  have hne : (279868 : ZMod 24649) ^ 13 ≠ (279865 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 279868 := by decide
  have hB : ¬ 157 ∣ 279865 := by decide
  have hexp :=
    has_exp_one_of_zmod 279865 279868 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 279865 279868 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 279865 279868 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      279865 279868 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      279865 279868 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_280202_280205 :
    HasPrimeWithExpOne (S_val 280202 280205) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280202 280205 ∧ ¬ p ∣ (280205 - 280202) ∧
      ∃ (hNotC : ¬ p ∣ 280205) (hNotB : ¬ p ∣ 280202),
        order_of_C_B_inv_mod_p2 280205 280202 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280202 280205 := by
  have hlt : (280202 : Nat) < 280205 := by decide
  have hcop : ¬ 53 ∣ (280205 - 280202) := by decide
  have heq : (280205 : ZMod 53) ^ 13 = (280202 : ZMod 53) ^ 13 := by decide
  have hne : (280205 : ZMod 2809) ^ 13 ≠ (280202 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 280205 := by decide
  have hB : ¬ 53 ∣ 280202 := by decide
  have hexp :=
    has_exp_one_of_zmod 280202 280205 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 280202 280205 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 280202 280205 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      280202 280205 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      280202 280205 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_280538_280541 :
    HasPrimeWithExpOne (S_val 280538 280541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280538 280541 ∧ ¬ p ∣ (280541 - 280538) ∧
      ∃ (hNotC : ¬ p ∣ 280541) (hNotB : ¬ p ∣ 280538),
        order_of_C_B_inv_mod_p2 280541 280538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280538 280541 := by
  have hlt : (280538 : Nat) < 280541 := by decide
  have hcop : ¬ 521 ∣ (280541 - 280538) := by decide
  have heq : (280541 : ZMod 521) ^ 13 = (280538 : ZMod 521) ^ 13 := by decide
  have hne : (280541 : ZMod 271441) ^ 13 ≠ (280538 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 280541 := by decide
  have hB : ¬ 521 ∣ 280538 := by decide
  have hexp :=
    has_exp_one_of_zmod 280538 280541 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 280538 280541 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 280538 280541 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      280538 280541 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      280538 280541 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_280873_280876 :
    HasPrimeWithExpOne (S_val 280873 280876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280873 280876 ∧ ¬ p ∣ (280876 - 280873) ∧
      ∃ (hNotC : ¬ p ∣ 280876) (hNotB : ¬ p ∣ 280873),
        order_of_C_B_inv_mod_p2 280876 280873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280873 280876 := by
  have hlt : (280873 : Nat) < 280876 := by decide
  have hcop : ¬ 131 ∣ (280876 - 280873) := by decide
  have heq : (280876 : ZMod 131) ^ 13 = (280873 : ZMod 131) ^ 13 := by decide
  have hne : (280876 : ZMod 17161) ^ 13 ≠ (280873 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 280876 := by decide
  have hB : ¬ 131 ∣ 280873 := by decide
  have hexp :=
    has_exp_one_of_zmod 280873 280876 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 280873 280876 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 280873 280876 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      280873 280876 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      280873 280876 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_281208_281211 :
    HasPrimeWithExpOne (S_val 281208 281211) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281208 281211 ∧ ¬ p ∣ (281211 - 281208) ∧
      ∃ (hNotC : ¬ p ∣ 281211) (hNotB : ¬ p ∣ 281208),
        order_of_C_B_inv_mod_p2 281211 281208 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281208 281211 := by
  have hlt : (281208 : Nat) < 281211 := by decide
  have hcop : ¬ 157 ∣ (281211 - 281208) := by decide
  have heq : (281211 : ZMod 157) ^ 13 = (281208 : ZMod 157) ^ 13 := by decide
  have hne : (281211 : ZMod 24649) ^ 13 ≠ (281208 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 281211 := by decide
  have hB : ¬ 157 ∣ 281208 := by decide
  have hexp :=
    has_exp_one_of_zmod 281208 281211 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 281208 281211 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 281208 281211 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      281208 281211 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      281208 281211 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_281542_281545 :
    HasPrimeWithExpOne (S_val 281542 281545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281542 281545 ∧ ¬ p ∣ (281545 - 281542) ∧
      ∃ (hNotC : ¬ p ∣ 281545) (hNotB : ¬ p ∣ 281542),
        order_of_C_B_inv_mod_p2 281545 281542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281542 281545 := by
  have hlt : (281542 : Nat) < 281545 := by decide
  have hcop : ¬ 53 ∣ (281545 - 281542) := by decide
  have heq : (281545 : ZMod 53) ^ 13 = (281542 : ZMod 53) ^ 13 := by decide
  have hne : (281545 : ZMod 2809) ^ 13 ≠ (281542 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 281545 := by decide
  have hB : ¬ 53 ∣ 281542 := by decide
  have hexp :=
    has_exp_one_of_zmod 281542 281545 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 281542 281545 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 281542 281545 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      281542 281545 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      281542 281545 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_281878_281881 :
    HasPrimeWithExpOne (S_val 281878 281881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281878 281881 ∧ ¬ p ∣ (281881 - 281878) ∧
      ∃ (hNotC : ¬ p ∣ 281881) (hNotB : ¬ p ∣ 281878),
        order_of_C_B_inv_mod_p2 281881 281878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281878 281881 := by
  have hlt : (281878 : Nat) < 281881 := by decide
  have hcop : ¬ 157 ∣ (281881 - 281878) := by decide
  have heq : (281881 : ZMod 157) ^ 13 = (281878 : ZMod 157) ^ 13 := by decide
  have hne : (281881 : ZMod 24649) ^ 13 ≠ (281878 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 281881 := by decide
  have hB : ¬ 157 ∣ 281878 := by decide
  have hexp :=
    has_exp_one_of_zmod 281878 281881 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 281878 281881 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 281878 281881 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      281878 281881 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      281878 281881 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_282213_282216 :
    HasPrimeWithExpOne (S_val 282213 282216) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282213 282216 ∧ ¬ p ∣ (282216 - 282213) ∧
      ∃ (hNotC : ¬ p ∣ 282216) (hNotB : ¬ p ∣ 282213),
        order_of_C_B_inv_mod_p2 282216 282213 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282213 282216 := by
  have hlt : (282213 : Nat) < 282216 := by decide
  have hcop : ¬ 157 ∣ (282216 - 282213) := by decide
  have heq : (282216 : ZMod 157) ^ 13 = (282213 : ZMod 157) ^ 13 := by decide
  have hne : (282216 : ZMod 24649) ^ 13 ≠ (282213 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 282216 := by decide
  have hB : ¬ 157 ∣ 282213 := by decide
  have hexp :=
    has_exp_one_of_zmod 282213 282216 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 282213 282216 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 282213 282216 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      282213 282216 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      282213 282216 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_282549_282552 :
    HasPrimeWithExpOne (S_val 282549 282552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282549 282552 ∧ ¬ p ∣ (282552 - 282549) ∧
      ∃ (hNotC : ¬ p ∣ 282552) (hNotB : ¬ p ∣ 282549),
        order_of_C_B_inv_mod_p2 282552 282549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282549 282552 := by
  have hlt : (282549 : Nat) < 282552 := by decide
  have hcop : ¬ 53 ∣ (282552 - 282549) := by decide
  have heq : (282552 : ZMod 53) ^ 13 = (282549 : ZMod 53) ^ 13 := by decide
  have hne : (282552 : ZMod 2809) ^ 13 ≠ (282549 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 282552 := by decide
  have hB : ¬ 53 ∣ 282549 := by decide
  have hexp :=
    has_exp_one_of_zmod 282549 282552 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 282549 282552 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 282549 282552 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      282549 282552 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      282549 282552 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_282884_282887 :
    HasPrimeWithExpOne (S_val 282884 282887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282884 282887 ∧ ¬ p ∣ (282887 - 282884) ∧
      ∃ (hNotC : ¬ p ∣ 282887) (hNotB : ¬ p ∣ 282884),
        order_of_C_B_inv_mod_p2 282887 282884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282884 282887 := by
  have hlt : (282884 : Nat) < 282887 := by decide
  have hcop : ¬ 79 ∣ (282887 - 282884) := by decide
  have heq : (282887 : ZMod 79) ^ 13 = (282884 : ZMod 79) ^ 13 := by decide
  have hne : (282887 : ZMod 6241) ^ 13 ≠ (282884 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 282887 := by decide
  have hB : ¬ 79 ∣ 282884 := by decide
  have hexp :=
    has_exp_one_of_zmod 282884 282887 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 282884 282887 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 282884 282887 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      282884 282887 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      282884 282887 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_283223_283226 :
    HasPrimeWithExpOne (S_val 283223 283226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283223 283226 ∧ ¬ p ∣ (283226 - 283223) ∧
      ∃ (hNotC : ¬ p ∣ 283226) (hNotB : ¬ p ∣ 283223),
        order_of_C_B_inv_mod_p2 283226 283223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283223 283226 := by
  have hlt : (283223 : Nat) < 283226 := by decide
  have hcop : ¬ 53 ∣ (283226 - 283223) := by decide
  have heq : (283226 : ZMod 53) ^ 13 = (283223 : ZMod 53) ^ 13 := by decide
  have hne : (283226 : ZMod 2809) ^ 13 ≠ (283223 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 283226 := by decide
  have hB : ¬ 53 ∣ 283223 := by decide
  have hexp :=
    has_exp_one_of_zmod 283223 283226 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 283223 283226 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 283223 283226 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      283223 283226 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      283223 283226 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_283557_283560 :
    HasPrimeWithExpOne (S_val 283557 283560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283557 283560 ∧ ¬ p ∣ (283560 - 283557) ∧
      ∃ (hNotC : ¬ p ∣ 283560) (hNotB : ¬ p ∣ 283557),
        order_of_C_B_inv_mod_p2 283560 283557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283557 283560 := by
  have hlt : (283557 : Nat) < 283560 := by decide
  have hcop : ¬ 131 ∣ (283560 - 283557) := by decide
  have heq : (283560 : ZMod 131) ^ 13 = (283557 : ZMod 131) ^ 13 := by decide
  have hne : (283560 : ZMod 17161) ^ 13 ≠ (283557 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 283560 := by decide
  have hB : ¬ 131 ∣ 283557 := by decide
  have hexp :=
    has_exp_one_of_zmod 283557 283560 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 283557 283560 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 283557 283560 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      283557 283560 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      283557 283560 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_283889_283892 :
    HasPrimeWithExpOne (S_val 283889 283892) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283889 283892 ∧ ¬ p ∣ (283892 - 283889) ∧
      ∃ (hNotC : ¬ p ∣ 283892) (hNotB : ¬ p ∣ 283889),
        order_of_C_B_inv_mod_p2 283892 283889 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283889 283892 := by
  have hlt : (283889 : Nat) < 283892 := by decide
  have hcop : ¬ 79 ∣ (283892 - 283889) := by decide
  have heq : (283892 : ZMod 79) ^ 13 = (283889 : ZMod 79) ^ 13 := by decide
  have hne : (283892 : ZMod 6241) ^ 13 ≠ (283889 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 283892 := by decide
  have hB : ¬ 79 ∣ 283889 := by decide
  have hexp :=
    has_exp_one_of_zmod 283889 283892 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 283889 283892 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 283889 283892 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      283889 283892 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      283889 283892 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_284229_284232 :
    HasPrimeWithExpOne (S_val 284229 284232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284229 284232 ∧ ¬ p ∣ (284232 - 284229) ∧
      ∃ (hNotC : ¬ p ∣ 284232) (hNotB : ¬ p ∣ 284229),
        order_of_C_B_inv_mod_p2 284232 284229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284229 284232 := by
  have hlt : (284229 : Nat) < 284232 := by decide
  have hcop : ¬ 131 ∣ (284232 - 284229) := by decide
  have heq : (284232 : ZMod 131) ^ 13 = (284229 : ZMod 131) ^ 13 := by decide
  have hne : (284232 : ZMod 17161) ^ 13 ≠ (284229 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 284232 := by decide
  have hB : ¬ 131 ∣ 284229 := by decide
  have hexp :=
    has_exp_one_of_zmod 284229 284232 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 284229 284232 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 284229 284232 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      284229 284232 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      284229 284232 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_284563_284566 :
    HasPrimeWithExpOne (S_val 284563 284566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284563 284566 ∧ ¬ p ∣ (284566 - 284563) ∧
      ∃ (hNotC : ¬ p ∣ 284566) (hNotB : ¬ p ∣ 284563),
        order_of_C_B_inv_mod_p2 284566 284563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284563 284566 := by
  have hlt : (284563 : Nat) < 284566 := by decide
  have hcop : ¬ 53 ∣ (284566 - 284563) := by decide
  have heq : (284566 : ZMod 53) ^ 13 = (284563 : ZMod 53) ^ 13 := by decide
  have hne : (284566 : ZMod 2809) ^ 13 ≠ (284563 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 284566 := by decide
  have hB : ¬ 53 ∣ 284563 := by decide
  have hexp :=
    has_exp_one_of_zmod 284563 284566 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 284563 284566 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 284563 284566 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      284563 284566 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      284563 284566 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_284897_284900 :
    HasPrimeWithExpOne (S_val 284897 284900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284897 284900 ∧ ¬ p ∣ (284900 - 284897) ∧
      ∃ (hNotC : ¬ p ∣ 284900) (hNotB : ¬ p ∣ 284897),
        order_of_C_B_inv_mod_p2 284900 284897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284897 284900 := by
  have hlt : (284897 : Nat) < 284900 := by decide
  have hcop : ¬ 79 ∣ (284900 - 284897) := by decide
  have heq : (284900 : ZMod 79) ^ 13 = (284897 : ZMod 79) ^ 13 := by decide
  have hne : (284900 : ZMod 6241) ^ 13 ≠ (284897 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 284900 := by decide
  have hB : ¬ 79 ∣ 284897 := by decide
  have hexp :=
    has_exp_one_of_zmod 284897 284900 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 284897 284900 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 284897 284900 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      284897 284900 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      284897 284900 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_285237_285240 :
    HasPrimeWithExpOne (S_val 285237 285240) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285237 285240 ∧ ¬ p ∣ (285240 - 285237) ∧
      ∃ (hNotC : ¬ p ∣ 285240) (hNotB : ¬ p ∣ 285237),
        order_of_C_B_inv_mod_p2 285240 285237 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285237 285240 := by
  have hlt : (285237 : Nat) < 285240 := by decide
  have hcop : ¬ 53 ∣ (285240 - 285237) := by decide
  have heq : (285240 : ZMod 53) ^ 13 = (285237 : ZMod 53) ^ 13 := by decide
  have hne : (285240 : ZMod 2809) ^ 13 ≠ (285237 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 285240 := by decide
  have hB : ¬ 53 ∣ 285237 := by decide
  have hexp :=
    has_exp_one_of_zmod 285237 285240 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 285237 285240 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 285237 285240 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      285237 285240 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      285237 285240 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_285570_285573 :
    HasPrimeWithExpOne (S_val 285570 285573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285570 285573 ∧ ¬ p ∣ (285573 - 285570) ∧
      ∃ (hNotC : ¬ p ∣ 285573) (hNotB : ¬ p ∣ 285570),
        order_of_C_B_inv_mod_p2 285573 285570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285570 285573 := by
  have hlt : (285570 : Nat) < 285573 := by decide
  have hcop : ¬ 53 ∣ (285573 - 285570) := by decide
  have heq : (285573 : ZMod 53) ^ 13 = (285570 : ZMod 53) ^ 13 := by decide
  have hne : (285573 : ZMod 2809) ^ 13 ≠ (285570 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 285573 := by decide
  have hB : ¬ 53 ∣ 285570 := by decide
  have hexp :=
    has_exp_one_of_zmod 285570 285573 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 285570 285573 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 285570 285573 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      285570 285573 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      285570 285573 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_285907_285910 :
    HasPrimeWithExpOne (S_val 285907 285910) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285907 285910 ∧ ¬ p ∣ (285910 - 285907) ∧
      ∃ (hNotC : ¬ p ∣ 285910) (hNotB : ¬ p ∣ 285907),
        order_of_C_B_inv_mod_p2 285910 285907 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285907 285910 := by
  have hlt : (285907 : Nat) < 285910 := by decide
  have hcop : ¬ 313 ∣ (285910 - 285907) := by decide
  have heq : (285910 : ZMod 313) ^ 13 = (285907 : ZMod 313) ^ 13 := by decide
  have hne : (285910 : ZMod 97969) ^ 13 ≠ (285907 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 285910 := by decide
  have hB : ¬ 313 ∣ 285907 := by decide
  have hexp :=
    has_exp_one_of_zmod 285907 285910 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 285907 285910 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 285907 285910 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      285907 285910 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      285907 285910 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_286240_286243 :
    HasPrimeWithExpOne (S_val 286240 286243) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286240 286243 ∧ ¬ p ∣ (286243 - 286240) ∧
      ∃ (hNotC : ¬ p ∣ 286243) (hNotB : ¬ p ∣ 286240),
        order_of_C_B_inv_mod_p2 286243 286240 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286240 286243 := by
  have hlt : (286240 : Nat) < 286243 := by decide
  have hcop : ¬ 53 ∣ (286243 - 286240) := by decide
  have heq : (286243 : ZMod 53) ^ 13 = (286240 : ZMod 53) ^ 13 := by decide
  have hne : (286243 : ZMod 2809) ^ 13 ≠ (286240 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 286243 := by decide
  have hB : ¬ 53 ∣ 286240 := by decide
  have hexp :=
    has_exp_one_of_zmod 286240 286243 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 286240 286243 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 286240 286243 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      286240 286243 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      286240 286243 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_286577_286580 :
    HasPrimeWithExpOne (S_val 286577 286580) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286577 286580 ∧ ¬ p ∣ (286580 - 286577) ∧
      ∃ (hNotC : ¬ p ∣ 286580) (hNotB : ¬ p ∣ 286577),
        order_of_C_B_inv_mod_p2 286580 286577 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286577 286580 := by
  have hlt : (286577 : Nat) < 286580 := by decide
  have hcop : ¬ 53 ∣ (286580 - 286577) := by decide
  have heq : (286580 : ZMod 53) ^ 13 = (286577 : ZMod 53) ^ 13 := by decide
  have hne : (286580 : ZMod 2809) ^ 13 ≠ (286577 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 286580 := by decide
  have hB : ¬ 53 ∣ 286577 := by decide
  have hexp :=
    has_exp_one_of_zmod 286577 286580 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 286577 286580 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 286577 286580 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      286577 286580 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      286577 286580 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_286912_286915 :
    HasPrimeWithExpOne (S_val 286912 286915) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286912 286915 ∧ ¬ p ∣ (286915 - 286912) ∧
      ∃ (hNotC : ¬ p ∣ 286915) (hNotB : ¬ p ∣ 286912),
        order_of_C_B_inv_mod_p2 286915 286912 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286912 286915 := by
  have hlt : (286912 : Nat) < 286915 := by decide
  have hcop : ¬ 79 ∣ (286915 - 286912) := by decide
  have heq : (286915 : ZMod 79) ^ 13 = (286912 : ZMod 79) ^ 13 := by decide
  have hne : (286915 : ZMod 6241) ^ 13 ≠ (286912 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 286915 := by decide
  have hB : ¬ 79 ∣ 286912 := by decide
  have hexp :=
    has_exp_one_of_zmod 286912 286915 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 286912 286915 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 286912 286915 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      286912 286915 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      286912 286915 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_287248_287251 :
    HasPrimeWithExpOne (S_val 287248 287251) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287248 287251 ∧ ¬ p ∣ (287251 - 287248) ∧
      ∃ (hNotC : ¬ p ∣ 287251) (hNotB : ¬ p ∣ 287248),
        order_of_C_B_inv_mod_p2 287251 287248 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287248 287251 := by
  have hlt : (287248 : Nat) < 287251 := by decide
  have hcop : ¬ 547 ∣ (287251 - 287248) := by decide
  have heq : (287251 : ZMod 547) ^ 13 = (287248 : ZMod 547) ^ 13 := by decide
  have hne : (287251 : ZMod 299209) ^ 13 ≠ (287248 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 287251 := by decide
  have hB : ¬ 547 ∣ 287248 := by decide
  have hexp :=
    has_exp_one_of_zmod 287248 287251 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 287248 287251 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 287248 287251 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      287248 287251 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      287248 287251 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_287584_287587 :
    HasPrimeWithExpOne (S_val 287584 287587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287584 287587 ∧ ¬ p ∣ (287587 - 287584) ∧
      ∃ (hNotC : ¬ p ∣ 287587) (hNotB : ¬ p ∣ 287584),
        order_of_C_B_inv_mod_p2 287587 287584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287584 287587 := by
  have hlt : (287584 : Nat) < 287587 := by decide
  have hcop : ¬ 53 ∣ (287587 - 287584) := by decide
  have heq : (287587 : ZMod 53) ^ 13 = (287584 : ZMod 53) ^ 13 := by decide
  have hne : (287587 : ZMod 2809) ^ 13 ≠ (287584 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 287587 := by decide
  have hB : ¬ 53 ∣ 287584 := by decide
  have hexp :=
    has_exp_one_of_zmod 287584 287587 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 287584 287587 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 287584 287587 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      287584 287587 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      287584 287587 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_287918_287921 :
    HasPrimeWithExpOne (S_val 287918 287921) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287918 287921 ∧ ¬ p ∣ (287921 - 287918) ∧
      ∃ (hNotC : ¬ p ∣ 287921) (hNotB : ¬ p ∣ 287918),
        order_of_C_B_inv_mod_p2 287921 287918 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287918 287921 := by
  have hlt : (287918 : Nat) < 287921 := by decide
  have hcop : ¬ 79 ∣ (287921 - 287918) := by decide
  have heq : (287921 : ZMod 79) ^ 13 = (287918 : ZMod 79) ^ 13 := by decide
  have hne : (287921 : ZMod 6241) ^ 13 ≠ (287918 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 287921 := by decide
  have hB : ¬ 79 ∣ 287918 := by decide
  have hexp :=
    has_exp_one_of_zmod 287918 287921 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 287918 287921 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 287918 287921 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      287918 287921 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      287918 287921 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_288255_288258 :
    HasPrimeWithExpOne (S_val 288255 288258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288255 288258 ∧ ¬ p ∣ (288258 - 288255) ∧
      ∃ (hNotC : ¬ p ∣ 288258) (hNotB : ¬ p ∣ 288255),
        order_of_C_B_inv_mod_p2 288258 288255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288255 288258 := by
  have hlt : (288255 : Nat) < 288258 := by decide
  have hcop : ¬ 79 ∣ (288258 - 288255) := by decide
  have heq : (288258 : ZMod 79) ^ 13 = (288255 : ZMod 79) ^ 13 := by decide
  have hne : (288258 : ZMod 6241) ^ 13 ≠ (288255 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 288258 := by decide
  have hB : ¬ 79 ∣ 288255 := by decide
  have hexp :=
    has_exp_one_of_zmod 288255 288258 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 288255 288258 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 288255 288258 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      288255 288258 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      288255 288258 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_288590_288593 :
    HasPrimeWithExpOne (S_val 288590 288593) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288590 288593 ∧ ¬ p ∣ (288593 - 288590) ∧
      ∃ (hNotC : ¬ p ∣ 288593) (hNotB : ¬ p ∣ 288590),
        order_of_C_B_inv_mod_p2 288593 288590 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288590 288593 := by
  have hlt : (288590 : Nat) < 288593 := by decide
  have hcop : ¬ 53 ∣ (288593 - 288590) := by decide
  have heq : (288593 : ZMod 53) ^ 13 = (288590 : ZMod 53) ^ 13 := by decide
  have hne : (288593 : ZMod 2809) ^ 13 ≠ (288590 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 288593 := by decide
  have hB : ¬ 53 ∣ 288590 := by decide
  have hexp :=
    has_exp_one_of_zmod 288590 288593 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 288590 288593 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 288590 288593 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      288590 288593 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      288590 288593 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_288926_288929 :
    HasPrimeWithExpOne (S_val 288926 288929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288926 288929 ∧ ¬ p ∣ (288929 - 288926) ∧
      ∃ (hNotC : ¬ p ∣ 288929) (hNotB : ¬ p ∣ 288926),
        order_of_C_B_inv_mod_p2 288929 288926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288926 288929 := by
  have hlt : (288926 : Nat) < 288929 := by decide
  have hcop : ¬ 79 ∣ (288929 - 288926) := by decide
  have heq : (288929 : ZMod 79) ^ 13 = (288926 : ZMod 79) ^ 13 := by decide
  have hne : (288929 : ZMod 6241) ^ 13 ≠ (288926 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 288929 := by decide
  have hB : ¬ 79 ∣ 288926 := by decide
  have hexp :=
    has_exp_one_of_zmod 288926 288929 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 288926 288929 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 288926 288929 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      288926 288929 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      288926 288929 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_289261_289264 :
    HasPrimeWithExpOne (S_val 289261 289264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289261 289264 ∧ ¬ p ∣ (289264 - 289261) ∧
      ∃ (hNotC : ¬ p ∣ 289264) (hNotB : ¬ p ∣ 289261),
        order_of_C_B_inv_mod_p2 289264 289261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289261 289264 := by
  have hlt : (289261 : Nat) < 289264 := by decide
  have hcop : ¬ 53 ∣ (289264 - 289261) := by decide
  have heq : (289264 : ZMod 53) ^ 13 = (289261 : ZMod 53) ^ 13 := by decide
  have hne : (289264 : ZMod 2809) ^ 13 ≠ (289261 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 289264 := by decide
  have hB : ¬ 53 ∣ 289261 := by decide
  have hexp :=
    has_exp_one_of_zmod 289261 289264 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 289261 289264 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 289261 289264 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      289261 289264 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      289261 289264 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_289597_289600 :
    HasPrimeWithExpOne (S_val 289597 289600) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289597 289600 ∧ ¬ p ∣ (289600 - 289597) ∧
      ∃ (hNotC : ¬ p ∣ 289600) (hNotB : ¬ p ∣ 289597),
        order_of_C_B_inv_mod_p2 289600 289597 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289597 289600 := by
  have hlt : (289597 : Nat) < 289600 := by decide
  have hcop : ¬ 53 ∣ (289600 - 289597) := by decide
  have heq : (289600 : ZMod 53) ^ 13 = (289597 : ZMod 53) ^ 13 := by decide
  have hne : (289600 : ZMod 2809) ^ 13 ≠ (289597 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 289600 := by decide
  have hB : ¬ 53 ∣ 289597 := by decide
  have hexp :=
    has_exp_one_of_zmod 289597 289600 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 289597 289600 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 289597 289600 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      289597 289600 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      289597 289600 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_289928_289931 :
    HasPrimeWithExpOne (S_val 289928 289931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289928 289931 ∧ ¬ p ∣ (289931 - 289928) ∧
      ∃ (hNotC : ¬ p ∣ 289931) (hNotB : ¬ p ∣ 289928),
        order_of_C_B_inv_mod_p2 289931 289928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289928 289931 := by
  have hlt : (289928 : Nat) < 289931 := by decide
  have hcop : ¬ 53 ∣ (289931 - 289928) := by decide
  have heq : (289931 : ZMod 53) ^ 13 = (289928 : ZMod 53) ^ 13 := by decide
  have hne : (289931 : ZMod 2809) ^ 13 ≠ (289928 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 289931 := by decide
  have hB : ¬ 53 ∣ 289928 := by decide
  have hexp :=
    has_exp_one_of_zmod 289928 289931 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 289928 289931 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 289928 289931 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      289928 289931 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      289928 289931 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_290268_290271 :
    HasPrimeWithExpOne (S_val 290268 290271) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290268 290271 ∧ ¬ p ∣ (290271 - 290268) ∧
      ∃ (hNotC : ¬ p ∣ 290271) (hNotB : ¬ p ∣ 290268),
        order_of_C_B_inv_mod_p2 290271 290268 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290268 290271 := by
  have hlt : (290268 : Nat) < 290271 := by decide
  have hcop : ¬ 53 ∣ (290271 - 290268) := by decide
  have heq : (290271 : ZMod 53) ^ 13 = (290268 : ZMod 53) ^ 13 := by decide
  have hne : (290271 : ZMod 2809) ^ 13 ≠ (290268 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 290271 := by decide
  have hB : ¬ 53 ∣ 290268 := by decide
  have hexp :=
    has_exp_one_of_zmod 290268 290271 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 290268 290271 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 290268 290271 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      290268 290271 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      290268 290271 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_290604_290607 :
    HasPrimeWithExpOne (S_val 290604 290607) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290604 290607 ∧ ¬ p ∣ (290607 - 290604) ∧
      ∃ (hNotC : ¬ p ∣ 290607) (hNotB : ¬ p ∣ 290604),
        order_of_C_B_inv_mod_p2 290607 290604 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290604 290607 := by
  have hlt : (290604 : Nat) < 290607 := by decide
  have hcop : ¬ 53 ∣ (290607 - 290604) := by decide
  have heq : (290607 : ZMod 53) ^ 13 = (290604 : ZMod 53) ^ 13 := by decide
  have hne : (290607 : ZMod 2809) ^ 13 ≠ (290604 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 290607 := by decide
  have hB : ¬ 53 ∣ 290604 := by decide
  have hexp :=
    has_exp_one_of_zmod 290604 290607 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 290604 290607 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 290604 290607 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      290604 290607 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      290604 290607 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_290939_290942 :
    HasPrimeWithExpOne (S_val 290939 290942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290939 290942 ∧ ¬ p ∣ (290942 - 290939) ∧
      ∃ (hNotC : ¬ p ∣ 290942) (hNotB : ¬ p ∣ 290939),
        order_of_C_B_inv_mod_p2 290942 290939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290939 290942 := by
  have hlt : (290939 : Nat) < 290942 := by decide
  have hcop : ¬ 131 ∣ (290942 - 290939) := by decide
  have heq : (290942 : ZMod 131) ^ 13 = (290939 : ZMod 131) ^ 13 := by decide
  have hne : (290942 : ZMod 17161) ^ 13 ≠ (290939 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 290942 := by decide
  have hB : ¬ 131 ∣ 290939 := by decide
  have hexp :=
    has_exp_one_of_zmod 290939 290942 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 290939 290942 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 290939 290942 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      290939 290942 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      290939 290942 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_291275_291278 :
    HasPrimeWithExpOne (S_val 291275 291278) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291275 291278 ∧ ¬ p ∣ (291278 - 291275) ∧
      ∃ (hNotC : ¬ p ∣ 291278) (hNotB : ¬ p ∣ 291275),
        order_of_C_B_inv_mod_p2 291278 291275 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291275 291278 := by
  have hlt : (291275 : Nat) < 291278 := by decide
  have hcop : ¬ 53 ∣ (291278 - 291275) := by decide
  have heq : (291278 : ZMod 53) ^ 13 = (291275 : ZMod 53) ^ 13 := by decide
  have hne : (291278 : ZMod 2809) ^ 13 ≠ (291275 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 291278 := by decide
  have hB : ¬ 53 ∣ 291275 := by decide
  have hexp :=
    has_exp_one_of_zmod 291275 291278 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 291275 291278 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 291275 291278 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      291275 291278 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      291275 291278 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_291610_291613 :
    HasPrimeWithExpOne (S_val 291610 291613) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291610 291613 ∧ ¬ p ∣ (291613 - 291610) ∧
      ∃ (hNotC : ¬ p ∣ 291613) (hNotB : ¬ p ∣ 291610),
        order_of_C_B_inv_mod_p2 291613 291610 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291610 291613 := by
  have hlt : (291610 : Nat) < 291613 := by decide
  have hcop : ¬ 53 ∣ (291613 - 291610) := by decide
  have heq : (291613 : ZMod 53) ^ 13 = (291610 : ZMod 53) ^ 13 := by decide
  have hne : (291613 : ZMod 2809) ^ 13 ≠ (291610 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 291613 := by decide
  have hB : ¬ 53 ∣ 291610 := by decide
  have hexp :=
    has_exp_one_of_zmod 291610 291613 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 291610 291613 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 291610 291613 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      291610 291613 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      291610 291613 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_291947_291950 :
    HasPrimeWithExpOne (S_val 291947 291950) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291947 291950 ∧ ¬ p ∣ (291950 - 291947) ∧
      ∃ (hNotC : ¬ p ∣ 291950) (hNotB : ¬ p ∣ 291947),
        order_of_C_B_inv_mod_p2 291950 291947 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291947 291950 := by
  have hlt : (291947 : Nat) < 291950 := by decide
  have hcop : ¬ 79 ∣ (291950 - 291947) := by decide
  have heq : (291950 : ZMod 79) ^ 13 = (291947 : ZMod 79) ^ 13 := by decide
  have hne : (291950 : ZMod 6241) ^ 13 ≠ (291947 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 291950 := by decide
  have hB : ¬ 79 ∣ 291947 := by decide
  have hexp :=
    has_exp_one_of_zmod 291947 291950 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 291947 291950 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 291947 291950 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      291947 291950 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      291947 291950 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_292281_292284 :
    HasPrimeWithExpOne (S_val 292281 292284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292281 292284 ∧ ¬ p ∣ (292284 - 292281) ∧
      ∃ (hNotC : ¬ p ∣ 292284) (hNotB : ¬ p ∣ 292281),
        order_of_C_B_inv_mod_p2 292284 292281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292281 292284 := by
  have hlt : (292281 : Nat) < 292284 := by decide
  have hcop : ¬ 157 ∣ (292284 - 292281) := by decide
  have heq : (292284 : ZMod 157) ^ 13 = (292281 : ZMod 157) ^ 13 := by decide
  have hne : (292284 : ZMod 24649) ^ 13 ≠ (292281 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 292284 := by decide
  have hB : ¬ 157 ∣ 292281 := by decide
  have hexp :=
    has_exp_one_of_zmod 292281 292284 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 292281 292284 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 292281 292284 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      292281 292284 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      292281 292284 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_292617_292620 :
    HasPrimeWithExpOne (S_val 292617 292620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292617 292620 ∧ ¬ p ∣ (292620 - 292617) ∧
      ∃ (hNotC : ¬ p ∣ 292620) (hNotB : ¬ p ∣ 292617),
        order_of_C_B_inv_mod_p2 292620 292617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292617 292620 := by
  have hlt : (292617 : Nat) < 292620 := by decide
  have hcop : ¬ 53 ∣ (292620 - 292617) := by decide
  have heq : (292620 : ZMod 53) ^ 13 = (292617 : ZMod 53) ^ 13 := by decide
  have hne : (292620 : ZMod 2809) ^ 13 ≠ (292617 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 292620 := by decide
  have hB : ¬ 53 ∣ 292617 := by decide
  have hexp :=
    has_exp_one_of_zmod 292617 292620 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 292617 292620 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 292617 292620 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      292617 292620 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      292617 292620 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_292954_292957 :
    HasPrimeWithExpOne (S_val 292954 292957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292954 292957 ∧ ¬ p ∣ (292957 - 292954) ∧
      ∃ (hNotC : ¬ p ∣ 292957) (hNotB : ¬ p ∣ 292954),
        order_of_C_B_inv_mod_p2 292957 292954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292954 292957 := by
  have hlt : (292954 : Nat) < 292957 := by decide
  have hcop : ¬ 131 ∣ (292957 - 292954) := by decide
  have heq : (292957 : ZMod 131) ^ 13 = (292954 : ZMod 131) ^ 13 := by decide
  have hne : (292957 : ZMod 17161) ^ 13 ≠ (292954 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 292957 := by decide
  have hB : ¬ 131 ∣ 292954 := by decide
  have hexp :=
    has_exp_one_of_zmod 292954 292957 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 292954 292957 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 292954 292957 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      292954 292957 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      292954 292957 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_293289_293292 :
    HasPrimeWithExpOne (S_val 293289 293292) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293289 293292 ∧ ¬ p ∣ (293292 - 293289) ∧
      ∃ (hNotC : ¬ p ∣ 293292) (hNotB : ¬ p ∣ 293289),
        order_of_C_B_inv_mod_p2 293292 293289 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293289 293292 := by
  have hlt : (293289 : Nat) < 293292 := by decide
  have hcop : ¬ 53 ∣ (293292 - 293289) := by decide
  have heq : (293292 : ZMod 53) ^ 13 = (293289 : ZMod 53) ^ 13 := by decide
  have hne : (293292 : ZMod 2809) ^ 13 ≠ (293289 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 293292 := by decide
  have hB : ¬ 53 ∣ 293289 := by decide
  have hexp :=
    has_exp_one_of_zmod 293289 293292 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 293289 293292 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 293289 293292 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      293289 293292 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      293289 293292 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_293624_293627 :
    HasPrimeWithExpOne (S_val 293624 293627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293624 293627 ∧ ¬ p ∣ (293627 - 293624) ∧
      ∃ (hNotC : ¬ p ∣ 293627) (hNotB : ¬ p ∣ 293624),
        order_of_C_B_inv_mod_p2 293627 293624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293624 293627 := by
  have hlt : (293624 : Nat) < 293627 := by decide
  have hcop : ¬ 53 ∣ (293627 - 293624) := by decide
  have heq : (293627 : ZMod 53) ^ 13 = (293624 : ZMod 53) ^ 13 := by decide
  have hne : (293627 : ZMod 2809) ^ 13 ≠ (293624 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 293627 := by decide
  have hB : ¬ 53 ∣ 293624 := by decide
  have hexp :=
    has_exp_one_of_zmod 293624 293627 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 293624 293627 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 293624 293627 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      293624 293627 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      293624 293627 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_293956_293959 :
    HasPrimeWithExpOne (S_val 293956 293959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293956 293959 ∧ ¬ p ∣ (293959 - 293956) ∧
      ∃ (hNotC : ¬ p ∣ 293959) (hNotB : ¬ p ∣ 293956),
        order_of_C_B_inv_mod_p2 293959 293956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293956 293959 := by
  have hlt : (293956 : Nat) < 293959 := by decide
  have hcop : ¬ 53 ∣ (293959 - 293956) := by decide
  have heq : (293959 : ZMod 53) ^ 13 = (293956 : ZMod 53) ^ 13 := by decide
  have hne : (293959 : ZMod 2809) ^ 13 ≠ (293956 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 293959 := by decide
  have hB : ¬ 53 ∣ 293956 := by decide
  have hexp :=
    has_exp_one_of_zmod 293956 293959 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 293956 293959 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 293956 293959 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      293956 293959 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      293956 293959 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_294296_294299 :
    HasPrimeWithExpOne (S_val 294296 294299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294296 294299 ∧ ¬ p ∣ (294299 - 294296) ∧
      ∃ (hNotC : ¬ p ∣ 294299) (hNotB : ¬ p ∣ 294296),
        order_of_C_B_inv_mod_p2 294299 294296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294296 294299 := by
  have hlt : (294296 : Nat) < 294299 := by decide
  have hcop : ¬ 53 ∣ (294299 - 294296) := by decide
  have heq : (294299 : ZMod 53) ^ 13 = (294296 : ZMod 53) ^ 13 := by decide
  have hne : (294299 : ZMod 2809) ^ 13 ≠ (294296 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 294299 := by decide
  have hB : ¬ 53 ∣ 294296 := by decide
  have hexp :=
    has_exp_one_of_zmod 294296 294299 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 294296 294299 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 294296 294299 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      294296 294299 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      294296 294299 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_294630_294633 :
    HasPrimeWithExpOne (S_val 294630 294633) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294630 294633 ∧ ¬ p ∣ (294633 - 294630) ∧
      ∃ (hNotC : ¬ p ∣ 294633) (hNotB : ¬ p ∣ 294630),
        order_of_C_B_inv_mod_p2 294633 294630 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294630 294633 := by
  have hlt : (294630 : Nat) < 294633 := by decide
  have hcop : ¬ 443 ∣ (294633 - 294630) := by decide
  have heq : (294633 : ZMod 443) ^ 13 = (294630 : ZMod 443) ^ 13 := by decide
  have hne : (294633 : ZMod 196249) ^ 13 ≠ (294630 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 294633 := by decide
  have hB : ¬ 443 ∣ 294630 := by decide
  have hexp :=
    has_exp_one_of_zmod 294630 294633 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 294630 294633 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 294630 294633 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      294630 294633 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      294630 294633 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_294966_294969 :
    HasPrimeWithExpOne (S_val 294966 294969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294966 294969 ∧ ¬ p ∣ (294969 - 294966) ∧
      ∃ (hNotC : ¬ p ∣ 294969) (hNotB : ¬ p ∣ 294966),
        order_of_C_B_inv_mod_p2 294969 294966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294966 294969 := by
  have hlt : (294966 : Nat) < 294969 := by decide
  have hcop : ¬ 131 ∣ (294969 - 294966) := by decide
  have heq : (294969 : ZMod 131) ^ 13 = (294966 : ZMod 131) ^ 13 := by decide
  have hne : (294969 : ZMod 17161) ^ 13 ≠ (294966 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 294969 := by decide
  have hB : ¬ 131 ∣ 294966 := by decide
  have hexp :=
    has_exp_one_of_zmod 294966 294969 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 294966 294969 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 294966 294969 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      294966 294969 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      294966 294969 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_295303_295306 :
    HasPrimeWithExpOne (S_val 295303 295306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295303 295306 ∧ ¬ p ∣ (295306 - 295303) ∧
      ∃ (hNotC : ¬ p ∣ 295306) (hNotB : ¬ p ∣ 295303),
        order_of_C_B_inv_mod_p2 295306 295303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295303 295306 := by
  have hlt : (295303 : Nat) < 295306 := by decide
  have hcop : ¬ 53 ∣ (295306 - 295303) := by decide
  have heq : (295306 : ZMod 53) ^ 13 = (295303 : ZMod 53) ^ 13 := by decide
  have hne : (295306 : ZMod 2809) ^ 13 ≠ (295303 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 295306 := by decide
  have hB : ¬ 53 ∣ 295303 := by decide
  have hexp :=
    has_exp_one_of_zmod 295303 295306 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 295303 295306 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 295303 295306 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      295303 295306 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      295303 295306 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_295638_295641 :
    HasPrimeWithExpOne (S_val 295638 295641) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295638 295641 ∧ ¬ p ∣ (295641 - 295638) ∧
      ∃ (hNotC : ¬ p ∣ 295641) (hNotB : ¬ p ∣ 295638),
        order_of_C_B_inv_mod_p2 295641 295638 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295638 295641 := by
  have hlt : (295638 : Nat) < 295641 := by decide
  have hcop : ¬ 53 ∣ (295641 - 295638) := by decide
  have heq : (295641 : ZMod 53) ^ 13 = (295638 : ZMod 53) ^ 13 := by decide
  have hne : (295641 : ZMod 2809) ^ 13 ≠ (295638 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 295641 := by decide
  have hB : ¬ 53 ∣ 295638 := by decide
  have hexp :=
    has_exp_one_of_zmod 295638 295641 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 295638 295641 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 295638 295641 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      295638 295641 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      295638 295641 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_295974_295977 :
    HasPrimeWithExpOne (S_val 295974 295977) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295974 295977 ∧ ¬ p ∣ (295977 - 295974) ∧
      ∃ (hNotC : ¬ p ∣ 295977) (hNotB : ¬ p ∣ 295974),
        order_of_C_B_inv_mod_p2 295977 295974 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295974 295977 := by
  have hlt : (295974 : Nat) < 295977 := by decide
  have hcop : ¬ 157 ∣ (295977 - 295974) := by decide
  have heq : (295977 : ZMod 157) ^ 13 = (295974 : ZMod 157) ^ 13 := by decide
  have hne : (295977 : ZMod 24649) ^ 13 ≠ (295974 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 295977 := by decide
  have hB : ¬ 157 ∣ 295974 := by decide
  have hexp :=
    has_exp_one_of_zmod 295974 295977 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 295974 295977 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 295974 295977 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      295974 295977 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      295974 295977 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_296308_296311 :
    HasPrimeWithExpOne (S_val 296308 296311) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296308 296311 ∧ ¬ p ∣ (296311 - 296308) ∧
      ∃ (hNotC : ¬ p ∣ 296311) (hNotB : ¬ p ∣ 296308),
        order_of_C_B_inv_mod_p2 296311 296308 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296308 296311 := by
  have hlt : (296308 : Nat) < 296311 := by decide
  have hcop : ¬ 79 ∣ (296311 - 296308) := by decide
  have heq : (296311 : ZMod 79) ^ 13 = (296308 : ZMod 79) ^ 13 := by decide
  have hne : (296311 : ZMod 6241) ^ 13 ≠ (296308 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 296311 := by decide
  have hB : ¬ 79 ∣ 296308 := by decide
  have hexp :=
    has_exp_one_of_zmod 296308 296311 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 296308 296311 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 296308 296311 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      296308 296311 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      296308 296311 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_296644_296647 :
    HasPrimeWithExpOne (S_val 296644 296647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296644 296647 ∧ ¬ p ∣ (296647 - 296644) ∧
      ∃ (hNotC : ¬ p ∣ 296647) (hNotB : ¬ p ∣ 296644),
        order_of_C_B_inv_mod_p2 296647 296644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296644 296647 := by
  have hlt : (296644 : Nat) < 296647 := by decide
  have hcop : ¬ 131 ∣ (296647 - 296644) := by decide
  have heq : (296647 : ZMod 131) ^ 13 = (296644 : ZMod 131) ^ 13 := by decide
  have hne : (296647 : ZMod 17161) ^ 13 ≠ (296644 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 296647 := by decide
  have hB : ¬ 131 ∣ 296644 := by decide
  have hexp :=
    has_exp_one_of_zmod 296644 296647 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 296644 296647 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 296644 296647 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      296644 296647 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      296644 296647 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_296979_296982 :
    HasPrimeWithExpOne (S_val 296979 296982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296979 296982 ∧ ¬ p ∣ (296982 - 296979) ∧
      ∃ (hNotC : ¬ p ∣ 296982) (hNotB : ¬ p ∣ 296979),
        order_of_C_B_inv_mod_p2 296982 296979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296979 296982 := by
  have hlt : (296979 : Nat) < 296982 := by decide
  have hcop : ¬ 79 ∣ (296982 - 296979) := by decide
  have heq : (296982 : ZMod 79) ^ 13 = (296979 : ZMod 79) ^ 13 := by decide
  have hne : (296982 : ZMod 6241) ^ 13 ≠ (296979 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 296982 := by decide
  have hB : ¬ 79 ∣ 296979 := by decide
  have hexp :=
    has_exp_one_of_zmod 296979 296982 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 296979 296982 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 296979 296982 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      296979 296982 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      296979 296982 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_297314_297317 :
    HasPrimeWithExpOne (S_val 297314 297317) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297314 297317 ∧ ¬ p ∣ (297317 - 297314) ∧
      ∃ (hNotC : ¬ p ∣ 297317) (hNotB : ¬ p ∣ 297314),
        order_of_C_B_inv_mod_p2 297317 297314 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297314 297317 := by
  have hlt : (297314 : Nat) < 297317 := by decide
  have hcop : ¬ 53 ∣ (297317 - 297314) := by decide
  have heq : (297317 : ZMod 53) ^ 13 = (297314 : ZMod 53) ^ 13 := by decide
  have hne : (297317 : ZMod 2809) ^ 13 ≠ (297314 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 297317 := by decide
  have hB : ¬ 53 ∣ 297314 := by decide
  have hexp :=
    has_exp_one_of_zmod 297314 297317 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 297314 297317 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 297314 297317 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      297314 297317 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      297314 297317 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_297651_297654 :
    HasPrimeWithExpOne (S_val 297651 297654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297651 297654 ∧ ¬ p ∣ (297654 - 297651) ∧
      ∃ (hNotC : ¬ p ∣ 297654) (hNotB : ¬ p ∣ 297651),
        order_of_C_B_inv_mod_p2 297654 297651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297651 297654 := by
  have hlt : (297651 : Nat) < 297654 := by decide
  have hcop : ¬ 79 ∣ (297654 - 297651) := by decide
  have heq : (297654 : ZMod 79) ^ 13 = (297651 : ZMod 79) ^ 13 := by decide
  have hne : (297654 : ZMod 6241) ^ 13 ≠ (297651 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 297654 := by decide
  have hB : ¬ 79 ∣ 297651 := by decide
  have hexp :=
    has_exp_one_of_zmod 297651 297654 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 297651 297654 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 297651 297654 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      297651 297654 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      297651 297654 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_297984_297987 :
    HasPrimeWithExpOne (S_val 297984 297987) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297984 297987 ∧ ¬ p ∣ (297987 - 297984) ∧
      ∃ (hNotC : ¬ p ∣ 297987) (hNotB : ¬ p ∣ 297984),
        order_of_C_B_inv_mod_p2 297987 297984 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297984 297987 := by
  have hlt : (297984 : Nat) < 297987 := by decide
  have hcop : ¬ 53 ∣ (297987 - 297984) := by decide
  have heq : (297987 : ZMod 53) ^ 13 = (297984 : ZMod 53) ^ 13 := by decide
  have hne : (297987 : ZMod 2809) ^ 13 ≠ (297984 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 297987 := by decide
  have hB : ¬ 53 ∣ 297984 := by decide
  have hexp :=
    has_exp_one_of_zmod 297984 297987 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 297984 297987 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 297984 297987 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      297984 297987 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      297984 297987 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_298322_298325 :
    HasPrimeWithExpOne (S_val 298322 298325) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298322 298325 ∧ ¬ p ∣ (298325 - 298322) ∧
      ∃ (hNotC : ¬ p ∣ 298325) (hNotB : ¬ p ∣ 298322),
        order_of_C_B_inv_mod_p2 298325 298322 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298322 298325 := by
  have hlt : (298322 : Nat) < 298325 := by decide
  have hcop : ¬ 79 ∣ (298325 - 298322) := by decide
  have heq : (298325 : ZMod 79) ^ 13 = (298322 : ZMod 79) ^ 13 := by decide
  have hne : (298325 : ZMod 6241) ^ 13 ≠ (298322 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 298325 := by decide
  have hB : ¬ 79 ∣ 298322 := by decide
  have hexp :=
    has_exp_one_of_zmod 298322 298325 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 298322 298325 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 298322 298325 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      298322 298325 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      298322 298325 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_298659_298662 :
    HasPrimeWithExpOne (S_val 298659 298662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298659 298662 ∧ ¬ p ∣ (298662 - 298659) ∧
      ∃ (hNotC : ¬ p ∣ 298662) (hNotB : ¬ p ∣ 298659),
        order_of_C_B_inv_mod_p2 298662 298659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298659 298662 := by
  have hlt : (298659 : Nat) < 298662 := by decide
  have hcop : ¬ 53 ∣ (298662 - 298659) := by decide
  have heq : (298662 : ZMod 53) ^ 13 = (298659 : ZMod 53) ^ 13 := by decide
  have hne : (298662 : ZMod 2809) ^ 13 ≠ (298659 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 298662 := by decide
  have hB : ¬ 53 ∣ 298659 := by decide
  have hexp :=
    has_exp_one_of_zmod 298659 298662 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 298659 298662 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 298659 298662 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      298659 298662 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      298659 298662 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_298993_298996 :
    HasPrimeWithExpOne (S_val 298993 298996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298993 298996 ∧ ¬ p ∣ (298996 - 298993) ∧
      ∃ (hNotC : ¬ p ∣ 298996) (hNotB : ¬ p ∣ 298993),
        order_of_C_B_inv_mod_p2 298996 298993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298993 298996 := by
  have hlt : (298993 : Nat) < 298996 := by decide
  have hcop : ¬ 443 ∣ (298996 - 298993) := by decide
  have heq : (298996 : ZMod 443) ^ 13 = (298993 : ZMod 443) ^ 13 := by decide
  have hne : (298996 : ZMod 196249) ^ 13 ≠ (298993 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 298996 := by decide
  have hB : ¬ 443 ∣ 298993 := by decide
  have hexp :=
    has_exp_one_of_zmod 298993 298996 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 298993 298996 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 298993 298996 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      298993 298996 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      298993 298996 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_299328_299331 :
    HasPrimeWithExpOne (S_val 299328 299331) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299328 299331 ∧ ¬ p ∣ (299331 - 299328) ∧
      ∃ (hNotC : ¬ p ∣ 299331) (hNotB : ¬ p ∣ 299328),
        order_of_C_B_inv_mod_p2 299331 299328 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299328 299331 := by
  have hlt : (299328 : Nat) < 299331 := by decide
  have hcop : ¬ 53 ∣ (299331 - 299328) := by decide
  have heq : (299331 : ZMod 53) ^ 13 = (299328 : ZMod 53) ^ 13 := by decide
  have hne : (299331 : ZMod 2809) ^ 13 ≠ (299328 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 299331 := by decide
  have hB : ¬ 53 ∣ 299328 := by decide
  have hexp :=
    has_exp_one_of_zmod 299328 299331 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 299328 299331 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 299328 299331 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      299328 299331 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      299328 299331 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_299665_299668 :
    HasPrimeWithExpOne (S_val 299665 299668) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299665 299668 ∧ ¬ p ∣ (299668 - 299665) ∧
      ∃ (hNotC : ¬ p ∣ 299668) (hNotB : ¬ p ∣ 299665),
        order_of_C_B_inv_mod_p2 299668 299665 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299665 299668 := by
  have hlt : (299665 : Nat) < 299668 := by decide
  have hcop : ¬ 79 ∣ (299668 - 299665) := by decide
  have heq : (299668 : ZMod 79) ^ 13 = (299665 : ZMod 79) ^ 13 := by decide
  have hne : (299668 : ZMod 6241) ^ 13 ≠ (299665 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 299668 := by decide
  have hB : ¬ 79 ∣ 299665 := by decide
  have hexp :=
    has_exp_one_of_zmod 299665 299668 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 299665 299668 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 299665 299668 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      299665 299668 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      299665 299668 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_299999_300002 :
    HasPrimeWithExpOne (S_val 299999 300002) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299999 300002 ∧ ¬ p ∣ (300002 - 299999) ∧
      ∃ (hNotC : ¬ p ∣ 300002) (hNotB : ¬ p ∣ 299999),
        order_of_C_B_inv_mod_p2 300002 299999 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299999 300002 := by
  have hlt : (299999 : Nat) < 300002 := by decide
  have hcop : ¬ 131 ∣ (300002 - 299999) := by decide
  have heq : (300002 : ZMod 131) ^ 13 = (299999 : ZMod 131) ^ 13 := by decide
  have hne : (300002 : ZMod 17161) ^ 13 ≠ (299999 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 300002 := by decide
  have hB : ¬ 131 ∣ 299999 := by decide
  have hexp :=
    has_exp_one_of_zmod 299999 300002 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 299999 300002 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 299999 300002 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      299999 300002 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      299999 300002 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-! ## Packed 299 new rows, then 900 = 601 inherited ∧ 299 new (not a `∀`; not one 900-And) -/
theorem S_has_prime_with_exp_one_200000_lt_B_le_300000_table_rows :
    HasPrimeWithExpOne (S_val 200001 200004) ∧
    HasPrimeWithExpOne (S_val 200337 200340) ∧
    HasPrimeWithExpOne (S_val 200672 200675) ∧
    HasPrimeWithExpOne (S_val 201008 201011) ∧
    HasPrimeWithExpOne (S_val 201344 201347) ∧
    HasPrimeWithExpOne (S_val 201678 201681) ∧
    HasPrimeWithExpOne (S_val 202015 202018) ∧
    HasPrimeWithExpOne (S_val 202349 202352) ∧
    HasPrimeWithExpOne (S_val 202685 202688) ∧
    HasPrimeWithExpOne (S_val 203022 203025) ∧
    HasPrimeWithExpOne (S_val 203355 203358) ∧
    HasPrimeWithExpOne (S_val 203692 203695) ∧
    HasPrimeWithExpOne (S_val 204027 204030) ∧
    HasPrimeWithExpOne (S_val 204364 204367) ∧
    HasPrimeWithExpOne (S_val 204699 204702) ∧
    HasPrimeWithExpOne (S_val 205036 205039) ∧
    HasPrimeWithExpOne (S_val 205371 205374) ∧
    HasPrimeWithExpOne (S_val 205706 205709) ∧
    HasPrimeWithExpOne (S_val 206043 206046) ∧
    HasPrimeWithExpOne (S_val 206375 206378) ∧
    HasPrimeWithExpOne (S_val 206713 206716) ∧
    HasPrimeWithExpOne (S_val 207047 207050) ∧
    HasPrimeWithExpOne (S_val 207382 207385) ∧
    HasPrimeWithExpOne (S_val 207720 207723) ∧
    HasPrimeWithExpOne (S_val 208054 208057) ∧
    HasPrimeWithExpOne (S_val 208389 208392) ∧
    HasPrimeWithExpOne (S_val 208725 208728) ∧
    HasPrimeWithExpOne (S_val 209064 209067) ∧
    HasPrimeWithExpOne (S_val 209396 209399) ∧
    HasPrimeWithExpOne (S_val 209731 209734) ∧
    HasPrimeWithExpOne (S_val 210066 210069) ∧
    HasPrimeWithExpOne (S_val 210403 210406) ∧
    HasPrimeWithExpOne (S_val 210738 210741) ∧
    HasPrimeWithExpOne (S_val 211073 211076) ∧
    HasPrimeWithExpOne (S_val 211410 211413) ∧
    HasPrimeWithExpOne (S_val 211745 211748) ∧
    HasPrimeWithExpOne (S_val 212083 212086) ∧
    HasPrimeWithExpOne (S_val 212416 212419) ∧
    HasPrimeWithExpOne (S_val 212752 212755) ∧
    HasPrimeWithExpOne (S_val 213088 213091) ∧
    HasPrimeWithExpOne (S_val 213423 213426) ∧
    HasPrimeWithExpOne (S_val 213759 213762) ∧
    HasPrimeWithExpOne (S_val 214095 214098) ∧
    HasPrimeWithExpOne (S_val 214430 214433) ∧
    HasPrimeWithExpOne (S_val 214766 214769) ∧
    HasPrimeWithExpOne (S_val 215101 215104) ∧
    HasPrimeWithExpOne (S_val 215437 215440) ∧
    HasPrimeWithExpOne (S_val 215772 215775) ∧
    HasPrimeWithExpOne (S_val 216108 216111) ∧
    HasPrimeWithExpOne (S_val 216443 216446) ∧
    HasPrimeWithExpOne (S_val 216780 216783) ∧
    HasPrimeWithExpOne (S_val 217114 217117) ∧
    HasPrimeWithExpOne (S_val 217450 217453) ∧
    HasPrimeWithExpOne (S_val 217786 217789) ∧
    HasPrimeWithExpOne (S_val 218123 218126) ∧
    HasPrimeWithExpOne (S_val 218457 218460) ∧
    HasPrimeWithExpOne (S_val 218792 218795) ∧
    HasPrimeWithExpOne (S_val 219128 219131) ∧
    HasPrimeWithExpOne (S_val 219463 219466) ∧
    HasPrimeWithExpOne (S_val 219801 219804) ∧
    HasPrimeWithExpOne (S_val 220135 220138) ∧
    HasPrimeWithExpOne (S_val 220471 220474) ∧
    HasPrimeWithExpOne (S_val 220805 220808) ∧
    HasPrimeWithExpOne (S_val 221140 221143) ∧
    HasPrimeWithExpOne (S_val 221478 221481) ∧
    HasPrimeWithExpOne (S_val 221811 221814) ∧
    HasPrimeWithExpOne (S_val 222150 222153) ∧
    HasPrimeWithExpOne (S_val 222482 222485) ∧
    HasPrimeWithExpOne (S_val 222819 222822) ∧
    HasPrimeWithExpOne (S_val 223154 223157) ∧
    HasPrimeWithExpOne (S_val 223492 223495) ∧
    HasPrimeWithExpOne (S_val 223825 223828) ∧
    HasPrimeWithExpOne (S_val 224162 224165) ∧
    HasPrimeWithExpOne (S_val 224497 224500) ∧
    HasPrimeWithExpOne (S_val 224832 224835) ∧
    HasPrimeWithExpOne (S_val 225168 225171) ∧
    HasPrimeWithExpOne (S_val 225505 225508) ∧
    HasPrimeWithExpOne (S_val 225839 225842) ∧
    HasPrimeWithExpOne (S_val 226174 226177) ∧
    HasPrimeWithExpOne (S_val 226511 226514) ∧
    HasPrimeWithExpOne (S_val 226846 226849) ∧
    HasPrimeWithExpOne (S_val 227183 227186) ∧
    HasPrimeWithExpOne (S_val 227516 227519) ∧
    HasPrimeWithExpOne (S_val 227853 227856) ∧
    HasPrimeWithExpOne (S_val 228190 228193) ∧
    HasPrimeWithExpOne (S_val 228524 228527) ∧
    HasPrimeWithExpOne (S_val 228859 228862) ∧
    HasPrimeWithExpOne (S_val 229196 229199) ∧
    HasPrimeWithExpOne (S_val 229530 229533) ∧
    HasPrimeWithExpOne (S_val 229866 229869) ∧
    HasPrimeWithExpOne (S_val 230203 230206) ∧
    HasPrimeWithExpOne (S_val 230537 230540) ∧
    HasPrimeWithExpOne (S_val 230873 230876) ∧
    HasPrimeWithExpOne (S_val 231208 231211) ∧
    HasPrimeWithExpOne (S_val 231544 231547) ∧
    HasPrimeWithExpOne (S_val 231879 231882) ∧
    HasPrimeWithExpOne (S_val 232215 232218) ∧
    HasPrimeWithExpOne (S_val 232551 232554) ∧
    HasPrimeWithExpOne (S_val 232886 232889) ∧
    HasPrimeWithExpOne (S_val 233222 233225) ∧
    HasPrimeWithExpOne (S_val 233558 233561) ∧
    HasPrimeWithExpOne (S_val 233893 233896) ∧
    HasPrimeWithExpOne (S_val 234226 234229) ∧
    HasPrimeWithExpOne (S_val 234564 234567) ∧
    HasPrimeWithExpOne (S_val 234900 234903) ∧
    HasPrimeWithExpOne (S_val 235235 235238) ∧
    HasPrimeWithExpOne (S_val 235572 235575) ∧
    HasPrimeWithExpOne (S_val 235906 235909) ∧
    HasPrimeWithExpOne (S_val 236243 236246) ∧
    HasPrimeWithExpOne (S_val 236576 236579) ∧
    HasPrimeWithExpOne (S_val 236914 236917) ∧
    HasPrimeWithExpOne (S_val 237248 237251) ∧
    HasPrimeWithExpOne (S_val 237583 237586) ∧
    HasPrimeWithExpOne (S_val 237920 237923) ∧
    HasPrimeWithExpOne (S_val 238253 238256) ∧
    HasPrimeWithExpOne (S_val 238592 238595) ∧
    HasPrimeWithExpOne (S_val 238928 238931) ∧
    HasPrimeWithExpOne (S_val 239261 239264) ∧
    HasPrimeWithExpOne (S_val 239597 239600) ∧
    HasPrimeWithExpOne (S_val 239934 239937) ∧
    HasPrimeWithExpOne (S_val 240267 240270) ∧
    HasPrimeWithExpOne (S_val 240604 240607) ∧
    HasPrimeWithExpOne (S_val 240942 240945) ∧
    HasPrimeWithExpOne (S_val 241274 241277) ∧
    HasPrimeWithExpOne (S_val 241611 241614) ∧
    HasPrimeWithExpOne (S_val 241945 241948) ∧
    HasPrimeWithExpOne (S_val 242282 242285) ∧
    HasPrimeWithExpOne (S_val 242618 242621) ∧
    HasPrimeWithExpOne (S_val 242956 242959) ∧
    HasPrimeWithExpOne (S_val 243288 243291) ∧
    HasPrimeWithExpOne (S_val 243625 243628) ∧
    HasPrimeWithExpOne (S_val 243960 243963) ∧
    HasPrimeWithExpOne (S_val 244295 244298) ∧
    HasPrimeWithExpOne (S_val 244631 244634) ∧
    HasPrimeWithExpOne (S_val 244964 244967) ∧
    HasPrimeWithExpOne (S_val 245302 245305) ∧
    HasPrimeWithExpOne (S_val 245639 245642) ∧
    HasPrimeWithExpOne (S_val 245972 245975) ∧
    HasPrimeWithExpOne (S_val 246309 246312) ∧
    HasPrimeWithExpOne (S_val 246646 246649) ∧
    HasPrimeWithExpOne (S_val 246982 246985) ∧
    HasPrimeWithExpOne (S_val 247316 247319) ∧
    HasPrimeWithExpOne (S_val 247652 247655) ∧
    HasPrimeWithExpOne (S_val 247987 247990) ∧
    HasPrimeWithExpOne (S_val 248323 248326) ∧
    HasPrimeWithExpOne (S_val 248660 248663) ∧
    HasPrimeWithExpOne (S_val 248993 248996) ∧
    HasPrimeWithExpOne (S_val 249330 249333) ∧
    HasPrimeWithExpOne (S_val 249663 249666) ∧
    HasPrimeWithExpOne (S_val 250002 250005) ∧
    HasPrimeWithExpOne (S_val 250336 250339) ∧
    HasPrimeWithExpOne (S_val 250671 250674) ∧
    HasPrimeWithExpOne (S_val 251007 251010) ∧
    HasPrimeWithExpOne (S_val 251343 251346) ∧
    HasPrimeWithExpOne (S_val 251678 251681) ∧
    HasPrimeWithExpOne (S_val 252014 252017) ∧
    HasPrimeWithExpOne (S_val 252349 252352) ∧
    HasPrimeWithExpOne (S_val 252684 252687) ∧
    HasPrimeWithExpOne (S_val 253020 253023) ∧
    HasPrimeWithExpOne (S_val 253357 253360) ∧
    HasPrimeWithExpOne (S_val 253692 253695) ∧
    HasPrimeWithExpOne (S_val 254027 254030) ∧
    HasPrimeWithExpOne (S_val 254363 254366) ∧
    HasPrimeWithExpOne (S_val 254697 254700) ∧
    HasPrimeWithExpOne (S_val 255035 255038) ∧
    HasPrimeWithExpOne (S_val 255370 255373) ∧
    HasPrimeWithExpOne (S_val 255706 255709) ∧
    HasPrimeWithExpOne (S_val 256042 256045) ∧
    HasPrimeWithExpOne (S_val 256376 256379) ∧
    HasPrimeWithExpOne (S_val 256711 256714) ∧
    HasPrimeWithExpOne (S_val 257049 257052) ∧
    HasPrimeWithExpOne (S_val 257381 257384) ∧
    HasPrimeWithExpOne (S_val 257718 257721) ∧
    HasPrimeWithExpOne (S_val 258055 258058) ∧
    HasPrimeWithExpOne (S_val 258390 258393) ∧
    HasPrimeWithExpOne (S_val 258725 258728) ∧
    HasPrimeWithExpOne (S_val 259060 259063) ∧
    HasPrimeWithExpOne (S_val 259397 259400) ∧
    HasPrimeWithExpOne (S_val 259731 259734) ∧
    HasPrimeWithExpOne (S_val 260067 260070) ∧
    HasPrimeWithExpOne (S_val 260402 260405) ∧
    HasPrimeWithExpOne (S_val 260739 260742) ∧
    HasPrimeWithExpOne (S_val 261074 261077) ∧
    HasPrimeWithExpOne (S_val 261409 261412) ∧
    HasPrimeWithExpOne (S_val 261745 261748) ∧
    HasPrimeWithExpOne (S_val 262078 262081) ∧
    HasPrimeWithExpOne (S_val 262416 262419) ∧
    HasPrimeWithExpOne (S_val 262752 262755) ∧
    HasPrimeWithExpOne (S_val 263088 263091) ∧
    HasPrimeWithExpOne (S_val 263423 263426) ∧
    HasPrimeWithExpOne (S_val 263758 263761) ∧
    HasPrimeWithExpOne (S_val 264095 264098) ∧
    HasPrimeWithExpOne (S_val 264430 264433) ∧
    HasPrimeWithExpOne (S_val 264765 264768) ∧
    HasPrimeWithExpOne (S_val 265100 265103) ∧
    HasPrimeWithExpOne (S_val 265437 265440) ∧
    HasPrimeWithExpOne (S_val 265774 265777) ∧
    HasPrimeWithExpOne (S_val 266106 266109) ∧
    HasPrimeWithExpOne (S_val 266444 266447) ∧
    HasPrimeWithExpOne (S_val 266776 266779) ∧
    HasPrimeWithExpOne (S_val 267113 267116) ∧
    HasPrimeWithExpOne (S_val 267449 267452) ∧
    HasPrimeWithExpOne (S_val 267784 267787) ∧
    HasPrimeWithExpOne (S_val 268120 268123) ∧
    HasPrimeWithExpOne (S_val 268456 268459) ∧
    HasPrimeWithExpOne (S_val 268792 268795) ∧
    HasPrimeWithExpOne (S_val 269127 269130) ∧
    HasPrimeWithExpOne (S_val 269462 269465) ∧
    HasPrimeWithExpOne (S_val 269798 269801) ∧
    HasPrimeWithExpOne (S_val 270134 270137) ∧
    HasPrimeWithExpOne (S_val 270470 270473) ∧
    HasPrimeWithExpOne (S_val 270805 270808) ∧
    HasPrimeWithExpOne (S_val 271141 271144) ∧
    HasPrimeWithExpOne (S_val 271476 271479) ∧
    HasPrimeWithExpOne (S_val 271812 271815) ∧
    HasPrimeWithExpOne (S_val 272147 272150) ∧
    HasPrimeWithExpOne (S_val 272483 272486) ∧
    HasPrimeWithExpOne (S_val 272821 272824) ∧
    HasPrimeWithExpOne (S_val 273154 273157) ∧
    HasPrimeWithExpOne (S_val 273490 273493) ∧
    HasPrimeWithExpOne (S_val 273826 273829) ∧
    HasPrimeWithExpOne (S_val 274161 274164) ∧
    HasPrimeWithExpOne (S_val 274497 274500) ∧
    HasPrimeWithExpOne (S_val 274834 274837) ∧
    HasPrimeWithExpOne (S_val 275168 275171) ∧
    HasPrimeWithExpOne (S_val 275503 275506) ∧
    HasPrimeWithExpOne (S_val 275840 275843) ∧
    HasPrimeWithExpOne (S_val 276174 276177) ∧
    HasPrimeWithExpOne (S_val 276510 276513) ∧
    HasPrimeWithExpOne (S_val 276846 276849) ∧
    HasPrimeWithExpOne (S_val 277181 277184) ∧
    HasPrimeWithExpOne (S_val 277518 277521) ∧
    HasPrimeWithExpOne (S_val 277854 277857) ∧
    HasPrimeWithExpOne (S_val 278188 278191) ∧
    HasPrimeWithExpOne (S_val 278524 278527) ∧
    HasPrimeWithExpOne (S_val 278858 278861) ∧
    HasPrimeWithExpOne (S_val 279195 279198) ∧
    HasPrimeWithExpOne (S_val 279530 279533) ∧
    HasPrimeWithExpOne (S_val 279865 279868) ∧
    HasPrimeWithExpOne (S_val 280202 280205) ∧
    HasPrimeWithExpOne (S_val 280538 280541) ∧
    HasPrimeWithExpOne (S_val 280873 280876) ∧
    HasPrimeWithExpOne (S_val 281208 281211) ∧
    HasPrimeWithExpOne (S_val 281542 281545) ∧
    HasPrimeWithExpOne (S_val 281878 281881) ∧
    HasPrimeWithExpOne (S_val 282213 282216) ∧
    HasPrimeWithExpOne (S_val 282549 282552) ∧
    HasPrimeWithExpOne (S_val 282884 282887) ∧
    HasPrimeWithExpOne (S_val 283223 283226) ∧
    HasPrimeWithExpOne (S_val 283557 283560) ∧
    HasPrimeWithExpOne (S_val 283889 283892) ∧
    HasPrimeWithExpOne (S_val 284229 284232) ∧
    HasPrimeWithExpOne (S_val 284563 284566) ∧
    HasPrimeWithExpOne (S_val 284897 284900) ∧
    HasPrimeWithExpOne (S_val 285237 285240) ∧
    HasPrimeWithExpOne (S_val 285570 285573) ∧
    HasPrimeWithExpOne (S_val 285907 285910) ∧
    HasPrimeWithExpOne (S_val 286240 286243) ∧
    HasPrimeWithExpOne (S_val 286577 286580) ∧
    HasPrimeWithExpOne (S_val 286912 286915) ∧
    HasPrimeWithExpOne (S_val 287248 287251) ∧
    HasPrimeWithExpOne (S_val 287584 287587) ∧
    HasPrimeWithExpOne (S_val 287918 287921) ∧
    HasPrimeWithExpOne (S_val 288255 288258) ∧
    HasPrimeWithExpOne (S_val 288590 288593) ∧
    HasPrimeWithExpOne (S_val 288926 288929) ∧
    HasPrimeWithExpOne (S_val 289261 289264) ∧
    HasPrimeWithExpOne (S_val 289597 289600) ∧
    HasPrimeWithExpOne (S_val 289928 289931) ∧
    HasPrimeWithExpOne (S_val 290268 290271) ∧
    HasPrimeWithExpOne (S_val 290604 290607) ∧
    HasPrimeWithExpOne (S_val 290939 290942) ∧
    HasPrimeWithExpOne (S_val 291275 291278) ∧
    HasPrimeWithExpOne (S_val 291610 291613) ∧
    HasPrimeWithExpOne (S_val 291947 291950) ∧
    HasPrimeWithExpOne (S_val 292281 292284) ∧
    HasPrimeWithExpOne (S_val 292617 292620) ∧
    HasPrimeWithExpOne (S_val 292954 292957) ∧
    HasPrimeWithExpOne (S_val 293289 293292) ∧
    HasPrimeWithExpOne (S_val 293624 293627) ∧
    HasPrimeWithExpOne (S_val 293956 293959) ∧
    HasPrimeWithExpOne (S_val 294296 294299) ∧
    HasPrimeWithExpOne (S_val 294630 294633) ∧
    HasPrimeWithExpOne (S_val 294966 294969) ∧
    HasPrimeWithExpOne (S_val 295303 295306) ∧
    HasPrimeWithExpOne (S_val 295638 295641) ∧
    HasPrimeWithExpOne (S_val 295974 295977) ∧
    HasPrimeWithExpOne (S_val 296308 296311) ∧
    HasPrimeWithExpOne (S_val 296644 296647) ∧
    HasPrimeWithExpOne (S_val 296979 296982) ∧
    HasPrimeWithExpOne (S_val 297314 297317) ∧
    HasPrimeWithExpOne (S_val 297651 297654) ∧
    HasPrimeWithExpOne (S_val 297984 297987) ∧
    HasPrimeWithExpOne (S_val 298322 298325) ∧
    HasPrimeWithExpOne (S_val 298659 298662) ∧
    HasPrimeWithExpOne (S_val 298993 298996) ∧
    HasPrimeWithExpOne (S_val 299328 299331) ∧
    HasPrimeWithExpOne (S_val 299665 299668) ∧
    HasPrimeWithExpOne (S_val 299999 300002) :=
  ⟨row_200001_200004.1, row_200337_200340.1, row_200672_200675.1, row_201008_201011.1, row_201344_201347.1, row_201678_201681.1, row_202015_202018.1, row_202349_202352.1, row_202685_202688.1, row_203022_203025.1, row_203355_203358.1, row_203692_203695.1, row_204027_204030.1, row_204364_204367.1, row_204699_204702.1, row_205036_205039.1, row_205371_205374.1, row_205706_205709.1, row_206043_206046.1, row_206375_206378.1, row_206713_206716.1, row_207047_207050.1, row_207382_207385.1, row_207720_207723.1, row_208054_208057.1, row_208389_208392.1, row_208725_208728.1, row_209064_209067.1, row_209396_209399.1, row_209731_209734.1, row_210066_210069.1, row_210403_210406.1, row_210738_210741.1, row_211073_211076.1, row_211410_211413.1, row_211745_211748.1, row_212083_212086.1, row_212416_212419.1, row_212752_212755.1, row_213088_213091.1, row_213423_213426.1, row_213759_213762.1, row_214095_214098.1, row_214430_214433.1, row_214766_214769.1, row_215101_215104.1, row_215437_215440.1, row_215772_215775.1, row_216108_216111.1, row_216443_216446.1, row_216780_216783.1, row_217114_217117.1, row_217450_217453.1, row_217786_217789.1, row_218123_218126.1, row_218457_218460.1, row_218792_218795.1, row_219128_219131.1, row_219463_219466.1, row_219801_219804.1, row_220135_220138.1, row_220471_220474.1, row_220805_220808.1, row_221140_221143.1, row_221478_221481.1, row_221811_221814.1, row_222150_222153.1, row_222482_222485.1, row_222819_222822.1, row_223154_223157.1, row_223492_223495.1, row_223825_223828.1, row_224162_224165.1, row_224497_224500.1, row_224832_224835.1, row_225168_225171.1, row_225505_225508.1, row_225839_225842.1, row_226174_226177.1, row_226511_226514.1, row_226846_226849.1, row_227183_227186.1, row_227516_227519.1, row_227853_227856.1, row_228190_228193.1, row_228524_228527.1, row_228859_228862.1, row_229196_229199.1, row_229530_229533.1, row_229866_229869.1, row_230203_230206.1, row_230537_230540.1, row_230873_230876.1, row_231208_231211.1, row_231544_231547.1, row_231879_231882.1, row_232215_232218.1, row_232551_232554.1, row_232886_232889.1, row_233222_233225.1, row_233558_233561.1, row_233893_233896.1, row_234226_234229.1, row_234564_234567.1, row_234900_234903.1, row_235235_235238.1, row_235572_235575.1, row_235906_235909.1, row_236243_236246.1, row_236576_236579.1, row_236914_236917.1, row_237248_237251.1, row_237583_237586.1, row_237920_237923.1, row_238253_238256.1, row_238592_238595.1, row_238928_238931.1, row_239261_239264.1, row_239597_239600.1, row_239934_239937.1, row_240267_240270.1, row_240604_240607.1, row_240942_240945.1, row_241274_241277.1, row_241611_241614.1, row_241945_241948.1, row_242282_242285.1, row_242618_242621.1, row_242956_242959.1, row_243288_243291.1, row_243625_243628.1, row_243960_243963.1, row_244295_244298.1, row_244631_244634.1, row_244964_244967.1, row_245302_245305.1, row_245639_245642.1, row_245972_245975.1, row_246309_246312.1, row_246646_246649.1, row_246982_246985.1, row_247316_247319.1, row_247652_247655.1, row_247987_247990.1, row_248323_248326.1, row_248660_248663.1, row_248993_248996.1, row_249330_249333.1, row_249663_249666.1, row_250002_250005.1, row_250336_250339.1, row_250671_250674.1, row_251007_251010.1, row_251343_251346.1, row_251678_251681.1, row_252014_252017.1, row_252349_252352.1, row_252684_252687.1, row_253020_253023.1, row_253357_253360.1, row_253692_253695.1, row_254027_254030.1, row_254363_254366.1, row_254697_254700.1, row_255035_255038.1, row_255370_255373.1, row_255706_255709.1, row_256042_256045.1, row_256376_256379.1, row_256711_256714.1, row_257049_257052.1, row_257381_257384.1, row_257718_257721.1, row_258055_258058.1, row_258390_258393.1, row_258725_258728.1, row_259060_259063.1, row_259397_259400.1, row_259731_259734.1, row_260067_260070.1, row_260402_260405.1, row_260739_260742.1, row_261074_261077.1, row_261409_261412.1, row_261745_261748.1, row_262078_262081.1, row_262416_262419.1, row_262752_262755.1, row_263088_263091.1, row_263423_263426.1, row_263758_263761.1, row_264095_264098.1, row_264430_264433.1, row_264765_264768.1, row_265100_265103.1, row_265437_265440.1, row_265774_265777.1, row_266106_266109.1, row_266444_266447.1, row_266776_266779.1, row_267113_267116.1, row_267449_267452.1, row_267784_267787.1, row_268120_268123.1, row_268456_268459.1, row_268792_268795.1, row_269127_269130.1, row_269462_269465.1, row_269798_269801.1, row_270134_270137.1, row_270470_270473.1, row_270805_270808.1, row_271141_271144.1, row_271476_271479.1, row_271812_271815.1, row_272147_272150.1, row_272483_272486.1, row_272821_272824.1, row_273154_273157.1, row_273490_273493.1, row_273826_273829.1, row_274161_274164.1, row_274497_274500.1, row_274834_274837.1, row_275168_275171.1, row_275503_275506.1, row_275840_275843.1, row_276174_276177.1, row_276510_276513.1, row_276846_276849.1, row_277181_277184.1, row_277518_277521.1, row_277854_277857.1, row_278188_278191.1, row_278524_278527.1, row_278858_278861.1, row_279195_279198.1, row_279530_279533.1, row_279865_279868.1, row_280202_280205.1, row_280538_280541.1, row_280873_280876.1, row_281208_281211.1, row_281542_281545.1, row_281878_281881.1, row_282213_282216.1, row_282549_282552.1, row_282884_282887.1, row_283223_283226.1, row_283557_283560.1, row_283889_283892.1, row_284229_284232.1, row_284563_284566.1, row_284897_284900.1, row_285237_285240.1, row_285570_285573.1, row_285907_285910.1, row_286240_286243.1, row_286577_286580.1, row_286912_286915.1, row_287248_287251.1, row_287584_287587.1, row_287918_287921.1, row_288255_288258.1, row_288590_288593.1, row_288926_288929.1, row_289261_289264.1, row_289597_289600.1, row_289928_289931.1, row_290268_290271.1, row_290604_290607.1, row_290939_290942.1, row_291275_291278.1, row_291610_291613.1, row_291947_291950.1, row_292281_292284.1, row_292617_292620.1, row_292954_292957.1, row_293289_293292.1, row_293624_293627.1, row_293956_293959.1, row_294296_294299.1, row_294630_294633.1, row_294966_294969.1, row_295303_295306.1, row_295638_295641.1, row_295974_295977.1, row_296308_296311.1, row_296644_296647.1, row_296979_296982.1, row_297314_297317.1, row_297651_297654.1, row_297984_297987.1, row_298322_298325.1, row_298659_298662.1, row_298993_298996.1, row_299328_299331.1, row_299665_299668.1, row_299999_300002.1⟩
theorem exists_p_with_order_ne_13_200000_lt_B_le_300000_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200001 200004 ∧ ¬ p ∣ (200004 - 200001) ∧
      ∃ (hNotC : ¬ p ∣ 200004) (hNotB : ¬ p ∣ 200001),
        order_of_C_B_inv_mod_p2 200004 200001 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200337 200340 ∧ ¬ p ∣ (200340 - 200337) ∧
      ∃ (hNotC : ¬ p ∣ 200340) (hNotB : ¬ p ∣ 200337),
        order_of_C_B_inv_mod_p2 200340 200337 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200672 200675 ∧ ¬ p ∣ (200675 - 200672) ∧
      ∃ (hNotC : ¬ p ∣ 200675) (hNotB : ¬ p ∣ 200672),
        order_of_C_B_inv_mod_p2 200675 200672 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201008 201011 ∧ ¬ p ∣ (201011 - 201008) ∧
      ∃ (hNotC : ¬ p ∣ 201011) (hNotB : ¬ p ∣ 201008),
        order_of_C_B_inv_mod_p2 201011 201008 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201344 201347 ∧ ¬ p ∣ (201347 - 201344) ∧
      ∃ (hNotC : ¬ p ∣ 201347) (hNotB : ¬ p ∣ 201344),
        order_of_C_B_inv_mod_p2 201347 201344 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201678 201681 ∧ ¬ p ∣ (201681 - 201678) ∧
      ∃ (hNotC : ¬ p ∣ 201681) (hNotB : ¬ p ∣ 201678),
        order_of_C_B_inv_mod_p2 201681 201678 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202015 202018 ∧ ¬ p ∣ (202018 - 202015) ∧
      ∃ (hNotC : ¬ p ∣ 202018) (hNotB : ¬ p ∣ 202015),
        order_of_C_B_inv_mod_p2 202018 202015 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202349 202352 ∧ ¬ p ∣ (202352 - 202349) ∧
      ∃ (hNotC : ¬ p ∣ 202352) (hNotB : ¬ p ∣ 202349),
        order_of_C_B_inv_mod_p2 202352 202349 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202685 202688 ∧ ¬ p ∣ (202688 - 202685) ∧
      ∃ (hNotC : ¬ p ∣ 202688) (hNotB : ¬ p ∣ 202685),
        order_of_C_B_inv_mod_p2 202688 202685 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203022 203025 ∧ ¬ p ∣ (203025 - 203022) ∧
      ∃ (hNotC : ¬ p ∣ 203025) (hNotB : ¬ p ∣ 203022),
        order_of_C_B_inv_mod_p2 203025 203022 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203355 203358 ∧ ¬ p ∣ (203358 - 203355) ∧
      ∃ (hNotC : ¬ p ∣ 203358) (hNotB : ¬ p ∣ 203355),
        order_of_C_B_inv_mod_p2 203358 203355 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203692 203695 ∧ ¬ p ∣ (203695 - 203692) ∧
      ∃ (hNotC : ¬ p ∣ 203695) (hNotB : ¬ p ∣ 203692),
        order_of_C_B_inv_mod_p2 203695 203692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204027 204030 ∧ ¬ p ∣ (204030 - 204027) ∧
      ∃ (hNotC : ¬ p ∣ 204030) (hNotB : ¬ p ∣ 204027),
        order_of_C_B_inv_mod_p2 204030 204027 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204364 204367 ∧ ¬ p ∣ (204367 - 204364) ∧
      ∃ (hNotC : ¬ p ∣ 204367) (hNotB : ¬ p ∣ 204364),
        order_of_C_B_inv_mod_p2 204367 204364 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204699 204702 ∧ ¬ p ∣ (204702 - 204699) ∧
      ∃ (hNotC : ¬ p ∣ 204702) (hNotB : ¬ p ∣ 204699),
        order_of_C_B_inv_mod_p2 204702 204699 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205036 205039 ∧ ¬ p ∣ (205039 - 205036) ∧
      ∃ (hNotC : ¬ p ∣ 205039) (hNotB : ¬ p ∣ 205036),
        order_of_C_B_inv_mod_p2 205039 205036 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205371 205374 ∧ ¬ p ∣ (205374 - 205371) ∧
      ∃ (hNotC : ¬ p ∣ 205374) (hNotB : ¬ p ∣ 205371),
        order_of_C_B_inv_mod_p2 205374 205371 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205706 205709 ∧ ¬ p ∣ (205709 - 205706) ∧
      ∃ (hNotC : ¬ p ∣ 205709) (hNotB : ¬ p ∣ 205706),
        order_of_C_B_inv_mod_p2 205709 205706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206043 206046 ∧ ¬ p ∣ (206046 - 206043) ∧
      ∃ (hNotC : ¬ p ∣ 206046) (hNotB : ¬ p ∣ 206043),
        order_of_C_B_inv_mod_p2 206046 206043 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206375 206378 ∧ ¬ p ∣ (206378 - 206375) ∧
      ∃ (hNotC : ¬ p ∣ 206378) (hNotB : ¬ p ∣ 206375),
        order_of_C_B_inv_mod_p2 206378 206375 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206713 206716 ∧ ¬ p ∣ (206716 - 206713) ∧
      ∃ (hNotC : ¬ p ∣ 206716) (hNotB : ¬ p ∣ 206713),
        order_of_C_B_inv_mod_p2 206716 206713 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207047 207050 ∧ ¬ p ∣ (207050 - 207047) ∧
      ∃ (hNotC : ¬ p ∣ 207050) (hNotB : ¬ p ∣ 207047),
        order_of_C_B_inv_mod_p2 207050 207047 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207382 207385 ∧ ¬ p ∣ (207385 - 207382) ∧
      ∃ (hNotC : ¬ p ∣ 207385) (hNotB : ¬ p ∣ 207382),
        order_of_C_B_inv_mod_p2 207385 207382 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207720 207723 ∧ ¬ p ∣ (207723 - 207720) ∧
      ∃ (hNotC : ¬ p ∣ 207723) (hNotB : ¬ p ∣ 207720),
        order_of_C_B_inv_mod_p2 207723 207720 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208054 208057 ∧ ¬ p ∣ (208057 - 208054) ∧
      ∃ (hNotC : ¬ p ∣ 208057) (hNotB : ¬ p ∣ 208054),
        order_of_C_B_inv_mod_p2 208057 208054 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208389 208392 ∧ ¬ p ∣ (208392 - 208389) ∧
      ∃ (hNotC : ¬ p ∣ 208392) (hNotB : ¬ p ∣ 208389),
        order_of_C_B_inv_mod_p2 208392 208389 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208725 208728 ∧ ¬ p ∣ (208728 - 208725) ∧
      ∃ (hNotC : ¬ p ∣ 208728) (hNotB : ¬ p ∣ 208725),
        order_of_C_B_inv_mod_p2 208728 208725 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209064 209067 ∧ ¬ p ∣ (209067 - 209064) ∧
      ∃ (hNotC : ¬ p ∣ 209067) (hNotB : ¬ p ∣ 209064),
        order_of_C_B_inv_mod_p2 209067 209064 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209396 209399 ∧ ¬ p ∣ (209399 - 209396) ∧
      ∃ (hNotC : ¬ p ∣ 209399) (hNotB : ¬ p ∣ 209396),
        order_of_C_B_inv_mod_p2 209399 209396 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209731 209734 ∧ ¬ p ∣ (209734 - 209731) ∧
      ∃ (hNotC : ¬ p ∣ 209734) (hNotB : ¬ p ∣ 209731),
        order_of_C_B_inv_mod_p2 209734 209731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210066 210069 ∧ ¬ p ∣ (210069 - 210066) ∧
      ∃ (hNotC : ¬ p ∣ 210069) (hNotB : ¬ p ∣ 210066),
        order_of_C_B_inv_mod_p2 210069 210066 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210403 210406 ∧ ¬ p ∣ (210406 - 210403) ∧
      ∃ (hNotC : ¬ p ∣ 210406) (hNotB : ¬ p ∣ 210403),
        order_of_C_B_inv_mod_p2 210406 210403 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210738 210741 ∧ ¬ p ∣ (210741 - 210738) ∧
      ∃ (hNotC : ¬ p ∣ 210741) (hNotB : ¬ p ∣ 210738),
        order_of_C_B_inv_mod_p2 210741 210738 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211073 211076 ∧ ¬ p ∣ (211076 - 211073) ∧
      ∃ (hNotC : ¬ p ∣ 211076) (hNotB : ¬ p ∣ 211073),
        order_of_C_B_inv_mod_p2 211076 211073 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211410 211413 ∧ ¬ p ∣ (211413 - 211410) ∧
      ∃ (hNotC : ¬ p ∣ 211413) (hNotB : ¬ p ∣ 211410),
        order_of_C_B_inv_mod_p2 211413 211410 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211745 211748 ∧ ¬ p ∣ (211748 - 211745) ∧
      ∃ (hNotC : ¬ p ∣ 211748) (hNotB : ¬ p ∣ 211745),
        order_of_C_B_inv_mod_p2 211748 211745 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212083 212086 ∧ ¬ p ∣ (212086 - 212083) ∧
      ∃ (hNotC : ¬ p ∣ 212086) (hNotB : ¬ p ∣ 212083),
        order_of_C_B_inv_mod_p2 212086 212083 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212416 212419 ∧ ¬ p ∣ (212419 - 212416) ∧
      ∃ (hNotC : ¬ p ∣ 212419) (hNotB : ¬ p ∣ 212416),
        order_of_C_B_inv_mod_p2 212419 212416 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212752 212755 ∧ ¬ p ∣ (212755 - 212752) ∧
      ∃ (hNotC : ¬ p ∣ 212755) (hNotB : ¬ p ∣ 212752),
        order_of_C_B_inv_mod_p2 212755 212752 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213088 213091 ∧ ¬ p ∣ (213091 - 213088) ∧
      ∃ (hNotC : ¬ p ∣ 213091) (hNotB : ¬ p ∣ 213088),
        order_of_C_B_inv_mod_p2 213091 213088 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213423 213426 ∧ ¬ p ∣ (213426 - 213423) ∧
      ∃ (hNotC : ¬ p ∣ 213426) (hNotB : ¬ p ∣ 213423),
        order_of_C_B_inv_mod_p2 213426 213423 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213759 213762 ∧ ¬ p ∣ (213762 - 213759) ∧
      ∃ (hNotC : ¬ p ∣ 213762) (hNotB : ¬ p ∣ 213759),
        order_of_C_B_inv_mod_p2 213762 213759 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214095 214098 ∧ ¬ p ∣ (214098 - 214095) ∧
      ∃ (hNotC : ¬ p ∣ 214098) (hNotB : ¬ p ∣ 214095),
        order_of_C_B_inv_mod_p2 214098 214095 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214430 214433 ∧ ¬ p ∣ (214433 - 214430) ∧
      ∃ (hNotC : ¬ p ∣ 214433) (hNotB : ¬ p ∣ 214430),
        order_of_C_B_inv_mod_p2 214433 214430 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214766 214769 ∧ ¬ p ∣ (214769 - 214766) ∧
      ∃ (hNotC : ¬ p ∣ 214769) (hNotB : ¬ p ∣ 214766),
        order_of_C_B_inv_mod_p2 214769 214766 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215101 215104 ∧ ¬ p ∣ (215104 - 215101) ∧
      ∃ (hNotC : ¬ p ∣ 215104) (hNotB : ¬ p ∣ 215101),
        order_of_C_B_inv_mod_p2 215104 215101 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215437 215440 ∧ ¬ p ∣ (215440 - 215437) ∧
      ∃ (hNotC : ¬ p ∣ 215440) (hNotB : ¬ p ∣ 215437),
        order_of_C_B_inv_mod_p2 215440 215437 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215772 215775 ∧ ¬ p ∣ (215775 - 215772) ∧
      ∃ (hNotC : ¬ p ∣ 215775) (hNotB : ¬ p ∣ 215772),
        order_of_C_B_inv_mod_p2 215775 215772 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216108 216111 ∧ ¬ p ∣ (216111 - 216108) ∧
      ∃ (hNotC : ¬ p ∣ 216111) (hNotB : ¬ p ∣ 216108),
        order_of_C_B_inv_mod_p2 216111 216108 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216443 216446 ∧ ¬ p ∣ (216446 - 216443) ∧
      ∃ (hNotC : ¬ p ∣ 216446) (hNotB : ¬ p ∣ 216443),
        order_of_C_B_inv_mod_p2 216446 216443 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216780 216783 ∧ ¬ p ∣ (216783 - 216780) ∧
      ∃ (hNotC : ¬ p ∣ 216783) (hNotB : ¬ p ∣ 216780),
        order_of_C_B_inv_mod_p2 216783 216780 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217114 217117 ∧ ¬ p ∣ (217117 - 217114) ∧
      ∃ (hNotC : ¬ p ∣ 217117) (hNotB : ¬ p ∣ 217114),
        order_of_C_B_inv_mod_p2 217117 217114 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217450 217453 ∧ ¬ p ∣ (217453 - 217450) ∧
      ∃ (hNotC : ¬ p ∣ 217453) (hNotB : ¬ p ∣ 217450),
        order_of_C_B_inv_mod_p2 217453 217450 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217786 217789 ∧ ¬ p ∣ (217789 - 217786) ∧
      ∃ (hNotC : ¬ p ∣ 217789) (hNotB : ¬ p ∣ 217786),
        order_of_C_B_inv_mod_p2 217789 217786 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218123 218126 ∧ ¬ p ∣ (218126 - 218123) ∧
      ∃ (hNotC : ¬ p ∣ 218126) (hNotB : ¬ p ∣ 218123),
        order_of_C_B_inv_mod_p2 218126 218123 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218457 218460 ∧ ¬ p ∣ (218460 - 218457) ∧
      ∃ (hNotC : ¬ p ∣ 218460) (hNotB : ¬ p ∣ 218457),
        order_of_C_B_inv_mod_p2 218460 218457 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218792 218795 ∧ ¬ p ∣ (218795 - 218792) ∧
      ∃ (hNotC : ¬ p ∣ 218795) (hNotB : ¬ p ∣ 218792),
        order_of_C_B_inv_mod_p2 218795 218792 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219128 219131 ∧ ¬ p ∣ (219131 - 219128) ∧
      ∃ (hNotC : ¬ p ∣ 219131) (hNotB : ¬ p ∣ 219128),
        order_of_C_B_inv_mod_p2 219131 219128 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219463 219466 ∧ ¬ p ∣ (219466 - 219463) ∧
      ∃ (hNotC : ¬ p ∣ 219466) (hNotB : ¬ p ∣ 219463),
        order_of_C_B_inv_mod_p2 219466 219463 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219801 219804 ∧ ¬ p ∣ (219804 - 219801) ∧
      ∃ (hNotC : ¬ p ∣ 219804) (hNotB : ¬ p ∣ 219801),
        order_of_C_B_inv_mod_p2 219804 219801 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220135 220138 ∧ ¬ p ∣ (220138 - 220135) ∧
      ∃ (hNotC : ¬ p ∣ 220138) (hNotB : ¬ p ∣ 220135),
        order_of_C_B_inv_mod_p2 220138 220135 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220471 220474 ∧ ¬ p ∣ (220474 - 220471) ∧
      ∃ (hNotC : ¬ p ∣ 220474) (hNotB : ¬ p ∣ 220471),
        order_of_C_B_inv_mod_p2 220474 220471 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220805 220808 ∧ ¬ p ∣ (220808 - 220805) ∧
      ∃ (hNotC : ¬ p ∣ 220808) (hNotB : ¬ p ∣ 220805),
        order_of_C_B_inv_mod_p2 220808 220805 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221140 221143 ∧ ¬ p ∣ (221143 - 221140) ∧
      ∃ (hNotC : ¬ p ∣ 221143) (hNotB : ¬ p ∣ 221140),
        order_of_C_B_inv_mod_p2 221143 221140 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221478 221481 ∧ ¬ p ∣ (221481 - 221478) ∧
      ∃ (hNotC : ¬ p ∣ 221481) (hNotB : ¬ p ∣ 221478),
        order_of_C_B_inv_mod_p2 221481 221478 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221811 221814 ∧ ¬ p ∣ (221814 - 221811) ∧
      ∃ (hNotC : ¬ p ∣ 221814) (hNotB : ¬ p ∣ 221811),
        order_of_C_B_inv_mod_p2 221814 221811 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222150 222153 ∧ ¬ p ∣ (222153 - 222150) ∧
      ∃ (hNotC : ¬ p ∣ 222153) (hNotB : ¬ p ∣ 222150),
        order_of_C_B_inv_mod_p2 222153 222150 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222482 222485 ∧ ¬ p ∣ (222485 - 222482) ∧
      ∃ (hNotC : ¬ p ∣ 222485) (hNotB : ¬ p ∣ 222482),
        order_of_C_B_inv_mod_p2 222485 222482 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222819 222822 ∧ ¬ p ∣ (222822 - 222819) ∧
      ∃ (hNotC : ¬ p ∣ 222822) (hNotB : ¬ p ∣ 222819),
        order_of_C_B_inv_mod_p2 222822 222819 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223154 223157 ∧ ¬ p ∣ (223157 - 223154) ∧
      ∃ (hNotC : ¬ p ∣ 223157) (hNotB : ¬ p ∣ 223154),
        order_of_C_B_inv_mod_p2 223157 223154 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223492 223495 ∧ ¬ p ∣ (223495 - 223492) ∧
      ∃ (hNotC : ¬ p ∣ 223495) (hNotB : ¬ p ∣ 223492),
        order_of_C_B_inv_mod_p2 223495 223492 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223825 223828 ∧ ¬ p ∣ (223828 - 223825) ∧
      ∃ (hNotC : ¬ p ∣ 223828) (hNotB : ¬ p ∣ 223825),
        order_of_C_B_inv_mod_p2 223828 223825 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224162 224165 ∧ ¬ p ∣ (224165 - 224162) ∧
      ∃ (hNotC : ¬ p ∣ 224165) (hNotB : ¬ p ∣ 224162),
        order_of_C_B_inv_mod_p2 224165 224162 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224497 224500 ∧ ¬ p ∣ (224500 - 224497) ∧
      ∃ (hNotC : ¬ p ∣ 224500) (hNotB : ¬ p ∣ 224497),
        order_of_C_B_inv_mod_p2 224500 224497 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224832 224835 ∧ ¬ p ∣ (224835 - 224832) ∧
      ∃ (hNotC : ¬ p ∣ 224835) (hNotB : ¬ p ∣ 224832),
        order_of_C_B_inv_mod_p2 224835 224832 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225168 225171 ∧ ¬ p ∣ (225171 - 225168) ∧
      ∃ (hNotC : ¬ p ∣ 225171) (hNotB : ¬ p ∣ 225168),
        order_of_C_B_inv_mod_p2 225171 225168 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225505 225508 ∧ ¬ p ∣ (225508 - 225505) ∧
      ∃ (hNotC : ¬ p ∣ 225508) (hNotB : ¬ p ∣ 225505),
        order_of_C_B_inv_mod_p2 225508 225505 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225839 225842 ∧ ¬ p ∣ (225842 - 225839) ∧
      ∃ (hNotC : ¬ p ∣ 225842) (hNotB : ¬ p ∣ 225839),
        order_of_C_B_inv_mod_p2 225842 225839 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226174 226177 ∧ ¬ p ∣ (226177 - 226174) ∧
      ∃ (hNotC : ¬ p ∣ 226177) (hNotB : ¬ p ∣ 226174),
        order_of_C_B_inv_mod_p2 226177 226174 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226511 226514 ∧ ¬ p ∣ (226514 - 226511) ∧
      ∃ (hNotC : ¬ p ∣ 226514) (hNotB : ¬ p ∣ 226511),
        order_of_C_B_inv_mod_p2 226514 226511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226846 226849 ∧ ¬ p ∣ (226849 - 226846) ∧
      ∃ (hNotC : ¬ p ∣ 226849) (hNotB : ¬ p ∣ 226846),
        order_of_C_B_inv_mod_p2 226849 226846 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227183 227186 ∧ ¬ p ∣ (227186 - 227183) ∧
      ∃ (hNotC : ¬ p ∣ 227186) (hNotB : ¬ p ∣ 227183),
        order_of_C_B_inv_mod_p2 227186 227183 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227516 227519 ∧ ¬ p ∣ (227519 - 227516) ∧
      ∃ (hNotC : ¬ p ∣ 227519) (hNotB : ¬ p ∣ 227516),
        order_of_C_B_inv_mod_p2 227519 227516 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227853 227856 ∧ ¬ p ∣ (227856 - 227853) ∧
      ∃ (hNotC : ¬ p ∣ 227856) (hNotB : ¬ p ∣ 227853),
        order_of_C_B_inv_mod_p2 227856 227853 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228190 228193 ∧ ¬ p ∣ (228193 - 228190) ∧
      ∃ (hNotC : ¬ p ∣ 228193) (hNotB : ¬ p ∣ 228190),
        order_of_C_B_inv_mod_p2 228193 228190 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228524 228527 ∧ ¬ p ∣ (228527 - 228524) ∧
      ∃ (hNotC : ¬ p ∣ 228527) (hNotB : ¬ p ∣ 228524),
        order_of_C_B_inv_mod_p2 228527 228524 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228859 228862 ∧ ¬ p ∣ (228862 - 228859) ∧
      ∃ (hNotC : ¬ p ∣ 228862) (hNotB : ¬ p ∣ 228859),
        order_of_C_B_inv_mod_p2 228862 228859 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229196 229199 ∧ ¬ p ∣ (229199 - 229196) ∧
      ∃ (hNotC : ¬ p ∣ 229199) (hNotB : ¬ p ∣ 229196),
        order_of_C_B_inv_mod_p2 229199 229196 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229530 229533 ∧ ¬ p ∣ (229533 - 229530) ∧
      ∃ (hNotC : ¬ p ∣ 229533) (hNotB : ¬ p ∣ 229530),
        order_of_C_B_inv_mod_p2 229533 229530 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229866 229869 ∧ ¬ p ∣ (229869 - 229866) ∧
      ∃ (hNotC : ¬ p ∣ 229869) (hNotB : ¬ p ∣ 229866),
        order_of_C_B_inv_mod_p2 229869 229866 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230203 230206 ∧ ¬ p ∣ (230206 - 230203) ∧
      ∃ (hNotC : ¬ p ∣ 230206) (hNotB : ¬ p ∣ 230203),
        order_of_C_B_inv_mod_p2 230206 230203 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230537 230540 ∧ ¬ p ∣ (230540 - 230537) ∧
      ∃ (hNotC : ¬ p ∣ 230540) (hNotB : ¬ p ∣ 230537),
        order_of_C_B_inv_mod_p2 230540 230537 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230873 230876 ∧ ¬ p ∣ (230876 - 230873) ∧
      ∃ (hNotC : ¬ p ∣ 230876) (hNotB : ¬ p ∣ 230873),
        order_of_C_B_inv_mod_p2 230876 230873 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231208 231211 ∧ ¬ p ∣ (231211 - 231208) ∧
      ∃ (hNotC : ¬ p ∣ 231211) (hNotB : ¬ p ∣ 231208),
        order_of_C_B_inv_mod_p2 231211 231208 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231544 231547 ∧ ¬ p ∣ (231547 - 231544) ∧
      ∃ (hNotC : ¬ p ∣ 231547) (hNotB : ¬ p ∣ 231544),
        order_of_C_B_inv_mod_p2 231547 231544 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231879 231882 ∧ ¬ p ∣ (231882 - 231879) ∧
      ∃ (hNotC : ¬ p ∣ 231882) (hNotB : ¬ p ∣ 231879),
        order_of_C_B_inv_mod_p2 231882 231879 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232215 232218 ∧ ¬ p ∣ (232218 - 232215) ∧
      ∃ (hNotC : ¬ p ∣ 232218) (hNotB : ¬ p ∣ 232215),
        order_of_C_B_inv_mod_p2 232218 232215 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232551 232554 ∧ ¬ p ∣ (232554 - 232551) ∧
      ∃ (hNotC : ¬ p ∣ 232554) (hNotB : ¬ p ∣ 232551),
        order_of_C_B_inv_mod_p2 232554 232551 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232886 232889 ∧ ¬ p ∣ (232889 - 232886) ∧
      ∃ (hNotC : ¬ p ∣ 232889) (hNotB : ¬ p ∣ 232886),
        order_of_C_B_inv_mod_p2 232889 232886 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233222 233225 ∧ ¬ p ∣ (233225 - 233222) ∧
      ∃ (hNotC : ¬ p ∣ 233225) (hNotB : ¬ p ∣ 233222),
        order_of_C_B_inv_mod_p2 233225 233222 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233558 233561 ∧ ¬ p ∣ (233561 - 233558) ∧
      ∃ (hNotC : ¬ p ∣ 233561) (hNotB : ¬ p ∣ 233558),
        order_of_C_B_inv_mod_p2 233561 233558 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233893 233896 ∧ ¬ p ∣ (233896 - 233893) ∧
      ∃ (hNotC : ¬ p ∣ 233896) (hNotB : ¬ p ∣ 233893),
        order_of_C_B_inv_mod_p2 233896 233893 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234226 234229 ∧ ¬ p ∣ (234229 - 234226) ∧
      ∃ (hNotC : ¬ p ∣ 234229) (hNotB : ¬ p ∣ 234226),
        order_of_C_B_inv_mod_p2 234229 234226 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234564 234567 ∧ ¬ p ∣ (234567 - 234564) ∧
      ∃ (hNotC : ¬ p ∣ 234567) (hNotB : ¬ p ∣ 234564),
        order_of_C_B_inv_mod_p2 234567 234564 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234900 234903 ∧ ¬ p ∣ (234903 - 234900) ∧
      ∃ (hNotC : ¬ p ∣ 234903) (hNotB : ¬ p ∣ 234900),
        order_of_C_B_inv_mod_p2 234903 234900 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235235 235238 ∧ ¬ p ∣ (235238 - 235235) ∧
      ∃ (hNotC : ¬ p ∣ 235238) (hNotB : ¬ p ∣ 235235),
        order_of_C_B_inv_mod_p2 235238 235235 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235572 235575 ∧ ¬ p ∣ (235575 - 235572) ∧
      ∃ (hNotC : ¬ p ∣ 235575) (hNotB : ¬ p ∣ 235572),
        order_of_C_B_inv_mod_p2 235575 235572 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235906 235909 ∧ ¬ p ∣ (235909 - 235906) ∧
      ∃ (hNotC : ¬ p ∣ 235909) (hNotB : ¬ p ∣ 235906),
        order_of_C_B_inv_mod_p2 235909 235906 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236243 236246 ∧ ¬ p ∣ (236246 - 236243) ∧
      ∃ (hNotC : ¬ p ∣ 236246) (hNotB : ¬ p ∣ 236243),
        order_of_C_B_inv_mod_p2 236246 236243 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236576 236579 ∧ ¬ p ∣ (236579 - 236576) ∧
      ∃ (hNotC : ¬ p ∣ 236579) (hNotB : ¬ p ∣ 236576),
        order_of_C_B_inv_mod_p2 236579 236576 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236914 236917 ∧ ¬ p ∣ (236917 - 236914) ∧
      ∃ (hNotC : ¬ p ∣ 236917) (hNotB : ¬ p ∣ 236914),
        order_of_C_B_inv_mod_p2 236917 236914 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237248 237251 ∧ ¬ p ∣ (237251 - 237248) ∧
      ∃ (hNotC : ¬ p ∣ 237251) (hNotB : ¬ p ∣ 237248),
        order_of_C_B_inv_mod_p2 237251 237248 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237583 237586 ∧ ¬ p ∣ (237586 - 237583) ∧
      ∃ (hNotC : ¬ p ∣ 237586) (hNotB : ¬ p ∣ 237583),
        order_of_C_B_inv_mod_p2 237586 237583 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237920 237923 ∧ ¬ p ∣ (237923 - 237920) ∧
      ∃ (hNotC : ¬ p ∣ 237923) (hNotB : ¬ p ∣ 237920),
        order_of_C_B_inv_mod_p2 237923 237920 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238253 238256 ∧ ¬ p ∣ (238256 - 238253) ∧
      ∃ (hNotC : ¬ p ∣ 238256) (hNotB : ¬ p ∣ 238253),
        order_of_C_B_inv_mod_p2 238256 238253 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238592 238595 ∧ ¬ p ∣ (238595 - 238592) ∧
      ∃ (hNotC : ¬ p ∣ 238595) (hNotB : ¬ p ∣ 238592),
        order_of_C_B_inv_mod_p2 238595 238592 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238928 238931 ∧ ¬ p ∣ (238931 - 238928) ∧
      ∃ (hNotC : ¬ p ∣ 238931) (hNotB : ¬ p ∣ 238928),
        order_of_C_B_inv_mod_p2 238931 238928 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239261 239264 ∧ ¬ p ∣ (239264 - 239261) ∧
      ∃ (hNotC : ¬ p ∣ 239264) (hNotB : ¬ p ∣ 239261),
        order_of_C_B_inv_mod_p2 239264 239261 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239597 239600 ∧ ¬ p ∣ (239600 - 239597) ∧
      ∃ (hNotC : ¬ p ∣ 239600) (hNotB : ¬ p ∣ 239597),
        order_of_C_B_inv_mod_p2 239600 239597 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239934 239937 ∧ ¬ p ∣ (239937 - 239934) ∧
      ∃ (hNotC : ¬ p ∣ 239937) (hNotB : ¬ p ∣ 239934),
        order_of_C_B_inv_mod_p2 239937 239934 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240267 240270 ∧ ¬ p ∣ (240270 - 240267) ∧
      ∃ (hNotC : ¬ p ∣ 240270) (hNotB : ¬ p ∣ 240267),
        order_of_C_B_inv_mod_p2 240270 240267 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240604 240607 ∧ ¬ p ∣ (240607 - 240604) ∧
      ∃ (hNotC : ¬ p ∣ 240607) (hNotB : ¬ p ∣ 240604),
        order_of_C_B_inv_mod_p2 240607 240604 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240942 240945 ∧ ¬ p ∣ (240945 - 240942) ∧
      ∃ (hNotC : ¬ p ∣ 240945) (hNotB : ¬ p ∣ 240942),
        order_of_C_B_inv_mod_p2 240945 240942 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241274 241277 ∧ ¬ p ∣ (241277 - 241274) ∧
      ∃ (hNotC : ¬ p ∣ 241277) (hNotB : ¬ p ∣ 241274),
        order_of_C_B_inv_mod_p2 241277 241274 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241611 241614 ∧ ¬ p ∣ (241614 - 241611) ∧
      ∃ (hNotC : ¬ p ∣ 241614) (hNotB : ¬ p ∣ 241611),
        order_of_C_B_inv_mod_p2 241614 241611 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241945 241948 ∧ ¬ p ∣ (241948 - 241945) ∧
      ∃ (hNotC : ¬ p ∣ 241948) (hNotB : ¬ p ∣ 241945),
        order_of_C_B_inv_mod_p2 241948 241945 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242282 242285 ∧ ¬ p ∣ (242285 - 242282) ∧
      ∃ (hNotC : ¬ p ∣ 242285) (hNotB : ¬ p ∣ 242282),
        order_of_C_B_inv_mod_p2 242285 242282 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242618 242621 ∧ ¬ p ∣ (242621 - 242618) ∧
      ∃ (hNotC : ¬ p ∣ 242621) (hNotB : ¬ p ∣ 242618),
        order_of_C_B_inv_mod_p2 242621 242618 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242956 242959 ∧ ¬ p ∣ (242959 - 242956) ∧
      ∃ (hNotC : ¬ p ∣ 242959) (hNotB : ¬ p ∣ 242956),
        order_of_C_B_inv_mod_p2 242959 242956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243288 243291 ∧ ¬ p ∣ (243291 - 243288) ∧
      ∃ (hNotC : ¬ p ∣ 243291) (hNotB : ¬ p ∣ 243288),
        order_of_C_B_inv_mod_p2 243291 243288 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243625 243628 ∧ ¬ p ∣ (243628 - 243625) ∧
      ∃ (hNotC : ¬ p ∣ 243628) (hNotB : ¬ p ∣ 243625),
        order_of_C_B_inv_mod_p2 243628 243625 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243960 243963 ∧ ¬ p ∣ (243963 - 243960) ∧
      ∃ (hNotC : ¬ p ∣ 243963) (hNotB : ¬ p ∣ 243960),
        order_of_C_B_inv_mod_p2 243963 243960 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244295 244298 ∧ ¬ p ∣ (244298 - 244295) ∧
      ∃ (hNotC : ¬ p ∣ 244298) (hNotB : ¬ p ∣ 244295),
        order_of_C_B_inv_mod_p2 244298 244295 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244631 244634 ∧ ¬ p ∣ (244634 - 244631) ∧
      ∃ (hNotC : ¬ p ∣ 244634) (hNotB : ¬ p ∣ 244631),
        order_of_C_B_inv_mod_p2 244634 244631 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244964 244967 ∧ ¬ p ∣ (244967 - 244964) ∧
      ∃ (hNotC : ¬ p ∣ 244967) (hNotB : ¬ p ∣ 244964),
        order_of_C_B_inv_mod_p2 244967 244964 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245302 245305 ∧ ¬ p ∣ (245305 - 245302) ∧
      ∃ (hNotC : ¬ p ∣ 245305) (hNotB : ¬ p ∣ 245302),
        order_of_C_B_inv_mod_p2 245305 245302 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245639 245642 ∧ ¬ p ∣ (245642 - 245639) ∧
      ∃ (hNotC : ¬ p ∣ 245642) (hNotB : ¬ p ∣ 245639),
        order_of_C_B_inv_mod_p2 245642 245639 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245972 245975 ∧ ¬ p ∣ (245975 - 245972) ∧
      ∃ (hNotC : ¬ p ∣ 245975) (hNotB : ¬ p ∣ 245972),
        order_of_C_B_inv_mod_p2 245975 245972 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246309 246312 ∧ ¬ p ∣ (246312 - 246309) ∧
      ∃ (hNotC : ¬ p ∣ 246312) (hNotB : ¬ p ∣ 246309),
        order_of_C_B_inv_mod_p2 246312 246309 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246646 246649 ∧ ¬ p ∣ (246649 - 246646) ∧
      ∃ (hNotC : ¬ p ∣ 246649) (hNotB : ¬ p ∣ 246646),
        order_of_C_B_inv_mod_p2 246649 246646 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246982 246985 ∧ ¬ p ∣ (246985 - 246982) ∧
      ∃ (hNotC : ¬ p ∣ 246985) (hNotB : ¬ p ∣ 246982),
        order_of_C_B_inv_mod_p2 246985 246982 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247316 247319 ∧ ¬ p ∣ (247319 - 247316) ∧
      ∃ (hNotC : ¬ p ∣ 247319) (hNotB : ¬ p ∣ 247316),
        order_of_C_B_inv_mod_p2 247319 247316 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247652 247655 ∧ ¬ p ∣ (247655 - 247652) ∧
      ∃ (hNotC : ¬ p ∣ 247655) (hNotB : ¬ p ∣ 247652),
        order_of_C_B_inv_mod_p2 247655 247652 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247987 247990 ∧ ¬ p ∣ (247990 - 247987) ∧
      ∃ (hNotC : ¬ p ∣ 247990) (hNotB : ¬ p ∣ 247987),
        order_of_C_B_inv_mod_p2 247990 247987 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248323 248326 ∧ ¬ p ∣ (248326 - 248323) ∧
      ∃ (hNotC : ¬ p ∣ 248326) (hNotB : ¬ p ∣ 248323),
        order_of_C_B_inv_mod_p2 248326 248323 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248660 248663 ∧ ¬ p ∣ (248663 - 248660) ∧
      ∃ (hNotC : ¬ p ∣ 248663) (hNotB : ¬ p ∣ 248660),
        order_of_C_B_inv_mod_p2 248663 248660 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248993 248996 ∧ ¬ p ∣ (248996 - 248993) ∧
      ∃ (hNotC : ¬ p ∣ 248996) (hNotB : ¬ p ∣ 248993),
        order_of_C_B_inv_mod_p2 248996 248993 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249330 249333 ∧ ¬ p ∣ (249333 - 249330) ∧
      ∃ (hNotC : ¬ p ∣ 249333) (hNotB : ¬ p ∣ 249330),
        order_of_C_B_inv_mod_p2 249333 249330 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249663 249666 ∧ ¬ p ∣ (249666 - 249663) ∧
      ∃ (hNotC : ¬ p ∣ 249666) (hNotB : ¬ p ∣ 249663),
        order_of_C_B_inv_mod_p2 249666 249663 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250002 250005 ∧ ¬ p ∣ (250005 - 250002) ∧
      ∃ (hNotC : ¬ p ∣ 250005) (hNotB : ¬ p ∣ 250002),
        order_of_C_B_inv_mod_p2 250005 250002 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250336 250339 ∧ ¬ p ∣ (250339 - 250336) ∧
      ∃ (hNotC : ¬ p ∣ 250339) (hNotB : ¬ p ∣ 250336),
        order_of_C_B_inv_mod_p2 250339 250336 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250671 250674 ∧ ¬ p ∣ (250674 - 250671) ∧
      ∃ (hNotC : ¬ p ∣ 250674) (hNotB : ¬ p ∣ 250671),
        order_of_C_B_inv_mod_p2 250674 250671 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251007 251010 ∧ ¬ p ∣ (251010 - 251007) ∧
      ∃ (hNotC : ¬ p ∣ 251010) (hNotB : ¬ p ∣ 251007),
        order_of_C_B_inv_mod_p2 251010 251007 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251343 251346 ∧ ¬ p ∣ (251346 - 251343) ∧
      ∃ (hNotC : ¬ p ∣ 251346) (hNotB : ¬ p ∣ 251343),
        order_of_C_B_inv_mod_p2 251346 251343 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251678 251681 ∧ ¬ p ∣ (251681 - 251678) ∧
      ∃ (hNotC : ¬ p ∣ 251681) (hNotB : ¬ p ∣ 251678),
        order_of_C_B_inv_mod_p2 251681 251678 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252014 252017 ∧ ¬ p ∣ (252017 - 252014) ∧
      ∃ (hNotC : ¬ p ∣ 252017) (hNotB : ¬ p ∣ 252014),
        order_of_C_B_inv_mod_p2 252017 252014 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252349 252352 ∧ ¬ p ∣ (252352 - 252349) ∧
      ∃ (hNotC : ¬ p ∣ 252352) (hNotB : ¬ p ∣ 252349),
        order_of_C_B_inv_mod_p2 252352 252349 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252684 252687 ∧ ¬ p ∣ (252687 - 252684) ∧
      ∃ (hNotC : ¬ p ∣ 252687) (hNotB : ¬ p ∣ 252684),
        order_of_C_B_inv_mod_p2 252687 252684 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253020 253023 ∧ ¬ p ∣ (253023 - 253020) ∧
      ∃ (hNotC : ¬ p ∣ 253023) (hNotB : ¬ p ∣ 253020),
        order_of_C_B_inv_mod_p2 253023 253020 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253357 253360 ∧ ¬ p ∣ (253360 - 253357) ∧
      ∃ (hNotC : ¬ p ∣ 253360) (hNotB : ¬ p ∣ 253357),
        order_of_C_B_inv_mod_p2 253360 253357 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253692 253695 ∧ ¬ p ∣ (253695 - 253692) ∧
      ∃ (hNotC : ¬ p ∣ 253695) (hNotB : ¬ p ∣ 253692),
        order_of_C_B_inv_mod_p2 253695 253692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254027 254030 ∧ ¬ p ∣ (254030 - 254027) ∧
      ∃ (hNotC : ¬ p ∣ 254030) (hNotB : ¬ p ∣ 254027),
        order_of_C_B_inv_mod_p2 254030 254027 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254363 254366 ∧ ¬ p ∣ (254366 - 254363) ∧
      ∃ (hNotC : ¬ p ∣ 254366) (hNotB : ¬ p ∣ 254363),
        order_of_C_B_inv_mod_p2 254366 254363 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254697 254700 ∧ ¬ p ∣ (254700 - 254697) ∧
      ∃ (hNotC : ¬ p ∣ 254700) (hNotB : ¬ p ∣ 254697),
        order_of_C_B_inv_mod_p2 254700 254697 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255035 255038 ∧ ¬ p ∣ (255038 - 255035) ∧
      ∃ (hNotC : ¬ p ∣ 255038) (hNotB : ¬ p ∣ 255035),
        order_of_C_B_inv_mod_p2 255038 255035 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255370 255373 ∧ ¬ p ∣ (255373 - 255370) ∧
      ∃ (hNotC : ¬ p ∣ 255373) (hNotB : ¬ p ∣ 255370),
        order_of_C_B_inv_mod_p2 255373 255370 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255706 255709 ∧ ¬ p ∣ (255709 - 255706) ∧
      ∃ (hNotC : ¬ p ∣ 255709) (hNotB : ¬ p ∣ 255706),
        order_of_C_B_inv_mod_p2 255709 255706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256042 256045 ∧ ¬ p ∣ (256045 - 256042) ∧
      ∃ (hNotC : ¬ p ∣ 256045) (hNotB : ¬ p ∣ 256042),
        order_of_C_B_inv_mod_p2 256045 256042 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256376 256379 ∧ ¬ p ∣ (256379 - 256376) ∧
      ∃ (hNotC : ¬ p ∣ 256379) (hNotB : ¬ p ∣ 256376),
        order_of_C_B_inv_mod_p2 256379 256376 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256711 256714 ∧ ¬ p ∣ (256714 - 256711) ∧
      ∃ (hNotC : ¬ p ∣ 256714) (hNotB : ¬ p ∣ 256711),
        order_of_C_B_inv_mod_p2 256714 256711 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257049 257052 ∧ ¬ p ∣ (257052 - 257049) ∧
      ∃ (hNotC : ¬ p ∣ 257052) (hNotB : ¬ p ∣ 257049),
        order_of_C_B_inv_mod_p2 257052 257049 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257381 257384 ∧ ¬ p ∣ (257384 - 257381) ∧
      ∃ (hNotC : ¬ p ∣ 257384) (hNotB : ¬ p ∣ 257381),
        order_of_C_B_inv_mod_p2 257384 257381 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257718 257721 ∧ ¬ p ∣ (257721 - 257718) ∧
      ∃ (hNotC : ¬ p ∣ 257721) (hNotB : ¬ p ∣ 257718),
        order_of_C_B_inv_mod_p2 257721 257718 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258055 258058 ∧ ¬ p ∣ (258058 - 258055) ∧
      ∃ (hNotC : ¬ p ∣ 258058) (hNotB : ¬ p ∣ 258055),
        order_of_C_B_inv_mod_p2 258058 258055 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258390 258393 ∧ ¬ p ∣ (258393 - 258390) ∧
      ∃ (hNotC : ¬ p ∣ 258393) (hNotB : ¬ p ∣ 258390),
        order_of_C_B_inv_mod_p2 258393 258390 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258725 258728 ∧ ¬ p ∣ (258728 - 258725) ∧
      ∃ (hNotC : ¬ p ∣ 258728) (hNotB : ¬ p ∣ 258725),
        order_of_C_B_inv_mod_p2 258728 258725 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259060 259063 ∧ ¬ p ∣ (259063 - 259060) ∧
      ∃ (hNotC : ¬ p ∣ 259063) (hNotB : ¬ p ∣ 259060),
        order_of_C_B_inv_mod_p2 259063 259060 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259397 259400 ∧ ¬ p ∣ (259400 - 259397) ∧
      ∃ (hNotC : ¬ p ∣ 259400) (hNotB : ¬ p ∣ 259397),
        order_of_C_B_inv_mod_p2 259400 259397 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259731 259734 ∧ ¬ p ∣ (259734 - 259731) ∧
      ∃ (hNotC : ¬ p ∣ 259734) (hNotB : ¬ p ∣ 259731),
        order_of_C_B_inv_mod_p2 259734 259731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260067 260070 ∧ ¬ p ∣ (260070 - 260067) ∧
      ∃ (hNotC : ¬ p ∣ 260070) (hNotB : ¬ p ∣ 260067),
        order_of_C_B_inv_mod_p2 260070 260067 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260402 260405 ∧ ¬ p ∣ (260405 - 260402) ∧
      ∃ (hNotC : ¬ p ∣ 260405) (hNotB : ¬ p ∣ 260402),
        order_of_C_B_inv_mod_p2 260405 260402 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260739 260742 ∧ ¬ p ∣ (260742 - 260739) ∧
      ∃ (hNotC : ¬ p ∣ 260742) (hNotB : ¬ p ∣ 260739),
        order_of_C_B_inv_mod_p2 260742 260739 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261074 261077 ∧ ¬ p ∣ (261077 - 261074) ∧
      ∃ (hNotC : ¬ p ∣ 261077) (hNotB : ¬ p ∣ 261074),
        order_of_C_B_inv_mod_p2 261077 261074 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261409 261412 ∧ ¬ p ∣ (261412 - 261409) ∧
      ∃ (hNotC : ¬ p ∣ 261412) (hNotB : ¬ p ∣ 261409),
        order_of_C_B_inv_mod_p2 261412 261409 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261745 261748 ∧ ¬ p ∣ (261748 - 261745) ∧
      ∃ (hNotC : ¬ p ∣ 261748) (hNotB : ¬ p ∣ 261745),
        order_of_C_B_inv_mod_p2 261748 261745 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262078 262081 ∧ ¬ p ∣ (262081 - 262078) ∧
      ∃ (hNotC : ¬ p ∣ 262081) (hNotB : ¬ p ∣ 262078),
        order_of_C_B_inv_mod_p2 262081 262078 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262416 262419 ∧ ¬ p ∣ (262419 - 262416) ∧
      ∃ (hNotC : ¬ p ∣ 262419) (hNotB : ¬ p ∣ 262416),
        order_of_C_B_inv_mod_p2 262419 262416 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262752 262755 ∧ ¬ p ∣ (262755 - 262752) ∧
      ∃ (hNotC : ¬ p ∣ 262755) (hNotB : ¬ p ∣ 262752),
        order_of_C_B_inv_mod_p2 262755 262752 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263088 263091 ∧ ¬ p ∣ (263091 - 263088) ∧
      ∃ (hNotC : ¬ p ∣ 263091) (hNotB : ¬ p ∣ 263088),
        order_of_C_B_inv_mod_p2 263091 263088 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263423 263426 ∧ ¬ p ∣ (263426 - 263423) ∧
      ∃ (hNotC : ¬ p ∣ 263426) (hNotB : ¬ p ∣ 263423),
        order_of_C_B_inv_mod_p2 263426 263423 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263758 263761 ∧ ¬ p ∣ (263761 - 263758) ∧
      ∃ (hNotC : ¬ p ∣ 263761) (hNotB : ¬ p ∣ 263758),
        order_of_C_B_inv_mod_p2 263761 263758 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264095 264098 ∧ ¬ p ∣ (264098 - 264095) ∧
      ∃ (hNotC : ¬ p ∣ 264098) (hNotB : ¬ p ∣ 264095),
        order_of_C_B_inv_mod_p2 264098 264095 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264430 264433 ∧ ¬ p ∣ (264433 - 264430) ∧
      ∃ (hNotC : ¬ p ∣ 264433) (hNotB : ¬ p ∣ 264430),
        order_of_C_B_inv_mod_p2 264433 264430 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264765 264768 ∧ ¬ p ∣ (264768 - 264765) ∧
      ∃ (hNotC : ¬ p ∣ 264768) (hNotB : ¬ p ∣ 264765),
        order_of_C_B_inv_mod_p2 264768 264765 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265100 265103 ∧ ¬ p ∣ (265103 - 265100) ∧
      ∃ (hNotC : ¬ p ∣ 265103) (hNotB : ¬ p ∣ 265100),
        order_of_C_B_inv_mod_p2 265103 265100 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265437 265440 ∧ ¬ p ∣ (265440 - 265437) ∧
      ∃ (hNotC : ¬ p ∣ 265440) (hNotB : ¬ p ∣ 265437),
        order_of_C_B_inv_mod_p2 265440 265437 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265774 265777 ∧ ¬ p ∣ (265777 - 265774) ∧
      ∃ (hNotC : ¬ p ∣ 265777) (hNotB : ¬ p ∣ 265774),
        order_of_C_B_inv_mod_p2 265777 265774 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266106 266109 ∧ ¬ p ∣ (266109 - 266106) ∧
      ∃ (hNotC : ¬ p ∣ 266109) (hNotB : ¬ p ∣ 266106),
        order_of_C_B_inv_mod_p2 266109 266106 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266444 266447 ∧ ¬ p ∣ (266447 - 266444) ∧
      ∃ (hNotC : ¬ p ∣ 266447) (hNotB : ¬ p ∣ 266444),
        order_of_C_B_inv_mod_p2 266447 266444 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266776 266779 ∧ ¬ p ∣ (266779 - 266776) ∧
      ∃ (hNotC : ¬ p ∣ 266779) (hNotB : ¬ p ∣ 266776),
        order_of_C_B_inv_mod_p2 266779 266776 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267113 267116 ∧ ¬ p ∣ (267116 - 267113) ∧
      ∃ (hNotC : ¬ p ∣ 267116) (hNotB : ¬ p ∣ 267113),
        order_of_C_B_inv_mod_p2 267116 267113 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267449 267452 ∧ ¬ p ∣ (267452 - 267449) ∧
      ∃ (hNotC : ¬ p ∣ 267452) (hNotB : ¬ p ∣ 267449),
        order_of_C_B_inv_mod_p2 267452 267449 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267784 267787 ∧ ¬ p ∣ (267787 - 267784) ∧
      ∃ (hNotC : ¬ p ∣ 267787) (hNotB : ¬ p ∣ 267784),
        order_of_C_B_inv_mod_p2 267787 267784 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268120 268123 ∧ ¬ p ∣ (268123 - 268120) ∧
      ∃ (hNotC : ¬ p ∣ 268123) (hNotB : ¬ p ∣ 268120),
        order_of_C_B_inv_mod_p2 268123 268120 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268456 268459 ∧ ¬ p ∣ (268459 - 268456) ∧
      ∃ (hNotC : ¬ p ∣ 268459) (hNotB : ¬ p ∣ 268456),
        order_of_C_B_inv_mod_p2 268459 268456 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268792 268795 ∧ ¬ p ∣ (268795 - 268792) ∧
      ∃ (hNotC : ¬ p ∣ 268795) (hNotB : ¬ p ∣ 268792),
        order_of_C_B_inv_mod_p2 268795 268792 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269127 269130 ∧ ¬ p ∣ (269130 - 269127) ∧
      ∃ (hNotC : ¬ p ∣ 269130) (hNotB : ¬ p ∣ 269127),
        order_of_C_B_inv_mod_p2 269130 269127 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269462 269465 ∧ ¬ p ∣ (269465 - 269462) ∧
      ∃ (hNotC : ¬ p ∣ 269465) (hNotB : ¬ p ∣ 269462),
        order_of_C_B_inv_mod_p2 269465 269462 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269798 269801 ∧ ¬ p ∣ (269801 - 269798) ∧
      ∃ (hNotC : ¬ p ∣ 269801) (hNotB : ¬ p ∣ 269798),
        order_of_C_B_inv_mod_p2 269801 269798 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270134 270137 ∧ ¬ p ∣ (270137 - 270134) ∧
      ∃ (hNotC : ¬ p ∣ 270137) (hNotB : ¬ p ∣ 270134),
        order_of_C_B_inv_mod_p2 270137 270134 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270470 270473 ∧ ¬ p ∣ (270473 - 270470) ∧
      ∃ (hNotC : ¬ p ∣ 270473) (hNotB : ¬ p ∣ 270470),
        order_of_C_B_inv_mod_p2 270473 270470 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270805 270808 ∧ ¬ p ∣ (270808 - 270805) ∧
      ∃ (hNotC : ¬ p ∣ 270808) (hNotB : ¬ p ∣ 270805),
        order_of_C_B_inv_mod_p2 270808 270805 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271141 271144 ∧ ¬ p ∣ (271144 - 271141) ∧
      ∃ (hNotC : ¬ p ∣ 271144) (hNotB : ¬ p ∣ 271141),
        order_of_C_B_inv_mod_p2 271144 271141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271476 271479 ∧ ¬ p ∣ (271479 - 271476) ∧
      ∃ (hNotC : ¬ p ∣ 271479) (hNotB : ¬ p ∣ 271476),
        order_of_C_B_inv_mod_p2 271479 271476 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271812 271815 ∧ ¬ p ∣ (271815 - 271812) ∧
      ∃ (hNotC : ¬ p ∣ 271815) (hNotB : ¬ p ∣ 271812),
        order_of_C_B_inv_mod_p2 271815 271812 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272147 272150 ∧ ¬ p ∣ (272150 - 272147) ∧
      ∃ (hNotC : ¬ p ∣ 272150) (hNotB : ¬ p ∣ 272147),
        order_of_C_B_inv_mod_p2 272150 272147 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272483 272486 ∧ ¬ p ∣ (272486 - 272483) ∧
      ∃ (hNotC : ¬ p ∣ 272486) (hNotB : ¬ p ∣ 272483),
        order_of_C_B_inv_mod_p2 272486 272483 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272821 272824 ∧ ¬ p ∣ (272824 - 272821) ∧
      ∃ (hNotC : ¬ p ∣ 272824) (hNotB : ¬ p ∣ 272821),
        order_of_C_B_inv_mod_p2 272824 272821 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273154 273157 ∧ ¬ p ∣ (273157 - 273154) ∧
      ∃ (hNotC : ¬ p ∣ 273157) (hNotB : ¬ p ∣ 273154),
        order_of_C_B_inv_mod_p2 273157 273154 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273490 273493 ∧ ¬ p ∣ (273493 - 273490) ∧
      ∃ (hNotC : ¬ p ∣ 273493) (hNotB : ¬ p ∣ 273490),
        order_of_C_B_inv_mod_p2 273493 273490 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273826 273829 ∧ ¬ p ∣ (273829 - 273826) ∧
      ∃ (hNotC : ¬ p ∣ 273829) (hNotB : ¬ p ∣ 273826),
        order_of_C_B_inv_mod_p2 273829 273826 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274161 274164 ∧ ¬ p ∣ (274164 - 274161) ∧
      ∃ (hNotC : ¬ p ∣ 274164) (hNotB : ¬ p ∣ 274161),
        order_of_C_B_inv_mod_p2 274164 274161 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274497 274500 ∧ ¬ p ∣ (274500 - 274497) ∧
      ∃ (hNotC : ¬ p ∣ 274500) (hNotB : ¬ p ∣ 274497),
        order_of_C_B_inv_mod_p2 274500 274497 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274834 274837 ∧ ¬ p ∣ (274837 - 274834) ∧
      ∃ (hNotC : ¬ p ∣ 274837) (hNotB : ¬ p ∣ 274834),
        order_of_C_B_inv_mod_p2 274837 274834 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275168 275171 ∧ ¬ p ∣ (275171 - 275168) ∧
      ∃ (hNotC : ¬ p ∣ 275171) (hNotB : ¬ p ∣ 275168),
        order_of_C_B_inv_mod_p2 275171 275168 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275503 275506 ∧ ¬ p ∣ (275506 - 275503) ∧
      ∃ (hNotC : ¬ p ∣ 275506) (hNotB : ¬ p ∣ 275503),
        order_of_C_B_inv_mod_p2 275506 275503 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275840 275843 ∧ ¬ p ∣ (275843 - 275840) ∧
      ∃ (hNotC : ¬ p ∣ 275843) (hNotB : ¬ p ∣ 275840),
        order_of_C_B_inv_mod_p2 275843 275840 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276174 276177 ∧ ¬ p ∣ (276177 - 276174) ∧
      ∃ (hNotC : ¬ p ∣ 276177) (hNotB : ¬ p ∣ 276174),
        order_of_C_B_inv_mod_p2 276177 276174 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276510 276513 ∧ ¬ p ∣ (276513 - 276510) ∧
      ∃ (hNotC : ¬ p ∣ 276513) (hNotB : ¬ p ∣ 276510),
        order_of_C_B_inv_mod_p2 276513 276510 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276846 276849 ∧ ¬ p ∣ (276849 - 276846) ∧
      ∃ (hNotC : ¬ p ∣ 276849) (hNotB : ¬ p ∣ 276846),
        order_of_C_B_inv_mod_p2 276849 276846 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277181 277184 ∧ ¬ p ∣ (277184 - 277181) ∧
      ∃ (hNotC : ¬ p ∣ 277184) (hNotB : ¬ p ∣ 277181),
        order_of_C_B_inv_mod_p2 277184 277181 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277518 277521 ∧ ¬ p ∣ (277521 - 277518) ∧
      ∃ (hNotC : ¬ p ∣ 277521) (hNotB : ¬ p ∣ 277518),
        order_of_C_B_inv_mod_p2 277521 277518 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277854 277857 ∧ ¬ p ∣ (277857 - 277854) ∧
      ∃ (hNotC : ¬ p ∣ 277857) (hNotB : ¬ p ∣ 277854),
        order_of_C_B_inv_mod_p2 277857 277854 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278188 278191 ∧ ¬ p ∣ (278191 - 278188) ∧
      ∃ (hNotC : ¬ p ∣ 278191) (hNotB : ¬ p ∣ 278188),
        order_of_C_B_inv_mod_p2 278191 278188 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278524 278527 ∧ ¬ p ∣ (278527 - 278524) ∧
      ∃ (hNotC : ¬ p ∣ 278527) (hNotB : ¬ p ∣ 278524),
        order_of_C_B_inv_mod_p2 278527 278524 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278858 278861 ∧ ¬ p ∣ (278861 - 278858) ∧
      ∃ (hNotC : ¬ p ∣ 278861) (hNotB : ¬ p ∣ 278858),
        order_of_C_B_inv_mod_p2 278861 278858 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279195 279198 ∧ ¬ p ∣ (279198 - 279195) ∧
      ∃ (hNotC : ¬ p ∣ 279198) (hNotB : ¬ p ∣ 279195),
        order_of_C_B_inv_mod_p2 279198 279195 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279530 279533 ∧ ¬ p ∣ (279533 - 279530) ∧
      ∃ (hNotC : ¬ p ∣ 279533) (hNotB : ¬ p ∣ 279530),
        order_of_C_B_inv_mod_p2 279533 279530 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279865 279868 ∧ ¬ p ∣ (279868 - 279865) ∧
      ∃ (hNotC : ¬ p ∣ 279868) (hNotB : ¬ p ∣ 279865),
        order_of_C_B_inv_mod_p2 279868 279865 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280202 280205 ∧ ¬ p ∣ (280205 - 280202) ∧
      ∃ (hNotC : ¬ p ∣ 280205) (hNotB : ¬ p ∣ 280202),
        order_of_C_B_inv_mod_p2 280205 280202 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280538 280541 ∧ ¬ p ∣ (280541 - 280538) ∧
      ∃ (hNotC : ¬ p ∣ 280541) (hNotB : ¬ p ∣ 280538),
        order_of_C_B_inv_mod_p2 280541 280538 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280873 280876 ∧ ¬ p ∣ (280876 - 280873) ∧
      ∃ (hNotC : ¬ p ∣ 280876) (hNotB : ¬ p ∣ 280873),
        order_of_C_B_inv_mod_p2 280876 280873 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281208 281211 ∧ ¬ p ∣ (281211 - 281208) ∧
      ∃ (hNotC : ¬ p ∣ 281211) (hNotB : ¬ p ∣ 281208),
        order_of_C_B_inv_mod_p2 281211 281208 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281542 281545 ∧ ¬ p ∣ (281545 - 281542) ∧
      ∃ (hNotC : ¬ p ∣ 281545) (hNotB : ¬ p ∣ 281542),
        order_of_C_B_inv_mod_p2 281545 281542 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281878 281881 ∧ ¬ p ∣ (281881 - 281878) ∧
      ∃ (hNotC : ¬ p ∣ 281881) (hNotB : ¬ p ∣ 281878),
        order_of_C_B_inv_mod_p2 281881 281878 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282213 282216 ∧ ¬ p ∣ (282216 - 282213) ∧
      ∃ (hNotC : ¬ p ∣ 282216) (hNotB : ¬ p ∣ 282213),
        order_of_C_B_inv_mod_p2 282216 282213 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282549 282552 ∧ ¬ p ∣ (282552 - 282549) ∧
      ∃ (hNotC : ¬ p ∣ 282552) (hNotB : ¬ p ∣ 282549),
        order_of_C_B_inv_mod_p2 282552 282549 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282884 282887 ∧ ¬ p ∣ (282887 - 282884) ∧
      ∃ (hNotC : ¬ p ∣ 282887) (hNotB : ¬ p ∣ 282884),
        order_of_C_B_inv_mod_p2 282887 282884 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283223 283226 ∧ ¬ p ∣ (283226 - 283223) ∧
      ∃ (hNotC : ¬ p ∣ 283226) (hNotB : ¬ p ∣ 283223),
        order_of_C_B_inv_mod_p2 283226 283223 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283557 283560 ∧ ¬ p ∣ (283560 - 283557) ∧
      ∃ (hNotC : ¬ p ∣ 283560) (hNotB : ¬ p ∣ 283557),
        order_of_C_B_inv_mod_p2 283560 283557 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283889 283892 ∧ ¬ p ∣ (283892 - 283889) ∧
      ∃ (hNotC : ¬ p ∣ 283892) (hNotB : ¬ p ∣ 283889),
        order_of_C_B_inv_mod_p2 283892 283889 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284229 284232 ∧ ¬ p ∣ (284232 - 284229) ∧
      ∃ (hNotC : ¬ p ∣ 284232) (hNotB : ¬ p ∣ 284229),
        order_of_C_B_inv_mod_p2 284232 284229 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284563 284566 ∧ ¬ p ∣ (284566 - 284563) ∧
      ∃ (hNotC : ¬ p ∣ 284566) (hNotB : ¬ p ∣ 284563),
        order_of_C_B_inv_mod_p2 284566 284563 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284897 284900 ∧ ¬ p ∣ (284900 - 284897) ∧
      ∃ (hNotC : ¬ p ∣ 284900) (hNotB : ¬ p ∣ 284897),
        order_of_C_B_inv_mod_p2 284900 284897 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285237 285240 ∧ ¬ p ∣ (285240 - 285237) ∧
      ∃ (hNotC : ¬ p ∣ 285240) (hNotB : ¬ p ∣ 285237),
        order_of_C_B_inv_mod_p2 285240 285237 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285570 285573 ∧ ¬ p ∣ (285573 - 285570) ∧
      ∃ (hNotC : ¬ p ∣ 285573) (hNotB : ¬ p ∣ 285570),
        order_of_C_B_inv_mod_p2 285573 285570 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285907 285910 ∧ ¬ p ∣ (285910 - 285907) ∧
      ∃ (hNotC : ¬ p ∣ 285910) (hNotB : ¬ p ∣ 285907),
        order_of_C_B_inv_mod_p2 285910 285907 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286240 286243 ∧ ¬ p ∣ (286243 - 286240) ∧
      ∃ (hNotC : ¬ p ∣ 286243) (hNotB : ¬ p ∣ 286240),
        order_of_C_B_inv_mod_p2 286243 286240 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286577 286580 ∧ ¬ p ∣ (286580 - 286577) ∧
      ∃ (hNotC : ¬ p ∣ 286580) (hNotB : ¬ p ∣ 286577),
        order_of_C_B_inv_mod_p2 286580 286577 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286912 286915 ∧ ¬ p ∣ (286915 - 286912) ∧
      ∃ (hNotC : ¬ p ∣ 286915) (hNotB : ¬ p ∣ 286912),
        order_of_C_B_inv_mod_p2 286915 286912 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287248 287251 ∧ ¬ p ∣ (287251 - 287248) ∧
      ∃ (hNotC : ¬ p ∣ 287251) (hNotB : ¬ p ∣ 287248),
        order_of_C_B_inv_mod_p2 287251 287248 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287584 287587 ∧ ¬ p ∣ (287587 - 287584) ∧
      ∃ (hNotC : ¬ p ∣ 287587) (hNotB : ¬ p ∣ 287584),
        order_of_C_B_inv_mod_p2 287587 287584 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287918 287921 ∧ ¬ p ∣ (287921 - 287918) ∧
      ∃ (hNotC : ¬ p ∣ 287921) (hNotB : ¬ p ∣ 287918),
        order_of_C_B_inv_mod_p2 287921 287918 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288255 288258 ∧ ¬ p ∣ (288258 - 288255) ∧
      ∃ (hNotC : ¬ p ∣ 288258) (hNotB : ¬ p ∣ 288255),
        order_of_C_B_inv_mod_p2 288258 288255 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288590 288593 ∧ ¬ p ∣ (288593 - 288590) ∧
      ∃ (hNotC : ¬ p ∣ 288593) (hNotB : ¬ p ∣ 288590),
        order_of_C_B_inv_mod_p2 288593 288590 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288926 288929 ∧ ¬ p ∣ (288929 - 288926) ∧
      ∃ (hNotC : ¬ p ∣ 288929) (hNotB : ¬ p ∣ 288926),
        order_of_C_B_inv_mod_p2 288929 288926 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289261 289264 ∧ ¬ p ∣ (289264 - 289261) ∧
      ∃ (hNotC : ¬ p ∣ 289264) (hNotB : ¬ p ∣ 289261),
        order_of_C_B_inv_mod_p2 289264 289261 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289597 289600 ∧ ¬ p ∣ (289600 - 289597) ∧
      ∃ (hNotC : ¬ p ∣ 289600) (hNotB : ¬ p ∣ 289597),
        order_of_C_B_inv_mod_p2 289600 289597 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289928 289931 ∧ ¬ p ∣ (289931 - 289928) ∧
      ∃ (hNotC : ¬ p ∣ 289931) (hNotB : ¬ p ∣ 289928),
        order_of_C_B_inv_mod_p2 289931 289928 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290268 290271 ∧ ¬ p ∣ (290271 - 290268) ∧
      ∃ (hNotC : ¬ p ∣ 290271) (hNotB : ¬ p ∣ 290268),
        order_of_C_B_inv_mod_p2 290271 290268 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290604 290607 ∧ ¬ p ∣ (290607 - 290604) ∧
      ∃ (hNotC : ¬ p ∣ 290607) (hNotB : ¬ p ∣ 290604),
        order_of_C_B_inv_mod_p2 290607 290604 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290939 290942 ∧ ¬ p ∣ (290942 - 290939) ∧
      ∃ (hNotC : ¬ p ∣ 290942) (hNotB : ¬ p ∣ 290939),
        order_of_C_B_inv_mod_p2 290942 290939 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291275 291278 ∧ ¬ p ∣ (291278 - 291275) ∧
      ∃ (hNotC : ¬ p ∣ 291278) (hNotB : ¬ p ∣ 291275),
        order_of_C_B_inv_mod_p2 291278 291275 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291610 291613 ∧ ¬ p ∣ (291613 - 291610) ∧
      ∃ (hNotC : ¬ p ∣ 291613) (hNotB : ¬ p ∣ 291610),
        order_of_C_B_inv_mod_p2 291613 291610 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291947 291950 ∧ ¬ p ∣ (291950 - 291947) ∧
      ∃ (hNotC : ¬ p ∣ 291950) (hNotB : ¬ p ∣ 291947),
        order_of_C_B_inv_mod_p2 291950 291947 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292281 292284 ∧ ¬ p ∣ (292284 - 292281) ∧
      ∃ (hNotC : ¬ p ∣ 292284) (hNotB : ¬ p ∣ 292281),
        order_of_C_B_inv_mod_p2 292284 292281 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292617 292620 ∧ ¬ p ∣ (292620 - 292617) ∧
      ∃ (hNotC : ¬ p ∣ 292620) (hNotB : ¬ p ∣ 292617),
        order_of_C_B_inv_mod_p2 292620 292617 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292954 292957 ∧ ¬ p ∣ (292957 - 292954) ∧
      ∃ (hNotC : ¬ p ∣ 292957) (hNotB : ¬ p ∣ 292954),
        order_of_C_B_inv_mod_p2 292957 292954 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293289 293292 ∧ ¬ p ∣ (293292 - 293289) ∧
      ∃ (hNotC : ¬ p ∣ 293292) (hNotB : ¬ p ∣ 293289),
        order_of_C_B_inv_mod_p2 293292 293289 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293624 293627 ∧ ¬ p ∣ (293627 - 293624) ∧
      ∃ (hNotC : ¬ p ∣ 293627) (hNotB : ¬ p ∣ 293624),
        order_of_C_B_inv_mod_p2 293627 293624 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293956 293959 ∧ ¬ p ∣ (293959 - 293956) ∧
      ∃ (hNotC : ¬ p ∣ 293959) (hNotB : ¬ p ∣ 293956),
        order_of_C_B_inv_mod_p2 293959 293956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294296 294299 ∧ ¬ p ∣ (294299 - 294296) ∧
      ∃ (hNotC : ¬ p ∣ 294299) (hNotB : ¬ p ∣ 294296),
        order_of_C_B_inv_mod_p2 294299 294296 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294630 294633 ∧ ¬ p ∣ (294633 - 294630) ∧
      ∃ (hNotC : ¬ p ∣ 294633) (hNotB : ¬ p ∣ 294630),
        order_of_C_B_inv_mod_p2 294633 294630 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294966 294969 ∧ ¬ p ∣ (294969 - 294966) ∧
      ∃ (hNotC : ¬ p ∣ 294969) (hNotB : ¬ p ∣ 294966),
        order_of_C_B_inv_mod_p2 294969 294966 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295303 295306 ∧ ¬ p ∣ (295306 - 295303) ∧
      ∃ (hNotC : ¬ p ∣ 295306) (hNotB : ¬ p ∣ 295303),
        order_of_C_B_inv_mod_p2 295306 295303 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295638 295641 ∧ ¬ p ∣ (295641 - 295638) ∧
      ∃ (hNotC : ¬ p ∣ 295641) (hNotB : ¬ p ∣ 295638),
        order_of_C_B_inv_mod_p2 295641 295638 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295974 295977 ∧ ¬ p ∣ (295977 - 295974) ∧
      ∃ (hNotC : ¬ p ∣ 295977) (hNotB : ¬ p ∣ 295974),
        order_of_C_B_inv_mod_p2 295977 295974 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296308 296311 ∧ ¬ p ∣ (296311 - 296308) ∧
      ∃ (hNotC : ¬ p ∣ 296311) (hNotB : ¬ p ∣ 296308),
        order_of_C_B_inv_mod_p2 296311 296308 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296644 296647 ∧ ¬ p ∣ (296647 - 296644) ∧
      ∃ (hNotC : ¬ p ∣ 296647) (hNotB : ¬ p ∣ 296644),
        order_of_C_B_inv_mod_p2 296647 296644 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296979 296982 ∧ ¬ p ∣ (296982 - 296979) ∧
      ∃ (hNotC : ¬ p ∣ 296982) (hNotB : ¬ p ∣ 296979),
        order_of_C_B_inv_mod_p2 296982 296979 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297314 297317 ∧ ¬ p ∣ (297317 - 297314) ∧
      ∃ (hNotC : ¬ p ∣ 297317) (hNotB : ¬ p ∣ 297314),
        order_of_C_B_inv_mod_p2 297317 297314 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297651 297654 ∧ ¬ p ∣ (297654 - 297651) ∧
      ∃ (hNotC : ¬ p ∣ 297654) (hNotB : ¬ p ∣ 297651),
        order_of_C_B_inv_mod_p2 297654 297651 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297984 297987 ∧ ¬ p ∣ (297987 - 297984) ∧
      ∃ (hNotC : ¬ p ∣ 297987) (hNotB : ¬ p ∣ 297984),
        order_of_C_B_inv_mod_p2 297987 297984 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298322 298325 ∧ ¬ p ∣ (298325 - 298322) ∧
      ∃ (hNotC : ¬ p ∣ 298325) (hNotB : ¬ p ∣ 298322),
        order_of_C_B_inv_mod_p2 298325 298322 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298659 298662 ∧ ¬ p ∣ (298662 - 298659) ∧
      ∃ (hNotC : ¬ p ∣ 298662) (hNotB : ¬ p ∣ 298659),
        order_of_C_B_inv_mod_p2 298662 298659 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298993 298996 ∧ ¬ p ∣ (298996 - 298993) ∧
      ∃ (hNotC : ¬ p ∣ 298996) (hNotB : ¬ p ∣ 298993),
        order_of_C_B_inv_mod_p2 298996 298993 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299328 299331 ∧ ¬ p ∣ (299331 - 299328) ∧
      ∃ (hNotC : ¬ p ∣ 299331) (hNotB : ¬ p ∣ 299328),
        order_of_C_B_inv_mod_p2 299331 299328 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299665 299668 ∧ ¬ p ∣ (299668 - 299665) ∧
      ∃ (hNotC : ¬ p ∣ 299668) (hNotB : ¬ p ∣ 299665),
        order_of_C_B_inv_mod_p2 299668 299665 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299999 300002 ∧ ¬ p ∣ (300002 - 299999) ∧
      ∃ (hNotC : ¬ p ∣ 300002) (hNotB : ¬ p ∣ 299999),
        order_of_C_B_inv_mod_p2 300002 299999 p hp hNotC hNotB ≠ 13) :=
  ⟨row_200001_200004.2.1, row_200337_200340.2.1, row_200672_200675.2.1, row_201008_201011.2.1, row_201344_201347.2.1, row_201678_201681.2.1, row_202015_202018.2.1, row_202349_202352.2.1, row_202685_202688.2.1, row_203022_203025.2.1, row_203355_203358.2.1, row_203692_203695.2.1, row_204027_204030.2.1, row_204364_204367.2.1, row_204699_204702.2.1, row_205036_205039.2.1, row_205371_205374.2.1, row_205706_205709.2.1, row_206043_206046.2.1, row_206375_206378.2.1, row_206713_206716.2.1, row_207047_207050.2.1, row_207382_207385.2.1, row_207720_207723.2.1, row_208054_208057.2.1, row_208389_208392.2.1, row_208725_208728.2.1, row_209064_209067.2.1, row_209396_209399.2.1, row_209731_209734.2.1, row_210066_210069.2.1, row_210403_210406.2.1, row_210738_210741.2.1, row_211073_211076.2.1, row_211410_211413.2.1, row_211745_211748.2.1, row_212083_212086.2.1, row_212416_212419.2.1, row_212752_212755.2.1, row_213088_213091.2.1, row_213423_213426.2.1, row_213759_213762.2.1, row_214095_214098.2.1, row_214430_214433.2.1, row_214766_214769.2.1, row_215101_215104.2.1, row_215437_215440.2.1, row_215772_215775.2.1, row_216108_216111.2.1, row_216443_216446.2.1, row_216780_216783.2.1, row_217114_217117.2.1, row_217450_217453.2.1, row_217786_217789.2.1, row_218123_218126.2.1, row_218457_218460.2.1, row_218792_218795.2.1, row_219128_219131.2.1, row_219463_219466.2.1, row_219801_219804.2.1, row_220135_220138.2.1, row_220471_220474.2.1, row_220805_220808.2.1, row_221140_221143.2.1, row_221478_221481.2.1, row_221811_221814.2.1, row_222150_222153.2.1, row_222482_222485.2.1, row_222819_222822.2.1, row_223154_223157.2.1, row_223492_223495.2.1, row_223825_223828.2.1, row_224162_224165.2.1, row_224497_224500.2.1, row_224832_224835.2.1, row_225168_225171.2.1, row_225505_225508.2.1, row_225839_225842.2.1, row_226174_226177.2.1, row_226511_226514.2.1, row_226846_226849.2.1, row_227183_227186.2.1, row_227516_227519.2.1, row_227853_227856.2.1, row_228190_228193.2.1, row_228524_228527.2.1, row_228859_228862.2.1, row_229196_229199.2.1, row_229530_229533.2.1, row_229866_229869.2.1, row_230203_230206.2.1, row_230537_230540.2.1, row_230873_230876.2.1, row_231208_231211.2.1, row_231544_231547.2.1, row_231879_231882.2.1, row_232215_232218.2.1, row_232551_232554.2.1, row_232886_232889.2.1, row_233222_233225.2.1, row_233558_233561.2.1, row_233893_233896.2.1, row_234226_234229.2.1, row_234564_234567.2.1, row_234900_234903.2.1, row_235235_235238.2.1, row_235572_235575.2.1, row_235906_235909.2.1, row_236243_236246.2.1, row_236576_236579.2.1, row_236914_236917.2.1, row_237248_237251.2.1, row_237583_237586.2.1, row_237920_237923.2.1, row_238253_238256.2.1, row_238592_238595.2.1, row_238928_238931.2.1, row_239261_239264.2.1, row_239597_239600.2.1, row_239934_239937.2.1, row_240267_240270.2.1, row_240604_240607.2.1, row_240942_240945.2.1, row_241274_241277.2.1, row_241611_241614.2.1, row_241945_241948.2.1, row_242282_242285.2.1, row_242618_242621.2.1, row_242956_242959.2.1, row_243288_243291.2.1, row_243625_243628.2.1, row_243960_243963.2.1, row_244295_244298.2.1, row_244631_244634.2.1, row_244964_244967.2.1, row_245302_245305.2.1, row_245639_245642.2.1, row_245972_245975.2.1, row_246309_246312.2.1, row_246646_246649.2.1, row_246982_246985.2.1, row_247316_247319.2.1, row_247652_247655.2.1, row_247987_247990.2.1, row_248323_248326.2.1, row_248660_248663.2.1, row_248993_248996.2.1, row_249330_249333.2.1, row_249663_249666.2.1, row_250002_250005.2.1, row_250336_250339.2.1, row_250671_250674.2.1, row_251007_251010.2.1, row_251343_251346.2.1, row_251678_251681.2.1, row_252014_252017.2.1, row_252349_252352.2.1, row_252684_252687.2.1, row_253020_253023.2.1, row_253357_253360.2.1, row_253692_253695.2.1, row_254027_254030.2.1, row_254363_254366.2.1, row_254697_254700.2.1, row_255035_255038.2.1, row_255370_255373.2.1, row_255706_255709.2.1, row_256042_256045.2.1, row_256376_256379.2.1, row_256711_256714.2.1, row_257049_257052.2.1, row_257381_257384.2.1, row_257718_257721.2.1, row_258055_258058.2.1, row_258390_258393.2.1, row_258725_258728.2.1, row_259060_259063.2.1, row_259397_259400.2.1, row_259731_259734.2.1, row_260067_260070.2.1, row_260402_260405.2.1, row_260739_260742.2.1, row_261074_261077.2.1, row_261409_261412.2.1, row_261745_261748.2.1, row_262078_262081.2.1, row_262416_262419.2.1, row_262752_262755.2.1, row_263088_263091.2.1, row_263423_263426.2.1, row_263758_263761.2.1, row_264095_264098.2.1, row_264430_264433.2.1, row_264765_264768.2.1, row_265100_265103.2.1, row_265437_265440.2.1, row_265774_265777.2.1, row_266106_266109.2.1, row_266444_266447.2.1, row_266776_266779.2.1, row_267113_267116.2.1, row_267449_267452.2.1, row_267784_267787.2.1, row_268120_268123.2.1, row_268456_268459.2.1, row_268792_268795.2.1, row_269127_269130.2.1, row_269462_269465.2.1, row_269798_269801.2.1, row_270134_270137.2.1, row_270470_270473.2.1, row_270805_270808.2.1, row_271141_271144.2.1, row_271476_271479.2.1, row_271812_271815.2.1, row_272147_272150.2.1, row_272483_272486.2.1, row_272821_272824.2.1, row_273154_273157.2.1, row_273490_273493.2.1, row_273826_273829.2.1, row_274161_274164.2.1, row_274497_274500.2.1, row_274834_274837.2.1, row_275168_275171.2.1, row_275503_275506.2.1, row_275840_275843.2.1, row_276174_276177.2.1, row_276510_276513.2.1, row_276846_276849.2.1, row_277181_277184.2.1, row_277518_277521.2.1, row_277854_277857.2.1, row_278188_278191.2.1, row_278524_278527.2.1, row_278858_278861.2.1, row_279195_279198.2.1, row_279530_279533.2.1, row_279865_279868.2.1, row_280202_280205.2.1, row_280538_280541.2.1, row_280873_280876.2.1, row_281208_281211.2.1, row_281542_281545.2.1, row_281878_281881.2.1, row_282213_282216.2.1, row_282549_282552.2.1, row_282884_282887.2.1, row_283223_283226.2.1, row_283557_283560.2.1, row_283889_283892.2.1, row_284229_284232.2.1, row_284563_284566.2.1, row_284897_284900.2.1, row_285237_285240.2.1, row_285570_285573.2.1, row_285907_285910.2.1, row_286240_286243.2.1, row_286577_286580.2.1, row_286912_286915.2.1, row_287248_287251.2.1, row_287584_287587.2.1, row_287918_287921.2.1, row_288255_288258.2.1, row_288590_288593.2.1, row_288926_288929.2.1, row_289261_289264.2.1, row_289597_289600.2.1, row_289928_289931.2.1, row_290268_290271.2.1, row_290604_290607.2.1, row_290939_290942.2.1, row_291275_291278.2.1, row_291610_291613.2.1, row_291947_291950.2.1, row_292281_292284.2.1, row_292617_292620.2.1, row_292954_292957.2.1, row_293289_293292.2.1, row_293624_293627.2.1, row_293956_293959.2.1, row_294296_294299.2.1, row_294630_294633.2.1, row_294966_294969.2.1, row_295303_295306.2.1, row_295638_295641.2.1, row_295974_295977.2.1, row_296308_296311.2.1, row_296644_296647.2.1, row_296979_296982.2.1, row_297314_297317.2.1, row_297651_297654.2.1, row_297984_297987.2.1, row_298322_298325.2.1, row_298659_298662.2.1, row_298993_298996.2.1, row_299328_299331.2.1, row_299665_299668.2.1, row_299999_300002.2.1⟩
theorem S_not_fourth_200000_lt_B_le_300000_from_exp_one_table_rows :
    S_not_fourth 200001 200004 ∧
    S_not_fourth 200337 200340 ∧
    S_not_fourth 200672 200675 ∧
    S_not_fourth 201008 201011 ∧
    S_not_fourth 201344 201347 ∧
    S_not_fourth 201678 201681 ∧
    S_not_fourth 202015 202018 ∧
    S_not_fourth 202349 202352 ∧
    S_not_fourth 202685 202688 ∧
    S_not_fourth 203022 203025 ∧
    S_not_fourth 203355 203358 ∧
    S_not_fourth 203692 203695 ∧
    S_not_fourth 204027 204030 ∧
    S_not_fourth 204364 204367 ∧
    S_not_fourth 204699 204702 ∧
    S_not_fourth 205036 205039 ∧
    S_not_fourth 205371 205374 ∧
    S_not_fourth 205706 205709 ∧
    S_not_fourth 206043 206046 ∧
    S_not_fourth 206375 206378 ∧
    S_not_fourth 206713 206716 ∧
    S_not_fourth 207047 207050 ∧
    S_not_fourth 207382 207385 ∧
    S_not_fourth 207720 207723 ∧
    S_not_fourth 208054 208057 ∧
    S_not_fourth 208389 208392 ∧
    S_not_fourth 208725 208728 ∧
    S_not_fourth 209064 209067 ∧
    S_not_fourth 209396 209399 ∧
    S_not_fourth 209731 209734 ∧
    S_not_fourth 210066 210069 ∧
    S_not_fourth 210403 210406 ∧
    S_not_fourth 210738 210741 ∧
    S_not_fourth 211073 211076 ∧
    S_not_fourth 211410 211413 ∧
    S_not_fourth 211745 211748 ∧
    S_not_fourth 212083 212086 ∧
    S_not_fourth 212416 212419 ∧
    S_not_fourth 212752 212755 ∧
    S_not_fourth 213088 213091 ∧
    S_not_fourth 213423 213426 ∧
    S_not_fourth 213759 213762 ∧
    S_not_fourth 214095 214098 ∧
    S_not_fourth 214430 214433 ∧
    S_not_fourth 214766 214769 ∧
    S_not_fourth 215101 215104 ∧
    S_not_fourth 215437 215440 ∧
    S_not_fourth 215772 215775 ∧
    S_not_fourth 216108 216111 ∧
    S_not_fourth 216443 216446 ∧
    S_not_fourth 216780 216783 ∧
    S_not_fourth 217114 217117 ∧
    S_not_fourth 217450 217453 ∧
    S_not_fourth 217786 217789 ∧
    S_not_fourth 218123 218126 ∧
    S_not_fourth 218457 218460 ∧
    S_not_fourth 218792 218795 ∧
    S_not_fourth 219128 219131 ∧
    S_not_fourth 219463 219466 ∧
    S_not_fourth 219801 219804 ∧
    S_not_fourth 220135 220138 ∧
    S_not_fourth 220471 220474 ∧
    S_not_fourth 220805 220808 ∧
    S_not_fourth 221140 221143 ∧
    S_not_fourth 221478 221481 ∧
    S_not_fourth 221811 221814 ∧
    S_not_fourth 222150 222153 ∧
    S_not_fourth 222482 222485 ∧
    S_not_fourth 222819 222822 ∧
    S_not_fourth 223154 223157 ∧
    S_not_fourth 223492 223495 ∧
    S_not_fourth 223825 223828 ∧
    S_not_fourth 224162 224165 ∧
    S_not_fourth 224497 224500 ∧
    S_not_fourth 224832 224835 ∧
    S_not_fourth 225168 225171 ∧
    S_not_fourth 225505 225508 ∧
    S_not_fourth 225839 225842 ∧
    S_not_fourth 226174 226177 ∧
    S_not_fourth 226511 226514 ∧
    S_not_fourth 226846 226849 ∧
    S_not_fourth 227183 227186 ∧
    S_not_fourth 227516 227519 ∧
    S_not_fourth 227853 227856 ∧
    S_not_fourth 228190 228193 ∧
    S_not_fourth 228524 228527 ∧
    S_not_fourth 228859 228862 ∧
    S_not_fourth 229196 229199 ∧
    S_not_fourth 229530 229533 ∧
    S_not_fourth 229866 229869 ∧
    S_not_fourth 230203 230206 ∧
    S_not_fourth 230537 230540 ∧
    S_not_fourth 230873 230876 ∧
    S_not_fourth 231208 231211 ∧
    S_not_fourth 231544 231547 ∧
    S_not_fourth 231879 231882 ∧
    S_not_fourth 232215 232218 ∧
    S_not_fourth 232551 232554 ∧
    S_not_fourth 232886 232889 ∧
    S_not_fourth 233222 233225 ∧
    S_not_fourth 233558 233561 ∧
    S_not_fourth 233893 233896 ∧
    S_not_fourth 234226 234229 ∧
    S_not_fourth 234564 234567 ∧
    S_not_fourth 234900 234903 ∧
    S_not_fourth 235235 235238 ∧
    S_not_fourth 235572 235575 ∧
    S_not_fourth 235906 235909 ∧
    S_not_fourth 236243 236246 ∧
    S_not_fourth 236576 236579 ∧
    S_not_fourth 236914 236917 ∧
    S_not_fourth 237248 237251 ∧
    S_not_fourth 237583 237586 ∧
    S_not_fourth 237920 237923 ∧
    S_not_fourth 238253 238256 ∧
    S_not_fourth 238592 238595 ∧
    S_not_fourth 238928 238931 ∧
    S_not_fourth 239261 239264 ∧
    S_not_fourth 239597 239600 ∧
    S_not_fourth 239934 239937 ∧
    S_not_fourth 240267 240270 ∧
    S_not_fourth 240604 240607 ∧
    S_not_fourth 240942 240945 ∧
    S_not_fourth 241274 241277 ∧
    S_not_fourth 241611 241614 ∧
    S_not_fourth 241945 241948 ∧
    S_not_fourth 242282 242285 ∧
    S_not_fourth 242618 242621 ∧
    S_not_fourth 242956 242959 ∧
    S_not_fourth 243288 243291 ∧
    S_not_fourth 243625 243628 ∧
    S_not_fourth 243960 243963 ∧
    S_not_fourth 244295 244298 ∧
    S_not_fourth 244631 244634 ∧
    S_not_fourth 244964 244967 ∧
    S_not_fourth 245302 245305 ∧
    S_not_fourth 245639 245642 ∧
    S_not_fourth 245972 245975 ∧
    S_not_fourth 246309 246312 ∧
    S_not_fourth 246646 246649 ∧
    S_not_fourth 246982 246985 ∧
    S_not_fourth 247316 247319 ∧
    S_not_fourth 247652 247655 ∧
    S_not_fourth 247987 247990 ∧
    S_not_fourth 248323 248326 ∧
    S_not_fourth 248660 248663 ∧
    S_not_fourth 248993 248996 ∧
    S_not_fourth 249330 249333 ∧
    S_not_fourth 249663 249666 ∧
    S_not_fourth 250002 250005 ∧
    S_not_fourth 250336 250339 ∧
    S_not_fourth 250671 250674 ∧
    S_not_fourth 251007 251010 ∧
    S_not_fourth 251343 251346 ∧
    S_not_fourth 251678 251681 ∧
    S_not_fourth 252014 252017 ∧
    S_not_fourth 252349 252352 ∧
    S_not_fourth 252684 252687 ∧
    S_not_fourth 253020 253023 ∧
    S_not_fourth 253357 253360 ∧
    S_not_fourth 253692 253695 ∧
    S_not_fourth 254027 254030 ∧
    S_not_fourth 254363 254366 ∧
    S_not_fourth 254697 254700 ∧
    S_not_fourth 255035 255038 ∧
    S_not_fourth 255370 255373 ∧
    S_not_fourth 255706 255709 ∧
    S_not_fourth 256042 256045 ∧
    S_not_fourth 256376 256379 ∧
    S_not_fourth 256711 256714 ∧
    S_not_fourth 257049 257052 ∧
    S_not_fourth 257381 257384 ∧
    S_not_fourth 257718 257721 ∧
    S_not_fourth 258055 258058 ∧
    S_not_fourth 258390 258393 ∧
    S_not_fourth 258725 258728 ∧
    S_not_fourth 259060 259063 ∧
    S_not_fourth 259397 259400 ∧
    S_not_fourth 259731 259734 ∧
    S_not_fourth 260067 260070 ∧
    S_not_fourth 260402 260405 ∧
    S_not_fourth 260739 260742 ∧
    S_not_fourth 261074 261077 ∧
    S_not_fourth 261409 261412 ∧
    S_not_fourth 261745 261748 ∧
    S_not_fourth 262078 262081 ∧
    S_not_fourth 262416 262419 ∧
    S_not_fourth 262752 262755 ∧
    S_not_fourth 263088 263091 ∧
    S_not_fourth 263423 263426 ∧
    S_not_fourth 263758 263761 ∧
    S_not_fourth 264095 264098 ∧
    S_not_fourth 264430 264433 ∧
    S_not_fourth 264765 264768 ∧
    S_not_fourth 265100 265103 ∧
    S_not_fourth 265437 265440 ∧
    S_not_fourth 265774 265777 ∧
    S_not_fourth 266106 266109 ∧
    S_not_fourth 266444 266447 ∧
    S_not_fourth 266776 266779 ∧
    S_not_fourth 267113 267116 ∧
    S_not_fourth 267449 267452 ∧
    S_not_fourth 267784 267787 ∧
    S_not_fourth 268120 268123 ∧
    S_not_fourth 268456 268459 ∧
    S_not_fourth 268792 268795 ∧
    S_not_fourth 269127 269130 ∧
    S_not_fourth 269462 269465 ∧
    S_not_fourth 269798 269801 ∧
    S_not_fourth 270134 270137 ∧
    S_not_fourth 270470 270473 ∧
    S_not_fourth 270805 270808 ∧
    S_not_fourth 271141 271144 ∧
    S_not_fourth 271476 271479 ∧
    S_not_fourth 271812 271815 ∧
    S_not_fourth 272147 272150 ∧
    S_not_fourth 272483 272486 ∧
    S_not_fourth 272821 272824 ∧
    S_not_fourth 273154 273157 ∧
    S_not_fourth 273490 273493 ∧
    S_not_fourth 273826 273829 ∧
    S_not_fourth 274161 274164 ∧
    S_not_fourth 274497 274500 ∧
    S_not_fourth 274834 274837 ∧
    S_not_fourth 275168 275171 ∧
    S_not_fourth 275503 275506 ∧
    S_not_fourth 275840 275843 ∧
    S_not_fourth 276174 276177 ∧
    S_not_fourth 276510 276513 ∧
    S_not_fourth 276846 276849 ∧
    S_not_fourth 277181 277184 ∧
    S_not_fourth 277518 277521 ∧
    S_not_fourth 277854 277857 ∧
    S_not_fourth 278188 278191 ∧
    S_not_fourth 278524 278527 ∧
    S_not_fourth 278858 278861 ∧
    S_not_fourth 279195 279198 ∧
    S_not_fourth 279530 279533 ∧
    S_not_fourth 279865 279868 ∧
    S_not_fourth 280202 280205 ∧
    S_not_fourth 280538 280541 ∧
    S_not_fourth 280873 280876 ∧
    S_not_fourth 281208 281211 ∧
    S_not_fourth 281542 281545 ∧
    S_not_fourth 281878 281881 ∧
    S_not_fourth 282213 282216 ∧
    S_not_fourth 282549 282552 ∧
    S_not_fourth 282884 282887 ∧
    S_not_fourth 283223 283226 ∧
    S_not_fourth 283557 283560 ∧
    S_not_fourth 283889 283892 ∧
    S_not_fourth 284229 284232 ∧
    S_not_fourth 284563 284566 ∧
    S_not_fourth 284897 284900 ∧
    S_not_fourth 285237 285240 ∧
    S_not_fourth 285570 285573 ∧
    S_not_fourth 285907 285910 ∧
    S_not_fourth 286240 286243 ∧
    S_not_fourth 286577 286580 ∧
    S_not_fourth 286912 286915 ∧
    S_not_fourth 287248 287251 ∧
    S_not_fourth 287584 287587 ∧
    S_not_fourth 287918 287921 ∧
    S_not_fourth 288255 288258 ∧
    S_not_fourth 288590 288593 ∧
    S_not_fourth 288926 288929 ∧
    S_not_fourth 289261 289264 ∧
    S_not_fourth 289597 289600 ∧
    S_not_fourth 289928 289931 ∧
    S_not_fourth 290268 290271 ∧
    S_not_fourth 290604 290607 ∧
    S_not_fourth 290939 290942 ∧
    S_not_fourth 291275 291278 ∧
    S_not_fourth 291610 291613 ∧
    S_not_fourth 291947 291950 ∧
    S_not_fourth 292281 292284 ∧
    S_not_fourth 292617 292620 ∧
    S_not_fourth 292954 292957 ∧
    S_not_fourth 293289 293292 ∧
    S_not_fourth 293624 293627 ∧
    S_not_fourth 293956 293959 ∧
    S_not_fourth 294296 294299 ∧
    S_not_fourth 294630 294633 ∧
    S_not_fourth 294966 294969 ∧
    S_not_fourth 295303 295306 ∧
    S_not_fourth 295638 295641 ∧
    S_not_fourth 295974 295977 ∧
    S_not_fourth 296308 296311 ∧
    S_not_fourth 296644 296647 ∧
    S_not_fourth 296979 296982 ∧
    S_not_fourth 297314 297317 ∧
    S_not_fourth 297651 297654 ∧
    S_not_fourth 297984 297987 ∧
    S_not_fourth 298322 298325 ∧
    S_not_fourth 298659 298662 ∧
    S_not_fourth 298993 298996 ∧
    S_not_fourth 299328 299331 ∧
    S_not_fourth 299665 299668 ∧
    S_not_fourth 299999 300002 :=
  ⟨row_200001_200004.2.2, row_200337_200340.2.2, row_200672_200675.2.2, row_201008_201011.2.2, row_201344_201347.2.2, row_201678_201681.2.2, row_202015_202018.2.2, row_202349_202352.2.2, row_202685_202688.2.2, row_203022_203025.2.2, row_203355_203358.2.2, row_203692_203695.2.2, row_204027_204030.2.2, row_204364_204367.2.2, row_204699_204702.2.2, row_205036_205039.2.2, row_205371_205374.2.2, row_205706_205709.2.2, row_206043_206046.2.2, row_206375_206378.2.2, row_206713_206716.2.2, row_207047_207050.2.2, row_207382_207385.2.2, row_207720_207723.2.2, row_208054_208057.2.2, row_208389_208392.2.2, row_208725_208728.2.2, row_209064_209067.2.2, row_209396_209399.2.2, row_209731_209734.2.2, row_210066_210069.2.2, row_210403_210406.2.2, row_210738_210741.2.2, row_211073_211076.2.2, row_211410_211413.2.2, row_211745_211748.2.2, row_212083_212086.2.2, row_212416_212419.2.2, row_212752_212755.2.2, row_213088_213091.2.2, row_213423_213426.2.2, row_213759_213762.2.2, row_214095_214098.2.2, row_214430_214433.2.2, row_214766_214769.2.2, row_215101_215104.2.2, row_215437_215440.2.2, row_215772_215775.2.2, row_216108_216111.2.2, row_216443_216446.2.2, row_216780_216783.2.2, row_217114_217117.2.2, row_217450_217453.2.2, row_217786_217789.2.2, row_218123_218126.2.2, row_218457_218460.2.2, row_218792_218795.2.2, row_219128_219131.2.2, row_219463_219466.2.2, row_219801_219804.2.2, row_220135_220138.2.2, row_220471_220474.2.2, row_220805_220808.2.2, row_221140_221143.2.2, row_221478_221481.2.2, row_221811_221814.2.2, row_222150_222153.2.2, row_222482_222485.2.2, row_222819_222822.2.2, row_223154_223157.2.2, row_223492_223495.2.2, row_223825_223828.2.2, row_224162_224165.2.2, row_224497_224500.2.2, row_224832_224835.2.2, row_225168_225171.2.2, row_225505_225508.2.2, row_225839_225842.2.2, row_226174_226177.2.2, row_226511_226514.2.2, row_226846_226849.2.2, row_227183_227186.2.2, row_227516_227519.2.2, row_227853_227856.2.2, row_228190_228193.2.2, row_228524_228527.2.2, row_228859_228862.2.2, row_229196_229199.2.2, row_229530_229533.2.2, row_229866_229869.2.2, row_230203_230206.2.2, row_230537_230540.2.2, row_230873_230876.2.2, row_231208_231211.2.2, row_231544_231547.2.2, row_231879_231882.2.2, row_232215_232218.2.2, row_232551_232554.2.2, row_232886_232889.2.2, row_233222_233225.2.2, row_233558_233561.2.2, row_233893_233896.2.2, row_234226_234229.2.2, row_234564_234567.2.2, row_234900_234903.2.2, row_235235_235238.2.2, row_235572_235575.2.2, row_235906_235909.2.2, row_236243_236246.2.2, row_236576_236579.2.2, row_236914_236917.2.2, row_237248_237251.2.2, row_237583_237586.2.2, row_237920_237923.2.2, row_238253_238256.2.2, row_238592_238595.2.2, row_238928_238931.2.2, row_239261_239264.2.2, row_239597_239600.2.2, row_239934_239937.2.2, row_240267_240270.2.2, row_240604_240607.2.2, row_240942_240945.2.2, row_241274_241277.2.2, row_241611_241614.2.2, row_241945_241948.2.2, row_242282_242285.2.2, row_242618_242621.2.2, row_242956_242959.2.2, row_243288_243291.2.2, row_243625_243628.2.2, row_243960_243963.2.2, row_244295_244298.2.2, row_244631_244634.2.2, row_244964_244967.2.2, row_245302_245305.2.2, row_245639_245642.2.2, row_245972_245975.2.2, row_246309_246312.2.2, row_246646_246649.2.2, row_246982_246985.2.2, row_247316_247319.2.2, row_247652_247655.2.2, row_247987_247990.2.2, row_248323_248326.2.2, row_248660_248663.2.2, row_248993_248996.2.2, row_249330_249333.2.2, row_249663_249666.2.2, row_250002_250005.2.2, row_250336_250339.2.2, row_250671_250674.2.2, row_251007_251010.2.2, row_251343_251346.2.2, row_251678_251681.2.2, row_252014_252017.2.2, row_252349_252352.2.2, row_252684_252687.2.2, row_253020_253023.2.2, row_253357_253360.2.2, row_253692_253695.2.2, row_254027_254030.2.2, row_254363_254366.2.2, row_254697_254700.2.2, row_255035_255038.2.2, row_255370_255373.2.2, row_255706_255709.2.2, row_256042_256045.2.2, row_256376_256379.2.2, row_256711_256714.2.2, row_257049_257052.2.2, row_257381_257384.2.2, row_257718_257721.2.2, row_258055_258058.2.2, row_258390_258393.2.2, row_258725_258728.2.2, row_259060_259063.2.2, row_259397_259400.2.2, row_259731_259734.2.2, row_260067_260070.2.2, row_260402_260405.2.2, row_260739_260742.2.2, row_261074_261077.2.2, row_261409_261412.2.2, row_261745_261748.2.2, row_262078_262081.2.2, row_262416_262419.2.2, row_262752_262755.2.2, row_263088_263091.2.2, row_263423_263426.2.2, row_263758_263761.2.2, row_264095_264098.2.2, row_264430_264433.2.2, row_264765_264768.2.2, row_265100_265103.2.2, row_265437_265440.2.2, row_265774_265777.2.2, row_266106_266109.2.2, row_266444_266447.2.2, row_266776_266779.2.2, row_267113_267116.2.2, row_267449_267452.2.2, row_267784_267787.2.2, row_268120_268123.2.2, row_268456_268459.2.2, row_268792_268795.2.2, row_269127_269130.2.2, row_269462_269465.2.2, row_269798_269801.2.2, row_270134_270137.2.2, row_270470_270473.2.2, row_270805_270808.2.2, row_271141_271144.2.2, row_271476_271479.2.2, row_271812_271815.2.2, row_272147_272150.2.2, row_272483_272486.2.2, row_272821_272824.2.2, row_273154_273157.2.2, row_273490_273493.2.2, row_273826_273829.2.2, row_274161_274164.2.2, row_274497_274500.2.2, row_274834_274837.2.2, row_275168_275171.2.2, row_275503_275506.2.2, row_275840_275843.2.2, row_276174_276177.2.2, row_276510_276513.2.2, row_276846_276849.2.2, row_277181_277184.2.2, row_277518_277521.2.2, row_277854_277857.2.2, row_278188_278191.2.2, row_278524_278527.2.2, row_278858_278861.2.2, row_279195_279198.2.2, row_279530_279533.2.2, row_279865_279868.2.2, row_280202_280205.2.2, row_280538_280541.2.2, row_280873_280876.2.2, row_281208_281211.2.2, row_281542_281545.2.2, row_281878_281881.2.2, row_282213_282216.2.2, row_282549_282552.2.2, row_282884_282887.2.2, row_283223_283226.2.2, row_283557_283560.2.2, row_283889_283892.2.2, row_284229_284232.2.2, row_284563_284566.2.2, row_284897_284900.2.2, row_285237_285240.2.2, row_285570_285573.2.2, row_285907_285910.2.2, row_286240_286243.2.2, row_286577_286580.2.2, row_286912_286915.2.2, row_287248_287251.2.2, row_287584_287587.2.2, row_287918_287921.2.2, row_288255_288258.2.2, row_288590_288593.2.2, row_288926_288929.2.2, row_289261_289264.2.2, row_289597_289600.2.2, row_289928_289931.2.2, row_290268_290271.2.2, row_290604_290607.2.2, row_290939_290942.2.2, row_291275_291278.2.2, row_291610_291613.2.2, row_291947_291950.2.2, row_292281_292284.2.2, row_292617_292620.2.2, row_292954_292957.2.2, row_293289_293292.2.2, row_293624_293627.2.2, row_293956_293959.2.2, row_294296_294299.2.2, row_294630_294633.2.2, row_294966_294969.2.2, row_295303_295306.2.2, row_295638_295641.2.2, row_295974_295977.2.2, row_296308_296311.2.2, row_296644_296647.2.2, row_296979_296982.2.2, row_297314_297317.2.2, row_297651_297654.2.2, row_297984_297987.2.2, row_298322_298325.2.2, row_298659_298662.2.2, row_298993_298996.2.2, row_299328_299331.2.2, row_299665_299668.2.2, row_299999_300002.2.2⟩
def S_has_prime_with_exp_one_B_le_300000_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_has_prime_with_exp_one_B_le_200000_table_rows
    S_has_prime_with_exp_one_200000_lt_B_le_300000_table_rows

def exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
    exists_p_with_order_ne_13_200000_lt_B_le_300000_from_exp_one_table_rows

def S_not_fourth_B_le_300000_from_exp_one_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_not_fourth_B_le_200000_from_exp_one_table_rows
    S_not_fourth_200000_lt_B_le_300000_from_exp_one_table_rows

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Inhabited.  Displayed coefficient misses plus
displayed `S₂(Γ₀(2))` dimension `0`.  Not Ribet. -/
def level_lowering_26_to_2_from_no_match :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.level_lowering_26_to_2_from_no_match

/-- Inhabited.  Coefficient check, not residual iso. -/
def s2_26_displayed_newforms_miss_frey_traces :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.s2_26_displayed_newforms_miss_frey_traces

/-- Uninhabited.  Ljunggren-type; named rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  Named rows are not every `B ≤ 300000`.
`B > 300000` needs Bugeaud–Corvaja–Zannier. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 200000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.bugeaud_P_phi13_gt_C_when_B_gt_200000

/-- Uninhabited.  Squarefull + `B > 200000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 300000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_300000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 300000 < B →
    C < P_phi13 B C

/-- Uninhabited.  Squarefull + `B > 300000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_300000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 300000 < B →
    IsSquarefull (S_val B C) →
    Nat.sqrt (13 * C ^ 12) < rad (S_val B C)

/-- Uninhabited.  Kraus matching at `q = 13`, level 26.
Even-`A` `13 ∣ A` close.  Coefficient misses plus
displayed `S₂(Γ₀(2)) = 0` are not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.kraus_elimination_q_13_level_26

/-- Uninhabited.  Missing Mathlib Ribet arrow `26 → 2`. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.ribet_26_to_2_from_displayed_miss

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

#check S_val
#check S_bounds
#check HasPrimeWithExpOne
#check S_not_fourth
#check S_has_prime_with_exp_one_B_le_300000_table_rows
#check exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows
#check S_not_fourth_B_le_300000_from_exp_one_table_rows
#check kraus_elimination_q_13_level_26
#check bugeaud_P_phi13_gt_C_when_B_gt_300000
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#check level_lowering_26_to_2_from_no_match
#check s2_26_displayed_newforms_miss_frey_traces
#print axioms S_has_prime_with_exp_one_B_le_300000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_300000_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension
