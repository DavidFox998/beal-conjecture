/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.42.0 — B ≤ 100000 exp-one
extension (300+ named gap-3 rows, not a ∀).

Extends the B ≤ 50000 table (188 named
rows, wrapped) by new computational pairs
with 50000 < B ≤ 100000 and C = B+3.
Each has a prime p ≤ 547 (hence p ≤ 2000)
with p | S, p ∤ (C-B), p² ∤ S, so the
Step11 dichotomy gives order ≠ 13 and
S_not_fourth.

This is not every B ≤ 100000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 100000 squarefull
rarity is Bugeaud-type, also a Prop.
Kraus elimination at q = 13, level 26
stays a matching lock (newforms 26a1 /
26b1 exist).  The Ljunggren ∀ stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 4000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension

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

/-! ## Inherited Step34 rows (188 wrappers) -/
def row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_1_4
def row_196_199 :
    HasPrimeWithExpOne (S_val 196 199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196 199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_196_199
def row_386_389 :
    HasPrimeWithExpOne (S_val 386 389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386 389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_386_389
def row_587_590 :
    HasPrimeWithExpOne (S_val 587 590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 587 590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_587_590
def row_1171_1174 :
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1171 1174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_1171_1174
def row_1366_1369 :
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1366 1369 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_1366_1369
def row_1559_1562 :
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1559 1562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_1559_1562
def row_1756_1759 :
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1756 1759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_1756_1759
def row_2146_2149 :
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2146 2149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_2146_2149
def row_2536_2539 :
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2536 2539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_2536_2539
def row_2731_2734 :
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2731 2734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_2731_2734
def row_3313_3316 :
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3313 3316 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_3313_3316
def row_3511_3514 :
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3511 3514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_3511_3514
def row_3706_3709 :
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3706 3709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_3706_3709
def row_3901_3904 :
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3901 3904 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_3901_3904
def row_4682_4685 :
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4682 4685 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_4682_4685
def row_4876_4879 :
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4876 4879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_4876_4879
def row_5071_5074 :
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5071 5074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_5071_5074
def row_5461_5464 :
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5461 5464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_5461_5464
def row_5849_5852 :
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5849 5852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_5849_5852
def row_6046_6049 :
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6046 6049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_6046_6049
def row_6241_6244 :
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6241 6244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_6241_6244
def row_6631_6634 :
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6631 6634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_6631_6634
def row_7411_7414 :
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7411 7414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_7411_7414
def row_7606_7609 :
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7606 7609 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_7606_7609
def row_7801_7804 :
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7801 7804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_7801_7804
def row_7997_8000 :
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7997 8000 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_7997_8000
def row_8194_8197 :
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8194 8197 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_8194_8197
def row_8582_8585 :
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8582 8585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_8582_8585
def row_9163_9166 :
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9163 9166 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_9163_9166
def row_9361_9364 :
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9361 9364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_9361_9364
def row_9751_9754 :
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9751 9754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_9751_9754
def row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_10000_10003
def row_10141_10144 :
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10141 10144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_10141_10144
def row_10531_10534 :
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10531 10534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_10531_10534
def row_10726_10729 :
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10726 10729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_10726_10729
def row_11311_11314 :
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11311 11314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_11311_11314
def row_11506_11509 :
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11506 11509 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_11506_11509
def row_11896_11899 :
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11896 11899 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_11896_11899
def row_12091_12094 :
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12091 12094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_12091_12094
def row_12871_12874 :
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12871 12874 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_12871_12874
def row_13066_13069 :
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13066 13069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_13066_13069
def row_13258_13261 :
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13258 13261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_13258_13261
def row_13457_13460 :
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13457 13460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_13457_13460
def row_13651_13654 :
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13651 13654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_13651_13654
def row_13846_13849 :
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13846 13849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_13846_13849
def row_14041_14044 :
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14041 14044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_14041_14044
def row_14236_14239 :
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14236 14239 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_14236_14239
def row_14431_14434 :
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14431 14434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_14431_14434
def row_14626_14629 :
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14626 14629 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_14626_14629
def row_14821_14824 :
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14821 14824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_14821_14824
def row_15016_15019 :
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15016 15019 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_15016_15019
def row_15211_15214 :
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15211 15214 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_15211_15214
def row_15406_15409 :
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15406 15409 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_15406_15409
def row_15991_15994 :
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15991 15994 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_15991_15994
def row_16186_16189 :
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16186 16189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_16186_16189
def row_16381_16384 :
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16381 16384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_16381_16384
def row_16576_16579 :
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16576 16579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_16576_16579
def row_16771_16774 :
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16771 16774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_16771_16774
def row_16966_16969 :
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16966 16969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_16966_16969
def row_17161_17164 :
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17161 17164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_17161_17164
def row_17354_17357 :
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17354 17357 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_17354_17357
def row_17551_17554 :
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17551 17554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_17551_17554
def row_17746_17749 :
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17746 17749 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_17746_17749
def row_17938_17941 :
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17938 17941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_17938_17941
def row_18136_18139 :
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18136 18139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_18136_18139
def row_18331_18334 :
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18331 18334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_18331_18334
def row_18526_18529 :
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18526 18529 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_18526_18529
def row_18721_18724 :
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18721 18724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_18721_18724
def row_19310_19313 :
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19310 19313 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_19310_19313
def row_19501_19504 :
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19501 19504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_19501_19504
def row_19694_19697 :
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19694 19697 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_19694_19697
def row_19891_19894 :
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19891 19894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_19891_19894
def row_20086_20089 :
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20086 20089 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_20086_20089
def row_20281_20284 :
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20281 20284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_20281_20284
def row_20476_20479 :
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20476 20479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_20476_20479
def row_20671_20674 :
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20671 20674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_20671_20674
def row_20866_20869 :
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20866 20869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_20866_20869
def row_21061_21064 :
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21061 21064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_21061_21064
def row_21256_21259 :
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21256 21259 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_21256_21259
def row_21451_21454 :
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21451 21454 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_21451_21454
def row_21841_21844 :
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21841 21844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_21841_21844
def row_22229_22232 :
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22229 22232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_22229_22232
def row_22621_22624 :
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22621 22624 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_22621_22624
def row_22814_22817 :
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22814 22817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_22814_22817
def row_23206_23209 :
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23206 23209 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_23206_23209
def row_23791_23794 :
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23791 23794 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_23791_23794
def row_24181_24184 :
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24181 24184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_24181_24184
def row_24374_24377 :
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24374 24377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_24374_24377
def row_24571_24574 :
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24571 24574 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_24571_24574
def row_24764_24767 :
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24764 24767 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_24764_24767
def row_25156_25159 :
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25156 25159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_25156_25159
def row_25351_25354 :
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25351 25354 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_25351_25354
def row_26132_26135 :
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26132 26135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_26132_26135
def row_26326_26329 :
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26326 26329 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_26326_26329
def row_26716_26719 :
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26716 26719 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_26716_26719
def row_26911_26914 :
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26911 26914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_26911_26914
def row_27301_27304 :
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27301 27304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_27301_27304
def row_27496_27499 :
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27496 27499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_27496_27499
def row_27692_27695 :
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27692 27695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_27692_27695
def row_28081_28084 :
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28081 28084 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_28081_28084
def row_28280_28283 :
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28280 28283 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_28280_28283
def row_28471_28474 :
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28471 28474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_28471_28474
def row_28666_28669 :
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28666 28669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_28666_28669
def row_29056_29059 :
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29056 29059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_29056_29059
def row_29251_29254 :
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29251 29254 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_29251_29254
def row_29446_29449 :
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29446 29449 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_29446_29449
def row_29641_29644 :
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29641 29644 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_29641_29644
def row_29836_29839 :
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29836 29839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_29836_29839
def row_30031_30034 :
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30031 30034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_30031_30034
def row_30223_30226 :
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30223 30226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_30223_30226
def row_30421_30424 :
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30421 30424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_30421_30424
def row_30617_30620 :
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30617 30620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_30617_30620
def row_30811_30814 :
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30811 30814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_30811_30814
def row_31006_31009 :
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31006 31009 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_31006_31009
def row_31201_31204 :
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31201 31204 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_31201_31204
def row_31591_31594 :
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31591 31594 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_31591_31594
def row_31979_31982 :
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31979 31982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_31979_31982
def row_32176_32179 :
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32176 32179 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_32176_32179
def row_32371_32374 :
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32371 32374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_32371_32374
def row_32566_32569 :
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32566 32569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_32566_32569
def row_32956_32959 :
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32956 32959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_32956_32959
def row_33152_33155 :
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33152 33155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_33152_33155
def row_33541_33544 :
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33541 33544 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_33541_33544
def row_33736_33739 :
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33736 33739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_33736_33739
def row_34124_34127 :
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34124 34127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_34124_34127
def row_34516_34519 :
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34516 34519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_34516_34519
def row_34708_34711 :
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34708 34711 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_34708_34711
def row_34906_34909 :
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34906 34909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_34906_34909
def row_35296_35299 :
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35296 35299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_35296_35299
def row_35489_35492 :
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35489 35492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_35489_35492
def row_35686_35689 :
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35686 35689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_35686_35689
def row_36077_36080 :
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36077 36080 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_36077_36080
def row_36272_36275 :
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36272 36275 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_36272_36275
def row_36856_36859 :
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36856 36859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_36856_36859
def row_37051_37054 :
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37051 37054 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_37051_37054
def row_37246_37249 :
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37246 37249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_37246_37249
def row_37441_37444 :
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37441 37444 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_37441_37444
def row_37636_37639 :
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37636 37639 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_37636_37639
def row_38027_38030 :
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38027 38030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_38027_38030
def row_38221_38224 :
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38221 38224 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_38221_38224
def row_38416_38419 :
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38416 38419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_38416_38419
def row_38611_38614 :
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38611 38614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_38611_38614
def row_38806_38809 :
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38806 38809 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_38806_38809
def row_39001_39004 :
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39001 39004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_39001_39004
def row_39196_39199 :
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39196 39199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_39196_39199
def row_39584_39587 :
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39584 39587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_39584_39587
def row_39782_39785 :
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39782 39785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_39782_39785
def row_40171_40174 :
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40171 40174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_40171_40174
def row_40561_40564 :
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40561 40564 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_40561_40564
def row_40949_40952 :
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40949 40952 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_40949_40952
def row_41146_41149 :
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41146 41149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_41146_41149
def row_41341_41344 :
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41341 41344 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_41341_41344
def row_41536_41539 :
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41536 41539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_41536_41539
def row_41731_41734 :
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41731 41734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_41731_41734
def row_41926_41929 :
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41926 41929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_41926_41929
def row_42121_42124 :
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42121 42124 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_42121_42124
def row_42511_42514 :
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42511 42514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_42511_42514
def row_42706_42709 :
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42706 42709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_42706_42709
def row_42899_42902 :
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42899 42902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_42899_42902
def row_43097_43100 :
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43097 43100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_43097_43100
def row_43876_43879 :
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43876 43879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_43876_43879
def row_44071_44074 :
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44071 44074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_44071_44074
def row_44266_44269 :
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44266 44269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_44266_44269
def row_44461_44464 :
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44461 44464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_44461_44464
def row_44656_44659 :
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44656 44659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_44656_44659
def row_44851_44854 :
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44851 44854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_44851_44854
def row_45046_45049 :
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45046 45049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_45046_45049
def row_45241_45244 :
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45241 45244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_45241_45244
def row_45436_45439 :
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45436 45439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_45436_45439
def row_45631_45634 :
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45631 45634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_45631_45634
def row_46021_46024 :
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46021 46024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_46021_46024
def row_46412_46415 :
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46412 46415 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_46412_46415
def row_46609_46612 :
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46609 46612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_46609_46612
def row_46801_46804 :
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46801 46804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_46801_46804
def row_46996_46999 :
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46996 46999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_46996_46999
def row_47191_47194 :
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47191 47194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_47191_47194
def row_47386_47389 :
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47386 47389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_47386_47389
def row_47581_47584 :
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47581 47584 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_47581_47584
def row_47971_47974 :
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47971 47974 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_47971_47974
def row_48166_48169 :
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48166 48169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_48166_48169
def row_48361_48364 :
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48361 48364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_48361_48364
def row_48554_48557 :
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48554 48557 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_48554_48557
def row_48751_48754 :
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48751 48754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_48751_48754
def row_49141_49144 :
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49141 49144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_49141_49144
def row_49336_49339 :
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49336 49339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_49336_49339
def row_49531_49534 :
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49531 49534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_49531_49534
def row_50000_50003 :
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50000 50003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_50000_50003

/-! ## New named rows with 50000 < B ≤ 100000 -/
theorem row_50001_50004 :
    HasPrimeWithExpOne (S_val 50001 50004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50001 50004 ∧ ¬ p ∣ (50004 - 50001) ∧
      ∃ (hNotC : ¬ p ∣ 50004) (hNotB : ¬ p ∣ 50001),
        order_of_C_B_inv_mod_p2 50004 50001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50001 50004 := by
  have hlt : (50001 : Nat) < 50004 := by decide
  have hcop : ¬ 131 ∣ (50004 - 50001) := by decide
  have heq : (50004 : ZMod 131) ^ 13 = (50001 : ZMod 131) ^ 13 := by decide
  have hne : (50004 : ZMod 17161) ^ 13 ≠ (50001 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 50004 := by decide
  have hB : ¬ 131 ∣ 50001 := by decide
  have hexp :=
    has_exp_one_of_zmod 50001 50004 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 50001 50004 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 50001 50004 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      50001 50004 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      50001 50004 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_50389_50392 :
    HasPrimeWithExpOne (S_val 50389 50392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50389 50392 ∧ ¬ p ∣ (50392 - 50389) ∧
      ∃ (hNotC : ¬ p ∣ 50392) (hNotB : ¬ p ∣ 50389),
        order_of_C_B_inv_mod_p2 50392 50389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50389 50392 := by
  have hlt : (50389 : Nat) < 50392 := by decide
  have hcop : ¬ 131 ∣ (50392 - 50389) := by decide
  have heq : (50392 : ZMod 131) ^ 13 = (50389 : ZMod 131) ^ 13 := by decide
  have hne : (50392 : ZMod 17161) ^ 13 ≠ (50389 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 50392 := by decide
  have hB : ¬ 131 ∣ 50389 := by decide
  have hexp :=
    has_exp_one_of_zmod 50389 50392 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 50389 50392 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 50389 50392 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      50389 50392 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      50389 50392 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_50779_50782 :
    HasPrimeWithExpOne (S_val 50779 50782) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50779 50782 ∧ ¬ p ∣ (50782 - 50779) ∧
      ∃ (hNotC : ¬ p ∣ 50782) (hNotB : ¬ p ∣ 50779),
        order_of_C_B_inv_mod_p2 50782 50779 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50779 50782 := by
  have hlt : (50779 : Nat) < 50782 := by decide
  have hcop : ¬ 53 ∣ (50782 - 50779) := by decide
  have heq : (50782 : ZMod 53) ^ 13 = (50779 : ZMod 53) ^ 13 := by decide
  have hne : (50782 : ZMod 2809) ^ 13 ≠ (50779 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 50782 := by decide
  have hB : ¬ 53 ∣ 50779 := by decide
  have hexp :=
    has_exp_one_of_zmod 50779 50782 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 50779 50782 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 50779 50782 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      50779 50782 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      50779 50782 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_51191_51194 :
    HasPrimeWithExpOne (S_val 51191 51194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51191 51194 ∧ ¬ p ∣ (51194 - 51191) ∧
      ∃ (hNotC : ¬ p ∣ 51194) (hNotB : ¬ p ∣ 51191),
        order_of_C_B_inv_mod_p2 51194 51191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51191 51194 := by
  have hlt : (51191 : Nat) < 51194 := by decide
  have hcop : ¬ 53 ∣ (51194 - 51191) := by decide
  have heq : (51194 : ZMod 53) ^ 13 = (51191 : ZMod 53) ^ 13 := by decide
  have hne : (51194 : ZMod 2809) ^ 13 ≠ (51191 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 51194 := by decide
  have hB : ¬ 53 ∣ 51191 := by decide
  have hexp :=
    has_exp_one_of_zmod 51191 51194 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 51191 51194 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 51191 51194 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      51191 51194 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      51191 51194 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_51574_51577 :
    HasPrimeWithExpOne (S_val 51574 51577) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51574 51577 ∧ ¬ p ∣ (51577 - 51574) ∧
      ∃ (hNotC : ¬ p ∣ 51577) (hNotB : ¬ p ∣ 51574),
        order_of_C_B_inv_mod_p2 51577 51574 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51574 51577 := by
  have hlt : (51574 : Nat) < 51577 := by decide
  have hcop : ¬ 53 ∣ (51577 - 51574) := by decide
  have heq : (51577 : ZMod 53) ^ 13 = (51574 : ZMod 53) ^ 13 := by decide
  have hne : (51577 : ZMod 2809) ^ 13 ≠ (51574 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 51577 := by decide
  have hB : ¬ 53 ∣ 51574 := by decide
  have hexp :=
    has_exp_one_of_zmod 51574 51577 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 51574 51577 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 51574 51577 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      51574 51577 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      51574 51577 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_51965_51968 :
    HasPrimeWithExpOne (S_val 51965 51968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51965 51968 ∧ ¬ p ∣ (51968 - 51965) ∧
      ∃ (hNotC : ¬ p ∣ 51968) (hNotB : ¬ p ∣ 51965),
        order_of_C_B_inv_mod_p2 51968 51965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51965 51968 := by
  have hlt : (51965 : Nat) < 51968 := by decide
  have hcop : ¬ 79 ∣ (51968 - 51965) := by decide
  have heq : (51968 : ZMod 79) ^ 13 = (51965 : ZMod 79) ^ 13 := by decide
  have hne : (51968 : ZMod 6241) ^ 13 ≠ (51965 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 51968 := by decide
  have hB : ¬ 79 ∣ 51965 := by decide
  have hexp :=
    has_exp_one_of_zmod 51965 51968 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 51965 51968 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 51965 51968 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      51965 51968 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      51965 51968 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_52362_52365 :
    HasPrimeWithExpOne (S_val 52362 52365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52362 52365 ∧ ¬ p ∣ (52365 - 52362) ∧
      ∃ (hNotC : ¬ p ∣ 52365) (hNotB : ¬ p ∣ 52362),
        order_of_C_B_inv_mod_p2 52365 52362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52362 52365 := by
  have hlt : (52362 : Nat) < 52365 := by decide
  have hcop : ¬ 79 ∣ (52365 - 52362) := by decide
  have heq : (52365 : ZMod 79) ^ 13 = (52362 : ZMod 79) ^ 13 := by decide
  have hne : (52365 : ZMod 6241) ^ 13 ≠ (52362 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 52365 := by decide
  have hB : ¬ 79 ∣ 52362 := by decide
  have hexp :=
    has_exp_one_of_zmod 52362 52365 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 52362 52365 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 52362 52365 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      52362 52365 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      52362 52365 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_52739_52742 :
    HasPrimeWithExpOne (S_val 52739 52742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52739 52742 ∧ ¬ p ∣ (52742 - 52739) ∧
      ∃ (hNotC : ¬ p ∣ 52742) (hNotB : ¬ p ∣ 52739),
        order_of_C_B_inv_mod_p2 52742 52739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52739 52742 := by
  have hlt : (52739 : Nat) < 52742 := by decide
  have hcop : ¬ 53 ∣ (52742 - 52739) := by decide
  have heq : (52742 : ZMod 53) ^ 13 = (52739 : ZMod 53) ^ 13 := by decide
  have hne : (52742 : ZMod 2809) ^ 13 ≠ (52739 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 52742 := by decide
  have hB : ¬ 53 ∣ 52739 := by decide
  have hexp :=
    has_exp_one_of_zmod 52739 52742 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 52739 52742 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 52739 52742 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      52739 52742 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      52739 52742 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_53136_53139 :
    HasPrimeWithExpOne (S_val 53136 53139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53136 53139 ∧ ¬ p ∣ (53139 - 53136) ∧
      ∃ (hNotC : ¬ p ∣ 53139) (hNotB : ¬ p ∣ 53136),
        order_of_C_B_inv_mod_p2 53139 53136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53136 53139 := by
  have hlt : (53136 : Nat) < 53139 := by decide
  have hcop : ¬ 157 ∣ (53139 - 53136) := by decide
  have heq : (53139 : ZMod 157) ^ 13 = (53136 : ZMod 157) ^ 13 := by decide
  have hne : (53139 : ZMod 24649) ^ 13 ≠ (53136 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 53139 := by decide
  have hB : ¬ 157 ∣ 53136 := by decide
  have hexp :=
    has_exp_one_of_zmod 53136 53139 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 53136 53139 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 53136 53139 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      53136 53139 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      53136 53139 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_53525_53528 :
    HasPrimeWithExpOne (S_val 53525 53528) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53525 53528 ∧ ¬ p ∣ (53528 - 53525) ∧
      ∃ (hNotC : ¬ p ∣ 53528) (hNotB : ¬ p ∣ 53525),
        order_of_C_B_inv_mod_p2 53528 53525 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53525 53528 := by
  have hlt : (53525 : Nat) < 53528 := by decide
  have hcop : ¬ 79 ∣ (53528 - 53525) := by decide
  have heq : (53528 : ZMod 79) ^ 13 = (53525 : ZMod 79) ^ 13 := by decide
  have hne : (53528 : ZMod 6241) ^ 13 ≠ (53525 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 53528 := by decide
  have hB : ¬ 79 ∣ 53525 := by decide
  have hexp :=
    has_exp_one_of_zmod 53525 53528 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 53525 53528 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 53525 53528 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      53525 53528 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      53525 53528 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_53915_53918 :
    HasPrimeWithExpOne (S_val 53915 53918) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53915 53918 ∧ ¬ p ∣ (53918 - 53915) ∧
      ∃ (hNotC : ¬ p ∣ 53918) (hNotB : ¬ p ∣ 53915),
        order_of_C_B_inv_mod_p2 53918 53915 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53915 53918 := by
  have hlt : (53915 : Nat) < 53918 := by decide
  have hcop : ¬ 131 ∣ (53918 - 53915) := by decide
  have heq : (53918 : ZMod 131) ^ 13 = (53915 : ZMod 131) ^ 13 := by decide
  have hne : (53918 : ZMod 17161) ^ 13 ≠ (53915 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 53918 := by decide
  have hB : ¬ 131 ∣ 53915 := by decide
  have hexp :=
    has_exp_one_of_zmod 53915 53918 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 53915 53918 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 53915 53918 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      53915 53918 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      53915 53918 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_54302_54305 :
    HasPrimeWithExpOne (S_val 54302 54305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54302 54305 ∧ ¬ p ∣ (54305 - 54302) ∧
      ∃ (hNotC : ¬ p ∣ 54305) (hNotB : ¬ p ∣ 54302),
        order_of_C_B_inv_mod_p2 54305 54302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54302 54305 := by
  have hlt : (54302 : Nat) < 54305 := by decide
  have hcop : ¬ 131 ∣ (54305 - 54302) := by decide
  have heq : (54305 : ZMod 131) ^ 13 = (54302 : ZMod 131) ^ 13 := by decide
  have hne : (54305 : ZMod 17161) ^ 13 ≠ (54302 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 54305 := by decide
  have hB : ¬ 131 ∣ 54302 := by decide
  have hexp :=
    has_exp_one_of_zmod 54302 54305 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 54302 54305 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 54302 54305 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      54302 54305 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      54302 54305 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_54701_54704 :
    HasPrimeWithExpOne (S_val 54701 54704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54701 54704 ∧ ¬ p ∣ (54704 - 54701) ∧
      ∃ (hNotC : ¬ p ∣ 54704) (hNotB : ¬ p ∣ 54701),
        order_of_C_B_inv_mod_p2 54704 54701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54701 54704 := by
  have hlt : (54701 : Nat) < 54704 := by decide
  have hcop : ¬ 53 ∣ (54704 - 54701) := by decide
  have heq : (54704 : ZMod 53) ^ 13 = (54701 : ZMod 53) ^ 13 := by decide
  have hne : (54704 : ZMod 2809) ^ 13 ≠ (54701 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 54704 := by decide
  have hB : ¬ 53 ∣ 54701 := by decide
  have hexp :=
    has_exp_one_of_zmod 54701 54704 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 54701 54704 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 54701 54704 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      54701 54704 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      54701 54704 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_55091_55094 :
    HasPrimeWithExpOne (S_val 55091 55094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55091 55094 ∧ ¬ p ∣ (55094 - 55091) ∧
      ∃ (hNotC : ¬ p ∣ 55094) (hNotB : ¬ p ∣ 55091),
        order_of_C_B_inv_mod_p2 55094 55091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55091 55094 := by
  have hlt : (55091 : Nat) < 55094 := by decide
  have hcop : ¬ 521 ∣ (55094 - 55091) := by decide
  have heq : (55094 : ZMod 521) ^ 13 = (55091 : ZMod 521) ^ 13 := by decide
  have hne : (55094 : ZMod 271441) ^ 13 ≠ (55091 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 55094 := by decide
  have hB : ¬ 521 ∣ 55091 := by decide
  have hexp :=
    has_exp_one_of_zmod 55091 55094 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 55091 55094 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 55091 55094 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      55091 55094 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      55091 55094 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_55496_55499 :
    HasPrimeWithExpOne (S_val 55496 55499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55496 55499 ∧ ¬ p ∣ (55499 - 55496) ∧
      ∃ (hNotC : ¬ p ∣ 55499) (hNotB : ¬ p ∣ 55496),
        order_of_C_B_inv_mod_p2 55499 55496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55496 55499 := by
  have hlt : (55496 : Nat) < 55499 := by decide
  have hcop : ¬ 53 ∣ (55499 - 55496) := by decide
  have heq : (55499 : ZMod 53) ^ 13 = (55496 : ZMod 53) ^ 13 := by decide
  have hne : (55499 : ZMod 2809) ^ 13 ≠ (55496 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 55499 := by decide
  have hB : ¬ 53 ∣ 55496 := by decide
  have hexp :=
    has_exp_one_of_zmod 55496 55499 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 55496 55499 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 55496 55499 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      55496 55499 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      55496 55499 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_55894_55897 :
    HasPrimeWithExpOne (S_val 55894 55897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55894 55897 ∧ ¬ p ∣ (55897 - 55894) ∧
      ∃ (hNotC : ¬ p ∣ 55897) (hNotB : ¬ p ∣ 55894),
        order_of_C_B_inv_mod_p2 55897 55894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55894 55897 := by
  have hlt : (55894 : Nat) < 55897 := by decide
  have hcop : ¬ 53 ∣ (55897 - 55894) := by decide
  have heq : (55897 : ZMod 53) ^ 13 = (55894 : ZMod 53) ^ 13 := by decide
  have hne : (55897 : ZMod 2809) ^ 13 ≠ (55894 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 55897 := by decide
  have hB : ¬ 53 ∣ 55894 := by decide
  have hexp :=
    has_exp_one_of_zmod 55894 55897 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 55894 55897 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 55894 55897 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      55894 55897 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      55894 55897 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_56278_56281 :
    HasPrimeWithExpOne (S_val 56278 56281) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56278 56281 ∧ ¬ p ∣ (56281 - 56278) ∧
      ∃ (hNotC : ¬ p ∣ 56281) (hNotB : ¬ p ∣ 56278),
        order_of_C_B_inv_mod_p2 56281 56278 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56278 56281 := by
  have hlt : (56278 : Nat) < 56281 := by decide
  have hcop : ¬ 53 ∣ (56281 - 56278) := by decide
  have heq : (56281 : ZMod 53) ^ 13 = (56278 : ZMod 53) ^ 13 := by decide
  have hne : (56281 : ZMod 2809) ^ 13 ≠ (56278 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 56281 := by decide
  have hB : ¬ 53 ∣ 56278 := by decide
  have hexp :=
    has_exp_one_of_zmod 56278 56281 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 56278 56281 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 56278 56281 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      56278 56281 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      56278 56281 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_56667_56670 :
    HasPrimeWithExpOne (S_val 56667 56670) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56667 56670 ∧ ¬ p ∣ (56670 - 56667) ∧
      ∃ (hNotC : ¬ p ∣ 56670) (hNotB : ¬ p ∣ 56667),
        order_of_C_B_inv_mod_p2 56670 56667 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56667 56670 := by
  have hlt : (56667 : Nat) < 56670 := by decide
  have hcop : ¬ 53 ∣ (56670 - 56667) := by decide
  have heq : (56670 : ZMod 53) ^ 13 = (56667 : ZMod 53) ^ 13 := by decide
  have hne : (56670 : ZMod 2809) ^ 13 ≠ (56667 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 56670 := by decide
  have hB : ¬ 53 ∣ 56667 := by decide
  have hexp :=
    has_exp_one_of_zmod 56667 56670 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 56667 56670 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 56667 56670 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      56667 56670 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      56667 56670 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_57036_57039 :
    HasPrimeWithExpOne (S_val 57036 57039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57036 57039 ∧ ¬ p ∣ (57039 - 57036) ∧
      ∃ (hNotC : ¬ p ∣ 57039) (hNotB : ¬ p ∣ 57036),
        order_of_C_B_inv_mod_p2 57039 57036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57036 57039 := by
  have hlt : (57036 : Nat) < 57039 := by decide
  have hcop : ¬ 547 ∣ (57039 - 57036) := by decide
  have heq : (57039 : ZMod 547) ^ 13 = (57036 : ZMod 547) ^ 13 := by decide
  have hne : (57039 : ZMod 299209) ^ 13 ≠ (57036 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 57039 := by decide
  have hB : ¬ 547 ∣ 57036 := by decide
  have hexp :=
    has_exp_one_of_zmod 57036 57039 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 57036 57039 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 57036 57039 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      57036 57039 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      57036 57039 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_57417_57420 :
    HasPrimeWithExpOne (S_val 57417 57420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57417 57420 ∧ ¬ p ∣ (57420 - 57417) ∧
      ∃ (hNotC : ¬ p ∣ 57420) (hNotB : ¬ p ∣ 57417),
        order_of_C_B_inv_mod_p2 57420 57417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57417 57420 := by
  have hlt : (57417 : Nat) < 57420 := by decide
  have hcop : ¬ 53 ∣ (57420 - 57417) := by decide
  have heq : (57420 : ZMod 53) ^ 13 = (57417 : ZMod 53) ^ 13 := by decide
  have hne : (57420 : ZMod 2809) ^ 13 ≠ (57417 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 57420 := by decide
  have hB : ¬ 53 ∣ 57417 := by decide
  have hexp :=
    has_exp_one_of_zmod 57417 57420 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 57417 57420 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 57417 57420 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      57417 57420 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      57417 57420 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_57825_57828 :
    HasPrimeWithExpOne (S_val 57825 57828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57825 57828 ∧ ¬ p ∣ (57828 - 57825) ∧
      ∃ (hNotC : ¬ p ∣ 57828) (hNotB : ¬ p ∣ 57825),
        order_of_C_B_inv_mod_p2 57828 57825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57825 57828 := by
  have hlt : (57825 : Nat) < 57828 := by decide
  have hcop : ¬ 131 ∣ (57828 - 57825) := by decide
  have heq : (57828 : ZMod 131) ^ 13 = (57825 : ZMod 131) ^ 13 := by decide
  have hne : (57828 : ZMod 17161) ^ 13 ≠ (57825 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 57828 := by decide
  have hB : ¬ 131 ∣ 57825 := by decide
  have hexp :=
    has_exp_one_of_zmod 57825 57828 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 57825 57828 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 57825 57828 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      57825 57828 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      57825 57828 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_58198_58201 :
    HasPrimeWithExpOne (S_val 58198 58201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58198 58201 ∧ ¬ p ∣ (58201 - 58198) ∧
      ∃ (hNotC : ¬ p ∣ 58201) (hNotB : ¬ p ∣ 58198),
        order_of_C_B_inv_mod_p2 58201 58198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58198 58201 := by
  have hlt : (58198 : Nat) < 58201 := by decide
  have hcop : ¬ 53 ∣ (58201 - 58198) := by decide
  have heq : (58201 : ZMod 53) ^ 13 = (58198 : ZMod 53) ^ 13 := by decide
  have hne : (58201 : ZMod 2809) ^ 13 ≠ (58198 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 58201 := by decide
  have hB : ¬ 53 ∣ 58198 := by decide
  have hexp :=
    has_exp_one_of_zmod 58198 58201 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 58198 58201 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 58198 58201 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      58198 58201 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      58198 58201 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_58587_58590 :
    HasPrimeWithExpOne (S_val 58587 58590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58587 58590 ∧ ¬ p ∣ (58590 - 58587) ∧
      ∃ (hNotC : ¬ p ∣ 58590) (hNotB : ¬ p ∣ 58587),
        order_of_C_B_inv_mod_p2 58590 58587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58587 58590 := by
  have hlt : (58587 : Nat) < 58590 := by decide
  have hcop : ¬ 547 ∣ (58590 - 58587) := by decide
  have heq : (58590 : ZMod 547) ^ 13 = (58587 : ZMod 547) ^ 13 := by decide
  have hne : (58590 : ZMod 299209) ^ 13 ≠ (58587 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 58590 := by decide
  have hB : ¬ 547 ∣ 58587 := by decide
  have hexp :=
    has_exp_one_of_zmod 58587 58590 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 58587 58590 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 58587 58590 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      58587 58590 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      58587 58590 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_58995_58998 :
    HasPrimeWithExpOne (S_val 58995 58998) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58995 58998 ∧ ¬ p ∣ (58998 - 58995) ∧
      ∃ (hNotC : ¬ p ∣ 58998) (hNotB : ¬ p ∣ 58995),
        order_of_C_B_inv_mod_p2 58998 58995 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58995 58998 := by
  have hlt : (58995 : Nat) < 58998 := by decide
  have hcop : ¬ 53 ∣ (58998 - 58995) := by decide
  have heq : (58998 : ZMod 53) ^ 13 = (58995 : ZMod 53) ^ 13 := by decide
  have hne : (58998 : ZMod 2809) ^ 13 ≠ (58995 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 58998 := by decide
  have hB : ¬ 53 ∣ 58995 := by decide
  have hexp :=
    has_exp_one_of_zmod 58995 58998 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 58995 58998 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 58995 58998 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      58995 58998 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      58995 58998 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_59373_59376 :
    HasPrimeWithExpOne (S_val 59373 59376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59373 59376 ∧ ¬ p ∣ (59376 - 59373) ∧
      ∃ (hNotC : ¬ p ∣ 59376) (hNotB : ¬ p ∣ 59373),
        order_of_C_B_inv_mod_p2 59376 59373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59373 59376 := by
  have hlt : (59373 : Nat) < 59376 := by decide
  have hcop : ¬ 53 ∣ (59376 - 59373) := by decide
  have heq : (59376 : ZMod 53) ^ 13 = (59373 : ZMod 53) ^ 13 := by decide
  have hne : (59376 : ZMod 2809) ^ 13 ≠ (59373 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 59376 := by decide
  have hB : ¬ 53 ∣ 59373 := by decide
  have hexp :=
    has_exp_one_of_zmod 59373 59376 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 59373 59376 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 59373 59376 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      59373 59376 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      59373 59376 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_59767_59770 :
    HasPrimeWithExpOne (S_val 59767 59770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59767 59770 ∧ ¬ p ∣ (59770 - 59767) ∧
      ∃ (hNotC : ¬ p ∣ 59770) (hNotB : ¬ p ∣ 59767),
        order_of_C_B_inv_mod_p2 59770 59767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59767 59770 := by
  have hlt : (59767 : Nat) < 59770 := by decide
  have hcop : ¬ 443 ∣ (59770 - 59767) := by decide
  have heq : (59770 : ZMod 443) ^ 13 = (59767 : ZMod 443) ^ 13 := by decide
  have hne : (59770 : ZMod 196249) ^ 13 ≠ (59767 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 59770 := by decide
  have hB : ¬ 443 ∣ 59767 := by decide
  have hexp :=
    has_exp_one_of_zmod 59767 59770 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 59767 59770 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 59767 59770 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      59767 59770 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      59767 59770 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_60159_60162 :
    HasPrimeWithExpOne (S_val 60159 60162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60159 60162 ∧ ¬ p ∣ (60162 - 60159) ∧
      ∃ (hNotC : ¬ p ∣ 60162) (hNotB : ¬ p ∣ 60159),
        order_of_C_B_inv_mod_p2 60162 60159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60159 60162 := by
  have hlt : (60159 : Nat) < 60162 := by decide
  have hcop : ¬ 53 ∣ (60162 - 60159) := by decide
  have heq : (60162 : ZMod 53) ^ 13 = (60159 : ZMod 53) ^ 13 := by decide
  have hne : (60162 : ZMod 2809) ^ 13 ≠ (60159 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 60162 := by decide
  have hB : ¬ 53 ∣ 60159 := by decide
  have hexp :=
    has_exp_one_of_zmod 60159 60162 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 60159 60162 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 60159 60162 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      60159 60162 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      60159 60162 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_60530_60533 :
    HasPrimeWithExpOne (S_val 60530 60533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60530 60533 ∧ ¬ p ∣ (60533 - 60530) ∧
      ∃ (hNotC : ¬ p ∣ 60533) (hNotB : ¬ p ∣ 60530),
        order_of_C_B_inv_mod_p2 60533 60530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60530 60533 := by
  have hlt : (60530 : Nat) < 60533 := by decide
  have hcop : ¬ 53 ∣ (60533 - 60530) := by decide
  have heq : (60533 : ZMod 53) ^ 13 = (60530 : ZMod 53) ^ 13 := by decide
  have hne : (60533 : ZMod 2809) ^ 13 ≠ (60530 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 60533 := by decide
  have hB : ¬ 53 ∣ 60530 := by decide
  have hexp :=
    has_exp_one_of_zmod 60530 60533 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 60530 60533 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 60530 60533 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      60530 60533 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      60530 60533 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_60922_60925 :
    HasPrimeWithExpOne (S_val 60922 60925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60922 60925 ∧ ¬ p ∣ (60925 - 60922) ∧
      ∃ (hNotC : ¬ p ∣ 60925) (hNotB : ¬ p ∣ 60922),
        order_of_C_B_inv_mod_p2 60925 60922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60922 60925 := by
  have hlt : (60922 : Nat) < 60925 := by decide
  have hcop : ¬ 79 ∣ (60925 - 60922) := by decide
  have heq : (60925 : ZMod 79) ^ 13 = (60922 : ZMod 79) ^ 13 := by decide
  have hne : (60925 : ZMod 6241) ^ 13 ≠ (60922 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 60925 := by decide
  have hB : ¬ 79 ∣ 60922 := by decide
  have hexp :=
    has_exp_one_of_zmod 60922 60925 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 60922 60925 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 60922 60925 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      60922 60925 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      60922 60925 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_61286_61289 :
    HasPrimeWithExpOne (S_val 61286 61289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61286 61289 ∧ ¬ p ∣ (61289 - 61286) ∧
      ∃ (hNotC : ¬ p ∣ 61289) (hNotB : ¬ p ∣ 61286),
        order_of_C_B_inv_mod_p2 61289 61286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61286 61289 := by
  have hlt : (61286 : Nat) < 61289 := by decide
  have hcop : ¬ 53 ∣ (61289 - 61286) := by decide
  have heq : (61289 : ZMod 53) ^ 13 = (61286 : ZMod 53) ^ 13 := by decide
  have hne : (61289 : ZMod 2809) ^ 13 ≠ (61286 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 61289 := by decide
  have hB : ¬ 53 ∣ 61286 := by decide
  have hexp :=
    has_exp_one_of_zmod 61286 61289 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 61286 61289 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 61286 61289 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      61286 61289 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      61286 61289 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_61684_61687 :
    HasPrimeWithExpOne (S_val 61684 61687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61684 61687 ∧ ¬ p ∣ (61687 - 61684) ∧
      ∃ (hNotC : ¬ p ∣ 61687) (hNotB : ¬ p ∣ 61684),
        order_of_C_B_inv_mod_p2 61687 61684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61684 61687 := by
  have hlt : (61684 : Nat) < 61687 := by decide
  have hcop : ¬ 53 ∣ (61687 - 61684) := by decide
  have heq : (61687 : ZMod 53) ^ 13 = (61684 : ZMod 53) ^ 13 := by decide
  have hne : (61687 : ZMod 2809) ^ 13 ≠ (61684 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 61687 := by decide
  have hB : ¬ 53 ∣ 61684 := by decide
  have hexp :=
    has_exp_one_of_zmod 61684 61687 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 61684 61687 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 61684 61687 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      61684 61687 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      61684 61687 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_62056_62059 :
    HasPrimeWithExpOne (S_val 62056 62059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62056 62059 ∧ ¬ p ∣ (62059 - 62056) ∧
      ∃ (hNotC : ¬ p ∣ 62059) (hNotB : ¬ p ∣ 62056),
        order_of_C_B_inv_mod_p2 62059 62056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62056 62059 := by
  have hlt : (62056 : Nat) < 62059 := by decide
  have hcop : ¬ 53 ∣ (62059 - 62056) := by decide
  have heq : (62059 : ZMod 53) ^ 13 = (62056 : ZMod 53) ^ 13 := by decide
  have hne : (62059 : ZMod 2809) ^ 13 ≠ (62056 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 62059 := by decide
  have hB : ¬ 53 ∣ 62056 := by decide
  have hexp :=
    has_exp_one_of_zmod 62056 62059 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 62056 62059 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 62056 62059 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      62056 62059 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      62056 62059 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_62452_62455 :
    HasPrimeWithExpOne (S_val 62452 62455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62452 62455 ∧ ¬ p ∣ (62455 - 62452) ∧
      ∃ (hNotC : ¬ p ∣ 62455) (hNotB : ¬ p ∣ 62452),
        order_of_C_B_inv_mod_p2 62455 62452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62452 62455 := by
  have hlt : (62452 : Nat) < 62455 := by decide
  have hcop : ¬ 53 ∣ (62455 - 62452) := by decide
  have heq : (62455 : ZMod 53) ^ 13 = (62452 : ZMod 53) ^ 13 := by decide
  have hne : (62455 : ZMod 2809) ^ 13 ≠ (62452 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 62455 := by decide
  have hB : ¬ 53 ∣ 62452 := by decide
  have hexp :=
    has_exp_one_of_zmod 62452 62455 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 62452 62455 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 62452 62455 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      62452 62455 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      62452 62455 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_62849_62852 :
    HasPrimeWithExpOne (S_val 62849 62852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62849 62852 ∧ ¬ p ∣ (62852 - 62849) ∧
      ∃ (hNotC : ¬ p ∣ 62852) (hNotB : ¬ p ∣ 62849),
        order_of_C_B_inv_mod_p2 62852 62849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62849 62852 := by
  have hlt : (62849 : Nat) < 62852 := by decide
  have hcop : ¬ 53 ∣ (62852 - 62849) := by decide
  have heq : (62852 : ZMod 53) ^ 13 = (62849 : ZMod 53) ^ 13 := by decide
  have hne : (62852 : ZMod 2809) ^ 13 ≠ (62849 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 62852 := by decide
  have hB : ¬ 53 ∣ 62849 := by decide
  have hexp :=
    has_exp_one_of_zmod 62849 62852 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 62849 62852 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 62849 62852 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      62849 62852 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      62849 62852 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_63234_63237 :
    HasPrimeWithExpOne (S_val 63234 63237) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63234 63237 ∧ ¬ p ∣ (63237 - 63234) ∧
      ∃ (hNotC : ¬ p ∣ 63237) (hNotB : ¬ p ∣ 63234),
        order_of_C_B_inv_mod_p2 63237 63234 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63234 63237 := by
  have hlt : (63234 : Nat) < 63237 := by decide
  have hcop : ¬ 53 ∣ (63237 - 63234) := by decide
  have heq : (63237 : ZMod 53) ^ 13 = (63234 : ZMod 53) ^ 13 := by decide
  have hne : (63237 : ZMod 2809) ^ 13 ≠ (63234 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 63237 := by decide
  have hB : ¬ 53 ∣ 63234 := by decide
  have hexp :=
    has_exp_one_of_zmod 63234 63237 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 63234 63237 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 63234 63237 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      63234 63237 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      63234 63237 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_63609_63612 :
    HasPrimeWithExpOne (S_val 63609 63612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63609 63612 ∧ ¬ p ∣ (63612 - 63609) ∧
      ∃ (hNotC : ¬ p ∣ 63612) (hNotB : ¬ p ∣ 63609),
        order_of_C_B_inv_mod_p2 63612 63609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63609 63612 := by
  have hlt : (63609 : Nat) < 63612 := by decide
  have hcop : ¬ 79 ∣ (63612 - 63609) := by decide
  have heq : (63612 : ZMod 79) ^ 13 = (63609 : ZMod 79) ^ 13 := by decide
  have hne : (63612 : ZMod 6241) ^ 13 ≠ (63609 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 63612 := by decide
  have hB : ¬ 79 ∣ 63609 := by decide
  have hexp :=
    has_exp_one_of_zmod 63609 63612 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 63609 63612 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 63609 63612 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      63609 63612 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      63609 63612 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_63982_63985 :
    HasPrimeWithExpOne (S_val 63982 63985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63982 63985 ∧ ¬ p ∣ (63985 - 63982) ∧
      ∃ (hNotC : ¬ p ∣ 63985) (hNotB : ¬ p ∣ 63982),
        order_of_C_B_inv_mod_p2 63985 63982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63982 63985 := by
  have hlt : (63982 : Nat) < 63985 := by decide
  have hcop : ¬ 131 ∣ (63985 - 63982) := by decide
  have heq : (63985 : ZMod 131) ^ 13 = (63982 : ZMod 131) ^ 13 := by decide
  have hne : (63985 : ZMod 17161) ^ 13 ≠ (63982 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 63985 := by decide
  have hB : ¬ 131 ∣ 63982 := by decide
  have hexp :=
    has_exp_one_of_zmod 63982 63985 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 63982 63985 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 63982 63985 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      63982 63985 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      63982 63985 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_64381_64384 :
    HasPrimeWithExpOne (S_val 64381 64384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64381 64384 ∧ ¬ p ∣ (64384 - 64381) ∧
      ∃ (hNotC : ¬ p ∣ 64384) (hNotB : ¬ p ∣ 64381),
        order_of_C_B_inv_mod_p2 64384 64381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64381 64384 := by
  have hlt : (64381 : Nat) < 64384 := by decide
  have hcop : ¬ 131 ∣ (64384 - 64381) := by decide
  have heq : (64384 : ZMod 131) ^ 13 = (64381 : ZMod 131) ^ 13 := by decide
  have hne : (64384 : ZMod 17161) ^ 13 ≠ (64381 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 64384 := by decide
  have hB : ¬ 131 ∣ 64381 := by decide
  have hexp :=
    has_exp_one_of_zmod 64381 64384 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 64381 64384 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 64381 64384 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      64381 64384 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      64381 64384 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_64755_64758 :
    HasPrimeWithExpOne (S_val 64755 64758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64755 64758 ∧ ¬ p ∣ (64758 - 64755) ∧
      ∃ (hNotC : ¬ p ∣ 64758) (hNotB : ¬ p ∣ 64755),
        order_of_C_B_inv_mod_p2 64758 64755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64755 64758 := by
  have hlt : (64755 : Nat) < 64758 := by decide
  have hcop : ¬ 313 ∣ (64758 - 64755) := by decide
  have heq : (64758 : ZMod 313) ^ 13 = (64755 : ZMod 313) ^ 13 := by decide
  have hne : (64758 : ZMod 97969) ^ 13 ≠ (64755 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 64758 := by decide
  have hB : ¬ 313 ∣ 64755 := by decide
  have hexp :=
    has_exp_one_of_zmod 64755 64758 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 64755 64758 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 64755 64758 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      64755 64758 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      64755 64758 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_65129_65132 :
    HasPrimeWithExpOne (S_val 65129 65132) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65129 65132 ∧ ¬ p ∣ (65132 - 65129) ∧
      ∃ (hNotC : ¬ p ∣ 65132) (hNotB : ¬ p ∣ 65129),
        order_of_C_B_inv_mod_p2 65132 65129 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65129 65132 := by
  have hlt : (65129 : Nat) < 65132 := by decide
  have hcop : ¬ 53 ∣ (65132 - 65129) := by decide
  have heq : (65132 : ZMod 53) ^ 13 = (65129 : ZMod 53) ^ 13 := by decide
  have hne : (65132 : ZMod 2809) ^ 13 ≠ (65129 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 65132 := by decide
  have hB : ¬ 53 ∣ 65129 := by decide
  have hexp :=
    has_exp_one_of_zmod 65129 65132 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 65129 65132 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 65129 65132 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      65129 65132 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      65129 65132 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_65501_65504 :
    HasPrimeWithExpOne (S_val 65501 65504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65501 65504 ∧ ¬ p ∣ (65504 - 65501) ∧
      ∃ (hNotC : ¬ p ∣ 65504) (hNotB : ¬ p ∣ 65501),
        order_of_C_B_inv_mod_p2 65504 65501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65501 65504 := by
  have hlt : (65501 : Nat) < 65504 := by decide
  have hcop : ¬ 53 ∣ (65504 - 65501) := by decide
  have heq : (65504 : ZMod 53) ^ 13 = (65501 : ZMod 53) ^ 13 := by decide
  have hne : (65504 : ZMod 2809) ^ 13 ≠ (65501 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 65504 := by decide
  have hB : ¬ 53 ∣ 65501 := by decide
  have hexp :=
    has_exp_one_of_zmod 65501 65504 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 65501 65504 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 65501 65504 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      65501 65504 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      65501 65504 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_65883_65886 :
    HasPrimeWithExpOne (S_val 65883 65886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65883 65886 ∧ ¬ p ∣ (65886 - 65883) ∧
      ∃ (hNotC : ¬ p ∣ 65886) (hNotB : ¬ p ∣ 65883),
        order_of_C_B_inv_mod_p2 65886 65883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65883 65886 := by
  have hlt : (65883 : Nat) < 65886 := by decide
  have hcop : ¬ 53 ∣ (65886 - 65883) := by decide
  have heq : (65886 : ZMod 53) ^ 13 = (65883 : ZMod 53) ^ 13 := by decide
  have hne : (65886 : ZMod 2809) ^ 13 ≠ (65883 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 65886 := by decide
  have hB : ¬ 53 ∣ 65883 := by decide
  have hexp :=
    has_exp_one_of_zmod 65883 65886 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 65883 65886 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 65883 65886 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      65883 65886 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      65883 65886 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_66287_66290 :
    HasPrimeWithExpOne (S_val 66287 66290) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66287 66290 ∧ ¬ p ∣ (66290 - 66287) ∧
      ∃ (hNotC : ¬ p ∣ 66290) (hNotB : ¬ p ∣ 66287),
        order_of_C_B_inv_mod_p2 66290 66287 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66287 66290 := by
  have hlt : (66287 : Nat) < 66290 := by decide
  have hcop : ¬ 53 ∣ (66290 - 66287) := by decide
  have heq : (66290 : ZMod 53) ^ 13 = (66287 : ZMod 53) ^ 13 := by decide
  have hne : (66290 : ZMod 2809) ^ 13 ≠ (66287 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 66290 := by decide
  have hB : ¬ 53 ∣ 66287 := by decide
  have hexp :=
    has_exp_one_of_zmod 66287 66290 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 66287 66290 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 66287 66290 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      66287 66290 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      66287 66290 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_66655_66658 :
    HasPrimeWithExpOne (S_val 66655 66658) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66655 66658 ∧ ¬ p ∣ (66658 - 66655) ∧
      ∃ (hNotC : ¬ p ∣ 66658) (hNotB : ¬ p ∣ 66655),
        order_of_C_B_inv_mod_p2 66658 66655 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66655 66658 := by
  have hlt : (66655 : Nat) < 66658 := by decide
  have hcop : ¬ 79 ∣ (66658 - 66655) := by decide
  have heq : (66658 : ZMod 79) ^ 13 = (66655 : ZMod 79) ^ 13 := by decide
  have hne : (66658 : ZMod 6241) ^ 13 ≠ (66655 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 66658 := by decide
  have hB : ¬ 79 ∣ 66655 := by decide
  have hexp :=
    has_exp_one_of_zmod 66655 66658 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 66655 66658 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 66655 66658 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      66655 66658 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      66655 66658 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_67038_67041 :
    HasPrimeWithExpOne (S_val 67038 67041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67038 67041 ∧ ¬ p ∣ (67041 - 67038) ∧
      ∃ (hNotC : ¬ p ∣ 67041) (hNotB : ¬ p ∣ 67038),
        order_of_C_B_inv_mod_p2 67041 67038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67038 67041 := by
  have hlt : (67038 : Nat) < 67041 := by decide
  have hcop : ¬ 53 ∣ (67041 - 67038) := by decide
  have heq : (67041 : ZMod 53) ^ 13 = (67038 : ZMod 53) ^ 13 := by decide
  have hne : (67041 : ZMod 2809) ^ 13 ≠ (67038 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 67041 := by decide
  have hB : ¬ 53 ∣ 67038 := by decide
  have hexp :=
    has_exp_one_of_zmod 67038 67041 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 67038 67041 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 67038 67041 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      67038 67041 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      67038 67041 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_67426_67429 :
    HasPrimeWithExpOne (S_val 67426 67429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67426 67429 ∧ ¬ p ∣ (67429 - 67426) ∧
      ∃ (hNotC : ¬ p ∣ 67429) (hNotB : ¬ p ∣ 67426),
        order_of_C_B_inv_mod_p2 67429 67426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67426 67429 := by
  have hlt : (67426 : Nat) < 67429 := by decide
  have hcop : ¬ 53 ∣ (67429 - 67426) := by decide
  have heq : (67429 : ZMod 53) ^ 13 = (67426 : ZMod 53) ^ 13 := by decide
  have hne : (67429 : ZMod 2809) ^ 13 ≠ (67426 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 67429 := by decide
  have hB : ¬ 53 ∣ 67426 := by decide
  have hexp :=
    has_exp_one_of_zmod 67426 67429 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 67426 67429 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 67426 67429 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      67426 67429 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      67426 67429 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_67819_67822 :
    HasPrimeWithExpOne (S_val 67819 67822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67819 67822 ∧ ¬ p ∣ (67822 - 67819) ∧
      ∃ (hNotC : ¬ p ∣ 67822) (hNotB : ¬ p ∣ 67819),
        order_of_C_B_inv_mod_p2 67822 67819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67819 67822 := by
  have hlt : (67819 : Nat) < 67822 := by decide
  have hcop : ¬ 53 ∣ (67822 - 67819) := by decide
  have heq : (67822 : ZMod 53) ^ 13 = (67819 : ZMod 53) ^ 13 := by decide
  have hne : (67822 : ZMod 2809) ^ 13 ≠ (67819 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 67822 := by decide
  have hB : ¬ 53 ∣ 67819 := by decide
  have hexp :=
    has_exp_one_of_zmod 67819 67822 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 67819 67822 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 67819 67822 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      67819 67822 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      67819 67822 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_68203_68206 :
    HasPrimeWithExpOne (S_val 68203 68206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68203 68206 ∧ ¬ p ∣ (68206 - 68203) ∧
      ∃ (hNotC : ¬ p ∣ 68206) (hNotB : ¬ p ∣ 68203),
        order_of_C_B_inv_mod_p2 68206 68203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68203 68206 := by
  have hlt : (68203 : Nat) < 68206 := by decide
  have hcop : ¬ 53 ∣ (68206 - 68203) := by decide
  have heq : (68206 : ZMod 53) ^ 13 = (68203 : ZMod 53) ^ 13 := by decide
  have hne : (68206 : ZMod 2809) ^ 13 ≠ (68203 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 68206 := by decide
  have hB : ¬ 53 ∣ 68203 := by decide
  have hexp :=
    has_exp_one_of_zmod 68203 68206 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 68203 68206 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 68203 68206 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      68203 68206 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      68203 68206 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_68595_68598 :
    HasPrimeWithExpOne (S_val 68595 68598) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68595 68598 ∧ ¬ p ∣ (68598 - 68595) ∧
      ∃ (hNotC : ¬ p ∣ 68598) (hNotB : ¬ p ∣ 68595),
        order_of_C_B_inv_mod_p2 68598 68595 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68595 68598 := by
  have hlt : (68595 : Nat) < 68598 := by decide
  have hcop : ¬ 53 ∣ (68598 - 68595) := by decide
  have heq : (68598 : ZMod 53) ^ 13 = (68595 : ZMod 53) ^ 13 := by decide
  have hne : (68598 : ZMod 2809) ^ 13 ≠ (68595 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 68598 := by decide
  have hB : ¬ 53 ∣ 68595 := by decide
  have hexp :=
    has_exp_one_of_zmod 68595 68598 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 68595 68598 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 68595 68598 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      68595 68598 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      68595 68598 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_68980_68983 :
    HasPrimeWithExpOne (S_val 68980 68983) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68980 68983 ∧ ¬ p ∣ (68983 - 68980) ∧
      ∃ (hNotC : ¬ p ∣ 68983) (hNotB : ¬ p ∣ 68980),
        order_of_C_B_inv_mod_p2 68983 68980 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68980 68983 := by
  have hlt : (68980 : Nat) < 68983 := by decide
  have hcop : ¬ 79 ∣ (68983 - 68980) := by decide
  have heq : (68983 : ZMod 79) ^ 13 = (68980 : ZMod 79) ^ 13 := by decide
  have hne : (68983 : ZMod 6241) ^ 13 ≠ (68980 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 68983 := by decide
  have hB : ¬ 79 ∣ 68980 := by decide
  have hexp :=
    has_exp_one_of_zmod 68980 68983 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 68980 68983 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 68980 68983 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      68980 68983 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      68980 68983 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_69387_69390 :
    HasPrimeWithExpOne (S_val 69387 69390) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69387 69390 ∧ ¬ p ∣ (69390 - 69387) ∧
      ∃ (hNotC : ¬ p ∣ 69390) (hNotB : ¬ p ∣ 69387),
        order_of_C_B_inv_mod_p2 69390 69387 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69387 69390 := by
  have hlt : (69387 : Nat) < 69390 := by decide
  have hcop : ¬ 53 ∣ (69390 - 69387) := by decide
  have heq : (69390 : ZMod 53) ^ 13 = (69387 : ZMod 53) ^ 13 := by decide
  have hne : (69390 : ZMod 2809) ^ 13 ≠ (69387 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 69390 := by decide
  have hB : ¬ 53 ∣ 69387 := by decide
  have hexp :=
    has_exp_one_of_zmod 69387 69390 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 69387 69390 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 69387 69390 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      69387 69390 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      69387 69390 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_69770_69773 :
    HasPrimeWithExpOne (S_val 69770 69773) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69770 69773 ∧ ¬ p ∣ (69773 - 69770) ∧
      ∃ (hNotC : ¬ p ∣ 69773) (hNotB : ¬ p ∣ 69770),
        order_of_C_B_inv_mod_p2 69773 69770 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69770 69773 := by
  have hlt : (69770 : Nat) < 69773 := by decide
  have hcop : ¬ 79 ∣ (69773 - 69770) := by decide
  have heq : (69773 : ZMod 79) ^ 13 = (69770 : ZMod 79) ^ 13 := by decide
  have hne : (69773 : ZMod 6241) ^ 13 ≠ (69770 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 69773 := by decide
  have hB : ¬ 79 ∣ 69770 := by decide
  have hexp :=
    has_exp_one_of_zmod 69770 69773 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 69770 69773 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 69770 69773 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      69770 69773 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      69770 69773 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_70145_70148 :
    HasPrimeWithExpOne (S_val 70145 70148) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70145 70148 ∧ ¬ p ∣ (70148 - 70145) ∧
      ∃ (hNotC : ¬ p ∣ 70148) (hNotB : ¬ p ∣ 70145),
        order_of_C_B_inv_mod_p2 70148 70145 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70145 70148 := by
  have hlt : (70145 : Nat) < 70148 := by decide
  have hcop : ¬ 131 ∣ (70148 - 70145) := by decide
  have heq : (70148 : ZMod 131) ^ 13 = (70145 : ZMod 131) ^ 13 := by decide
  have hne : (70148 : ZMod 17161) ^ 13 ≠ (70145 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 70148 := by decide
  have hB : ¬ 131 ∣ 70145 := by decide
  have hexp :=
    has_exp_one_of_zmod 70145 70148 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 70145 70148 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 70145 70148 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      70145 70148 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      70145 70148 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_70549_70552 :
    HasPrimeWithExpOne (S_val 70549 70552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70549 70552 ∧ ¬ p ∣ (70552 - 70549) ∧
      ∃ (hNotC : ¬ p ∣ 70552) (hNotB : ¬ p ∣ 70549),
        order_of_C_B_inv_mod_p2 70552 70549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70549 70552 := by
  have hlt : (70549 : Nat) < 70552 := by decide
  have hcop : ¬ 53 ∣ (70552 - 70549) := by decide
  have heq : (70552 : ZMod 53) ^ 13 = (70549 : ZMod 53) ^ 13 := by decide
  have hne : (70552 : ZMod 2809) ^ 13 ≠ (70549 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 70552 := by decide
  have hB : ¬ 53 ∣ 70549 := by decide
  have hexp :=
    has_exp_one_of_zmod 70549 70552 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 70549 70552 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 70549 70552 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      70549 70552 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      70549 70552 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_70931_70934 :
    HasPrimeWithExpOne (S_val 70931 70934) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70931 70934 ∧ ¬ p ∣ (70934 - 70931) ∧
      ∃ (hNotC : ¬ p ∣ 70934) (hNotB : ¬ p ∣ 70931),
        order_of_C_B_inv_mod_p2 70934 70931 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70931 70934 := by
  have hlt : (70931 : Nat) < 70934 := by decide
  have hcop : ¬ 131 ∣ (70934 - 70931) := by decide
  have heq : (70934 : ZMod 131) ^ 13 = (70931 : ZMod 131) ^ 13 := by decide
  have hne : (70934 : ZMod 17161) ^ 13 ≠ (70931 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 70934 := by decide
  have hB : ¬ 131 ∣ 70931 := by decide
  have hexp :=
    has_exp_one_of_zmod 70931 70934 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 70931 70934 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 70931 70934 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      70931 70934 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      70931 70934 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_71321_71324 :
    HasPrimeWithExpOne (S_val 71321 71324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71321 71324 ∧ ¬ p ∣ (71324 - 71321) ∧
      ∃ (hNotC : ¬ p ∣ 71324) (hNotB : ¬ p ∣ 71321),
        order_of_C_B_inv_mod_p2 71324 71321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71321 71324 := by
  have hlt : (71321 : Nat) < 71324 := by decide
  have hcop : ¬ 79 ∣ (71324 - 71321) := by decide
  have heq : (71324 : ZMod 79) ^ 13 = (71321 : ZMod 79) ^ 13 := by decide
  have hne : (71324 : ZMod 6241) ^ 13 ≠ (71321 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 71324 := by decide
  have hB : ¬ 79 ∣ 71321 := by decide
  have hexp :=
    has_exp_one_of_zmod 71321 71324 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 71321 71324 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 71321 71324 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      71321 71324 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      71321 71324 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_71710_71713 :
    HasPrimeWithExpOne (S_val 71710 71713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71710 71713 ∧ ¬ p ∣ (71713 - 71710) ∧
      ∃ (hNotC : ¬ p ∣ 71713) (hNotB : ¬ p ∣ 71710),
        order_of_C_B_inv_mod_p2 71713 71710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71710 71713 := by
  have hlt : (71710 : Nat) < 71713 := by decide
  have hcop : ¬ 313 ∣ (71713 - 71710) := by decide
  have heq : (71713 : ZMod 313) ^ 13 = (71710 : ZMod 313) ^ 13 := by decide
  have hne : (71713 : ZMod 97969) ^ 13 ≠ (71710 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 71713 := by decide
  have hB : ¬ 313 ∣ 71710 := by decide
  have hexp :=
    has_exp_one_of_zmod 71710 71713 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 71710 71713 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 71710 71713 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      71710 71713 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      71710 71713 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_72104_72107 :
    HasPrimeWithExpOne (S_val 72104 72107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72104 72107 ∧ ¬ p ∣ (72107 - 72104) ∧
      ∃ (hNotC : ¬ p ∣ 72107) (hNotB : ¬ p ∣ 72104),
        order_of_C_B_inv_mod_p2 72107 72104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72104 72107 := by
  have hlt : (72104 : Nat) < 72107 := by decide
  have hcop : ¬ 131 ∣ (72107 - 72104) := by decide
  have heq : (72107 : ZMod 131) ^ 13 = (72104 : ZMod 131) ^ 13 := by decide
  have hne : (72107 : ZMod 17161) ^ 13 ≠ (72104 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 72107 := by decide
  have hB : ¬ 131 ∣ 72104 := by decide
  have hexp :=
    has_exp_one_of_zmod 72104 72107 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 72104 72107 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 72104 72107 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      72104 72107 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      72104 72107 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_72497_72500 :
    HasPrimeWithExpOne (S_val 72497 72500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72497 72500 ∧ ¬ p ∣ (72500 - 72497) ∧
      ∃ (hNotC : ¬ p ∣ 72500) (hNotB : ¬ p ∣ 72497),
        order_of_C_B_inv_mod_p2 72500 72497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72497 72500 := by
  have hlt : (72497 : Nat) < 72500 := by decide
  have hcop : ¬ 53 ∣ (72500 - 72497) := by decide
  have heq : (72500 : ZMod 53) ^ 13 = (72497 : ZMod 53) ^ 13 := by decide
  have hne : (72500 : ZMod 2809) ^ 13 ≠ (72497 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 72500 := by decide
  have hB : ¬ 53 ∣ 72497 := by decide
  have hexp :=
    has_exp_one_of_zmod 72497 72500 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 72497 72500 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 72497 72500 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      72497 72500 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      72497 72500 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_72899_72902 :
    HasPrimeWithExpOne (S_val 72899 72902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72899 72902 ∧ ¬ p ∣ (72902 - 72899) ∧
      ∃ (hNotC : ¬ p ∣ 72902) (hNotB : ¬ p ∣ 72899),
        order_of_C_B_inv_mod_p2 72902 72899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72899 72902 := by
  have hlt : (72899 : Nat) < 72902 := by decide
  have hcop : ¬ 547 ∣ (72902 - 72899) := by decide
  have heq : (72902 : ZMod 547) ^ 13 = (72899 : ZMod 547) ^ 13 := by decide
  have hne : (72902 : ZMod 299209) ^ 13 ≠ (72899 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 72902 := by decide
  have hB : ¬ 547 ∣ 72899 := by decide
  have hexp :=
    has_exp_one_of_zmod 72899 72902 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 72899 72902 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 72899 72902 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      72899 72902 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      72899 72902 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_73286_73289 :
    HasPrimeWithExpOne (S_val 73286 73289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73286 73289 ∧ ¬ p ∣ (73289 - 73286) ∧
      ∃ (hNotC : ¬ p ∣ 73289) (hNotB : ¬ p ∣ 73286),
        order_of_C_B_inv_mod_p2 73289 73286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73286 73289 := by
  have hlt : (73286 : Nat) < 73289 := by decide
  have hcop : ¬ 53 ∣ (73289 - 73286) := by decide
  have heq : (73289 : ZMod 53) ^ 13 = (73286 : ZMod 53) ^ 13 := by decide
  have hne : (73289 : ZMod 2809) ^ 13 ≠ (73286 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 73289 := by decide
  have hB : ¬ 53 ∣ 73286 := by decide
  have hexp :=
    has_exp_one_of_zmod 73286 73289 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 73286 73289 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 73286 73289 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      73286 73289 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      73286 73289 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_73675_73678 :
    HasPrimeWithExpOne (S_val 73675 73678) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73675 73678 ∧ ¬ p ∣ (73678 - 73675) ∧
      ∃ (hNotC : ¬ p ∣ 73678) (hNotB : ¬ p ∣ 73675),
        order_of_C_B_inv_mod_p2 73678 73675 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73675 73678 := by
  have hlt : (73675 : Nat) < 73678 := by decide
  have hcop : ¬ 53 ∣ (73678 - 73675) := by decide
  have heq : (73678 : ZMod 53) ^ 13 = (73675 : ZMod 53) ^ 13 := by decide
  have hne : (73678 : ZMod 2809) ^ 13 ≠ (73675 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 73678 := by decide
  have hB : ¬ 53 ∣ 73675 := by decide
  have hexp :=
    has_exp_one_of_zmod 73675 73678 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 73675 73678 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 73675 73678 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      73675 73678 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      73675 73678 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_74041_74044 :
    HasPrimeWithExpOne (S_val 74041 74044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74041 74044 ∧ ¬ p ∣ (74044 - 74041) ∧
      ∃ (hNotC : ¬ p ∣ 74044) (hNotB : ¬ p ∣ 74041),
        order_of_C_B_inv_mod_p2 74044 74041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74041 74044 := by
  have hlt : (74041 : Nat) < 74044 := by decide
  have hcop : ¬ 79 ∣ (74044 - 74041) := by decide
  have heq : (74044 : ZMod 79) ^ 13 = (74041 : ZMod 79) ^ 13 := by decide
  have hne : (74044 : ZMod 6241) ^ 13 ≠ (74041 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 74044 := by decide
  have hB : ¬ 79 ∣ 74041 := by decide
  have hexp :=
    has_exp_one_of_zmod 74041 74044 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 74041 74044 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 74041 74044 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      74041 74044 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      74041 74044 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_74436_74439 :
    HasPrimeWithExpOne (S_val 74436 74439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74436 74439 ∧ ¬ p ∣ (74439 - 74436) ∧
      ∃ (hNotC : ¬ p ∣ 74439) (hNotB : ¬ p ∣ 74436),
        order_of_C_B_inv_mod_p2 74439 74436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74436 74439 := by
  have hlt : (74436 : Nat) < 74439 := by decide
  have hcop : ¬ 79 ∣ (74439 - 74436) := by decide
  have heq : (74439 : ZMod 79) ^ 13 = (74436 : ZMod 79) ^ 13 := by decide
  have hne : (74439 : ZMod 6241) ^ 13 ≠ (74436 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 74439 := by decide
  have hB : ¬ 79 ∣ 74436 := by decide
  have hexp :=
    has_exp_one_of_zmod 74436 74439 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 74436 74439 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 74436 74439 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      74436 74439 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      74436 74439 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_74820_74823 :
    HasPrimeWithExpOne (S_val 74820 74823) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74820 74823 ∧ ¬ p ∣ (74823 - 74820) ∧
      ∃ (hNotC : ¬ p ∣ 74823) (hNotB : ¬ p ∣ 74820),
        order_of_C_B_inv_mod_p2 74823 74820 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74820 74823 := by
  have hlt : (74820 : Nat) < 74823 := by decide
  have hcop : ¬ 53 ∣ (74823 - 74820) := by decide
  have heq : (74823 : ZMod 53) ^ 13 = (74820 : ZMod 53) ^ 13 := by decide
  have hne : (74823 : ZMod 2809) ^ 13 ≠ (74820 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 74823 := by decide
  have hB : ¬ 53 ∣ 74820 := by decide
  have hexp :=
    has_exp_one_of_zmod 74820 74823 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 74820 74823 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 74820 74823 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      74820 74823 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      74820 74823 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_75171_75174 :
    HasPrimeWithExpOne (S_val 75171 75174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75171 75174 ∧ ¬ p ∣ (75174 - 75171) ∧
      ∃ (hNotC : ¬ p ∣ 75174) (hNotB : ¬ p ∣ 75171),
        order_of_C_B_inv_mod_p2 75174 75171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75171 75174 := by
  have hlt : (75171 : Nat) < 75174 := by decide
  have hcop : ¬ 79 ∣ (75174 - 75171) := by decide
  have heq : (75174 : ZMod 79) ^ 13 = (75171 : ZMod 79) ^ 13 := by decide
  have hne : (75174 : ZMod 6241) ^ 13 ≠ (75171 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 75174 := by decide
  have hB : ¬ 79 ∣ 75171 := by decide
  have hexp :=
    has_exp_one_of_zmod 75171 75174 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 75171 75174 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 75171 75174 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      75171 75174 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      75171 75174 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_75575_75578 :
    HasPrimeWithExpOne (S_val 75575 75578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75575 75578 ∧ ¬ p ∣ (75578 - 75575) ∧
      ∃ (hNotC : ¬ p ∣ 75578) (hNotB : ¬ p ∣ 75575),
        order_of_C_B_inv_mod_p2 75578 75575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75575 75578 := by
  have hlt : (75575 : Nat) < 75578 := by decide
  have hcop : ¬ 131 ∣ (75578 - 75575) := by decide
  have heq : (75578 : ZMod 131) ^ 13 = (75575 : ZMod 131) ^ 13 := by decide
  have hne : (75578 : ZMod 17161) ^ 13 ≠ (75575 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 75578 := by decide
  have hB : ¬ 131 ∣ 75575 := by decide
  have hexp :=
    has_exp_one_of_zmod 75575 75578 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 75575 75578 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 75575 75578 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      75575 75578 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      75575 75578 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_75953_75956 :
    HasPrimeWithExpOne (S_val 75953 75956) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75953 75956 ∧ ¬ p ∣ (75956 - 75953) ∧
      ∃ (hNotC : ¬ p ∣ 75956) (hNotB : ¬ p ∣ 75953),
        order_of_C_B_inv_mod_p2 75956 75953 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75953 75956 := by
  have hlt : (75953 : Nat) < 75956 := by decide
  have hcop : ¬ 53 ∣ (75956 - 75953) := by decide
  have heq : (75956 : ZMod 53) ^ 13 = (75953 : ZMod 53) ^ 13 := by decide
  have hne : (75956 : ZMod 2809) ^ 13 ≠ (75953 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 75956 := by decide
  have hB : ¬ 53 ∣ 75953 := by decide
  have hexp :=
    has_exp_one_of_zmod 75953 75956 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 75953 75956 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 75953 75956 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      75953 75956 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      75953 75956 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_76337_76340 :
    HasPrimeWithExpOne (S_val 76337 76340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76337 76340 ∧ ¬ p ∣ (76340 - 76337) ∧
      ∃ (hNotC : ¬ p ∣ 76340) (hNotB : ¬ p ∣ 76337),
        order_of_C_B_inv_mod_p2 76340 76337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76337 76340 := by
  have hlt : (76337 : Nat) < 76340 := by decide
  have hcop : ¬ 79 ∣ (76340 - 76337) := by decide
  have heq : (76340 : ZMod 79) ^ 13 = (76337 : ZMod 79) ^ 13 := by decide
  have hne : (76340 : ZMod 6241) ^ 13 ≠ (76337 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 76340 := by decide
  have hB : ¬ 79 ∣ 76337 := by decide
  have hexp :=
    has_exp_one_of_zmod 76337 76340 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 76337 76340 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 76337 76340 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      76337 76340 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      76337 76340 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_76728_76731 :
    HasPrimeWithExpOne (S_val 76728 76731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76728 76731 ∧ ¬ p ∣ (76731 - 76728) ∧
      ∃ (hNotC : ¬ p ∣ 76731) (hNotB : ¬ p ∣ 76728),
        order_of_C_B_inv_mod_p2 76731 76728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76728 76731 := by
  have hlt : (76728 : Nat) < 76731 := by decide
  have hcop : ¬ 53 ∣ (76731 - 76728) := by decide
  have heq : (76731 : ZMod 53) ^ 13 = (76728 : ZMod 53) ^ 13 := by decide
  have hne : (76731 : ZMod 2809) ^ 13 ≠ (76728 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 76731 := by decide
  have hB : ¬ 53 ∣ 76728 := by decide
  have hexp :=
    has_exp_one_of_zmod 76728 76731 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 76728 76731 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 76728 76731 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      76728 76731 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      76728 76731 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_77118_77121 :
    HasPrimeWithExpOne (S_val 77118 77121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77118 77121 ∧ ¬ p ∣ (77121 - 77118) ∧
      ∃ (hNotC : ¬ p ∣ 77121) (hNotB : ¬ p ∣ 77118),
        order_of_C_B_inv_mod_p2 77121 77118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77118 77121 := by
  have hlt : (77118 : Nat) < 77121 := by decide
  have hcop : ¬ 79 ∣ (77121 - 77118) := by decide
  have heq : (77121 : ZMod 79) ^ 13 = (77118 : ZMod 79) ^ 13 := by decide
  have hne : (77121 : ZMod 6241) ^ 13 ≠ (77118 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 77121 := by decide
  have hB : ¬ 79 ∣ 77118 := by decide
  have hexp :=
    has_exp_one_of_zmod 77118 77121 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 77118 77121 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 77118 77121 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      77118 77121 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      77118 77121 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_77512_77515 :
    HasPrimeWithExpOne (S_val 77512 77515) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77512 77515 ∧ ¬ p ∣ (77515 - 77512) ∧
      ∃ (hNotC : ¬ p ∣ 77515) (hNotB : ¬ p ∣ 77512),
        order_of_C_B_inv_mod_p2 77515 77512 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77512 77515 := by
  have hlt : (77512 : Nat) < 77515 := by decide
  have hcop : ¬ 79 ∣ (77515 - 77512) := by decide
  have heq : (77515 : ZMod 79) ^ 13 = (77512 : ZMod 79) ^ 13 := by decide
  have hne : (77515 : ZMod 6241) ^ 13 ≠ (77512 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 77515 := by decide
  have hB : ¬ 79 ∣ 77512 := by decide
  have hexp :=
    has_exp_one_of_zmod 77512 77515 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 77512 77515 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 77512 77515 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      77512 77515 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      77512 77515 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_77902_77905 :
    HasPrimeWithExpOne (S_val 77902 77905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77902 77905 ∧ ¬ p ∣ (77905 - 77902) ∧
      ∃ (hNotC : ¬ p ∣ 77905) (hNotB : ¬ p ∣ 77902),
        order_of_C_B_inv_mod_p2 77905 77902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77902 77905 := by
  have hlt : (77902 : Nat) < 77905 := by decide
  have hcop : ¬ 53 ∣ (77905 - 77902) := by decide
  have heq : (77905 : ZMod 53) ^ 13 = (77902 : ZMod 53) ^ 13 := by decide
  have hne : (77905 : ZMod 2809) ^ 13 ≠ (77902 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 77905 := by decide
  have hB : ¬ 53 ∣ 77902 := by decide
  have hexp :=
    has_exp_one_of_zmod 77902 77905 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 77902 77905 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 77902 77905 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      77902 77905 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      77902 77905 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_78291_78294 :
    HasPrimeWithExpOne (S_val 78291 78294) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78291 78294 ∧ ¬ p ∣ (78294 - 78291) ∧
      ∃ (hNotC : ¬ p ∣ 78294) (hNotB : ¬ p ∣ 78291),
        order_of_C_B_inv_mod_p2 78294 78291 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78291 78294 := by
  have hlt : (78291 : Nat) < 78294 := by decide
  have hcop : ¬ 53 ∣ (78294 - 78291) := by decide
  have heq : (78294 : ZMod 53) ^ 13 = (78291 : ZMod 53) ^ 13 := by decide
  have hne : (78294 : ZMod 2809) ^ 13 ≠ (78291 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 78294 := by decide
  have hB : ¬ 53 ∣ 78291 := by decide
  have hexp :=
    has_exp_one_of_zmod 78291 78294 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 78291 78294 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 78291 78294 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      78291 78294 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      78291 78294 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_78678_78681 :
    HasPrimeWithExpOne (S_val 78678 78681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78678 78681 ∧ ¬ p ∣ (78681 - 78678) ∧
      ∃ (hNotC : ¬ p ∣ 78681) (hNotB : ¬ p ∣ 78678),
        order_of_C_B_inv_mod_p2 78681 78678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78678 78681 := by
  have hlt : (78678 : Nat) < 78681 := by decide
  have hcop : ¬ 157 ∣ (78681 - 78678) := by decide
  have heq : (78681 : ZMod 157) ^ 13 = (78678 : ZMod 157) ^ 13 := by decide
  have hne : (78681 : ZMod 24649) ^ 13 ≠ (78678 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 78681 := by decide
  have hB : ¬ 157 ∣ 78678 := by decide
  have hexp :=
    has_exp_one_of_zmod 78678 78681 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 78678 78681 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 78678 78681 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      78678 78681 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      78678 78681 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_79069_79072 :
    HasPrimeWithExpOne (S_val 79069 79072) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79069 79072 ∧ ¬ p ∣ (79072 - 79069) ∧
      ∃ (hNotC : ¬ p ∣ 79072) (hNotB : ¬ p ∣ 79069),
        order_of_C_B_inv_mod_p2 79072 79069 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79069 79072 := by
  have hlt : (79069 : Nat) < 79072 := by decide
  have hcop : ¬ 53 ∣ (79072 - 79069) := by decide
  have heq : (79072 : ZMod 53) ^ 13 = (79069 : ZMod 53) ^ 13 := by decide
  have hne : (79072 : ZMod 2809) ^ 13 ≠ (79069 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 79072 := by decide
  have hB : ¬ 53 ∣ 79069 := by decide
  have hexp :=
    has_exp_one_of_zmod 79069 79072 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 79069 79072 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 79069 79072 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      79069 79072 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      79069 79072 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_79454_79457 :
    HasPrimeWithExpOne (S_val 79454 79457) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79454 79457 ∧ ¬ p ∣ (79457 - 79454) ∧
      ∃ (hNotC : ¬ p ∣ 79457) (hNotB : ¬ p ∣ 79454),
        order_of_C_B_inv_mod_p2 79457 79454 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79454 79457 := by
  have hlt : (79454 : Nat) < 79457 := by decide
  have hcop : ¬ 131 ∣ (79457 - 79454) := by decide
  have heq : (79457 : ZMod 131) ^ 13 = (79454 : ZMod 131) ^ 13 := by decide
  have hne : (79457 : ZMod 17161) ^ 13 ≠ (79454 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 79457 := by decide
  have hB : ¬ 131 ∣ 79454 := by decide
  have hexp :=
    has_exp_one_of_zmod 79454 79457 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 79454 79457 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 79454 79457 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      79454 79457 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      79454 79457 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_79843_79846 :
    HasPrimeWithExpOne (S_val 79843 79846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79843 79846 ∧ ¬ p ∣ (79846 - 79843) ∧
      ∃ (hNotC : ¬ p ∣ 79846) (hNotB : ¬ p ∣ 79843),
        order_of_C_B_inv_mod_p2 79846 79843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79843 79846 := by
  have hlt : (79843 : Nat) < 79846 := by decide
  have hcop : ¬ 79 ∣ (79846 - 79843) := by decide
  have heq : (79846 : ZMod 79) ^ 13 = (79843 : ZMod 79) ^ 13 := by decide
  have hne : (79846 : ZMod 6241) ^ 13 ≠ (79843 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 79846 := by decide
  have hB : ¬ 79 ∣ 79843 := by decide
  have hexp :=
    has_exp_one_of_zmod 79843 79846 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 79843 79846 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 79843 79846 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      79843 79846 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      79843 79846 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_80233_80236 :
    HasPrimeWithExpOne (S_val 80233 80236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80233 80236 ∧ ¬ p ∣ (80236 - 80233) ∧
      ∃ (hNotC : ¬ p ∣ 80236) (hNotB : ¬ p ∣ 80233),
        order_of_C_B_inv_mod_p2 80236 80233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80233 80236 := by
  have hlt : (80233 : Nat) < 80236 := by decide
  have hcop : ¬ 53 ∣ (80236 - 80233) := by decide
  have heq : (80236 : ZMod 53) ^ 13 = (80233 : ZMod 53) ^ 13 := by decide
  have hne : (80236 : ZMod 2809) ^ 13 ≠ (80233 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 80236 := by decide
  have hB : ¬ 53 ∣ 80233 := by decide
  have hexp :=
    has_exp_one_of_zmod 80233 80236 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 80233 80236 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 80233 80236 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      80233 80236 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      80233 80236 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_80625_80628 :
    HasPrimeWithExpOne (S_val 80625 80628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80625 80628 ∧ ¬ p ∣ (80628 - 80625) ∧
      ∃ (hNotC : ¬ p ∣ 80628) (hNotB : ¬ p ∣ 80625),
        order_of_C_B_inv_mod_p2 80628 80625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80625 80628 := by
  have hlt : (80625 : Nat) < 80628 := by decide
  have hcop : ¬ 131 ∣ (80628 - 80625) := by decide
  have heq : (80628 : ZMod 131) ^ 13 = (80625 : ZMod 131) ^ 13 := by decide
  have hne : (80628 : ZMod 17161) ^ 13 ≠ (80625 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 80628 := by decide
  have hB : ¬ 131 ∣ 80625 := by decide
  have hexp :=
    has_exp_one_of_zmod 80625 80628 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 80625 80628 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 80625 80628 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      80625 80628 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      80625 80628 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_81029_81032 :
    HasPrimeWithExpOne (S_val 81029 81032) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81029 81032 ∧ ¬ p ∣ (81032 - 81029) ∧
      ∃ (hNotC : ¬ p ∣ 81032) (hNotB : ¬ p ∣ 81029),
        order_of_C_B_inv_mod_p2 81032 81029 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81029 81032 := by
  have hlt : (81029 : Nat) < 81032 := by decide
  have hcop : ¬ 53 ∣ (81032 - 81029) := by decide
  have heq : (81032 : ZMod 53) ^ 13 = (81029 : ZMod 53) ^ 13 := by decide
  have hne : (81032 : ZMod 2809) ^ 13 ≠ (81029 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 81032 := by decide
  have hB : ¬ 53 ∣ 81029 := by decide
  have hexp :=
    has_exp_one_of_zmod 81029 81032 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 81029 81032 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 81029 81032 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      81029 81032 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      81029 81032 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_81411_81414 :
    HasPrimeWithExpOne (S_val 81411 81414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81411 81414 ∧ ¬ p ∣ (81414 - 81411) ∧
      ∃ (hNotC : ¬ p ∣ 81414) (hNotB : ¬ p ∣ 81411),
        order_of_C_B_inv_mod_p2 81414 81411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81411 81414 := by
  have hlt : (81411 : Nat) < 81414 := by decide
  have hcop : ¬ 131 ∣ (81414 - 81411) := by decide
  have heq : (81414 : ZMod 131) ^ 13 = (81411 : ZMod 131) ^ 13 := by decide
  have hne : (81414 : ZMod 17161) ^ 13 ≠ (81411 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 81414 := by decide
  have hB : ¬ 131 ∣ 81411 := by decide
  have hexp :=
    has_exp_one_of_zmod 81411 81414 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 81411 81414 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 81411 81414 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      81411 81414 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      81411 81414 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_81782_81785 :
    HasPrimeWithExpOne (S_val 81782 81785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81782 81785 ∧ ¬ p ∣ (81785 - 81782) ∧
      ∃ (hNotC : ¬ p ∣ 81785) (hNotB : ¬ p ∣ 81782),
        order_of_C_B_inv_mod_p2 81785 81782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81782 81785 := by
  have hlt : (81782 : Nat) < 81785 := by decide
  have hcop : ¬ 131 ∣ (81785 - 81782) := by decide
  have heq : (81785 : ZMod 131) ^ 13 = (81782 : ZMod 131) ^ 13 := by decide
  have hne : (81785 : ZMod 17161) ^ 13 ≠ (81782 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 81785 := by decide
  have hB : ¬ 131 ∣ 81782 := by decide
  have hexp :=
    has_exp_one_of_zmod 81782 81785 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 81782 81785 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 81782 81785 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      81782 81785 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      81782 81785 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_82156_82159 :
    HasPrimeWithExpOne (S_val 82156 82159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82156 82159 ∧ ¬ p ∣ (82159 - 82156) ∧
      ∃ (hNotC : ¬ p ∣ 82159) (hNotB : ¬ p ∣ 82156),
        order_of_C_B_inv_mod_p2 82159 82156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82156 82159 := by
  have hlt : (82156 : Nat) < 82159 := by decide
  have hcop : ¬ 53 ∣ (82159 - 82156) := by decide
  have heq : (82159 : ZMod 53) ^ 13 = (82156 : ZMod 53) ^ 13 := by decide
  have hne : (82159 : ZMod 2809) ^ 13 ≠ (82156 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 82159 := by decide
  have hB : ¬ 53 ∣ 82156 := by decide
  have hexp :=
    has_exp_one_of_zmod 82156 82159 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 82156 82159 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 82156 82159 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      82156 82159 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      82156 82159 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_82540_82543 :
    HasPrimeWithExpOne (S_val 82540 82543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82540 82543 ∧ ¬ p ∣ (82543 - 82540) ∧
      ∃ (hNotC : ¬ p ∣ 82543) (hNotB : ¬ p ∣ 82540),
        order_of_C_B_inv_mod_p2 82543 82540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82540 82543 := by
  have hlt : (82540 : Nat) < 82543 := by decide
  have hcop : ¬ 79 ∣ (82543 - 82540) := by decide
  have heq : (82543 : ZMod 79) ^ 13 = (82540 : ZMod 79) ^ 13 := by decide
  have hne : (82543 : ZMod 6241) ^ 13 ≠ (82540 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 82543 := by decide
  have hB : ¬ 79 ∣ 82540 := by decide
  have hexp :=
    has_exp_one_of_zmod 82540 82543 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 82540 82543 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 82540 82543 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      82540 82543 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      82540 82543 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_82938_82941 :
    HasPrimeWithExpOne (S_val 82938 82941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82938 82941 ∧ ¬ p ∣ (82941 - 82938) ∧
      ∃ (hNotC : ¬ p ∣ 82941) (hNotB : ¬ p ∣ 82938),
        order_of_C_B_inv_mod_p2 82941 82938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82938 82941 := by
  have hlt : (82938 : Nat) < 82941 := by decide
  have hcop : ¬ 53 ∣ (82941 - 82938) := by decide
  have heq : (82941 : ZMod 53) ^ 13 = (82938 : ZMod 53) ^ 13 := by decide
  have hne : (82941 : ZMod 2809) ^ 13 ≠ (82938 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 82941 := by decide
  have hB : ¬ 53 ∣ 82938 := by decide
  have hexp :=
    has_exp_one_of_zmod 82938 82941 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 82938 82941 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 82938 82941 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      82938 82941 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      82938 82941 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_83321_83324 :
    HasPrimeWithExpOne (S_val 83321 83324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83321 83324 ∧ ¬ p ∣ (83324 - 83321) ∧
      ∃ (hNotC : ¬ p ∣ 83324) (hNotB : ¬ p ∣ 83321),
        order_of_C_B_inv_mod_p2 83324 83321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83321 83324 := by
  have hlt : (83321 : Nat) < 83324 := by decide
  have hcop : ¬ 53 ∣ (83324 - 83321) := by decide
  have heq : (83324 : ZMod 53) ^ 13 = (83321 : ZMod 53) ^ 13 := by decide
  have hne : (83324 : ZMod 2809) ^ 13 ≠ (83321 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 83324 := by decide
  have hB : ¬ 53 ∣ 83321 := by decide
  have hexp :=
    has_exp_one_of_zmod 83321 83324 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 83321 83324 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 83321 83324 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      83321 83324 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      83321 83324 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_83714_83717 :
    HasPrimeWithExpOne (S_val 83714 83717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83714 83717 ∧ ¬ p ∣ (83717 - 83714) ∧
      ∃ (hNotC : ¬ p ∣ 83717) (hNotB : ¬ p ∣ 83714),
        order_of_C_B_inv_mod_p2 83717 83714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83714 83717 := by
  have hlt : (83714 : Nat) < 83717 := by decide
  have hcop : ¬ 79 ∣ (83717 - 83714) := by decide
  have heq : (83717 : ZMod 79) ^ 13 = (83714 : ZMod 79) ^ 13 := by decide
  have hne : (83717 : ZMod 6241) ^ 13 ≠ (83714 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 83717 := by decide
  have hB : ¬ 79 ∣ 83714 := by decide
  have hexp :=
    has_exp_one_of_zmod 83714 83717 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 83714 83717 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 83714 83717 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      83714 83717 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      83714 83717 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_84116_84119 :
    HasPrimeWithExpOne (S_val 84116 84119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84116 84119 ∧ ¬ p ∣ (84119 - 84116) ∧
      ∃ (hNotC : ¬ p ∣ 84119) (hNotB : ¬ p ∣ 84116),
        order_of_C_B_inv_mod_p2 84119 84116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84116 84119 := by
  have hlt : (84116 : Nat) < 84119 := by decide
  have hcop : ¬ 53 ∣ (84119 - 84116) := by decide
  have heq : (84119 : ZMod 53) ^ 13 = (84116 : ZMod 53) ^ 13 := by decide
  have hne : (84119 : ZMod 2809) ^ 13 ≠ (84116 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 84119 := by decide
  have hB : ¬ 53 ∣ 84116 := by decide
  have hexp :=
    has_exp_one_of_zmod 84116 84119 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 84116 84119 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 84116 84119 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      84116 84119 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      84116 84119 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_84499_84502 :
    HasPrimeWithExpOne (S_val 84499 84502) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84499 84502 ∧ ¬ p ∣ (84502 - 84499) ∧
      ∃ (hNotC : ¬ p ∣ 84502) (hNotB : ¬ p ∣ 84499),
        order_of_C_B_inv_mod_p2 84502 84499 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84499 84502 := by
  have hlt : (84499 : Nat) < 84502 := by decide
  have hcop : ¬ 157 ∣ (84502 - 84499) := by decide
  have heq : (84502 : ZMod 157) ^ 13 = (84499 : ZMod 157) ^ 13 := by decide
  have hne : (84502 : ZMod 24649) ^ 13 ≠ (84499 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 84502 := by decide
  have hB : ¬ 157 ∣ 84499 := by decide
  have hexp :=
    has_exp_one_of_zmod 84499 84502 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 84499 84502 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 84499 84502 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      84499 84502 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      84499 84502 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_84888_84891 :
    HasPrimeWithExpOne (S_val 84888 84891) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84888 84891 ∧ ¬ p ∣ (84891 - 84888) ∧
      ∃ (hNotC : ¬ p ∣ 84891) (hNotB : ¬ p ∣ 84888),
        order_of_C_B_inv_mod_p2 84891 84888 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84888 84891 := by
  have hlt : (84888 : Nat) < 84891 := by decide
  have hcop : ¬ 79 ∣ (84891 - 84888) := by decide
  have heq : (84891 : ZMod 79) ^ 13 = (84888 : ZMod 79) ^ 13 := by decide
  have hne : (84891 : ZMod 6241) ^ 13 ≠ (84888 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 84891 := by decide
  have hB : ¬ 79 ∣ 84888 := by decide
  have hexp :=
    has_exp_one_of_zmod 84888 84891 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 84888 84891 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 84888 84891 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      84888 84891 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      84888 84891 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_85269_85272 :
    HasPrimeWithExpOne (S_val 85269 85272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85269 85272 ∧ ¬ p ∣ (85272 - 85269) ∧
      ∃ (hNotC : ¬ p ∣ 85272) (hNotB : ¬ p ∣ 85269),
        order_of_C_B_inv_mod_p2 85272 85269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85269 85272 := by
  have hlt : (85269 : Nat) < 85272 := by decide
  have hcop : ¬ 53 ∣ (85272 - 85269) := by decide
  have heq : (85272 : ZMod 53) ^ 13 = (85269 : ZMod 53) ^ 13 := by decide
  have hne : (85272 : ZMod 2809) ^ 13 ≠ (85269 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 85272 := by decide
  have hB : ¬ 53 ∣ 85269 := by decide
  have hexp :=
    has_exp_one_of_zmod 85269 85272 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 85269 85272 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 85269 85272 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      85269 85272 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      85269 85272 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_85662_85665 :
    HasPrimeWithExpOne (S_val 85662 85665) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85662 85665 ∧ ¬ p ∣ (85665 - 85662) ∧
      ∃ (hNotC : ¬ p ∣ 85665) (hNotB : ¬ p ∣ 85662),
        order_of_C_B_inv_mod_p2 85665 85662 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85662 85665 := by
  have hlt : (85662 : Nat) < 85665 := by decide
  have hcop : ¬ 131 ∣ (85665 - 85662) := by decide
  have heq : (85665 : ZMod 131) ^ 13 = (85662 : ZMod 131) ^ 13 := by decide
  have hne : (85665 : ZMod 17161) ^ 13 ≠ (85662 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 85665 := by decide
  have hB : ¬ 131 ∣ 85662 := by decide
  have hexp :=
    has_exp_one_of_zmod 85662 85665 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 85662 85665 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 85662 85665 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      85662 85665 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      85662 85665 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_86026_86029 :
    HasPrimeWithExpOne (S_val 86026 86029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86026 86029 ∧ ¬ p ∣ (86029 - 86026) ∧
      ∃ (hNotC : ¬ p ∣ 86029) (hNotB : ¬ p ∣ 86026),
        order_of_C_B_inv_mod_p2 86029 86026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86026 86029 := by
  have hlt : (86026 : Nat) < 86029 := by decide
  have hcop : ¬ 131 ∣ (86029 - 86026) := by decide
  have heq : (86029 : ZMod 131) ^ 13 = (86026 : ZMod 131) ^ 13 := by decide
  have hne : (86029 : ZMod 17161) ^ 13 ≠ (86026 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 86029 := by decide
  have hB : ¬ 131 ∣ 86026 := by decide
  have hexp :=
    has_exp_one_of_zmod 86026 86029 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 86026 86029 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 86026 86029 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      86026 86029 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      86026 86029 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_86409_86412 :
    HasPrimeWithExpOne (S_val 86409 86412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86409 86412 ∧ ¬ p ∣ (86412 - 86409) ∧
      ∃ (hNotC : ¬ p ∣ 86412) (hNotB : ¬ p ∣ 86409),
        order_of_C_B_inv_mod_p2 86412 86409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86409 86412 := by
  have hlt : (86409 : Nat) < 86412 := by decide
  have hcop : ¬ 79 ∣ (86412 - 86409) := by decide
  have heq : (86412 : ZMod 79) ^ 13 = (86409 : ZMod 79) ^ 13 := by decide
  have hne : (86412 : ZMod 6241) ^ 13 ≠ (86409 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 86412 := by decide
  have hB : ¬ 79 ∣ 86409 := by decide
  have hexp :=
    has_exp_one_of_zmod 86409 86412 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 86409 86412 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 86409 86412 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      86409 86412 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      86409 86412 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_86798_86801 :
    HasPrimeWithExpOne (S_val 86798 86801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86798 86801 ∧ ¬ p ∣ (86801 - 86798) ∧
      ∃ (hNotC : ¬ p ∣ 86801) (hNotB : ¬ p ∣ 86798),
        order_of_C_B_inv_mod_p2 86801 86798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86798 86801 := by
  have hlt : (86798 : Nat) < 86801 := by decide
  have hcop : ¬ 53 ∣ (86801 - 86798) := by decide
  have heq : (86801 : ZMod 53) ^ 13 = (86798 : ZMod 53) ^ 13 := by decide
  have hne : (86801 : ZMod 2809) ^ 13 ≠ (86798 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 86801 := by decide
  have hB : ¬ 53 ∣ 86798 := by decide
  have hexp :=
    has_exp_one_of_zmod 86798 86801 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 86798 86801 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 86798 86801 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      86798 86801 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      86798 86801 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_87199_87202 :
    HasPrimeWithExpOne (S_val 87199 87202) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87199 87202 ∧ ¬ p ∣ (87202 - 87199) ∧
      ∃ (hNotC : ¬ p ∣ 87202) (hNotB : ¬ p ∣ 87199),
        order_of_C_B_inv_mod_p2 87202 87199 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87199 87202 := by
  have hlt : (87199 : Nat) < 87202 := by decide
  have hcop : ¬ 79 ∣ (87202 - 87199) := by decide
  have heq : (87202 : ZMod 79) ^ 13 = (87199 : ZMod 79) ^ 13 := by decide
  have hne : (87202 : ZMod 6241) ^ 13 ≠ (87199 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 87202 := by decide
  have hB : ¬ 79 ∣ 87199 := by decide
  have hexp :=
    has_exp_one_of_zmod 87199 87202 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 87199 87202 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 87199 87202 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      87199 87202 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      87199 87202 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_87582_87585 :
    HasPrimeWithExpOne (S_val 87582 87585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87582 87585 ∧ ¬ p ∣ (87585 - 87582) ∧
      ∃ (hNotC : ¬ p ∣ 87585) (hNotB : ¬ p ∣ 87582),
        order_of_C_B_inv_mod_p2 87585 87582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87582 87585 := by
  have hlt : (87582 : Nat) < 87585 := by decide
  have hcop : ¬ 131 ∣ (87585 - 87582) := by decide
  have heq : (87585 : ZMod 131) ^ 13 = (87582 : ZMod 131) ^ 13 := by decide
  have hne : (87585 : ZMod 17161) ^ 13 ≠ (87582 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 87585 := by decide
  have hB : ¬ 131 ∣ 87582 := by decide
  have hexp :=
    has_exp_one_of_zmod 87582 87585 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 87582 87585 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 87582 87585 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      87582 87585 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      87582 87585 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_87972_87975 :
    HasPrimeWithExpOne (S_val 87972 87975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87972 87975 ∧ ¬ p ∣ (87975 - 87972) ∧
      ∃ (hNotC : ¬ p ∣ 87975) (hNotB : ¬ p ∣ 87972),
        order_of_C_B_inv_mod_p2 87975 87972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87972 87975 := by
  have hlt : (87972 : Nat) < 87975 := by decide
  have hcop : ¬ 53 ∣ (87975 - 87972) := by decide
  have heq : (87975 : ZMod 53) ^ 13 = (87972 : ZMod 53) ^ 13 := by decide
  have hne : (87975 : ZMod 2809) ^ 13 ≠ (87972 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 87975 := by decide
  have hB : ¬ 53 ∣ 87972 := by decide
  have hexp :=
    has_exp_one_of_zmod 87972 87975 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 87972 87975 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 87972 87975 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      87972 87975 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      87972 87975 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_88355_88358 :
    HasPrimeWithExpOne (S_val 88355 88358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88355 88358 ∧ ¬ p ∣ (88358 - 88355) ∧
      ∃ (hNotC : ¬ p ∣ 88358) (hNotB : ¬ p ∣ 88355),
        order_of_C_B_inv_mod_p2 88358 88355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88355 88358 := by
  have hlt : (88355 : Nat) < 88358 := by decide
  have hcop : ¬ 53 ∣ (88358 - 88355) := by decide
  have heq : (88358 : ZMod 53) ^ 13 = (88355 : ZMod 53) ^ 13 := by decide
  have hne : (88358 : ZMod 2809) ^ 13 ≠ (88355 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 88358 := by decide
  have hB : ¬ 53 ∣ 88355 := by decide
  have hexp :=
    has_exp_one_of_zmod 88355 88358 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 88355 88358 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 88355 88358 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      88355 88358 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      88355 88358 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_88772_88775 :
    HasPrimeWithExpOne (S_val 88772 88775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88772 88775 ∧ ¬ p ∣ (88775 - 88772) ∧
      ∃ (hNotC : ¬ p ∣ 88775) (hNotB : ¬ p ∣ 88772),
        order_of_C_B_inv_mod_p2 88775 88772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88772 88775 := by
  have hlt : (88772 : Nat) < 88775 := by decide
  have hcop : ¬ 131 ∣ (88775 - 88772) := by decide
  have heq : (88775 : ZMod 131) ^ 13 = (88772 : ZMod 131) ^ 13 := by decide
  have hne : (88775 : ZMod 17161) ^ 13 ≠ (88772 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 88775 := by decide
  have hB : ¬ 131 ∣ 88772 := by decide
  have hexp :=
    has_exp_one_of_zmod 88772 88775 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 88772 88775 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 88772 88775 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      88772 88775 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      88772 88775 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_89151_89154 :
    HasPrimeWithExpOne (S_val 89151 89154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89151 89154 ∧ ¬ p ∣ (89154 - 89151) ∧
      ∃ (hNotC : ¬ p ∣ 89154) (hNotB : ¬ p ∣ 89151),
        order_of_C_B_inv_mod_p2 89154 89151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89151 89154 := by
  have hlt : (89151 : Nat) < 89154 := by decide
  have hcop : ¬ 53 ∣ (89154 - 89151) := by decide
  have heq : (89154 : ZMod 53) ^ 13 = (89151 : ZMod 53) ^ 13 := by decide
  have hne : (89154 : ZMod 2809) ^ 13 ≠ (89151 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 89154 := by decide
  have hB : ¬ 53 ∣ 89151 := by decide
  have hexp :=
    has_exp_one_of_zmod 89151 89154 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 89151 89154 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 89151 89154 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      89151 89154 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      89151 89154 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_89560_89563 :
    HasPrimeWithExpOne (S_val 89560 89563) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89560 89563 ∧ ¬ p ∣ (89563 - 89560) ∧
      ∃ (hNotC : ¬ p ∣ 89563) (hNotB : ¬ p ∣ 89560),
        order_of_C_B_inv_mod_p2 89563 89560 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89560 89563 := by
  have hlt : (89560 : Nat) < 89563 := by decide
  have hcop : ¬ 79 ∣ (89563 - 89560) := by decide
  have heq : (89563 : ZMod 79) ^ 13 = (89560 : ZMod 79) ^ 13 := by decide
  have hne : (89563 : ZMod 6241) ^ 13 ≠ (89560 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 89563 := by decide
  have hB : ¬ 79 ∣ 89560 := by decide
  have hexp :=
    has_exp_one_of_zmod 89560 89563 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 89560 89563 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 89560 89563 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      89560 89563 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      89560 89563 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_89934_89937 :
    HasPrimeWithExpOne (S_val 89934 89937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89934 89937 ∧ ¬ p ∣ (89937 - 89934) ∧
      ∃ (hNotC : ¬ p ∣ 89937) (hNotB : ¬ p ∣ 89934),
        order_of_C_B_inv_mod_p2 89937 89934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89934 89937 := by
  have hlt : (89934 : Nat) < 89937 := by decide
  have hcop : ¬ 53 ∣ (89937 - 89934) := by decide
  have heq : (89937 : ZMod 53) ^ 13 = (89934 : ZMod 53) ^ 13 := by decide
  have hne : (89937 : ZMod 2809) ^ 13 ≠ (89934 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 89937 := by decide
  have hB : ¬ 53 ∣ 89934 := by decide
  have hexp :=
    has_exp_one_of_zmod 89934 89937 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 89934 89937 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 89934 89937 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      89934 89937 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      89934 89937 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_90331_90334 :
    HasPrimeWithExpOne (S_val 90331 90334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90331 90334 ∧ ¬ p ∣ (90334 - 90331) ∧
      ∃ (hNotC : ¬ p ∣ 90334) (hNotB : ¬ p ∣ 90331),
        order_of_C_B_inv_mod_p2 90334 90331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90331 90334 := by
  have hlt : (90331 : Nat) < 90334 := by decide
  have hcop : ¬ 79 ∣ (90334 - 90331) := by decide
  have heq : (90334 : ZMod 79) ^ 13 = (90331 : ZMod 79) ^ 13 := by decide
  have hne : (90334 : ZMod 6241) ^ 13 ≠ (90331 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 90334 := by decide
  have hB : ¬ 79 ∣ 90331 := by decide
  have hexp :=
    has_exp_one_of_zmod 90331 90334 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 90331 90334 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 90331 90334 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      90331 90334 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      90331 90334 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_90707_90710 :
    HasPrimeWithExpOne (S_val 90707 90710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90707 90710 ∧ ¬ p ∣ (90710 - 90707) ∧
      ∃ (hNotC : ¬ p ∣ 90710) (hNotB : ¬ p ∣ 90707),
        order_of_C_B_inv_mod_p2 90710 90707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90707 90710 := by
  have hlt : (90707 : Nat) < 90710 := by decide
  have hcop : ¬ 131 ∣ (90710 - 90707) := by decide
  have heq : (90710 : ZMod 131) ^ 13 = (90707 : ZMod 131) ^ 13 := by decide
  have hne : (90710 : ZMod 17161) ^ 13 ≠ (90707 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 90710 := by decide
  have hB : ¬ 131 ∣ 90707 := by decide
  have hexp :=
    has_exp_one_of_zmod 90707 90710 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 90707 90710 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 90707 90710 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      90707 90710 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      90707 90710 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_91097_91100 :
    HasPrimeWithExpOne (S_val 91097 91100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91097 91100 ∧ ¬ p ∣ (91100 - 91097) ∧
      ∃ (hNotC : ¬ p ∣ 91100) (hNotB : ¬ p ∣ 91097),
        order_of_C_B_inv_mod_p2 91100 91097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91097 91100 := by
  have hlt : (91097 : Nat) < 91100 := by decide
  have hcop : ¬ 313 ∣ (91100 - 91097) := by decide
  have heq : (91100 : ZMod 313) ^ 13 = (91097 : ZMod 313) ^ 13 := by decide
  have hne : (91100 : ZMod 97969) ^ 13 ≠ (91097 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 91100 := by decide
  have hB : ¬ 313 ∣ 91097 := by decide
  have hexp :=
    has_exp_one_of_zmod 91097 91100 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 91097 91100 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 91097 91100 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      91097 91100 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      91097 91100 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_91473_91476 :
    HasPrimeWithExpOne (S_val 91473 91476) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91473 91476 ∧ ¬ p ∣ (91476 - 91473) ∧
      ∃ (hNotC : ¬ p ∣ 91476) (hNotB : ¬ p ∣ 91473),
        order_of_C_B_inv_mod_p2 91476 91473 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91473 91476 := by
  have hlt : (91473 : Nat) < 91476 := by decide
  have hcop : ¬ 313 ∣ (91476 - 91473) := by decide
  have heq : (91476 : ZMod 313) ^ 13 = (91473 : ZMod 313) ^ 13 := by decide
  have hne : (91476 : ZMod 97969) ^ 13 ≠ (91473 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 91476 := by decide
  have hB : ¬ 313 ∣ 91473 := by decide
  have hexp :=
    has_exp_one_of_zmod 91473 91476 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 91473 91476 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 91473 91476 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      91473 91476 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      91473 91476 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_91853_91856 :
    HasPrimeWithExpOne (S_val 91853 91856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91853 91856 ∧ ¬ p ∣ (91856 - 91853) ∧
      ∃ (hNotC : ¬ p ∣ 91856) (hNotB : ¬ p ∣ 91853),
        order_of_C_B_inv_mod_p2 91856 91853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91853 91856 := by
  have hlt : (91853 : Nat) < 91856 := by decide
  have hcop : ¬ 53 ∣ (91856 - 91853) := by decide
  have heq : (91856 : ZMod 53) ^ 13 = (91853 : ZMod 53) ^ 13 := by decide
  have hne : (91856 : ZMod 2809) ^ 13 ≠ (91853 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 91856 := by decide
  have hB : ¬ 53 ∣ 91853 := by decide
  have hexp :=
    has_exp_one_of_zmod 91853 91856 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 91853 91856 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 91853 91856 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      91853 91856 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      91853 91856 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_92255_92258 :
    HasPrimeWithExpOne (S_val 92255 92258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92255 92258 ∧ ¬ p ∣ (92258 - 92255) ∧
      ∃ (hNotC : ¬ p ∣ 92258) (hNotB : ¬ p ∣ 92255),
        order_of_C_B_inv_mod_p2 92258 92255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92255 92258 := by
  have hlt : (92255 : Nat) < 92258 := by decide
  have hcop : ¬ 79 ∣ (92258 - 92255) := by decide
  have heq : (92258 : ZMod 79) ^ 13 = (92255 : ZMod 79) ^ 13 := by decide
  have hne : (92258 : ZMod 6241) ^ 13 ≠ (92255 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 92258 := by decide
  have hB : ¬ 79 ∣ 92255 := by decide
  have hexp :=
    has_exp_one_of_zmod 92255 92258 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 92255 92258 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 92255 92258 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      92255 92258 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      92255 92258 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_92611_92614 :
    HasPrimeWithExpOne (S_val 92611 92614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92611 92614 ∧ ¬ p ∣ (92614 - 92611) ∧
      ∃ (hNotC : ¬ p ∣ 92614) (hNotB : ¬ p ∣ 92611),
        order_of_C_B_inv_mod_p2 92614 92611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92611 92614 := by
  have hlt : (92611 : Nat) < 92614 := by decide
  have hcop : ¬ 79 ∣ (92614 - 92611) := by decide
  have heq : (92614 : ZMod 79) ^ 13 = (92611 : ZMod 79) ^ 13 := by decide
  have hne : (92614 : ZMod 6241) ^ 13 ≠ (92611 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 92614 := by decide
  have hB : ¬ 79 ∣ 92611 := by decide
  have hexp :=
    has_exp_one_of_zmod 92611 92614 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 92611 92614 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 92611 92614 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      92611 92614 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      92611 92614 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_93019_93022 :
    HasPrimeWithExpOne (S_val 93019 93022) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93019 93022 ∧ ¬ p ∣ (93022 - 93019) ∧
      ∃ (hNotC : ¬ p ∣ 93022) (hNotB : ¬ p ∣ 93019),
        order_of_C_B_inv_mod_p2 93022 93019 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93019 93022 := by
  have hlt : (93019 : Nat) < 93022 := by decide
  have hcop : ¬ 53 ∣ (93022 - 93019) := by decide
  have heq : (93022 : ZMod 53) ^ 13 = (93019 : ZMod 53) ^ 13 := by decide
  have hne : (93022 : ZMod 2809) ^ 13 ≠ (93019 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 93022 := by decide
  have hB : ¬ 53 ∣ 93019 := by decide
  have hexp :=
    has_exp_one_of_zmod 93019 93022 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 93019 93022 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 93019 93022 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      93019 93022 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      93019 93022 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_93426_93429 :
    HasPrimeWithExpOne (S_val 93426 93429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93426 93429 ∧ ¬ p ∣ (93429 - 93426) ∧
      ∃ (hNotC : ¬ p ∣ 93429) (hNotB : ¬ p ∣ 93426),
        order_of_C_B_inv_mod_p2 93429 93426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93426 93429 := by
  have hlt : (93426 : Nat) < 93429 := by decide
  have hcop : ¬ 53 ∣ (93429 - 93426) := by decide
  have heq : (93429 : ZMod 53) ^ 13 = (93426 : ZMod 53) ^ 13 := by decide
  have hne : (93429 : ZMod 2809) ^ 13 ≠ (93426 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 93429 := by decide
  have hB : ¬ 53 ∣ 93426 := by decide
  have hexp :=
    has_exp_one_of_zmod 93426 93429 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 93426 93429 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 93426 93429 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      93426 93429 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      93426 93429 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_93802_93805 :
    HasPrimeWithExpOne (S_val 93802 93805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93802 93805 ∧ ¬ p ∣ (93805 - 93802) ∧
      ∃ (hNotC : ¬ p ∣ 93805) (hNotB : ¬ p ∣ 93802),
        order_of_C_B_inv_mod_p2 93805 93802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93802 93805 := by
  have hlt : (93802 : Nat) < 93805 := by decide
  have hcop : ¬ 53 ∣ (93805 - 93802) := by decide
  have heq : (93805 : ZMod 53) ^ 13 = (93802 : ZMod 53) ^ 13 := by decide
  have hne : (93805 : ZMod 2809) ^ 13 ≠ (93802 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 93805 := by decide
  have hB : ¬ 53 ∣ 93802 := by decide
  have hexp :=
    has_exp_one_of_zmod 93802 93805 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 93802 93805 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 93802 93805 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      93802 93805 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      93802 93805 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_94186_94189 :
    HasPrimeWithExpOne (S_val 94186 94189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94186 94189 ∧ ¬ p ∣ (94189 - 94186) ∧
      ∃ (hNotC : ¬ p ∣ 94189) (hNotB : ¬ p ∣ 94186),
        order_of_C_B_inv_mod_p2 94189 94186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94186 94189 := by
  have hlt : (94186 : Nat) < 94189 := by decide
  have hcop : ¬ 53 ∣ (94189 - 94186) := by decide
  have heq : (94189 : ZMod 53) ^ 13 = (94186 : ZMod 53) ^ 13 := by decide
  have hne : (94189 : ZMod 2809) ^ 13 ≠ (94186 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 94189 := by decide
  have hB : ¬ 53 ∣ 94186 := by decide
  have hexp :=
    has_exp_one_of_zmod 94186 94189 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 94186 94189 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 94186 94189 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      94186 94189 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      94186 94189 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_94570_94573 :
    HasPrimeWithExpOne (S_val 94570 94573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94570 94573 ∧ ¬ p ∣ (94573 - 94570) ∧
      ∃ (hNotC : ¬ p ∣ 94573) (hNotB : ¬ p ∣ 94570),
        order_of_C_B_inv_mod_p2 94573 94570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94570 94573 := by
  have hlt : (94570 : Nat) < 94573 := by decide
  have hcop : ¬ 53 ∣ (94573 - 94570) := by decide
  have heq : (94573 : ZMod 53) ^ 13 = (94570 : ZMod 53) ^ 13 := by decide
  have hne : (94573 : ZMod 2809) ^ 13 ≠ (94570 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 94573 := by decide
  have hB : ¬ 53 ∣ 94570 := by decide
  have hexp :=
    has_exp_one_of_zmod 94570 94573 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 94570 94573 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 94570 94573 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      94570 94573 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      94570 94573 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_94968_94971 :
    HasPrimeWithExpOne (S_val 94968 94971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94968 94971 ∧ ¬ p ∣ (94971 - 94968) ∧
      ∃ (hNotC : ¬ p ∣ 94971) (hNotB : ¬ p ∣ 94968),
        order_of_C_B_inv_mod_p2 94971 94968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94968 94971 := by
  have hlt : (94968 : Nat) < 94971 := by decide
  have hcop : ¬ 53 ∣ (94971 - 94968) := by decide
  have heq : (94971 : ZMod 53) ^ 13 = (94968 : ZMod 53) ^ 13 := by decide
  have hne : (94971 : ZMod 2809) ^ 13 ≠ (94968 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 94971 := by decide
  have hB : ¬ 53 ∣ 94968 := by decide
  have hexp :=
    has_exp_one_of_zmod 94968 94971 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 94968 94971 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 94968 94971 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      94968 94971 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      94968 94971 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_95360_95363 :
    HasPrimeWithExpOne (S_val 95360 95363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95360 95363 ∧ ¬ p ∣ (95363 - 95360) ∧
      ∃ (hNotC : ¬ p ∣ 95363) (hNotB : ¬ p ∣ 95360),
        order_of_C_B_inv_mod_p2 95363 95360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95360 95363 := by
  have hlt : (95360 : Nat) < 95363 := by decide
  have hcop : ¬ 53 ∣ (95363 - 95360) := by decide
  have heq : (95363 : ZMod 53) ^ 13 = (95360 : ZMod 53) ^ 13 := by decide
  have hne : (95363 : ZMod 2809) ^ 13 ≠ (95360 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 95363 := by decide
  have hB : ¬ 53 ∣ 95360 := by decide
  have hexp :=
    has_exp_one_of_zmod 95360 95363 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 95360 95363 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 95360 95363 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      95360 95363 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      95360 95363 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_95736_95739 :
    HasPrimeWithExpOne (S_val 95736 95739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95736 95739 ∧ ¬ p ∣ (95739 - 95736) ∧
      ∃ (hNotC : ¬ p ∣ 95739) (hNotB : ¬ p ∣ 95736),
        order_of_C_B_inv_mod_p2 95739 95736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95736 95739 := by
  have hlt : (95736 : Nat) < 95739 := by decide
  have hcop : ¬ 53 ∣ (95739 - 95736) := by decide
  have heq : (95739 : ZMod 53) ^ 13 = (95736 : ZMod 53) ^ 13 := by decide
  have hne : (95739 : ZMod 2809) ^ 13 ≠ (95736 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 95739 := by decide
  have hB : ¬ 53 ∣ 95736 := by decide
  have hexp :=
    has_exp_one_of_zmod 95736 95739 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 95736 95739 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 95736 95739 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      95736 95739 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      95736 95739 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_96128_96131 :
    HasPrimeWithExpOne (S_val 96128 96131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96128 96131 ∧ ¬ p ∣ (96131 - 96128) ∧
      ∃ (hNotC : ¬ p ∣ 96131) (hNotB : ¬ p ∣ 96128),
        order_of_C_B_inv_mod_p2 96131 96128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96128 96131 := by
  have hlt : (96128 : Nat) < 96131 := by decide
  have hcop : ¬ 79 ∣ (96131 - 96128) := by decide
  have heq : (96131 : ZMod 79) ^ 13 = (96128 : ZMod 79) ^ 13 := by decide
  have hne : (96131 : ZMod 6241) ^ 13 ≠ (96128 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 96131 := by decide
  have hB : ¬ 79 ∣ 96128 := by decide
  have hexp :=
    has_exp_one_of_zmod 96128 96131 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 96128 96131 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 96128 96131 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      96128 96131 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      96128 96131 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_96522_96525 :
    HasPrimeWithExpOne (S_val 96522 96525) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96522 96525 ∧ ¬ p ∣ (96525 - 96522) ∧
      ∃ (hNotC : ¬ p ∣ 96525) (hNotB : ¬ p ∣ 96522),
        order_of_C_B_inv_mod_p2 96525 96522 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96522 96525 := by
  have hlt : (96522 : Nat) < 96525 := by decide
  have hcop : ¬ 79 ∣ (96525 - 96522) := by decide
  have heq : (96525 : ZMod 79) ^ 13 = (96522 : ZMod 79) ^ 13 := by decide
  have hne : (96525 : ZMod 6241) ^ 13 ≠ (96522 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 96525 := by decide
  have hB : ¬ 79 ∣ 96522 := by decide
  have hexp :=
    has_exp_one_of_zmod 96522 96525 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 96522 96525 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 96522 96525 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      96522 96525 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      96522 96525 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_96930_96933 :
    HasPrimeWithExpOne (S_val 96930 96933) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96930 96933 ∧ ¬ p ∣ (96933 - 96930) ∧
      ∃ (hNotC : ¬ p ∣ 96933) (hNotB : ¬ p ∣ 96930),
        order_of_C_B_inv_mod_p2 96933 96930 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96930 96933 := by
  have hlt : (96930 : Nat) < 96933 := by decide
  have hcop : ¬ 53 ∣ (96933 - 96930) := by decide
  have heq : (96933 : ZMod 53) ^ 13 = (96930 : ZMod 53) ^ 13 := by decide
  have hne : (96933 : ZMod 2809) ^ 13 ≠ (96930 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 96933 := by decide
  have hB : ¬ 53 ∣ 96930 := by decide
  have hexp :=
    has_exp_one_of_zmod 96930 96933 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 96930 96933 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 96930 96933 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      96930 96933 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      96930 96933 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_97319_97322 :
    HasPrimeWithExpOne (S_val 97319 97322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97319 97322 ∧ ¬ p ∣ (97322 - 97319) ∧
      ∃ (hNotC : ¬ p ∣ 97322) (hNotB : ¬ p ∣ 97319),
        order_of_C_B_inv_mod_p2 97322 97319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97319 97322 := by
  have hlt : (97319 : Nat) < 97322 := by decide
  have hcop : ¬ 443 ∣ (97322 - 97319) := by decide
  have heq : (97322 : ZMod 443) ^ 13 = (97319 : ZMod 443) ^ 13 := by decide
  have hne : (97322 : ZMod 196249) ^ 13 ≠ (97319 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 97322 := by decide
  have hB : ¬ 443 ∣ 97319 := by decide
  have hexp :=
    has_exp_one_of_zmod 97319 97322 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 97319 97322 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 97319 97322 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      97319 97322 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      97319 97322 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_97723_97726 :
    HasPrimeWithExpOne (S_val 97723 97726) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97723 97726 ∧ ¬ p ∣ (97726 - 97723) ∧
      ∃ (hNotC : ¬ p ∣ 97726) (hNotB : ¬ p ∣ 97723),
        order_of_C_B_inv_mod_p2 97726 97723 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97723 97726 := by
  have hlt : (97723 : Nat) < 97726 := by decide
  have hcop : ¬ 53 ∣ (97726 - 97723) := by decide
  have heq : (97726 : ZMod 53) ^ 13 = (97723 : ZMod 53) ^ 13 := by decide
  have hne : (97726 : ZMod 2809) ^ 13 ≠ (97723 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 97726 := by decide
  have hB : ¬ 53 ∣ 97723 := by decide
  have hexp :=
    has_exp_one_of_zmod 97723 97726 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 97723 97726 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 97723 97726 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      97723 97726 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      97723 97726 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_98109_98112 :
    HasPrimeWithExpOne (S_val 98109 98112) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98109 98112 ∧ ¬ p ∣ (98112 - 98109) ∧
      ∃ (hNotC : ¬ p ∣ 98112) (hNotB : ¬ p ∣ 98109),
        order_of_C_B_inv_mod_p2 98112 98109 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98109 98112 := by
  have hlt : (98109 : Nat) < 98112 := by decide
  have hcop : ¬ 53 ∣ (98112 - 98109) := by decide
  have heq : (98112 : ZMod 53) ^ 13 = (98109 : ZMod 53) ^ 13 := by decide
  have hne : (98112 : ZMod 2809) ^ 13 ≠ (98109 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 98112 := by decide
  have hB : ¬ 53 ∣ 98109 := by decide
  have hexp :=
    has_exp_one_of_zmod 98109 98112 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 98109 98112 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 98109 98112 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      98109 98112 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      98109 98112 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_98489_98492 :
    HasPrimeWithExpOne (S_val 98489 98492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98489 98492 ∧ ¬ p ∣ (98492 - 98489) ∧
      ∃ (hNotC : ¬ p ∣ 98492) (hNotB : ¬ p ∣ 98489),
        order_of_C_B_inv_mod_p2 98492 98489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98489 98492 := by
  have hlt : (98489 : Nat) < 98492 := by decide
  have hcop : ¬ 157 ∣ (98492 - 98489) := by decide
  have heq : (98492 : ZMod 157) ^ 13 = (98489 : ZMod 157) ^ 13 := by decide
  have hne : (98492 : ZMod 24649) ^ 13 ≠ (98489 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 98492 := by decide
  have hB : ¬ 157 ∣ 98489 := by decide
  have hexp :=
    has_exp_one_of_zmod 98489 98492 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 98489 98492 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 98489 98492 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      98489 98492 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      98489 98492 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_98851_98854 :
    HasPrimeWithExpOne (S_val 98851 98854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98851 98854 ∧ ¬ p ∣ (98854 - 98851) ∧
      ∃ (hNotC : ¬ p ∣ 98854) (hNotB : ¬ p ∣ 98851),
        order_of_C_B_inv_mod_p2 98854 98851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98851 98854 := by
  have hlt : (98851 : Nat) < 98854 := by decide
  have hcop : ¬ 53 ∣ (98854 - 98851) := by decide
  have heq : (98854 : ZMod 53) ^ 13 = (98851 : ZMod 53) ^ 13 := by decide
  have hne : (98854 : ZMod 2809) ^ 13 ≠ (98851 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 98854 := by decide
  have hB : ¬ 53 ∣ 98851 := by decide
  have hexp :=
    has_exp_one_of_zmod 98851 98854 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 98851 98854 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 98851 98854 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      98851 98854 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      98851 98854 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_99235_99238 :
    HasPrimeWithExpOne (S_val 99235 99238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99235 99238 ∧ ¬ p ∣ (99238 - 99235) ∧
      ∃ (hNotC : ¬ p ∣ 99238) (hNotB : ¬ p ∣ 99235),
        order_of_C_B_inv_mod_p2 99238 99235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99235 99238 := by
  have hlt : (99235 : Nat) < 99238 := by decide
  have hcop : ¬ 131 ∣ (99238 - 99235) := by decide
  have heq : (99238 : ZMod 131) ^ 13 = (99235 : ZMod 131) ^ 13 := by decide
  have hne : (99238 : ZMod 17161) ^ 13 ≠ (99235 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 99238 := by decide
  have hB : ¬ 131 ∣ 99235 := by decide
  have hexp :=
    has_exp_one_of_zmod 99235 99238 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 99235 99238 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 99235 99238 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      99235 99238 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      99235 99238 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_99615_99618 :
    HasPrimeWithExpOne (S_val 99615 99618) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99615 99618 ∧ ¬ p ∣ (99618 - 99615) ∧
      ∃ (hNotC : ¬ p ∣ 99618) (hNotB : ¬ p ∣ 99615),
        order_of_C_B_inv_mod_p2 99618 99615 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99615 99618 := by
  have hlt : (99615 : Nat) < 99618 := by decide
  have hcop : ¬ 131 ∣ (99618 - 99615) := by decide
  have heq : (99618 : ZMod 131) ^ 13 = (99615 : ZMod 131) ^ 13 := by decide
  have hne : (99618 : ZMod 17161) ^ 13 ≠ (99615 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 99618 := by decide
  have hB : ¬ 131 ∣ 99615 := by decide
  have hexp :=
    has_exp_one_of_zmod 99615 99618 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 99615 99618 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 99615 99618 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      99615 99618 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      99615 99618 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_100000_100003 :
    HasPrimeWithExpOne (S_val 100000 100003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100000 100003 ∧ ¬ p ∣ (100003 - 100000) ∧
      ∃ (hNotC : ¬ p ∣ 100003) (hNotB : ¬ p ∣ 100000),
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100000 100003 := by
  have hlt : (100000 : Nat) < 100003 := by decide
  have hcop : ¬ 547 ∣ (100003 - 100000) := by decide
  have heq : (100003 : ZMod 547) ^ 13 = (100000 : ZMod 547) ^ 13 := by decide
  have hne : (100003 : ZMod 299209) ^ 13 ≠ (100000 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 100003 := by decide
  have hB : ¬ 547 ∣ 100000 := by decide
  have hexp :=
    has_exp_one_of_zmod 100000 100003 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 100000 100003 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 100000 100003 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      100000 100003 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      100000 100003 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-! ## Packed 318 named rows (188 inherited + 130 new; not a `∀`) -/
theorem S_has_prime_with_exp_one_B_le_100000_table_rows :
    HasPrimeWithExpOne (S_val 1 4) ∧
    HasPrimeWithExpOne (S_val 196 199) ∧
    HasPrimeWithExpOne (S_val 386 389) ∧
    HasPrimeWithExpOne (S_val 587 590) ∧
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    HasPrimeWithExpOne (S_val 50001 50004) ∧
    HasPrimeWithExpOne (S_val 50389 50392) ∧
    HasPrimeWithExpOne (S_val 50779 50782) ∧
    HasPrimeWithExpOne (S_val 51191 51194) ∧
    HasPrimeWithExpOne (S_val 51574 51577) ∧
    HasPrimeWithExpOne (S_val 51965 51968) ∧
    HasPrimeWithExpOne (S_val 52362 52365) ∧
    HasPrimeWithExpOne (S_val 52739 52742) ∧
    HasPrimeWithExpOne (S_val 53136 53139) ∧
    HasPrimeWithExpOne (S_val 53525 53528) ∧
    HasPrimeWithExpOne (S_val 53915 53918) ∧
    HasPrimeWithExpOne (S_val 54302 54305) ∧
    HasPrimeWithExpOne (S_val 54701 54704) ∧
    HasPrimeWithExpOne (S_val 55091 55094) ∧
    HasPrimeWithExpOne (S_val 55496 55499) ∧
    HasPrimeWithExpOne (S_val 55894 55897) ∧
    HasPrimeWithExpOne (S_val 56278 56281) ∧
    HasPrimeWithExpOne (S_val 56667 56670) ∧
    HasPrimeWithExpOne (S_val 57036 57039) ∧
    HasPrimeWithExpOne (S_val 57417 57420) ∧
    HasPrimeWithExpOne (S_val 57825 57828) ∧
    HasPrimeWithExpOne (S_val 58198 58201) ∧
    HasPrimeWithExpOne (S_val 58587 58590) ∧
    HasPrimeWithExpOne (S_val 58995 58998) ∧
    HasPrimeWithExpOne (S_val 59373 59376) ∧
    HasPrimeWithExpOne (S_val 59767 59770) ∧
    HasPrimeWithExpOne (S_val 60159 60162) ∧
    HasPrimeWithExpOne (S_val 60530 60533) ∧
    HasPrimeWithExpOne (S_val 60922 60925) ∧
    HasPrimeWithExpOne (S_val 61286 61289) ∧
    HasPrimeWithExpOne (S_val 61684 61687) ∧
    HasPrimeWithExpOne (S_val 62056 62059) ∧
    HasPrimeWithExpOne (S_val 62452 62455) ∧
    HasPrimeWithExpOne (S_val 62849 62852) ∧
    HasPrimeWithExpOne (S_val 63234 63237) ∧
    HasPrimeWithExpOne (S_val 63609 63612) ∧
    HasPrimeWithExpOne (S_val 63982 63985) ∧
    HasPrimeWithExpOne (S_val 64381 64384) ∧
    HasPrimeWithExpOne (S_val 64755 64758) ∧
    HasPrimeWithExpOne (S_val 65129 65132) ∧
    HasPrimeWithExpOne (S_val 65501 65504) ∧
    HasPrimeWithExpOne (S_val 65883 65886) ∧
    HasPrimeWithExpOne (S_val 66287 66290) ∧
    HasPrimeWithExpOne (S_val 66655 66658) ∧
    HasPrimeWithExpOne (S_val 67038 67041) ∧
    HasPrimeWithExpOne (S_val 67426 67429) ∧
    HasPrimeWithExpOne (S_val 67819 67822) ∧
    HasPrimeWithExpOne (S_val 68203 68206) ∧
    HasPrimeWithExpOne (S_val 68595 68598) ∧
    HasPrimeWithExpOne (S_val 68980 68983) ∧
    HasPrimeWithExpOne (S_val 69387 69390) ∧
    HasPrimeWithExpOne (S_val 69770 69773) ∧
    HasPrimeWithExpOne (S_val 70145 70148) ∧
    HasPrimeWithExpOne (S_val 70549 70552) ∧
    HasPrimeWithExpOne (S_val 70931 70934) ∧
    HasPrimeWithExpOne (S_val 71321 71324) ∧
    HasPrimeWithExpOne (S_val 71710 71713) ∧
    HasPrimeWithExpOne (S_val 72104 72107) ∧
    HasPrimeWithExpOne (S_val 72497 72500) ∧
    HasPrimeWithExpOne (S_val 72899 72902) ∧
    HasPrimeWithExpOne (S_val 73286 73289) ∧
    HasPrimeWithExpOne (S_val 73675 73678) ∧
    HasPrimeWithExpOne (S_val 74041 74044) ∧
    HasPrimeWithExpOne (S_val 74436 74439) ∧
    HasPrimeWithExpOne (S_val 74820 74823) ∧
    HasPrimeWithExpOne (S_val 75171 75174) ∧
    HasPrimeWithExpOne (S_val 75575 75578) ∧
    HasPrimeWithExpOne (S_val 75953 75956) ∧
    HasPrimeWithExpOne (S_val 76337 76340) ∧
    HasPrimeWithExpOne (S_val 76728 76731) ∧
    HasPrimeWithExpOne (S_val 77118 77121) ∧
    HasPrimeWithExpOne (S_val 77512 77515) ∧
    HasPrimeWithExpOne (S_val 77902 77905) ∧
    HasPrimeWithExpOne (S_val 78291 78294) ∧
    HasPrimeWithExpOne (S_val 78678 78681) ∧
    HasPrimeWithExpOne (S_val 79069 79072) ∧
    HasPrimeWithExpOne (S_val 79454 79457) ∧
    HasPrimeWithExpOne (S_val 79843 79846) ∧
    HasPrimeWithExpOne (S_val 80233 80236) ∧
    HasPrimeWithExpOne (S_val 80625 80628) ∧
    HasPrimeWithExpOne (S_val 81029 81032) ∧
    HasPrimeWithExpOne (S_val 81411 81414) ∧
    HasPrimeWithExpOne (S_val 81782 81785) ∧
    HasPrimeWithExpOne (S_val 82156 82159) ∧
    HasPrimeWithExpOne (S_val 82540 82543) ∧
    HasPrimeWithExpOne (S_val 82938 82941) ∧
    HasPrimeWithExpOne (S_val 83321 83324) ∧
    HasPrimeWithExpOne (S_val 83714 83717) ∧
    HasPrimeWithExpOne (S_val 84116 84119) ∧
    HasPrimeWithExpOne (S_val 84499 84502) ∧
    HasPrimeWithExpOne (S_val 84888 84891) ∧
    HasPrimeWithExpOne (S_val 85269 85272) ∧
    HasPrimeWithExpOne (S_val 85662 85665) ∧
    HasPrimeWithExpOne (S_val 86026 86029) ∧
    HasPrimeWithExpOne (S_val 86409 86412) ∧
    HasPrimeWithExpOne (S_val 86798 86801) ∧
    HasPrimeWithExpOne (S_val 87199 87202) ∧
    HasPrimeWithExpOne (S_val 87582 87585) ∧
    HasPrimeWithExpOne (S_val 87972 87975) ∧
    HasPrimeWithExpOne (S_val 88355 88358) ∧
    HasPrimeWithExpOne (S_val 88772 88775) ∧
    HasPrimeWithExpOne (S_val 89151 89154) ∧
    HasPrimeWithExpOne (S_val 89560 89563) ∧
    HasPrimeWithExpOne (S_val 89934 89937) ∧
    HasPrimeWithExpOne (S_val 90331 90334) ∧
    HasPrimeWithExpOne (S_val 90707 90710) ∧
    HasPrimeWithExpOne (S_val 91097 91100) ∧
    HasPrimeWithExpOne (S_val 91473 91476) ∧
    HasPrimeWithExpOne (S_val 91853 91856) ∧
    HasPrimeWithExpOne (S_val 92255 92258) ∧
    HasPrimeWithExpOne (S_val 92611 92614) ∧
    HasPrimeWithExpOne (S_val 93019 93022) ∧
    HasPrimeWithExpOne (S_val 93426 93429) ∧
    HasPrimeWithExpOne (S_val 93802 93805) ∧
    HasPrimeWithExpOne (S_val 94186 94189) ∧
    HasPrimeWithExpOne (S_val 94570 94573) ∧
    HasPrimeWithExpOne (S_val 94968 94971) ∧
    HasPrimeWithExpOne (S_val 95360 95363) ∧
    HasPrimeWithExpOne (S_val 95736 95739) ∧
    HasPrimeWithExpOne (S_val 96128 96131) ∧
    HasPrimeWithExpOne (S_val 96522 96525) ∧
    HasPrimeWithExpOne (S_val 96930 96933) ∧
    HasPrimeWithExpOne (S_val 97319 97322) ∧
    HasPrimeWithExpOne (S_val 97723 97726) ∧
    HasPrimeWithExpOne (S_val 98109 98112) ∧
    HasPrimeWithExpOne (S_val 98489 98492) ∧
    HasPrimeWithExpOne (S_val 98851 98854) ∧
    HasPrimeWithExpOne (S_val 99235 99238) ∧
    HasPrimeWithExpOne (S_val 99615 99618) ∧
    HasPrimeWithExpOne (S_val 100000 100003) :=
  ⟨row_1_4.1, row_196_199.1, row_386_389.1, row_587_590.1, row_1171_1174.1, row_1366_1369.1, row_1559_1562.1, row_1756_1759.1, row_2146_2149.1, row_2536_2539.1, row_2731_2734.1, row_3313_3316.1, row_3511_3514.1, row_3706_3709.1, row_3901_3904.1, row_4682_4685.1, row_4876_4879.1, row_5071_5074.1, row_5461_5464.1, row_5849_5852.1, row_6046_6049.1, row_6241_6244.1, row_6631_6634.1, row_7411_7414.1, row_7606_7609.1, row_7801_7804.1, row_7997_8000.1, row_8194_8197.1, row_8582_8585.1, row_9163_9166.1, row_9361_9364.1, row_9751_9754.1, row_10000_10003.1, row_10141_10144.1, row_10531_10534.1, row_10726_10729.1, row_11311_11314.1, row_11506_11509.1, row_11896_11899.1, row_12091_12094.1, row_12871_12874.1, row_13066_13069.1, row_13258_13261.1, row_13457_13460.1, row_13651_13654.1, row_13846_13849.1, row_14041_14044.1, row_14236_14239.1, row_14431_14434.1, row_14626_14629.1, row_14821_14824.1, row_15016_15019.1, row_15211_15214.1, row_15406_15409.1, row_15991_15994.1, row_16186_16189.1, row_16381_16384.1, row_16576_16579.1, row_16771_16774.1, row_16966_16969.1, row_17161_17164.1, row_17354_17357.1, row_17551_17554.1, row_17746_17749.1, row_17938_17941.1, row_18136_18139.1, row_18331_18334.1, row_18526_18529.1, row_18721_18724.1, row_19310_19313.1, row_19501_19504.1, row_19694_19697.1, row_19891_19894.1, row_20086_20089.1, row_20281_20284.1, row_20476_20479.1, row_20671_20674.1, row_20866_20869.1, row_21061_21064.1, row_21256_21259.1, row_21451_21454.1, row_21841_21844.1, row_22229_22232.1, row_22621_22624.1, row_22814_22817.1, row_23206_23209.1, row_23791_23794.1, row_24181_24184.1, row_24374_24377.1, row_24571_24574.1, row_24764_24767.1, row_25156_25159.1, row_25351_25354.1, row_26132_26135.1, row_26326_26329.1, row_26716_26719.1, row_26911_26914.1, row_27301_27304.1, row_27496_27499.1, row_27692_27695.1, row_28081_28084.1, row_28280_28283.1, row_28471_28474.1, row_28666_28669.1, row_29056_29059.1, row_29251_29254.1, row_29446_29449.1, row_29641_29644.1, row_29836_29839.1, row_30031_30034.1, row_30223_30226.1, row_30421_30424.1, row_30617_30620.1, row_30811_30814.1, row_31006_31009.1, row_31201_31204.1, row_31591_31594.1, row_31979_31982.1, row_32176_32179.1, row_32371_32374.1, row_32566_32569.1, row_32956_32959.1, row_33152_33155.1, row_33541_33544.1, row_33736_33739.1, row_34124_34127.1, row_34516_34519.1, row_34708_34711.1, row_34906_34909.1, row_35296_35299.1, row_35489_35492.1, row_35686_35689.1, row_36077_36080.1, row_36272_36275.1, row_36856_36859.1, row_37051_37054.1, row_37246_37249.1, row_37441_37444.1, row_37636_37639.1, row_38027_38030.1, row_38221_38224.1, row_38416_38419.1, row_38611_38614.1, row_38806_38809.1, row_39001_39004.1, row_39196_39199.1, row_39584_39587.1, row_39782_39785.1, row_40171_40174.1, row_40561_40564.1, row_40949_40952.1, row_41146_41149.1, row_41341_41344.1, row_41536_41539.1, row_41731_41734.1, row_41926_41929.1, row_42121_42124.1, row_42511_42514.1, row_42706_42709.1, row_42899_42902.1, row_43097_43100.1, row_43876_43879.1, row_44071_44074.1, row_44266_44269.1, row_44461_44464.1, row_44656_44659.1, row_44851_44854.1, row_45046_45049.1, row_45241_45244.1, row_45436_45439.1, row_45631_45634.1, row_46021_46024.1, row_46412_46415.1, row_46609_46612.1, row_46801_46804.1, row_46996_46999.1, row_47191_47194.1, row_47386_47389.1, row_47581_47584.1, row_47971_47974.1, row_48166_48169.1, row_48361_48364.1, row_48554_48557.1, row_48751_48754.1, row_49141_49144.1, row_49336_49339.1, row_49531_49534.1, row_50000_50003.1, row_50001_50004.1, row_50389_50392.1, row_50779_50782.1, row_51191_51194.1, row_51574_51577.1, row_51965_51968.1, row_52362_52365.1, row_52739_52742.1, row_53136_53139.1, row_53525_53528.1, row_53915_53918.1, row_54302_54305.1, row_54701_54704.1, row_55091_55094.1, row_55496_55499.1, row_55894_55897.1, row_56278_56281.1, row_56667_56670.1, row_57036_57039.1, row_57417_57420.1, row_57825_57828.1, row_58198_58201.1, row_58587_58590.1, row_58995_58998.1, row_59373_59376.1, row_59767_59770.1, row_60159_60162.1, row_60530_60533.1, row_60922_60925.1, row_61286_61289.1, row_61684_61687.1, row_62056_62059.1, row_62452_62455.1, row_62849_62852.1, row_63234_63237.1, row_63609_63612.1, row_63982_63985.1, row_64381_64384.1, row_64755_64758.1, row_65129_65132.1, row_65501_65504.1, row_65883_65886.1, row_66287_66290.1, row_66655_66658.1, row_67038_67041.1, row_67426_67429.1, row_67819_67822.1, row_68203_68206.1, row_68595_68598.1, row_68980_68983.1, row_69387_69390.1, row_69770_69773.1, row_70145_70148.1, row_70549_70552.1, row_70931_70934.1, row_71321_71324.1, row_71710_71713.1, row_72104_72107.1, row_72497_72500.1, row_72899_72902.1, row_73286_73289.1, row_73675_73678.1, row_74041_74044.1, row_74436_74439.1, row_74820_74823.1, row_75171_75174.1, row_75575_75578.1, row_75953_75956.1, row_76337_76340.1, row_76728_76731.1, row_77118_77121.1, row_77512_77515.1, row_77902_77905.1, row_78291_78294.1, row_78678_78681.1, row_79069_79072.1, row_79454_79457.1, row_79843_79846.1, row_80233_80236.1, row_80625_80628.1, row_81029_81032.1, row_81411_81414.1, row_81782_81785.1, row_82156_82159.1, row_82540_82543.1, row_82938_82941.1, row_83321_83324.1, row_83714_83717.1, row_84116_84119.1, row_84499_84502.1, row_84888_84891.1, row_85269_85272.1, row_85662_85665.1, row_86026_86029.1, row_86409_86412.1, row_86798_86801.1, row_87199_87202.1, row_87582_87585.1, row_87972_87975.1, row_88355_88358.1, row_88772_88775.1, row_89151_89154.1, row_89560_89563.1, row_89934_89937.1, row_90331_90334.1, row_90707_90710.1, row_91097_91100.1, row_91473_91476.1, row_91853_91856.1, row_92255_92258.1, row_92611_92614.1, row_93019_93022.1, row_93426_93429.1, row_93802_93805.1, row_94186_94189.1, row_94570_94573.1, row_94968_94971.1, row_95360_95363.1, row_95736_95739.1, row_96128_96131.1, row_96522_96525.1, row_96930_96933.1, row_97319_97322.1, row_97723_97726.1, row_98109_98112.1, row_98489_98492.1, row_98851_98854.1, row_99235_99238.1, row_99615_99618.1, row_100000_100003.1⟩

theorem exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50001 50004 ∧ ¬ p ∣ (50004 - 50001) ∧
      ∃ (hNotC : ¬ p ∣ 50004) (hNotB : ¬ p ∣ 50001),
        order_of_C_B_inv_mod_p2 50004 50001 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50389 50392 ∧ ¬ p ∣ (50392 - 50389) ∧
      ∃ (hNotC : ¬ p ∣ 50392) (hNotB : ¬ p ∣ 50389),
        order_of_C_B_inv_mod_p2 50392 50389 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50779 50782 ∧ ¬ p ∣ (50782 - 50779) ∧
      ∃ (hNotC : ¬ p ∣ 50782) (hNotB : ¬ p ∣ 50779),
        order_of_C_B_inv_mod_p2 50782 50779 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51191 51194 ∧ ¬ p ∣ (51194 - 51191) ∧
      ∃ (hNotC : ¬ p ∣ 51194) (hNotB : ¬ p ∣ 51191),
        order_of_C_B_inv_mod_p2 51194 51191 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51574 51577 ∧ ¬ p ∣ (51577 - 51574) ∧
      ∃ (hNotC : ¬ p ∣ 51577) (hNotB : ¬ p ∣ 51574),
        order_of_C_B_inv_mod_p2 51577 51574 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51965 51968 ∧ ¬ p ∣ (51968 - 51965) ∧
      ∃ (hNotC : ¬ p ∣ 51968) (hNotB : ¬ p ∣ 51965),
        order_of_C_B_inv_mod_p2 51968 51965 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52362 52365 ∧ ¬ p ∣ (52365 - 52362) ∧
      ∃ (hNotC : ¬ p ∣ 52365) (hNotB : ¬ p ∣ 52362),
        order_of_C_B_inv_mod_p2 52365 52362 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52739 52742 ∧ ¬ p ∣ (52742 - 52739) ∧
      ∃ (hNotC : ¬ p ∣ 52742) (hNotB : ¬ p ∣ 52739),
        order_of_C_B_inv_mod_p2 52742 52739 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53136 53139 ∧ ¬ p ∣ (53139 - 53136) ∧
      ∃ (hNotC : ¬ p ∣ 53139) (hNotB : ¬ p ∣ 53136),
        order_of_C_B_inv_mod_p2 53139 53136 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53525 53528 ∧ ¬ p ∣ (53528 - 53525) ∧
      ∃ (hNotC : ¬ p ∣ 53528) (hNotB : ¬ p ∣ 53525),
        order_of_C_B_inv_mod_p2 53528 53525 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53915 53918 ∧ ¬ p ∣ (53918 - 53915) ∧
      ∃ (hNotC : ¬ p ∣ 53918) (hNotB : ¬ p ∣ 53915),
        order_of_C_B_inv_mod_p2 53918 53915 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54302 54305 ∧ ¬ p ∣ (54305 - 54302) ∧
      ∃ (hNotC : ¬ p ∣ 54305) (hNotB : ¬ p ∣ 54302),
        order_of_C_B_inv_mod_p2 54305 54302 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54701 54704 ∧ ¬ p ∣ (54704 - 54701) ∧
      ∃ (hNotC : ¬ p ∣ 54704) (hNotB : ¬ p ∣ 54701),
        order_of_C_B_inv_mod_p2 54704 54701 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55091 55094 ∧ ¬ p ∣ (55094 - 55091) ∧
      ∃ (hNotC : ¬ p ∣ 55094) (hNotB : ¬ p ∣ 55091),
        order_of_C_B_inv_mod_p2 55094 55091 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55496 55499 ∧ ¬ p ∣ (55499 - 55496) ∧
      ∃ (hNotC : ¬ p ∣ 55499) (hNotB : ¬ p ∣ 55496),
        order_of_C_B_inv_mod_p2 55499 55496 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55894 55897 ∧ ¬ p ∣ (55897 - 55894) ∧
      ∃ (hNotC : ¬ p ∣ 55897) (hNotB : ¬ p ∣ 55894),
        order_of_C_B_inv_mod_p2 55897 55894 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56278 56281 ∧ ¬ p ∣ (56281 - 56278) ∧
      ∃ (hNotC : ¬ p ∣ 56281) (hNotB : ¬ p ∣ 56278),
        order_of_C_B_inv_mod_p2 56281 56278 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56667 56670 ∧ ¬ p ∣ (56670 - 56667) ∧
      ∃ (hNotC : ¬ p ∣ 56670) (hNotB : ¬ p ∣ 56667),
        order_of_C_B_inv_mod_p2 56670 56667 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57036 57039 ∧ ¬ p ∣ (57039 - 57036) ∧
      ∃ (hNotC : ¬ p ∣ 57039) (hNotB : ¬ p ∣ 57036),
        order_of_C_B_inv_mod_p2 57039 57036 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57417 57420 ∧ ¬ p ∣ (57420 - 57417) ∧
      ∃ (hNotC : ¬ p ∣ 57420) (hNotB : ¬ p ∣ 57417),
        order_of_C_B_inv_mod_p2 57420 57417 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57825 57828 ∧ ¬ p ∣ (57828 - 57825) ∧
      ∃ (hNotC : ¬ p ∣ 57828) (hNotB : ¬ p ∣ 57825),
        order_of_C_B_inv_mod_p2 57828 57825 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58198 58201 ∧ ¬ p ∣ (58201 - 58198) ∧
      ∃ (hNotC : ¬ p ∣ 58201) (hNotB : ¬ p ∣ 58198),
        order_of_C_B_inv_mod_p2 58201 58198 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58587 58590 ∧ ¬ p ∣ (58590 - 58587) ∧
      ∃ (hNotC : ¬ p ∣ 58590) (hNotB : ¬ p ∣ 58587),
        order_of_C_B_inv_mod_p2 58590 58587 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58995 58998 ∧ ¬ p ∣ (58998 - 58995) ∧
      ∃ (hNotC : ¬ p ∣ 58998) (hNotB : ¬ p ∣ 58995),
        order_of_C_B_inv_mod_p2 58998 58995 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59373 59376 ∧ ¬ p ∣ (59376 - 59373) ∧
      ∃ (hNotC : ¬ p ∣ 59376) (hNotB : ¬ p ∣ 59373),
        order_of_C_B_inv_mod_p2 59376 59373 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59767 59770 ∧ ¬ p ∣ (59770 - 59767) ∧
      ∃ (hNotC : ¬ p ∣ 59770) (hNotB : ¬ p ∣ 59767),
        order_of_C_B_inv_mod_p2 59770 59767 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60159 60162 ∧ ¬ p ∣ (60162 - 60159) ∧
      ∃ (hNotC : ¬ p ∣ 60162) (hNotB : ¬ p ∣ 60159),
        order_of_C_B_inv_mod_p2 60162 60159 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60530 60533 ∧ ¬ p ∣ (60533 - 60530) ∧
      ∃ (hNotC : ¬ p ∣ 60533) (hNotB : ¬ p ∣ 60530),
        order_of_C_B_inv_mod_p2 60533 60530 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60922 60925 ∧ ¬ p ∣ (60925 - 60922) ∧
      ∃ (hNotC : ¬ p ∣ 60925) (hNotB : ¬ p ∣ 60922),
        order_of_C_B_inv_mod_p2 60925 60922 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61286 61289 ∧ ¬ p ∣ (61289 - 61286) ∧
      ∃ (hNotC : ¬ p ∣ 61289) (hNotB : ¬ p ∣ 61286),
        order_of_C_B_inv_mod_p2 61289 61286 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61684 61687 ∧ ¬ p ∣ (61687 - 61684) ∧
      ∃ (hNotC : ¬ p ∣ 61687) (hNotB : ¬ p ∣ 61684),
        order_of_C_B_inv_mod_p2 61687 61684 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62056 62059 ∧ ¬ p ∣ (62059 - 62056) ∧
      ∃ (hNotC : ¬ p ∣ 62059) (hNotB : ¬ p ∣ 62056),
        order_of_C_B_inv_mod_p2 62059 62056 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62452 62455 ∧ ¬ p ∣ (62455 - 62452) ∧
      ∃ (hNotC : ¬ p ∣ 62455) (hNotB : ¬ p ∣ 62452),
        order_of_C_B_inv_mod_p2 62455 62452 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62849 62852 ∧ ¬ p ∣ (62852 - 62849) ∧
      ∃ (hNotC : ¬ p ∣ 62852) (hNotB : ¬ p ∣ 62849),
        order_of_C_B_inv_mod_p2 62852 62849 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63234 63237 ∧ ¬ p ∣ (63237 - 63234) ∧
      ∃ (hNotC : ¬ p ∣ 63237) (hNotB : ¬ p ∣ 63234),
        order_of_C_B_inv_mod_p2 63237 63234 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63609 63612 ∧ ¬ p ∣ (63612 - 63609) ∧
      ∃ (hNotC : ¬ p ∣ 63612) (hNotB : ¬ p ∣ 63609),
        order_of_C_B_inv_mod_p2 63612 63609 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63982 63985 ∧ ¬ p ∣ (63985 - 63982) ∧
      ∃ (hNotC : ¬ p ∣ 63985) (hNotB : ¬ p ∣ 63982),
        order_of_C_B_inv_mod_p2 63985 63982 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64381 64384 ∧ ¬ p ∣ (64384 - 64381) ∧
      ∃ (hNotC : ¬ p ∣ 64384) (hNotB : ¬ p ∣ 64381),
        order_of_C_B_inv_mod_p2 64384 64381 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64755 64758 ∧ ¬ p ∣ (64758 - 64755) ∧
      ∃ (hNotC : ¬ p ∣ 64758) (hNotB : ¬ p ∣ 64755),
        order_of_C_B_inv_mod_p2 64758 64755 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65129 65132 ∧ ¬ p ∣ (65132 - 65129) ∧
      ∃ (hNotC : ¬ p ∣ 65132) (hNotB : ¬ p ∣ 65129),
        order_of_C_B_inv_mod_p2 65132 65129 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65501 65504 ∧ ¬ p ∣ (65504 - 65501) ∧
      ∃ (hNotC : ¬ p ∣ 65504) (hNotB : ¬ p ∣ 65501),
        order_of_C_B_inv_mod_p2 65504 65501 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65883 65886 ∧ ¬ p ∣ (65886 - 65883) ∧
      ∃ (hNotC : ¬ p ∣ 65886) (hNotB : ¬ p ∣ 65883),
        order_of_C_B_inv_mod_p2 65886 65883 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66287 66290 ∧ ¬ p ∣ (66290 - 66287) ∧
      ∃ (hNotC : ¬ p ∣ 66290) (hNotB : ¬ p ∣ 66287),
        order_of_C_B_inv_mod_p2 66290 66287 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66655 66658 ∧ ¬ p ∣ (66658 - 66655) ∧
      ∃ (hNotC : ¬ p ∣ 66658) (hNotB : ¬ p ∣ 66655),
        order_of_C_B_inv_mod_p2 66658 66655 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67038 67041 ∧ ¬ p ∣ (67041 - 67038) ∧
      ∃ (hNotC : ¬ p ∣ 67041) (hNotB : ¬ p ∣ 67038),
        order_of_C_B_inv_mod_p2 67041 67038 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67426 67429 ∧ ¬ p ∣ (67429 - 67426) ∧
      ∃ (hNotC : ¬ p ∣ 67429) (hNotB : ¬ p ∣ 67426),
        order_of_C_B_inv_mod_p2 67429 67426 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67819 67822 ∧ ¬ p ∣ (67822 - 67819) ∧
      ∃ (hNotC : ¬ p ∣ 67822) (hNotB : ¬ p ∣ 67819),
        order_of_C_B_inv_mod_p2 67822 67819 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68203 68206 ∧ ¬ p ∣ (68206 - 68203) ∧
      ∃ (hNotC : ¬ p ∣ 68206) (hNotB : ¬ p ∣ 68203),
        order_of_C_B_inv_mod_p2 68206 68203 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68595 68598 ∧ ¬ p ∣ (68598 - 68595) ∧
      ∃ (hNotC : ¬ p ∣ 68598) (hNotB : ¬ p ∣ 68595),
        order_of_C_B_inv_mod_p2 68598 68595 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68980 68983 ∧ ¬ p ∣ (68983 - 68980) ∧
      ∃ (hNotC : ¬ p ∣ 68983) (hNotB : ¬ p ∣ 68980),
        order_of_C_B_inv_mod_p2 68983 68980 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69387 69390 ∧ ¬ p ∣ (69390 - 69387) ∧
      ∃ (hNotC : ¬ p ∣ 69390) (hNotB : ¬ p ∣ 69387),
        order_of_C_B_inv_mod_p2 69390 69387 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69770 69773 ∧ ¬ p ∣ (69773 - 69770) ∧
      ∃ (hNotC : ¬ p ∣ 69773) (hNotB : ¬ p ∣ 69770),
        order_of_C_B_inv_mod_p2 69773 69770 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70145 70148 ∧ ¬ p ∣ (70148 - 70145) ∧
      ∃ (hNotC : ¬ p ∣ 70148) (hNotB : ¬ p ∣ 70145),
        order_of_C_B_inv_mod_p2 70148 70145 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70549 70552 ∧ ¬ p ∣ (70552 - 70549) ∧
      ∃ (hNotC : ¬ p ∣ 70552) (hNotB : ¬ p ∣ 70549),
        order_of_C_B_inv_mod_p2 70552 70549 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70931 70934 ∧ ¬ p ∣ (70934 - 70931) ∧
      ∃ (hNotC : ¬ p ∣ 70934) (hNotB : ¬ p ∣ 70931),
        order_of_C_B_inv_mod_p2 70934 70931 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71321 71324 ∧ ¬ p ∣ (71324 - 71321) ∧
      ∃ (hNotC : ¬ p ∣ 71324) (hNotB : ¬ p ∣ 71321),
        order_of_C_B_inv_mod_p2 71324 71321 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71710 71713 ∧ ¬ p ∣ (71713 - 71710) ∧
      ∃ (hNotC : ¬ p ∣ 71713) (hNotB : ¬ p ∣ 71710),
        order_of_C_B_inv_mod_p2 71713 71710 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72104 72107 ∧ ¬ p ∣ (72107 - 72104) ∧
      ∃ (hNotC : ¬ p ∣ 72107) (hNotB : ¬ p ∣ 72104),
        order_of_C_B_inv_mod_p2 72107 72104 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72497 72500 ∧ ¬ p ∣ (72500 - 72497) ∧
      ∃ (hNotC : ¬ p ∣ 72500) (hNotB : ¬ p ∣ 72497),
        order_of_C_B_inv_mod_p2 72500 72497 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72899 72902 ∧ ¬ p ∣ (72902 - 72899) ∧
      ∃ (hNotC : ¬ p ∣ 72902) (hNotB : ¬ p ∣ 72899),
        order_of_C_B_inv_mod_p2 72902 72899 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73286 73289 ∧ ¬ p ∣ (73289 - 73286) ∧
      ∃ (hNotC : ¬ p ∣ 73289) (hNotB : ¬ p ∣ 73286),
        order_of_C_B_inv_mod_p2 73289 73286 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73675 73678 ∧ ¬ p ∣ (73678 - 73675) ∧
      ∃ (hNotC : ¬ p ∣ 73678) (hNotB : ¬ p ∣ 73675),
        order_of_C_B_inv_mod_p2 73678 73675 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74041 74044 ∧ ¬ p ∣ (74044 - 74041) ∧
      ∃ (hNotC : ¬ p ∣ 74044) (hNotB : ¬ p ∣ 74041),
        order_of_C_B_inv_mod_p2 74044 74041 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74436 74439 ∧ ¬ p ∣ (74439 - 74436) ∧
      ∃ (hNotC : ¬ p ∣ 74439) (hNotB : ¬ p ∣ 74436),
        order_of_C_B_inv_mod_p2 74439 74436 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74820 74823 ∧ ¬ p ∣ (74823 - 74820) ∧
      ∃ (hNotC : ¬ p ∣ 74823) (hNotB : ¬ p ∣ 74820),
        order_of_C_B_inv_mod_p2 74823 74820 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75171 75174 ∧ ¬ p ∣ (75174 - 75171) ∧
      ∃ (hNotC : ¬ p ∣ 75174) (hNotB : ¬ p ∣ 75171),
        order_of_C_B_inv_mod_p2 75174 75171 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75575 75578 ∧ ¬ p ∣ (75578 - 75575) ∧
      ∃ (hNotC : ¬ p ∣ 75578) (hNotB : ¬ p ∣ 75575),
        order_of_C_B_inv_mod_p2 75578 75575 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75953 75956 ∧ ¬ p ∣ (75956 - 75953) ∧
      ∃ (hNotC : ¬ p ∣ 75956) (hNotB : ¬ p ∣ 75953),
        order_of_C_B_inv_mod_p2 75956 75953 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76337 76340 ∧ ¬ p ∣ (76340 - 76337) ∧
      ∃ (hNotC : ¬ p ∣ 76340) (hNotB : ¬ p ∣ 76337),
        order_of_C_B_inv_mod_p2 76340 76337 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76728 76731 ∧ ¬ p ∣ (76731 - 76728) ∧
      ∃ (hNotC : ¬ p ∣ 76731) (hNotB : ¬ p ∣ 76728),
        order_of_C_B_inv_mod_p2 76731 76728 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77118 77121 ∧ ¬ p ∣ (77121 - 77118) ∧
      ∃ (hNotC : ¬ p ∣ 77121) (hNotB : ¬ p ∣ 77118),
        order_of_C_B_inv_mod_p2 77121 77118 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77512 77515 ∧ ¬ p ∣ (77515 - 77512) ∧
      ∃ (hNotC : ¬ p ∣ 77515) (hNotB : ¬ p ∣ 77512),
        order_of_C_B_inv_mod_p2 77515 77512 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77902 77905 ∧ ¬ p ∣ (77905 - 77902) ∧
      ∃ (hNotC : ¬ p ∣ 77905) (hNotB : ¬ p ∣ 77902),
        order_of_C_B_inv_mod_p2 77905 77902 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78291 78294 ∧ ¬ p ∣ (78294 - 78291) ∧
      ∃ (hNotC : ¬ p ∣ 78294) (hNotB : ¬ p ∣ 78291),
        order_of_C_B_inv_mod_p2 78294 78291 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78678 78681 ∧ ¬ p ∣ (78681 - 78678) ∧
      ∃ (hNotC : ¬ p ∣ 78681) (hNotB : ¬ p ∣ 78678),
        order_of_C_B_inv_mod_p2 78681 78678 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79069 79072 ∧ ¬ p ∣ (79072 - 79069) ∧
      ∃ (hNotC : ¬ p ∣ 79072) (hNotB : ¬ p ∣ 79069),
        order_of_C_B_inv_mod_p2 79072 79069 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79454 79457 ∧ ¬ p ∣ (79457 - 79454) ∧
      ∃ (hNotC : ¬ p ∣ 79457) (hNotB : ¬ p ∣ 79454),
        order_of_C_B_inv_mod_p2 79457 79454 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79843 79846 ∧ ¬ p ∣ (79846 - 79843) ∧
      ∃ (hNotC : ¬ p ∣ 79846) (hNotB : ¬ p ∣ 79843),
        order_of_C_B_inv_mod_p2 79846 79843 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80233 80236 ∧ ¬ p ∣ (80236 - 80233) ∧
      ∃ (hNotC : ¬ p ∣ 80236) (hNotB : ¬ p ∣ 80233),
        order_of_C_B_inv_mod_p2 80236 80233 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80625 80628 ∧ ¬ p ∣ (80628 - 80625) ∧
      ∃ (hNotC : ¬ p ∣ 80628) (hNotB : ¬ p ∣ 80625),
        order_of_C_B_inv_mod_p2 80628 80625 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81029 81032 ∧ ¬ p ∣ (81032 - 81029) ∧
      ∃ (hNotC : ¬ p ∣ 81032) (hNotB : ¬ p ∣ 81029),
        order_of_C_B_inv_mod_p2 81032 81029 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81411 81414 ∧ ¬ p ∣ (81414 - 81411) ∧
      ∃ (hNotC : ¬ p ∣ 81414) (hNotB : ¬ p ∣ 81411),
        order_of_C_B_inv_mod_p2 81414 81411 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81782 81785 ∧ ¬ p ∣ (81785 - 81782) ∧
      ∃ (hNotC : ¬ p ∣ 81785) (hNotB : ¬ p ∣ 81782),
        order_of_C_B_inv_mod_p2 81785 81782 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82156 82159 ∧ ¬ p ∣ (82159 - 82156) ∧
      ∃ (hNotC : ¬ p ∣ 82159) (hNotB : ¬ p ∣ 82156),
        order_of_C_B_inv_mod_p2 82159 82156 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82540 82543 ∧ ¬ p ∣ (82543 - 82540) ∧
      ∃ (hNotC : ¬ p ∣ 82543) (hNotB : ¬ p ∣ 82540),
        order_of_C_B_inv_mod_p2 82543 82540 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82938 82941 ∧ ¬ p ∣ (82941 - 82938) ∧
      ∃ (hNotC : ¬ p ∣ 82941) (hNotB : ¬ p ∣ 82938),
        order_of_C_B_inv_mod_p2 82941 82938 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83321 83324 ∧ ¬ p ∣ (83324 - 83321) ∧
      ∃ (hNotC : ¬ p ∣ 83324) (hNotB : ¬ p ∣ 83321),
        order_of_C_B_inv_mod_p2 83324 83321 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83714 83717 ∧ ¬ p ∣ (83717 - 83714) ∧
      ∃ (hNotC : ¬ p ∣ 83717) (hNotB : ¬ p ∣ 83714),
        order_of_C_B_inv_mod_p2 83717 83714 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84116 84119 ∧ ¬ p ∣ (84119 - 84116) ∧
      ∃ (hNotC : ¬ p ∣ 84119) (hNotB : ¬ p ∣ 84116),
        order_of_C_B_inv_mod_p2 84119 84116 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84499 84502 ∧ ¬ p ∣ (84502 - 84499) ∧
      ∃ (hNotC : ¬ p ∣ 84502) (hNotB : ¬ p ∣ 84499),
        order_of_C_B_inv_mod_p2 84502 84499 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84888 84891 ∧ ¬ p ∣ (84891 - 84888) ∧
      ∃ (hNotC : ¬ p ∣ 84891) (hNotB : ¬ p ∣ 84888),
        order_of_C_B_inv_mod_p2 84891 84888 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85269 85272 ∧ ¬ p ∣ (85272 - 85269) ∧
      ∃ (hNotC : ¬ p ∣ 85272) (hNotB : ¬ p ∣ 85269),
        order_of_C_B_inv_mod_p2 85272 85269 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85662 85665 ∧ ¬ p ∣ (85665 - 85662) ∧
      ∃ (hNotC : ¬ p ∣ 85665) (hNotB : ¬ p ∣ 85662),
        order_of_C_B_inv_mod_p2 85665 85662 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86026 86029 ∧ ¬ p ∣ (86029 - 86026) ∧
      ∃ (hNotC : ¬ p ∣ 86029) (hNotB : ¬ p ∣ 86026),
        order_of_C_B_inv_mod_p2 86029 86026 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86409 86412 ∧ ¬ p ∣ (86412 - 86409) ∧
      ∃ (hNotC : ¬ p ∣ 86412) (hNotB : ¬ p ∣ 86409),
        order_of_C_B_inv_mod_p2 86412 86409 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86798 86801 ∧ ¬ p ∣ (86801 - 86798) ∧
      ∃ (hNotC : ¬ p ∣ 86801) (hNotB : ¬ p ∣ 86798),
        order_of_C_B_inv_mod_p2 86801 86798 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87199 87202 ∧ ¬ p ∣ (87202 - 87199) ∧
      ∃ (hNotC : ¬ p ∣ 87202) (hNotB : ¬ p ∣ 87199),
        order_of_C_B_inv_mod_p2 87202 87199 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87582 87585 ∧ ¬ p ∣ (87585 - 87582) ∧
      ∃ (hNotC : ¬ p ∣ 87585) (hNotB : ¬ p ∣ 87582),
        order_of_C_B_inv_mod_p2 87585 87582 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87972 87975 ∧ ¬ p ∣ (87975 - 87972) ∧
      ∃ (hNotC : ¬ p ∣ 87975) (hNotB : ¬ p ∣ 87972),
        order_of_C_B_inv_mod_p2 87975 87972 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88355 88358 ∧ ¬ p ∣ (88358 - 88355) ∧
      ∃ (hNotC : ¬ p ∣ 88358) (hNotB : ¬ p ∣ 88355),
        order_of_C_B_inv_mod_p2 88358 88355 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88772 88775 ∧ ¬ p ∣ (88775 - 88772) ∧
      ∃ (hNotC : ¬ p ∣ 88775) (hNotB : ¬ p ∣ 88772),
        order_of_C_B_inv_mod_p2 88775 88772 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89151 89154 ∧ ¬ p ∣ (89154 - 89151) ∧
      ∃ (hNotC : ¬ p ∣ 89154) (hNotB : ¬ p ∣ 89151),
        order_of_C_B_inv_mod_p2 89154 89151 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89560 89563 ∧ ¬ p ∣ (89563 - 89560) ∧
      ∃ (hNotC : ¬ p ∣ 89563) (hNotB : ¬ p ∣ 89560),
        order_of_C_B_inv_mod_p2 89563 89560 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89934 89937 ∧ ¬ p ∣ (89937 - 89934) ∧
      ∃ (hNotC : ¬ p ∣ 89937) (hNotB : ¬ p ∣ 89934),
        order_of_C_B_inv_mod_p2 89937 89934 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90331 90334 ∧ ¬ p ∣ (90334 - 90331) ∧
      ∃ (hNotC : ¬ p ∣ 90334) (hNotB : ¬ p ∣ 90331),
        order_of_C_B_inv_mod_p2 90334 90331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90707 90710 ∧ ¬ p ∣ (90710 - 90707) ∧
      ∃ (hNotC : ¬ p ∣ 90710) (hNotB : ¬ p ∣ 90707),
        order_of_C_B_inv_mod_p2 90710 90707 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91097 91100 ∧ ¬ p ∣ (91100 - 91097) ∧
      ∃ (hNotC : ¬ p ∣ 91100) (hNotB : ¬ p ∣ 91097),
        order_of_C_B_inv_mod_p2 91100 91097 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91473 91476 ∧ ¬ p ∣ (91476 - 91473) ∧
      ∃ (hNotC : ¬ p ∣ 91476) (hNotB : ¬ p ∣ 91473),
        order_of_C_B_inv_mod_p2 91476 91473 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91853 91856 ∧ ¬ p ∣ (91856 - 91853) ∧
      ∃ (hNotC : ¬ p ∣ 91856) (hNotB : ¬ p ∣ 91853),
        order_of_C_B_inv_mod_p2 91856 91853 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92255 92258 ∧ ¬ p ∣ (92258 - 92255) ∧
      ∃ (hNotC : ¬ p ∣ 92258) (hNotB : ¬ p ∣ 92255),
        order_of_C_B_inv_mod_p2 92258 92255 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92611 92614 ∧ ¬ p ∣ (92614 - 92611) ∧
      ∃ (hNotC : ¬ p ∣ 92614) (hNotB : ¬ p ∣ 92611),
        order_of_C_B_inv_mod_p2 92614 92611 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93019 93022 ∧ ¬ p ∣ (93022 - 93019) ∧
      ∃ (hNotC : ¬ p ∣ 93022) (hNotB : ¬ p ∣ 93019),
        order_of_C_B_inv_mod_p2 93022 93019 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93426 93429 ∧ ¬ p ∣ (93429 - 93426) ∧
      ∃ (hNotC : ¬ p ∣ 93429) (hNotB : ¬ p ∣ 93426),
        order_of_C_B_inv_mod_p2 93429 93426 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93802 93805 ∧ ¬ p ∣ (93805 - 93802) ∧
      ∃ (hNotC : ¬ p ∣ 93805) (hNotB : ¬ p ∣ 93802),
        order_of_C_B_inv_mod_p2 93805 93802 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94186 94189 ∧ ¬ p ∣ (94189 - 94186) ∧
      ∃ (hNotC : ¬ p ∣ 94189) (hNotB : ¬ p ∣ 94186),
        order_of_C_B_inv_mod_p2 94189 94186 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94570 94573 ∧ ¬ p ∣ (94573 - 94570) ∧
      ∃ (hNotC : ¬ p ∣ 94573) (hNotB : ¬ p ∣ 94570),
        order_of_C_B_inv_mod_p2 94573 94570 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94968 94971 ∧ ¬ p ∣ (94971 - 94968) ∧
      ∃ (hNotC : ¬ p ∣ 94971) (hNotB : ¬ p ∣ 94968),
        order_of_C_B_inv_mod_p2 94971 94968 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95360 95363 ∧ ¬ p ∣ (95363 - 95360) ∧
      ∃ (hNotC : ¬ p ∣ 95363) (hNotB : ¬ p ∣ 95360),
        order_of_C_B_inv_mod_p2 95363 95360 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95736 95739 ∧ ¬ p ∣ (95739 - 95736) ∧
      ∃ (hNotC : ¬ p ∣ 95739) (hNotB : ¬ p ∣ 95736),
        order_of_C_B_inv_mod_p2 95739 95736 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96128 96131 ∧ ¬ p ∣ (96131 - 96128) ∧
      ∃ (hNotC : ¬ p ∣ 96131) (hNotB : ¬ p ∣ 96128),
        order_of_C_B_inv_mod_p2 96131 96128 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96522 96525 ∧ ¬ p ∣ (96525 - 96522) ∧
      ∃ (hNotC : ¬ p ∣ 96525) (hNotB : ¬ p ∣ 96522),
        order_of_C_B_inv_mod_p2 96525 96522 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96930 96933 ∧ ¬ p ∣ (96933 - 96930) ∧
      ∃ (hNotC : ¬ p ∣ 96933) (hNotB : ¬ p ∣ 96930),
        order_of_C_B_inv_mod_p2 96933 96930 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97319 97322 ∧ ¬ p ∣ (97322 - 97319) ∧
      ∃ (hNotC : ¬ p ∣ 97322) (hNotB : ¬ p ∣ 97319),
        order_of_C_B_inv_mod_p2 97322 97319 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97723 97726 ∧ ¬ p ∣ (97726 - 97723) ∧
      ∃ (hNotC : ¬ p ∣ 97726) (hNotB : ¬ p ∣ 97723),
        order_of_C_B_inv_mod_p2 97726 97723 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98109 98112 ∧ ¬ p ∣ (98112 - 98109) ∧
      ∃ (hNotC : ¬ p ∣ 98112) (hNotB : ¬ p ∣ 98109),
        order_of_C_B_inv_mod_p2 98112 98109 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98489 98492 ∧ ¬ p ∣ (98492 - 98489) ∧
      ∃ (hNotC : ¬ p ∣ 98492) (hNotB : ¬ p ∣ 98489),
        order_of_C_B_inv_mod_p2 98492 98489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98851 98854 ∧ ¬ p ∣ (98854 - 98851) ∧
      ∃ (hNotC : ¬ p ∣ 98854) (hNotB : ¬ p ∣ 98851),
        order_of_C_B_inv_mod_p2 98854 98851 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99235 99238 ∧ ¬ p ∣ (99238 - 99235) ∧
      ∃ (hNotC : ¬ p ∣ 99238) (hNotB : ¬ p ∣ 99235),
        order_of_C_B_inv_mod_p2 99238 99235 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99615 99618 ∧ ¬ p ∣ (99618 - 99615) ∧
      ∃ (hNotC : ¬ p ∣ 99618) (hNotB : ¬ p ∣ 99615),
        order_of_C_B_inv_mod_p2 99618 99615 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100000 100003 ∧ ¬ p ∣ (100003 - 100000) ∧
      ∃ (hNotC : ¬ p ∣ 100003) (hNotB : ¬ p ∣ 100000),
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) :=
  ⟨row_1_4.2.1, row_196_199.2.1, row_386_389.2.1, row_587_590.2.1, row_1171_1174.2.1, row_1366_1369.2.1, row_1559_1562.2.1, row_1756_1759.2.1, row_2146_2149.2.1, row_2536_2539.2.1, row_2731_2734.2.1, row_3313_3316.2.1, row_3511_3514.2.1, row_3706_3709.2.1, row_3901_3904.2.1, row_4682_4685.2.1, row_4876_4879.2.1, row_5071_5074.2.1, row_5461_5464.2.1, row_5849_5852.2.1, row_6046_6049.2.1, row_6241_6244.2.1, row_6631_6634.2.1, row_7411_7414.2.1, row_7606_7609.2.1, row_7801_7804.2.1, row_7997_8000.2.1, row_8194_8197.2.1, row_8582_8585.2.1, row_9163_9166.2.1, row_9361_9364.2.1, row_9751_9754.2.1, row_10000_10003.2.1, row_10141_10144.2.1, row_10531_10534.2.1, row_10726_10729.2.1, row_11311_11314.2.1, row_11506_11509.2.1, row_11896_11899.2.1, row_12091_12094.2.1, row_12871_12874.2.1, row_13066_13069.2.1, row_13258_13261.2.1, row_13457_13460.2.1, row_13651_13654.2.1, row_13846_13849.2.1, row_14041_14044.2.1, row_14236_14239.2.1, row_14431_14434.2.1, row_14626_14629.2.1, row_14821_14824.2.1, row_15016_15019.2.1, row_15211_15214.2.1, row_15406_15409.2.1, row_15991_15994.2.1, row_16186_16189.2.1, row_16381_16384.2.1, row_16576_16579.2.1, row_16771_16774.2.1, row_16966_16969.2.1, row_17161_17164.2.1, row_17354_17357.2.1, row_17551_17554.2.1, row_17746_17749.2.1, row_17938_17941.2.1, row_18136_18139.2.1, row_18331_18334.2.1, row_18526_18529.2.1, row_18721_18724.2.1, row_19310_19313.2.1, row_19501_19504.2.1, row_19694_19697.2.1, row_19891_19894.2.1, row_20086_20089.2.1, row_20281_20284.2.1, row_20476_20479.2.1, row_20671_20674.2.1, row_20866_20869.2.1, row_21061_21064.2.1, row_21256_21259.2.1, row_21451_21454.2.1, row_21841_21844.2.1, row_22229_22232.2.1, row_22621_22624.2.1, row_22814_22817.2.1, row_23206_23209.2.1, row_23791_23794.2.1, row_24181_24184.2.1, row_24374_24377.2.1, row_24571_24574.2.1, row_24764_24767.2.1, row_25156_25159.2.1, row_25351_25354.2.1, row_26132_26135.2.1, row_26326_26329.2.1, row_26716_26719.2.1, row_26911_26914.2.1, row_27301_27304.2.1, row_27496_27499.2.1, row_27692_27695.2.1, row_28081_28084.2.1, row_28280_28283.2.1, row_28471_28474.2.1, row_28666_28669.2.1, row_29056_29059.2.1, row_29251_29254.2.1, row_29446_29449.2.1, row_29641_29644.2.1, row_29836_29839.2.1, row_30031_30034.2.1, row_30223_30226.2.1, row_30421_30424.2.1, row_30617_30620.2.1, row_30811_30814.2.1, row_31006_31009.2.1, row_31201_31204.2.1, row_31591_31594.2.1, row_31979_31982.2.1, row_32176_32179.2.1, row_32371_32374.2.1, row_32566_32569.2.1, row_32956_32959.2.1, row_33152_33155.2.1, row_33541_33544.2.1, row_33736_33739.2.1, row_34124_34127.2.1, row_34516_34519.2.1, row_34708_34711.2.1, row_34906_34909.2.1, row_35296_35299.2.1, row_35489_35492.2.1, row_35686_35689.2.1, row_36077_36080.2.1, row_36272_36275.2.1, row_36856_36859.2.1, row_37051_37054.2.1, row_37246_37249.2.1, row_37441_37444.2.1, row_37636_37639.2.1, row_38027_38030.2.1, row_38221_38224.2.1, row_38416_38419.2.1, row_38611_38614.2.1, row_38806_38809.2.1, row_39001_39004.2.1, row_39196_39199.2.1, row_39584_39587.2.1, row_39782_39785.2.1, row_40171_40174.2.1, row_40561_40564.2.1, row_40949_40952.2.1, row_41146_41149.2.1, row_41341_41344.2.1, row_41536_41539.2.1, row_41731_41734.2.1, row_41926_41929.2.1, row_42121_42124.2.1, row_42511_42514.2.1, row_42706_42709.2.1, row_42899_42902.2.1, row_43097_43100.2.1, row_43876_43879.2.1, row_44071_44074.2.1, row_44266_44269.2.1, row_44461_44464.2.1, row_44656_44659.2.1, row_44851_44854.2.1, row_45046_45049.2.1, row_45241_45244.2.1, row_45436_45439.2.1, row_45631_45634.2.1, row_46021_46024.2.1, row_46412_46415.2.1, row_46609_46612.2.1, row_46801_46804.2.1, row_46996_46999.2.1, row_47191_47194.2.1, row_47386_47389.2.1, row_47581_47584.2.1, row_47971_47974.2.1, row_48166_48169.2.1, row_48361_48364.2.1, row_48554_48557.2.1, row_48751_48754.2.1, row_49141_49144.2.1, row_49336_49339.2.1, row_49531_49534.2.1, row_50000_50003.2.1, row_50001_50004.2.1, row_50389_50392.2.1, row_50779_50782.2.1, row_51191_51194.2.1, row_51574_51577.2.1, row_51965_51968.2.1, row_52362_52365.2.1, row_52739_52742.2.1, row_53136_53139.2.1, row_53525_53528.2.1, row_53915_53918.2.1, row_54302_54305.2.1, row_54701_54704.2.1, row_55091_55094.2.1, row_55496_55499.2.1, row_55894_55897.2.1, row_56278_56281.2.1, row_56667_56670.2.1, row_57036_57039.2.1, row_57417_57420.2.1, row_57825_57828.2.1, row_58198_58201.2.1, row_58587_58590.2.1, row_58995_58998.2.1, row_59373_59376.2.1, row_59767_59770.2.1, row_60159_60162.2.1, row_60530_60533.2.1, row_60922_60925.2.1, row_61286_61289.2.1, row_61684_61687.2.1, row_62056_62059.2.1, row_62452_62455.2.1, row_62849_62852.2.1, row_63234_63237.2.1, row_63609_63612.2.1, row_63982_63985.2.1, row_64381_64384.2.1, row_64755_64758.2.1, row_65129_65132.2.1, row_65501_65504.2.1, row_65883_65886.2.1, row_66287_66290.2.1, row_66655_66658.2.1, row_67038_67041.2.1, row_67426_67429.2.1, row_67819_67822.2.1, row_68203_68206.2.1, row_68595_68598.2.1, row_68980_68983.2.1, row_69387_69390.2.1, row_69770_69773.2.1, row_70145_70148.2.1, row_70549_70552.2.1, row_70931_70934.2.1, row_71321_71324.2.1, row_71710_71713.2.1, row_72104_72107.2.1, row_72497_72500.2.1, row_72899_72902.2.1, row_73286_73289.2.1, row_73675_73678.2.1, row_74041_74044.2.1, row_74436_74439.2.1, row_74820_74823.2.1, row_75171_75174.2.1, row_75575_75578.2.1, row_75953_75956.2.1, row_76337_76340.2.1, row_76728_76731.2.1, row_77118_77121.2.1, row_77512_77515.2.1, row_77902_77905.2.1, row_78291_78294.2.1, row_78678_78681.2.1, row_79069_79072.2.1, row_79454_79457.2.1, row_79843_79846.2.1, row_80233_80236.2.1, row_80625_80628.2.1, row_81029_81032.2.1, row_81411_81414.2.1, row_81782_81785.2.1, row_82156_82159.2.1, row_82540_82543.2.1, row_82938_82941.2.1, row_83321_83324.2.1, row_83714_83717.2.1, row_84116_84119.2.1, row_84499_84502.2.1, row_84888_84891.2.1, row_85269_85272.2.1, row_85662_85665.2.1, row_86026_86029.2.1, row_86409_86412.2.1, row_86798_86801.2.1, row_87199_87202.2.1, row_87582_87585.2.1, row_87972_87975.2.1, row_88355_88358.2.1, row_88772_88775.2.1, row_89151_89154.2.1, row_89560_89563.2.1, row_89934_89937.2.1, row_90331_90334.2.1, row_90707_90710.2.1, row_91097_91100.2.1, row_91473_91476.2.1, row_91853_91856.2.1, row_92255_92258.2.1, row_92611_92614.2.1, row_93019_93022.2.1, row_93426_93429.2.1, row_93802_93805.2.1, row_94186_94189.2.1, row_94570_94573.2.1, row_94968_94971.2.1, row_95360_95363.2.1, row_95736_95739.2.1, row_96128_96131.2.1, row_96522_96525.2.1, row_96930_96933.2.1, row_97319_97322.2.1, row_97723_97726.2.1, row_98109_98112.2.1, row_98489_98492.2.1, row_98851_98854.2.1, row_99235_99238.2.1, row_99615_99618.2.1, row_100000_100003.2.1⟩

theorem S_not_fourth_B_le_100000_from_exp_one_table_rows :
    S_not_fourth 1 4 ∧
    S_not_fourth 196 199 ∧
    S_not_fourth 386 389 ∧
    S_not_fourth 587 590 ∧
    S_not_fourth 1171 1174 ∧
    S_not_fourth 1366 1369 ∧
    S_not_fourth 1559 1562 ∧
    S_not_fourth 1756 1759 ∧
    S_not_fourth 2146 2149 ∧
    S_not_fourth 2536 2539 ∧
    S_not_fourth 2731 2734 ∧
    S_not_fourth 3313 3316 ∧
    S_not_fourth 3511 3514 ∧
    S_not_fourth 3706 3709 ∧
    S_not_fourth 3901 3904 ∧
    S_not_fourth 4682 4685 ∧
    S_not_fourth 4876 4879 ∧
    S_not_fourth 5071 5074 ∧
    S_not_fourth 5461 5464 ∧
    S_not_fourth 5849 5852 ∧
    S_not_fourth 6046 6049 ∧
    S_not_fourth 6241 6244 ∧
    S_not_fourth 6631 6634 ∧
    S_not_fourth 7411 7414 ∧
    S_not_fourth 7606 7609 ∧
    S_not_fourth 7801 7804 ∧
    S_not_fourth 7997 8000 ∧
    S_not_fourth 8194 8197 ∧
    S_not_fourth 8582 8585 ∧
    S_not_fourth 9163 9166 ∧
    S_not_fourth 9361 9364 ∧
    S_not_fourth 9751 9754 ∧
    S_not_fourth 10000 10003 ∧
    S_not_fourth 10141 10144 ∧
    S_not_fourth 10531 10534 ∧
    S_not_fourth 10726 10729 ∧
    S_not_fourth 11311 11314 ∧
    S_not_fourth 11506 11509 ∧
    S_not_fourth 11896 11899 ∧
    S_not_fourth 12091 12094 ∧
    S_not_fourth 12871 12874 ∧
    S_not_fourth 13066 13069 ∧
    S_not_fourth 13258 13261 ∧
    S_not_fourth 13457 13460 ∧
    S_not_fourth 13651 13654 ∧
    S_not_fourth 13846 13849 ∧
    S_not_fourth 14041 14044 ∧
    S_not_fourth 14236 14239 ∧
    S_not_fourth 14431 14434 ∧
    S_not_fourth 14626 14629 ∧
    S_not_fourth 14821 14824 ∧
    S_not_fourth 15016 15019 ∧
    S_not_fourth 15211 15214 ∧
    S_not_fourth 15406 15409 ∧
    S_not_fourth 15991 15994 ∧
    S_not_fourth 16186 16189 ∧
    S_not_fourth 16381 16384 ∧
    S_not_fourth 16576 16579 ∧
    S_not_fourth 16771 16774 ∧
    S_not_fourth 16966 16969 ∧
    S_not_fourth 17161 17164 ∧
    S_not_fourth 17354 17357 ∧
    S_not_fourth 17551 17554 ∧
    S_not_fourth 17746 17749 ∧
    S_not_fourth 17938 17941 ∧
    S_not_fourth 18136 18139 ∧
    S_not_fourth 18331 18334 ∧
    S_not_fourth 18526 18529 ∧
    S_not_fourth 18721 18724 ∧
    S_not_fourth 19310 19313 ∧
    S_not_fourth 19501 19504 ∧
    S_not_fourth 19694 19697 ∧
    S_not_fourth 19891 19894 ∧
    S_not_fourth 20086 20089 ∧
    S_not_fourth 20281 20284 ∧
    S_not_fourth 20476 20479 ∧
    S_not_fourth 20671 20674 ∧
    S_not_fourth 20866 20869 ∧
    S_not_fourth 21061 21064 ∧
    S_not_fourth 21256 21259 ∧
    S_not_fourth 21451 21454 ∧
    S_not_fourth 21841 21844 ∧
    S_not_fourth 22229 22232 ∧
    S_not_fourth 22621 22624 ∧
    S_not_fourth 22814 22817 ∧
    S_not_fourth 23206 23209 ∧
    S_not_fourth 23791 23794 ∧
    S_not_fourth 24181 24184 ∧
    S_not_fourth 24374 24377 ∧
    S_not_fourth 24571 24574 ∧
    S_not_fourth 24764 24767 ∧
    S_not_fourth 25156 25159 ∧
    S_not_fourth 25351 25354 ∧
    S_not_fourth 26132 26135 ∧
    S_not_fourth 26326 26329 ∧
    S_not_fourth 26716 26719 ∧
    S_not_fourth 26911 26914 ∧
    S_not_fourth 27301 27304 ∧
    S_not_fourth 27496 27499 ∧
    S_not_fourth 27692 27695 ∧
    S_not_fourth 28081 28084 ∧
    S_not_fourth 28280 28283 ∧
    S_not_fourth 28471 28474 ∧
    S_not_fourth 28666 28669 ∧
    S_not_fourth 29056 29059 ∧
    S_not_fourth 29251 29254 ∧
    S_not_fourth 29446 29449 ∧
    S_not_fourth 29641 29644 ∧
    S_not_fourth 29836 29839 ∧
    S_not_fourth 30031 30034 ∧
    S_not_fourth 30223 30226 ∧
    S_not_fourth 30421 30424 ∧
    S_not_fourth 30617 30620 ∧
    S_not_fourth 30811 30814 ∧
    S_not_fourth 31006 31009 ∧
    S_not_fourth 31201 31204 ∧
    S_not_fourth 31591 31594 ∧
    S_not_fourth 31979 31982 ∧
    S_not_fourth 32176 32179 ∧
    S_not_fourth 32371 32374 ∧
    S_not_fourth 32566 32569 ∧
    S_not_fourth 32956 32959 ∧
    S_not_fourth 33152 33155 ∧
    S_not_fourth 33541 33544 ∧
    S_not_fourth 33736 33739 ∧
    S_not_fourth 34124 34127 ∧
    S_not_fourth 34516 34519 ∧
    S_not_fourth 34708 34711 ∧
    S_not_fourth 34906 34909 ∧
    S_not_fourth 35296 35299 ∧
    S_not_fourth 35489 35492 ∧
    S_not_fourth 35686 35689 ∧
    S_not_fourth 36077 36080 ∧
    S_not_fourth 36272 36275 ∧
    S_not_fourth 36856 36859 ∧
    S_not_fourth 37051 37054 ∧
    S_not_fourth 37246 37249 ∧
    S_not_fourth 37441 37444 ∧
    S_not_fourth 37636 37639 ∧
    S_not_fourth 38027 38030 ∧
    S_not_fourth 38221 38224 ∧
    S_not_fourth 38416 38419 ∧
    S_not_fourth 38611 38614 ∧
    S_not_fourth 38806 38809 ∧
    S_not_fourth 39001 39004 ∧
    S_not_fourth 39196 39199 ∧
    S_not_fourth 39584 39587 ∧
    S_not_fourth 39782 39785 ∧
    S_not_fourth 40171 40174 ∧
    S_not_fourth 40561 40564 ∧
    S_not_fourth 40949 40952 ∧
    S_not_fourth 41146 41149 ∧
    S_not_fourth 41341 41344 ∧
    S_not_fourth 41536 41539 ∧
    S_not_fourth 41731 41734 ∧
    S_not_fourth 41926 41929 ∧
    S_not_fourth 42121 42124 ∧
    S_not_fourth 42511 42514 ∧
    S_not_fourth 42706 42709 ∧
    S_not_fourth 42899 42902 ∧
    S_not_fourth 43097 43100 ∧
    S_not_fourth 43876 43879 ∧
    S_not_fourth 44071 44074 ∧
    S_not_fourth 44266 44269 ∧
    S_not_fourth 44461 44464 ∧
    S_not_fourth 44656 44659 ∧
    S_not_fourth 44851 44854 ∧
    S_not_fourth 45046 45049 ∧
    S_not_fourth 45241 45244 ∧
    S_not_fourth 45436 45439 ∧
    S_not_fourth 45631 45634 ∧
    S_not_fourth 46021 46024 ∧
    S_not_fourth 46412 46415 ∧
    S_not_fourth 46609 46612 ∧
    S_not_fourth 46801 46804 ∧
    S_not_fourth 46996 46999 ∧
    S_not_fourth 47191 47194 ∧
    S_not_fourth 47386 47389 ∧
    S_not_fourth 47581 47584 ∧
    S_not_fourth 47971 47974 ∧
    S_not_fourth 48166 48169 ∧
    S_not_fourth 48361 48364 ∧
    S_not_fourth 48554 48557 ∧
    S_not_fourth 48751 48754 ∧
    S_not_fourth 49141 49144 ∧
    S_not_fourth 49336 49339 ∧
    S_not_fourth 49531 49534 ∧
    S_not_fourth 50000 50003 ∧
    S_not_fourth 50001 50004 ∧
    S_not_fourth 50389 50392 ∧
    S_not_fourth 50779 50782 ∧
    S_not_fourth 51191 51194 ∧
    S_not_fourth 51574 51577 ∧
    S_not_fourth 51965 51968 ∧
    S_not_fourth 52362 52365 ∧
    S_not_fourth 52739 52742 ∧
    S_not_fourth 53136 53139 ∧
    S_not_fourth 53525 53528 ∧
    S_not_fourth 53915 53918 ∧
    S_not_fourth 54302 54305 ∧
    S_not_fourth 54701 54704 ∧
    S_not_fourth 55091 55094 ∧
    S_not_fourth 55496 55499 ∧
    S_not_fourth 55894 55897 ∧
    S_not_fourth 56278 56281 ∧
    S_not_fourth 56667 56670 ∧
    S_not_fourth 57036 57039 ∧
    S_not_fourth 57417 57420 ∧
    S_not_fourth 57825 57828 ∧
    S_not_fourth 58198 58201 ∧
    S_not_fourth 58587 58590 ∧
    S_not_fourth 58995 58998 ∧
    S_not_fourth 59373 59376 ∧
    S_not_fourth 59767 59770 ∧
    S_not_fourth 60159 60162 ∧
    S_not_fourth 60530 60533 ∧
    S_not_fourth 60922 60925 ∧
    S_not_fourth 61286 61289 ∧
    S_not_fourth 61684 61687 ∧
    S_not_fourth 62056 62059 ∧
    S_not_fourth 62452 62455 ∧
    S_not_fourth 62849 62852 ∧
    S_not_fourth 63234 63237 ∧
    S_not_fourth 63609 63612 ∧
    S_not_fourth 63982 63985 ∧
    S_not_fourth 64381 64384 ∧
    S_not_fourth 64755 64758 ∧
    S_not_fourth 65129 65132 ∧
    S_not_fourth 65501 65504 ∧
    S_not_fourth 65883 65886 ∧
    S_not_fourth 66287 66290 ∧
    S_not_fourth 66655 66658 ∧
    S_not_fourth 67038 67041 ∧
    S_not_fourth 67426 67429 ∧
    S_not_fourth 67819 67822 ∧
    S_not_fourth 68203 68206 ∧
    S_not_fourth 68595 68598 ∧
    S_not_fourth 68980 68983 ∧
    S_not_fourth 69387 69390 ∧
    S_not_fourth 69770 69773 ∧
    S_not_fourth 70145 70148 ∧
    S_not_fourth 70549 70552 ∧
    S_not_fourth 70931 70934 ∧
    S_not_fourth 71321 71324 ∧
    S_not_fourth 71710 71713 ∧
    S_not_fourth 72104 72107 ∧
    S_not_fourth 72497 72500 ∧
    S_not_fourth 72899 72902 ∧
    S_not_fourth 73286 73289 ∧
    S_not_fourth 73675 73678 ∧
    S_not_fourth 74041 74044 ∧
    S_not_fourth 74436 74439 ∧
    S_not_fourth 74820 74823 ∧
    S_not_fourth 75171 75174 ∧
    S_not_fourth 75575 75578 ∧
    S_not_fourth 75953 75956 ∧
    S_not_fourth 76337 76340 ∧
    S_not_fourth 76728 76731 ∧
    S_not_fourth 77118 77121 ∧
    S_not_fourth 77512 77515 ∧
    S_not_fourth 77902 77905 ∧
    S_not_fourth 78291 78294 ∧
    S_not_fourth 78678 78681 ∧
    S_not_fourth 79069 79072 ∧
    S_not_fourth 79454 79457 ∧
    S_not_fourth 79843 79846 ∧
    S_not_fourth 80233 80236 ∧
    S_not_fourth 80625 80628 ∧
    S_not_fourth 81029 81032 ∧
    S_not_fourth 81411 81414 ∧
    S_not_fourth 81782 81785 ∧
    S_not_fourth 82156 82159 ∧
    S_not_fourth 82540 82543 ∧
    S_not_fourth 82938 82941 ∧
    S_not_fourth 83321 83324 ∧
    S_not_fourth 83714 83717 ∧
    S_not_fourth 84116 84119 ∧
    S_not_fourth 84499 84502 ∧
    S_not_fourth 84888 84891 ∧
    S_not_fourth 85269 85272 ∧
    S_not_fourth 85662 85665 ∧
    S_not_fourth 86026 86029 ∧
    S_not_fourth 86409 86412 ∧
    S_not_fourth 86798 86801 ∧
    S_not_fourth 87199 87202 ∧
    S_not_fourth 87582 87585 ∧
    S_not_fourth 87972 87975 ∧
    S_not_fourth 88355 88358 ∧
    S_not_fourth 88772 88775 ∧
    S_not_fourth 89151 89154 ∧
    S_not_fourth 89560 89563 ∧
    S_not_fourth 89934 89937 ∧
    S_not_fourth 90331 90334 ∧
    S_not_fourth 90707 90710 ∧
    S_not_fourth 91097 91100 ∧
    S_not_fourth 91473 91476 ∧
    S_not_fourth 91853 91856 ∧
    S_not_fourth 92255 92258 ∧
    S_not_fourth 92611 92614 ∧
    S_not_fourth 93019 93022 ∧
    S_not_fourth 93426 93429 ∧
    S_not_fourth 93802 93805 ∧
    S_not_fourth 94186 94189 ∧
    S_not_fourth 94570 94573 ∧
    S_not_fourth 94968 94971 ∧
    S_not_fourth 95360 95363 ∧
    S_not_fourth 95736 95739 ∧
    S_not_fourth 96128 96131 ∧
    S_not_fourth 96522 96525 ∧
    S_not_fourth 96930 96933 ∧
    S_not_fourth 97319 97322 ∧
    S_not_fourth 97723 97726 ∧
    S_not_fourth 98109 98112 ∧
    S_not_fourth 98489 98492 ∧
    S_not_fourth 98851 98854 ∧
    S_not_fourth 99235 99238 ∧
    S_not_fourth 99615 99618 ∧
    S_not_fourth 100000 100003 :=
  ⟨row_1_4.2.2, row_196_199.2.2, row_386_389.2.2, row_587_590.2.2, row_1171_1174.2.2, row_1366_1369.2.2, row_1559_1562.2.2, row_1756_1759.2.2, row_2146_2149.2.2, row_2536_2539.2.2, row_2731_2734.2.2, row_3313_3316.2.2, row_3511_3514.2.2, row_3706_3709.2.2, row_3901_3904.2.2, row_4682_4685.2.2, row_4876_4879.2.2, row_5071_5074.2.2, row_5461_5464.2.2, row_5849_5852.2.2, row_6046_6049.2.2, row_6241_6244.2.2, row_6631_6634.2.2, row_7411_7414.2.2, row_7606_7609.2.2, row_7801_7804.2.2, row_7997_8000.2.2, row_8194_8197.2.2, row_8582_8585.2.2, row_9163_9166.2.2, row_9361_9364.2.2, row_9751_9754.2.2, row_10000_10003.2.2, row_10141_10144.2.2, row_10531_10534.2.2, row_10726_10729.2.2, row_11311_11314.2.2, row_11506_11509.2.2, row_11896_11899.2.2, row_12091_12094.2.2, row_12871_12874.2.2, row_13066_13069.2.2, row_13258_13261.2.2, row_13457_13460.2.2, row_13651_13654.2.2, row_13846_13849.2.2, row_14041_14044.2.2, row_14236_14239.2.2, row_14431_14434.2.2, row_14626_14629.2.2, row_14821_14824.2.2, row_15016_15019.2.2, row_15211_15214.2.2, row_15406_15409.2.2, row_15991_15994.2.2, row_16186_16189.2.2, row_16381_16384.2.2, row_16576_16579.2.2, row_16771_16774.2.2, row_16966_16969.2.2, row_17161_17164.2.2, row_17354_17357.2.2, row_17551_17554.2.2, row_17746_17749.2.2, row_17938_17941.2.2, row_18136_18139.2.2, row_18331_18334.2.2, row_18526_18529.2.2, row_18721_18724.2.2, row_19310_19313.2.2, row_19501_19504.2.2, row_19694_19697.2.2, row_19891_19894.2.2, row_20086_20089.2.2, row_20281_20284.2.2, row_20476_20479.2.2, row_20671_20674.2.2, row_20866_20869.2.2, row_21061_21064.2.2, row_21256_21259.2.2, row_21451_21454.2.2, row_21841_21844.2.2, row_22229_22232.2.2, row_22621_22624.2.2, row_22814_22817.2.2, row_23206_23209.2.2, row_23791_23794.2.2, row_24181_24184.2.2, row_24374_24377.2.2, row_24571_24574.2.2, row_24764_24767.2.2, row_25156_25159.2.2, row_25351_25354.2.2, row_26132_26135.2.2, row_26326_26329.2.2, row_26716_26719.2.2, row_26911_26914.2.2, row_27301_27304.2.2, row_27496_27499.2.2, row_27692_27695.2.2, row_28081_28084.2.2, row_28280_28283.2.2, row_28471_28474.2.2, row_28666_28669.2.2, row_29056_29059.2.2, row_29251_29254.2.2, row_29446_29449.2.2, row_29641_29644.2.2, row_29836_29839.2.2, row_30031_30034.2.2, row_30223_30226.2.2, row_30421_30424.2.2, row_30617_30620.2.2, row_30811_30814.2.2, row_31006_31009.2.2, row_31201_31204.2.2, row_31591_31594.2.2, row_31979_31982.2.2, row_32176_32179.2.2, row_32371_32374.2.2, row_32566_32569.2.2, row_32956_32959.2.2, row_33152_33155.2.2, row_33541_33544.2.2, row_33736_33739.2.2, row_34124_34127.2.2, row_34516_34519.2.2, row_34708_34711.2.2, row_34906_34909.2.2, row_35296_35299.2.2, row_35489_35492.2.2, row_35686_35689.2.2, row_36077_36080.2.2, row_36272_36275.2.2, row_36856_36859.2.2, row_37051_37054.2.2, row_37246_37249.2.2, row_37441_37444.2.2, row_37636_37639.2.2, row_38027_38030.2.2, row_38221_38224.2.2, row_38416_38419.2.2, row_38611_38614.2.2, row_38806_38809.2.2, row_39001_39004.2.2, row_39196_39199.2.2, row_39584_39587.2.2, row_39782_39785.2.2, row_40171_40174.2.2, row_40561_40564.2.2, row_40949_40952.2.2, row_41146_41149.2.2, row_41341_41344.2.2, row_41536_41539.2.2, row_41731_41734.2.2, row_41926_41929.2.2, row_42121_42124.2.2, row_42511_42514.2.2, row_42706_42709.2.2, row_42899_42902.2.2, row_43097_43100.2.2, row_43876_43879.2.2, row_44071_44074.2.2, row_44266_44269.2.2, row_44461_44464.2.2, row_44656_44659.2.2, row_44851_44854.2.2, row_45046_45049.2.2, row_45241_45244.2.2, row_45436_45439.2.2, row_45631_45634.2.2, row_46021_46024.2.2, row_46412_46415.2.2, row_46609_46612.2.2, row_46801_46804.2.2, row_46996_46999.2.2, row_47191_47194.2.2, row_47386_47389.2.2, row_47581_47584.2.2, row_47971_47974.2.2, row_48166_48169.2.2, row_48361_48364.2.2, row_48554_48557.2.2, row_48751_48754.2.2, row_49141_49144.2.2, row_49336_49339.2.2, row_49531_49534.2.2, row_50000_50003.2.2, row_50001_50004.2.2, row_50389_50392.2.2, row_50779_50782.2.2, row_51191_51194.2.2, row_51574_51577.2.2, row_51965_51968.2.2, row_52362_52365.2.2, row_52739_52742.2.2, row_53136_53139.2.2, row_53525_53528.2.2, row_53915_53918.2.2, row_54302_54305.2.2, row_54701_54704.2.2, row_55091_55094.2.2, row_55496_55499.2.2, row_55894_55897.2.2, row_56278_56281.2.2, row_56667_56670.2.2, row_57036_57039.2.2, row_57417_57420.2.2, row_57825_57828.2.2, row_58198_58201.2.2, row_58587_58590.2.2, row_58995_58998.2.2, row_59373_59376.2.2, row_59767_59770.2.2, row_60159_60162.2.2, row_60530_60533.2.2, row_60922_60925.2.2, row_61286_61289.2.2, row_61684_61687.2.2, row_62056_62059.2.2, row_62452_62455.2.2, row_62849_62852.2.2, row_63234_63237.2.2, row_63609_63612.2.2, row_63982_63985.2.2, row_64381_64384.2.2, row_64755_64758.2.2, row_65129_65132.2.2, row_65501_65504.2.2, row_65883_65886.2.2, row_66287_66290.2.2, row_66655_66658.2.2, row_67038_67041.2.2, row_67426_67429.2.2, row_67819_67822.2.2, row_68203_68206.2.2, row_68595_68598.2.2, row_68980_68983.2.2, row_69387_69390.2.2, row_69770_69773.2.2, row_70145_70148.2.2, row_70549_70552.2.2, row_70931_70934.2.2, row_71321_71324.2.2, row_71710_71713.2.2, row_72104_72107.2.2, row_72497_72500.2.2, row_72899_72902.2.2, row_73286_73289.2.2, row_73675_73678.2.2, row_74041_74044.2.2, row_74436_74439.2.2, row_74820_74823.2.2, row_75171_75174.2.2, row_75575_75578.2.2, row_75953_75956.2.2, row_76337_76340.2.2, row_76728_76731.2.2, row_77118_77121.2.2, row_77512_77515.2.2, row_77902_77905.2.2, row_78291_78294.2.2, row_78678_78681.2.2, row_79069_79072.2.2, row_79454_79457.2.2, row_79843_79846.2.2, row_80233_80236.2.2, row_80625_80628.2.2, row_81029_81032.2.2, row_81411_81414.2.2, row_81782_81785.2.2, row_82156_82159.2.2, row_82540_82543.2.2, row_82938_82941.2.2, row_83321_83324.2.2, row_83714_83717.2.2, row_84116_84119.2.2, row_84499_84502.2.2, row_84888_84891.2.2, row_85269_85272.2.2, row_85662_85665.2.2, row_86026_86029.2.2, row_86409_86412.2.2, row_86798_86801.2.2, row_87199_87202.2.2, row_87582_87585.2.2, row_87972_87975.2.2, row_88355_88358.2.2, row_88772_88775.2.2, row_89151_89154.2.2, row_89560_89563.2.2, row_89934_89937.2.2, row_90331_90334.2.2, row_90707_90710.2.2, row_91097_91100.2.2, row_91473_91476.2.2, row_91853_91856.2.2, row_92255_92258.2.2, row_92611_92614.2.2, row_93019_93022.2.2, row_93426_93429.2.2, row_93802_93805.2.2, row_94186_94189.2.2, row_94570_94573.2.2, row_94968_94971.2.2, row_95360_95363.2.2, row_95736_95739.2.2, row_96128_96131.2.2, row_96522_96525.2.2, row_96930_96933.2.2, row_97319_97322.2.2, row_97723_97726.2.2, row_98109_98112.2.2, row_98489_98492.2.2, row_98851_98854.2.2, row_99235_99238.2.2, row_99615_99618.2.2, row_100000_100003.2.2⟩

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  Ljunggren-type; named rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  Named rows are not every `B ≤ 100000`.
`B > 100000` needs Bugeaud–Corvaja–Zannier. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 100000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_100000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 100000 < B →
    C < P_phi13 B C

/-- Uninhabited.  Squarefull + `B > 100000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 100000 < B →
    IsSquarefull (S_val B C) →
    Nat.sqrt (13 * C ^ 12) < rad (S_val B C)

def bugeaud_P_phi13_gt_C_when_B_gt_50000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.bugeaud_P_phi13_gt_C_when_B_gt_50000

def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000

/-- Uninhabited.  Kraus matching at `q = 13`, level 26. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.kraus_elimination_q_13_level_26

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

#check S_val
#check S_bounds
#check HasPrimeWithExpOne
#check S_not_fourth
#check S_has_prime_with_exp_one_B_le_100000_table_rows
#check exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows
#check S_not_fourth_B_le_100000_from_exp_one_table_rows
#check row_100000_100003
#check kraus_elimination_q_13_level_26
#check bugeaud_P_phi13_gt_C_when_B_gt_100000
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_has_prime_with_exp_one_B_le_100000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_100000_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension
