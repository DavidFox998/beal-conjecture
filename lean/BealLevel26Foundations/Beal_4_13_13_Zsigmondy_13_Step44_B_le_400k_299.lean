/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.49.0 — B ≤ 400000 exp-one
extension (1199 named gap-3 rows, not a ∀).

Wraps the 900 named Step43 rows
(B ≤ 300000, including the inhabited
outlier (200000, 200003) with
p = 12186951011) and adds the exact
299 computational pairs with
300000 < B ≤ 400000 and C = B+3
from the supplied table: first
(300003, 300006) p = 157, last
(400000, 400003) p = 79.
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

This is not every B ≤ 400000.
exists_p_with_order_ne_13_mod_p_sq_inhabited
stays a Prop.  B > 400000 squarefull
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

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option maxHeartbeats 8000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299

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

/-! ## Inherited Step43 rows (900 wrappers) -/
def row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_1_4
def row_196_199 :
    HasPrimeWithExpOne (S_val 196 199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196 199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_196_199
def row_386_389 :
    HasPrimeWithExpOne (S_val 386 389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386 389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_386_389
def row_587_590 :
    HasPrimeWithExpOne (S_val 587 590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 587 590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_587_590
def row_1171_1174 :
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1171 1174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_1171_1174
def row_1366_1369 :
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1366 1369 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_1366_1369
def row_1559_1562 :
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1559 1562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_1559_1562
def row_1756_1759 :
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1756 1759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_1756_1759
def row_2146_2149 :
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2146 2149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_2146_2149
def row_2536_2539 :
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2536 2539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_2536_2539
def row_2731_2734 :
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2731 2734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_2731_2734
def row_3313_3316 :
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3313 3316 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_3313_3316
def row_3511_3514 :
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3511 3514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_3511_3514
def row_3706_3709 :
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3706 3709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_3706_3709
def row_3901_3904 :
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3901 3904 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_3901_3904
def row_4682_4685 :
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4682 4685 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_4682_4685
def row_4876_4879 :
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4876 4879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_4876_4879
def row_5071_5074 :
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5071 5074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_5071_5074
def row_5461_5464 :
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5461 5464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_5461_5464
def row_5849_5852 :
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5849 5852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_5849_5852
def row_6046_6049 :
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6046 6049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_6046_6049
def row_6241_6244 :
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6241 6244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_6241_6244
def row_6631_6634 :
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6631 6634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_6631_6634
def row_7411_7414 :
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7411 7414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_7411_7414
def row_7606_7609 :
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7606 7609 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_7606_7609
def row_7801_7804 :
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7801 7804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_7801_7804
def row_7997_8000 :
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7997 8000 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_7997_8000
def row_8194_8197 :
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8194 8197 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_8194_8197
def row_8582_8585 :
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8582 8585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_8582_8585
def row_9163_9166 :
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9163 9166 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_9163_9166
def row_9361_9364 :
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9361 9364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_9361_9364
def row_9751_9754 :
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9751 9754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_9751_9754
def row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_10000_10003
def row_10141_10144 :
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10141 10144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_10141_10144
def row_10531_10534 :
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10531 10534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_10531_10534
def row_10726_10729 :
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10726 10729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_10726_10729
def row_11311_11314 :
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11311 11314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_11311_11314
def row_11506_11509 :
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11506 11509 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_11506_11509
def row_11896_11899 :
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11896 11899 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_11896_11899
def row_12091_12094 :
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12091 12094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_12091_12094
def row_12871_12874 :
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12871 12874 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_12871_12874
def row_13066_13069 :
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13066 13069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_13066_13069
def row_13258_13261 :
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13258 13261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_13258_13261
def row_13457_13460 :
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13457 13460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_13457_13460
def row_13651_13654 :
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13651 13654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_13651_13654
def row_13846_13849 :
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13846 13849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_13846_13849
def row_14041_14044 :
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14041 14044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_14041_14044
def row_14236_14239 :
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14236 14239 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_14236_14239
def row_14431_14434 :
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14431 14434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_14431_14434
def row_14626_14629 :
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14626 14629 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_14626_14629
def row_14821_14824 :
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14821 14824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_14821_14824
def row_15016_15019 :
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15016 15019 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_15016_15019
def row_15211_15214 :
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15211 15214 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_15211_15214
def row_15406_15409 :
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15406 15409 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_15406_15409
def row_15991_15994 :
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15991 15994 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_15991_15994
def row_16186_16189 :
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16186 16189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_16186_16189
def row_16381_16384 :
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16381 16384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_16381_16384
def row_16576_16579 :
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16576 16579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_16576_16579
def row_16771_16774 :
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16771 16774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_16771_16774
def row_16966_16969 :
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16966 16969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_16966_16969
def row_17161_17164 :
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17161 17164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_17161_17164
def row_17354_17357 :
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17354 17357 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_17354_17357
def row_17551_17554 :
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17551 17554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_17551_17554
def row_17746_17749 :
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17746 17749 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_17746_17749
def row_17938_17941 :
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17938 17941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_17938_17941
def row_18136_18139 :
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18136 18139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_18136_18139
def row_18331_18334 :
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18331 18334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_18331_18334
def row_18526_18529 :
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18526 18529 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_18526_18529
def row_18721_18724 :
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18721 18724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_18721_18724
def row_19310_19313 :
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19310 19313 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_19310_19313
def row_19501_19504 :
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19501 19504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_19501_19504
def row_19694_19697 :
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19694 19697 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_19694_19697
def row_19891_19894 :
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19891 19894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_19891_19894
def row_20086_20089 :
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20086 20089 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_20086_20089
def row_20281_20284 :
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20281 20284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_20281_20284
def row_20476_20479 :
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20476 20479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_20476_20479
def row_20671_20674 :
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20671 20674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_20671_20674
def row_20866_20869 :
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20866 20869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_20866_20869
def row_21061_21064 :
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21061 21064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_21061_21064
def row_21256_21259 :
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21256 21259 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_21256_21259
def row_21451_21454 :
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21451 21454 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_21451_21454
def row_21841_21844 :
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21841 21844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_21841_21844
def row_22229_22232 :
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22229 22232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_22229_22232
def row_22621_22624 :
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22621 22624 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_22621_22624
def row_22814_22817 :
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22814 22817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_22814_22817
def row_23206_23209 :
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23206 23209 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_23206_23209
def row_23791_23794 :
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23791 23794 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_23791_23794
def row_24181_24184 :
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24181 24184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_24181_24184
def row_24374_24377 :
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24374 24377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_24374_24377
def row_24571_24574 :
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24571 24574 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_24571_24574
def row_24764_24767 :
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24764 24767 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_24764_24767
def row_25156_25159 :
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25156 25159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_25156_25159
def row_25351_25354 :
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25351 25354 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_25351_25354
def row_26132_26135 :
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26132 26135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_26132_26135
def row_26326_26329 :
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26326 26329 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_26326_26329
def row_26716_26719 :
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26716 26719 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_26716_26719
def row_26911_26914 :
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26911 26914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_26911_26914
def row_27301_27304 :
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27301 27304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_27301_27304
def row_27496_27499 :
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27496 27499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_27496_27499
def row_27692_27695 :
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27692 27695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_27692_27695
def row_28081_28084 :
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28081 28084 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_28081_28084
def row_28280_28283 :
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28280 28283 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_28280_28283
def row_28471_28474 :
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28471 28474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_28471_28474
def row_28666_28669 :
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28666 28669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_28666_28669
def row_29056_29059 :
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29056 29059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_29056_29059
def row_29251_29254 :
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29251 29254 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_29251_29254
def row_29446_29449 :
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29446 29449 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_29446_29449
def row_29641_29644 :
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29641 29644 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_29641_29644
def row_29836_29839 :
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29836 29839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_29836_29839
def row_30031_30034 :
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30031 30034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_30031_30034
def row_30223_30226 :
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30223 30226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_30223_30226
def row_30421_30424 :
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30421 30424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_30421_30424
def row_30617_30620 :
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30617 30620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_30617_30620
def row_30811_30814 :
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30811 30814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_30811_30814
def row_31006_31009 :
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31006 31009 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_31006_31009
def row_31201_31204 :
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31201 31204 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_31201_31204
def row_31591_31594 :
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31591 31594 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_31591_31594
def row_31979_31982 :
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31979 31982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_31979_31982
def row_32176_32179 :
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32176 32179 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_32176_32179
def row_32371_32374 :
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32371 32374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_32371_32374
def row_32566_32569 :
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32566 32569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_32566_32569
def row_32956_32959 :
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32956 32959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_32956_32959
def row_33152_33155 :
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33152 33155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_33152_33155
def row_33541_33544 :
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33541 33544 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_33541_33544
def row_33736_33739 :
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33736 33739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_33736_33739
def row_34124_34127 :
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34124 34127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_34124_34127
def row_34516_34519 :
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34516 34519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_34516_34519
def row_34708_34711 :
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34708 34711 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_34708_34711
def row_34906_34909 :
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34906 34909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_34906_34909
def row_35296_35299 :
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35296 35299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_35296_35299
def row_35489_35492 :
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35489 35492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_35489_35492
def row_35686_35689 :
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35686 35689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_35686_35689
def row_36077_36080 :
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36077 36080 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_36077_36080
def row_36272_36275 :
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36272 36275 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_36272_36275
def row_36856_36859 :
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36856 36859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_36856_36859
def row_37051_37054 :
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37051 37054 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_37051_37054
def row_37246_37249 :
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37246 37249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_37246_37249
def row_37441_37444 :
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37441 37444 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_37441_37444
def row_37636_37639 :
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37636 37639 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_37636_37639
def row_38027_38030 :
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38027 38030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_38027_38030
def row_38221_38224 :
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38221 38224 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_38221_38224
def row_38416_38419 :
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38416 38419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_38416_38419
def row_38611_38614 :
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38611 38614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_38611_38614
def row_38806_38809 :
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38806 38809 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_38806_38809
def row_39001_39004 :
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39001 39004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_39001_39004
def row_39196_39199 :
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39196 39199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_39196_39199
def row_39584_39587 :
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39584 39587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_39584_39587
def row_39782_39785 :
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39782 39785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_39782_39785
def row_40171_40174 :
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40171 40174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_40171_40174
def row_40561_40564 :
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40561 40564 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_40561_40564
def row_40949_40952 :
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40949 40952 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_40949_40952
def row_41146_41149 :
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41146 41149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_41146_41149
def row_41341_41344 :
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41341 41344 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_41341_41344
def row_41536_41539 :
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41536 41539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_41536_41539
def row_41731_41734 :
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41731 41734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_41731_41734
def row_41926_41929 :
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41926 41929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_41926_41929
def row_42121_42124 :
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42121 42124 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_42121_42124
def row_42511_42514 :
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42511 42514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_42511_42514
def row_42706_42709 :
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42706 42709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_42706_42709
def row_42899_42902 :
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42899 42902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_42899_42902
def row_43097_43100 :
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43097 43100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_43097_43100
def row_43876_43879 :
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43876 43879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_43876_43879
def row_44071_44074 :
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44071 44074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_44071_44074
def row_44266_44269 :
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44266 44269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_44266_44269
def row_44461_44464 :
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44461 44464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_44461_44464
def row_44656_44659 :
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44656 44659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_44656_44659
def row_44851_44854 :
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44851 44854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_44851_44854
def row_45046_45049 :
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45046 45049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_45046_45049
def row_45241_45244 :
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45241 45244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_45241_45244
def row_45436_45439 :
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45436 45439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_45436_45439
def row_45631_45634 :
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45631 45634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_45631_45634
def row_46021_46024 :
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46021 46024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_46021_46024
def row_46412_46415 :
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46412 46415 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_46412_46415
def row_46609_46612 :
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46609 46612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_46609_46612
def row_46801_46804 :
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46801 46804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_46801_46804
def row_46996_46999 :
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46996 46999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_46996_46999
def row_47191_47194 :
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47191 47194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_47191_47194
def row_47386_47389 :
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47386 47389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_47386_47389
def row_47581_47584 :
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47581 47584 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_47581_47584
def row_47971_47974 :
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47971 47974 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_47971_47974
def row_48166_48169 :
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48166 48169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_48166_48169
def row_48361_48364 :
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48361 48364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_48361_48364
def row_48554_48557 :
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48554 48557 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_48554_48557
def row_48751_48754 :
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48751 48754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_48751_48754
def row_49141_49144 :
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49141 49144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_49141_49144
def row_49336_49339 :
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49336 49339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_49336_49339
def row_49531_49534 :
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49531 49534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_49531_49534
def row_50000_50003 :
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50000 50003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_50000_50003
def row_50001_50004 :
    HasPrimeWithExpOne (S_val 50001 50004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50001 50004 ∧ ¬ p ∣ (50004 - 50001) ∧
      ∃ (hNotC : ¬ p ∣ 50004) (hNotB : ¬ p ∣ 50001),
        order_of_C_B_inv_mod_p2 50004 50001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50001 50004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_50001_50004
def row_50389_50392 :
    HasPrimeWithExpOne (S_val 50389 50392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50389 50392 ∧ ¬ p ∣ (50392 - 50389) ∧
      ∃ (hNotC : ¬ p ∣ 50392) (hNotB : ¬ p ∣ 50389),
        order_of_C_B_inv_mod_p2 50392 50389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50389 50392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_50389_50392
def row_50779_50782 :
    HasPrimeWithExpOne (S_val 50779 50782) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50779 50782 ∧ ¬ p ∣ (50782 - 50779) ∧
      ∃ (hNotC : ¬ p ∣ 50782) (hNotB : ¬ p ∣ 50779),
        order_of_C_B_inv_mod_p2 50782 50779 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50779 50782 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_50779_50782
def row_51191_51194 :
    HasPrimeWithExpOne (S_val 51191 51194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51191 51194 ∧ ¬ p ∣ (51194 - 51191) ∧
      ∃ (hNotC : ¬ p ∣ 51194) (hNotB : ¬ p ∣ 51191),
        order_of_C_B_inv_mod_p2 51194 51191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51191 51194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_51191_51194
def row_51574_51577 :
    HasPrimeWithExpOne (S_val 51574 51577) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51574 51577 ∧ ¬ p ∣ (51577 - 51574) ∧
      ∃ (hNotC : ¬ p ∣ 51577) (hNotB : ¬ p ∣ 51574),
        order_of_C_B_inv_mod_p2 51577 51574 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51574 51577 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_51574_51577
def row_51965_51968 :
    HasPrimeWithExpOne (S_val 51965 51968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51965 51968 ∧ ¬ p ∣ (51968 - 51965) ∧
      ∃ (hNotC : ¬ p ∣ 51968) (hNotB : ¬ p ∣ 51965),
        order_of_C_B_inv_mod_p2 51968 51965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51965 51968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_51965_51968
def row_52362_52365 :
    HasPrimeWithExpOne (S_val 52362 52365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52362 52365 ∧ ¬ p ∣ (52365 - 52362) ∧
      ∃ (hNotC : ¬ p ∣ 52365) (hNotB : ¬ p ∣ 52362),
        order_of_C_B_inv_mod_p2 52365 52362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52362 52365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_52362_52365
def row_52739_52742 :
    HasPrimeWithExpOne (S_val 52739 52742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52739 52742 ∧ ¬ p ∣ (52742 - 52739) ∧
      ∃ (hNotC : ¬ p ∣ 52742) (hNotB : ¬ p ∣ 52739),
        order_of_C_B_inv_mod_p2 52742 52739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52739 52742 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_52739_52742
def row_53136_53139 :
    HasPrimeWithExpOne (S_val 53136 53139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53136 53139 ∧ ¬ p ∣ (53139 - 53136) ∧
      ∃ (hNotC : ¬ p ∣ 53139) (hNotB : ¬ p ∣ 53136),
        order_of_C_B_inv_mod_p2 53139 53136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53136 53139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_53136_53139
def row_53525_53528 :
    HasPrimeWithExpOne (S_val 53525 53528) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53525 53528 ∧ ¬ p ∣ (53528 - 53525) ∧
      ∃ (hNotC : ¬ p ∣ 53528) (hNotB : ¬ p ∣ 53525),
        order_of_C_B_inv_mod_p2 53528 53525 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53525 53528 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_53525_53528
def row_53915_53918 :
    HasPrimeWithExpOne (S_val 53915 53918) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53915 53918 ∧ ¬ p ∣ (53918 - 53915) ∧
      ∃ (hNotC : ¬ p ∣ 53918) (hNotB : ¬ p ∣ 53915),
        order_of_C_B_inv_mod_p2 53918 53915 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53915 53918 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_53915_53918
def row_54302_54305 :
    HasPrimeWithExpOne (S_val 54302 54305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54302 54305 ∧ ¬ p ∣ (54305 - 54302) ∧
      ∃ (hNotC : ¬ p ∣ 54305) (hNotB : ¬ p ∣ 54302),
        order_of_C_B_inv_mod_p2 54305 54302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54302 54305 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_54302_54305
def row_54701_54704 :
    HasPrimeWithExpOne (S_val 54701 54704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54701 54704 ∧ ¬ p ∣ (54704 - 54701) ∧
      ∃ (hNotC : ¬ p ∣ 54704) (hNotB : ¬ p ∣ 54701),
        order_of_C_B_inv_mod_p2 54704 54701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54701 54704 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_54701_54704
def row_55091_55094 :
    HasPrimeWithExpOne (S_val 55091 55094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55091 55094 ∧ ¬ p ∣ (55094 - 55091) ∧
      ∃ (hNotC : ¬ p ∣ 55094) (hNotB : ¬ p ∣ 55091),
        order_of_C_B_inv_mod_p2 55094 55091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55091 55094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_55091_55094
def row_55496_55499 :
    HasPrimeWithExpOne (S_val 55496 55499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55496 55499 ∧ ¬ p ∣ (55499 - 55496) ∧
      ∃ (hNotC : ¬ p ∣ 55499) (hNotB : ¬ p ∣ 55496),
        order_of_C_B_inv_mod_p2 55499 55496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55496 55499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_55496_55499
def row_55894_55897 :
    HasPrimeWithExpOne (S_val 55894 55897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55894 55897 ∧ ¬ p ∣ (55897 - 55894) ∧
      ∃ (hNotC : ¬ p ∣ 55897) (hNotB : ¬ p ∣ 55894),
        order_of_C_B_inv_mod_p2 55897 55894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55894 55897 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_55894_55897
def row_56278_56281 :
    HasPrimeWithExpOne (S_val 56278 56281) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56278 56281 ∧ ¬ p ∣ (56281 - 56278) ∧
      ∃ (hNotC : ¬ p ∣ 56281) (hNotB : ¬ p ∣ 56278),
        order_of_C_B_inv_mod_p2 56281 56278 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56278 56281 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_56278_56281
def row_56667_56670 :
    HasPrimeWithExpOne (S_val 56667 56670) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56667 56670 ∧ ¬ p ∣ (56670 - 56667) ∧
      ∃ (hNotC : ¬ p ∣ 56670) (hNotB : ¬ p ∣ 56667),
        order_of_C_B_inv_mod_p2 56670 56667 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56667 56670 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_56667_56670
def row_57036_57039 :
    HasPrimeWithExpOne (S_val 57036 57039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57036 57039 ∧ ¬ p ∣ (57039 - 57036) ∧
      ∃ (hNotC : ¬ p ∣ 57039) (hNotB : ¬ p ∣ 57036),
        order_of_C_B_inv_mod_p2 57039 57036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57036 57039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_57036_57039
def row_57417_57420 :
    HasPrimeWithExpOne (S_val 57417 57420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57417 57420 ∧ ¬ p ∣ (57420 - 57417) ∧
      ∃ (hNotC : ¬ p ∣ 57420) (hNotB : ¬ p ∣ 57417),
        order_of_C_B_inv_mod_p2 57420 57417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57417 57420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_57417_57420
def row_57825_57828 :
    HasPrimeWithExpOne (S_val 57825 57828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57825 57828 ∧ ¬ p ∣ (57828 - 57825) ∧
      ∃ (hNotC : ¬ p ∣ 57828) (hNotB : ¬ p ∣ 57825),
        order_of_C_B_inv_mod_p2 57828 57825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57825 57828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_57825_57828
def row_58198_58201 :
    HasPrimeWithExpOne (S_val 58198 58201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58198 58201 ∧ ¬ p ∣ (58201 - 58198) ∧
      ∃ (hNotC : ¬ p ∣ 58201) (hNotB : ¬ p ∣ 58198),
        order_of_C_B_inv_mod_p2 58201 58198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58198 58201 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_58198_58201
def row_58587_58590 :
    HasPrimeWithExpOne (S_val 58587 58590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58587 58590 ∧ ¬ p ∣ (58590 - 58587) ∧
      ∃ (hNotC : ¬ p ∣ 58590) (hNotB : ¬ p ∣ 58587),
        order_of_C_B_inv_mod_p2 58590 58587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58587 58590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_58587_58590
def row_58995_58998 :
    HasPrimeWithExpOne (S_val 58995 58998) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58995 58998 ∧ ¬ p ∣ (58998 - 58995) ∧
      ∃ (hNotC : ¬ p ∣ 58998) (hNotB : ¬ p ∣ 58995),
        order_of_C_B_inv_mod_p2 58998 58995 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58995 58998 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_58995_58998
def row_59373_59376 :
    HasPrimeWithExpOne (S_val 59373 59376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59373 59376 ∧ ¬ p ∣ (59376 - 59373) ∧
      ∃ (hNotC : ¬ p ∣ 59376) (hNotB : ¬ p ∣ 59373),
        order_of_C_B_inv_mod_p2 59376 59373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59373 59376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_59373_59376
def row_59767_59770 :
    HasPrimeWithExpOne (S_val 59767 59770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59767 59770 ∧ ¬ p ∣ (59770 - 59767) ∧
      ∃ (hNotC : ¬ p ∣ 59770) (hNotB : ¬ p ∣ 59767),
        order_of_C_B_inv_mod_p2 59770 59767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59767 59770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_59767_59770
def row_60159_60162 :
    HasPrimeWithExpOne (S_val 60159 60162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60159 60162 ∧ ¬ p ∣ (60162 - 60159) ∧
      ∃ (hNotC : ¬ p ∣ 60162) (hNotB : ¬ p ∣ 60159),
        order_of_C_B_inv_mod_p2 60162 60159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60159 60162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_60159_60162
def row_60530_60533 :
    HasPrimeWithExpOne (S_val 60530 60533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60530 60533 ∧ ¬ p ∣ (60533 - 60530) ∧
      ∃ (hNotC : ¬ p ∣ 60533) (hNotB : ¬ p ∣ 60530),
        order_of_C_B_inv_mod_p2 60533 60530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60530 60533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_60530_60533
def row_60922_60925 :
    HasPrimeWithExpOne (S_val 60922 60925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60922 60925 ∧ ¬ p ∣ (60925 - 60922) ∧
      ∃ (hNotC : ¬ p ∣ 60925) (hNotB : ¬ p ∣ 60922),
        order_of_C_B_inv_mod_p2 60925 60922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60922 60925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_60922_60925
def row_61286_61289 :
    HasPrimeWithExpOne (S_val 61286 61289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61286 61289 ∧ ¬ p ∣ (61289 - 61286) ∧
      ∃ (hNotC : ¬ p ∣ 61289) (hNotB : ¬ p ∣ 61286),
        order_of_C_B_inv_mod_p2 61289 61286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61286 61289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_61286_61289
def row_61684_61687 :
    HasPrimeWithExpOne (S_val 61684 61687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61684 61687 ∧ ¬ p ∣ (61687 - 61684) ∧
      ∃ (hNotC : ¬ p ∣ 61687) (hNotB : ¬ p ∣ 61684),
        order_of_C_B_inv_mod_p2 61687 61684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61684 61687 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_61684_61687
def row_62056_62059 :
    HasPrimeWithExpOne (S_val 62056 62059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62056 62059 ∧ ¬ p ∣ (62059 - 62056) ∧
      ∃ (hNotC : ¬ p ∣ 62059) (hNotB : ¬ p ∣ 62056),
        order_of_C_B_inv_mod_p2 62059 62056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62056 62059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_62056_62059
def row_62452_62455 :
    HasPrimeWithExpOne (S_val 62452 62455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62452 62455 ∧ ¬ p ∣ (62455 - 62452) ∧
      ∃ (hNotC : ¬ p ∣ 62455) (hNotB : ¬ p ∣ 62452),
        order_of_C_B_inv_mod_p2 62455 62452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62452 62455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_62452_62455
def row_62849_62852 :
    HasPrimeWithExpOne (S_val 62849 62852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62849 62852 ∧ ¬ p ∣ (62852 - 62849) ∧
      ∃ (hNotC : ¬ p ∣ 62852) (hNotB : ¬ p ∣ 62849),
        order_of_C_B_inv_mod_p2 62852 62849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62849 62852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_62849_62852
def row_63234_63237 :
    HasPrimeWithExpOne (S_val 63234 63237) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63234 63237 ∧ ¬ p ∣ (63237 - 63234) ∧
      ∃ (hNotC : ¬ p ∣ 63237) (hNotB : ¬ p ∣ 63234),
        order_of_C_B_inv_mod_p2 63237 63234 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63234 63237 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_63234_63237
def row_63609_63612 :
    HasPrimeWithExpOne (S_val 63609 63612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63609 63612 ∧ ¬ p ∣ (63612 - 63609) ∧
      ∃ (hNotC : ¬ p ∣ 63612) (hNotB : ¬ p ∣ 63609),
        order_of_C_B_inv_mod_p2 63612 63609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63609 63612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_63609_63612
def row_63982_63985 :
    HasPrimeWithExpOne (S_val 63982 63985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63982 63985 ∧ ¬ p ∣ (63985 - 63982) ∧
      ∃ (hNotC : ¬ p ∣ 63985) (hNotB : ¬ p ∣ 63982),
        order_of_C_B_inv_mod_p2 63985 63982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63982 63985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_63982_63985
def row_64381_64384 :
    HasPrimeWithExpOne (S_val 64381 64384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64381 64384 ∧ ¬ p ∣ (64384 - 64381) ∧
      ∃ (hNotC : ¬ p ∣ 64384) (hNotB : ¬ p ∣ 64381),
        order_of_C_B_inv_mod_p2 64384 64381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64381 64384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_64381_64384
def row_64755_64758 :
    HasPrimeWithExpOne (S_val 64755 64758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64755 64758 ∧ ¬ p ∣ (64758 - 64755) ∧
      ∃ (hNotC : ¬ p ∣ 64758) (hNotB : ¬ p ∣ 64755),
        order_of_C_B_inv_mod_p2 64758 64755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64755 64758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_64755_64758
def row_65129_65132 :
    HasPrimeWithExpOne (S_val 65129 65132) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65129 65132 ∧ ¬ p ∣ (65132 - 65129) ∧
      ∃ (hNotC : ¬ p ∣ 65132) (hNotB : ¬ p ∣ 65129),
        order_of_C_B_inv_mod_p2 65132 65129 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65129 65132 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_65129_65132
def row_65501_65504 :
    HasPrimeWithExpOne (S_val 65501 65504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65501 65504 ∧ ¬ p ∣ (65504 - 65501) ∧
      ∃ (hNotC : ¬ p ∣ 65504) (hNotB : ¬ p ∣ 65501),
        order_of_C_B_inv_mod_p2 65504 65501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65501 65504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_65501_65504
def row_65883_65886 :
    HasPrimeWithExpOne (S_val 65883 65886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65883 65886 ∧ ¬ p ∣ (65886 - 65883) ∧
      ∃ (hNotC : ¬ p ∣ 65886) (hNotB : ¬ p ∣ 65883),
        order_of_C_B_inv_mod_p2 65886 65883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65883 65886 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_65883_65886
def row_66287_66290 :
    HasPrimeWithExpOne (S_val 66287 66290) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66287 66290 ∧ ¬ p ∣ (66290 - 66287) ∧
      ∃ (hNotC : ¬ p ∣ 66290) (hNotB : ¬ p ∣ 66287),
        order_of_C_B_inv_mod_p2 66290 66287 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66287 66290 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_66287_66290
def row_66655_66658 :
    HasPrimeWithExpOne (S_val 66655 66658) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66655 66658 ∧ ¬ p ∣ (66658 - 66655) ∧
      ∃ (hNotC : ¬ p ∣ 66658) (hNotB : ¬ p ∣ 66655),
        order_of_C_B_inv_mod_p2 66658 66655 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66655 66658 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_66655_66658
def row_67038_67041 :
    HasPrimeWithExpOne (S_val 67038 67041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67038 67041 ∧ ¬ p ∣ (67041 - 67038) ∧
      ∃ (hNotC : ¬ p ∣ 67041) (hNotB : ¬ p ∣ 67038),
        order_of_C_B_inv_mod_p2 67041 67038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67038 67041 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_67038_67041
def row_67426_67429 :
    HasPrimeWithExpOne (S_val 67426 67429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67426 67429 ∧ ¬ p ∣ (67429 - 67426) ∧
      ∃ (hNotC : ¬ p ∣ 67429) (hNotB : ¬ p ∣ 67426),
        order_of_C_B_inv_mod_p2 67429 67426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67426 67429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_67426_67429
def row_67819_67822 :
    HasPrimeWithExpOne (S_val 67819 67822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67819 67822 ∧ ¬ p ∣ (67822 - 67819) ∧
      ∃ (hNotC : ¬ p ∣ 67822) (hNotB : ¬ p ∣ 67819),
        order_of_C_B_inv_mod_p2 67822 67819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67819 67822 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_67819_67822
def row_68203_68206 :
    HasPrimeWithExpOne (S_val 68203 68206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68203 68206 ∧ ¬ p ∣ (68206 - 68203) ∧
      ∃ (hNotC : ¬ p ∣ 68206) (hNotB : ¬ p ∣ 68203),
        order_of_C_B_inv_mod_p2 68206 68203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68203 68206 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_68203_68206
def row_68595_68598 :
    HasPrimeWithExpOne (S_val 68595 68598) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68595 68598 ∧ ¬ p ∣ (68598 - 68595) ∧
      ∃ (hNotC : ¬ p ∣ 68598) (hNotB : ¬ p ∣ 68595),
        order_of_C_B_inv_mod_p2 68598 68595 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68595 68598 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_68595_68598
def row_68980_68983 :
    HasPrimeWithExpOne (S_val 68980 68983) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68980 68983 ∧ ¬ p ∣ (68983 - 68980) ∧
      ∃ (hNotC : ¬ p ∣ 68983) (hNotB : ¬ p ∣ 68980),
        order_of_C_B_inv_mod_p2 68983 68980 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68980 68983 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_68980_68983
def row_69387_69390 :
    HasPrimeWithExpOne (S_val 69387 69390) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69387 69390 ∧ ¬ p ∣ (69390 - 69387) ∧
      ∃ (hNotC : ¬ p ∣ 69390) (hNotB : ¬ p ∣ 69387),
        order_of_C_B_inv_mod_p2 69390 69387 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69387 69390 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_69387_69390
def row_69770_69773 :
    HasPrimeWithExpOne (S_val 69770 69773) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69770 69773 ∧ ¬ p ∣ (69773 - 69770) ∧
      ∃ (hNotC : ¬ p ∣ 69773) (hNotB : ¬ p ∣ 69770),
        order_of_C_B_inv_mod_p2 69773 69770 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69770 69773 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_69770_69773
def row_70145_70148 :
    HasPrimeWithExpOne (S_val 70145 70148) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70145 70148 ∧ ¬ p ∣ (70148 - 70145) ∧
      ∃ (hNotC : ¬ p ∣ 70148) (hNotB : ¬ p ∣ 70145),
        order_of_C_B_inv_mod_p2 70148 70145 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70145 70148 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_70145_70148
def row_70549_70552 :
    HasPrimeWithExpOne (S_val 70549 70552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70549 70552 ∧ ¬ p ∣ (70552 - 70549) ∧
      ∃ (hNotC : ¬ p ∣ 70552) (hNotB : ¬ p ∣ 70549),
        order_of_C_B_inv_mod_p2 70552 70549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70549 70552 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_70549_70552
def row_70931_70934 :
    HasPrimeWithExpOne (S_val 70931 70934) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70931 70934 ∧ ¬ p ∣ (70934 - 70931) ∧
      ∃ (hNotC : ¬ p ∣ 70934) (hNotB : ¬ p ∣ 70931),
        order_of_C_B_inv_mod_p2 70934 70931 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70931 70934 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_70931_70934
def row_71321_71324 :
    HasPrimeWithExpOne (S_val 71321 71324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71321 71324 ∧ ¬ p ∣ (71324 - 71321) ∧
      ∃ (hNotC : ¬ p ∣ 71324) (hNotB : ¬ p ∣ 71321),
        order_of_C_B_inv_mod_p2 71324 71321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71321 71324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_71321_71324
def row_71710_71713 :
    HasPrimeWithExpOne (S_val 71710 71713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71710 71713 ∧ ¬ p ∣ (71713 - 71710) ∧
      ∃ (hNotC : ¬ p ∣ 71713) (hNotB : ¬ p ∣ 71710),
        order_of_C_B_inv_mod_p2 71713 71710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71710 71713 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_71710_71713
def row_72104_72107 :
    HasPrimeWithExpOne (S_val 72104 72107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72104 72107 ∧ ¬ p ∣ (72107 - 72104) ∧
      ∃ (hNotC : ¬ p ∣ 72107) (hNotB : ¬ p ∣ 72104),
        order_of_C_B_inv_mod_p2 72107 72104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72104 72107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_72104_72107
def row_72497_72500 :
    HasPrimeWithExpOne (S_val 72497 72500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72497 72500 ∧ ¬ p ∣ (72500 - 72497) ∧
      ∃ (hNotC : ¬ p ∣ 72500) (hNotB : ¬ p ∣ 72497),
        order_of_C_B_inv_mod_p2 72500 72497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72497 72500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_72497_72500
def row_72899_72902 :
    HasPrimeWithExpOne (S_val 72899 72902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72899 72902 ∧ ¬ p ∣ (72902 - 72899) ∧
      ∃ (hNotC : ¬ p ∣ 72902) (hNotB : ¬ p ∣ 72899),
        order_of_C_B_inv_mod_p2 72902 72899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72899 72902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_72899_72902
def row_73286_73289 :
    HasPrimeWithExpOne (S_val 73286 73289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73286 73289 ∧ ¬ p ∣ (73289 - 73286) ∧
      ∃ (hNotC : ¬ p ∣ 73289) (hNotB : ¬ p ∣ 73286),
        order_of_C_B_inv_mod_p2 73289 73286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73286 73289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_73286_73289
def row_73675_73678 :
    HasPrimeWithExpOne (S_val 73675 73678) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73675 73678 ∧ ¬ p ∣ (73678 - 73675) ∧
      ∃ (hNotC : ¬ p ∣ 73678) (hNotB : ¬ p ∣ 73675),
        order_of_C_B_inv_mod_p2 73678 73675 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73675 73678 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_73675_73678
def row_74041_74044 :
    HasPrimeWithExpOne (S_val 74041 74044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74041 74044 ∧ ¬ p ∣ (74044 - 74041) ∧
      ∃ (hNotC : ¬ p ∣ 74044) (hNotB : ¬ p ∣ 74041),
        order_of_C_B_inv_mod_p2 74044 74041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74041 74044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_74041_74044
def row_74436_74439 :
    HasPrimeWithExpOne (S_val 74436 74439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74436 74439 ∧ ¬ p ∣ (74439 - 74436) ∧
      ∃ (hNotC : ¬ p ∣ 74439) (hNotB : ¬ p ∣ 74436),
        order_of_C_B_inv_mod_p2 74439 74436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74436 74439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_74436_74439
def row_74820_74823 :
    HasPrimeWithExpOne (S_val 74820 74823) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74820 74823 ∧ ¬ p ∣ (74823 - 74820) ∧
      ∃ (hNotC : ¬ p ∣ 74823) (hNotB : ¬ p ∣ 74820),
        order_of_C_B_inv_mod_p2 74823 74820 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74820 74823 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_74820_74823
def row_75171_75174 :
    HasPrimeWithExpOne (S_val 75171 75174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75171 75174 ∧ ¬ p ∣ (75174 - 75171) ∧
      ∃ (hNotC : ¬ p ∣ 75174) (hNotB : ¬ p ∣ 75171),
        order_of_C_B_inv_mod_p2 75174 75171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75171 75174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_75171_75174
def row_75575_75578 :
    HasPrimeWithExpOne (S_val 75575 75578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75575 75578 ∧ ¬ p ∣ (75578 - 75575) ∧
      ∃ (hNotC : ¬ p ∣ 75578) (hNotB : ¬ p ∣ 75575),
        order_of_C_B_inv_mod_p2 75578 75575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75575 75578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_75575_75578
def row_75953_75956 :
    HasPrimeWithExpOne (S_val 75953 75956) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75953 75956 ∧ ¬ p ∣ (75956 - 75953) ∧
      ∃ (hNotC : ¬ p ∣ 75956) (hNotB : ¬ p ∣ 75953),
        order_of_C_B_inv_mod_p2 75956 75953 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75953 75956 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_75953_75956
def row_76337_76340 :
    HasPrimeWithExpOne (S_val 76337 76340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76337 76340 ∧ ¬ p ∣ (76340 - 76337) ∧
      ∃ (hNotC : ¬ p ∣ 76340) (hNotB : ¬ p ∣ 76337),
        order_of_C_B_inv_mod_p2 76340 76337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76337 76340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_76337_76340
def row_76728_76731 :
    HasPrimeWithExpOne (S_val 76728 76731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76728 76731 ∧ ¬ p ∣ (76731 - 76728) ∧
      ∃ (hNotC : ¬ p ∣ 76731) (hNotB : ¬ p ∣ 76728),
        order_of_C_B_inv_mod_p2 76731 76728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76728 76731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_76728_76731
def row_77118_77121 :
    HasPrimeWithExpOne (S_val 77118 77121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77118 77121 ∧ ¬ p ∣ (77121 - 77118) ∧
      ∃ (hNotC : ¬ p ∣ 77121) (hNotB : ¬ p ∣ 77118),
        order_of_C_B_inv_mod_p2 77121 77118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77118 77121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_77118_77121
def row_77512_77515 :
    HasPrimeWithExpOne (S_val 77512 77515) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77512 77515 ∧ ¬ p ∣ (77515 - 77512) ∧
      ∃ (hNotC : ¬ p ∣ 77515) (hNotB : ¬ p ∣ 77512),
        order_of_C_B_inv_mod_p2 77515 77512 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77512 77515 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_77512_77515
def row_77902_77905 :
    HasPrimeWithExpOne (S_val 77902 77905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77902 77905 ∧ ¬ p ∣ (77905 - 77902) ∧
      ∃ (hNotC : ¬ p ∣ 77905) (hNotB : ¬ p ∣ 77902),
        order_of_C_B_inv_mod_p2 77905 77902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77902 77905 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_77902_77905
def row_78291_78294 :
    HasPrimeWithExpOne (S_val 78291 78294) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78291 78294 ∧ ¬ p ∣ (78294 - 78291) ∧
      ∃ (hNotC : ¬ p ∣ 78294) (hNotB : ¬ p ∣ 78291),
        order_of_C_B_inv_mod_p2 78294 78291 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78291 78294 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_78291_78294
def row_78678_78681 :
    HasPrimeWithExpOne (S_val 78678 78681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78678 78681 ∧ ¬ p ∣ (78681 - 78678) ∧
      ∃ (hNotC : ¬ p ∣ 78681) (hNotB : ¬ p ∣ 78678),
        order_of_C_B_inv_mod_p2 78681 78678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78678 78681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_78678_78681
def row_79069_79072 :
    HasPrimeWithExpOne (S_val 79069 79072) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79069 79072 ∧ ¬ p ∣ (79072 - 79069) ∧
      ∃ (hNotC : ¬ p ∣ 79072) (hNotB : ¬ p ∣ 79069),
        order_of_C_B_inv_mod_p2 79072 79069 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79069 79072 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_79069_79072
def row_79454_79457 :
    HasPrimeWithExpOne (S_val 79454 79457) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79454 79457 ∧ ¬ p ∣ (79457 - 79454) ∧
      ∃ (hNotC : ¬ p ∣ 79457) (hNotB : ¬ p ∣ 79454),
        order_of_C_B_inv_mod_p2 79457 79454 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79454 79457 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_79454_79457
def row_79843_79846 :
    HasPrimeWithExpOne (S_val 79843 79846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79843 79846 ∧ ¬ p ∣ (79846 - 79843) ∧
      ∃ (hNotC : ¬ p ∣ 79846) (hNotB : ¬ p ∣ 79843),
        order_of_C_B_inv_mod_p2 79846 79843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79843 79846 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_79843_79846
def row_80233_80236 :
    HasPrimeWithExpOne (S_val 80233 80236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80233 80236 ∧ ¬ p ∣ (80236 - 80233) ∧
      ∃ (hNotC : ¬ p ∣ 80236) (hNotB : ¬ p ∣ 80233),
        order_of_C_B_inv_mod_p2 80236 80233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80233 80236 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_80233_80236
def row_80625_80628 :
    HasPrimeWithExpOne (S_val 80625 80628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80625 80628 ∧ ¬ p ∣ (80628 - 80625) ∧
      ∃ (hNotC : ¬ p ∣ 80628) (hNotB : ¬ p ∣ 80625),
        order_of_C_B_inv_mod_p2 80628 80625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80625 80628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_80625_80628
def row_81029_81032 :
    HasPrimeWithExpOne (S_val 81029 81032) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81029 81032 ∧ ¬ p ∣ (81032 - 81029) ∧
      ∃ (hNotC : ¬ p ∣ 81032) (hNotB : ¬ p ∣ 81029),
        order_of_C_B_inv_mod_p2 81032 81029 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81029 81032 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_81029_81032
def row_81411_81414 :
    HasPrimeWithExpOne (S_val 81411 81414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81411 81414 ∧ ¬ p ∣ (81414 - 81411) ∧
      ∃ (hNotC : ¬ p ∣ 81414) (hNotB : ¬ p ∣ 81411),
        order_of_C_B_inv_mod_p2 81414 81411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81411 81414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_81411_81414
def row_81782_81785 :
    HasPrimeWithExpOne (S_val 81782 81785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81782 81785 ∧ ¬ p ∣ (81785 - 81782) ∧
      ∃ (hNotC : ¬ p ∣ 81785) (hNotB : ¬ p ∣ 81782),
        order_of_C_B_inv_mod_p2 81785 81782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81782 81785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_81782_81785
def row_82156_82159 :
    HasPrimeWithExpOne (S_val 82156 82159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82156 82159 ∧ ¬ p ∣ (82159 - 82156) ∧
      ∃ (hNotC : ¬ p ∣ 82159) (hNotB : ¬ p ∣ 82156),
        order_of_C_B_inv_mod_p2 82159 82156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82156 82159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_82156_82159
def row_82540_82543 :
    HasPrimeWithExpOne (S_val 82540 82543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82540 82543 ∧ ¬ p ∣ (82543 - 82540) ∧
      ∃ (hNotC : ¬ p ∣ 82543) (hNotB : ¬ p ∣ 82540),
        order_of_C_B_inv_mod_p2 82543 82540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82540 82543 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_82540_82543
def row_82938_82941 :
    HasPrimeWithExpOne (S_val 82938 82941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82938 82941 ∧ ¬ p ∣ (82941 - 82938) ∧
      ∃ (hNotC : ¬ p ∣ 82941) (hNotB : ¬ p ∣ 82938),
        order_of_C_B_inv_mod_p2 82941 82938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82938 82941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_82938_82941
def row_83321_83324 :
    HasPrimeWithExpOne (S_val 83321 83324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83321 83324 ∧ ¬ p ∣ (83324 - 83321) ∧
      ∃ (hNotC : ¬ p ∣ 83324) (hNotB : ¬ p ∣ 83321),
        order_of_C_B_inv_mod_p2 83324 83321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83321 83324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_83321_83324
def row_83714_83717 :
    HasPrimeWithExpOne (S_val 83714 83717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83714 83717 ∧ ¬ p ∣ (83717 - 83714) ∧
      ∃ (hNotC : ¬ p ∣ 83717) (hNotB : ¬ p ∣ 83714),
        order_of_C_B_inv_mod_p2 83717 83714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83714 83717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_83714_83717
def row_84116_84119 :
    HasPrimeWithExpOne (S_val 84116 84119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84116 84119 ∧ ¬ p ∣ (84119 - 84116) ∧
      ∃ (hNotC : ¬ p ∣ 84119) (hNotB : ¬ p ∣ 84116),
        order_of_C_B_inv_mod_p2 84119 84116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84116 84119 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_84116_84119
def row_84499_84502 :
    HasPrimeWithExpOne (S_val 84499 84502) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84499 84502 ∧ ¬ p ∣ (84502 - 84499) ∧
      ∃ (hNotC : ¬ p ∣ 84502) (hNotB : ¬ p ∣ 84499),
        order_of_C_B_inv_mod_p2 84502 84499 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84499 84502 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_84499_84502
def row_84888_84891 :
    HasPrimeWithExpOne (S_val 84888 84891) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84888 84891 ∧ ¬ p ∣ (84891 - 84888) ∧
      ∃ (hNotC : ¬ p ∣ 84891) (hNotB : ¬ p ∣ 84888),
        order_of_C_B_inv_mod_p2 84891 84888 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84888 84891 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_84888_84891
def row_85269_85272 :
    HasPrimeWithExpOne (S_val 85269 85272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85269 85272 ∧ ¬ p ∣ (85272 - 85269) ∧
      ∃ (hNotC : ¬ p ∣ 85272) (hNotB : ¬ p ∣ 85269),
        order_of_C_B_inv_mod_p2 85272 85269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85269 85272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_85269_85272
def row_85662_85665 :
    HasPrimeWithExpOne (S_val 85662 85665) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85662 85665 ∧ ¬ p ∣ (85665 - 85662) ∧
      ∃ (hNotC : ¬ p ∣ 85665) (hNotB : ¬ p ∣ 85662),
        order_of_C_B_inv_mod_p2 85665 85662 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85662 85665 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_85662_85665
def row_86026_86029 :
    HasPrimeWithExpOne (S_val 86026 86029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86026 86029 ∧ ¬ p ∣ (86029 - 86026) ∧
      ∃ (hNotC : ¬ p ∣ 86029) (hNotB : ¬ p ∣ 86026),
        order_of_C_B_inv_mod_p2 86029 86026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86026 86029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_86026_86029
def row_86409_86412 :
    HasPrimeWithExpOne (S_val 86409 86412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86409 86412 ∧ ¬ p ∣ (86412 - 86409) ∧
      ∃ (hNotC : ¬ p ∣ 86412) (hNotB : ¬ p ∣ 86409),
        order_of_C_B_inv_mod_p2 86412 86409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86409 86412 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_86409_86412
def row_86798_86801 :
    HasPrimeWithExpOne (S_val 86798 86801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86798 86801 ∧ ¬ p ∣ (86801 - 86798) ∧
      ∃ (hNotC : ¬ p ∣ 86801) (hNotB : ¬ p ∣ 86798),
        order_of_C_B_inv_mod_p2 86801 86798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86798 86801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_86798_86801
def row_87199_87202 :
    HasPrimeWithExpOne (S_val 87199 87202) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87199 87202 ∧ ¬ p ∣ (87202 - 87199) ∧
      ∃ (hNotC : ¬ p ∣ 87202) (hNotB : ¬ p ∣ 87199),
        order_of_C_B_inv_mod_p2 87202 87199 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87199 87202 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_87199_87202
def row_87582_87585 :
    HasPrimeWithExpOne (S_val 87582 87585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87582 87585 ∧ ¬ p ∣ (87585 - 87582) ∧
      ∃ (hNotC : ¬ p ∣ 87585) (hNotB : ¬ p ∣ 87582),
        order_of_C_B_inv_mod_p2 87585 87582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87582 87585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_87582_87585
def row_87972_87975 :
    HasPrimeWithExpOne (S_val 87972 87975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87972 87975 ∧ ¬ p ∣ (87975 - 87972) ∧
      ∃ (hNotC : ¬ p ∣ 87975) (hNotB : ¬ p ∣ 87972),
        order_of_C_B_inv_mod_p2 87975 87972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87972 87975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_87972_87975
def row_88355_88358 :
    HasPrimeWithExpOne (S_val 88355 88358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88355 88358 ∧ ¬ p ∣ (88358 - 88355) ∧
      ∃ (hNotC : ¬ p ∣ 88358) (hNotB : ¬ p ∣ 88355),
        order_of_C_B_inv_mod_p2 88358 88355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88355 88358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_88355_88358
def row_88772_88775 :
    HasPrimeWithExpOne (S_val 88772 88775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88772 88775 ∧ ¬ p ∣ (88775 - 88772) ∧
      ∃ (hNotC : ¬ p ∣ 88775) (hNotB : ¬ p ∣ 88772),
        order_of_C_B_inv_mod_p2 88775 88772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88772 88775 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_88772_88775
def row_89151_89154 :
    HasPrimeWithExpOne (S_val 89151 89154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89151 89154 ∧ ¬ p ∣ (89154 - 89151) ∧
      ∃ (hNotC : ¬ p ∣ 89154) (hNotB : ¬ p ∣ 89151),
        order_of_C_B_inv_mod_p2 89154 89151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89151 89154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_89151_89154
def row_89560_89563 :
    HasPrimeWithExpOne (S_val 89560 89563) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89560 89563 ∧ ¬ p ∣ (89563 - 89560) ∧
      ∃ (hNotC : ¬ p ∣ 89563) (hNotB : ¬ p ∣ 89560),
        order_of_C_B_inv_mod_p2 89563 89560 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89560 89563 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_89560_89563
def row_89934_89937 :
    HasPrimeWithExpOne (S_val 89934 89937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89934 89937 ∧ ¬ p ∣ (89937 - 89934) ∧
      ∃ (hNotC : ¬ p ∣ 89937) (hNotB : ¬ p ∣ 89934),
        order_of_C_B_inv_mod_p2 89937 89934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89934 89937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_89934_89937
def row_90331_90334 :
    HasPrimeWithExpOne (S_val 90331 90334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90331 90334 ∧ ¬ p ∣ (90334 - 90331) ∧
      ∃ (hNotC : ¬ p ∣ 90334) (hNotB : ¬ p ∣ 90331),
        order_of_C_B_inv_mod_p2 90334 90331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90331 90334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_90331_90334
def row_90707_90710 :
    HasPrimeWithExpOne (S_val 90707 90710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90707 90710 ∧ ¬ p ∣ (90710 - 90707) ∧
      ∃ (hNotC : ¬ p ∣ 90710) (hNotB : ¬ p ∣ 90707),
        order_of_C_B_inv_mod_p2 90710 90707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90707 90710 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_90707_90710
def row_91097_91100 :
    HasPrimeWithExpOne (S_val 91097 91100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91097 91100 ∧ ¬ p ∣ (91100 - 91097) ∧
      ∃ (hNotC : ¬ p ∣ 91100) (hNotB : ¬ p ∣ 91097),
        order_of_C_B_inv_mod_p2 91100 91097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91097 91100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_91097_91100
def row_91473_91476 :
    HasPrimeWithExpOne (S_val 91473 91476) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91473 91476 ∧ ¬ p ∣ (91476 - 91473) ∧
      ∃ (hNotC : ¬ p ∣ 91476) (hNotB : ¬ p ∣ 91473),
        order_of_C_B_inv_mod_p2 91476 91473 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91473 91476 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_91473_91476
def row_91853_91856 :
    HasPrimeWithExpOne (S_val 91853 91856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91853 91856 ∧ ¬ p ∣ (91856 - 91853) ∧
      ∃ (hNotC : ¬ p ∣ 91856) (hNotB : ¬ p ∣ 91853),
        order_of_C_B_inv_mod_p2 91856 91853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91853 91856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_91853_91856
def row_92255_92258 :
    HasPrimeWithExpOne (S_val 92255 92258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92255 92258 ∧ ¬ p ∣ (92258 - 92255) ∧
      ∃ (hNotC : ¬ p ∣ 92258) (hNotB : ¬ p ∣ 92255),
        order_of_C_B_inv_mod_p2 92258 92255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92255 92258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_92255_92258
def row_92611_92614 :
    HasPrimeWithExpOne (S_val 92611 92614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92611 92614 ∧ ¬ p ∣ (92614 - 92611) ∧
      ∃ (hNotC : ¬ p ∣ 92614) (hNotB : ¬ p ∣ 92611),
        order_of_C_B_inv_mod_p2 92614 92611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92611 92614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_92611_92614
def row_93019_93022 :
    HasPrimeWithExpOne (S_val 93019 93022) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93019 93022 ∧ ¬ p ∣ (93022 - 93019) ∧
      ∃ (hNotC : ¬ p ∣ 93022) (hNotB : ¬ p ∣ 93019),
        order_of_C_B_inv_mod_p2 93022 93019 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93019 93022 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_93019_93022
def row_93426_93429 :
    HasPrimeWithExpOne (S_val 93426 93429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93426 93429 ∧ ¬ p ∣ (93429 - 93426) ∧
      ∃ (hNotC : ¬ p ∣ 93429) (hNotB : ¬ p ∣ 93426),
        order_of_C_B_inv_mod_p2 93429 93426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93426 93429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_93426_93429
def row_93802_93805 :
    HasPrimeWithExpOne (S_val 93802 93805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93802 93805 ∧ ¬ p ∣ (93805 - 93802) ∧
      ∃ (hNotC : ¬ p ∣ 93805) (hNotB : ¬ p ∣ 93802),
        order_of_C_B_inv_mod_p2 93805 93802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93802 93805 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_93802_93805
def row_94186_94189 :
    HasPrimeWithExpOne (S_val 94186 94189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94186 94189 ∧ ¬ p ∣ (94189 - 94186) ∧
      ∃ (hNotC : ¬ p ∣ 94189) (hNotB : ¬ p ∣ 94186),
        order_of_C_B_inv_mod_p2 94189 94186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94186 94189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_94186_94189
def row_94570_94573 :
    HasPrimeWithExpOne (S_val 94570 94573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94570 94573 ∧ ¬ p ∣ (94573 - 94570) ∧
      ∃ (hNotC : ¬ p ∣ 94573) (hNotB : ¬ p ∣ 94570),
        order_of_C_B_inv_mod_p2 94573 94570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94570 94573 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_94570_94573
def row_94968_94971 :
    HasPrimeWithExpOne (S_val 94968 94971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94968 94971 ∧ ¬ p ∣ (94971 - 94968) ∧
      ∃ (hNotC : ¬ p ∣ 94971) (hNotB : ¬ p ∣ 94968),
        order_of_C_B_inv_mod_p2 94971 94968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94968 94971 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_94968_94971
def row_95360_95363 :
    HasPrimeWithExpOne (S_val 95360 95363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95360 95363 ∧ ¬ p ∣ (95363 - 95360) ∧
      ∃ (hNotC : ¬ p ∣ 95363) (hNotB : ¬ p ∣ 95360),
        order_of_C_B_inv_mod_p2 95363 95360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95360 95363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_95360_95363
def row_95736_95739 :
    HasPrimeWithExpOne (S_val 95736 95739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95736 95739 ∧ ¬ p ∣ (95739 - 95736) ∧
      ∃ (hNotC : ¬ p ∣ 95739) (hNotB : ¬ p ∣ 95736),
        order_of_C_B_inv_mod_p2 95739 95736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95736 95739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_95736_95739
def row_96128_96131 :
    HasPrimeWithExpOne (S_val 96128 96131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96128 96131 ∧ ¬ p ∣ (96131 - 96128) ∧
      ∃ (hNotC : ¬ p ∣ 96131) (hNotB : ¬ p ∣ 96128),
        order_of_C_B_inv_mod_p2 96131 96128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96128 96131 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_96128_96131
def row_96522_96525 :
    HasPrimeWithExpOne (S_val 96522 96525) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96522 96525 ∧ ¬ p ∣ (96525 - 96522) ∧
      ∃ (hNotC : ¬ p ∣ 96525) (hNotB : ¬ p ∣ 96522),
        order_of_C_B_inv_mod_p2 96525 96522 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96522 96525 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_96522_96525
def row_96930_96933 :
    HasPrimeWithExpOne (S_val 96930 96933) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96930 96933 ∧ ¬ p ∣ (96933 - 96930) ∧
      ∃ (hNotC : ¬ p ∣ 96933) (hNotB : ¬ p ∣ 96930),
        order_of_C_B_inv_mod_p2 96933 96930 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96930 96933 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_96930_96933
def row_97319_97322 :
    HasPrimeWithExpOne (S_val 97319 97322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97319 97322 ∧ ¬ p ∣ (97322 - 97319) ∧
      ∃ (hNotC : ¬ p ∣ 97322) (hNotB : ¬ p ∣ 97319),
        order_of_C_B_inv_mod_p2 97322 97319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97319 97322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_97319_97322
def row_97723_97726 :
    HasPrimeWithExpOne (S_val 97723 97726) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97723 97726 ∧ ¬ p ∣ (97726 - 97723) ∧
      ∃ (hNotC : ¬ p ∣ 97726) (hNotB : ¬ p ∣ 97723),
        order_of_C_B_inv_mod_p2 97726 97723 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97723 97726 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_97723_97726
def row_98109_98112 :
    HasPrimeWithExpOne (S_val 98109 98112) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98109 98112 ∧ ¬ p ∣ (98112 - 98109) ∧
      ∃ (hNotC : ¬ p ∣ 98112) (hNotB : ¬ p ∣ 98109),
        order_of_C_B_inv_mod_p2 98112 98109 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98109 98112 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_98109_98112
def row_98489_98492 :
    HasPrimeWithExpOne (S_val 98489 98492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98489 98492 ∧ ¬ p ∣ (98492 - 98489) ∧
      ∃ (hNotC : ¬ p ∣ 98492) (hNotB : ¬ p ∣ 98489),
        order_of_C_B_inv_mod_p2 98492 98489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98489 98492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_98489_98492
def row_98851_98854 :
    HasPrimeWithExpOne (S_val 98851 98854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98851 98854 ∧ ¬ p ∣ (98854 - 98851) ∧
      ∃ (hNotC : ¬ p ∣ 98854) (hNotB : ¬ p ∣ 98851),
        order_of_C_B_inv_mod_p2 98854 98851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98851 98854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_98851_98854
def row_99235_99238 :
    HasPrimeWithExpOne (S_val 99235 99238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99235 99238 ∧ ¬ p ∣ (99238 - 99235) ∧
      ∃ (hNotC : ¬ p ∣ 99238) (hNotB : ¬ p ∣ 99235),
        order_of_C_B_inv_mod_p2 99238 99235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99235 99238 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_99235_99238
def row_99615_99618 :
    HasPrimeWithExpOne (S_val 99615 99618) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99615 99618 ∧ ¬ p ∣ (99618 - 99615) ∧
      ∃ (hNotC : ¬ p ∣ 99618) (hNotB : ¬ p ∣ 99615),
        order_of_C_B_inv_mod_p2 99618 99615 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99615 99618 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_99615_99618
def row_100000_100003 :
    HasPrimeWithExpOne (S_val 100000 100003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100000 100003 ∧ ¬ p ∣ (100003 - 100000) ∧
      ∃ (hNotC : ¬ p ∣ 100003) (hNotB : ¬ p ∣ 100000),
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100000 100003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_100000_100003
def row_100355_100358 :
    HasPrimeWithExpOne (S_val 100355 100358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100355 100358 ∧ ¬ p ∣ (100358 - 100355) ∧
      ∃ (hNotC : ¬ p ∣ 100358) (hNotB : ¬ p ∣ 100355),
        order_of_C_B_inv_mod_p2 100358 100355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100355 100358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_100355_100358
def row_100709_100712 :
    HasPrimeWithExpOne (S_val 100709 100712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100709 100712 ∧ ¬ p ∣ (100712 - 100709) ∧
      ∃ (hNotC : ¬ p ∣ 100712) (hNotB : ¬ p ∣ 100709),
        order_of_C_B_inv_mod_p2 100712 100709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100709 100712 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_100709_100712
def row_101063_101066 :
    HasPrimeWithExpOne (S_val 101063 101066) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101063 101066 ∧ ¬ p ∣ (101066 - 101063) ∧
      ∃ (hNotC : ¬ p ∣ 101066) (hNotB : ¬ p ∣ 101063),
        order_of_C_B_inv_mod_p2 101066 101063 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101063 101066 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_101063_101066
def row_101419_101422 :
    HasPrimeWithExpOne (S_val 101419 101422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101419 101422 ∧ ¬ p ∣ (101422 - 101419) ∧
      ∃ (hNotC : ¬ p ∣ 101422) (hNotB : ¬ p ∣ 101419),
        order_of_C_B_inv_mod_p2 101422 101419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101419 101422 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_101419_101422
def row_101773_101776 :
    HasPrimeWithExpOne (S_val 101773 101776) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101773 101776 ∧ ¬ p ∣ (101776 - 101773) ∧
      ∃ (hNotC : ¬ p ∣ 101776) (hNotB : ¬ p ∣ 101773),
        order_of_C_B_inv_mod_p2 101776 101773 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101773 101776 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_101773_101776
def row_102126_102129 :
    HasPrimeWithExpOne (S_val 102126 102129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102126 102129 ∧ ¬ p ∣ (102129 - 102126) ∧
      ∃ (hNotC : ¬ p ∣ 102129) (hNotB : ¬ p ∣ 102126),
        order_of_C_B_inv_mod_p2 102129 102126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102126 102129 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_102126_102129
def row_102483_102486 :
    HasPrimeWithExpOne (S_val 102483 102486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102483 102486 ∧ ¬ p ∣ (102486 - 102483) ∧
      ∃ (hNotC : ¬ p ∣ 102486) (hNotB : ¬ p ∣ 102483),
        order_of_C_B_inv_mod_p2 102486 102483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102483 102486 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_102483_102486
def row_102836_102839 :
    HasPrimeWithExpOne (S_val 102836 102839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102836 102839 ∧ ¬ p ∣ (102839 - 102836) ∧
      ∃ (hNotC : ¬ p ∣ 102839) (hNotB : ¬ p ∣ 102836),
        order_of_C_B_inv_mod_p2 102839 102836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102836 102839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_102836_102839
def row_103192_103195 :
    HasPrimeWithExpOne (S_val 103192 103195) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103192 103195 ∧ ¬ p ∣ (103195 - 103192) ∧
      ∃ (hNotC : ¬ p ∣ 103195) (hNotB : ¬ p ∣ 103192),
        order_of_C_B_inv_mod_p2 103195 103192 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103192 103195 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_103192_103195
def row_103545_103548 :
    HasPrimeWithExpOne (S_val 103545 103548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103545 103548 ∧ ¬ p ∣ (103548 - 103545) ∧
      ∃ (hNotC : ¬ p ∣ 103548) (hNotB : ¬ p ∣ 103545),
        order_of_C_B_inv_mod_p2 103548 103545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103545 103548 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_103545_103548
def row_103900_103903 :
    HasPrimeWithExpOne (S_val 103900 103903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103900 103903 ∧ ¬ p ∣ (103903 - 103900) ∧
      ∃ (hNotC : ¬ p ∣ 103903) (hNotB : ¬ p ∣ 103900),
        order_of_C_B_inv_mod_p2 103903 103900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103900 103903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_103900_103903
def row_104255_104258 :
    HasPrimeWithExpOne (S_val 104255 104258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104255 104258 ∧ ¬ p ∣ (104258 - 104255) ∧
      ∃ (hNotC : ¬ p ∣ 104258) (hNotB : ¬ p ∣ 104255),
        order_of_C_B_inv_mod_p2 104258 104255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104255 104258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_104255_104258
def row_104609_104612 :
    HasPrimeWithExpOne (S_val 104609 104612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104609 104612 ∧ ¬ p ∣ (104612 - 104609) ∧
      ∃ (hNotC : ¬ p ∣ 104612) (hNotB : ¬ p ∣ 104609),
        order_of_C_B_inv_mod_p2 104612 104609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104609 104612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_104609_104612
def row_104965_104968 :
    HasPrimeWithExpOne (S_val 104965 104968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104965 104968 ∧ ¬ p ∣ (104968 - 104965) ∧
      ∃ (hNotC : ¬ p ∣ 104968) (hNotB : ¬ p ∣ 104965),
        order_of_C_B_inv_mod_p2 104968 104965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104965 104968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_104965_104968
def row_105319_105322 :
    HasPrimeWithExpOne (S_val 105319 105322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105319 105322 ∧ ¬ p ∣ (105322 - 105319) ∧
      ∃ (hNotC : ¬ p ∣ 105322) (hNotB : ¬ p ∣ 105319),
        order_of_C_B_inv_mod_p2 105322 105319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105319 105322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_105319_105322
def row_105673_105676 :
    HasPrimeWithExpOne (S_val 105673 105676) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105673 105676 ∧ ¬ p ∣ (105676 - 105673) ∧
      ∃ (hNotC : ¬ p ∣ 105676) (hNotB : ¬ p ∣ 105673),
        order_of_C_B_inv_mod_p2 105676 105673 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105673 105676 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_105673_105676
def row_106027_106030 :
    HasPrimeWithExpOne (S_val 106027 106030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106027 106030 ∧ ¬ p ∣ (106030 - 106027) ∧
      ∃ (hNotC : ¬ p ∣ 106030) (hNotB : ¬ p ∣ 106027),
        order_of_C_B_inv_mod_p2 106030 106027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106027 106030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_106027_106030
def row_106381_106384 :
    HasPrimeWithExpOne (S_val 106381 106384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106381 106384 ∧ ¬ p ∣ (106384 - 106381) ∧
      ∃ (hNotC : ¬ p ∣ 106384) (hNotB : ¬ p ∣ 106381),
        order_of_C_B_inv_mod_p2 106384 106381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106381 106384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_106381_106384
def row_106738_106741 :
    HasPrimeWithExpOne (S_val 106738 106741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106738 106741 ∧ ¬ p ∣ (106741 - 106738) ∧
      ∃ (hNotC : ¬ p ∣ 106741) (hNotB : ¬ p ∣ 106738),
        order_of_C_B_inv_mod_p2 106741 106738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106738 106741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_106738_106741
def row_107092_107095 :
    HasPrimeWithExpOne (S_val 107092 107095) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107092 107095 ∧ ¬ p ∣ (107095 - 107092) ∧
      ∃ (hNotC : ¬ p ∣ 107095) (hNotB : ¬ p ∣ 107092),
        order_of_C_B_inv_mod_p2 107095 107092 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107092 107095 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_107092_107095
def row_107444_107447 :
    HasPrimeWithExpOne (S_val 107444 107447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107444 107447 ∧ ¬ p ∣ (107447 - 107444) ∧
      ∃ (hNotC : ¬ p ∣ 107447) (hNotB : ¬ p ∣ 107444),
        order_of_C_B_inv_mod_p2 107447 107444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107444 107447 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_107444_107447
def row_107801_107804 :
    HasPrimeWithExpOne (S_val 107801 107804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107801 107804 ∧ ¬ p ∣ (107804 - 107801) ∧
      ∃ (hNotC : ¬ p ∣ 107804) (hNotB : ¬ p ∣ 107801),
        order_of_C_B_inv_mod_p2 107804 107801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107801 107804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_107801_107804
def row_108155_108158 :
    HasPrimeWithExpOne (S_val 108155 108158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108155 108158 ∧ ¬ p ∣ (108158 - 108155) ∧
      ∃ (hNotC : ¬ p ∣ 108158) (hNotB : ¬ p ∣ 108155),
        order_of_C_B_inv_mod_p2 108158 108155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108155 108158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_108155_108158
def row_108511_108514 :
    HasPrimeWithExpOne (S_val 108511 108514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108511 108514 ∧ ¬ p ∣ (108514 - 108511) ∧
      ∃ (hNotC : ¬ p ∣ 108514) (hNotB : ¬ p ∣ 108511),
        order_of_C_B_inv_mod_p2 108514 108511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108511 108514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_108511_108514
def row_108864_108867 :
    HasPrimeWithExpOne (S_val 108864 108867) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108864 108867 ∧ ¬ p ∣ (108867 - 108864) ∧
      ∃ (hNotC : ¬ p ∣ 108867) (hNotB : ¬ p ∣ 108864),
        order_of_C_B_inv_mod_p2 108867 108864 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108864 108867 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_108864_108867
def row_109219_109222 :
    HasPrimeWithExpOne (S_val 109219 109222) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109219 109222 ∧ ¬ p ∣ (109222 - 109219) ∧
      ∃ (hNotC : ¬ p ∣ 109222) (hNotB : ¬ p ∣ 109219),
        order_of_C_B_inv_mod_p2 109222 109219 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109219 109222 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_109219_109222
def row_109575_109578 :
    HasPrimeWithExpOne (S_val 109575 109578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109575 109578 ∧ ¬ p ∣ (109578 - 109575) ∧
      ∃ (hNotC : ¬ p ∣ 109578) (hNotB : ¬ p ∣ 109575),
        order_of_C_B_inv_mod_p2 109578 109575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109575 109578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_109575_109578
def row_109928_109931 :
    HasPrimeWithExpOne (S_val 109928 109931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109928 109931 ∧ ¬ p ∣ (109931 - 109928) ∧
      ∃ (hNotC : ¬ p ∣ 109931) (hNotB : ¬ p ∣ 109928),
        order_of_C_B_inv_mod_p2 109931 109928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109928 109931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_109928_109931
def row_110284_110287 :
    HasPrimeWithExpOne (S_val 110284 110287) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110284 110287 ∧ ¬ p ∣ (110287 - 110284) ∧
      ∃ (hNotC : ¬ p ∣ 110287) (hNotB : ¬ p ∣ 110284),
        order_of_C_B_inv_mod_p2 110287 110284 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110284 110287 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_110284_110287
def row_110637_110640 :
    HasPrimeWithExpOne (S_val 110637 110640) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110637 110640 ∧ ¬ p ∣ (110640 - 110637) ∧
      ∃ (hNotC : ¬ p ∣ 110640) (hNotB : ¬ p ∣ 110637),
        order_of_C_B_inv_mod_p2 110640 110637 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110637 110640 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_110637_110640
def row_110992_110995 :
    HasPrimeWithExpOne (S_val 110992 110995) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110992 110995 ∧ ¬ p ∣ (110995 - 110992) ∧
      ∃ (hNotC : ¬ p ∣ 110995) (hNotB : ¬ p ∣ 110992),
        order_of_C_B_inv_mod_p2 110995 110992 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110992 110995 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_110992_110995
def row_111347_111350 :
    HasPrimeWithExpOne (S_val 111347 111350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111347 111350 ∧ ¬ p ∣ (111350 - 111347) ∧
      ∃ (hNotC : ¬ p ∣ 111350) (hNotB : ¬ p ∣ 111347),
        order_of_C_B_inv_mod_p2 111350 111347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111347 111350 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_111347_111350
def row_111702_111705 :
    HasPrimeWithExpOne (S_val 111702 111705) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111702 111705 ∧ ¬ p ∣ (111705 - 111702) ∧
      ∃ (hNotC : ¬ p ∣ 111705) (hNotB : ¬ p ∣ 111702),
        order_of_C_B_inv_mod_p2 111705 111702 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111702 111705 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_111702_111705
def row_112056_112059 :
    HasPrimeWithExpOne (S_val 112056 112059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112056 112059 ∧ ¬ p ∣ (112059 - 112056) ∧
      ∃ (hNotC : ¬ p ∣ 112059) (hNotB : ¬ p ∣ 112056),
        order_of_C_B_inv_mod_p2 112059 112056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112056 112059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_112056_112059
def row_112410_112413 :
    HasPrimeWithExpOne (S_val 112410 112413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112410 112413 ∧ ¬ p ∣ (112413 - 112410) ∧
      ∃ (hNotC : ¬ p ∣ 112413) (hNotB : ¬ p ∣ 112410),
        order_of_C_B_inv_mod_p2 112413 112410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112410 112413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_112410_112413
def row_112767_112770 :
    HasPrimeWithExpOne (S_val 112767 112770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112767 112770 ∧ ¬ p ∣ (112770 - 112767) ∧
      ∃ (hNotC : ¬ p ∣ 112770) (hNotB : ¬ p ∣ 112767),
        order_of_C_B_inv_mod_p2 112770 112767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112767 112770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_112767_112770
def row_113120_113123 :
    HasPrimeWithExpOne (S_val 113120 113123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113120 113123 ∧ ¬ p ∣ (113123 - 113120) ∧
      ∃ (hNotC : ¬ p ∣ 113123) (hNotB : ¬ p ∣ 113120),
        order_of_C_B_inv_mod_p2 113123 113120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113120 113123 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_113120_113123
def row_113475_113478 :
    HasPrimeWithExpOne (S_val 113475 113478) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113475 113478 ∧ ¬ p ∣ (113478 - 113475) ∧
      ∃ (hNotC : ¬ p ∣ 113478) (hNotB : ¬ p ∣ 113475),
        order_of_C_B_inv_mod_p2 113478 113475 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113475 113478 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_113475_113478
def row_113828_113831 :
    HasPrimeWithExpOne (S_val 113828 113831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113828 113831 ∧ ¬ p ∣ (113831 - 113828) ∧
      ∃ (hNotC : ¬ p ∣ 113831) (hNotB : ¬ p ∣ 113828),
        order_of_C_B_inv_mod_p2 113831 113828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113828 113831 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_113828_113831
def row_114182_114185 :
    HasPrimeWithExpOne (S_val 114182 114185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114182 114185 ∧ ¬ p ∣ (114185 - 114182) ∧
      ∃ (hNotC : ¬ p ∣ 114185) (hNotB : ¬ p ∣ 114182),
        order_of_C_B_inv_mod_p2 114185 114182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114182 114185 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_114182_114185
def row_114538_114541 :
    HasPrimeWithExpOne (S_val 114538 114541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114538 114541 ∧ ¬ p ∣ (114541 - 114538) ∧
      ∃ (hNotC : ¬ p ∣ 114541) (hNotB : ¬ p ∣ 114538),
        order_of_C_B_inv_mod_p2 114541 114538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114538 114541 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_114538_114541
def row_114892_114895 :
    HasPrimeWithExpOne (S_val 114892 114895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114892 114895 ∧ ¬ p ∣ (114895 - 114892) ∧
      ∃ (hNotC : ¬ p ∣ 114895) (hNotB : ¬ p ∣ 114892),
        order_of_C_B_inv_mod_p2 114895 114892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114892 114895 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_114892_114895
def row_115246_115249 :
    HasPrimeWithExpOne (S_val 115246 115249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115246 115249 ∧ ¬ p ∣ (115249 - 115246) ∧
      ∃ (hNotC : ¬ p ∣ 115249) (hNotB : ¬ p ∣ 115246),
        order_of_C_B_inv_mod_p2 115249 115246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115246 115249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_115246_115249
def row_115602_115605 :
    HasPrimeWithExpOne (S_val 115602 115605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115602 115605 ∧ ¬ p ∣ (115605 - 115602) ∧
      ∃ (hNotC : ¬ p ∣ 115605) (hNotB : ¬ p ∣ 115602),
        order_of_C_B_inv_mod_p2 115605 115602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115602 115605 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_115602_115605
def row_115956_115959 :
    HasPrimeWithExpOne (S_val 115956 115959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115956 115959 ∧ ¬ p ∣ (115959 - 115956) ∧
      ∃ (hNotC : ¬ p ∣ 115959) (hNotB : ¬ p ∣ 115956),
        order_of_C_B_inv_mod_p2 115959 115956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115956 115959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_115956_115959
def row_116311_116314 :
    HasPrimeWithExpOne (S_val 116311 116314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116311 116314 ∧ ¬ p ∣ (116314 - 116311) ∧
      ∃ (hNotC : ¬ p ∣ 116314) (hNotB : ¬ p ∣ 116311),
        order_of_C_B_inv_mod_p2 116314 116311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116311 116314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_116311_116314
def row_116666_116669 :
    HasPrimeWithExpOne (S_val 116666 116669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116666 116669 ∧ ¬ p ∣ (116669 - 116666) ∧
      ∃ (hNotC : ¬ p ∣ 116669) (hNotB : ¬ p ∣ 116666),
        order_of_C_B_inv_mod_p2 116669 116666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116666 116669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_116666_116669
def row_117021_117024 :
    HasPrimeWithExpOne (S_val 117021 117024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117021 117024 ∧ ¬ p ∣ (117024 - 117021) ∧
      ∃ (hNotC : ¬ p ∣ 117024) (hNotB : ¬ p ∣ 117021),
        order_of_C_B_inv_mod_p2 117024 117021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117021 117024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_117021_117024
def row_117374_117377 :
    HasPrimeWithExpOne (S_val 117374 117377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117374 117377 ∧ ¬ p ∣ (117377 - 117374) ∧
      ∃ (hNotC : ¬ p ∣ 117377) (hNotB : ¬ p ∣ 117374),
        order_of_C_B_inv_mod_p2 117377 117374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117374 117377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_117374_117377
def row_117728_117731 :
    HasPrimeWithExpOne (S_val 117728 117731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117728 117731 ∧ ¬ p ∣ (117731 - 117728) ∧
      ∃ (hNotC : ¬ p ∣ 117731) (hNotB : ¬ p ∣ 117728),
        order_of_C_B_inv_mod_p2 117731 117728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117728 117731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_117728_117731
def row_118084_118087 :
    HasPrimeWithExpOne (S_val 118084 118087) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118084 118087 ∧ ¬ p ∣ (118087 - 118084) ∧
      ∃ (hNotC : ¬ p ∣ 118087) (hNotB : ¬ p ∣ 118084),
        order_of_C_B_inv_mod_p2 118087 118084 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118084 118087 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_118084_118087
def row_118439_118442 :
    HasPrimeWithExpOne (S_val 118439 118442) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118439 118442 ∧ ¬ p ∣ (118442 - 118439) ∧
      ∃ (hNotC : ¬ p ∣ 118442) (hNotB : ¬ p ∣ 118439),
        order_of_C_B_inv_mod_p2 118442 118439 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118439 118442 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_118439_118442
def row_118795_118798 :
    HasPrimeWithExpOne (S_val 118795 118798) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118795 118798 ∧ ¬ p ∣ (118798 - 118795) ∧
      ∃ (hNotC : ¬ p ∣ 118798) (hNotB : ¬ p ∣ 118795),
        order_of_C_B_inv_mod_p2 118798 118795 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118795 118798 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_118795_118798
def row_119148_119151 :
    HasPrimeWithExpOne (S_val 119148 119151) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119148 119151 ∧ ¬ p ∣ (119151 - 119148) ∧
      ∃ (hNotC : ¬ p ∣ 119151) (hNotB : ¬ p ∣ 119148),
        order_of_C_B_inv_mod_p2 119151 119148 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119148 119151 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_119148_119151
def row_119502_119505 :
    HasPrimeWithExpOne (S_val 119502 119505) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119502 119505 ∧ ¬ p ∣ (119505 - 119502) ∧
      ∃ (hNotC : ¬ p ∣ 119505) (hNotB : ¬ p ∣ 119502),
        order_of_C_B_inv_mod_p2 119505 119502 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119502 119505 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_119502_119505
def row_119857_119860 :
    HasPrimeWithExpOne (S_val 119857 119860) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119857 119860 ∧ ¬ p ∣ (119860 - 119857) ∧
      ∃ (hNotC : ¬ p ∣ 119860) (hNotB : ¬ p ∣ 119857),
        order_of_C_B_inv_mod_p2 119860 119857 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119857 119860 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_119857_119860
def row_120212_120215 :
    HasPrimeWithExpOne (S_val 120212 120215) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120212 120215 ∧ ¬ p ∣ (120215 - 120212) ∧
      ∃ (hNotC : ¬ p ∣ 120215) (hNotB : ¬ p ∣ 120212),
        order_of_C_B_inv_mod_p2 120215 120212 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120212 120215 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_120212_120215
def row_120566_120569 :
    HasPrimeWithExpOne (S_val 120566 120569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120566 120569 ∧ ¬ p ∣ (120569 - 120566) ∧
      ∃ (hNotC : ¬ p ∣ 120569) (hNotB : ¬ p ∣ 120566),
        order_of_C_B_inv_mod_p2 120569 120566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120566 120569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_120566_120569
def row_120922_120925 :
    HasPrimeWithExpOne (S_val 120922 120925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120922 120925 ∧ ¬ p ∣ (120925 - 120922) ∧
      ∃ (hNotC : ¬ p ∣ 120925) (hNotB : ¬ p ∣ 120922),
        order_of_C_B_inv_mod_p2 120925 120922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120922 120925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_120922_120925
def row_121274_121277 :
    HasPrimeWithExpOne (S_val 121274 121277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121274 121277 ∧ ¬ p ∣ (121277 - 121274) ∧
      ∃ (hNotC : ¬ p ∣ 121277) (hNotB : ¬ p ∣ 121274),
        order_of_C_B_inv_mod_p2 121277 121274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121274 121277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_121274_121277
def row_121628_121631 :
    HasPrimeWithExpOne (S_val 121628 121631) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121628 121631 ∧ ¬ p ∣ (121631 - 121628) ∧
      ∃ (hNotC : ¬ p ∣ 121631) (hNotB : ¬ p ∣ 121628),
        order_of_C_B_inv_mod_p2 121631 121628 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121628 121631 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_121628_121631
def row_121985_121988 :
    HasPrimeWithExpOne (S_val 121985 121988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121985 121988 ∧ ¬ p ∣ (121988 - 121985) ∧
      ∃ (hNotC : ¬ p ∣ 121988) (hNotB : ¬ p ∣ 121985),
        order_of_C_B_inv_mod_p2 121988 121985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121985 121988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_121985_121988
def row_122337_122340 :
    HasPrimeWithExpOne (S_val 122337 122340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122337 122340 ∧ ¬ p ∣ (122340 - 122337) ∧
      ∃ (hNotC : ¬ p ∣ 122340) (hNotB : ¬ p ∣ 122337),
        order_of_C_B_inv_mod_p2 122340 122337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122337 122340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_122337_122340
def row_122690_122693 :
    HasPrimeWithExpOne (S_val 122690 122693) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122690 122693 ∧ ¬ p ∣ (122693 - 122690) ∧
      ∃ (hNotC : ¬ p ∣ 122693) (hNotB : ¬ p ∣ 122690),
        order_of_C_B_inv_mod_p2 122693 122690 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122690 122693 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_122690_122693
def row_123047_123050 :
    HasPrimeWithExpOne (S_val 123047 123050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123047 123050 ∧ ¬ p ∣ (123050 - 123047) ∧
      ∃ (hNotC : ¬ p ∣ 123050) (hNotB : ¬ p ∣ 123047),
        order_of_C_B_inv_mod_p2 123050 123047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123047 123050 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_123047_123050
def row_123402_123405 :
    HasPrimeWithExpOne (S_val 123402 123405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123402 123405 ∧ ¬ p ∣ (123405 - 123402) ∧
      ∃ (hNotC : ¬ p ∣ 123405) (hNotB : ¬ p ∣ 123402),
        order_of_C_B_inv_mod_p2 123405 123402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123402 123405 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_123402_123405
def row_123756_123759 :
    HasPrimeWithExpOne (S_val 123756 123759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123756 123759 ∧ ¬ p ∣ (123759 - 123756) ∧
      ∃ (hNotC : ¬ p ∣ 123759) (hNotB : ¬ p ∣ 123756),
        order_of_C_B_inv_mod_p2 123759 123756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123756 123759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_123756_123759
def row_124112_124115 :
    HasPrimeWithExpOne (S_val 124112 124115) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124112 124115 ∧ ¬ p ∣ (124115 - 124112) ∧
      ∃ (hNotC : ¬ p ∣ 124115) (hNotB : ¬ p ∣ 124112),
        order_of_C_B_inv_mod_p2 124115 124112 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124112 124115 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_124112_124115
def row_124467_124470 :
    HasPrimeWithExpOne (S_val 124467 124470) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124467 124470 ∧ ¬ p ∣ (124470 - 124467) ∧
      ∃ (hNotC : ¬ p ∣ 124470) (hNotB : ¬ p ∣ 124467),
        order_of_C_B_inv_mod_p2 124470 124467 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124467 124470 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_124467_124470
def row_124821_124824 :
    HasPrimeWithExpOne (S_val 124821 124824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124821 124824 ∧ ¬ p ∣ (124824 - 124821) ∧
      ∃ (hNotC : ¬ p ∣ 124824) (hNotB : ¬ p ∣ 124821),
        order_of_C_B_inv_mod_p2 124824 124821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124821 124824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_124821_124824
def row_125177_125180 :
    HasPrimeWithExpOne (S_val 125177 125180) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125177 125180 ∧ ¬ p ∣ (125180 - 125177) ∧
      ∃ (hNotC : ¬ p ∣ 125180) (hNotB : ¬ p ∣ 125177),
        order_of_C_B_inv_mod_p2 125180 125177 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125177 125180 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_125177_125180
def row_125527_125530 :
    HasPrimeWithExpOne (S_val 125527 125530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125527 125530 ∧ ¬ p ∣ (125530 - 125527) ∧
      ∃ (hNotC : ¬ p ∣ 125530) (hNotB : ¬ p ∣ 125527),
        order_of_C_B_inv_mod_p2 125530 125527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125527 125530 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_125527_125530
def row_125885_125888 :
    HasPrimeWithExpOne (S_val 125885 125888) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125885 125888 ∧ ¬ p ∣ (125888 - 125885) ∧
      ∃ (hNotC : ¬ p ∣ 125888) (hNotB : ¬ p ∣ 125885),
        order_of_C_B_inv_mod_p2 125888 125885 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125885 125888 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_125885_125888
def row_126239_126242 :
    HasPrimeWithExpOne (S_val 126239 126242) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126239 126242 ∧ ¬ p ∣ (126242 - 126239) ∧
      ∃ (hNotC : ¬ p ∣ 126242) (hNotB : ¬ p ∣ 126239),
        order_of_C_B_inv_mod_p2 126242 126239 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126239 126242 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_126239_126242
def row_126596_126599 :
    HasPrimeWithExpOne (S_val 126596 126599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126596 126599 ∧ ¬ p ∣ (126599 - 126596) ∧
      ∃ (hNotC : ¬ p ∣ 126599) (hNotB : ¬ p ∣ 126596),
        order_of_C_B_inv_mod_p2 126599 126596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126596 126599 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_126596_126599
def row_126948_126951 :
    HasPrimeWithExpOne (S_val 126948 126951) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126948 126951 ∧ ¬ p ∣ (126951 - 126948) ∧
      ∃ (hNotC : ¬ p ∣ 126951) (hNotB : ¬ p ∣ 126948),
        order_of_C_B_inv_mod_p2 126951 126948 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126948 126951 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_126948_126951
def row_127303_127306 :
    HasPrimeWithExpOne (S_val 127303 127306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127303 127306 ∧ ¬ p ∣ (127306 - 127303) ∧
      ∃ (hNotC : ¬ p ∣ 127306) (hNotB : ¬ p ∣ 127303),
        order_of_C_B_inv_mod_p2 127306 127303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127303 127306 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_127303_127306
def row_127658_127661 :
    HasPrimeWithExpOne (S_val 127658 127661) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127658 127661 ∧ ¬ p ∣ (127661 - 127658) ∧
      ∃ (hNotC : ¬ p ∣ 127661) (hNotB : ¬ p ∣ 127658),
        order_of_C_B_inv_mod_p2 127661 127658 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127658 127661 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_127658_127661
def row_128013_128016 :
    HasPrimeWithExpOne (S_val 128013 128016) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128013 128016 ∧ ¬ p ∣ (128016 - 128013) ∧
      ∃ (hNotC : ¬ p ∣ 128016) (hNotB : ¬ p ∣ 128013),
        order_of_C_B_inv_mod_p2 128016 128013 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128013 128016 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_128013_128016
def row_128368_128371 :
    HasPrimeWithExpOne (S_val 128368 128371) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128368 128371 ∧ ¬ p ∣ (128371 - 128368) ∧
      ∃ (hNotC : ¬ p ∣ 128371) (hNotB : ¬ p ∣ 128368),
        order_of_C_B_inv_mod_p2 128371 128368 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128368 128371 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_128368_128371
def row_128721_128724 :
    HasPrimeWithExpOne (S_val 128721 128724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128721 128724 ∧ ¬ p ∣ (128724 - 128721) ∧
      ∃ (hNotC : ¬ p ∣ 128724) (hNotB : ¬ p ∣ 128721),
        order_of_C_B_inv_mod_p2 128724 128721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128721 128724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_128721_128724
def row_129075_129078 :
    HasPrimeWithExpOne (S_val 129075 129078) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129075 129078 ∧ ¬ p ∣ (129078 - 129075) ∧
      ∃ (hNotC : ¬ p ∣ 129078) (hNotB : ¬ p ∣ 129075),
        order_of_C_B_inv_mod_p2 129078 129075 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129075 129078 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_129075_129078
def row_129431_129434 :
    HasPrimeWithExpOne (S_val 129431 129434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129431 129434 ∧ ¬ p ∣ (129434 - 129431) ∧
      ∃ (hNotC : ¬ p ∣ 129434) (hNotB : ¬ p ∣ 129431),
        order_of_C_B_inv_mod_p2 129434 129431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129431 129434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_129431_129434
def row_129786_129789 :
    HasPrimeWithExpOne (S_val 129786 129789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129786 129789 ∧ ¬ p ∣ (129789 - 129786) ∧
      ∃ (hNotC : ¬ p ∣ 129789) (hNotB : ¬ p ∣ 129786),
        order_of_C_B_inv_mod_p2 129789 129786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129786 129789 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_129786_129789
def row_130141_130144 :
    HasPrimeWithExpOne (S_val 130141 130144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130141 130144 ∧ ¬ p ∣ (130144 - 130141) ∧
      ∃ (hNotC : ¬ p ∣ 130144) (hNotB : ¬ p ∣ 130141),
        order_of_C_B_inv_mod_p2 130144 130141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130141 130144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_130141_130144
def row_130496_130499 :
    HasPrimeWithExpOne (S_val 130496 130499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130496 130499 ∧ ¬ p ∣ (130499 - 130496) ∧
      ∃ (hNotC : ¬ p ∣ 130499) (hNotB : ¬ p ∣ 130496),
        order_of_C_B_inv_mod_p2 130499 130496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130496 130499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_130496_130499
def row_130849_130852 :
    HasPrimeWithExpOne (S_val 130849 130852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130849 130852 ∧ ¬ p ∣ (130852 - 130849) ∧
      ∃ (hNotC : ¬ p ∣ 130852) (hNotB : ¬ p ∣ 130849),
        order_of_C_B_inv_mod_p2 130852 130849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130849 130852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_130849_130852
def row_131204_131207 :
    HasPrimeWithExpOne (S_val 131204 131207) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131204 131207 ∧ ¬ p ∣ (131207 - 131204) ∧
      ∃ (hNotC : ¬ p ∣ 131207) (hNotB : ¬ p ∣ 131204),
        order_of_C_B_inv_mod_p2 131207 131204 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131204 131207 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_131204_131207
def row_131559_131562 :
    HasPrimeWithExpOne (S_val 131559 131562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131559 131562 ∧ ¬ p ∣ (131562 - 131559) ∧
      ∃ (hNotC : ¬ p ∣ 131562) (hNotB : ¬ p ∣ 131559),
        order_of_C_B_inv_mod_p2 131562 131559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131559 131562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_131559_131562
def row_131913_131916 :
    HasPrimeWithExpOne (S_val 131913 131916) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131913 131916 ∧ ¬ p ∣ (131916 - 131913) ∧
      ∃ (hNotC : ¬ p ∣ 131916) (hNotB : ¬ p ∣ 131913),
        order_of_C_B_inv_mod_p2 131916 131913 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131913 131916 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_131913_131916
def row_132269_132272 :
    HasPrimeWithExpOne (S_val 132269 132272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132269 132272 ∧ ¬ p ∣ (132272 - 132269) ∧
      ∃ (hNotC : ¬ p ∣ 132272) (hNotB : ¬ p ∣ 132269),
        order_of_C_B_inv_mod_p2 132272 132269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132269 132272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_132269_132272
def row_132624_132627 :
    HasPrimeWithExpOne (S_val 132624 132627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132624 132627 ∧ ¬ p ∣ (132627 - 132624) ∧
      ∃ (hNotC : ¬ p ∣ 132627) (hNotB : ¬ p ∣ 132624),
        order_of_C_B_inv_mod_p2 132627 132624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132624 132627 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_132624_132627
def row_132979_132982 :
    HasPrimeWithExpOne (S_val 132979 132982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132979 132982 ∧ ¬ p ∣ (132982 - 132979) ∧
      ∃ (hNotC : ¬ p ∣ 132982) (hNotB : ¬ p ∣ 132979),
        order_of_C_B_inv_mod_p2 132982 132979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132979 132982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_132979_132982
def row_133332_133335 :
    HasPrimeWithExpOne (S_val 133332 133335) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133332 133335 ∧ ¬ p ∣ (133335 - 133332) ∧
      ∃ (hNotC : ¬ p ∣ 133335) (hNotB : ¬ p ∣ 133332),
        order_of_C_B_inv_mod_p2 133335 133332 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133332 133335 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_133332_133335
def row_133686_133689 :
    HasPrimeWithExpOne (S_val 133686 133689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133686 133689 ∧ ¬ p ∣ (133689 - 133686) ∧
      ∃ (hNotC : ¬ p ∣ 133689) (hNotB : ¬ p ∣ 133686),
        order_of_C_B_inv_mod_p2 133689 133686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133686 133689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_133686_133689
def row_134041_134044 :
    HasPrimeWithExpOne (S_val 134041 134044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134041 134044 ∧ ¬ p ∣ (134044 - 134041) ∧
      ∃ (hNotC : ¬ p ∣ 134044) (hNotB : ¬ p ∣ 134041),
        order_of_C_B_inv_mod_p2 134044 134041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134041 134044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_134041_134044
def row_134395_134398 :
    HasPrimeWithExpOne (S_val 134395 134398) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134395 134398 ∧ ¬ p ∣ (134398 - 134395) ∧
      ∃ (hNotC : ¬ p ∣ 134398) (hNotB : ¬ p ∣ 134395),
        order_of_C_B_inv_mod_p2 134398 134395 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134395 134398 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_134395_134398
def row_134748_134751 :
    HasPrimeWithExpOne (S_val 134748 134751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134748 134751 ∧ ¬ p ∣ (134751 - 134748) ∧
      ∃ (hNotC : ¬ p ∣ 134751) (hNotB : ¬ p ∣ 134748),
        order_of_C_B_inv_mod_p2 134751 134748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134748 134751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_134748_134751
def row_135104_135107 :
    HasPrimeWithExpOne (S_val 135104 135107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135104 135107 ∧ ¬ p ∣ (135107 - 135104) ∧
      ∃ (hNotC : ¬ p ∣ 135107) (hNotB : ¬ p ∣ 135104),
        order_of_C_B_inv_mod_p2 135107 135104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135104 135107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_135104_135107
def row_135459_135462 :
    HasPrimeWithExpOne (S_val 135459 135462) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135459 135462 ∧ ¬ p ∣ (135462 - 135459) ∧
      ∃ (hNotC : ¬ p ∣ 135462) (hNotB : ¬ p ∣ 135459),
        order_of_C_B_inv_mod_p2 135462 135459 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135459 135462 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_135459_135462
def row_135814_135817 :
    HasPrimeWithExpOne (S_val 135814 135817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135814 135817 ∧ ¬ p ∣ (135817 - 135814) ∧
      ∃ (hNotC : ¬ p ∣ 135817) (hNotB : ¬ p ∣ 135814),
        order_of_C_B_inv_mod_p2 135817 135814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135814 135817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_135814_135817
def row_136169_136172 :
    HasPrimeWithExpOne (S_val 136169 136172) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136169 136172 ∧ ¬ p ∣ (136172 - 136169) ∧
      ∃ (hNotC : ¬ p ∣ 136172) (hNotB : ¬ p ∣ 136169),
        order_of_C_B_inv_mod_p2 136172 136169 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136169 136172 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_136169_136172
def row_136524_136527 :
    HasPrimeWithExpOne (S_val 136524 136527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136524 136527 ∧ ¬ p ∣ (136527 - 136524) ∧
      ∃ (hNotC : ¬ p ∣ 136527) (hNotB : ¬ p ∣ 136524),
        order_of_C_B_inv_mod_p2 136527 136524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136524 136527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_136524_136527
def row_136878_136881 :
    HasPrimeWithExpOne (S_val 136878 136881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136878 136881 ∧ ¬ p ∣ (136881 - 136878) ∧
      ∃ (hNotC : ¬ p ∣ 136881) (hNotB : ¬ p ∣ 136878),
        order_of_C_B_inv_mod_p2 136881 136878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136878 136881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_136878_136881
def row_137232_137235 :
    HasPrimeWithExpOne (S_val 137232 137235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137232 137235 ∧ ¬ p ∣ (137235 - 137232) ∧
      ∃ (hNotC : ¬ p ∣ 137235) (hNotB : ¬ p ∣ 137232),
        order_of_C_B_inv_mod_p2 137235 137232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137232 137235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_137232_137235
def row_137588_137591 :
    HasPrimeWithExpOne (S_val 137588 137591) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137588 137591 ∧ ¬ p ∣ (137591 - 137588) ∧
      ∃ (hNotC : ¬ p ∣ 137591) (hNotB : ¬ p ∣ 137588),
        order_of_C_B_inv_mod_p2 137591 137588 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137588 137591 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_137588_137591
def row_137942_137945 :
    HasPrimeWithExpOne (S_val 137942 137945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137942 137945 ∧ ¬ p ∣ (137945 - 137942) ∧
      ∃ (hNotC : ¬ p ∣ 137945) (hNotB : ¬ p ∣ 137942),
        order_of_C_B_inv_mod_p2 137945 137942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137942 137945 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_137942_137945
def row_138295_138298 :
    HasPrimeWithExpOne (S_val 138295 138298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138295 138298 ∧ ¬ p ∣ (138298 - 138295) ∧
      ∃ (hNotC : ¬ p ∣ 138298) (hNotB : ¬ p ∣ 138295),
        order_of_C_B_inv_mod_p2 138298 138295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138295 138298 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_138295_138298
def row_138651_138654 :
    HasPrimeWithExpOne (S_val 138651 138654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138651 138654 ∧ ¬ p ∣ (138654 - 138651) ∧
      ∃ (hNotC : ¬ p ∣ 138654) (hNotB : ¬ p ∣ 138651),
        order_of_C_B_inv_mod_p2 138654 138651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138651 138654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_138651_138654
def row_139005_139008 :
    HasPrimeWithExpOne (S_val 139005 139008) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139005 139008 ∧ ¬ p ∣ (139008 - 139005) ∧
      ∃ (hNotC : ¬ p ∣ 139008) (hNotB : ¬ p ∣ 139005),
        order_of_C_B_inv_mod_p2 139008 139005 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139005 139008 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_139005_139008
def row_139362_139365 :
    HasPrimeWithExpOne (S_val 139362 139365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139362 139365 ∧ ¬ p ∣ (139365 - 139362) ∧
      ∃ (hNotC : ¬ p ∣ 139365) (hNotB : ¬ p ∣ 139362),
        order_of_C_B_inv_mod_p2 139365 139362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139362 139365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_139362_139365
def row_139714_139717 :
    HasPrimeWithExpOne (S_val 139714 139717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139714 139717 ∧ ¬ p ∣ (139717 - 139714) ∧
      ∃ (hNotC : ¬ p ∣ 139717) (hNotB : ¬ p ∣ 139714),
        order_of_C_B_inv_mod_p2 139717 139714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139714 139717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_139714_139717
def row_140070_140073 :
    HasPrimeWithExpOne (S_val 140070 140073) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140070 140073 ∧ ¬ p ∣ (140073 - 140070) ∧
      ∃ (hNotC : ¬ p ∣ 140073) (hNotB : ¬ p ∣ 140070),
        order_of_C_B_inv_mod_p2 140073 140070 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140070 140073 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_140070_140073
def row_140423_140426 :
    HasPrimeWithExpOne (S_val 140423 140426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140423 140426 ∧ ¬ p ∣ (140426 - 140423) ∧
      ∃ (hNotC : ¬ p ∣ 140426) (hNotB : ¬ p ∣ 140423),
        order_of_C_B_inv_mod_p2 140426 140423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140423 140426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_140423_140426
def row_140778_140781 :
    HasPrimeWithExpOne (S_val 140778 140781) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140778 140781 ∧ ¬ p ∣ (140781 - 140778) ∧
      ∃ (hNotC : ¬ p ∣ 140781) (hNotB : ¬ p ∣ 140778),
        order_of_C_B_inv_mod_p2 140781 140778 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140778 140781 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_140778_140781
def row_141132_141135 :
    HasPrimeWithExpOne (S_val 141132 141135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141132 141135 ∧ ¬ p ∣ (141135 - 141132) ∧
      ∃ (hNotC : ¬ p ∣ 141135) (hNotB : ¬ p ∣ 141132),
        order_of_C_B_inv_mod_p2 141135 141132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141132 141135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_141132_141135
def row_141488_141491 :
    HasPrimeWithExpOne (S_val 141488 141491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141488 141491 ∧ ¬ p ∣ (141491 - 141488) ∧
      ∃ (hNotC : ¬ p ∣ 141491) (hNotB : ¬ p ∣ 141488),
        order_of_C_B_inv_mod_p2 141491 141488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141488 141491 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_141488_141491
def row_141841_141844 :
    HasPrimeWithExpOne (S_val 141841 141844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141841 141844 ∧ ¬ p ∣ (141844 - 141841) ∧
      ∃ (hNotC : ¬ p ∣ 141844) (hNotB : ¬ p ∣ 141841),
        order_of_C_B_inv_mod_p2 141844 141841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141841 141844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_141841_141844
def row_142195_142198 :
    HasPrimeWithExpOne (S_val 142195 142198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142195 142198 ∧ ¬ p ∣ (142198 - 142195) ∧
      ∃ (hNotC : ¬ p ∣ 142198) (hNotB : ¬ p ∣ 142195),
        order_of_C_B_inv_mod_p2 142198 142195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142195 142198 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_142195_142198
def row_142550_142553 :
    HasPrimeWithExpOne (S_val 142550 142553) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142550 142553 ∧ ¬ p ∣ (142553 - 142550) ∧
      ∃ (hNotC : ¬ p ∣ 142553) (hNotB : ¬ p ∣ 142550),
        order_of_C_B_inv_mod_p2 142553 142550 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142550 142553 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_142550_142553
def row_142906_142909 :
    HasPrimeWithExpOne (S_val 142906 142909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142906 142909 ∧ ¬ p ∣ (142909 - 142906) ∧
      ∃ (hNotC : ¬ p ∣ 142909) (hNotB : ¬ p ∣ 142906),
        order_of_C_B_inv_mod_p2 142909 142906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142906 142909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_142906_142909
def row_143261_143264 :
    HasPrimeWithExpOne (S_val 143261 143264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143261 143264 ∧ ¬ p ∣ (143264 - 143261) ∧
      ∃ (hNotC : ¬ p ∣ 143264) (hNotB : ¬ p ∣ 143261),
        order_of_C_B_inv_mod_p2 143264 143261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143261 143264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_143261_143264
def row_143614_143617 :
    HasPrimeWithExpOne (S_val 143614 143617) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143614 143617 ∧ ¬ p ∣ (143617 - 143614) ∧
      ∃ (hNotC : ¬ p ∣ 143617) (hNotB : ¬ p ∣ 143614),
        order_of_C_B_inv_mod_p2 143617 143614 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143614 143617 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_143614_143617
def row_143967_143970 :
    HasPrimeWithExpOne (S_val 143967 143970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143967 143970 ∧ ¬ p ∣ (143970 - 143967) ∧
      ∃ (hNotC : ¬ p ∣ 143970) (hNotB : ¬ p ∣ 143967),
        order_of_C_B_inv_mod_p2 143970 143967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143967 143970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_143967_143970
def row_144324_144327 :
    HasPrimeWithExpOne (S_val 144324 144327) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144324 144327 ∧ ¬ p ∣ (144327 - 144324) ∧
      ∃ (hNotC : ¬ p ∣ 144327) (hNotB : ¬ p ∣ 144324),
        order_of_C_B_inv_mod_p2 144327 144324 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144324 144327 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_144324_144327
def row_144679_144682 :
    HasPrimeWithExpOne (S_val 144679 144682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144679 144682 ∧ ¬ p ∣ (144682 - 144679) ∧
      ∃ (hNotC : ¬ p ∣ 144682) (hNotB : ¬ p ∣ 144679),
        order_of_C_B_inv_mod_p2 144682 144679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144679 144682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_144679_144682
def row_145032_145035 :
    HasPrimeWithExpOne (S_val 145032 145035) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145032 145035 ∧ ¬ p ∣ (145035 - 145032) ∧
      ∃ (hNotC : ¬ p ∣ 145035) (hNotB : ¬ p ∣ 145032),
        order_of_C_B_inv_mod_p2 145035 145032 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145032 145035 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_145032_145035
def row_145389_145392 :
    HasPrimeWithExpOne (S_val 145389 145392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145389 145392 ∧ ¬ p ∣ (145392 - 145389) ∧
      ∃ (hNotC : ¬ p ∣ 145392) (hNotB : ¬ p ∣ 145389),
        order_of_C_B_inv_mod_p2 145392 145389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145389 145392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_145389_145392
def row_145742_145745 :
    HasPrimeWithExpOne (S_val 145742 145745) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145742 145745 ∧ ¬ p ∣ (145745 - 145742) ∧
      ∃ (hNotC : ¬ p ∣ 145745) (hNotB : ¬ p ∣ 145742),
        order_of_C_B_inv_mod_p2 145745 145742 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145742 145745 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_145742_145745
def row_146100_146103 :
    HasPrimeWithExpOne (S_val 146100 146103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146100 146103 ∧ ¬ p ∣ (146103 - 146100) ∧
      ∃ (hNotC : ¬ p ∣ 146103) (hNotB : ¬ p ∣ 146100),
        order_of_C_B_inv_mod_p2 146103 146100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146100 146103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_146100_146103
def row_146452_146455 :
    HasPrimeWithExpOne (S_val 146452 146455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146452 146455 ∧ ¬ p ∣ (146455 - 146452) ∧
      ∃ (hNotC : ¬ p ∣ 146455) (hNotB : ¬ p ∣ 146452),
        order_of_C_B_inv_mod_p2 146455 146452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146452 146455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_146452_146455
def row_146805_146808 :
    HasPrimeWithExpOne (S_val 146805 146808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146805 146808 ∧ ¬ p ∣ (146808 - 146805) ∧
      ∃ (hNotC : ¬ p ∣ 146808) (hNotB : ¬ p ∣ 146805),
        order_of_C_B_inv_mod_p2 146808 146805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146805 146808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_146805_146808
def row_147161_147164 :
    HasPrimeWithExpOne (S_val 147161 147164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147161 147164 ∧ ¬ p ∣ (147164 - 147161) ∧
      ∃ (hNotC : ¬ p ∣ 147164) (hNotB : ¬ p ∣ 147161),
        order_of_C_B_inv_mod_p2 147164 147161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147161 147164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_147161_147164
def row_147515_147518 :
    HasPrimeWithExpOne (S_val 147515 147518) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147515 147518 ∧ ¬ p ∣ (147518 - 147515) ∧
      ∃ (hNotC : ¬ p ∣ 147518) (hNotB : ¬ p ∣ 147515),
        order_of_C_B_inv_mod_p2 147518 147515 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147515 147518 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_147515_147518
def row_147870_147873 :
    HasPrimeWithExpOne (S_val 147870 147873) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147870 147873 ∧ ¬ p ∣ (147873 - 147870) ∧
      ∃ (hNotC : ¬ p ∣ 147873) (hNotB : ¬ p ∣ 147870),
        order_of_C_B_inv_mod_p2 147873 147870 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147870 147873 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_147870_147873
def row_148225_148228 :
    HasPrimeWithExpOne (S_val 148225 148228) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148225 148228 ∧ ¬ p ∣ (148228 - 148225) ∧
      ∃ (hNotC : ¬ p ∣ 148228) (hNotB : ¬ p ∣ 148225),
        order_of_C_B_inv_mod_p2 148228 148225 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148225 148228 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_148225_148228
def row_148578_148581 :
    HasPrimeWithExpOne (S_val 148578 148581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148578 148581 ∧ ¬ p ∣ (148581 - 148578) ∧
      ∃ (hNotC : ¬ p ∣ 148581) (hNotB : ¬ p ∣ 148578),
        order_of_C_B_inv_mod_p2 148581 148578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148578 148581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_148578_148581
def row_148934_148937 :
    HasPrimeWithExpOne (S_val 148934 148937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148934 148937 ∧ ¬ p ∣ (148937 - 148934) ∧
      ∃ (hNotC : ¬ p ∣ 148937) (hNotB : ¬ p ∣ 148934),
        order_of_C_B_inv_mod_p2 148937 148934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148934 148937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_148934_148937
def row_149288_149291 :
    HasPrimeWithExpOne (S_val 149288 149291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149288 149291 ∧ ¬ p ∣ (149291 - 149288) ∧
      ∃ (hNotC : ¬ p ∣ 149291) (hNotB : ¬ p ∣ 149288),
        order_of_C_B_inv_mod_p2 149291 149288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149288 149291 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_149288_149291
def row_149644_149647 :
    HasPrimeWithExpOne (S_val 149644 149647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149644 149647 ∧ ¬ p ∣ (149647 - 149644) ∧
      ∃ (hNotC : ¬ p ∣ 149647) (hNotB : ¬ p ∣ 149644),
        order_of_C_B_inv_mod_p2 149647 149644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149644 149647 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_149644_149647
def row_149998_150001 :
    HasPrimeWithExpOne (S_val 149998 150001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149998 150001 ∧ ¬ p ∣ (150001 - 149998) ∧
      ∃ (hNotC : ¬ p ∣ 150001) (hNotB : ¬ p ∣ 149998),
        order_of_C_B_inv_mod_p2 150001 149998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149998 150001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_149998_150001
def row_150352_150355 :
    HasPrimeWithExpOne (S_val 150352 150355) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150352 150355 ∧ ¬ p ∣ (150355 - 150352) ∧
      ∃ (hNotC : ¬ p ∣ 150355) (hNotB : ¬ p ∣ 150352),
        order_of_C_B_inv_mod_p2 150355 150352 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150352 150355 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_150352_150355
def row_150706_150709 :
    HasPrimeWithExpOne (S_val 150706 150709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150706 150709 ∧ ¬ p ∣ (150709 - 150706) ∧
      ∃ (hNotC : ¬ p ∣ 150709) (hNotB : ¬ p ∣ 150706),
        order_of_C_B_inv_mod_p2 150709 150706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150706 150709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_150706_150709
def row_151061_151064 :
    HasPrimeWithExpOne (S_val 151061 151064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151061 151064 ∧ ¬ p ∣ (151064 - 151061) ∧
      ∃ (hNotC : ¬ p ∣ 151064) (hNotB : ¬ p ∣ 151061),
        order_of_C_B_inv_mod_p2 151064 151061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151061 151064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_151061_151064
def row_151417_151420 :
    HasPrimeWithExpOne (S_val 151417 151420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151417 151420 ∧ ¬ p ∣ (151420 - 151417) ∧
      ∃ (hNotC : ¬ p ∣ 151420) (hNotB : ¬ p ∣ 151417),
        order_of_C_B_inv_mod_p2 151420 151417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151417 151420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_151417_151420
def row_151771_151774 :
    HasPrimeWithExpOne (S_val 151771 151774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151771 151774 ∧ ¬ p ∣ (151774 - 151771) ∧
      ∃ (hNotC : ¬ p ∣ 151774) (hNotB : ¬ p ∣ 151771),
        order_of_C_B_inv_mod_p2 151774 151771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151771 151774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_151771_151774
def row_152124_152127 :
    HasPrimeWithExpOne (S_val 152124 152127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152124 152127 ∧ ¬ p ∣ (152127 - 152124) ∧
      ∃ (hNotC : ¬ p ∣ 152127) (hNotB : ¬ p ∣ 152124),
        order_of_C_B_inv_mod_p2 152127 152124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152124 152127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_152124_152127
def row_152480_152483 :
    HasPrimeWithExpOne (S_val 152480 152483) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152480 152483 ∧ ¬ p ∣ (152483 - 152480) ∧
      ∃ (hNotC : ¬ p ∣ 152483) (hNotB : ¬ p ∣ 152480),
        order_of_C_B_inv_mod_p2 152483 152480 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152480 152483 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_152480_152483
def row_152836_152839 :
    HasPrimeWithExpOne (S_val 152836 152839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152836 152839 ∧ ¬ p ∣ (152839 - 152836) ∧
      ∃ (hNotC : ¬ p ∣ 152839) (hNotB : ¬ p ∣ 152836),
        order_of_C_B_inv_mod_p2 152839 152836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152836 152839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_152836_152839
def row_153188_153191 :
    HasPrimeWithExpOne (S_val 153188 153191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153188 153191 ∧ ¬ p ∣ (153191 - 153188) ∧
      ∃ (hNotC : ¬ p ∣ 153191) (hNotB : ¬ p ∣ 153188),
        order_of_C_B_inv_mod_p2 153191 153188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153188 153191 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_153188_153191
def row_153542_153545 :
    HasPrimeWithExpOne (S_val 153542 153545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153542 153545 ∧ ¬ p ∣ (153545 - 153542) ∧
      ∃ (hNotC : ¬ p ∣ 153545) (hNotB : ¬ p ∣ 153542),
        order_of_C_B_inv_mod_p2 153545 153542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153542 153545 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_153542_153545
def row_153899_153902 :
    HasPrimeWithExpOne (S_val 153899 153902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153899 153902 ∧ ¬ p ∣ (153902 - 153899) ∧
      ∃ (hNotC : ¬ p ∣ 153902) (hNotB : ¬ p ∣ 153899),
        order_of_C_B_inv_mod_p2 153902 153899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153899 153902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_153899_153902
def row_154255_154258 :
    HasPrimeWithExpOne (S_val 154255 154258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154255 154258 ∧ ¬ p ∣ (154258 - 154255) ∧
      ∃ (hNotC : ¬ p ∣ 154258) (hNotB : ¬ p ∣ 154255),
        order_of_C_B_inv_mod_p2 154258 154255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154255 154258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_154255_154258
def row_154607_154610 :
    HasPrimeWithExpOne (S_val 154607 154610) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154607 154610 ∧ ¬ p ∣ (154610 - 154607) ∧
      ∃ (hNotC : ¬ p ∣ 154610) (hNotB : ¬ p ∣ 154607),
        order_of_C_B_inv_mod_p2 154610 154607 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154607 154610 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_154607_154610
def row_154963_154966 :
    HasPrimeWithExpOne (S_val 154963 154966) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154963 154966 ∧ ¬ p ∣ (154966 - 154963) ∧
      ∃ (hNotC : ¬ p ∣ 154966) (hNotB : ¬ p ∣ 154963),
        order_of_C_B_inv_mod_p2 154966 154963 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154963 154966 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_154963_154966
def row_155320_155323 :
    HasPrimeWithExpOne (S_val 155320 155323) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155320 155323 ∧ ¬ p ∣ (155323 - 155320) ∧
      ∃ (hNotC : ¬ p ∣ 155323) (hNotB : ¬ p ∣ 155320),
        order_of_C_B_inv_mod_p2 155323 155320 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155320 155323 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_155320_155323
def row_155671_155674 :
    HasPrimeWithExpOne (S_val 155671 155674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155671 155674 ∧ ¬ p ∣ (155674 - 155671) ∧
      ∃ (hNotC : ¬ p ∣ 155674) (hNotB : ¬ p ∣ 155671),
        order_of_C_B_inv_mod_p2 155674 155671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155671 155674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_155671_155674
def row_156026_156029 :
    HasPrimeWithExpOne (S_val 156026 156029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156026 156029 ∧ ¬ p ∣ (156029 - 156026) ∧
      ∃ (hNotC : ¬ p ∣ 156029) (hNotB : ¬ p ∣ 156026),
        order_of_C_B_inv_mod_p2 156029 156026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156026 156029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_156026_156029
def row_156381_156384 :
    HasPrimeWithExpOne (S_val 156381 156384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156381 156384 ∧ ¬ p ∣ (156384 - 156381) ∧
      ∃ (hNotC : ¬ p ∣ 156384) (hNotB : ¬ p ∣ 156381),
        order_of_C_B_inv_mod_p2 156384 156381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156381 156384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_156381_156384
def row_156736_156739 :
    HasPrimeWithExpOne (S_val 156736 156739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156736 156739 ∧ ¬ p ∣ (156739 - 156736) ∧
      ∃ (hNotC : ¬ p ∣ 156739) (hNotB : ¬ p ∣ 156736),
        order_of_C_B_inv_mod_p2 156739 156736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156736 156739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_156736_156739
def row_157090_157093 :
    HasPrimeWithExpOne (S_val 157090 157093) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157090 157093 ∧ ¬ p ∣ (157093 - 157090) ∧
      ∃ (hNotC : ¬ p ∣ 157093) (hNotB : ¬ p ∣ 157090),
        order_of_C_B_inv_mod_p2 157093 157090 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157090 157093 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_157090_157093
def row_157442_157445 :
    HasPrimeWithExpOne (S_val 157442 157445) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157442 157445 ∧ ¬ p ∣ (157445 - 157442) ∧
      ∃ (hNotC : ¬ p ∣ 157445) (hNotB : ¬ p ∣ 157442),
        order_of_C_B_inv_mod_p2 157445 157442 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157442 157445 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_157442_157445
def row_157799_157802 :
    HasPrimeWithExpOne (S_val 157799 157802) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157799 157802 ∧ ¬ p ∣ (157802 - 157799) ∧
      ∃ (hNotC : ¬ p ∣ 157802) (hNotB : ¬ p ∣ 157799),
        order_of_C_B_inv_mod_p2 157802 157799 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157799 157802 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_157799_157802
def row_158155_158158 :
    HasPrimeWithExpOne (S_val 158155 158158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158155 158158 ∧ ¬ p ∣ (158158 - 158155) ∧
      ∃ (hNotC : ¬ p ∣ 158158) (hNotB : ¬ p ∣ 158155),
        order_of_C_B_inv_mod_p2 158158 158155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158155 158158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_158155_158158
def row_158508_158511 :
    HasPrimeWithExpOne (S_val 158508 158511) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158508 158511 ∧ ¬ p ∣ (158511 - 158508) ∧
      ∃ (hNotC : ¬ p ∣ 158511) (hNotB : ¬ p ∣ 158508),
        order_of_C_B_inv_mod_p2 158511 158508 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158508 158511 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_158508_158511
def row_158862_158865 :
    HasPrimeWithExpOne (S_val 158862 158865) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158862 158865 ∧ ¬ p ∣ (158865 - 158862) ∧
      ∃ (hNotC : ¬ p ∣ 158865) (hNotB : ¬ p ∣ 158862),
        order_of_C_B_inv_mod_p2 158865 158862 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158862 158865 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_158862_158865
def row_159217_159220 :
    HasPrimeWithExpOne (S_val 159217 159220) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159217 159220 ∧ ¬ p ∣ (159220 - 159217) ∧
      ∃ (hNotC : ¬ p ∣ 159220) (hNotB : ¬ p ∣ 159217),
        order_of_C_B_inv_mod_p2 159220 159217 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159217 159220 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_159217_159220
def row_159573_159576 :
    HasPrimeWithExpOne (S_val 159573 159576) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159573 159576 ∧ ¬ p ∣ (159576 - 159573) ∧
      ∃ (hNotC : ¬ p ∣ 159576) (hNotB : ¬ p ∣ 159573),
        order_of_C_B_inv_mod_p2 159576 159573 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159573 159576 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_159573_159576
def row_159926_159929 :
    HasPrimeWithExpOne (S_val 159926 159929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159926 159929 ∧ ¬ p ∣ (159929 - 159926) ∧
      ∃ (hNotC : ¬ p ∣ 159929) (hNotB : ¬ p ∣ 159926),
        order_of_C_B_inv_mod_p2 159929 159926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159926 159929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_159926_159929
def row_160281_160284 :
    HasPrimeWithExpOne (S_val 160281 160284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160281 160284 ∧ ¬ p ∣ (160284 - 160281) ∧
      ∃ (hNotC : ¬ p ∣ 160284) (hNotB : ¬ p ∣ 160281),
        order_of_C_B_inv_mod_p2 160284 160281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160281 160284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_160281_160284
def row_160635_160638 :
    HasPrimeWithExpOne (S_val 160635 160638) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160635 160638 ∧ ¬ p ∣ (160638 - 160635) ∧
      ∃ (hNotC : ¬ p ∣ 160638) (hNotB : ¬ p ∣ 160635),
        order_of_C_B_inv_mod_p2 160638 160635 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160635 160638 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_160635_160638
def row_160988_160991 :
    HasPrimeWithExpOne (S_val 160988 160991) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160988 160991 ∧ ¬ p ∣ (160991 - 160988) ∧
      ∃ (hNotC : ¬ p ∣ 160991) (hNotB : ¬ p ∣ 160988),
        order_of_C_B_inv_mod_p2 160991 160988 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160988 160991 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_160988_160991
def row_161345_161348 :
    HasPrimeWithExpOne (S_val 161345 161348) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161345 161348 ∧ ¬ p ∣ (161348 - 161345) ∧
      ∃ (hNotC : ¬ p ∣ 161348) (hNotB : ¬ p ∣ 161345),
        order_of_C_B_inv_mod_p2 161348 161345 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161345 161348 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_161345_161348
def row_161700_161703 :
    HasPrimeWithExpOne (S_val 161700 161703) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161700 161703 ∧ ¬ p ∣ (161703 - 161700) ∧
      ∃ (hNotC : ¬ p ∣ 161703) (hNotB : ¬ p ∣ 161700),
        order_of_C_B_inv_mod_p2 161703 161700 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161700 161703 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_161700_161703
def row_162054_162057 :
    HasPrimeWithExpOne (S_val 162054 162057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162054 162057 ∧ ¬ p ∣ (162057 - 162054) ∧
      ∃ (hNotC : ¬ p ∣ 162057) (hNotB : ¬ p ∣ 162054),
        order_of_C_B_inv_mod_p2 162057 162054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162054 162057 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_162054_162057
def row_162408_162411 :
    HasPrimeWithExpOne (S_val 162408 162411) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162408 162411 ∧ ¬ p ∣ (162411 - 162408) ∧
      ∃ (hNotC : ¬ p ∣ 162411) (hNotB : ¬ p ∣ 162408),
        order_of_C_B_inv_mod_p2 162411 162408 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162408 162411 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_162408_162411
def row_162763_162766 :
    HasPrimeWithExpOne (S_val 162763 162766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162763 162766 ∧ ¬ p ∣ (162766 - 162763) ∧
      ∃ (hNotC : ¬ p ∣ 162766) (hNotB : ¬ p ∣ 162763),
        order_of_C_B_inv_mod_p2 162766 162763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162763 162766 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_162763_162766
def row_163118_163121 :
    HasPrimeWithExpOne (S_val 163118 163121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163118 163121 ∧ ¬ p ∣ (163121 - 163118) ∧
      ∃ (hNotC : ¬ p ∣ 163121) (hNotB : ¬ p ∣ 163118),
        order_of_C_B_inv_mod_p2 163121 163118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163118 163121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_163118_163121
def row_163472_163475 :
    HasPrimeWithExpOne (S_val 163472 163475) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163472 163475 ∧ ¬ p ∣ (163475 - 163472) ∧
      ∃ (hNotC : ¬ p ∣ 163475) (hNotB : ¬ p ∣ 163472),
        order_of_C_B_inv_mod_p2 163475 163472 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163472 163475 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_163472_163475
def row_163827_163830 :
    HasPrimeWithExpOne (S_val 163827 163830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163827 163830 ∧ ¬ p ∣ (163830 - 163827) ∧
      ∃ (hNotC : ¬ p ∣ 163830) (hNotB : ¬ p ∣ 163827),
        order_of_C_B_inv_mod_p2 163830 163827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163827 163830 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_163827_163830
def row_164181_164184 :
    HasPrimeWithExpOne (S_val 164181 164184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164181 164184 ∧ ¬ p ∣ (164184 - 164181) ∧
      ∃ (hNotC : ¬ p ∣ 164184) (hNotB : ¬ p ∣ 164181),
        order_of_C_B_inv_mod_p2 164184 164181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164181 164184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_164181_164184
def row_164536_164539 :
    HasPrimeWithExpOne (S_val 164536 164539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164536 164539 ∧ ¬ p ∣ (164539 - 164536) ∧
      ∃ (hNotC : ¬ p ∣ 164539) (hNotB : ¬ p ∣ 164536),
        order_of_C_B_inv_mod_p2 164539 164536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164536 164539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_164536_164539
def row_164891_164894 :
    HasPrimeWithExpOne (S_val 164891 164894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164891 164894 ∧ ¬ p ∣ (164894 - 164891) ∧
      ∃ (hNotC : ¬ p ∣ 164894) (hNotB : ¬ p ∣ 164891),
        order_of_C_B_inv_mod_p2 164894 164891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164891 164894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_164891_164894
def row_165245_165248 :
    HasPrimeWithExpOne (S_val 165245 165248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165245 165248 ∧ ¬ p ∣ (165248 - 165245) ∧
      ∃ (hNotC : ¬ p ∣ 165248) (hNotB : ¬ p ∣ 165245),
        order_of_C_B_inv_mod_p2 165248 165245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165245 165248 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_165245_165248
def row_165599_165602 :
    HasPrimeWithExpOne (S_val 165599 165602) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165599 165602 ∧ ¬ p ∣ (165602 - 165599) ∧
      ∃ (hNotC : ¬ p ∣ 165602) (hNotB : ¬ p ∣ 165599),
        order_of_C_B_inv_mod_p2 165602 165599 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165599 165602 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_165599_165602
def row_165954_165957 :
    HasPrimeWithExpOne (S_val 165954 165957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165954 165957 ∧ ¬ p ∣ (165957 - 165954) ∧
      ∃ (hNotC : ¬ p ∣ 165957) (hNotB : ¬ p ∣ 165954),
        order_of_C_B_inv_mod_p2 165957 165954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165954 165957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_165954_165957
def row_166309_166312 :
    HasPrimeWithExpOne (S_val 166309 166312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166309 166312 ∧ ¬ p ∣ (166312 - 166309) ∧
      ∃ (hNotC : ¬ p ∣ 166312) (hNotB : ¬ p ∣ 166309),
        order_of_C_B_inv_mod_p2 166312 166309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166309 166312 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_166309_166312
def row_166664_166667 :
    HasPrimeWithExpOne (S_val 166664 166667) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166664 166667 ∧ ¬ p ∣ (166667 - 166664) ∧
      ∃ (hNotC : ¬ p ∣ 166667) (hNotB : ¬ p ∣ 166664),
        order_of_C_B_inv_mod_p2 166667 166664 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166664 166667 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_166664_166667
def row_167018_167021 :
    HasPrimeWithExpOne (S_val 167018 167021) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167018 167021 ∧ ¬ p ∣ (167021 - 167018) ∧
      ∃ (hNotC : ¬ p ∣ 167021) (hNotB : ¬ p ∣ 167018),
        order_of_C_B_inv_mod_p2 167021 167018 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167018 167021 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_167018_167021
def row_167373_167376 :
    HasPrimeWithExpOne (S_val 167373 167376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167373 167376 ∧ ¬ p ∣ (167376 - 167373) ∧
      ∃ (hNotC : ¬ p ∣ 167376) (hNotB : ¬ p ∣ 167373),
        order_of_C_B_inv_mod_p2 167376 167373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167373 167376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_167373_167376
def row_167726_167729 :
    HasPrimeWithExpOne (S_val 167726 167729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167726 167729 ∧ ¬ p ∣ (167729 - 167726) ∧
      ∃ (hNotC : ¬ p ∣ 167729) (hNotB : ¬ p ∣ 167726),
        order_of_C_B_inv_mod_p2 167729 167726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167726 167729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_167726_167729
def row_168082_168085 :
    HasPrimeWithExpOne (S_val 168082 168085) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168082 168085 ∧ ¬ p ∣ (168085 - 168082) ∧
      ∃ (hNotC : ¬ p ∣ 168085) (hNotB : ¬ p ∣ 168082),
        order_of_C_B_inv_mod_p2 168085 168082 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168082 168085 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_168082_168085
def row_168437_168440 :
    HasPrimeWithExpOne (S_val 168437 168440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168437 168440 ∧ ¬ p ∣ (168440 - 168437) ∧
      ∃ (hNotC : ¬ p ∣ 168440) (hNotB : ¬ p ∣ 168437),
        order_of_C_B_inv_mod_p2 168440 168437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168437 168440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_168437_168440
def row_168792_168795 :
    HasPrimeWithExpOne (S_val 168792 168795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168792 168795 ∧ ¬ p ∣ (168795 - 168792) ∧
      ∃ (hNotC : ¬ p ∣ 168795) (hNotB : ¬ p ∣ 168792),
        order_of_C_B_inv_mod_p2 168795 168792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168792 168795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_168792_168795
def row_169151_169154 :
    HasPrimeWithExpOne (S_val 169151 169154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169151 169154 ∧ ¬ p ∣ (169154 - 169151) ∧
      ∃ (hNotC : ¬ p ∣ 169154) (hNotB : ¬ p ∣ 169151),
        order_of_C_B_inv_mod_p2 169154 169151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169151 169154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_169151_169154
def row_169500_169503 :
    HasPrimeWithExpOne (S_val 169500 169503) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169500 169503 ∧ ¬ p ∣ (169503 - 169500) ∧
      ∃ (hNotC : ¬ p ∣ 169503) (hNotB : ¬ p ∣ 169500),
        order_of_C_B_inv_mod_p2 169503 169500 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169500 169503 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_169500_169503
def row_169856_169859 :
    HasPrimeWithExpOne (S_val 169856 169859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169856 169859 ∧ ¬ p ∣ (169859 - 169856) ∧
      ∃ (hNotC : ¬ p ∣ 169859) (hNotB : ¬ p ∣ 169856),
        order_of_C_B_inv_mod_p2 169859 169856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169856 169859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_169856_169859
def row_170209_170212 :
    HasPrimeWithExpOne (S_val 170209 170212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170209 170212 ∧ ¬ p ∣ (170212 - 170209) ∧
      ∃ (hNotC : ¬ p ∣ 170212) (hNotB : ¬ p ∣ 170209),
        order_of_C_B_inv_mod_p2 170212 170209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170209 170212 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_170209_170212
def row_170564_170567 :
    HasPrimeWithExpOne (S_val 170564 170567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170564 170567 ∧ ¬ p ∣ (170567 - 170564) ∧
      ∃ (hNotC : ¬ p ∣ 170567) (hNotB : ¬ p ∣ 170564),
        order_of_C_B_inv_mod_p2 170567 170564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170564 170567 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_170564_170567
def row_170919_170922 :
    HasPrimeWithExpOne (S_val 170919 170922) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170919 170922 ∧ ¬ p ∣ (170922 - 170919) ∧
      ∃ (hNotC : ¬ p ∣ 170922) (hNotB : ¬ p ∣ 170919),
        order_of_C_B_inv_mod_p2 170922 170919 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170919 170922 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_170919_170922
def row_171274_171277 :
    HasPrimeWithExpOne (S_val 171274 171277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171274 171277 ∧ ¬ p ∣ (171277 - 171274) ∧
      ∃ (hNotC : ¬ p ∣ 171277) (hNotB : ¬ p ∣ 171274),
        order_of_C_B_inv_mod_p2 171277 171274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171274 171277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_171274_171277
def row_171627_171630 :
    HasPrimeWithExpOne (S_val 171627 171630) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171627 171630 ∧ ¬ p ∣ (171630 - 171627) ∧
      ∃ (hNotC : ¬ p ∣ 171630) (hNotB : ¬ p ∣ 171627),
        order_of_C_B_inv_mod_p2 171630 171627 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171627 171630 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_171627_171630
def row_171985_171988 :
    HasPrimeWithExpOne (S_val 171985 171988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171985 171988 ∧ ¬ p ∣ (171988 - 171985) ∧
      ∃ (hNotC : ¬ p ∣ 171988) (hNotB : ¬ p ∣ 171985),
        order_of_C_B_inv_mod_p2 171988 171985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171985 171988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_171985_171988
def row_172338_172341 :
    HasPrimeWithExpOne (S_val 172338 172341) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172338 172341 ∧ ¬ p ∣ (172341 - 172338) ∧
      ∃ (hNotC : ¬ p ∣ 172341) (hNotB : ¬ p ∣ 172338),
        order_of_C_B_inv_mod_p2 172341 172338 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172338 172341 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_172338_172341
def row_172692_172695 :
    HasPrimeWithExpOne (S_val 172692 172695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172692 172695 ∧ ¬ p ∣ (172695 - 172692) ∧
      ∃ (hNotC : ¬ p ∣ 172695) (hNotB : ¬ p ∣ 172692),
        order_of_C_B_inv_mod_p2 172695 172692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172692 172695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_172692_172695
def row_173046_173049 :
    HasPrimeWithExpOne (S_val 173046 173049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173046 173049 ∧ ¬ p ∣ (173049 - 173046) ∧
      ∃ (hNotC : ¬ p ∣ 173049) (hNotB : ¬ p ∣ 173046),
        order_of_C_B_inv_mod_p2 173049 173046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173046 173049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_173046_173049
def row_173400_173403 :
    HasPrimeWithExpOne (S_val 173400 173403) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173400 173403 ∧ ¬ p ∣ (173403 - 173400) ∧
      ∃ (hNotC : ¬ p ∣ 173403) (hNotB : ¬ p ∣ 173400),
        order_of_C_B_inv_mod_p2 173403 173400 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173400 173403 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_173400_173403
def row_173755_173758 :
    HasPrimeWithExpOne (S_val 173755 173758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173755 173758 ∧ ¬ p ∣ (173758 - 173755) ∧
      ∃ (hNotC : ¬ p ∣ 173758) (hNotB : ¬ p ∣ 173755),
        order_of_C_B_inv_mod_p2 173758 173755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173755 173758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_173755_173758
def row_174110_174113 :
    HasPrimeWithExpOne (S_val 174110 174113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174110 174113 ∧ ¬ p ∣ (174113 - 174110) ∧
      ∃ (hNotC : ¬ p ∣ 174113) (hNotB : ¬ p ∣ 174110),
        order_of_C_B_inv_mod_p2 174113 174110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174110 174113 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_174110_174113
def row_174466_174469 :
    HasPrimeWithExpOne (S_val 174466 174469) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174466 174469 ∧ ¬ p ∣ (174469 - 174466) ∧
      ∃ (hNotC : ¬ p ∣ 174469) (hNotB : ¬ p ∣ 174466),
        order_of_C_B_inv_mod_p2 174469 174466 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174466 174469 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_174466_174469
def row_174822_174825 :
    HasPrimeWithExpOne (S_val 174822 174825) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174822 174825 ∧ ¬ p ∣ (174825 - 174822) ∧
      ∃ (hNotC : ¬ p ∣ 174825) (hNotB : ¬ p ∣ 174822),
        order_of_C_B_inv_mod_p2 174825 174822 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174822 174825 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_174822_174825
def row_175175_175178 :
    HasPrimeWithExpOne (S_val 175175 175178) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175175 175178 ∧ ¬ p ∣ (175178 - 175175) ∧
      ∃ (hNotC : ¬ p ∣ 175178) (hNotB : ¬ p ∣ 175175),
        order_of_C_B_inv_mod_p2 175178 175175 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175175 175178 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_175175_175178
def row_175528_175531 :
    HasPrimeWithExpOne (S_val 175528 175531) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175528 175531 ∧ ¬ p ∣ (175531 - 175528) ∧
      ∃ (hNotC : ¬ p ∣ 175531) (hNotB : ¬ p ∣ 175528),
        order_of_C_B_inv_mod_p2 175531 175528 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175528 175531 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_175528_175531
def row_175886_175889 :
    HasPrimeWithExpOne (S_val 175886 175889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175886 175889 ∧ ¬ p ∣ (175889 - 175886) ∧
      ∃ (hNotC : ¬ p ∣ 175889) (hNotB : ¬ p ∣ 175886),
        order_of_C_B_inv_mod_p2 175889 175886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175886 175889 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_175886_175889
def row_176238_176241 :
    HasPrimeWithExpOne (S_val 176238 176241) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176238 176241 ∧ ¬ p ∣ (176241 - 176238) ∧
      ∃ (hNotC : ¬ p ∣ 176241) (hNotB : ¬ p ∣ 176238),
        order_of_C_B_inv_mod_p2 176241 176238 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176238 176241 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_176238_176241
def row_176592_176595 :
    HasPrimeWithExpOne (S_val 176592 176595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176592 176595 ∧ ¬ p ∣ (176595 - 176592) ∧
      ∃ (hNotC : ¬ p ∣ 176595) (hNotB : ¬ p ∣ 176592),
        order_of_C_B_inv_mod_p2 176595 176592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176592 176595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_176592_176595
def row_176946_176949 :
    HasPrimeWithExpOne (S_val 176946 176949) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176946 176949 ∧ ¬ p ∣ (176949 - 176946) ∧
      ∃ (hNotC : ¬ p ∣ 176949) (hNotB : ¬ p ∣ 176946),
        order_of_C_B_inv_mod_p2 176949 176946 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176946 176949 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_176946_176949
def row_177301_177304 :
    HasPrimeWithExpOne (S_val 177301 177304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177301 177304 ∧ ¬ p ∣ (177304 - 177301) ∧
      ∃ (hNotC : ¬ p ∣ 177304) (hNotB : ¬ p ∣ 177301),
        order_of_C_B_inv_mod_p2 177304 177301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177301 177304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_177301_177304
def row_177656_177659 :
    HasPrimeWithExpOne (S_val 177656 177659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177656 177659 ∧ ¬ p ∣ (177659 - 177656) ∧
      ∃ (hNotC : ¬ p ∣ 177659) (hNotB : ¬ p ∣ 177656),
        order_of_C_B_inv_mod_p2 177659 177656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177656 177659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_177656_177659
def row_178011_178014 :
    HasPrimeWithExpOne (S_val 178011 178014) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178011 178014 ∧ ¬ p ∣ (178014 - 178011) ∧
      ∃ (hNotC : ¬ p ∣ 178014) (hNotB : ¬ p ∣ 178011),
        order_of_C_B_inv_mod_p2 178014 178011 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178011 178014 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_178011_178014
def row_178365_178368 :
    HasPrimeWithExpOne (S_val 178365 178368) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178365 178368 ∧ ¬ p ∣ (178368 - 178365) ∧
      ∃ (hNotC : ¬ p ∣ 178368) (hNotB : ¬ p ∣ 178365),
        order_of_C_B_inv_mod_p2 178368 178365 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178365 178368 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_178365_178368
def row_178720_178723 :
    HasPrimeWithExpOne (S_val 178720 178723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178720 178723 ∧ ¬ p ∣ (178723 - 178720) ∧
      ∃ (hNotC : ¬ p ∣ 178723) (hNotB : ¬ p ∣ 178720),
        order_of_C_B_inv_mod_p2 178723 178720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178720 178723 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_178720_178723
def row_179074_179077 :
    HasPrimeWithExpOne (S_val 179074 179077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179074 179077 ∧ ¬ p ∣ (179077 - 179074) ∧
      ∃ (hNotC : ¬ p ∣ 179077) (hNotB : ¬ p ∣ 179074),
        order_of_C_B_inv_mod_p2 179077 179074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179074 179077 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_179074_179077
def row_179429_179432 :
    HasPrimeWithExpOne (S_val 179429 179432) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179429 179432 ∧ ¬ p ∣ (179432 - 179429) ∧
      ∃ (hNotC : ¬ p ∣ 179432) (hNotB : ¬ p ∣ 179429),
        order_of_C_B_inv_mod_p2 179432 179429 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179429 179432 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_179429_179432
def row_179783_179786 :
    HasPrimeWithExpOne (S_val 179783 179786) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179783 179786 ∧ ¬ p ∣ (179786 - 179783) ∧
      ∃ (hNotC : ¬ p ∣ 179786) (hNotB : ¬ p ∣ 179783),
        order_of_C_B_inv_mod_p2 179786 179783 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179783 179786 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_179783_179786
def row_180138_180141 :
    HasPrimeWithExpOne (S_val 180138 180141) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180138 180141 ∧ ¬ p ∣ (180141 - 180138) ∧
      ∃ (hNotC : ¬ p ∣ 180141) (hNotB : ¬ p ∣ 180138),
        order_of_C_B_inv_mod_p2 180141 180138 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180138 180141 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_180138_180141
def row_180494_180497 :
    HasPrimeWithExpOne (S_val 180494 180497) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180494 180497 ∧ ¬ p ∣ (180497 - 180494) ∧
      ∃ (hNotC : ¬ p ∣ 180497) (hNotB : ¬ p ∣ 180494),
        order_of_C_B_inv_mod_p2 180497 180494 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180494 180497 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_180494_180497
def row_180848_180851 :
    HasPrimeWithExpOne (S_val 180848 180851) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180848 180851 ∧ ¬ p ∣ (180851 - 180848) ∧
      ∃ (hNotC : ¬ p ∣ 180851) (hNotB : ¬ p ∣ 180848),
        order_of_C_B_inv_mod_p2 180851 180848 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180848 180851 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_180848_180851
def row_181200_181203 :
    HasPrimeWithExpOne (S_val 181200 181203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181200 181203 ∧ ¬ p ∣ (181203 - 181200) ∧
      ∃ (hNotC : ¬ p ∣ 181203) (hNotB : ¬ p ∣ 181200),
        order_of_C_B_inv_mod_p2 181203 181200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181200 181203 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_181200_181203
def row_181557_181560 :
    HasPrimeWithExpOne (S_val 181557 181560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181557 181560 ∧ ¬ p ∣ (181560 - 181557) ∧
      ∃ (hNotC : ¬ p ∣ 181560) (hNotB : ¬ p ∣ 181557),
        order_of_C_B_inv_mod_p2 181560 181557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181557 181560 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_181557_181560
def row_181911_181914 :
    HasPrimeWithExpOne (S_val 181911 181914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181911 181914 ∧ ¬ p ∣ (181914 - 181911) ∧
      ∃ (hNotC : ¬ p ∣ 181914) (hNotB : ¬ p ∣ 181911),
        order_of_C_B_inv_mod_p2 181914 181911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181911 181914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_181911_181914
def row_182266_182269 :
    HasPrimeWithExpOne (S_val 182266 182269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182266 182269 ∧ ¬ p ∣ (182269 - 182266) ∧
      ∃ (hNotC : ¬ p ∣ 182269) (hNotB : ¬ p ∣ 182266),
        order_of_C_B_inv_mod_p2 182269 182266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182266 182269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_182266_182269
def row_182620_182623 :
    HasPrimeWithExpOne (S_val 182620 182623) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182620 182623 ∧ ¬ p ∣ (182623 - 182620) ∧
      ∃ (hNotC : ¬ p ∣ 182623) (hNotB : ¬ p ∣ 182620),
        order_of_C_B_inv_mod_p2 182623 182620 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182620 182623 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_182620_182623
def row_182975_182978 :
    HasPrimeWithExpOne (S_val 182975 182978) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182975 182978 ∧ ¬ p ∣ (182978 - 182975) ∧
      ∃ (hNotC : ¬ p ∣ 182978) (hNotB : ¬ p ∣ 182975),
        order_of_C_B_inv_mod_p2 182978 182975 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182975 182978 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_182975_182978
def row_183331_183334 :
    HasPrimeWithExpOne (S_val 183331 183334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183331 183334 ∧ ¬ p ∣ (183334 - 183331) ∧
      ∃ (hNotC : ¬ p ∣ 183334) (hNotB : ¬ p ∣ 183331),
        order_of_C_B_inv_mod_p2 183334 183331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183331 183334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_183331_183334
def row_183685_183688 :
    HasPrimeWithExpOne (S_val 183685 183688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183685 183688 ∧ ¬ p ∣ (183688 - 183685) ∧
      ∃ (hNotC : ¬ p ∣ 183688) (hNotB : ¬ p ∣ 183685),
        order_of_C_B_inv_mod_p2 183688 183685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183685 183688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_183685_183688
def row_184037_184040 :
    HasPrimeWithExpOne (S_val 184037 184040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184037 184040 ∧ ¬ p ∣ (184040 - 184037) ∧
      ∃ (hNotC : ¬ p ∣ 184040) (hNotB : ¬ p ∣ 184037),
        order_of_C_B_inv_mod_p2 184040 184037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184037 184040 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_184037_184040
def row_184393_184396 :
    HasPrimeWithExpOne (S_val 184393 184396) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184393 184396 ∧ ¬ p ∣ (184396 - 184393) ∧
      ∃ (hNotC : ¬ p ∣ 184396) (hNotB : ¬ p ∣ 184393),
        order_of_C_B_inv_mod_p2 184396 184393 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184393 184396 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_184393_184396
def row_184748_184751 :
    HasPrimeWithExpOne (S_val 184748 184751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184748 184751 ∧ ¬ p ∣ (184751 - 184748) ∧
      ∃ (hNotC : ¬ p ∣ 184751) (hNotB : ¬ p ∣ 184748),
        order_of_C_B_inv_mod_p2 184751 184748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184748 184751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_184748_184751
def row_185102_185105 :
    HasPrimeWithExpOne (S_val 185102 185105) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185102 185105 ∧ ¬ p ∣ (185105 - 185102) ∧
      ∃ (hNotC : ¬ p ∣ 185105) (hNotB : ¬ p ∣ 185102),
        order_of_C_B_inv_mod_p2 185105 185102 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185102 185105 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_185102_185105
def row_185457_185460 :
    HasPrimeWithExpOne (S_val 185457 185460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185457 185460 ∧ ¬ p ∣ (185460 - 185457) ∧
      ∃ (hNotC : ¬ p ∣ 185460) (hNotB : ¬ p ∣ 185457),
        order_of_C_B_inv_mod_p2 185460 185457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185457 185460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_185457_185460
def row_185812_185815 :
    HasPrimeWithExpOne (S_val 185812 185815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185812 185815 ∧ ¬ p ∣ (185815 - 185812) ∧
      ∃ (hNotC : ¬ p ∣ 185815) (hNotB : ¬ p ∣ 185812),
        order_of_C_B_inv_mod_p2 185815 185812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185812 185815 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_185812_185815
def row_186166_186169 :
    HasPrimeWithExpOne (S_val 186166 186169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186166 186169 ∧ ¬ p ∣ (186169 - 186166) ∧
      ∃ (hNotC : ¬ p ∣ 186169) (hNotB : ¬ p ∣ 186166),
        order_of_C_B_inv_mod_p2 186169 186166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186166 186169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_186166_186169
def row_186520_186523 :
    HasPrimeWithExpOne (S_val 186520 186523) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186520 186523 ∧ ¬ p ∣ (186523 - 186520) ∧
      ∃ (hNotC : ¬ p ∣ 186523) (hNotB : ¬ p ∣ 186520),
        order_of_C_B_inv_mod_p2 186523 186520 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186520 186523 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_186520_186523
def row_186875_186878 :
    HasPrimeWithExpOne (S_val 186875 186878) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186875 186878 ∧ ¬ p ∣ (186878 - 186875) ∧
      ∃ (hNotC : ¬ p ∣ 186878) (hNotB : ¬ p ∣ 186875),
        order_of_C_B_inv_mod_p2 186878 186875 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186875 186878 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_186875_186878
def row_187232_187235 :
    HasPrimeWithExpOne (S_val 187232 187235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187232 187235 ∧ ¬ p ∣ (187235 - 187232) ∧
      ∃ (hNotC : ¬ p ∣ 187235) (hNotB : ¬ p ∣ 187232),
        order_of_C_B_inv_mod_p2 187235 187232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187232 187235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_187232_187235
def row_187585_187588 :
    HasPrimeWithExpOne (S_val 187585 187588) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187585 187588 ∧ ¬ p ∣ (187588 - 187585) ∧
      ∃ (hNotC : ¬ p ∣ 187588) (hNotB : ¬ p ∣ 187585),
        order_of_C_B_inv_mod_p2 187588 187585 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187585 187588 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_187585_187588
def row_187939_187942 :
    HasPrimeWithExpOne (S_val 187939 187942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187939 187942 ∧ ¬ p ∣ (187942 - 187939) ∧
      ∃ (hNotC : ¬ p ∣ 187942) (hNotB : ¬ p ∣ 187939),
        order_of_C_B_inv_mod_p2 187942 187939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187939 187942 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_187939_187942
def row_188293_188296 :
    HasPrimeWithExpOne (S_val 188293 188296) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188293 188296 ∧ ¬ p ∣ (188296 - 188293) ∧
      ∃ (hNotC : ¬ p ∣ 188296) (hNotB : ¬ p ∣ 188293),
        order_of_C_B_inv_mod_p2 188296 188293 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188293 188296 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_188293_188296
def row_188648_188651 :
    HasPrimeWithExpOne (S_val 188648 188651) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188648 188651 ∧ ¬ p ∣ (188651 - 188648) ∧
      ∃ (hNotC : ¬ p ∣ 188651) (hNotB : ¬ p ∣ 188648),
        order_of_C_B_inv_mod_p2 188651 188648 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188648 188651 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_188648_188651
def row_189003_189006 :
    HasPrimeWithExpOne (S_val 189003 189006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189003 189006 ∧ ¬ p ∣ (189006 - 189003) ∧
      ∃ (hNotC : ¬ p ∣ 189006) (hNotB : ¬ p ∣ 189003),
        order_of_C_B_inv_mod_p2 189006 189003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189003 189006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_189003_189006
def row_189360_189363 :
    HasPrimeWithExpOne (S_val 189360 189363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189360 189363 ∧ ¬ p ∣ (189363 - 189360) ∧
      ∃ (hNotC : ¬ p ∣ 189363) (hNotB : ¬ p ∣ 189360),
        order_of_C_B_inv_mod_p2 189363 189360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189360 189363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_189360_189363
def row_189713_189716 :
    HasPrimeWithExpOne (S_val 189713 189716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189713 189716 ∧ ¬ p ∣ (189716 - 189713) ∧
      ∃ (hNotC : ¬ p ∣ 189716) (hNotB : ¬ p ∣ 189713),
        order_of_C_B_inv_mod_p2 189716 189713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189713 189716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_189713_189716
def row_190068_190071 :
    HasPrimeWithExpOne (S_val 190068 190071) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190068 190071 ∧ ¬ p ∣ (190071 - 190068) ∧
      ∃ (hNotC : ¬ p ∣ 190071) (hNotB : ¬ p ∣ 190068),
        order_of_C_B_inv_mod_p2 190071 190068 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190068 190071 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_190068_190071
def row_190421_190424 :
    HasPrimeWithExpOne (S_val 190421 190424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190421 190424 ∧ ¬ p ∣ (190424 - 190421) ∧
      ∃ (hNotC : ¬ p ∣ 190424) (hNotB : ¬ p ∣ 190421),
        order_of_C_B_inv_mod_p2 190424 190421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190421 190424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_190421_190424
def row_190776_190779 :
    HasPrimeWithExpOne (S_val 190776 190779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190776 190779 ∧ ¬ p ∣ (190779 - 190776) ∧
      ∃ (hNotC : ¬ p ∣ 190779) (hNotB : ¬ p ∣ 190776),
        order_of_C_B_inv_mod_p2 190779 190776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190776 190779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_190776_190779
def row_191131_191134 :
    HasPrimeWithExpOne (S_val 191131 191134) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191131 191134 ∧ ¬ p ∣ (191134 - 191131) ∧
      ∃ (hNotC : ¬ p ∣ 191134) (hNotB : ¬ p ∣ 191131),
        order_of_C_B_inv_mod_p2 191134 191131 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191131 191134 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_191131_191134
def row_191485_191488 :
    HasPrimeWithExpOne (S_val 191485 191488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191485 191488 ∧ ¬ p ∣ (191488 - 191485) ∧
      ∃ (hNotC : ¬ p ∣ 191488) (hNotB : ¬ p ∣ 191485),
        order_of_C_B_inv_mod_p2 191488 191485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191485 191488 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_191485_191488
def row_191839_191842 :
    HasPrimeWithExpOne (S_val 191839 191842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191839 191842 ∧ ¬ p ∣ (191842 - 191839) ∧
      ∃ (hNotC : ¬ p ∣ 191842) (hNotB : ¬ p ∣ 191839),
        order_of_C_B_inv_mod_p2 191842 191839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191839 191842 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_191839_191842
def row_192196_192199 :
    HasPrimeWithExpOne (S_val 192196 192199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192196 192199 ∧ ¬ p ∣ (192199 - 192196) ∧
      ∃ (hNotC : ¬ p ∣ 192199) (hNotB : ¬ p ∣ 192196),
        order_of_C_B_inv_mod_p2 192199 192196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192196 192199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_192196_192199
def row_192548_192551 :
    HasPrimeWithExpOne (S_val 192548 192551) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192548 192551 ∧ ¬ p ∣ (192551 - 192548) ∧
      ∃ (hNotC : ¬ p ∣ 192551) (hNotB : ¬ p ∣ 192548),
        order_of_C_B_inv_mod_p2 192551 192548 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192548 192551 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_192548_192551
def row_192904_192907 :
    HasPrimeWithExpOne (S_val 192904 192907) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192904 192907 ∧ ¬ p ∣ (192907 - 192904) ∧
      ∃ (hNotC : ¬ p ∣ 192907) (hNotB : ¬ p ∣ 192904),
        order_of_C_B_inv_mod_p2 192907 192904 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192904 192907 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_192904_192907
def row_193259_193262 :
    HasPrimeWithExpOne (S_val 193259 193262) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193259 193262 ∧ ¬ p ∣ (193262 - 193259) ∧
      ∃ (hNotC : ¬ p ∣ 193262) (hNotB : ¬ p ∣ 193259),
        order_of_C_B_inv_mod_p2 193262 193259 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193259 193262 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_193259_193262
def row_193613_193616 :
    HasPrimeWithExpOne (S_val 193613 193616) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193613 193616 ∧ ¬ p ∣ (193616 - 193613) ∧
      ∃ (hNotC : ¬ p ∣ 193616) (hNotB : ¬ p ∣ 193613),
        order_of_C_B_inv_mod_p2 193616 193613 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193613 193616 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_193613_193616
def row_193967_193970 :
    HasPrimeWithExpOne (S_val 193967 193970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193967 193970 ∧ ¬ p ∣ (193970 - 193967) ∧
      ∃ (hNotC : ¬ p ∣ 193970) (hNotB : ¬ p ∣ 193967),
        order_of_C_B_inv_mod_p2 193970 193967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193967 193970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_193967_193970
def row_194323_194326 :
    HasPrimeWithExpOne (S_val 194323 194326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194323 194326 ∧ ¬ p ∣ (194326 - 194323) ∧
      ∃ (hNotC : ¬ p ∣ 194326) (hNotB : ¬ p ∣ 194323),
        order_of_C_B_inv_mod_p2 194326 194323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194323 194326 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_194323_194326
def row_194679_194682 :
    HasPrimeWithExpOne (S_val 194679 194682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194679 194682 ∧ ¬ p ∣ (194682 - 194679) ∧
      ∃ (hNotC : ¬ p ∣ 194682) (hNotB : ¬ p ∣ 194679),
        order_of_C_B_inv_mod_p2 194682 194679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194679 194682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_194679_194682
def row_195031_195034 :
    HasPrimeWithExpOne (S_val 195031 195034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195031 195034 ∧ ¬ p ∣ (195034 - 195031) ∧
      ∃ (hNotC : ¬ p ∣ 195034) (hNotB : ¬ p ∣ 195031),
        order_of_C_B_inv_mod_p2 195034 195031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195031 195034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_195031_195034
def row_195385_195388 :
    HasPrimeWithExpOne (S_val 195385 195388) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195385 195388 ∧ ¬ p ∣ (195388 - 195385) ∧
      ∃ (hNotC : ¬ p ∣ 195388) (hNotB : ¬ p ∣ 195385),
        order_of_C_B_inv_mod_p2 195388 195385 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195385 195388 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_195385_195388
def row_195741_195744 :
    HasPrimeWithExpOne (S_val 195741 195744) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195741 195744 ∧ ¬ p ∣ (195744 - 195741) ∧
      ∃ (hNotC : ¬ p ∣ 195744) (hNotB : ¬ p ∣ 195741),
        order_of_C_B_inv_mod_p2 195744 195741 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195741 195744 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_195741_195744
def row_196095_196098 :
    HasPrimeWithExpOne (S_val 196095 196098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196095 196098 ∧ ¬ p ∣ (196098 - 196095) ∧
      ∃ (hNotC : ¬ p ∣ 196098) (hNotB : ¬ p ∣ 196095),
        order_of_C_B_inv_mod_p2 196098 196095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196095 196098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_196095_196098
def row_196450_196453 :
    HasPrimeWithExpOne (S_val 196450 196453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196450 196453 ∧ ¬ p ∣ (196453 - 196450) ∧
      ∃ (hNotC : ¬ p ∣ 196453) (hNotB : ¬ p ∣ 196450),
        order_of_C_B_inv_mod_p2 196453 196450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196450 196453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_196450_196453
def row_196805_196808 :
    HasPrimeWithExpOne (S_val 196805 196808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196805 196808 ∧ ¬ p ∣ (196808 - 196805) ∧
      ∃ (hNotC : ¬ p ∣ 196808) (hNotB : ¬ p ∣ 196805),
        order_of_C_B_inv_mod_p2 196808 196805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196805 196808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_196805_196808
def row_197159_197162 :
    HasPrimeWithExpOne (S_val 197159 197162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197159 197162 ∧ ¬ p ∣ (197162 - 197159) ∧
      ∃ (hNotC : ¬ p ∣ 197162) (hNotB : ¬ p ∣ 197159),
        order_of_C_B_inv_mod_p2 197162 197159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197159 197162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_197159_197162
def row_197513_197516 :
    HasPrimeWithExpOne (S_val 197513 197516) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197513 197516 ∧ ¬ p ∣ (197516 - 197513) ∧
      ∃ (hNotC : ¬ p ∣ 197516) (hNotB : ¬ p ∣ 197513),
        order_of_C_B_inv_mod_p2 197516 197513 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197513 197516 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_197513_197516
def row_197869_197872 :
    HasPrimeWithExpOne (S_val 197869 197872) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197869 197872 ∧ ¬ p ∣ (197872 - 197869) ∧
      ∃ (hNotC : ¬ p ∣ 197872) (hNotB : ¬ p ∣ 197869),
        order_of_C_B_inv_mod_p2 197872 197869 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197869 197872 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_197869_197872
def row_198223_198226 :
    HasPrimeWithExpOne (S_val 198223 198226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198223 198226 ∧ ¬ p ∣ (198226 - 198223) ∧
      ∃ (hNotC : ¬ p ∣ 198226) (hNotB : ¬ p ∣ 198223),
        order_of_C_B_inv_mod_p2 198226 198223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198223 198226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_198223_198226
def row_198578_198581 :
    HasPrimeWithExpOne (S_val 198578 198581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198578 198581 ∧ ¬ p ∣ (198581 - 198578) ∧
      ∃ (hNotC : ¬ p ∣ 198581) (hNotB : ¬ p ∣ 198578),
        order_of_C_B_inv_mod_p2 198581 198578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198578 198581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_198578_198581
def row_198932_198935 :
    HasPrimeWithExpOne (S_val 198932 198935) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198932 198935 ∧ ¬ p ∣ (198935 - 198932) ∧
      ∃ (hNotC : ¬ p ∣ 198935) (hNotB : ¬ p ∣ 198932),
        order_of_C_B_inv_mod_p2 198935 198932 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198932 198935 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_198932_198935
def row_199286_199289 :
    HasPrimeWithExpOne (S_val 199286 199289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199286 199289 ∧ ¬ p ∣ (199289 - 199286) ∧
      ∃ (hNotC : ¬ p ∣ 199289) (hNotB : ¬ p ∣ 199286),
        order_of_C_B_inv_mod_p2 199289 199286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199286 199289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_199286_199289
def row_199642_199645 :
    HasPrimeWithExpOne (S_val 199642 199645) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199642 199645 ∧ ¬ p ∣ (199645 - 199642) ∧
      ∃ (hNotC : ¬ p ∣ 199645) (hNotB : ¬ p ∣ 199642),
        order_of_C_B_inv_mod_p2 199645 199642 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199642 199645 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_199642_199645
def row_199996_199999 :
    HasPrimeWithExpOne (S_val 199996 199999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199996 199999 ∧ ¬ p ∣ (199999 - 199996) ∧
      ∃ (hNotC : ¬ p ∣ 199999) (hNotB : ¬ p ∣ 199996),
        order_of_C_B_inv_mod_p2 199999 199996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199996 199999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_199996_199999
def row_200000_200003 :
    HasPrimeWithExpOne (S_val 200000 200003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200000 200003 ∧ ¬ p ∣ (200003 - 200000) ∧
      ∃ (hNotC : ¬ p ∣ 200003) (hNotB : ¬ p ∣ 200000),
        order_of_C_B_inv_mod_p2 200003 200000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200000 200003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_200000_200003
def row_200001_200004 :
    HasPrimeWithExpOne (S_val 200001 200004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200001 200004 ∧ ¬ p ∣ (200004 - 200001) ∧
      ∃ (hNotC : ¬ p ∣ 200004) (hNotB : ¬ p ∣ 200001),
        order_of_C_B_inv_mod_p2 200004 200001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200001 200004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_200001_200004
def row_200337_200340 :
    HasPrimeWithExpOne (S_val 200337 200340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200337 200340 ∧ ¬ p ∣ (200340 - 200337) ∧
      ∃ (hNotC : ¬ p ∣ 200340) (hNotB : ¬ p ∣ 200337),
        order_of_C_B_inv_mod_p2 200340 200337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200337 200340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_200337_200340
def row_200672_200675 :
    HasPrimeWithExpOne (S_val 200672 200675) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200672 200675 ∧ ¬ p ∣ (200675 - 200672) ∧
      ∃ (hNotC : ¬ p ∣ 200675) (hNotB : ¬ p ∣ 200672),
        order_of_C_B_inv_mod_p2 200675 200672 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200672 200675 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_200672_200675
def row_201008_201011 :
    HasPrimeWithExpOne (S_val 201008 201011) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201008 201011 ∧ ¬ p ∣ (201011 - 201008) ∧
      ∃ (hNotC : ¬ p ∣ 201011) (hNotB : ¬ p ∣ 201008),
        order_of_C_B_inv_mod_p2 201011 201008 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201008 201011 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_201008_201011
def row_201344_201347 :
    HasPrimeWithExpOne (S_val 201344 201347) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201344 201347 ∧ ¬ p ∣ (201347 - 201344) ∧
      ∃ (hNotC : ¬ p ∣ 201347) (hNotB : ¬ p ∣ 201344),
        order_of_C_B_inv_mod_p2 201347 201344 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201344 201347 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_201344_201347
def row_201678_201681 :
    HasPrimeWithExpOne (S_val 201678 201681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 201678 201681 ∧ ¬ p ∣ (201681 - 201678) ∧
      ∃ (hNotC : ¬ p ∣ 201681) (hNotB : ¬ p ∣ 201678),
        order_of_C_B_inv_mod_p2 201681 201678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 201678 201681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_201678_201681
def row_202015_202018 :
    HasPrimeWithExpOne (S_val 202015 202018) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202015 202018 ∧ ¬ p ∣ (202018 - 202015) ∧
      ∃ (hNotC : ¬ p ∣ 202018) (hNotB : ¬ p ∣ 202015),
        order_of_C_B_inv_mod_p2 202018 202015 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202015 202018 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_202015_202018
def row_202349_202352 :
    HasPrimeWithExpOne (S_val 202349 202352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202349 202352 ∧ ¬ p ∣ (202352 - 202349) ∧
      ∃ (hNotC : ¬ p ∣ 202352) (hNotB : ¬ p ∣ 202349),
        order_of_C_B_inv_mod_p2 202352 202349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202349 202352 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_202349_202352
def row_202685_202688 :
    HasPrimeWithExpOne (S_val 202685 202688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 202685 202688 ∧ ¬ p ∣ (202688 - 202685) ∧
      ∃ (hNotC : ¬ p ∣ 202688) (hNotB : ¬ p ∣ 202685),
        order_of_C_B_inv_mod_p2 202688 202685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 202685 202688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_202685_202688
def row_203022_203025 :
    HasPrimeWithExpOne (S_val 203022 203025) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203022 203025 ∧ ¬ p ∣ (203025 - 203022) ∧
      ∃ (hNotC : ¬ p ∣ 203025) (hNotB : ¬ p ∣ 203022),
        order_of_C_B_inv_mod_p2 203025 203022 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203022 203025 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_203022_203025
def row_203355_203358 :
    HasPrimeWithExpOne (S_val 203355 203358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203355 203358 ∧ ¬ p ∣ (203358 - 203355) ∧
      ∃ (hNotC : ¬ p ∣ 203358) (hNotB : ¬ p ∣ 203355),
        order_of_C_B_inv_mod_p2 203358 203355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203355 203358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_203355_203358
def row_203692_203695 :
    HasPrimeWithExpOne (S_val 203692 203695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 203692 203695 ∧ ¬ p ∣ (203695 - 203692) ∧
      ∃ (hNotC : ¬ p ∣ 203695) (hNotB : ¬ p ∣ 203692),
        order_of_C_B_inv_mod_p2 203695 203692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 203692 203695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_203692_203695
def row_204027_204030 :
    HasPrimeWithExpOne (S_val 204027 204030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204027 204030 ∧ ¬ p ∣ (204030 - 204027) ∧
      ∃ (hNotC : ¬ p ∣ 204030) (hNotB : ¬ p ∣ 204027),
        order_of_C_B_inv_mod_p2 204030 204027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204027 204030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_204027_204030
def row_204364_204367 :
    HasPrimeWithExpOne (S_val 204364 204367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204364 204367 ∧ ¬ p ∣ (204367 - 204364) ∧
      ∃ (hNotC : ¬ p ∣ 204367) (hNotB : ¬ p ∣ 204364),
        order_of_C_B_inv_mod_p2 204367 204364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204364 204367 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_204364_204367
def row_204699_204702 :
    HasPrimeWithExpOne (S_val 204699 204702) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 204699 204702 ∧ ¬ p ∣ (204702 - 204699) ∧
      ∃ (hNotC : ¬ p ∣ 204702) (hNotB : ¬ p ∣ 204699),
        order_of_C_B_inv_mod_p2 204702 204699 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 204699 204702 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_204699_204702
def row_205036_205039 :
    HasPrimeWithExpOne (S_val 205036 205039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205036 205039 ∧ ¬ p ∣ (205039 - 205036) ∧
      ∃ (hNotC : ¬ p ∣ 205039) (hNotB : ¬ p ∣ 205036),
        order_of_C_B_inv_mod_p2 205039 205036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205036 205039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_205036_205039
def row_205371_205374 :
    HasPrimeWithExpOne (S_val 205371 205374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205371 205374 ∧ ¬ p ∣ (205374 - 205371) ∧
      ∃ (hNotC : ¬ p ∣ 205374) (hNotB : ¬ p ∣ 205371),
        order_of_C_B_inv_mod_p2 205374 205371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205371 205374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_205371_205374
def row_205706_205709 :
    HasPrimeWithExpOne (S_val 205706 205709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 205706 205709 ∧ ¬ p ∣ (205709 - 205706) ∧
      ∃ (hNotC : ¬ p ∣ 205709) (hNotB : ¬ p ∣ 205706),
        order_of_C_B_inv_mod_p2 205709 205706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 205706 205709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_205706_205709
def row_206043_206046 :
    HasPrimeWithExpOne (S_val 206043 206046) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206043 206046 ∧ ¬ p ∣ (206046 - 206043) ∧
      ∃ (hNotC : ¬ p ∣ 206046) (hNotB : ¬ p ∣ 206043),
        order_of_C_B_inv_mod_p2 206046 206043 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206043 206046 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_206043_206046
def row_206375_206378 :
    HasPrimeWithExpOne (S_val 206375 206378) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206375 206378 ∧ ¬ p ∣ (206378 - 206375) ∧
      ∃ (hNotC : ¬ p ∣ 206378) (hNotB : ¬ p ∣ 206375),
        order_of_C_B_inv_mod_p2 206378 206375 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206375 206378 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_206375_206378
def row_206713_206716 :
    HasPrimeWithExpOne (S_val 206713 206716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 206713 206716 ∧ ¬ p ∣ (206716 - 206713) ∧
      ∃ (hNotC : ¬ p ∣ 206716) (hNotB : ¬ p ∣ 206713),
        order_of_C_B_inv_mod_p2 206716 206713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 206713 206716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_206713_206716
def row_207047_207050 :
    HasPrimeWithExpOne (S_val 207047 207050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207047 207050 ∧ ¬ p ∣ (207050 - 207047) ∧
      ∃ (hNotC : ¬ p ∣ 207050) (hNotB : ¬ p ∣ 207047),
        order_of_C_B_inv_mod_p2 207050 207047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207047 207050 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_207047_207050
def row_207382_207385 :
    HasPrimeWithExpOne (S_val 207382 207385) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207382 207385 ∧ ¬ p ∣ (207385 - 207382) ∧
      ∃ (hNotC : ¬ p ∣ 207385) (hNotB : ¬ p ∣ 207382),
        order_of_C_B_inv_mod_p2 207385 207382 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207382 207385 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_207382_207385
def row_207720_207723 :
    HasPrimeWithExpOne (S_val 207720 207723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 207720 207723 ∧ ¬ p ∣ (207723 - 207720) ∧
      ∃ (hNotC : ¬ p ∣ 207723) (hNotB : ¬ p ∣ 207720),
        order_of_C_B_inv_mod_p2 207723 207720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 207720 207723 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_207720_207723
def row_208054_208057 :
    HasPrimeWithExpOne (S_val 208054 208057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208054 208057 ∧ ¬ p ∣ (208057 - 208054) ∧
      ∃ (hNotC : ¬ p ∣ 208057) (hNotB : ¬ p ∣ 208054),
        order_of_C_B_inv_mod_p2 208057 208054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208054 208057 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_208054_208057
def row_208389_208392 :
    HasPrimeWithExpOne (S_val 208389 208392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208389 208392 ∧ ¬ p ∣ (208392 - 208389) ∧
      ∃ (hNotC : ¬ p ∣ 208392) (hNotB : ¬ p ∣ 208389),
        order_of_C_B_inv_mod_p2 208392 208389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208389 208392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_208389_208392
def row_208725_208728 :
    HasPrimeWithExpOne (S_val 208725 208728) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 208725 208728 ∧ ¬ p ∣ (208728 - 208725) ∧
      ∃ (hNotC : ¬ p ∣ 208728) (hNotB : ¬ p ∣ 208725),
        order_of_C_B_inv_mod_p2 208728 208725 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 208725 208728 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_208725_208728
def row_209064_209067 :
    HasPrimeWithExpOne (S_val 209064 209067) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209064 209067 ∧ ¬ p ∣ (209067 - 209064) ∧
      ∃ (hNotC : ¬ p ∣ 209067) (hNotB : ¬ p ∣ 209064),
        order_of_C_B_inv_mod_p2 209067 209064 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209064 209067 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_209064_209067
def row_209396_209399 :
    HasPrimeWithExpOne (S_val 209396 209399) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209396 209399 ∧ ¬ p ∣ (209399 - 209396) ∧
      ∃ (hNotC : ¬ p ∣ 209399) (hNotB : ¬ p ∣ 209396),
        order_of_C_B_inv_mod_p2 209399 209396 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209396 209399 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_209396_209399
def row_209731_209734 :
    HasPrimeWithExpOne (S_val 209731 209734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 209731 209734 ∧ ¬ p ∣ (209734 - 209731) ∧
      ∃ (hNotC : ¬ p ∣ 209734) (hNotB : ¬ p ∣ 209731),
        order_of_C_B_inv_mod_p2 209734 209731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 209731 209734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_209731_209734
def row_210066_210069 :
    HasPrimeWithExpOne (S_val 210066 210069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210066 210069 ∧ ¬ p ∣ (210069 - 210066) ∧
      ∃ (hNotC : ¬ p ∣ 210069) (hNotB : ¬ p ∣ 210066),
        order_of_C_B_inv_mod_p2 210069 210066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210066 210069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_210066_210069
def row_210403_210406 :
    HasPrimeWithExpOne (S_val 210403 210406) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210403 210406 ∧ ¬ p ∣ (210406 - 210403) ∧
      ∃ (hNotC : ¬ p ∣ 210406) (hNotB : ¬ p ∣ 210403),
        order_of_C_B_inv_mod_p2 210406 210403 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210403 210406 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_210403_210406
def row_210738_210741 :
    HasPrimeWithExpOne (S_val 210738 210741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 210738 210741 ∧ ¬ p ∣ (210741 - 210738) ∧
      ∃ (hNotC : ¬ p ∣ 210741) (hNotB : ¬ p ∣ 210738),
        order_of_C_B_inv_mod_p2 210741 210738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 210738 210741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_210738_210741
def row_211073_211076 :
    HasPrimeWithExpOne (S_val 211073 211076) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211073 211076 ∧ ¬ p ∣ (211076 - 211073) ∧
      ∃ (hNotC : ¬ p ∣ 211076) (hNotB : ¬ p ∣ 211073),
        order_of_C_B_inv_mod_p2 211076 211073 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211073 211076 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_211073_211076
def row_211410_211413 :
    HasPrimeWithExpOne (S_val 211410 211413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211410 211413 ∧ ¬ p ∣ (211413 - 211410) ∧
      ∃ (hNotC : ¬ p ∣ 211413) (hNotB : ¬ p ∣ 211410),
        order_of_C_B_inv_mod_p2 211413 211410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211410 211413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_211410_211413
def row_211745_211748 :
    HasPrimeWithExpOne (S_val 211745 211748) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 211745 211748 ∧ ¬ p ∣ (211748 - 211745) ∧
      ∃ (hNotC : ¬ p ∣ 211748) (hNotB : ¬ p ∣ 211745),
        order_of_C_B_inv_mod_p2 211748 211745 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 211745 211748 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_211745_211748
def row_212083_212086 :
    HasPrimeWithExpOne (S_val 212083 212086) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212083 212086 ∧ ¬ p ∣ (212086 - 212083) ∧
      ∃ (hNotC : ¬ p ∣ 212086) (hNotB : ¬ p ∣ 212083),
        order_of_C_B_inv_mod_p2 212086 212083 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212083 212086 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_212083_212086
def row_212416_212419 :
    HasPrimeWithExpOne (S_val 212416 212419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212416 212419 ∧ ¬ p ∣ (212419 - 212416) ∧
      ∃ (hNotC : ¬ p ∣ 212419) (hNotB : ¬ p ∣ 212416),
        order_of_C_B_inv_mod_p2 212419 212416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212416 212419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_212416_212419
def row_212752_212755 :
    HasPrimeWithExpOne (S_val 212752 212755) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 212752 212755 ∧ ¬ p ∣ (212755 - 212752) ∧
      ∃ (hNotC : ¬ p ∣ 212755) (hNotB : ¬ p ∣ 212752),
        order_of_C_B_inv_mod_p2 212755 212752 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 212752 212755 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_212752_212755
def row_213088_213091 :
    HasPrimeWithExpOne (S_val 213088 213091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213088 213091 ∧ ¬ p ∣ (213091 - 213088) ∧
      ∃ (hNotC : ¬ p ∣ 213091) (hNotB : ¬ p ∣ 213088),
        order_of_C_B_inv_mod_p2 213091 213088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213088 213091 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_213088_213091
def row_213423_213426 :
    HasPrimeWithExpOne (S_val 213423 213426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213423 213426 ∧ ¬ p ∣ (213426 - 213423) ∧
      ∃ (hNotC : ¬ p ∣ 213426) (hNotB : ¬ p ∣ 213423),
        order_of_C_B_inv_mod_p2 213426 213423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213423 213426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_213423_213426
def row_213759_213762 :
    HasPrimeWithExpOne (S_val 213759 213762) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 213759 213762 ∧ ¬ p ∣ (213762 - 213759) ∧
      ∃ (hNotC : ¬ p ∣ 213762) (hNotB : ¬ p ∣ 213759),
        order_of_C_B_inv_mod_p2 213762 213759 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 213759 213762 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_213759_213762
def row_214095_214098 :
    HasPrimeWithExpOne (S_val 214095 214098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214095 214098 ∧ ¬ p ∣ (214098 - 214095) ∧
      ∃ (hNotC : ¬ p ∣ 214098) (hNotB : ¬ p ∣ 214095),
        order_of_C_B_inv_mod_p2 214098 214095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214095 214098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_214095_214098
def row_214430_214433 :
    HasPrimeWithExpOne (S_val 214430 214433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214430 214433 ∧ ¬ p ∣ (214433 - 214430) ∧
      ∃ (hNotC : ¬ p ∣ 214433) (hNotB : ¬ p ∣ 214430),
        order_of_C_B_inv_mod_p2 214433 214430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214430 214433 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_214430_214433
def row_214766_214769 :
    HasPrimeWithExpOne (S_val 214766 214769) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 214766 214769 ∧ ¬ p ∣ (214769 - 214766) ∧
      ∃ (hNotC : ¬ p ∣ 214769) (hNotB : ¬ p ∣ 214766),
        order_of_C_B_inv_mod_p2 214769 214766 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 214766 214769 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_214766_214769
def row_215101_215104 :
    HasPrimeWithExpOne (S_val 215101 215104) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215101 215104 ∧ ¬ p ∣ (215104 - 215101) ∧
      ∃ (hNotC : ¬ p ∣ 215104) (hNotB : ¬ p ∣ 215101),
        order_of_C_B_inv_mod_p2 215104 215101 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215101 215104 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_215101_215104
def row_215437_215440 :
    HasPrimeWithExpOne (S_val 215437 215440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215437 215440 ∧ ¬ p ∣ (215440 - 215437) ∧
      ∃ (hNotC : ¬ p ∣ 215440) (hNotB : ¬ p ∣ 215437),
        order_of_C_B_inv_mod_p2 215440 215437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215437 215440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_215437_215440
def row_215772_215775 :
    HasPrimeWithExpOne (S_val 215772 215775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 215772 215775 ∧ ¬ p ∣ (215775 - 215772) ∧
      ∃ (hNotC : ¬ p ∣ 215775) (hNotB : ¬ p ∣ 215772),
        order_of_C_B_inv_mod_p2 215775 215772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 215772 215775 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_215772_215775
def row_216108_216111 :
    HasPrimeWithExpOne (S_val 216108 216111) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216108 216111 ∧ ¬ p ∣ (216111 - 216108) ∧
      ∃ (hNotC : ¬ p ∣ 216111) (hNotB : ¬ p ∣ 216108),
        order_of_C_B_inv_mod_p2 216111 216108 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216108 216111 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_216108_216111
def row_216443_216446 :
    HasPrimeWithExpOne (S_val 216443 216446) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216443 216446 ∧ ¬ p ∣ (216446 - 216443) ∧
      ∃ (hNotC : ¬ p ∣ 216446) (hNotB : ¬ p ∣ 216443),
        order_of_C_B_inv_mod_p2 216446 216443 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216443 216446 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_216443_216446
def row_216780_216783 :
    HasPrimeWithExpOne (S_val 216780 216783) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 216780 216783 ∧ ¬ p ∣ (216783 - 216780) ∧
      ∃ (hNotC : ¬ p ∣ 216783) (hNotB : ¬ p ∣ 216780),
        order_of_C_B_inv_mod_p2 216783 216780 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 216780 216783 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_216780_216783
def row_217114_217117 :
    HasPrimeWithExpOne (S_val 217114 217117) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217114 217117 ∧ ¬ p ∣ (217117 - 217114) ∧
      ∃ (hNotC : ¬ p ∣ 217117) (hNotB : ¬ p ∣ 217114),
        order_of_C_B_inv_mod_p2 217117 217114 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217114 217117 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_217114_217117
def row_217450_217453 :
    HasPrimeWithExpOne (S_val 217450 217453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217450 217453 ∧ ¬ p ∣ (217453 - 217450) ∧
      ∃ (hNotC : ¬ p ∣ 217453) (hNotB : ¬ p ∣ 217450),
        order_of_C_B_inv_mod_p2 217453 217450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217450 217453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_217450_217453
def row_217786_217789 :
    HasPrimeWithExpOne (S_val 217786 217789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 217786 217789 ∧ ¬ p ∣ (217789 - 217786) ∧
      ∃ (hNotC : ¬ p ∣ 217789) (hNotB : ¬ p ∣ 217786),
        order_of_C_B_inv_mod_p2 217789 217786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 217786 217789 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_217786_217789
def row_218123_218126 :
    HasPrimeWithExpOne (S_val 218123 218126) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218123 218126 ∧ ¬ p ∣ (218126 - 218123) ∧
      ∃ (hNotC : ¬ p ∣ 218126) (hNotB : ¬ p ∣ 218123),
        order_of_C_B_inv_mod_p2 218126 218123 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218123 218126 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_218123_218126
def row_218457_218460 :
    HasPrimeWithExpOne (S_val 218457 218460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218457 218460 ∧ ¬ p ∣ (218460 - 218457) ∧
      ∃ (hNotC : ¬ p ∣ 218460) (hNotB : ¬ p ∣ 218457),
        order_of_C_B_inv_mod_p2 218460 218457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218457 218460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_218457_218460
def row_218792_218795 :
    HasPrimeWithExpOne (S_val 218792 218795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 218792 218795 ∧ ¬ p ∣ (218795 - 218792) ∧
      ∃ (hNotC : ¬ p ∣ 218795) (hNotB : ¬ p ∣ 218792),
        order_of_C_B_inv_mod_p2 218795 218792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 218792 218795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_218792_218795
def row_219128_219131 :
    HasPrimeWithExpOne (S_val 219128 219131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219128 219131 ∧ ¬ p ∣ (219131 - 219128) ∧
      ∃ (hNotC : ¬ p ∣ 219131) (hNotB : ¬ p ∣ 219128),
        order_of_C_B_inv_mod_p2 219131 219128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219128 219131 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_219128_219131
def row_219463_219466 :
    HasPrimeWithExpOne (S_val 219463 219466) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219463 219466 ∧ ¬ p ∣ (219466 - 219463) ∧
      ∃ (hNotC : ¬ p ∣ 219466) (hNotB : ¬ p ∣ 219463),
        order_of_C_B_inv_mod_p2 219466 219463 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219463 219466 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_219463_219466
def row_219801_219804 :
    HasPrimeWithExpOne (S_val 219801 219804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 219801 219804 ∧ ¬ p ∣ (219804 - 219801) ∧
      ∃ (hNotC : ¬ p ∣ 219804) (hNotB : ¬ p ∣ 219801),
        order_of_C_B_inv_mod_p2 219804 219801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 219801 219804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_219801_219804
def row_220135_220138 :
    HasPrimeWithExpOne (S_val 220135 220138) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220135 220138 ∧ ¬ p ∣ (220138 - 220135) ∧
      ∃ (hNotC : ¬ p ∣ 220138) (hNotB : ¬ p ∣ 220135),
        order_of_C_B_inv_mod_p2 220138 220135 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220135 220138 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_220135_220138
def row_220471_220474 :
    HasPrimeWithExpOne (S_val 220471 220474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220471 220474 ∧ ¬ p ∣ (220474 - 220471) ∧
      ∃ (hNotC : ¬ p ∣ 220474) (hNotB : ¬ p ∣ 220471),
        order_of_C_B_inv_mod_p2 220474 220471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220471 220474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_220471_220474
def row_220805_220808 :
    HasPrimeWithExpOne (S_val 220805 220808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 220805 220808 ∧ ¬ p ∣ (220808 - 220805) ∧
      ∃ (hNotC : ¬ p ∣ 220808) (hNotB : ¬ p ∣ 220805),
        order_of_C_B_inv_mod_p2 220808 220805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 220805 220808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_220805_220808
def row_221140_221143 :
    HasPrimeWithExpOne (S_val 221140 221143) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221140 221143 ∧ ¬ p ∣ (221143 - 221140) ∧
      ∃ (hNotC : ¬ p ∣ 221143) (hNotB : ¬ p ∣ 221140),
        order_of_C_B_inv_mod_p2 221143 221140 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221140 221143 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_221140_221143
def row_221478_221481 :
    HasPrimeWithExpOne (S_val 221478 221481) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221478 221481 ∧ ¬ p ∣ (221481 - 221478) ∧
      ∃ (hNotC : ¬ p ∣ 221481) (hNotB : ¬ p ∣ 221478),
        order_of_C_B_inv_mod_p2 221481 221478 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221478 221481 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_221478_221481
def row_221811_221814 :
    HasPrimeWithExpOne (S_val 221811 221814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 221811 221814 ∧ ¬ p ∣ (221814 - 221811) ∧
      ∃ (hNotC : ¬ p ∣ 221814) (hNotB : ¬ p ∣ 221811),
        order_of_C_B_inv_mod_p2 221814 221811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 221811 221814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_221811_221814
def row_222150_222153 :
    HasPrimeWithExpOne (S_val 222150 222153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222150 222153 ∧ ¬ p ∣ (222153 - 222150) ∧
      ∃ (hNotC : ¬ p ∣ 222153) (hNotB : ¬ p ∣ 222150),
        order_of_C_B_inv_mod_p2 222153 222150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222150 222153 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_222150_222153
def row_222482_222485 :
    HasPrimeWithExpOne (S_val 222482 222485) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222482 222485 ∧ ¬ p ∣ (222485 - 222482) ∧
      ∃ (hNotC : ¬ p ∣ 222485) (hNotB : ¬ p ∣ 222482),
        order_of_C_B_inv_mod_p2 222485 222482 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222482 222485 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_222482_222485
def row_222819_222822 :
    HasPrimeWithExpOne (S_val 222819 222822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 222819 222822 ∧ ¬ p ∣ (222822 - 222819) ∧
      ∃ (hNotC : ¬ p ∣ 222822) (hNotB : ¬ p ∣ 222819),
        order_of_C_B_inv_mod_p2 222822 222819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 222819 222822 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_222819_222822
def row_223154_223157 :
    HasPrimeWithExpOne (S_val 223154 223157) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223154 223157 ∧ ¬ p ∣ (223157 - 223154) ∧
      ∃ (hNotC : ¬ p ∣ 223157) (hNotB : ¬ p ∣ 223154),
        order_of_C_B_inv_mod_p2 223157 223154 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223154 223157 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_223154_223157
def row_223492_223495 :
    HasPrimeWithExpOne (S_val 223492 223495) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223492 223495 ∧ ¬ p ∣ (223495 - 223492) ∧
      ∃ (hNotC : ¬ p ∣ 223495) (hNotB : ¬ p ∣ 223492),
        order_of_C_B_inv_mod_p2 223495 223492 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223492 223495 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_223492_223495
def row_223825_223828 :
    HasPrimeWithExpOne (S_val 223825 223828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 223825 223828 ∧ ¬ p ∣ (223828 - 223825) ∧
      ∃ (hNotC : ¬ p ∣ 223828) (hNotB : ¬ p ∣ 223825),
        order_of_C_B_inv_mod_p2 223828 223825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 223825 223828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_223825_223828
def row_224162_224165 :
    HasPrimeWithExpOne (S_val 224162 224165) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224162 224165 ∧ ¬ p ∣ (224165 - 224162) ∧
      ∃ (hNotC : ¬ p ∣ 224165) (hNotB : ¬ p ∣ 224162),
        order_of_C_B_inv_mod_p2 224165 224162 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224162 224165 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_224162_224165
def row_224497_224500 :
    HasPrimeWithExpOne (S_val 224497 224500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224497 224500 ∧ ¬ p ∣ (224500 - 224497) ∧
      ∃ (hNotC : ¬ p ∣ 224500) (hNotB : ¬ p ∣ 224497),
        order_of_C_B_inv_mod_p2 224500 224497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224497 224500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_224497_224500
def row_224832_224835 :
    HasPrimeWithExpOne (S_val 224832 224835) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 224832 224835 ∧ ¬ p ∣ (224835 - 224832) ∧
      ∃ (hNotC : ¬ p ∣ 224835) (hNotB : ¬ p ∣ 224832),
        order_of_C_B_inv_mod_p2 224835 224832 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 224832 224835 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_224832_224835
def row_225168_225171 :
    HasPrimeWithExpOne (S_val 225168 225171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225168 225171 ∧ ¬ p ∣ (225171 - 225168) ∧
      ∃ (hNotC : ¬ p ∣ 225171) (hNotB : ¬ p ∣ 225168),
        order_of_C_B_inv_mod_p2 225171 225168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225168 225171 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_225168_225171
def row_225505_225508 :
    HasPrimeWithExpOne (S_val 225505 225508) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225505 225508 ∧ ¬ p ∣ (225508 - 225505) ∧
      ∃ (hNotC : ¬ p ∣ 225508) (hNotB : ¬ p ∣ 225505),
        order_of_C_B_inv_mod_p2 225508 225505 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225505 225508 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_225505_225508
def row_225839_225842 :
    HasPrimeWithExpOne (S_val 225839 225842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 225839 225842 ∧ ¬ p ∣ (225842 - 225839) ∧
      ∃ (hNotC : ¬ p ∣ 225842) (hNotB : ¬ p ∣ 225839),
        order_of_C_B_inv_mod_p2 225842 225839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 225839 225842 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_225839_225842
def row_226174_226177 :
    HasPrimeWithExpOne (S_val 226174 226177) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226174 226177 ∧ ¬ p ∣ (226177 - 226174) ∧
      ∃ (hNotC : ¬ p ∣ 226177) (hNotB : ¬ p ∣ 226174),
        order_of_C_B_inv_mod_p2 226177 226174 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226174 226177 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_226174_226177
def row_226511_226514 :
    HasPrimeWithExpOne (S_val 226511 226514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226511 226514 ∧ ¬ p ∣ (226514 - 226511) ∧
      ∃ (hNotC : ¬ p ∣ 226514) (hNotB : ¬ p ∣ 226511),
        order_of_C_B_inv_mod_p2 226514 226511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226511 226514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_226511_226514
def row_226846_226849 :
    HasPrimeWithExpOne (S_val 226846 226849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 226846 226849 ∧ ¬ p ∣ (226849 - 226846) ∧
      ∃ (hNotC : ¬ p ∣ 226849) (hNotB : ¬ p ∣ 226846),
        order_of_C_B_inv_mod_p2 226849 226846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 226846 226849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_226846_226849
def row_227183_227186 :
    HasPrimeWithExpOne (S_val 227183 227186) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227183 227186 ∧ ¬ p ∣ (227186 - 227183) ∧
      ∃ (hNotC : ¬ p ∣ 227186) (hNotB : ¬ p ∣ 227183),
        order_of_C_B_inv_mod_p2 227186 227183 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227183 227186 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_227183_227186
def row_227516_227519 :
    HasPrimeWithExpOne (S_val 227516 227519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227516 227519 ∧ ¬ p ∣ (227519 - 227516) ∧
      ∃ (hNotC : ¬ p ∣ 227519) (hNotB : ¬ p ∣ 227516),
        order_of_C_B_inv_mod_p2 227519 227516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227516 227519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_227516_227519
def row_227853_227856 :
    HasPrimeWithExpOne (S_val 227853 227856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 227853 227856 ∧ ¬ p ∣ (227856 - 227853) ∧
      ∃ (hNotC : ¬ p ∣ 227856) (hNotB : ¬ p ∣ 227853),
        order_of_C_B_inv_mod_p2 227856 227853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 227853 227856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_227853_227856
def row_228190_228193 :
    HasPrimeWithExpOne (S_val 228190 228193) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228190 228193 ∧ ¬ p ∣ (228193 - 228190) ∧
      ∃ (hNotC : ¬ p ∣ 228193) (hNotB : ¬ p ∣ 228190),
        order_of_C_B_inv_mod_p2 228193 228190 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228190 228193 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_228190_228193
def row_228524_228527 :
    HasPrimeWithExpOne (S_val 228524 228527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228524 228527 ∧ ¬ p ∣ (228527 - 228524) ∧
      ∃ (hNotC : ¬ p ∣ 228527) (hNotB : ¬ p ∣ 228524),
        order_of_C_B_inv_mod_p2 228527 228524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228524 228527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_228524_228527
def row_228859_228862 :
    HasPrimeWithExpOne (S_val 228859 228862) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 228859 228862 ∧ ¬ p ∣ (228862 - 228859) ∧
      ∃ (hNotC : ¬ p ∣ 228862) (hNotB : ¬ p ∣ 228859),
        order_of_C_B_inv_mod_p2 228862 228859 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 228859 228862 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_228859_228862
def row_229196_229199 :
    HasPrimeWithExpOne (S_val 229196 229199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229196 229199 ∧ ¬ p ∣ (229199 - 229196) ∧
      ∃ (hNotC : ¬ p ∣ 229199) (hNotB : ¬ p ∣ 229196),
        order_of_C_B_inv_mod_p2 229199 229196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229196 229199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_229196_229199
def row_229530_229533 :
    HasPrimeWithExpOne (S_val 229530 229533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229530 229533 ∧ ¬ p ∣ (229533 - 229530) ∧
      ∃ (hNotC : ¬ p ∣ 229533) (hNotB : ¬ p ∣ 229530),
        order_of_C_B_inv_mod_p2 229533 229530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229530 229533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_229530_229533
def row_229866_229869 :
    HasPrimeWithExpOne (S_val 229866 229869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 229866 229869 ∧ ¬ p ∣ (229869 - 229866) ∧
      ∃ (hNotC : ¬ p ∣ 229869) (hNotB : ¬ p ∣ 229866),
        order_of_C_B_inv_mod_p2 229869 229866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 229866 229869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_229866_229869
def row_230203_230206 :
    HasPrimeWithExpOne (S_val 230203 230206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230203 230206 ∧ ¬ p ∣ (230206 - 230203) ∧
      ∃ (hNotC : ¬ p ∣ 230206) (hNotB : ¬ p ∣ 230203),
        order_of_C_B_inv_mod_p2 230206 230203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230203 230206 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_230203_230206
def row_230537_230540 :
    HasPrimeWithExpOne (S_val 230537 230540) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230537 230540 ∧ ¬ p ∣ (230540 - 230537) ∧
      ∃ (hNotC : ¬ p ∣ 230540) (hNotB : ¬ p ∣ 230537),
        order_of_C_B_inv_mod_p2 230540 230537 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230537 230540 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_230537_230540
def row_230873_230876 :
    HasPrimeWithExpOne (S_val 230873 230876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 230873 230876 ∧ ¬ p ∣ (230876 - 230873) ∧
      ∃ (hNotC : ¬ p ∣ 230876) (hNotB : ¬ p ∣ 230873),
        order_of_C_B_inv_mod_p2 230876 230873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 230873 230876 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_230873_230876
def row_231208_231211 :
    HasPrimeWithExpOne (S_val 231208 231211) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231208 231211 ∧ ¬ p ∣ (231211 - 231208) ∧
      ∃ (hNotC : ¬ p ∣ 231211) (hNotB : ¬ p ∣ 231208),
        order_of_C_B_inv_mod_p2 231211 231208 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231208 231211 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_231208_231211
def row_231544_231547 :
    HasPrimeWithExpOne (S_val 231544 231547) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231544 231547 ∧ ¬ p ∣ (231547 - 231544) ∧
      ∃ (hNotC : ¬ p ∣ 231547) (hNotB : ¬ p ∣ 231544),
        order_of_C_B_inv_mod_p2 231547 231544 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231544 231547 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_231544_231547
def row_231879_231882 :
    HasPrimeWithExpOne (S_val 231879 231882) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 231879 231882 ∧ ¬ p ∣ (231882 - 231879) ∧
      ∃ (hNotC : ¬ p ∣ 231882) (hNotB : ¬ p ∣ 231879),
        order_of_C_B_inv_mod_p2 231882 231879 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 231879 231882 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_231879_231882
def row_232215_232218 :
    HasPrimeWithExpOne (S_val 232215 232218) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232215 232218 ∧ ¬ p ∣ (232218 - 232215) ∧
      ∃ (hNotC : ¬ p ∣ 232218) (hNotB : ¬ p ∣ 232215),
        order_of_C_B_inv_mod_p2 232218 232215 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232215 232218 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_232215_232218
def row_232551_232554 :
    HasPrimeWithExpOne (S_val 232551 232554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232551 232554 ∧ ¬ p ∣ (232554 - 232551) ∧
      ∃ (hNotC : ¬ p ∣ 232554) (hNotB : ¬ p ∣ 232551),
        order_of_C_B_inv_mod_p2 232554 232551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232551 232554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_232551_232554
def row_232886_232889 :
    HasPrimeWithExpOne (S_val 232886 232889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 232886 232889 ∧ ¬ p ∣ (232889 - 232886) ∧
      ∃ (hNotC : ¬ p ∣ 232889) (hNotB : ¬ p ∣ 232886),
        order_of_C_B_inv_mod_p2 232889 232886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 232886 232889 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_232886_232889
def row_233222_233225 :
    HasPrimeWithExpOne (S_val 233222 233225) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233222 233225 ∧ ¬ p ∣ (233225 - 233222) ∧
      ∃ (hNotC : ¬ p ∣ 233225) (hNotB : ¬ p ∣ 233222),
        order_of_C_B_inv_mod_p2 233225 233222 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233222 233225 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_233222_233225
def row_233558_233561 :
    HasPrimeWithExpOne (S_val 233558 233561) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233558 233561 ∧ ¬ p ∣ (233561 - 233558) ∧
      ∃ (hNotC : ¬ p ∣ 233561) (hNotB : ¬ p ∣ 233558),
        order_of_C_B_inv_mod_p2 233561 233558 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233558 233561 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_233558_233561
def row_233893_233896 :
    HasPrimeWithExpOne (S_val 233893 233896) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 233893 233896 ∧ ¬ p ∣ (233896 - 233893) ∧
      ∃ (hNotC : ¬ p ∣ 233896) (hNotB : ¬ p ∣ 233893),
        order_of_C_B_inv_mod_p2 233896 233893 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 233893 233896 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_233893_233896
def row_234226_234229 :
    HasPrimeWithExpOne (S_val 234226 234229) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234226 234229 ∧ ¬ p ∣ (234229 - 234226) ∧
      ∃ (hNotC : ¬ p ∣ 234229) (hNotB : ¬ p ∣ 234226),
        order_of_C_B_inv_mod_p2 234229 234226 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234226 234229 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_234226_234229
def row_234564_234567 :
    HasPrimeWithExpOne (S_val 234564 234567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234564 234567 ∧ ¬ p ∣ (234567 - 234564) ∧
      ∃ (hNotC : ¬ p ∣ 234567) (hNotB : ¬ p ∣ 234564),
        order_of_C_B_inv_mod_p2 234567 234564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234564 234567 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_234564_234567
def row_234900_234903 :
    HasPrimeWithExpOne (S_val 234900 234903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 234900 234903 ∧ ¬ p ∣ (234903 - 234900) ∧
      ∃ (hNotC : ¬ p ∣ 234903) (hNotB : ¬ p ∣ 234900),
        order_of_C_B_inv_mod_p2 234903 234900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 234900 234903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_234900_234903
def row_235235_235238 :
    HasPrimeWithExpOne (S_val 235235 235238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235235 235238 ∧ ¬ p ∣ (235238 - 235235) ∧
      ∃ (hNotC : ¬ p ∣ 235238) (hNotB : ¬ p ∣ 235235),
        order_of_C_B_inv_mod_p2 235238 235235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235235 235238 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_235235_235238
def row_235572_235575 :
    HasPrimeWithExpOne (S_val 235572 235575) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235572 235575 ∧ ¬ p ∣ (235575 - 235572) ∧
      ∃ (hNotC : ¬ p ∣ 235575) (hNotB : ¬ p ∣ 235572),
        order_of_C_B_inv_mod_p2 235575 235572 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235572 235575 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_235572_235575
def row_235906_235909 :
    HasPrimeWithExpOne (S_val 235906 235909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 235906 235909 ∧ ¬ p ∣ (235909 - 235906) ∧
      ∃ (hNotC : ¬ p ∣ 235909) (hNotB : ¬ p ∣ 235906),
        order_of_C_B_inv_mod_p2 235909 235906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 235906 235909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_235906_235909
def row_236243_236246 :
    HasPrimeWithExpOne (S_val 236243 236246) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236243 236246 ∧ ¬ p ∣ (236246 - 236243) ∧
      ∃ (hNotC : ¬ p ∣ 236246) (hNotB : ¬ p ∣ 236243),
        order_of_C_B_inv_mod_p2 236246 236243 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236243 236246 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_236243_236246
def row_236576_236579 :
    HasPrimeWithExpOne (S_val 236576 236579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236576 236579 ∧ ¬ p ∣ (236579 - 236576) ∧
      ∃ (hNotC : ¬ p ∣ 236579) (hNotB : ¬ p ∣ 236576),
        order_of_C_B_inv_mod_p2 236579 236576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236576 236579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_236576_236579
def row_236914_236917 :
    HasPrimeWithExpOne (S_val 236914 236917) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 236914 236917 ∧ ¬ p ∣ (236917 - 236914) ∧
      ∃ (hNotC : ¬ p ∣ 236917) (hNotB : ¬ p ∣ 236914),
        order_of_C_B_inv_mod_p2 236917 236914 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 236914 236917 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_236914_236917
def row_237248_237251 :
    HasPrimeWithExpOne (S_val 237248 237251) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237248 237251 ∧ ¬ p ∣ (237251 - 237248) ∧
      ∃ (hNotC : ¬ p ∣ 237251) (hNotB : ¬ p ∣ 237248),
        order_of_C_B_inv_mod_p2 237251 237248 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237248 237251 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_237248_237251
def row_237583_237586 :
    HasPrimeWithExpOne (S_val 237583 237586) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237583 237586 ∧ ¬ p ∣ (237586 - 237583) ∧
      ∃ (hNotC : ¬ p ∣ 237586) (hNotB : ¬ p ∣ 237583),
        order_of_C_B_inv_mod_p2 237586 237583 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237583 237586 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_237583_237586
def row_237920_237923 :
    HasPrimeWithExpOne (S_val 237920 237923) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 237920 237923 ∧ ¬ p ∣ (237923 - 237920) ∧
      ∃ (hNotC : ¬ p ∣ 237923) (hNotB : ¬ p ∣ 237920),
        order_of_C_B_inv_mod_p2 237923 237920 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 237920 237923 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_237920_237923
def row_238253_238256 :
    HasPrimeWithExpOne (S_val 238253 238256) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238253 238256 ∧ ¬ p ∣ (238256 - 238253) ∧
      ∃ (hNotC : ¬ p ∣ 238256) (hNotB : ¬ p ∣ 238253),
        order_of_C_B_inv_mod_p2 238256 238253 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238253 238256 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_238253_238256
def row_238592_238595 :
    HasPrimeWithExpOne (S_val 238592 238595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238592 238595 ∧ ¬ p ∣ (238595 - 238592) ∧
      ∃ (hNotC : ¬ p ∣ 238595) (hNotB : ¬ p ∣ 238592),
        order_of_C_B_inv_mod_p2 238595 238592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238592 238595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_238592_238595
def row_238928_238931 :
    HasPrimeWithExpOne (S_val 238928 238931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 238928 238931 ∧ ¬ p ∣ (238931 - 238928) ∧
      ∃ (hNotC : ¬ p ∣ 238931) (hNotB : ¬ p ∣ 238928),
        order_of_C_B_inv_mod_p2 238931 238928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 238928 238931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_238928_238931
def row_239261_239264 :
    HasPrimeWithExpOne (S_val 239261 239264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239261 239264 ∧ ¬ p ∣ (239264 - 239261) ∧
      ∃ (hNotC : ¬ p ∣ 239264) (hNotB : ¬ p ∣ 239261),
        order_of_C_B_inv_mod_p2 239264 239261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239261 239264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_239261_239264
def row_239597_239600 :
    HasPrimeWithExpOne (S_val 239597 239600) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239597 239600 ∧ ¬ p ∣ (239600 - 239597) ∧
      ∃ (hNotC : ¬ p ∣ 239600) (hNotB : ¬ p ∣ 239597),
        order_of_C_B_inv_mod_p2 239600 239597 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239597 239600 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_239597_239600
def row_239934_239937 :
    HasPrimeWithExpOne (S_val 239934 239937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 239934 239937 ∧ ¬ p ∣ (239937 - 239934) ∧
      ∃ (hNotC : ¬ p ∣ 239937) (hNotB : ¬ p ∣ 239934),
        order_of_C_B_inv_mod_p2 239937 239934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 239934 239937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_239934_239937
def row_240267_240270 :
    HasPrimeWithExpOne (S_val 240267 240270) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240267 240270 ∧ ¬ p ∣ (240270 - 240267) ∧
      ∃ (hNotC : ¬ p ∣ 240270) (hNotB : ¬ p ∣ 240267),
        order_of_C_B_inv_mod_p2 240270 240267 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240267 240270 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_240267_240270
def row_240604_240607 :
    HasPrimeWithExpOne (S_val 240604 240607) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240604 240607 ∧ ¬ p ∣ (240607 - 240604) ∧
      ∃ (hNotC : ¬ p ∣ 240607) (hNotB : ¬ p ∣ 240604),
        order_of_C_B_inv_mod_p2 240607 240604 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240604 240607 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_240604_240607
def row_240942_240945 :
    HasPrimeWithExpOne (S_val 240942 240945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 240942 240945 ∧ ¬ p ∣ (240945 - 240942) ∧
      ∃ (hNotC : ¬ p ∣ 240945) (hNotB : ¬ p ∣ 240942),
        order_of_C_B_inv_mod_p2 240945 240942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 240942 240945 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_240942_240945
def row_241274_241277 :
    HasPrimeWithExpOne (S_val 241274 241277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241274 241277 ∧ ¬ p ∣ (241277 - 241274) ∧
      ∃ (hNotC : ¬ p ∣ 241277) (hNotB : ¬ p ∣ 241274),
        order_of_C_B_inv_mod_p2 241277 241274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241274 241277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_241274_241277
def row_241611_241614 :
    HasPrimeWithExpOne (S_val 241611 241614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241611 241614 ∧ ¬ p ∣ (241614 - 241611) ∧
      ∃ (hNotC : ¬ p ∣ 241614) (hNotB : ¬ p ∣ 241611),
        order_of_C_B_inv_mod_p2 241614 241611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241611 241614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_241611_241614
def row_241945_241948 :
    HasPrimeWithExpOne (S_val 241945 241948) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 241945 241948 ∧ ¬ p ∣ (241948 - 241945) ∧
      ∃ (hNotC : ¬ p ∣ 241948) (hNotB : ¬ p ∣ 241945),
        order_of_C_B_inv_mod_p2 241948 241945 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 241945 241948 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_241945_241948
def row_242282_242285 :
    HasPrimeWithExpOne (S_val 242282 242285) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242282 242285 ∧ ¬ p ∣ (242285 - 242282) ∧
      ∃ (hNotC : ¬ p ∣ 242285) (hNotB : ¬ p ∣ 242282),
        order_of_C_B_inv_mod_p2 242285 242282 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242282 242285 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_242282_242285
def row_242618_242621 :
    HasPrimeWithExpOne (S_val 242618 242621) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242618 242621 ∧ ¬ p ∣ (242621 - 242618) ∧
      ∃ (hNotC : ¬ p ∣ 242621) (hNotB : ¬ p ∣ 242618),
        order_of_C_B_inv_mod_p2 242621 242618 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242618 242621 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_242618_242621
def row_242956_242959 :
    HasPrimeWithExpOne (S_val 242956 242959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 242956 242959 ∧ ¬ p ∣ (242959 - 242956) ∧
      ∃ (hNotC : ¬ p ∣ 242959) (hNotB : ¬ p ∣ 242956),
        order_of_C_B_inv_mod_p2 242959 242956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 242956 242959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_242956_242959
def row_243288_243291 :
    HasPrimeWithExpOne (S_val 243288 243291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243288 243291 ∧ ¬ p ∣ (243291 - 243288) ∧
      ∃ (hNotC : ¬ p ∣ 243291) (hNotB : ¬ p ∣ 243288),
        order_of_C_B_inv_mod_p2 243291 243288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243288 243291 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_243288_243291
def row_243625_243628 :
    HasPrimeWithExpOne (S_val 243625 243628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243625 243628 ∧ ¬ p ∣ (243628 - 243625) ∧
      ∃ (hNotC : ¬ p ∣ 243628) (hNotB : ¬ p ∣ 243625),
        order_of_C_B_inv_mod_p2 243628 243625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243625 243628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_243625_243628
def row_243960_243963 :
    HasPrimeWithExpOne (S_val 243960 243963) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 243960 243963 ∧ ¬ p ∣ (243963 - 243960) ∧
      ∃ (hNotC : ¬ p ∣ 243963) (hNotB : ¬ p ∣ 243960),
        order_of_C_B_inv_mod_p2 243963 243960 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 243960 243963 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_243960_243963
def row_244295_244298 :
    HasPrimeWithExpOne (S_val 244295 244298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244295 244298 ∧ ¬ p ∣ (244298 - 244295) ∧
      ∃ (hNotC : ¬ p ∣ 244298) (hNotB : ¬ p ∣ 244295),
        order_of_C_B_inv_mod_p2 244298 244295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244295 244298 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_244295_244298
def row_244631_244634 :
    HasPrimeWithExpOne (S_val 244631 244634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244631 244634 ∧ ¬ p ∣ (244634 - 244631) ∧
      ∃ (hNotC : ¬ p ∣ 244634) (hNotB : ¬ p ∣ 244631),
        order_of_C_B_inv_mod_p2 244634 244631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244631 244634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_244631_244634
def row_244964_244967 :
    HasPrimeWithExpOne (S_val 244964 244967) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 244964 244967 ∧ ¬ p ∣ (244967 - 244964) ∧
      ∃ (hNotC : ¬ p ∣ 244967) (hNotB : ¬ p ∣ 244964),
        order_of_C_B_inv_mod_p2 244967 244964 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 244964 244967 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_244964_244967
def row_245302_245305 :
    HasPrimeWithExpOne (S_val 245302 245305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245302 245305 ∧ ¬ p ∣ (245305 - 245302) ∧
      ∃ (hNotC : ¬ p ∣ 245305) (hNotB : ¬ p ∣ 245302),
        order_of_C_B_inv_mod_p2 245305 245302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245302 245305 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_245302_245305
def row_245639_245642 :
    HasPrimeWithExpOne (S_val 245639 245642) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245639 245642 ∧ ¬ p ∣ (245642 - 245639) ∧
      ∃ (hNotC : ¬ p ∣ 245642) (hNotB : ¬ p ∣ 245639),
        order_of_C_B_inv_mod_p2 245642 245639 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245639 245642 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_245639_245642
def row_245972_245975 :
    HasPrimeWithExpOne (S_val 245972 245975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 245972 245975 ∧ ¬ p ∣ (245975 - 245972) ∧
      ∃ (hNotC : ¬ p ∣ 245975) (hNotB : ¬ p ∣ 245972),
        order_of_C_B_inv_mod_p2 245975 245972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 245972 245975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_245972_245975
def row_246309_246312 :
    HasPrimeWithExpOne (S_val 246309 246312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246309 246312 ∧ ¬ p ∣ (246312 - 246309) ∧
      ∃ (hNotC : ¬ p ∣ 246312) (hNotB : ¬ p ∣ 246309),
        order_of_C_B_inv_mod_p2 246312 246309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246309 246312 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_246309_246312
def row_246646_246649 :
    HasPrimeWithExpOne (S_val 246646 246649) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246646 246649 ∧ ¬ p ∣ (246649 - 246646) ∧
      ∃ (hNotC : ¬ p ∣ 246649) (hNotB : ¬ p ∣ 246646),
        order_of_C_B_inv_mod_p2 246649 246646 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246646 246649 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_246646_246649
def row_246982_246985 :
    HasPrimeWithExpOne (S_val 246982 246985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 246982 246985 ∧ ¬ p ∣ (246985 - 246982) ∧
      ∃ (hNotC : ¬ p ∣ 246985) (hNotB : ¬ p ∣ 246982),
        order_of_C_B_inv_mod_p2 246985 246982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 246982 246985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_246982_246985
def row_247316_247319 :
    HasPrimeWithExpOne (S_val 247316 247319) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247316 247319 ∧ ¬ p ∣ (247319 - 247316) ∧
      ∃ (hNotC : ¬ p ∣ 247319) (hNotB : ¬ p ∣ 247316),
        order_of_C_B_inv_mod_p2 247319 247316 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247316 247319 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_247316_247319
def row_247652_247655 :
    HasPrimeWithExpOne (S_val 247652 247655) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247652 247655 ∧ ¬ p ∣ (247655 - 247652) ∧
      ∃ (hNotC : ¬ p ∣ 247655) (hNotB : ¬ p ∣ 247652),
        order_of_C_B_inv_mod_p2 247655 247652 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247652 247655 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_247652_247655
def row_247987_247990 :
    HasPrimeWithExpOne (S_val 247987 247990) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 247987 247990 ∧ ¬ p ∣ (247990 - 247987) ∧
      ∃ (hNotC : ¬ p ∣ 247990) (hNotB : ¬ p ∣ 247987),
        order_of_C_B_inv_mod_p2 247990 247987 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 247987 247990 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_247987_247990
def row_248323_248326 :
    HasPrimeWithExpOne (S_val 248323 248326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248323 248326 ∧ ¬ p ∣ (248326 - 248323) ∧
      ∃ (hNotC : ¬ p ∣ 248326) (hNotB : ¬ p ∣ 248323),
        order_of_C_B_inv_mod_p2 248326 248323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248323 248326 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_248323_248326
def row_248660_248663 :
    HasPrimeWithExpOne (S_val 248660 248663) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248660 248663 ∧ ¬ p ∣ (248663 - 248660) ∧
      ∃ (hNotC : ¬ p ∣ 248663) (hNotB : ¬ p ∣ 248660),
        order_of_C_B_inv_mod_p2 248663 248660 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248660 248663 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_248660_248663
def row_248993_248996 :
    HasPrimeWithExpOne (S_val 248993 248996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 248993 248996 ∧ ¬ p ∣ (248996 - 248993) ∧
      ∃ (hNotC : ¬ p ∣ 248996) (hNotB : ¬ p ∣ 248993),
        order_of_C_B_inv_mod_p2 248996 248993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 248993 248996 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_248993_248996
def row_249330_249333 :
    HasPrimeWithExpOne (S_val 249330 249333) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249330 249333 ∧ ¬ p ∣ (249333 - 249330) ∧
      ∃ (hNotC : ¬ p ∣ 249333) (hNotB : ¬ p ∣ 249330),
        order_of_C_B_inv_mod_p2 249333 249330 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 249330 249333 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_249330_249333
def row_249663_249666 :
    HasPrimeWithExpOne (S_val 249663 249666) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 249663 249666 ∧ ¬ p ∣ (249666 - 249663) ∧
      ∃ (hNotC : ¬ p ∣ 249666) (hNotB : ¬ p ∣ 249663),
        order_of_C_B_inv_mod_p2 249666 249663 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 249663 249666 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_249663_249666
def row_250002_250005 :
    HasPrimeWithExpOne (S_val 250002 250005) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250002 250005 ∧ ¬ p ∣ (250005 - 250002) ∧
      ∃ (hNotC : ¬ p ∣ 250005) (hNotB : ¬ p ∣ 250002),
        order_of_C_B_inv_mod_p2 250005 250002 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250002 250005 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_250002_250005
def row_250336_250339 :
    HasPrimeWithExpOne (S_val 250336 250339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250336 250339 ∧ ¬ p ∣ (250339 - 250336) ∧
      ∃ (hNotC : ¬ p ∣ 250339) (hNotB : ¬ p ∣ 250336),
        order_of_C_B_inv_mod_p2 250339 250336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250336 250339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_250336_250339
def row_250671_250674 :
    HasPrimeWithExpOne (S_val 250671 250674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 250671 250674 ∧ ¬ p ∣ (250674 - 250671) ∧
      ∃ (hNotC : ¬ p ∣ 250674) (hNotB : ¬ p ∣ 250671),
        order_of_C_B_inv_mod_p2 250674 250671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 250671 250674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_250671_250674
def row_251007_251010 :
    HasPrimeWithExpOne (S_val 251007 251010) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251007 251010 ∧ ¬ p ∣ (251010 - 251007) ∧
      ∃ (hNotC : ¬ p ∣ 251010) (hNotB : ¬ p ∣ 251007),
        order_of_C_B_inv_mod_p2 251010 251007 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251007 251010 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_251007_251010
def row_251343_251346 :
    HasPrimeWithExpOne (S_val 251343 251346) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251343 251346 ∧ ¬ p ∣ (251346 - 251343) ∧
      ∃ (hNotC : ¬ p ∣ 251346) (hNotB : ¬ p ∣ 251343),
        order_of_C_B_inv_mod_p2 251346 251343 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251343 251346 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_251343_251346
def row_251678_251681 :
    HasPrimeWithExpOne (S_val 251678 251681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 251678 251681 ∧ ¬ p ∣ (251681 - 251678) ∧
      ∃ (hNotC : ¬ p ∣ 251681) (hNotB : ¬ p ∣ 251678),
        order_of_C_B_inv_mod_p2 251681 251678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 251678 251681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_251678_251681
def row_252014_252017 :
    HasPrimeWithExpOne (S_val 252014 252017) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252014 252017 ∧ ¬ p ∣ (252017 - 252014) ∧
      ∃ (hNotC : ¬ p ∣ 252017) (hNotB : ¬ p ∣ 252014),
        order_of_C_B_inv_mod_p2 252017 252014 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252014 252017 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_252014_252017
def row_252349_252352 :
    HasPrimeWithExpOne (S_val 252349 252352) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252349 252352 ∧ ¬ p ∣ (252352 - 252349) ∧
      ∃ (hNotC : ¬ p ∣ 252352) (hNotB : ¬ p ∣ 252349),
        order_of_C_B_inv_mod_p2 252352 252349 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252349 252352 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_252349_252352
def row_252684_252687 :
    HasPrimeWithExpOne (S_val 252684 252687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 252684 252687 ∧ ¬ p ∣ (252687 - 252684) ∧
      ∃ (hNotC : ¬ p ∣ 252687) (hNotB : ¬ p ∣ 252684),
        order_of_C_B_inv_mod_p2 252687 252684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 252684 252687 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_252684_252687
def row_253020_253023 :
    HasPrimeWithExpOne (S_val 253020 253023) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253020 253023 ∧ ¬ p ∣ (253023 - 253020) ∧
      ∃ (hNotC : ¬ p ∣ 253023) (hNotB : ¬ p ∣ 253020),
        order_of_C_B_inv_mod_p2 253023 253020 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253020 253023 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_253020_253023
def row_253357_253360 :
    HasPrimeWithExpOne (S_val 253357 253360) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253357 253360 ∧ ¬ p ∣ (253360 - 253357) ∧
      ∃ (hNotC : ¬ p ∣ 253360) (hNotB : ¬ p ∣ 253357),
        order_of_C_B_inv_mod_p2 253360 253357 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253357 253360 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_253357_253360
def row_253692_253695 :
    HasPrimeWithExpOne (S_val 253692 253695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 253692 253695 ∧ ¬ p ∣ (253695 - 253692) ∧
      ∃ (hNotC : ¬ p ∣ 253695) (hNotB : ¬ p ∣ 253692),
        order_of_C_B_inv_mod_p2 253695 253692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 253692 253695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_253692_253695
def row_254027_254030 :
    HasPrimeWithExpOne (S_val 254027 254030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254027 254030 ∧ ¬ p ∣ (254030 - 254027) ∧
      ∃ (hNotC : ¬ p ∣ 254030) (hNotB : ¬ p ∣ 254027),
        order_of_C_B_inv_mod_p2 254030 254027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254027 254030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_254027_254030
def row_254363_254366 :
    HasPrimeWithExpOne (S_val 254363 254366) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254363 254366 ∧ ¬ p ∣ (254366 - 254363) ∧
      ∃ (hNotC : ¬ p ∣ 254366) (hNotB : ¬ p ∣ 254363),
        order_of_C_B_inv_mod_p2 254366 254363 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254363 254366 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_254363_254366
def row_254697_254700 :
    HasPrimeWithExpOne (S_val 254697 254700) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 254697 254700 ∧ ¬ p ∣ (254700 - 254697) ∧
      ∃ (hNotC : ¬ p ∣ 254700) (hNotB : ¬ p ∣ 254697),
        order_of_C_B_inv_mod_p2 254700 254697 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 254697 254700 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_254697_254700
def row_255035_255038 :
    HasPrimeWithExpOne (S_val 255035 255038) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255035 255038 ∧ ¬ p ∣ (255038 - 255035) ∧
      ∃ (hNotC : ¬ p ∣ 255038) (hNotB : ¬ p ∣ 255035),
        order_of_C_B_inv_mod_p2 255038 255035 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255035 255038 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_255035_255038
def row_255370_255373 :
    HasPrimeWithExpOne (S_val 255370 255373) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255370 255373 ∧ ¬ p ∣ (255373 - 255370) ∧
      ∃ (hNotC : ¬ p ∣ 255373) (hNotB : ¬ p ∣ 255370),
        order_of_C_B_inv_mod_p2 255373 255370 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255370 255373 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_255370_255373
def row_255706_255709 :
    HasPrimeWithExpOne (S_val 255706 255709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 255706 255709 ∧ ¬ p ∣ (255709 - 255706) ∧
      ∃ (hNotC : ¬ p ∣ 255709) (hNotB : ¬ p ∣ 255706),
        order_of_C_B_inv_mod_p2 255709 255706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 255706 255709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_255706_255709
def row_256042_256045 :
    HasPrimeWithExpOne (S_val 256042 256045) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256042 256045 ∧ ¬ p ∣ (256045 - 256042) ∧
      ∃ (hNotC : ¬ p ∣ 256045) (hNotB : ¬ p ∣ 256042),
        order_of_C_B_inv_mod_p2 256045 256042 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256042 256045 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_256042_256045
def row_256376_256379 :
    HasPrimeWithExpOne (S_val 256376 256379) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256376 256379 ∧ ¬ p ∣ (256379 - 256376) ∧
      ∃ (hNotC : ¬ p ∣ 256379) (hNotB : ¬ p ∣ 256376),
        order_of_C_B_inv_mod_p2 256379 256376 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256376 256379 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_256376_256379
def row_256711_256714 :
    HasPrimeWithExpOne (S_val 256711 256714) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 256711 256714 ∧ ¬ p ∣ (256714 - 256711) ∧
      ∃ (hNotC : ¬ p ∣ 256714) (hNotB : ¬ p ∣ 256711),
        order_of_C_B_inv_mod_p2 256714 256711 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 256711 256714 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_256711_256714
def row_257049_257052 :
    HasPrimeWithExpOne (S_val 257049 257052) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257049 257052 ∧ ¬ p ∣ (257052 - 257049) ∧
      ∃ (hNotC : ¬ p ∣ 257052) (hNotB : ¬ p ∣ 257049),
        order_of_C_B_inv_mod_p2 257052 257049 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257049 257052 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_257049_257052
def row_257381_257384 :
    HasPrimeWithExpOne (S_val 257381 257384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257381 257384 ∧ ¬ p ∣ (257384 - 257381) ∧
      ∃ (hNotC : ¬ p ∣ 257384) (hNotB : ¬ p ∣ 257381),
        order_of_C_B_inv_mod_p2 257384 257381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257381 257384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_257381_257384
def row_257718_257721 :
    HasPrimeWithExpOne (S_val 257718 257721) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 257718 257721 ∧ ¬ p ∣ (257721 - 257718) ∧
      ∃ (hNotC : ¬ p ∣ 257721) (hNotB : ¬ p ∣ 257718),
        order_of_C_B_inv_mod_p2 257721 257718 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 257718 257721 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_257718_257721
def row_258055_258058 :
    HasPrimeWithExpOne (S_val 258055 258058) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258055 258058 ∧ ¬ p ∣ (258058 - 258055) ∧
      ∃ (hNotC : ¬ p ∣ 258058) (hNotB : ¬ p ∣ 258055),
        order_of_C_B_inv_mod_p2 258058 258055 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258055 258058 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_258055_258058
def row_258390_258393 :
    HasPrimeWithExpOne (S_val 258390 258393) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258390 258393 ∧ ¬ p ∣ (258393 - 258390) ∧
      ∃ (hNotC : ¬ p ∣ 258393) (hNotB : ¬ p ∣ 258390),
        order_of_C_B_inv_mod_p2 258393 258390 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258390 258393 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_258390_258393
def row_258725_258728 :
    HasPrimeWithExpOne (S_val 258725 258728) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 258725 258728 ∧ ¬ p ∣ (258728 - 258725) ∧
      ∃ (hNotC : ¬ p ∣ 258728) (hNotB : ¬ p ∣ 258725),
        order_of_C_B_inv_mod_p2 258728 258725 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 258725 258728 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_258725_258728
def row_259060_259063 :
    HasPrimeWithExpOne (S_val 259060 259063) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259060 259063 ∧ ¬ p ∣ (259063 - 259060) ∧
      ∃ (hNotC : ¬ p ∣ 259063) (hNotB : ¬ p ∣ 259060),
        order_of_C_B_inv_mod_p2 259063 259060 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259060 259063 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_259060_259063
def row_259397_259400 :
    HasPrimeWithExpOne (S_val 259397 259400) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259397 259400 ∧ ¬ p ∣ (259400 - 259397) ∧
      ∃ (hNotC : ¬ p ∣ 259400) (hNotB : ¬ p ∣ 259397),
        order_of_C_B_inv_mod_p2 259400 259397 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259397 259400 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_259397_259400
def row_259731_259734 :
    HasPrimeWithExpOne (S_val 259731 259734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 259731 259734 ∧ ¬ p ∣ (259734 - 259731) ∧
      ∃ (hNotC : ¬ p ∣ 259734) (hNotB : ¬ p ∣ 259731),
        order_of_C_B_inv_mod_p2 259734 259731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 259731 259734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_259731_259734
def row_260067_260070 :
    HasPrimeWithExpOne (S_val 260067 260070) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260067 260070 ∧ ¬ p ∣ (260070 - 260067) ∧
      ∃ (hNotC : ¬ p ∣ 260070) (hNotB : ¬ p ∣ 260067),
        order_of_C_B_inv_mod_p2 260070 260067 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260067 260070 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_260067_260070
def row_260402_260405 :
    HasPrimeWithExpOne (S_val 260402 260405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260402 260405 ∧ ¬ p ∣ (260405 - 260402) ∧
      ∃ (hNotC : ¬ p ∣ 260405) (hNotB : ¬ p ∣ 260402),
        order_of_C_B_inv_mod_p2 260405 260402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260402 260405 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_260402_260405
def row_260739_260742 :
    HasPrimeWithExpOne (S_val 260739 260742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 260739 260742 ∧ ¬ p ∣ (260742 - 260739) ∧
      ∃ (hNotC : ¬ p ∣ 260742) (hNotB : ¬ p ∣ 260739),
        order_of_C_B_inv_mod_p2 260742 260739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 260739 260742 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_260739_260742
def row_261074_261077 :
    HasPrimeWithExpOne (S_val 261074 261077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261074 261077 ∧ ¬ p ∣ (261077 - 261074) ∧
      ∃ (hNotC : ¬ p ∣ 261077) (hNotB : ¬ p ∣ 261074),
        order_of_C_B_inv_mod_p2 261077 261074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261074 261077 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_261074_261077
def row_261409_261412 :
    HasPrimeWithExpOne (S_val 261409 261412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261409 261412 ∧ ¬ p ∣ (261412 - 261409) ∧
      ∃ (hNotC : ¬ p ∣ 261412) (hNotB : ¬ p ∣ 261409),
        order_of_C_B_inv_mod_p2 261412 261409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261409 261412 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_261409_261412
def row_261745_261748 :
    HasPrimeWithExpOne (S_val 261745 261748) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 261745 261748 ∧ ¬ p ∣ (261748 - 261745) ∧
      ∃ (hNotC : ¬ p ∣ 261748) (hNotB : ¬ p ∣ 261745),
        order_of_C_B_inv_mod_p2 261748 261745 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 261745 261748 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_261745_261748
def row_262078_262081 :
    HasPrimeWithExpOne (S_val 262078 262081) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262078 262081 ∧ ¬ p ∣ (262081 - 262078) ∧
      ∃ (hNotC : ¬ p ∣ 262081) (hNotB : ¬ p ∣ 262078),
        order_of_C_B_inv_mod_p2 262081 262078 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262078 262081 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_262078_262081
def row_262416_262419 :
    HasPrimeWithExpOne (S_val 262416 262419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262416 262419 ∧ ¬ p ∣ (262419 - 262416) ∧
      ∃ (hNotC : ¬ p ∣ 262419) (hNotB : ¬ p ∣ 262416),
        order_of_C_B_inv_mod_p2 262419 262416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262416 262419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_262416_262419
def row_262752_262755 :
    HasPrimeWithExpOne (S_val 262752 262755) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 262752 262755 ∧ ¬ p ∣ (262755 - 262752) ∧
      ∃ (hNotC : ¬ p ∣ 262755) (hNotB : ¬ p ∣ 262752),
        order_of_C_B_inv_mod_p2 262755 262752 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 262752 262755 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_262752_262755
def row_263088_263091 :
    HasPrimeWithExpOne (S_val 263088 263091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263088 263091 ∧ ¬ p ∣ (263091 - 263088) ∧
      ∃ (hNotC : ¬ p ∣ 263091) (hNotB : ¬ p ∣ 263088),
        order_of_C_B_inv_mod_p2 263091 263088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263088 263091 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_263088_263091
def row_263423_263426 :
    HasPrimeWithExpOne (S_val 263423 263426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263423 263426 ∧ ¬ p ∣ (263426 - 263423) ∧
      ∃ (hNotC : ¬ p ∣ 263426) (hNotB : ¬ p ∣ 263423),
        order_of_C_B_inv_mod_p2 263426 263423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263423 263426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_263423_263426
def row_263758_263761 :
    HasPrimeWithExpOne (S_val 263758 263761) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 263758 263761 ∧ ¬ p ∣ (263761 - 263758) ∧
      ∃ (hNotC : ¬ p ∣ 263761) (hNotB : ¬ p ∣ 263758),
        order_of_C_B_inv_mod_p2 263761 263758 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 263758 263761 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_263758_263761
def row_264095_264098 :
    HasPrimeWithExpOne (S_val 264095 264098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264095 264098 ∧ ¬ p ∣ (264098 - 264095) ∧
      ∃ (hNotC : ¬ p ∣ 264098) (hNotB : ¬ p ∣ 264095),
        order_of_C_B_inv_mod_p2 264098 264095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264095 264098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_264095_264098
def row_264430_264433 :
    HasPrimeWithExpOne (S_val 264430 264433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264430 264433 ∧ ¬ p ∣ (264433 - 264430) ∧
      ∃ (hNotC : ¬ p ∣ 264433) (hNotB : ¬ p ∣ 264430),
        order_of_C_B_inv_mod_p2 264433 264430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264430 264433 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_264430_264433
def row_264765_264768 :
    HasPrimeWithExpOne (S_val 264765 264768) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 264765 264768 ∧ ¬ p ∣ (264768 - 264765) ∧
      ∃ (hNotC : ¬ p ∣ 264768) (hNotB : ¬ p ∣ 264765),
        order_of_C_B_inv_mod_p2 264768 264765 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 264765 264768 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_264765_264768
def row_265100_265103 :
    HasPrimeWithExpOne (S_val 265100 265103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265100 265103 ∧ ¬ p ∣ (265103 - 265100) ∧
      ∃ (hNotC : ¬ p ∣ 265103) (hNotB : ¬ p ∣ 265100),
        order_of_C_B_inv_mod_p2 265103 265100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265100 265103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_265100_265103
def row_265437_265440 :
    HasPrimeWithExpOne (S_val 265437 265440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265437 265440 ∧ ¬ p ∣ (265440 - 265437) ∧
      ∃ (hNotC : ¬ p ∣ 265440) (hNotB : ¬ p ∣ 265437),
        order_of_C_B_inv_mod_p2 265440 265437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265437 265440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_265437_265440
def row_265774_265777 :
    HasPrimeWithExpOne (S_val 265774 265777) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 265774 265777 ∧ ¬ p ∣ (265777 - 265774) ∧
      ∃ (hNotC : ¬ p ∣ 265777) (hNotB : ¬ p ∣ 265774),
        order_of_C_B_inv_mod_p2 265777 265774 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 265774 265777 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_265774_265777
def row_266106_266109 :
    HasPrimeWithExpOne (S_val 266106 266109) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266106 266109 ∧ ¬ p ∣ (266109 - 266106) ∧
      ∃ (hNotC : ¬ p ∣ 266109) (hNotB : ¬ p ∣ 266106),
        order_of_C_B_inv_mod_p2 266109 266106 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266106 266109 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_266106_266109
def row_266444_266447 :
    HasPrimeWithExpOne (S_val 266444 266447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266444 266447 ∧ ¬ p ∣ (266447 - 266444) ∧
      ∃ (hNotC : ¬ p ∣ 266447) (hNotB : ¬ p ∣ 266444),
        order_of_C_B_inv_mod_p2 266447 266444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266444 266447 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_266444_266447
def row_266776_266779 :
    HasPrimeWithExpOne (S_val 266776 266779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 266776 266779 ∧ ¬ p ∣ (266779 - 266776) ∧
      ∃ (hNotC : ¬ p ∣ 266779) (hNotB : ¬ p ∣ 266776),
        order_of_C_B_inv_mod_p2 266779 266776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 266776 266779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_266776_266779
def row_267113_267116 :
    HasPrimeWithExpOne (S_val 267113 267116) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267113 267116 ∧ ¬ p ∣ (267116 - 267113) ∧
      ∃ (hNotC : ¬ p ∣ 267116) (hNotB : ¬ p ∣ 267113),
        order_of_C_B_inv_mod_p2 267116 267113 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267113 267116 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_267113_267116
def row_267449_267452 :
    HasPrimeWithExpOne (S_val 267449 267452) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267449 267452 ∧ ¬ p ∣ (267452 - 267449) ∧
      ∃ (hNotC : ¬ p ∣ 267452) (hNotB : ¬ p ∣ 267449),
        order_of_C_B_inv_mod_p2 267452 267449 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267449 267452 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_267449_267452
def row_267784_267787 :
    HasPrimeWithExpOne (S_val 267784 267787) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 267784 267787 ∧ ¬ p ∣ (267787 - 267784) ∧
      ∃ (hNotC : ¬ p ∣ 267787) (hNotB : ¬ p ∣ 267784),
        order_of_C_B_inv_mod_p2 267787 267784 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 267784 267787 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_267784_267787
def row_268120_268123 :
    HasPrimeWithExpOne (S_val 268120 268123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268120 268123 ∧ ¬ p ∣ (268123 - 268120) ∧
      ∃ (hNotC : ¬ p ∣ 268123) (hNotB : ¬ p ∣ 268120),
        order_of_C_B_inv_mod_p2 268123 268120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268120 268123 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_268120_268123
def row_268456_268459 :
    HasPrimeWithExpOne (S_val 268456 268459) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268456 268459 ∧ ¬ p ∣ (268459 - 268456) ∧
      ∃ (hNotC : ¬ p ∣ 268459) (hNotB : ¬ p ∣ 268456),
        order_of_C_B_inv_mod_p2 268459 268456 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268456 268459 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_268456_268459
def row_268792_268795 :
    HasPrimeWithExpOne (S_val 268792 268795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 268792 268795 ∧ ¬ p ∣ (268795 - 268792) ∧
      ∃ (hNotC : ¬ p ∣ 268795) (hNotB : ¬ p ∣ 268792),
        order_of_C_B_inv_mod_p2 268795 268792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 268792 268795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_268792_268795
def row_269127_269130 :
    HasPrimeWithExpOne (S_val 269127 269130) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269127 269130 ∧ ¬ p ∣ (269130 - 269127) ∧
      ∃ (hNotC : ¬ p ∣ 269130) (hNotB : ¬ p ∣ 269127),
        order_of_C_B_inv_mod_p2 269130 269127 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269127 269130 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_269127_269130
def row_269462_269465 :
    HasPrimeWithExpOne (S_val 269462 269465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269462 269465 ∧ ¬ p ∣ (269465 - 269462) ∧
      ∃ (hNotC : ¬ p ∣ 269465) (hNotB : ¬ p ∣ 269462),
        order_of_C_B_inv_mod_p2 269465 269462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269462 269465 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_269462_269465
def row_269798_269801 :
    HasPrimeWithExpOne (S_val 269798 269801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 269798 269801 ∧ ¬ p ∣ (269801 - 269798) ∧
      ∃ (hNotC : ¬ p ∣ 269801) (hNotB : ¬ p ∣ 269798),
        order_of_C_B_inv_mod_p2 269801 269798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 269798 269801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_269798_269801
def row_270134_270137 :
    HasPrimeWithExpOne (S_val 270134 270137) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270134 270137 ∧ ¬ p ∣ (270137 - 270134) ∧
      ∃ (hNotC : ¬ p ∣ 270137) (hNotB : ¬ p ∣ 270134),
        order_of_C_B_inv_mod_p2 270137 270134 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270134 270137 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_270134_270137
def row_270470_270473 :
    HasPrimeWithExpOne (S_val 270470 270473) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270470 270473 ∧ ¬ p ∣ (270473 - 270470) ∧
      ∃ (hNotC : ¬ p ∣ 270473) (hNotB : ¬ p ∣ 270470),
        order_of_C_B_inv_mod_p2 270473 270470 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270470 270473 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_270470_270473
def row_270805_270808 :
    HasPrimeWithExpOne (S_val 270805 270808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 270805 270808 ∧ ¬ p ∣ (270808 - 270805) ∧
      ∃ (hNotC : ¬ p ∣ 270808) (hNotB : ¬ p ∣ 270805),
        order_of_C_B_inv_mod_p2 270808 270805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 270805 270808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_270805_270808
def row_271141_271144 :
    HasPrimeWithExpOne (S_val 271141 271144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271141 271144 ∧ ¬ p ∣ (271144 - 271141) ∧
      ∃ (hNotC : ¬ p ∣ 271144) (hNotB : ¬ p ∣ 271141),
        order_of_C_B_inv_mod_p2 271144 271141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271141 271144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_271141_271144
def row_271476_271479 :
    HasPrimeWithExpOne (S_val 271476 271479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271476 271479 ∧ ¬ p ∣ (271479 - 271476) ∧
      ∃ (hNotC : ¬ p ∣ 271479) (hNotB : ¬ p ∣ 271476),
        order_of_C_B_inv_mod_p2 271479 271476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271476 271479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_271476_271479
def row_271812_271815 :
    HasPrimeWithExpOne (S_val 271812 271815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 271812 271815 ∧ ¬ p ∣ (271815 - 271812) ∧
      ∃ (hNotC : ¬ p ∣ 271815) (hNotB : ¬ p ∣ 271812),
        order_of_C_B_inv_mod_p2 271815 271812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 271812 271815 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_271812_271815
def row_272147_272150 :
    HasPrimeWithExpOne (S_val 272147 272150) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272147 272150 ∧ ¬ p ∣ (272150 - 272147) ∧
      ∃ (hNotC : ¬ p ∣ 272150) (hNotB : ¬ p ∣ 272147),
        order_of_C_B_inv_mod_p2 272150 272147 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272147 272150 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_272147_272150
def row_272483_272486 :
    HasPrimeWithExpOne (S_val 272483 272486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272483 272486 ∧ ¬ p ∣ (272486 - 272483) ∧
      ∃ (hNotC : ¬ p ∣ 272486) (hNotB : ¬ p ∣ 272483),
        order_of_C_B_inv_mod_p2 272486 272483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272483 272486 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_272483_272486
def row_272821_272824 :
    HasPrimeWithExpOne (S_val 272821 272824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 272821 272824 ∧ ¬ p ∣ (272824 - 272821) ∧
      ∃ (hNotC : ¬ p ∣ 272824) (hNotB : ¬ p ∣ 272821),
        order_of_C_B_inv_mod_p2 272824 272821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 272821 272824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_272821_272824
def row_273154_273157 :
    HasPrimeWithExpOne (S_val 273154 273157) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273154 273157 ∧ ¬ p ∣ (273157 - 273154) ∧
      ∃ (hNotC : ¬ p ∣ 273157) (hNotB : ¬ p ∣ 273154),
        order_of_C_B_inv_mod_p2 273157 273154 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273154 273157 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_273154_273157
def row_273490_273493 :
    HasPrimeWithExpOne (S_val 273490 273493) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273490 273493 ∧ ¬ p ∣ (273493 - 273490) ∧
      ∃ (hNotC : ¬ p ∣ 273493) (hNotB : ¬ p ∣ 273490),
        order_of_C_B_inv_mod_p2 273493 273490 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273490 273493 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_273490_273493
def row_273826_273829 :
    HasPrimeWithExpOne (S_val 273826 273829) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 273826 273829 ∧ ¬ p ∣ (273829 - 273826) ∧
      ∃ (hNotC : ¬ p ∣ 273829) (hNotB : ¬ p ∣ 273826),
        order_of_C_B_inv_mod_p2 273829 273826 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 273826 273829 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_273826_273829
def row_274161_274164 :
    HasPrimeWithExpOne (S_val 274161 274164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274161 274164 ∧ ¬ p ∣ (274164 - 274161) ∧
      ∃ (hNotC : ¬ p ∣ 274164) (hNotB : ¬ p ∣ 274161),
        order_of_C_B_inv_mod_p2 274164 274161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274161 274164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_274161_274164
def row_274497_274500 :
    HasPrimeWithExpOne (S_val 274497 274500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274497 274500 ∧ ¬ p ∣ (274500 - 274497) ∧
      ∃ (hNotC : ¬ p ∣ 274500) (hNotB : ¬ p ∣ 274497),
        order_of_C_B_inv_mod_p2 274500 274497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274497 274500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_274497_274500
def row_274834_274837 :
    HasPrimeWithExpOne (S_val 274834 274837) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 274834 274837 ∧ ¬ p ∣ (274837 - 274834) ∧
      ∃ (hNotC : ¬ p ∣ 274837) (hNotB : ¬ p ∣ 274834),
        order_of_C_B_inv_mod_p2 274837 274834 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 274834 274837 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_274834_274837
def row_275168_275171 :
    HasPrimeWithExpOne (S_val 275168 275171) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275168 275171 ∧ ¬ p ∣ (275171 - 275168) ∧
      ∃ (hNotC : ¬ p ∣ 275171) (hNotB : ¬ p ∣ 275168),
        order_of_C_B_inv_mod_p2 275171 275168 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275168 275171 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_275168_275171
def row_275503_275506 :
    HasPrimeWithExpOne (S_val 275503 275506) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275503 275506 ∧ ¬ p ∣ (275506 - 275503) ∧
      ∃ (hNotC : ¬ p ∣ 275506) (hNotB : ¬ p ∣ 275503),
        order_of_C_B_inv_mod_p2 275506 275503 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275503 275506 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_275503_275506
def row_275840_275843 :
    HasPrimeWithExpOne (S_val 275840 275843) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 275840 275843 ∧ ¬ p ∣ (275843 - 275840) ∧
      ∃ (hNotC : ¬ p ∣ 275843) (hNotB : ¬ p ∣ 275840),
        order_of_C_B_inv_mod_p2 275843 275840 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 275840 275843 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_275840_275843
def row_276174_276177 :
    HasPrimeWithExpOne (S_val 276174 276177) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276174 276177 ∧ ¬ p ∣ (276177 - 276174) ∧
      ∃ (hNotC : ¬ p ∣ 276177) (hNotB : ¬ p ∣ 276174),
        order_of_C_B_inv_mod_p2 276177 276174 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276174 276177 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_276174_276177
def row_276510_276513 :
    HasPrimeWithExpOne (S_val 276510 276513) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276510 276513 ∧ ¬ p ∣ (276513 - 276510) ∧
      ∃ (hNotC : ¬ p ∣ 276513) (hNotB : ¬ p ∣ 276510),
        order_of_C_B_inv_mod_p2 276513 276510 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276510 276513 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_276510_276513
def row_276846_276849 :
    HasPrimeWithExpOne (S_val 276846 276849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 276846 276849 ∧ ¬ p ∣ (276849 - 276846) ∧
      ∃ (hNotC : ¬ p ∣ 276849) (hNotB : ¬ p ∣ 276846),
        order_of_C_B_inv_mod_p2 276849 276846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 276846 276849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_276846_276849
def row_277181_277184 :
    HasPrimeWithExpOne (S_val 277181 277184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277181 277184 ∧ ¬ p ∣ (277184 - 277181) ∧
      ∃ (hNotC : ¬ p ∣ 277184) (hNotB : ¬ p ∣ 277181),
        order_of_C_B_inv_mod_p2 277184 277181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277181 277184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_277181_277184
def row_277518_277521 :
    HasPrimeWithExpOne (S_val 277518 277521) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277518 277521 ∧ ¬ p ∣ (277521 - 277518) ∧
      ∃ (hNotC : ¬ p ∣ 277521) (hNotB : ¬ p ∣ 277518),
        order_of_C_B_inv_mod_p2 277521 277518 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277518 277521 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_277518_277521
def row_277854_277857 :
    HasPrimeWithExpOne (S_val 277854 277857) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 277854 277857 ∧ ¬ p ∣ (277857 - 277854) ∧
      ∃ (hNotC : ¬ p ∣ 277857) (hNotB : ¬ p ∣ 277854),
        order_of_C_B_inv_mod_p2 277857 277854 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 277854 277857 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_277854_277857
def row_278188_278191 :
    HasPrimeWithExpOne (S_val 278188 278191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278188 278191 ∧ ¬ p ∣ (278191 - 278188) ∧
      ∃ (hNotC : ¬ p ∣ 278191) (hNotB : ¬ p ∣ 278188),
        order_of_C_B_inv_mod_p2 278191 278188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278188 278191 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_278188_278191
def row_278524_278527 :
    HasPrimeWithExpOne (S_val 278524 278527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278524 278527 ∧ ¬ p ∣ (278527 - 278524) ∧
      ∃ (hNotC : ¬ p ∣ 278527) (hNotB : ¬ p ∣ 278524),
        order_of_C_B_inv_mod_p2 278527 278524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278524 278527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_278524_278527
def row_278858_278861 :
    HasPrimeWithExpOne (S_val 278858 278861) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 278858 278861 ∧ ¬ p ∣ (278861 - 278858) ∧
      ∃ (hNotC : ¬ p ∣ 278861) (hNotB : ¬ p ∣ 278858),
        order_of_C_B_inv_mod_p2 278861 278858 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 278858 278861 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_278858_278861
def row_279195_279198 :
    HasPrimeWithExpOne (S_val 279195 279198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279195 279198 ∧ ¬ p ∣ (279198 - 279195) ∧
      ∃ (hNotC : ¬ p ∣ 279198) (hNotB : ¬ p ∣ 279195),
        order_of_C_B_inv_mod_p2 279198 279195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279195 279198 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_279195_279198
def row_279530_279533 :
    HasPrimeWithExpOne (S_val 279530 279533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279530 279533 ∧ ¬ p ∣ (279533 - 279530) ∧
      ∃ (hNotC : ¬ p ∣ 279533) (hNotB : ¬ p ∣ 279530),
        order_of_C_B_inv_mod_p2 279533 279530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279530 279533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_279530_279533
def row_279865_279868 :
    HasPrimeWithExpOne (S_val 279865 279868) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 279865 279868 ∧ ¬ p ∣ (279868 - 279865) ∧
      ∃ (hNotC : ¬ p ∣ 279868) (hNotB : ¬ p ∣ 279865),
        order_of_C_B_inv_mod_p2 279868 279865 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 279865 279868 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_279865_279868
def row_280202_280205 :
    HasPrimeWithExpOne (S_val 280202 280205) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280202 280205 ∧ ¬ p ∣ (280205 - 280202) ∧
      ∃ (hNotC : ¬ p ∣ 280205) (hNotB : ¬ p ∣ 280202),
        order_of_C_B_inv_mod_p2 280205 280202 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280202 280205 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_280202_280205
def row_280538_280541 :
    HasPrimeWithExpOne (S_val 280538 280541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280538 280541 ∧ ¬ p ∣ (280541 - 280538) ∧
      ∃ (hNotC : ¬ p ∣ 280541) (hNotB : ¬ p ∣ 280538),
        order_of_C_B_inv_mod_p2 280541 280538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280538 280541 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_280538_280541
def row_280873_280876 :
    HasPrimeWithExpOne (S_val 280873 280876) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 280873 280876 ∧ ¬ p ∣ (280876 - 280873) ∧
      ∃ (hNotC : ¬ p ∣ 280876) (hNotB : ¬ p ∣ 280873),
        order_of_C_B_inv_mod_p2 280876 280873 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 280873 280876 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_280873_280876
def row_281208_281211 :
    HasPrimeWithExpOne (S_val 281208 281211) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281208 281211 ∧ ¬ p ∣ (281211 - 281208) ∧
      ∃ (hNotC : ¬ p ∣ 281211) (hNotB : ¬ p ∣ 281208),
        order_of_C_B_inv_mod_p2 281211 281208 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281208 281211 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_281208_281211
def row_281542_281545 :
    HasPrimeWithExpOne (S_val 281542 281545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281542 281545 ∧ ¬ p ∣ (281545 - 281542) ∧
      ∃ (hNotC : ¬ p ∣ 281545) (hNotB : ¬ p ∣ 281542),
        order_of_C_B_inv_mod_p2 281545 281542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281542 281545 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_281542_281545
def row_281878_281881 :
    HasPrimeWithExpOne (S_val 281878 281881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 281878 281881 ∧ ¬ p ∣ (281881 - 281878) ∧
      ∃ (hNotC : ¬ p ∣ 281881) (hNotB : ¬ p ∣ 281878),
        order_of_C_B_inv_mod_p2 281881 281878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 281878 281881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_281878_281881
def row_282213_282216 :
    HasPrimeWithExpOne (S_val 282213 282216) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282213 282216 ∧ ¬ p ∣ (282216 - 282213) ∧
      ∃ (hNotC : ¬ p ∣ 282216) (hNotB : ¬ p ∣ 282213),
        order_of_C_B_inv_mod_p2 282216 282213 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282213 282216 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_282213_282216
def row_282549_282552 :
    HasPrimeWithExpOne (S_val 282549 282552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282549 282552 ∧ ¬ p ∣ (282552 - 282549) ∧
      ∃ (hNotC : ¬ p ∣ 282552) (hNotB : ¬ p ∣ 282549),
        order_of_C_B_inv_mod_p2 282552 282549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282549 282552 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_282549_282552
def row_282884_282887 :
    HasPrimeWithExpOne (S_val 282884 282887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 282884 282887 ∧ ¬ p ∣ (282887 - 282884) ∧
      ∃ (hNotC : ¬ p ∣ 282887) (hNotB : ¬ p ∣ 282884),
        order_of_C_B_inv_mod_p2 282887 282884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 282884 282887 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_282884_282887
def row_283223_283226 :
    HasPrimeWithExpOne (S_val 283223 283226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283223 283226 ∧ ¬ p ∣ (283226 - 283223) ∧
      ∃ (hNotC : ¬ p ∣ 283226) (hNotB : ¬ p ∣ 283223),
        order_of_C_B_inv_mod_p2 283226 283223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283223 283226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_283223_283226
def row_283557_283560 :
    HasPrimeWithExpOne (S_val 283557 283560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283557 283560 ∧ ¬ p ∣ (283560 - 283557) ∧
      ∃ (hNotC : ¬ p ∣ 283560) (hNotB : ¬ p ∣ 283557),
        order_of_C_B_inv_mod_p2 283560 283557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283557 283560 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_283557_283560
def row_283889_283892 :
    HasPrimeWithExpOne (S_val 283889 283892) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 283889 283892 ∧ ¬ p ∣ (283892 - 283889) ∧
      ∃ (hNotC : ¬ p ∣ 283892) (hNotB : ¬ p ∣ 283889),
        order_of_C_B_inv_mod_p2 283892 283889 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 283889 283892 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_283889_283892
def row_284229_284232 :
    HasPrimeWithExpOne (S_val 284229 284232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284229 284232 ∧ ¬ p ∣ (284232 - 284229) ∧
      ∃ (hNotC : ¬ p ∣ 284232) (hNotB : ¬ p ∣ 284229),
        order_of_C_B_inv_mod_p2 284232 284229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284229 284232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_284229_284232
def row_284563_284566 :
    HasPrimeWithExpOne (S_val 284563 284566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284563 284566 ∧ ¬ p ∣ (284566 - 284563) ∧
      ∃ (hNotC : ¬ p ∣ 284566) (hNotB : ¬ p ∣ 284563),
        order_of_C_B_inv_mod_p2 284566 284563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284563 284566 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_284563_284566
def row_284897_284900 :
    HasPrimeWithExpOne (S_val 284897 284900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 284897 284900 ∧ ¬ p ∣ (284900 - 284897) ∧
      ∃ (hNotC : ¬ p ∣ 284900) (hNotB : ¬ p ∣ 284897),
        order_of_C_B_inv_mod_p2 284900 284897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 284897 284900 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_284897_284900
def row_285237_285240 :
    HasPrimeWithExpOne (S_val 285237 285240) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285237 285240 ∧ ¬ p ∣ (285240 - 285237) ∧
      ∃ (hNotC : ¬ p ∣ 285240) (hNotB : ¬ p ∣ 285237),
        order_of_C_B_inv_mod_p2 285240 285237 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285237 285240 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_285237_285240
def row_285570_285573 :
    HasPrimeWithExpOne (S_val 285570 285573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285570 285573 ∧ ¬ p ∣ (285573 - 285570) ∧
      ∃ (hNotC : ¬ p ∣ 285573) (hNotB : ¬ p ∣ 285570),
        order_of_C_B_inv_mod_p2 285573 285570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285570 285573 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_285570_285573
def row_285907_285910 :
    HasPrimeWithExpOne (S_val 285907 285910) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 285907 285910 ∧ ¬ p ∣ (285910 - 285907) ∧
      ∃ (hNotC : ¬ p ∣ 285910) (hNotB : ¬ p ∣ 285907),
        order_of_C_B_inv_mod_p2 285910 285907 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 285907 285910 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_285907_285910
def row_286240_286243 :
    HasPrimeWithExpOne (S_val 286240 286243) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286240 286243 ∧ ¬ p ∣ (286243 - 286240) ∧
      ∃ (hNotC : ¬ p ∣ 286243) (hNotB : ¬ p ∣ 286240),
        order_of_C_B_inv_mod_p2 286243 286240 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286240 286243 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_286240_286243
def row_286577_286580 :
    HasPrimeWithExpOne (S_val 286577 286580) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286577 286580 ∧ ¬ p ∣ (286580 - 286577) ∧
      ∃ (hNotC : ¬ p ∣ 286580) (hNotB : ¬ p ∣ 286577),
        order_of_C_B_inv_mod_p2 286580 286577 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286577 286580 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_286577_286580
def row_286912_286915 :
    HasPrimeWithExpOne (S_val 286912 286915) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 286912 286915 ∧ ¬ p ∣ (286915 - 286912) ∧
      ∃ (hNotC : ¬ p ∣ 286915) (hNotB : ¬ p ∣ 286912),
        order_of_C_B_inv_mod_p2 286915 286912 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 286912 286915 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_286912_286915
def row_287248_287251 :
    HasPrimeWithExpOne (S_val 287248 287251) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287248 287251 ∧ ¬ p ∣ (287251 - 287248) ∧
      ∃ (hNotC : ¬ p ∣ 287251) (hNotB : ¬ p ∣ 287248),
        order_of_C_B_inv_mod_p2 287251 287248 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287248 287251 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_287248_287251
def row_287584_287587 :
    HasPrimeWithExpOne (S_val 287584 287587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287584 287587 ∧ ¬ p ∣ (287587 - 287584) ∧
      ∃ (hNotC : ¬ p ∣ 287587) (hNotB : ¬ p ∣ 287584),
        order_of_C_B_inv_mod_p2 287587 287584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287584 287587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_287584_287587
def row_287918_287921 :
    HasPrimeWithExpOne (S_val 287918 287921) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 287918 287921 ∧ ¬ p ∣ (287921 - 287918) ∧
      ∃ (hNotC : ¬ p ∣ 287921) (hNotB : ¬ p ∣ 287918),
        order_of_C_B_inv_mod_p2 287921 287918 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 287918 287921 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_287918_287921
def row_288255_288258 :
    HasPrimeWithExpOne (S_val 288255 288258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288255 288258 ∧ ¬ p ∣ (288258 - 288255) ∧
      ∃ (hNotC : ¬ p ∣ 288258) (hNotB : ¬ p ∣ 288255),
        order_of_C_B_inv_mod_p2 288258 288255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288255 288258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_288255_288258
def row_288590_288593 :
    HasPrimeWithExpOne (S_val 288590 288593) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288590 288593 ∧ ¬ p ∣ (288593 - 288590) ∧
      ∃ (hNotC : ¬ p ∣ 288593) (hNotB : ¬ p ∣ 288590),
        order_of_C_B_inv_mod_p2 288593 288590 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288590 288593 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_288590_288593
def row_288926_288929 :
    HasPrimeWithExpOne (S_val 288926 288929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 288926 288929 ∧ ¬ p ∣ (288929 - 288926) ∧
      ∃ (hNotC : ¬ p ∣ 288929) (hNotB : ¬ p ∣ 288926),
        order_of_C_B_inv_mod_p2 288929 288926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 288926 288929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_288926_288929
def row_289261_289264 :
    HasPrimeWithExpOne (S_val 289261 289264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289261 289264 ∧ ¬ p ∣ (289264 - 289261) ∧
      ∃ (hNotC : ¬ p ∣ 289264) (hNotB : ¬ p ∣ 289261),
        order_of_C_B_inv_mod_p2 289264 289261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289261 289264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_289261_289264
def row_289597_289600 :
    HasPrimeWithExpOne (S_val 289597 289600) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289597 289600 ∧ ¬ p ∣ (289600 - 289597) ∧
      ∃ (hNotC : ¬ p ∣ 289600) (hNotB : ¬ p ∣ 289597),
        order_of_C_B_inv_mod_p2 289600 289597 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289597 289600 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_289597_289600
def row_289928_289931 :
    HasPrimeWithExpOne (S_val 289928 289931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 289928 289931 ∧ ¬ p ∣ (289931 - 289928) ∧
      ∃ (hNotC : ¬ p ∣ 289931) (hNotB : ¬ p ∣ 289928),
        order_of_C_B_inv_mod_p2 289931 289928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 289928 289931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_289928_289931
def row_290268_290271 :
    HasPrimeWithExpOne (S_val 290268 290271) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290268 290271 ∧ ¬ p ∣ (290271 - 290268) ∧
      ∃ (hNotC : ¬ p ∣ 290271) (hNotB : ¬ p ∣ 290268),
        order_of_C_B_inv_mod_p2 290271 290268 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290268 290271 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_290268_290271
def row_290604_290607 :
    HasPrimeWithExpOne (S_val 290604 290607) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290604 290607 ∧ ¬ p ∣ (290607 - 290604) ∧
      ∃ (hNotC : ¬ p ∣ 290607) (hNotB : ¬ p ∣ 290604),
        order_of_C_B_inv_mod_p2 290607 290604 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290604 290607 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_290604_290607
def row_290939_290942 :
    HasPrimeWithExpOne (S_val 290939 290942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 290939 290942 ∧ ¬ p ∣ (290942 - 290939) ∧
      ∃ (hNotC : ¬ p ∣ 290942) (hNotB : ¬ p ∣ 290939),
        order_of_C_B_inv_mod_p2 290942 290939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 290939 290942 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_290939_290942
def row_291275_291278 :
    HasPrimeWithExpOne (S_val 291275 291278) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291275 291278 ∧ ¬ p ∣ (291278 - 291275) ∧
      ∃ (hNotC : ¬ p ∣ 291278) (hNotB : ¬ p ∣ 291275),
        order_of_C_B_inv_mod_p2 291278 291275 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291275 291278 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_291275_291278
def row_291610_291613 :
    HasPrimeWithExpOne (S_val 291610 291613) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291610 291613 ∧ ¬ p ∣ (291613 - 291610) ∧
      ∃ (hNotC : ¬ p ∣ 291613) (hNotB : ¬ p ∣ 291610),
        order_of_C_B_inv_mod_p2 291613 291610 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291610 291613 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_291610_291613
def row_291947_291950 :
    HasPrimeWithExpOne (S_val 291947 291950) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 291947 291950 ∧ ¬ p ∣ (291950 - 291947) ∧
      ∃ (hNotC : ¬ p ∣ 291950) (hNotB : ¬ p ∣ 291947),
        order_of_C_B_inv_mod_p2 291950 291947 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 291947 291950 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_291947_291950
def row_292281_292284 :
    HasPrimeWithExpOne (S_val 292281 292284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292281 292284 ∧ ¬ p ∣ (292284 - 292281) ∧
      ∃ (hNotC : ¬ p ∣ 292284) (hNotB : ¬ p ∣ 292281),
        order_of_C_B_inv_mod_p2 292284 292281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292281 292284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_292281_292284
def row_292617_292620 :
    HasPrimeWithExpOne (S_val 292617 292620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292617 292620 ∧ ¬ p ∣ (292620 - 292617) ∧
      ∃ (hNotC : ¬ p ∣ 292620) (hNotB : ¬ p ∣ 292617),
        order_of_C_B_inv_mod_p2 292620 292617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292617 292620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_292617_292620
def row_292954_292957 :
    HasPrimeWithExpOne (S_val 292954 292957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 292954 292957 ∧ ¬ p ∣ (292957 - 292954) ∧
      ∃ (hNotC : ¬ p ∣ 292957) (hNotB : ¬ p ∣ 292954),
        order_of_C_B_inv_mod_p2 292957 292954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 292954 292957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_292954_292957
def row_293289_293292 :
    HasPrimeWithExpOne (S_val 293289 293292) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293289 293292 ∧ ¬ p ∣ (293292 - 293289) ∧
      ∃ (hNotC : ¬ p ∣ 293292) (hNotB : ¬ p ∣ 293289),
        order_of_C_B_inv_mod_p2 293292 293289 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293289 293292 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_293289_293292
def row_293624_293627 :
    HasPrimeWithExpOne (S_val 293624 293627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293624 293627 ∧ ¬ p ∣ (293627 - 293624) ∧
      ∃ (hNotC : ¬ p ∣ 293627) (hNotB : ¬ p ∣ 293624),
        order_of_C_B_inv_mod_p2 293627 293624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293624 293627 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_293624_293627
def row_293956_293959 :
    HasPrimeWithExpOne (S_val 293956 293959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 293956 293959 ∧ ¬ p ∣ (293959 - 293956) ∧
      ∃ (hNotC : ¬ p ∣ 293959) (hNotB : ¬ p ∣ 293956),
        order_of_C_B_inv_mod_p2 293959 293956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 293956 293959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_293956_293959
def row_294296_294299 :
    HasPrimeWithExpOne (S_val 294296 294299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294296 294299 ∧ ¬ p ∣ (294299 - 294296) ∧
      ∃ (hNotC : ¬ p ∣ 294299) (hNotB : ¬ p ∣ 294296),
        order_of_C_B_inv_mod_p2 294299 294296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294296 294299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_294296_294299
def row_294630_294633 :
    HasPrimeWithExpOne (S_val 294630 294633) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294630 294633 ∧ ¬ p ∣ (294633 - 294630) ∧
      ∃ (hNotC : ¬ p ∣ 294633) (hNotB : ¬ p ∣ 294630),
        order_of_C_B_inv_mod_p2 294633 294630 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294630 294633 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_294630_294633
def row_294966_294969 :
    HasPrimeWithExpOne (S_val 294966 294969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 294966 294969 ∧ ¬ p ∣ (294969 - 294966) ∧
      ∃ (hNotC : ¬ p ∣ 294969) (hNotB : ¬ p ∣ 294966),
        order_of_C_B_inv_mod_p2 294969 294966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 294966 294969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_294966_294969
def row_295303_295306 :
    HasPrimeWithExpOne (S_val 295303 295306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295303 295306 ∧ ¬ p ∣ (295306 - 295303) ∧
      ∃ (hNotC : ¬ p ∣ 295306) (hNotB : ¬ p ∣ 295303),
        order_of_C_B_inv_mod_p2 295306 295303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295303 295306 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_295303_295306
def row_295638_295641 :
    HasPrimeWithExpOne (S_val 295638 295641) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295638 295641 ∧ ¬ p ∣ (295641 - 295638) ∧
      ∃ (hNotC : ¬ p ∣ 295641) (hNotB : ¬ p ∣ 295638),
        order_of_C_B_inv_mod_p2 295641 295638 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295638 295641 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_295638_295641
def row_295974_295977 :
    HasPrimeWithExpOne (S_val 295974 295977) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 295974 295977 ∧ ¬ p ∣ (295977 - 295974) ∧
      ∃ (hNotC : ¬ p ∣ 295977) (hNotB : ¬ p ∣ 295974),
        order_of_C_B_inv_mod_p2 295977 295974 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 295974 295977 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_295974_295977
def row_296308_296311 :
    HasPrimeWithExpOne (S_val 296308 296311) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296308 296311 ∧ ¬ p ∣ (296311 - 296308) ∧
      ∃ (hNotC : ¬ p ∣ 296311) (hNotB : ¬ p ∣ 296308),
        order_of_C_B_inv_mod_p2 296311 296308 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296308 296311 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_296308_296311
def row_296644_296647 :
    HasPrimeWithExpOne (S_val 296644 296647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296644 296647 ∧ ¬ p ∣ (296647 - 296644) ∧
      ∃ (hNotC : ¬ p ∣ 296647) (hNotB : ¬ p ∣ 296644),
        order_of_C_B_inv_mod_p2 296647 296644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296644 296647 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_296644_296647
def row_296979_296982 :
    HasPrimeWithExpOne (S_val 296979 296982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 296979 296982 ∧ ¬ p ∣ (296982 - 296979) ∧
      ∃ (hNotC : ¬ p ∣ 296982) (hNotB : ¬ p ∣ 296979),
        order_of_C_B_inv_mod_p2 296982 296979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 296979 296982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_296979_296982
def row_297314_297317 :
    HasPrimeWithExpOne (S_val 297314 297317) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297314 297317 ∧ ¬ p ∣ (297317 - 297314) ∧
      ∃ (hNotC : ¬ p ∣ 297317) (hNotB : ¬ p ∣ 297314),
        order_of_C_B_inv_mod_p2 297317 297314 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297314 297317 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_297314_297317
def row_297651_297654 :
    HasPrimeWithExpOne (S_val 297651 297654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297651 297654 ∧ ¬ p ∣ (297654 - 297651) ∧
      ∃ (hNotC : ¬ p ∣ 297654) (hNotB : ¬ p ∣ 297651),
        order_of_C_B_inv_mod_p2 297654 297651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297651 297654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_297651_297654
def row_297984_297987 :
    HasPrimeWithExpOne (S_val 297984 297987) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 297984 297987 ∧ ¬ p ∣ (297987 - 297984) ∧
      ∃ (hNotC : ¬ p ∣ 297987) (hNotB : ¬ p ∣ 297984),
        order_of_C_B_inv_mod_p2 297987 297984 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 297984 297987 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_297984_297987
def row_298322_298325 :
    HasPrimeWithExpOne (S_val 298322 298325) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298322 298325 ∧ ¬ p ∣ (298325 - 298322) ∧
      ∃ (hNotC : ¬ p ∣ 298325) (hNotB : ¬ p ∣ 298322),
        order_of_C_B_inv_mod_p2 298325 298322 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298322 298325 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_298322_298325
def row_298659_298662 :
    HasPrimeWithExpOne (S_val 298659 298662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298659 298662 ∧ ¬ p ∣ (298662 - 298659) ∧
      ∃ (hNotC : ¬ p ∣ 298662) (hNotB : ¬ p ∣ 298659),
        order_of_C_B_inv_mod_p2 298662 298659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298659 298662 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_298659_298662
def row_298993_298996 :
    HasPrimeWithExpOne (S_val 298993 298996) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 298993 298996 ∧ ¬ p ∣ (298996 - 298993) ∧
      ∃ (hNotC : ¬ p ∣ 298996) (hNotB : ¬ p ∣ 298993),
        order_of_C_B_inv_mod_p2 298996 298993 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 298993 298996 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_298993_298996
def row_299328_299331 :
    HasPrimeWithExpOne (S_val 299328 299331) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299328 299331 ∧ ¬ p ∣ (299331 - 299328) ∧
      ∃ (hNotC : ¬ p ∣ 299331) (hNotB : ¬ p ∣ 299328),
        order_of_C_B_inv_mod_p2 299331 299328 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299328 299331 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_299328_299331
def row_299665_299668 :
    HasPrimeWithExpOne (S_val 299665 299668) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299665 299668 ∧ ¬ p ∣ (299668 - 299665) ∧
      ∃ (hNotC : ¬ p ∣ 299668) (hNotB : ¬ p ∣ 299665),
        order_of_C_B_inv_mod_p2 299668 299665 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299665 299668 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_299665_299668
def row_299999_300002 :
    HasPrimeWithExpOne (S_val 299999 300002) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 299999 300002 ∧ ¬ p ∣ (300002 - 299999) ∧
      ∃ (hNotC : ¬ p ∣ 300002) (hNotB : ¬ p ∣ 299999),
        order_of_C_B_inv_mod_p2 300002 299999 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 299999 300002 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_299999_300002
/-! ## Exact 299 new 300000 < B ≤ 400000 rows -/
theorem row_300003_300006 :
    HasPrimeWithExpOne (S_val 300003 300006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300003 300006 ∧ ¬ p ∣ (300006 - 300003) ∧
      ∃ (hNotC : ¬ p ∣ 300006) (hNotB : ¬ p ∣ 300003),
        order_of_C_B_inv_mod_p2 300006 300003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 300003 300006 := by
  have hlt : (300003 : Nat) < 300006 := by decide
  have hcop : ¬ 157 ∣ (300006 - 300003) := by decide
  have heq : (300006 : ZMod 157) ^ 13 = (300003 : ZMod 157) ^ 13 := by decide
  have hne : (300006 : ZMod 24649) ^ 13 ≠ (300003 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 300006 := by decide
  have hB : ¬ 157 ∣ 300003 := by decide
  have hexp :=
    has_exp_one_of_zmod 300003 300006 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 300003 300006 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 300003 300006 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      300003 300006 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      300003 300006 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_300342_300345 :
    HasPrimeWithExpOne (S_val 300342 300345) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300342 300345 ∧ ¬ p ∣ (300345 - 300342) ∧
      ∃ (hNotC : ¬ p ∣ 300345) (hNotB : ¬ p ∣ 300342),
        order_of_C_B_inv_mod_p2 300345 300342 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 300342 300345 := by
  have hlt : (300342 : Nat) < 300345 := by decide
  have hcop : ¬ 53 ∣ (300345 - 300342) := by decide
  have heq : (300345 : ZMod 53) ^ 13 = (300342 : ZMod 53) ^ 13 := by decide
  have hne : (300345 : ZMod 2809) ^ 13 ≠ (300342 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 300345 := by decide
  have hB : ¬ 53 ∣ 300342 := by decide
  have hexp :=
    has_exp_one_of_zmod 300342 300345 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 300342 300345 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 300342 300345 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      300342 300345 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      300342 300345 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_300687_300690 :
    HasPrimeWithExpOne (S_val 300687 300690) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300687 300690 ∧ ¬ p ∣ (300690 - 300687) ∧
      ∃ (hNotC : ¬ p ∣ 300690) (hNotB : ¬ p ∣ 300687),
        order_of_C_B_inv_mod_p2 300690 300687 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 300687 300690 := by
  have hlt : (300687 : Nat) < 300690 := by decide
  have hcop : ¬ 53 ∣ (300690 - 300687) := by decide
  have heq : (300690 : ZMod 53) ^ 13 = (300687 : ZMod 53) ^ 13 := by decide
  have hne : (300690 : ZMod 2809) ^ 13 ≠ (300687 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 300690 := by decide
  have hB : ¬ 53 ∣ 300687 := by decide
  have hexp :=
    has_exp_one_of_zmod 300687 300690 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 300687 300690 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 300687 300690 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      300687 300690 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      300687 300690 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_301031_301034 :
    HasPrimeWithExpOne (S_val 301031 301034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301031 301034 ∧ ¬ p ∣ (301034 - 301031) ∧
      ∃ (hNotC : ¬ p ∣ 301034) (hNotB : ¬ p ∣ 301031),
        order_of_C_B_inv_mod_p2 301034 301031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 301031 301034 := by
  have hlt : (301031 : Nat) < 301034 := by decide
  have hcop : ¬ 53 ∣ (301034 - 301031) := by decide
  have heq : (301034 : ZMod 53) ^ 13 = (301031 : ZMod 53) ^ 13 := by decide
  have hne : (301034 : ZMod 2809) ^ 13 ≠ (301031 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 301034 := by decide
  have hB : ¬ 53 ∣ 301031 := by decide
  have hexp :=
    has_exp_one_of_zmod 301031 301034 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 301031 301034 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 301031 301034 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      301031 301034 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      301031 301034 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_301359_301362 :
    HasPrimeWithExpOne (S_val 301359 301362) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301359 301362 ∧ ¬ p ∣ (301362 - 301359) ∧
      ∃ (hNotC : ¬ p ∣ 301362) (hNotB : ¬ p ∣ 301359),
        order_of_C_B_inv_mod_p2 301362 301359 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 301359 301362 := by
  have hlt : (301359 : Nat) < 301362 := by decide
  have hcop : ¬ 79 ∣ (301362 - 301359) := by decide
  have heq : (301362 : ZMod 79) ^ 13 = (301359 : ZMod 79) ^ 13 := by decide
  have hne : (301362 : ZMod 6241) ^ 13 ≠ (301359 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 301362 := by decide
  have hB : ¬ 79 ∣ 301359 := by decide
  have hexp :=
    has_exp_one_of_zmod 301359 301362 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 301359 301362 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 301359 301362 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      301359 301362 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      301359 301362 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_301713_301716 :
    HasPrimeWithExpOne (S_val 301713 301716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301713 301716 ∧ ¬ p ∣ (301716 - 301713) ∧
      ∃ (hNotC : ¬ p ∣ 301716) (hNotB : ¬ p ∣ 301713),
        order_of_C_B_inv_mod_p2 301716 301713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 301713 301716 := by
  have hlt : (301713 : Nat) < 301716 := by decide
  have hcop : ¬ 53 ∣ (301716 - 301713) := by decide
  have heq : (301716 : ZMod 53) ^ 13 = (301713 : ZMod 53) ^ 13 := by decide
  have hne : (301716 : ZMod 2809) ^ 13 ≠ (301713 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 301716 := by decide
  have hB : ¬ 53 ∣ 301713 := by decide
  have hexp :=
    has_exp_one_of_zmod 301713 301716 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 301713 301716 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 301713 301716 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      301713 301716 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      301713 301716 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_302038_302041 :
    HasPrimeWithExpOne (S_val 302038 302041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302038 302041 ∧ ¬ p ∣ (302041 - 302038) ∧
      ∃ (hNotC : ¬ p ∣ 302041) (hNotB : ¬ p ∣ 302038),
        order_of_C_B_inv_mod_p2 302041 302038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 302038 302041 := by
  have hlt : (302038 : Nat) < 302041 := by decide
  have hcop : ¬ 53 ∣ (302041 - 302038) := by decide
  have heq : (302041 : ZMod 53) ^ 13 = (302038 : ZMod 53) ^ 13 := by decide
  have hne : (302041 : ZMod 2809) ^ 13 ≠ (302038 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 302041 := by decide
  have hB : ¬ 53 ∣ 302038 := by decide
  have hexp :=
    has_exp_one_of_zmod 302038 302041 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 302038 302041 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 302038 302041 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      302038 302041 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      302038 302041 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_302404_302407 :
    HasPrimeWithExpOne (S_val 302404 302407) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302404 302407 ∧ ¬ p ∣ (302407 - 302404) ∧
      ∃ (hNotC : ¬ p ∣ 302407) (hNotB : ¬ p ∣ 302404),
        order_of_C_B_inv_mod_p2 302407 302404 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 302404 302407 := by
  have hlt : (302404 : Nat) < 302407 := by decide
  have hcop : ¬ 521 ∣ (302407 - 302404) := by decide
  have heq : (302407 : ZMod 521) ^ 13 = (302404 : ZMod 521) ^ 13 := by decide
  have hne : (302407 : ZMod 271441) ^ 13 ≠ (302404 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 302407 := by decide
  have hB : ¬ 521 ∣ 302404 := by decide
  have hexp :=
    has_exp_one_of_zmod 302404 302407 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 302404 302407 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 302404 302407 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      302404 302407 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      302404 302407 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_302731_302734 :
    HasPrimeWithExpOne (S_val 302731 302734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302731 302734 ∧ ¬ p ∣ (302734 - 302731) ∧
      ∃ (hNotC : ¬ p ∣ 302734) (hNotB : ¬ p ∣ 302731),
        order_of_C_B_inv_mod_p2 302734 302731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 302731 302734 := by
  have hlt : (302731 : Nat) < 302734 := by decide
  have hcop : ¬ 313 ∣ (302734 - 302731) := by decide
  have heq : (302734 : ZMod 313) ^ 13 = (302731 : ZMod 313) ^ 13 := by decide
  have hne : (302734 : ZMod 97969) ^ 13 ≠ (302731 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 302734 := by decide
  have hB : ¬ 313 ∣ 302731 := by decide
  have hexp :=
    has_exp_one_of_zmod 302731 302734 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 302731 302734 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 302731 302734 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      302731 302734 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      302731 302734 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_303078_303081 :
    HasPrimeWithExpOne (S_val 303078 303081) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303078 303081 ∧ ¬ p ∣ (303081 - 303078) ∧
      ∃ (hNotC : ¬ p ∣ 303081) (hNotB : ¬ p ∣ 303078),
        order_of_C_B_inv_mod_p2 303081 303078 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 303078 303081 := by
  have hlt : (303078 : Nat) < 303081 := by decide
  have hcop : ¬ 79 ∣ (303081 - 303078) := by decide
  have heq : (303081 : ZMod 79) ^ 13 = (303078 : ZMod 79) ^ 13 := by decide
  have hne : (303081 : ZMod 6241) ^ 13 ≠ (303078 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 303081 := by decide
  have hB : ¬ 79 ∣ 303078 := by decide
  have hexp :=
    has_exp_one_of_zmod 303078 303081 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 303078 303081 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 303078 303081 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      303078 303081 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      303078 303081 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_303405_303408 :
    HasPrimeWithExpOne (S_val 303405 303408) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303405 303408 ∧ ¬ p ∣ (303408 - 303405) ∧
      ∃ (hNotC : ¬ p ∣ 303408) (hNotB : ¬ p ∣ 303405),
        order_of_C_B_inv_mod_p2 303408 303405 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 303405 303408 := by
  have hlt : (303405 : Nat) < 303408 := by decide
  have hcop : ¬ 131 ∣ (303408 - 303405) := by decide
  have heq : (303408 : ZMod 131) ^ 13 = (303405 : ZMod 131) ^ 13 := by decide
  have hne : (303408 : ZMod 17161) ^ 13 ≠ (303405 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 303408 := by decide
  have hB : ¬ 131 ∣ 303405 := by decide
  have hexp :=
    has_exp_one_of_zmod 303405 303408 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 303405 303408 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 303405 303408 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      303405 303408 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      303405 303408 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_303738_303741 :
    HasPrimeWithExpOne (S_val 303738 303741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303738 303741 ∧ ¬ p ∣ (303741 - 303738) ∧
      ∃ (hNotC : ¬ p ∣ 303741) (hNotB : ¬ p ∣ 303738),
        order_of_C_B_inv_mod_p2 303741 303738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 303738 303741 := by
  have hlt : (303738 : Nat) < 303741 := by decide
  have hcop : ¬ 79 ∣ (303741 - 303738) := by decide
  have heq : (303741 : ZMod 79) ^ 13 = (303738 : ZMod 79) ^ 13 := by decide
  have hne : (303741 : ZMod 6241) ^ 13 ≠ (303738 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 303741 := by decide
  have hB : ¬ 79 ∣ 303738 := by decide
  have hexp :=
    has_exp_one_of_zmod 303738 303741 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 303738 303741 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 303738 303741 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      303738 303741 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      303738 303741 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_304053_304056 :
    HasPrimeWithExpOne (S_val 304053 304056) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304053 304056 ∧ ¬ p ∣ (304056 - 304053) ∧
      ∃ (hNotC : ¬ p ∣ 304056) (hNotB : ¬ p ∣ 304053),
        order_of_C_B_inv_mod_p2 304056 304053 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 304053 304056 := by
  have hlt : (304053 : Nat) < 304056 := by decide
  have hcop : ¬ 53 ∣ (304056 - 304053) := by decide
  have heq : (304056 : ZMod 53) ^ 13 = (304053 : ZMod 53) ^ 13 := by decide
  have hne : (304056 : ZMod 2809) ^ 13 ≠ (304053 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 304056 := by decide
  have hB : ¬ 53 ∣ 304053 := by decide
  have hexp :=
    has_exp_one_of_zmod 304053 304056 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 304053 304056 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 304053 304056 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      304053 304056 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      304053 304056 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_304385_304388 :
    HasPrimeWithExpOne (S_val 304385 304388) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304385 304388 ∧ ¬ p ∣ (304388 - 304385) ∧
      ∃ (hNotC : ¬ p ∣ 304388) (hNotB : ¬ p ∣ 304385),
        order_of_C_B_inv_mod_p2 304388 304385 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 304385 304388 := by
  have hlt : (304385 : Nat) < 304388 := by decide
  have hcop : ¬ 53 ∣ (304388 - 304385) := by decide
  have heq : (304388 : ZMod 53) ^ 13 = (304385 : ZMod 53) ^ 13 := by decide
  have hne : (304388 : ZMod 2809) ^ 13 ≠ (304385 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 304388 := by decide
  have hB : ¬ 53 ∣ 304385 := by decide
  have hexp :=
    has_exp_one_of_zmod 304385 304388 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 304385 304388 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 304385 304388 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      304385 304388 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      304385 304388 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_304737_304740 :
    HasPrimeWithExpOne (S_val 304737 304740) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304737 304740 ∧ ¬ p ∣ (304740 - 304737) ∧
      ∃ (hNotC : ¬ p ∣ 304740) (hNotB : ¬ p ∣ 304737),
        order_of_C_B_inv_mod_p2 304740 304737 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 304737 304740 := by
  have hlt : (304737 : Nat) < 304740 := by decide
  have hcop : ¬ 53 ∣ (304740 - 304737) := by decide
  have heq : (304740 : ZMod 53) ^ 13 = (304737 : ZMod 53) ^ 13 := by decide
  have hne : (304740 : ZMod 2809) ^ 13 ≠ (304737 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 304740 := by decide
  have hB : ¬ 53 ∣ 304737 := by decide
  have hexp :=
    has_exp_one_of_zmod 304737 304740 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 304737 304740 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 304737 304740 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      304737 304740 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      304737 304740 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_305077_305080 :
    HasPrimeWithExpOne (S_val 305077 305080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305077 305080 ∧ ¬ p ∣ (305080 - 305077) ∧
      ∃ (hNotC : ¬ p ∣ 305080) (hNotB : ¬ p ∣ 305077),
        order_of_C_B_inv_mod_p2 305080 305077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 305077 305080 := by
  have hlt : (305077 : Nat) < 305080 := by decide
  have hcop : ¬ 79 ∣ (305080 - 305077) := by decide
  have heq : (305080 : ZMod 79) ^ 13 = (305077 : ZMod 79) ^ 13 := by decide
  have hne : (305080 : ZMod 6241) ^ 13 ≠ (305077 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 305080 := by decide
  have hB : ¬ 79 ∣ 305077 := by decide
  have hexp :=
    has_exp_one_of_zmod 305077 305080 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 305077 305080 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 305077 305080 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      305077 305080 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      305077 305080 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_305429_305432 :
    HasPrimeWithExpOne (S_val 305429 305432) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305429 305432 ∧ ¬ p ∣ (305432 - 305429) ∧
      ∃ (hNotC : ¬ p ∣ 305432) (hNotB : ¬ p ∣ 305429),
        order_of_C_B_inv_mod_p2 305432 305429 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 305429 305432 := by
  have hlt : (305429 : Nat) < 305432 := by decide
  have hcop : ¬ 131 ∣ (305432 - 305429) := by decide
  have heq : (305432 : ZMod 131) ^ 13 = (305429 : ZMod 131) ^ 13 := by decide
  have hne : (305432 : ZMod 17161) ^ 13 ≠ (305429 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 305432 := by decide
  have hB : ¬ 131 ∣ 305429 := by decide
  have hexp :=
    has_exp_one_of_zmod 305429 305432 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 305429 305432 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 305429 305432 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      305429 305432 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      305429 305432 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_305775_305778 :
    HasPrimeWithExpOne (S_val 305775 305778) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305775 305778 ∧ ¬ p ∣ (305778 - 305775) ∧
      ∃ (hNotC : ¬ p ∣ 305778) (hNotB : ¬ p ∣ 305775),
        order_of_C_B_inv_mod_p2 305778 305775 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 305775 305778 := by
  have hlt : (305775 : Nat) < 305778 := by decide
  have hcop : ¬ 53 ∣ (305778 - 305775) := by decide
  have heq : (305778 : ZMod 53) ^ 13 = (305775 : ZMod 53) ^ 13 := by decide
  have hne : (305778 : ZMod 2809) ^ 13 ≠ (305775 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 305778 := by decide
  have hB : ¬ 53 ∣ 305775 := by decide
  have hexp :=
    has_exp_one_of_zmod 305775 305778 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 305775 305778 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 305775 305778 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      305775 305778 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      305775 305778 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_306110_306113 :
    HasPrimeWithExpOne (S_val 306110 306113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306110 306113 ∧ ¬ p ∣ (306113 - 306110) ∧
      ∃ (hNotC : ¬ p ∣ 306113) (hNotB : ¬ p ∣ 306110),
        order_of_C_B_inv_mod_p2 306113 306110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 306110 306113 := by
  have hlt : (306110 : Nat) < 306113 := by decide
  have hcop : ¬ 79 ∣ (306113 - 306110) := by decide
  have heq : (306113 : ZMod 79) ^ 13 = (306110 : ZMod 79) ^ 13 := by decide
  have hne : (306113 : ZMod 6241) ^ 13 ≠ (306110 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 306113 := by decide
  have hB : ¬ 79 ∣ 306110 := by decide
  have hexp :=
    has_exp_one_of_zmod 306110 306113 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 306110 306113 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 306110 306113 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      306110 306113 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      306110 306113 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_306440_306443 :
    HasPrimeWithExpOne (S_val 306440 306443) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306440 306443 ∧ ¬ p ∣ (306443 - 306440) ∧
      ∃ (hNotC : ¬ p ∣ 306443) (hNotB : ¬ p ∣ 306440),
        order_of_C_B_inv_mod_p2 306443 306440 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 306440 306443 := by
  have hlt : (306440 : Nat) < 306443 := by decide
  have hcop : ¬ 157 ∣ (306443 - 306440) := by decide
  have heq : (306443 : ZMod 157) ^ 13 = (306440 : ZMod 157) ^ 13 := by decide
  have hne : (306443 : ZMod 24649) ^ 13 ≠ (306440 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 306443 := by decide
  have hB : ¬ 157 ∣ 306440 := by decide
  have hexp :=
    has_exp_one_of_zmod 306440 306443 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 306440 306443 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 306440 306443 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      306440 306443 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      306440 306443 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_306757_306760 :
    HasPrimeWithExpOne (S_val 306757 306760) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306757 306760 ∧ ¬ p ∣ (306760 - 306757) ∧
      ∃ (hNotC : ¬ p ∣ 306760) (hNotB : ¬ p ∣ 306757),
        order_of_C_B_inv_mod_p2 306760 306757 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 306757 306760 := by
  have hlt : (306757 : Nat) < 306760 := by decide
  have hcop : ¬ 53 ∣ (306760 - 306757) := by decide
  have heq : (306760 : ZMod 53) ^ 13 = (306757 : ZMod 53) ^ 13 := by decide
  have hne : (306760 : ZMod 2809) ^ 13 ≠ (306757 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 306760 := by decide
  have hB : ¬ 53 ∣ 306757 := by decide
  have hexp :=
    has_exp_one_of_zmod 306757 306760 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 306757 306760 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 306757 306760 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      306757 306760 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      306757 306760 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_307096_307099 :
    HasPrimeWithExpOne (S_val 307096 307099) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307096 307099 ∧ ¬ p ∣ (307099 - 307096) ∧
      ∃ (hNotC : ¬ p ∣ 307099) (hNotB : ¬ p ∣ 307096),
        order_of_C_B_inv_mod_p2 307099 307096 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 307096 307099 := by
  have hlt : (307096 : Nat) < 307099 := by decide
  have hcop : ¬ 79 ∣ (307099 - 307096) := by decide
  have heq : (307099 : ZMod 79) ^ 13 = (307096 : ZMod 79) ^ 13 := by decide
  have hne : (307099 : ZMod 6241) ^ 13 ≠ (307096 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 307099 := by decide
  have hB : ¬ 79 ∣ 307096 := by decide
  have hexp :=
    has_exp_one_of_zmod 307096 307099 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 307096 307099 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 307096 307099 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      307096 307099 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      307096 307099 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_307412_307415 :
    HasPrimeWithExpOne (S_val 307412 307415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307412 307415 ∧ ¬ p ∣ (307415 - 307412) ∧
      ∃ (hNotC : ¬ p ∣ 307415) (hNotB : ¬ p ∣ 307412),
        order_of_C_B_inv_mod_p2 307415 307412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 307412 307415 := by
  have hlt : (307412 : Nat) < 307415 := by decide
  have hcop : ¬ 79 ∣ (307415 - 307412) := by decide
  have heq : (307415 : ZMod 79) ^ 13 = (307412 : ZMod 79) ^ 13 := by decide
  have hne : (307415 : ZMod 6241) ^ 13 ≠ (307412 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 307415 := by decide
  have hB : ¬ 79 ∣ 307412 := by decide
  have hexp :=
    has_exp_one_of_zmod 307412 307415 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 307412 307415 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 307412 307415 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      307412 307415 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      307412 307415 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_307747_307750 :
    HasPrimeWithExpOne (S_val 307747 307750) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307747 307750 ∧ ¬ p ∣ (307750 - 307747) ∧
      ∃ (hNotC : ¬ p ∣ 307750) (hNotB : ¬ p ∣ 307747),
        order_of_C_B_inv_mod_p2 307750 307747 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 307747 307750 := by
  have hlt : (307747 : Nat) < 307750 := by decide
  have hcop : ¬ 79 ∣ (307750 - 307747) := by decide
  have heq : (307750 : ZMod 79) ^ 13 = (307747 : ZMod 79) ^ 13 := by decide
  have hne : (307750 : ZMod 6241) ^ 13 ≠ (307747 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 307750 := by decide
  have hB : ¬ 79 ∣ 307747 := by decide
  have hexp :=
    has_exp_one_of_zmod 307747 307750 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 307747 307750 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 307747 307750 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      307747 307750 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      307747 307750 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_308066_308069 :
    HasPrimeWithExpOne (S_val 308066 308069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308066 308069 ∧ ¬ p ∣ (308069 - 308066) ∧
      ∃ (hNotC : ¬ p ∣ 308069) (hNotB : ¬ p ∣ 308066),
        order_of_C_B_inv_mod_p2 308069 308066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 308066 308069 := by
  have hlt : (308066 : Nat) < 308069 := by decide
  have hcop : ¬ 131 ∣ (308069 - 308066) := by decide
  have heq : (308069 : ZMod 131) ^ 13 = (308066 : ZMod 131) ^ 13 := by decide
  have hne : (308069 : ZMod 17161) ^ 13 ≠ (308066 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 308069 := by decide
  have hB : ¬ 131 ∣ 308066 := by decide
  have hexp :=
    has_exp_one_of_zmod 308066 308069 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 308066 308069 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 308066 308069 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      308066 308069 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      308066 308069 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_308394_308397 :
    HasPrimeWithExpOne (S_val 308394 308397) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308394 308397 ∧ ¬ p ∣ (308397 - 308394) ∧
      ∃ (hNotC : ¬ p ∣ 308397) (hNotB : ¬ p ∣ 308394),
        order_of_C_B_inv_mod_p2 308397 308394 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 308394 308397 := by
  have hlt : (308394 : Nat) < 308397 := by decide
  have hcop : ¬ 53 ∣ (308397 - 308394) := by decide
  have heq : (308397 : ZMod 53) ^ 13 = (308394 : ZMod 53) ^ 13 := by decide
  have hne : (308397 : ZMod 2809) ^ 13 ≠ (308394 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 308397 := by decide
  have hB : ¬ 53 ∣ 308394 := by decide
  have hexp :=
    has_exp_one_of_zmod 308394 308397 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 308394 308397 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 308394 308397 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      308394 308397 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      308394 308397 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_308743_308746 :
    HasPrimeWithExpOne (S_val 308743 308746) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308743 308746 ∧ ¬ p ∣ (308746 - 308743) ∧
      ∃ (hNotC : ¬ p ∣ 308746) (hNotB : ¬ p ∣ 308743),
        order_of_C_B_inv_mod_p2 308746 308743 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 308743 308746 := by
  have hlt : (308743 : Nat) < 308746 := by decide
  have hcop : ¬ 53 ∣ (308746 - 308743) := by decide
  have heq : (308746 : ZMod 53) ^ 13 = (308743 : ZMod 53) ^ 13 := by decide
  have hne : (308746 : ZMod 2809) ^ 13 ≠ (308743 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 308746 := by decide
  have hB : ¬ 53 ∣ 308743 := by decide
  have hexp :=
    has_exp_one_of_zmod 308743 308746 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 308743 308746 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 308743 308746 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      308743 308746 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      308743 308746 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_309087_309090 :
    HasPrimeWithExpOne (S_val 309087 309090) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309087 309090 ∧ ¬ p ∣ (309090 - 309087) ∧
      ∃ (hNotC : ¬ p ∣ 309090) (hNotB : ¬ p ∣ 309087),
        order_of_C_B_inv_mod_p2 309090 309087 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 309087 309090 := by
  have hlt : (309087 : Nat) < 309090 := by decide
  have hcop : ¬ 53 ∣ (309090 - 309087) := by decide
  have heq : (309090 : ZMod 53) ^ 13 = (309087 : ZMod 53) ^ 13 := by decide
  have hne : (309090 : ZMod 2809) ^ 13 ≠ (309087 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 309090 := by decide
  have hB : ¬ 53 ∣ 309087 := by decide
  have hexp :=
    has_exp_one_of_zmod 309087 309090 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 309087 309090 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 309087 309090 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      309087 309090 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      309087 309090 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_309428_309431 :
    HasPrimeWithExpOne (S_val 309428 309431) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309428 309431 ∧ ¬ p ∣ (309431 - 309428) ∧
      ∃ (hNotC : ¬ p ∣ 309431) (hNotB : ¬ p ∣ 309428),
        order_of_C_B_inv_mod_p2 309431 309428 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 309428 309431 := by
  have hlt : (309428 : Nat) < 309431 := by decide
  have hcop : ¬ 79 ∣ (309431 - 309428) := by decide
  have heq : (309431 : ZMod 79) ^ 13 = (309428 : ZMod 79) ^ 13 := by decide
  have hne : (309431 : ZMod 6241) ^ 13 ≠ (309428 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 309431 := by decide
  have hB : ¬ 79 ∣ 309428 := by decide
  have hexp :=
    has_exp_one_of_zmod 309428 309431 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 309428 309431 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 309428 309431 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      309428 309431 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      309428 309431 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_309776_309779 :
    HasPrimeWithExpOne (S_val 309776 309779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309776 309779 ∧ ¬ p ∣ (309779 - 309776) ∧
      ∃ (hNotC : ¬ p ∣ 309779) (hNotB : ¬ p ∣ 309776),
        order_of_C_B_inv_mod_p2 309779 309776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 309776 309779 := by
  have hlt : (309776 : Nat) < 309779 := by decide
  have hcop : ¬ 53 ∣ (309779 - 309776) := by decide
  have heq : (309779 : ZMod 53) ^ 13 = (309776 : ZMod 53) ^ 13 := by decide
  have hne : (309779 : ZMod 2809) ^ 13 ≠ (309776 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 309779 := by decide
  have hB : ¬ 53 ∣ 309776 := by decide
  have hexp :=
    has_exp_one_of_zmod 309776 309779 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 309776 309779 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 309776 309779 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      309776 309779 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      309776 309779 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_310132_310135 :
    HasPrimeWithExpOne (S_val 310132 310135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310132 310135 ∧ ¬ p ∣ (310135 - 310132) ∧
      ∃ (hNotC : ¬ p ∣ 310135) (hNotB : ¬ p ∣ 310132),
        order_of_C_B_inv_mod_p2 310135 310132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 310132 310135 := by
  have hlt : (310132 : Nat) < 310135 := by decide
  have hcop : ¬ 131 ∣ (310135 - 310132) := by decide
  have heq : (310135 : ZMod 131) ^ 13 = (310132 : ZMod 131) ^ 13 := by decide
  have hne : (310135 : ZMod 17161) ^ 13 ≠ (310132 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 310135 := by decide
  have hB : ¬ 131 ∣ 310132 := by decide
  have hexp :=
    has_exp_one_of_zmod 310132 310135 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 310132 310135 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 310132 310135 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      310132 310135 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      310132 310135 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_310460_310463 :
    HasPrimeWithExpOne (S_val 310460 310463) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310460 310463 ∧ ¬ p ∣ (310463 - 310460) ∧
      ∃ (hNotC : ¬ p ∣ 310463) (hNotB : ¬ p ∣ 310460),
        order_of_C_B_inv_mod_p2 310463 310460 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 310460 310463 := by
  have hlt : (310460 : Nat) < 310463 := by decide
  have hcop : ¬ 313 ∣ (310463 - 310460) := by decide
  have heq : (310463 : ZMod 313) ^ 13 = (310460 : ZMod 313) ^ 13 := by decide
  have hne : (310463 : ZMod 97969) ^ 13 ≠ (310460 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 310463 := by decide
  have hB : ¬ 313 ∣ 310460 := by decide
  have hexp :=
    has_exp_one_of_zmod 310460 310463 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 310460 310463 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 310460 310463 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      310460 310463 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      310460 310463 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_310785_310788 :
    HasPrimeWithExpOne (S_val 310785 310788) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310785 310788 ∧ ¬ p ∣ (310788 - 310785) ∧
      ∃ (hNotC : ¬ p ∣ 310788) (hNotB : ¬ p ∣ 310785),
        order_of_C_B_inv_mod_p2 310788 310785 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 310785 310788 := by
  have hlt : (310785 : Nat) < 310788 := by decide
  have hcop : ¬ 53 ∣ (310788 - 310785) := by decide
  have heq : (310788 : ZMod 53) ^ 13 = (310785 : ZMod 53) ^ 13 := by decide
  have hne : (310788 : ZMod 2809) ^ 13 ≠ (310785 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 310788 := by decide
  have hB : ¬ 53 ∣ 310785 := by decide
  have hexp :=
    has_exp_one_of_zmod 310785 310788 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 310785 310788 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 310785 310788 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      310785 310788 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      310785 310788 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_311125_311128 :
    HasPrimeWithExpOne (S_val 311125 311128) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311125 311128 ∧ ¬ p ∣ (311128 - 311125) ∧
      ∃ (hNotC : ¬ p ∣ 311128) (hNotB : ¬ p ∣ 311125),
        order_of_C_B_inv_mod_p2 311128 311125 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 311125 311128 := by
  have hlt : (311125 : Nat) < 311128 := by decide
  have hcop : ¬ 79 ∣ (311128 - 311125) := by decide
  have heq : (311128 : ZMod 79) ^ 13 = (311125 : ZMod 79) ^ 13 := by decide
  have hne : (311128 : ZMod 6241) ^ 13 ≠ (311125 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 311128 := by decide
  have hB : ¬ 79 ∣ 311125 := by decide
  have hexp :=
    has_exp_one_of_zmod 311125 311128 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 311125 311128 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 311125 311128 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      311125 311128 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      311125 311128 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_311468_311471 :
    HasPrimeWithExpOne (S_val 311468 311471) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311468 311471 ∧ ¬ p ∣ (311471 - 311468) ∧
      ∃ (hNotC : ¬ p ∣ 311471) (hNotB : ¬ p ∣ 311468),
        order_of_C_B_inv_mod_p2 311471 311468 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 311468 311471 := by
  have hlt : (311468 : Nat) < 311471 := by decide
  have hcop : ¬ 53 ∣ (311471 - 311468) := by decide
  have heq : (311471 : ZMod 53) ^ 13 = (311468 : ZMod 53) ^ 13 := by decide
  have hne : (311471 : ZMod 2809) ^ 13 ≠ (311468 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 311471 := by decide
  have hB : ¬ 53 ∣ 311468 := by decide
  have hexp :=
    has_exp_one_of_zmod 311468 311471 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 311468 311471 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 311468 311471 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      311468 311471 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      311468 311471 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_311792_311795 :
    HasPrimeWithExpOne (S_val 311792 311795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311792 311795 ∧ ¬ p ∣ (311795 - 311792) ∧
      ∃ (hNotC : ¬ p ∣ 311795) (hNotB : ¬ p ∣ 311792),
        order_of_C_B_inv_mod_p2 311795 311792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 311792 311795 := by
  have hlt : (311792 : Nat) < 311795 := by decide
  have hcop : ¬ 53 ∣ (311795 - 311792) := by decide
  have heq : (311795 : ZMod 53) ^ 13 = (311792 : ZMod 53) ^ 13 := by decide
  have hne : (311795 : ZMod 2809) ^ 13 ≠ (311792 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 311795 := by decide
  have hB : ¬ 53 ∣ 311792 := by decide
  have hexp :=
    has_exp_one_of_zmod 311792 311795 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 311792 311795 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 311792 311795 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      311792 311795 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      311792 311795 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_312121_312124 :
    HasPrimeWithExpOne (S_val 312121 312124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312121 312124 ∧ ¬ p ∣ (312124 - 312121) ∧
      ∃ (hNotC : ¬ p ∣ 312124) (hNotB : ¬ p ∣ 312121),
        order_of_C_B_inv_mod_p2 312124 312121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 312121 312124 := by
  have hlt : (312121 : Nat) < 312124 := by decide
  have hcop : ¬ 53 ∣ (312124 - 312121) := by decide
  have heq : (312124 : ZMod 53) ^ 13 = (312121 : ZMod 53) ^ 13 := by decide
  have hne : (312124 : ZMod 2809) ^ 13 ≠ (312121 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 312124 := by decide
  have hB : ¬ 53 ∣ 312121 := by decide
  have hexp :=
    has_exp_one_of_zmod 312121 312124 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 312121 312124 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 312121 312124 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      312121 312124 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      312121 312124 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_312450_312453 :
    HasPrimeWithExpOne (S_val 312450 312453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312450 312453 ∧ ¬ p ∣ (312453 - 312450) ∧
      ∃ (hNotC : ¬ p ∣ 312453) (hNotB : ¬ p ∣ 312450),
        order_of_C_B_inv_mod_p2 312453 312450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 312450 312453 := by
  have hlt : (312450 : Nat) < 312453 := by decide
  have hcop : ¬ 521 ∣ (312453 - 312450) := by decide
  have heq : (312453 : ZMod 521) ^ 13 = (312450 : ZMod 521) ^ 13 := by decide
  have hne : (312453 : ZMod 271441) ^ 13 ≠ (312450 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 312453 := by decide
  have hB : ¬ 521 ∣ 312450 := by decide
  have hexp :=
    has_exp_one_of_zmod 312450 312453 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 312450 312453 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 312450 312453 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      312450 312453 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      312450 312453 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_312798_312801 :
    HasPrimeWithExpOne (S_val 312798 312801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312798 312801 ∧ ¬ p ∣ (312801 - 312798) ∧
      ∃ (hNotC : ¬ p ∣ 312801) (hNotB : ¬ p ∣ 312798),
        order_of_C_B_inv_mod_p2 312801 312798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 312798 312801 := by
  have hlt : (312798 : Nat) < 312801 := by decide
  have hcop : ¬ 53 ∣ (312801 - 312798) := by decide
  have heq : (312801 : ZMod 53) ^ 13 = (312798 : ZMod 53) ^ 13 := by decide
  have hne : (312801 : ZMod 2809) ^ 13 ≠ (312798 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 312801 := by decide
  have hB : ¬ 53 ∣ 312798 := by decide
  have hexp :=
    has_exp_one_of_zmod 312798 312801 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 312798 312801 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 312798 312801 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      312798 312801 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      312798 312801 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_313141_313144 :
    HasPrimeWithExpOne (S_val 313141 313144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313141 313144 ∧ ¬ p ∣ (313144 - 313141) ∧
      ∃ (hNotC : ¬ p ∣ 313144) (hNotB : ¬ p ∣ 313141),
        order_of_C_B_inv_mod_p2 313144 313141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 313141 313144 := by
  have hlt : (313141 : Nat) < 313144 := by decide
  have hcop : ¬ 79 ∣ (313144 - 313141) := by decide
  have heq : (313144 : ZMod 79) ^ 13 = (313141 : ZMod 79) ^ 13 := by decide
  have hne : (313144 : ZMod 6241) ^ 13 ≠ (313141 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 313144 := by decide
  have hB : ¬ 79 ∣ 313141 := by decide
  have hexp :=
    has_exp_one_of_zmod 313141 313144 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 313141 313144 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 313141 313144 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      313141 313144 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      313141 313144 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_313489_313492 :
    HasPrimeWithExpOne (S_val 313489 313492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313489 313492 ∧ ¬ p ∣ (313492 - 313489) ∧
      ∃ (hNotC : ¬ p ∣ 313492) (hNotB : ¬ p ∣ 313489),
        order_of_C_B_inv_mod_p2 313492 313489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 313489 313492 := by
  have hlt : (313489 : Nat) < 313492 := by decide
  have hcop : ¬ 547 ∣ (313492 - 313489) := by decide
  have heq : (313492 : ZMod 547) ^ 13 = (313489 : ZMod 547) ^ 13 := by decide
  have hne : (313492 : ZMod 299209) ^ 13 ≠ (313489 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 313492 := by decide
  have hB : ¬ 547 ∣ 313489 := by decide
  have hexp :=
    has_exp_one_of_zmod 313489 313492 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 313489 313492 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 313489 313492 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      313489 313492 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      313489 313492 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_313800_313803 :
    HasPrimeWithExpOne (S_val 313800 313803) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313800 313803 ∧ ¬ p ∣ (313803 - 313800) ∧
      ∃ (hNotC : ¬ p ∣ 313803) (hNotB : ¬ p ∣ 313800),
        order_of_C_B_inv_mod_p2 313803 313800 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 313800 313803 := by
  have hlt : (313800 : Nat) < 313803 := by decide
  have hcop : ¬ 53 ∣ (313803 - 313800) := by decide
  have heq : (313803 : ZMod 53) ^ 13 = (313800 : ZMod 53) ^ 13 := by decide
  have hne : (313803 : ZMod 2809) ^ 13 ≠ (313800 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 313803 := by decide
  have hB : ¬ 53 ∣ 313800 := by decide
  have hexp :=
    has_exp_one_of_zmod 313800 313803 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 313800 313803 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 313800 313803 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      313800 313803 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      313800 313803 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_314126_314129 :
    HasPrimeWithExpOne (S_val 314126 314129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314126 314129 ∧ ¬ p ∣ (314129 - 314126) ∧
      ∃ (hNotC : ¬ p ∣ 314129) (hNotB : ¬ p ∣ 314126),
        order_of_C_B_inv_mod_p2 314129 314126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 314126 314129 := by
  have hlt : (314126 : Nat) < 314129 := by decide
  have hcop : ¬ 131 ∣ (314129 - 314126) := by decide
  have heq : (314129 : ZMod 131) ^ 13 = (314126 : ZMod 131) ^ 13 := by decide
  have hne : (314129 : ZMod 17161) ^ 13 ≠ (314126 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 314129 := by decide
  have hB : ¬ 131 ∣ 314126 := by decide
  have hexp :=
    has_exp_one_of_zmod 314126 314129 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 314126 314129 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 314126 314129 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      314126 314129 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      314126 314129 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_314485_314488 :
    HasPrimeWithExpOne (S_val 314485 314488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314485 314488 ∧ ¬ p ∣ (314488 - 314485) ∧
      ∃ (hNotC : ¬ p ∣ 314488) (hNotB : ¬ p ∣ 314485),
        order_of_C_B_inv_mod_p2 314488 314485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 314485 314488 := by
  have hlt : (314485 : Nat) < 314488 := by decide
  have hcop : ¬ 131 ∣ (314488 - 314485) := by decide
  have heq : (314488 : ZMod 131) ^ 13 = (314485 : ZMod 131) ^ 13 := by decide
  have hne : (314488 : ZMod 17161) ^ 13 ≠ (314485 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 314488 := by decide
  have hB : ¬ 131 ∣ 314485 := by decide
  have hexp :=
    has_exp_one_of_zmod 314485 314488 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 314485 314488 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 314485 314488 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      314485 314488 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      314485 314488 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_314813_314816 :
    HasPrimeWithExpOne (S_val 314813 314816) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314813 314816 ∧ ¬ p ∣ (314816 - 314813) ∧
      ∃ (hNotC : ¬ p ∣ 314816) (hNotB : ¬ p ∣ 314813),
        order_of_C_B_inv_mod_p2 314816 314813 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 314813 314816 := by
  have hlt : (314813 : Nat) < 314816 := by decide
  have hcop : ¬ 53 ∣ (314816 - 314813) := by decide
  have heq : (314816 : ZMod 53) ^ 13 = (314813 : ZMod 53) ^ 13 := by decide
  have hne : (314816 : ZMod 2809) ^ 13 ≠ (314813 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 314816 := by decide
  have hB : ¬ 53 ∣ 314813 := by decide
  have hexp :=
    has_exp_one_of_zmod 314813 314816 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 314813 314816 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 314813 314816 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      314813 314816 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      314813 314816 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_315143_315146 :
    HasPrimeWithExpOne (S_val 315143 315146) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315143 315146 ∧ ¬ p ∣ (315146 - 315143) ∧
      ∃ (hNotC : ¬ p ∣ 315146) (hNotB : ¬ p ∣ 315143),
        order_of_C_B_inv_mod_p2 315146 315143 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 315143 315146 := by
  have hlt : (315143 : Nat) < 315146 := by decide
  have hcop : ¬ 53 ∣ (315146 - 315143) := by decide
  have heq : (315146 : ZMod 53) ^ 13 = (315143 : ZMod 53) ^ 13 := by decide
  have hne : (315146 : ZMod 2809) ^ 13 ≠ (315143 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 315146 := by decide
  have hB : ¬ 53 ∣ 315143 := by decide
  have hexp :=
    has_exp_one_of_zmod 315143 315146 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 315143 315146 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 315143 315146 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      315143 315146 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      315143 315146 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_315488_315491 :
    HasPrimeWithExpOne (S_val 315488 315491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315488 315491 ∧ ¬ p ∣ (315491 - 315488) ∧
      ∃ (hNotC : ¬ p ∣ 315491) (hNotB : ¬ p ∣ 315488),
        order_of_C_B_inv_mod_p2 315491 315488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 315488 315491 := by
  have hlt : (315488 : Nat) < 315491 := by decide
  have hcop : ¬ 53 ∣ (315491 - 315488) := by decide
  have heq : (315491 : ZMod 53) ^ 13 = (315488 : ZMod 53) ^ 13 := by decide
  have hne : (315491 : ZMod 2809) ^ 13 ≠ (315488 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 315491 := by decide
  have hB : ¬ 53 ∣ 315488 := by decide
  have hexp :=
    has_exp_one_of_zmod 315488 315491 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 315488 315491 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 315488 315491 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      315488 315491 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      315488 315491 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_315825_315828 :
    HasPrimeWithExpOne (S_val 315825 315828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315825 315828 ∧ ¬ p ∣ (315828 - 315825) ∧
      ∃ (hNotC : ¬ p ∣ 315828) (hNotB : ¬ p ∣ 315825),
        order_of_C_B_inv_mod_p2 315828 315825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 315825 315828 := by
  have hlt : (315825 : Nat) < 315828 := by decide
  have hcop : ¬ 79 ∣ (315828 - 315825) := by decide
  have heq : (315828 : ZMod 79) ^ 13 = (315825 : ZMod 79) ^ 13 := by decide
  have hne : (315828 : ZMod 6241) ^ 13 ≠ (315825 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 315828 := by decide
  have hB : ¬ 79 ∣ 315825 := by decide
  have hexp :=
    has_exp_one_of_zmod 315825 315828 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 315825 315828 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 315825 315828 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      315825 315828 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      315825 315828 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_316157_316160 :
    HasPrimeWithExpOne (S_val 316157 316160) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316157 316160 ∧ ¬ p ∣ (316160 - 316157) ∧
      ∃ (hNotC : ¬ p ∣ 316160) (hNotB : ¬ p ∣ 316157),
        order_of_C_B_inv_mod_p2 316160 316157 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316157 316160 := by
  have hlt : (316157 : Nat) < 316160 := by decide
  have hcop : ¬ 131 ∣ (316160 - 316157) := by decide
  have heq : (316160 : ZMod 131) ^ 13 = (316157 : ZMod 131) ^ 13 := by decide
  have hne : (316160 : ZMod 17161) ^ 13 ≠ (316157 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 316160 := by decide
  have hB : ¬ 131 ∣ 316157 := by decide
  have hexp :=
    has_exp_one_of_zmod 316157 316160 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 316157 316160 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 316157 316160 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      316157 316160 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      316157 316160 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_316497_316500 :
    HasPrimeWithExpOne (S_val 316497 316500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316497 316500 ∧ ¬ p ∣ (316500 - 316497) ∧
      ∃ (hNotC : ¬ p ∣ 316500) (hNotB : ¬ p ∣ 316497),
        order_of_C_B_inv_mod_p2 316500 316497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316497 316500 := by
  have hlt : (316497 : Nat) < 316500 := by decide
  have hcop : ¬ 79 ∣ (316500 - 316497) := by decide
  have heq : (316500 : ZMod 79) ^ 13 = (316497 : ZMod 79) ^ 13 := by decide
  have hne : (316500 : ZMod 6241) ^ 13 ≠ (316497 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 316500 := by decide
  have hB : ¬ 79 ∣ 316497 := by decide
  have hexp :=
    has_exp_one_of_zmod 316497 316500 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 316497 316500 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 316497 316500 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      316497 316500 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      316497 316500 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_316826_316829 :
    HasPrimeWithExpOne (S_val 316826 316829) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316826 316829 ∧ ¬ p ∣ (316829 - 316826) ∧
      ∃ (hNotC : ¬ p ∣ 316829) (hNotB : ¬ p ∣ 316826),
        order_of_C_B_inv_mod_p2 316829 316826 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 316826 316829 := by
  have hlt : (316826 : Nat) < 316829 := by decide
  have hcop : ¬ 53 ∣ (316829 - 316826) := by decide
  have heq : (316829 : ZMod 53) ^ 13 = (316826 : ZMod 53) ^ 13 := by decide
  have hne : (316829 : ZMod 2809) ^ 13 ≠ (316826 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 316829 := by decide
  have hB : ¬ 53 ∣ 316826 := by decide
  have hexp :=
    has_exp_one_of_zmod 316826 316829 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 316826 316829 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 316826 316829 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      316826 316829 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      316826 316829 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_317159_317162 :
    HasPrimeWithExpOne (S_val 317159 317162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317159 317162 ∧ ¬ p ∣ (317162 - 317159) ∧
      ∃ (hNotC : ¬ p ∣ 317162) (hNotB : ¬ p ∣ 317159),
        order_of_C_B_inv_mod_p2 317162 317159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 317159 317162 := by
  have hlt : (317159 : Nat) < 317162 := by decide
  have hcop : ¬ 79 ∣ (317162 - 317159) := by decide
  have heq : (317162 : ZMod 79) ^ 13 = (317159 : ZMod 79) ^ 13 := by decide
  have hne : (317162 : ZMod 6241) ^ 13 ≠ (317159 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 317162 := by decide
  have hB : ¬ 79 ∣ 317159 := by decide
  have hexp :=
    has_exp_one_of_zmod 317159 317162 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 317159 317162 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 317159 317162 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      317159 317162 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      317159 317162 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_317504_317507 :
    HasPrimeWithExpOne (S_val 317504 317507) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317504 317507 ∧ ¬ p ∣ (317507 - 317504) ∧
      ∃ (hNotC : ¬ p ∣ 317507) (hNotB : ¬ p ∣ 317504),
        order_of_C_B_inv_mod_p2 317507 317504 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 317504 317507 := by
  have hlt : (317504 : Nat) < 317507 := by decide
  have hcop : ¬ 157 ∣ (317507 - 317504) := by decide
  have heq : (317507 : ZMod 157) ^ 13 = (317504 : ZMod 157) ^ 13 := by decide
  have hne : (317507 : ZMod 24649) ^ 13 ≠ (317504 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 317507 := by decide
  have hB : ¬ 157 ∣ 317504 := by decide
  have hexp :=
    has_exp_one_of_zmod 317504 317507 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 317504 317507 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 317504 317507 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      317504 317507 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      317504 317507 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_317828_317831 :
    HasPrimeWithExpOne (S_val 317828 317831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317828 317831 ∧ ¬ p ∣ (317831 - 317828) ∧
      ∃ (hNotC : ¬ p ∣ 317831) (hNotB : ¬ p ∣ 317828),
        order_of_C_B_inv_mod_p2 317831 317828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 317828 317831 := by
  have hlt : (317828 : Nat) < 317831 := by decide
  have hcop : ¬ 53 ∣ (317831 - 317828) := by decide
  have heq : (317831 : ZMod 53) ^ 13 = (317828 : ZMod 53) ^ 13 := by decide
  have hne : (317831 : ZMod 2809) ^ 13 ≠ (317828 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 317831 := by decide
  have hB : ¬ 53 ∣ 317828 := by decide
  have hexp :=
    has_exp_one_of_zmod 317828 317831 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 317828 317831 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 317828 317831 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      317828 317831 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      317828 317831 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_318143_318146 :
    HasPrimeWithExpOne (S_val 318143 318146) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318143 318146 ∧ ¬ p ∣ (318146 - 318143) ∧
      ∃ (hNotC : ¬ p ∣ 318146) (hNotB : ¬ p ∣ 318143),
        order_of_C_B_inv_mod_p2 318146 318143 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 318143 318146 := by
  have hlt : (318143 : Nat) < 318146 := by decide
  have hcop : ¬ 53 ∣ (318146 - 318143) := by decide
  have heq : (318146 : ZMod 53) ^ 13 = (318143 : ZMod 53) ^ 13 := by decide
  have hne : (318146 : ZMod 2809) ^ 13 ≠ (318143 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 318146 := by decide
  have hB : ¬ 53 ∣ 318143 := by decide
  have hexp :=
    has_exp_one_of_zmod 318143 318146 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 318143 318146 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 318143 318146 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      318143 318146 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      318143 318146 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_318485_318488 :
    HasPrimeWithExpOne (S_val 318485 318488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318485 318488 ∧ ¬ p ∣ (318488 - 318485) ∧
      ∃ (hNotC : ¬ p ∣ 318488) (hNotB : ¬ p ∣ 318485),
        order_of_C_B_inv_mod_p2 318488 318485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 318485 318488 := by
  have hlt : (318485 : Nat) < 318488 := by decide
  have hcop : ¬ 443 ∣ (318488 - 318485) := by decide
  have heq : (318488 : ZMod 443) ^ 13 = (318485 : ZMod 443) ^ 13 := by decide
  have hne : (318488 : ZMod 196249) ^ 13 ≠ (318485 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 318488 := by decide
  have hB : ¬ 443 ∣ 318485 := by decide
  have hexp :=
    has_exp_one_of_zmod 318485 318488 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 318485 318488 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 318485 318488 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      318485 318488 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      318485 318488 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_318827_318830 :
    HasPrimeWithExpOne (S_val 318827 318830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318827 318830 ∧ ¬ p ∣ (318830 - 318827) ∧
      ∃ (hNotC : ¬ p ∣ 318830) (hNotB : ¬ p ∣ 318827),
        order_of_C_B_inv_mod_p2 318830 318827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 318827 318830 := by
  have hlt : (318827 : Nat) < 318830 := by decide
  have hcop : ¬ 53 ∣ (318830 - 318827) := by decide
  have heq : (318830 : ZMod 53) ^ 13 = (318827 : ZMod 53) ^ 13 := by decide
  have hne : (318830 : ZMod 2809) ^ 13 ≠ (318827 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 318830 := by decide
  have hB : ¬ 53 ∣ 318827 := by decide
  have hexp :=
    has_exp_one_of_zmod 318827 318830 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 318827 318830 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 318827 318830 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      318827 318830 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      318827 318830 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_319172_319175 :
    HasPrimeWithExpOne (S_val 319172 319175) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319172 319175 ∧ ¬ p ∣ (319175 - 319172) ∧
      ∃ (hNotC : ¬ p ∣ 319175) (hNotB : ¬ p ∣ 319172),
        order_of_C_B_inv_mod_p2 319175 319172 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 319172 319175 := by
  have hlt : (319172 : Nat) < 319175 := by decide
  have hcop : ¬ 53 ∣ (319175 - 319172) := by decide
  have heq : (319175 : ZMod 53) ^ 13 = (319172 : ZMod 53) ^ 13 := by decide
  have hne : (319175 : ZMod 2809) ^ 13 ≠ (319172 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 319175 := by decide
  have hB : ¬ 53 ∣ 319172 := by decide
  have hexp :=
    has_exp_one_of_zmod 319172 319175 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 319172 319175 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 319172 319175 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      319172 319175 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      319172 319175 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_319527_319530 :
    HasPrimeWithExpOne (S_val 319527 319530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319527 319530 ∧ ¬ p ∣ (319530 - 319527) ∧
      ∃ (hNotC : ¬ p ∣ 319530) (hNotB : ¬ p ∣ 319527),
        order_of_C_B_inv_mod_p2 319530 319527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 319527 319530 := by
  have hlt : (319527 : Nat) < 319530 := by decide
  have hcop : ¬ 313 ∣ (319530 - 319527) := by decide
  have heq : (319530 : ZMod 313) ^ 13 = (319527 : ZMod 313) ^ 13 := by decide
  have hne : (319530 : ZMod 97969) ^ 13 ≠ (319527 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 319530 := by decide
  have hB : ¬ 313 ∣ 319527 := by decide
  have hexp :=
    has_exp_one_of_zmod 319527 319530 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 319527 319530 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 319527 319530 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      319527 319530 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      319527 319530 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_319851_319854 :
    HasPrimeWithExpOne (S_val 319851 319854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319851 319854 ∧ ¬ p ∣ (319854 - 319851) ∧
      ∃ (hNotC : ¬ p ∣ 319854) (hNotB : ¬ p ∣ 319851),
        order_of_C_B_inv_mod_p2 319854 319851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 319851 319854 := by
  have hlt : (319851 : Nat) < 319854 := by decide
  have hcop : ¬ 443 ∣ (319854 - 319851) := by decide
  have heq : (319854 : ZMod 443) ^ 13 = (319851 : ZMod 443) ^ 13 := by decide
  have hne : (319854 : ZMod 196249) ^ 13 ≠ (319851 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 319854 := by decide
  have hB : ¬ 443 ∣ 319851 := by decide
  have hexp :=
    has_exp_one_of_zmod 319851 319854 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 319851 319854 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 319851 319854 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      319851 319854 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      319851 319854 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_320172_320175 :
    HasPrimeWithExpOne (S_val 320172 320175) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320172 320175 ∧ ¬ p ∣ (320175 - 320172) ∧
      ∃ (hNotC : ¬ p ∣ 320175) (hNotB : ¬ p ∣ 320172),
        order_of_C_B_inv_mod_p2 320175 320172 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 320172 320175 := by
  have hlt : (320172 : Nat) < 320175 := by decide
  have hcop : ¬ 79 ∣ (320175 - 320172) := by decide
  have heq : (320175 : ZMod 79) ^ 13 = (320172 : ZMod 79) ^ 13 := by decide
  have hne : (320175 : ZMod 6241) ^ 13 ≠ (320172 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 320175 := by decide
  have hB : ¬ 79 ∣ 320172 := by decide
  have hexp :=
    has_exp_one_of_zmod 320172 320175 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 320172 320175 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 320172 320175 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      320172 320175 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      320172 320175 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_320515_320518 :
    HasPrimeWithExpOne (S_val 320515 320518) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320515 320518 ∧ ¬ p ∣ (320518 - 320515) ∧
      ∃ (hNotC : ¬ p ∣ 320518) (hNotB : ¬ p ∣ 320515),
        order_of_C_B_inv_mod_p2 320518 320515 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 320515 320518 := by
  have hlt : (320515 : Nat) < 320518 := by decide
  have hcop : ¬ 79 ∣ (320518 - 320515) := by decide
  have heq : (320518 : ZMod 79) ^ 13 = (320515 : ZMod 79) ^ 13 := by decide
  have hne : (320518 : ZMod 6241) ^ 13 ≠ (320515 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 320518 := by decide
  have hB : ¬ 79 ∣ 320515 := by decide
  have hexp :=
    has_exp_one_of_zmod 320515 320518 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 320515 320518 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 320515 320518 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      320515 320518 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      320515 320518 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_320835_320838 :
    HasPrimeWithExpOne (S_val 320835 320838) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320835 320838 ∧ ¬ p ∣ (320838 - 320835) ∧
      ∃ (hNotC : ¬ p ∣ 320838) (hNotB : ¬ p ∣ 320835),
        order_of_C_B_inv_mod_p2 320838 320835 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 320835 320838 := by
  have hlt : (320835 : Nat) < 320838 := by decide
  have hcop : ¬ 157 ∣ (320838 - 320835) := by decide
  have heq : (320838 : ZMod 157) ^ 13 = (320835 : ZMod 157) ^ 13 := by decide
  have hne : (320838 : ZMod 24649) ^ 13 ≠ (320835 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 320838 := by decide
  have hB : ¬ 157 ∣ 320835 := by decide
  have hexp :=
    has_exp_one_of_zmod 320835 320838 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 320835 320838 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 320835 320838 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      320835 320838 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      320835 320838 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_321162_321165 :
    HasPrimeWithExpOne (S_val 321162 321165) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321162 321165 ∧ ¬ p ∣ (321165 - 321162) ∧
      ∃ (hNotC : ¬ p ∣ 321165) (hNotB : ¬ p ∣ 321162),
        order_of_C_B_inv_mod_p2 321165 321162 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 321162 321165 := by
  have hlt : (321162 : Nat) < 321165 := by decide
  have hcop : ¬ 547 ∣ (321165 - 321162) := by decide
  have heq : (321165 : ZMod 547) ^ 13 = (321162 : ZMod 547) ^ 13 := by decide
  have hne : (321165 : ZMod 299209) ^ 13 ≠ (321162 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 321165 := by decide
  have hB : ¬ 547 ∣ 321162 := by decide
  have hexp :=
    has_exp_one_of_zmod 321162 321165 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 321162 321165 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 321162 321165 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      321162 321165 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      321162 321165 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_321511_321514 :
    HasPrimeWithExpOne (S_val 321511 321514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321511 321514 ∧ ¬ p ∣ (321514 - 321511) ∧
      ∃ (hNotC : ¬ p ∣ 321514) (hNotB : ¬ p ∣ 321511),
        order_of_C_B_inv_mod_p2 321514 321511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 321511 321514 := by
  have hlt : (321511 : Nat) < 321514 := by decide
  have hcop : ¬ 53 ∣ (321514 - 321511) := by decide
  have heq : (321514 : ZMod 53) ^ 13 = (321511 : ZMod 53) ^ 13 := by decide
  have hne : (321514 : ZMod 2809) ^ 13 ≠ (321511 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 321514 := by decide
  have hB : ¬ 53 ∣ 321511 := by decide
  have hexp :=
    has_exp_one_of_zmod 321511 321514 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 321511 321514 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 321511 321514 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      321511 321514 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      321511 321514 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_321856_321859 :
    HasPrimeWithExpOne (S_val 321856 321859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321856 321859 ∧ ¬ p ∣ (321859 - 321856) ∧
      ∃ (hNotC : ¬ p ∣ 321859) (hNotB : ¬ p ∣ 321856),
        order_of_C_B_inv_mod_p2 321859 321856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 321856 321859 := by
  have hlt : (321856 : Nat) < 321859 := by decide
  have hcop : ¬ 53 ∣ (321859 - 321856) := by decide
  have heq : (321859 : ZMod 53) ^ 13 = (321856 : ZMod 53) ^ 13 := by decide
  have hne : (321859 : ZMod 2809) ^ 13 ≠ (321856 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 321859 := by decide
  have hB : ¬ 53 ∣ 321856 := by decide
  have hexp :=
    has_exp_one_of_zmod 321856 321859 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 321856 321859 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 321856 321859 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      321856 321859 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      321856 321859 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_322193_322196 :
    HasPrimeWithExpOne (S_val 322193 322196) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322193 322196 ∧ ¬ p ∣ (322196 - 322193) ∧
      ∃ (hNotC : ¬ p ∣ 322196) (hNotB : ¬ p ∣ 322193),
        order_of_C_B_inv_mod_p2 322196 322193 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 322193 322196 := by
  have hlt : (322193 : Nat) < 322196 := by decide
  have hcop : ¬ 53 ∣ (322196 - 322193) := by decide
  have heq : (322196 : ZMod 53) ^ 13 = (322193 : ZMod 53) ^ 13 := by decide
  have hne : (322196 : ZMod 2809) ^ 13 ≠ (322193 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 322196 := by decide
  have hB : ¬ 53 ∣ 322193 := by decide
  have hexp :=
    has_exp_one_of_zmod 322193 322196 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 322193 322196 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 322193 322196 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      322193 322196 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      322193 322196 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_322545_322548 :
    HasPrimeWithExpOne (S_val 322545 322548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322545 322548 ∧ ¬ p ∣ (322548 - 322545) ∧
      ∃ (hNotC : ¬ p ∣ 322548) (hNotB : ¬ p ∣ 322545),
        order_of_C_B_inv_mod_p2 322548 322545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 322545 322548 := by
  have hlt : (322545 : Nat) < 322548 := by decide
  have hcop : ¬ 53 ∣ (322548 - 322545) := by decide
  have heq : (322548 : ZMod 53) ^ 13 = (322545 : ZMod 53) ^ 13 := by decide
  have hne : (322548 : ZMod 2809) ^ 13 ≠ (322545 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 322548 := by decide
  have hB : ¬ 53 ∣ 322545 := by decide
  have hexp :=
    has_exp_one_of_zmod 322545 322548 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 322545 322548 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 322545 322548 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      322545 322548 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      322545 322548 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_322881_322884 :
    HasPrimeWithExpOne (S_val 322881 322884) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322881 322884 ∧ ¬ p ∣ (322884 - 322881) ∧
      ∃ (hNotC : ¬ p ∣ 322884) (hNotB : ¬ p ∣ 322881),
        order_of_C_B_inv_mod_p2 322884 322881 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 322881 322884 := by
  have hlt : (322881 : Nat) < 322884 := by decide
  have hcop : ¬ 53 ∣ (322884 - 322881) := by decide
  have heq : (322884 : ZMod 53) ^ 13 = (322881 : ZMod 53) ^ 13 := by decide
  have hne : (322884 : ZMod 2809) ^ 13 ≠ (322881 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 322884 := by decide
  have hB : ¬ 53 ∣ 322881 := by decide
  have hexp :=
    has_exp_one_of_zmod 322881 322884 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 322881 322884 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 322881 322884 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      322881 322884 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      322881 322884 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_323233_323236 :
    HasPrimeWithExpOne (S_val 323233 323236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323233 323236 ∧ ¬ p ∣ (323236 - 323233) ∧
      ∃ (hNotC : ¬ p ∣ 323236) (hNotB : ¬ p ∣ 323233),
        order_of_C_B_inv_mod_p2 323236 323233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 323233 323236 := by
  have hlt : (323233 : Nat) < 323236 := by decide
  have hcop : ¬ 443 ∣ (323236 - 323233) := by decide
  have heq : (323236 : ZMod 443) ^ 13 = (323233 : ZMod 443) ^ 13 := by decide
  have hne : (323236 : ZMod 196249) ^ 13 ≠ (323233 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 323236 := by decide
  have hB : ¬ 443 ∣ 323233 := by decide
  have hexp :=
    has_exp_one_of_zmod 323233 323236 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 323233 323236 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 323233 323236 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      323233 323236 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      323233 323236 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_323556_323559 :
    HasPrimeWithExpOne (S_val 323556 323559) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323556 323559 ∧ ¬ p ∣ (323559 - 323556) ∧
      ∃ (hNotC : ¬ p ∣ 323559) (hNotB : ¬ p ∣ 323556),
        order_of_C_B_inv_mod_p2 323559 323556 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 323556 323559 := by
  have hlt : (323556 : Nat) < 323559 := by decide
  have hcop : ¬ 53 ∣ (323559 - 323556) := by decide
  have heq : (323559 : ZMod 53) ^ 13 = (323556 : ZMod 53) ^ 13 := by decide
  have hne : (323559 : ZMod 2809) ^ 13 ≠ (323556 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 323559 := by decide
  have hB : ¬ 53 ∣ 323556 := by decide
  have hexp :=
    has_exp_one_of_zmod 323556 323559 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 323556 323559 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 323556 323559 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      323556 323559 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      323556 323559 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_323892_323895 :
    HasPrimeWithExpOne (S_val 323892 323895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323892 323895 ∧ ¬ p ∣ (323895 - 323892) ∧
      ∃ (hNotC : ¬ p ∣ 323895) (hNotB : ¬ p ∣ 323892),
        order_of_C_B_inv_mod_p2 323895 323892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 323892 323895 := by
  have hlt : (323892 : Nat) < 323895 := by decide
  have hcop : ¬ 131 ∣ (323895 - 323892) := by decide
  have heq : (323895 : ZMod 131) ^ 13 = (323892 : ZMod 131) ^ 13 := by decide
  have hne : (323895 : ZMod 17161) ^ 13 ≠ (323892 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 323895 := by decide
  have hB : ¬ 131 ∣ 323892 := by decide
  have hexp :=
    has_exp_one_of_zmod 323892 323895 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 323892 323895 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 323892 323895 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      323892 323895 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      323892 323895 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_324222_324225 :
    HasPrimeWithExpOne (S_val 324222 324225) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324222 324225 ∧ ¬ p ∣ (324225 - 324222) ∧
      ∃ (hNotC : ¬ p ∣ 324225) (hNotB : ¬ p ∣ 324222),
        order_of_C_B_inv_mod_p2 324225 324222 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 324222 324225 := by
  have hlt : (324222 : Nat) < 324225 := by decide
  have hcop : ¬ 313 ∣ (324225 - 324222) := by decide
  have heq : (324225 : ZMod 313) ^ 13 = (324222 : ZMod 313) ^ 13 := by decide
  have hne : (324225 : ZMod 97969) ^ 13 ≠ (324222 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 324225 := by decide
  have hB : ¬ 313 ∣ 324222 := by decide
  have hexp :=
    has_exp_one_of_zmod 324222 324225 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 324222 324225 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 324222 324225 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      324222 324225 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      324222 324225 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_324537_324540 :
    HasPrimeWithExpOne (S_val 324537 324540) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324537 324540 ∧ ¬ p ∣ (324540 - 324537) ∧
      ∃ (hNotC : ¬ p ∣ 324540) (hNotB : ¬ p ∣ 324537),
        order_of_C_B_inv_mod_p2 324540 324537 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 324537 324540 := by
  have hlt : (324537 : Nat) < 324540 := by decide
  have hcop : ¬ 53 ∣ (324540 - 324537) := by decide
  have heq : (324540 : ZMod 53) ^ 13 = (324537 : ZMod 53) ^ 13 := by decide
  have hne : (324540 : ZMod 2809) ^ 13 ≠ (324537 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 324540 := by decide
  have hB : ¬ 53 ∣ 324537 := by decide
  have hexp :=
    has_exp_one_of_zmod 324537 324540 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 324537 324540 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 324537 324540 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      324537 324540 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      324537 324540 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_324843_324846 :
    HasPrimeWithExpOne (S_val 324843 324846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324843 324846 ∧ ¬ p ∣ (324846 - 324843) ∧
      ∃ (hNotC : ¬ p ∣ 324846) (hNotB : ¬ p ∣ 324843),
        order_of_C_B_inv_mod_p2 324846 324843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 324843 324846 := by
  have hlt : (324843 : Nat) < 324846 := by decide
  have hcop : ¬ 53 ∣ (324846 - 324843) := by decide
  have heq : (324846 : ZMod 53) ^ 13 = (324843 : ZMod 53) ^ 13 := by decide
  have hne : (324846 : ZMod 2809) ^ 13 ≠ (324843 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 324846 := by decide
  have hB : ¬ 53 ∣ 324843 := by decide
  have hexp :=
    has_exp_one_of_zmod 324843 324846 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 324843 324846 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 324843 324846 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      324843 324846 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      324843 324846 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_325185_325188 :
    HasPrimeWithExpOne (S_val 325185 325188) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325185 325188 ∧ ¬ p ∣ (325188 - 325185) ∧
      ∃ (hNotC : ¬ p ∣ 325188) (hNotB : ¬ p ∣ 325185),
        order_of_C_B_inv_mod_p2 325188 325185 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 325185 325188 := by
  have hlt : (325185 : Nat) < 325188 := by decide
  have hcop : ¬ 131 ∣ (325188 - 325185) := by decide
  have heq : (325188 : ZMod 131) ^ 13 = (325185 : ZMod 131) ^ 13 := by decide
  have hne : (325188 : ZMod 17161) ^ 13 ≠ (325185 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 325188 := by decide
  have hB : ¬ 131 ∣ 325185 := by decide
  have hexp :=
    has_exp_one_of_zmod 325185 325188 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 325185 325188 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 325185 325188 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      325185 325188 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      325185 325188 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_325513_325516 :
    HasPrimeWithExpOne (S_val 325513 325516) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325513 325516 ∧ ¬ p ∣ (325516 - 325513) ∧
      ∃ (hNotC : ¬ p ∣ 325516) (hNotB : ¬ p ∣ 325513),
        order_of_C_B_inv_mod_p2 325516 325513 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 325513 325516 := by
  have hlt : (325513 : Nat) < 325516 := by decide
  have hcop : ¬ 53 ∣ (325516 - 325513) := by decide
  have heq : (325516 : ZMod 53) ^ 13 = (325513 : ZMod 53) ^ 13 := by decide
  have hne : (325516 : ZMod 2809) ^ 13 ≠ (325513 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 325516 := by decide
  have hB : ¬ 53 ∣ 325513 := by decide
  have hexp :=
    has_exp_one_of_zmod 325513 325516 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 325513 325516 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 325513 325516 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      325513 325516 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      325513 325516 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_325852_325855 :
    HasPrimeWithExpOne (S_val 325852 325855) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325852 325855 ∧ ¬ p ∣ (325855 - 325852) ∧
      ∃ (hNotC : ¬ p ∣ 325855) (hNotB : ¬ p ∣ 325852),
        order_of_C_B_inv_mod_p2 325855 325852 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 325852 325855 := by
  have hlt : (325852 : Nat) < 325855 := by decide
  have hcop : ¬ 131 ∣ (325855 - 325852) := by decide
  have heq : (325855 : ZMod 131) ^ 13 = (325852 : ZMod 131) ^ 13 := by decide
  have hne : (325855 : ZMod 17161) ^ 13 ≠ (325852 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 325855 := by decide
  have hB : ¬ 131 ∣ 325852 := by decide
  have hexp :=
    has_exp_one_of_zmod 325852 325855 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 325852 325855 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 325852 325855 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      325852 325855 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      325852 325855 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_326193_326196 :
    HasPrimeWithExpOne (S_val 326193 326196) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326193 326196 ∧ ¬ p ∣ (326196 - 326193) ∧
      ∃ (hNotC : ¬ p ∣ 326196) (hNotB : ¬ p ∣ 326193),
        order_of_C_B_inv_mod_p2 326196 326193 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 326193 326196 := by
  have hlt : (326193 : Nat) < 326196 := by decide
  have hcop : ¬ 157 ∣ (326196 - 326193) := by decide
  have heq : (326196 : ZMod 157) ^ 13 = (326193 : ZMod 157) ^ 13 := by decide
  have hne : (326196 : ZMod 24649) ^ 13 ≠ (326193 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 326196 := by decide
  have hB : ¬ 157 ∣ 326193 := by decide
  have hexp :=
    has_exp_one_of_zmod 326193 326196 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 326193 326196 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 326193 326196 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      326193 326196 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      326193 326196 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_326528_326531 :
    HasPrimeWithExpOne (S_val 326528 326531) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326528 326531 ∧ ¬ p ∣ (326531 - 326528) ∧
      ∃ (hNotC : ¬ p ∣ 326531) (hNotB : ¬ p ∣ 326528),
        order_of_C_B_inv_mod_p2 326531 326528 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 326528 326531 := by
  have hlt : (326528 : Nat) < 326531 := by decide
  have hcop : ¬ 157 ∣ (326531 - 326528) := by decide
  have heq : (326531 : ZMod 157) ^ 13 = (326528 : ZMod 157) ^ 13 := by decide
  have hne : (326531 : ZMod 24649) ^ 13 ≠ (326528 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 326531 := by decide
  have hB : ¬ 157 ∣ 326528 := by decide
  have hexp :=
    has_exp_one_of_zmod 326528 326531 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 326528 326531 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 326528 326531 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      326528 326531 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      326528 326531 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_326897_326900 :
    HasPrimeWithExpOne (S_val 326897 326900) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326897 326900 ∧ ¬ p ∣ (326900 - 326897) ∧
      ∃ (hNotC : ¬ p ∣ 326900) (hNotB : ¬ p ∣ 326897),
        order_of_C_B_inv_mod_p2 326900 326897 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 326897 326900 := by
  have hlt : (326897 : Nat) < 326900 := by decide
  have hcop : ¬ 53 ∣ (326900 - 326897) := by decide
  have heq : (326900 : ZMod 53) ^ 13 = (326897 : ZMod 53) ^ 13 := by decide
  have hne : (326900 : ZMod 2809) ^ 13 ≠ (326897 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 326900 := by decide
  have hB : ¬ 53 ∣ 326897 := by decide
  have hexp :=
    has_exp_one_of_zmod 326897 326900 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 326897 326900 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 326897 326900 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      326897 326900 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      326897 326900 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_327236_327239 :
    HasPrimeWithExpOne (S_val 327236 327239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327236 327239 ∧ ¬ p ∣ (327239 - 327236) ∧
      ∃ (hNotC : ¬ p ∣ 327239) (hNotB : ¬ p ∣ 327236),
        order_of_C_B_inv_mod_p2 327239 327236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 327236 327239 := by
  have hlt : (327236 : Nat) < 327239 := by decide
  have hcop : ¬ 79 ∣ (327239 - 327236) := by decide
  have heq : (327239 : ZMod 79) ^ 13 = (327236 : ZMod 79) ^ 13 := by decide
  have hne : (327239 : ZMod 6241) ^ 13 ≠ (327236 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 327239 := by decide
  have hB : ¬ 79 ∣ 327236 := by decide
  have hexp :=
    has_exp_one_of_zmod 327236 327239 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 327236 327239 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 327236 327239 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      327236 327239 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      327236 327239 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_327559_327562 :
    HasPrimeWithExpOne (S_val 327559 327562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327559 327562 ∧ ¬ p ∣ (327562 - 327559) ∧
      ∃ (hNotC : ¬ p ∣ 327562) (hNotB : ¬ p ∣ 327559),
        order_of_C_B_inv_mod_p2 327562 327559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 327559 327562 := by
  have hlt : (327559 : Nat) < 327562 := by decide
  have hcop : ¬ 521 ∣ (327562 - 327559) := by decide
  have heq : (327562 : ZMod 521) ^ 13 = (327559 : ZMod 521) ^ 13 := by decide
  have hne : (327562 : ZMod 271441) ^ 13 ≠ (327559 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 327562 := by decide
  have hB : ¬ 521 ∣ 327559 := by decide
  have hexp :=
    has_exp_one_of_zmod 327559 327562 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 327559 327562 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 327559 327562 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      327559 327562 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      327559 327562 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_327902_327905 :
    HasPrimeWithExpOne (S_val 327902 327905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327902 327905 ∧ ¬ p ∣ (327905 - 327902) ∧
      ∃ (hNotC : ¬ p ∣ 327905) (hNotB : ¬ p ∣ 327902),
        order_of_C_B_inv_mod_p2 327905 327902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 327902 327905 := by
  have hlt : (327902 : Nat) < 327905 := by decide
  have hcop : ¬ 53 ∣ (327905 - 327902) := by decide
  have heq : (327905 : ZMod 53) ^ 13 = (327902 : ZMod 53) ^ 13 := by decide
  have hne : (327905 : ZMod 2809) ^ 13 ≠ (327902 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 327905 := by decide
  have hB : ¬ 53 ∣ 327902 := by decide
  have hexp :=
    has_exp_one_of_zmod 327902 327905 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 327902 327905 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 327902 327905 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      327902 327905 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      327902 327905 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_328229_328232 :
    HasPrimeWithExpOne (S_val 328229 328232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328229 328232 ∧ ¬ p ∣ (328232 - 328229) ∧
      ∃ (hNotC : ¬ p ∣ 328232) (hNotB : ¬ p ∣ 328229),
        order_of_C_B_inv_mod_p2 328232 328229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 328229 328232 := by
  have hlt : (328229 : Nat) < 328232 := by decide
  have hcop : ¬ 79 ∣ (328232 - 328229) := by decide
  have heq : (328232 : ZMod 79) ^ 13 = (328229 : ZMod 79) ^ 13 := by decide
  have hne : (328232 : ZMod 6241) ^ 13 ≠ (328229 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 328232 := by decide
  have hB : ¬ 79 ∣ 328229 := by decide
  have hexp :=
    has_exp_one_of_zmod 328229 328232 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 328229 328232 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 328229 328232 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      328229 328232 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      328229 328232 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_328553_328556 :
    HasPrimeWithExpOne (S_val 328553 328556) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328553 328556 ∧ ¬ p ∣ (328556 - 328553) ∧
      ∃ (hNotC : ¬ p ∣ 328556) (hNotB : ¬ p ∣ 328553),
        order_of_C_B_inv_mod_p2 328556 328553 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 328553 328556 := by
  have hlt : (328553 : Nat) < 328556 := by decide
  have hcop : ¬ 53 ∣ (328556 - 328553) := by decide
  have heq : (328556 : ZMod 53) ^ 13 = (328553 : ZMod 53) ^ 13 := by decide
  have hne : (328556 : ZMod 2809) ^ 13 ≠ (328553 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 328556 := by decide
  have hB : ¬ 53 ∣ 328553 := by decide
  have hexp :=
    has_exp_one_of_zmod 328553 328556 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 328553 328556 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 328553 328556 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      328553 328556 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      328553 328556 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_328900_328903 :
    HasPrimeWithExpOne (S_val 328900 328903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328900 328903 ∧ ¬ p ∣ (328903 - 328900) ∧
      ∃ (hNotC : ¬ p ∣ 328903) (hNotB : ¬ p ∣ 328900),
        order_of_C_B_inv_mod_p2 328903 328900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 328900 328903 := by
  have hlt : (328900 : Nat) < 328903 := by decide
  have hcop : ¬ 79 ∣ (328903 - 328900) := by decide
  have heq : (328903 : ZMod 79) ^ 13 = (328900 : ZMod 79) ^ 13 := by decide
  have hne : (328903 : ZMod 6241) ^ 13 ≠ (328900 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 328903 := by decide
  have hB : ¬ 79 ∣ 328900 := by decide
  have hexp :=
    has_exp_one_of_zmod 328900 328903 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 328900 328903 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 328900 328903 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      328900 328903 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      328900 328903 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_329242_329245 :
    HasPrimeWithExpOne (S_val 329242 329245) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329242 329245 ∧ ¬ p ∣ (329245 - 329242) ∧
      ∃ (hNotC : ¬ p ∣ 329245) (hNotB : ¬ p ∣ 329242),
        order_of_C_B_inv_mod_p2 329245 329242 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 329242 329245 := by
  have hlt : (329242 : Nat) < 329245 := by decide
  have hcop : ¬ 53 ∣ (329245 - 329242) := by decide
  have heq : (329245 : ZMod 53) ^ 13 = (329242 : ZMod 53) ^ 13 := by decide
  have hne : (329245 : ZMod 2809) ^ 13 ≠ (329242 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 329245 := by decide
  have hB : ¬ 53 ∣ 329242 := by decide
  have hexp :=
    has_exp_one_of_zmod 329242 329245 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 329242 329245 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 329242 329245 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      329242 329245 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      329242 329245 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_329571_329574 :
    HasPrimeWithExpOne (S_val 329571 329574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329571 329574 ∧ ¬ p ∣ (329574 - 329571) ∧
      ∃ (hNotC : ¬ p ∣ 329574) (hNotB : ¬ p ∣ 329571),
        order_of_C_B_inv_mod_p2 329574 329571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 329571 329574 := by
  have hlt : (329571 : Nat) < 329574 := by decide
  have hcop : ¬ 79 ∣ (329574 - 329571) := by decide
  have heq : (329574 : ZMod 79) ^ 13 = (329571 : ZMod 79) ^ 13 := by decide
  have hne : (329574 : ZMod 6241) ^ 13 ≠ (329571 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 329574 := by decide
  have hB : ¬ 79 ∣ 329571 := by decide
  have hexp :=
    has_exp_one_of_zmod 329571 329574 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 329571 329574 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 329571 329574 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      329571 329574 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      329571 329574 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_329918_329921 :
    HasPrimeWithExpOne (S_val 329918 329921) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329918 329921 ∧ ¬ p ∣ (329921 - 329918) ∧
      ∃ (hNotC : ¬ p ∣ 329921) (hNotB : ¬ p ∣ 329918),
        order_of_C_B_inv_mod_p2 329921 329918 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 329918 329921 := by
  have hlt : (329918 : Nat) < 329921 := by decide
  have hcop : ¬ 53 ∣ (329921 - 329918) := by decide
  have heq : (329921 : ZMod 53) ^ 13 = (329918 : ZMod 53) ^ 13 := by decide
  have hne : (329921 : ZMod 2809) ^ 13 ≠ (329918 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 329921 := by decide
  have hB : ¬ 53 ∣ 329918 := by decide
  have hexp :=
    has_exp_one_of_zmod 329918 329921 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 329918 329921 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 329918 329921 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      329918 329921 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      329918 329921 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_330258_330261 :
    HasPrimeWithExpOne (S_val 330258 330261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330258 330261 ∧ ¬ p ∣ (330261 - 330258) ∧
      ∃ (hNotC : ¬ p ∣ 330261) (hNotB : ¬ p ∣ 330258),
        order_of_C_B_inv_mod_p2 330261 330258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 330258 330261 := by
  have hlt : (330258 : Nat) < 330261 := by decide
  have hcop : ¬ 313 ∣ (330261 - 330258) := by decide
  have heq : (330261 : ZMod 313) ^ 13 = (330258 : ZMod 313) ^ 13 := by decide
  have hne : (330261 : ZMod 97969) ^ 13 ≠ (330258 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 330261 := by decide
  have hB : ¬ 313 ∣ 330258 := by decide
  have hexp :=
    has_exp_one_of_zmod 330258 330261 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 330258 330261 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 330258 330261 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      330258 330261 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      330258 330261 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_330592_330595 :
    HasPrimeWithExpOne (S_val 330592 330595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330592 330595 ∧ ¬ p ∣ (330595 - 330592) ∧
      ∃ (hNotC : ¬ p ∣ 330595) (hNotB : ¬ p ∣ 330592),
        order_of_C_B_inv_mod_p2 330595 330592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 330592 330595 := by
  have hlt : (330592 : Nat) < 330595 := by decide
  have hcop : ¬ 521 ∣ (330595 - 330592) := by decide
  have heq : (330595 : ZMod 521) ^ 13 = (330592 : ZMod 521) ^ 13 := by decide
  have hne : (330595 : ZMod 271441) ^ 13 ≠ (330592 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 330595 := by decide
  have hB : ¬ 521 ∣ 330592 := by decide
  have hexp :=
    has_exp_one_of_zmod 330592 330595 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 330592 330595 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 330592 330595 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      330592 330595 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      330592 330595 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_330944_330947 :
    HasPrimeWithExpOne (S_val 330944 330947) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330944 330947 ∧ ¬ p ∣ (330947 - 330944) ∧
      ∃ (hNotC : ¬ p ∣ 330947) (hNotB : ¬ p ∣ 330944),
        order_of_C_B_inv_mod_p2 330947 330944 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 330944 330947 := by
  have hlt : (330944 : Nat) < 330947 := by decide
  have hcop : ¬ 79 ∣ (330947 - 330944) := by decide
  have heq : (330947 : ZMod 79) ^ 13 = (330944 : ZMod 79) ^ 13 := by decide
  have hne : (330947 : ZMod 6241) ^ 13 ≠ (330944 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 330947 := by decide
  have hB : ¬ 79 ∣ 330944 := by decide
  have hexp :=
    has_exp_one_of_zmod 330944 330947 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 330944 330947 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 330944 330947 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      330944 330947 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      330944 330947 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_331263_331266 :
    HasPrimeWithExpOne (S_val 331263 331266) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331263 331266 ∧ ¬ p ∣ (331266 - 331263) ∧
      ∃ (hNotC : ¬ p ∣ 331266) (hNotB : ¬ p ∣ 331263),
        order_of_C_B_inv_mod_p2 331266 331263 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331263 331266 := by
  have hlt : (331263 : Nat) < 331266 := by decide
  have hcop : ¬ 53 ∣ (331266 - 331263) := by decide
  have heq : (331266 : ZMod 53) ^ 13 = (331263 : ZMod 53) ^ 13 := by decide
  have hne : (331266 : ZMod 2809) ^ 13 ≠ (331263 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 331266 := by decide
  have hB : ¬ 53 ∣ 331263 := by decide
  have hexp :=
    has_exp_one_of_zmod 331263 331266 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 331263 331266 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 331263 331266 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      331263 331266 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      331263 331266 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_331598_331601 :
    HasPrimeWithExpOne (S_val 331598 331601) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331598 331601 ∧ ¬ p ∣ (331601 - 331598) ∧
      ∃ (hNotC : ¬ p ∣ 331601) (hNotB : ¬ p ∣ 331598),
        order_of_C_B_inv_mod_p2 331601 331598 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331598 331601 := by
  have hlt : (331598 : Nat) < 331601 := by decide
  have hcop : ¬ 521 ∣ (331601 - 331598) := by decide
  have heq : (331601 : ZMod 521) ^ 13 = (331598 : ZMod 521) ^ 13 := by decide
  have hne : (331601 : ZMod 271441) ^ 13 ≠ (331598 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 331601 := by decide
  have hB : ¬ 521 ∣ 331598 := by decide
  have hexp :=
    has_exp_one_of_zmod 331598 331601 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 331598 331601 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 331598 331601 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      331598 331601 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      331598 331601 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_331944_331947 :
    HasPrimeWithExpOne (S_val 331944 331947) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331944 331947 ∧ ¬ p ∣ (331947 - 331944) ∧
      ∃ (hNotC : ¬ p ∣ 331947) (hNotB : ¬ p ∣ 331944),
        order_of_C_B_inv_mod_p2 331947 331944 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 331944 331947 := by
  have hlt : (331944 : Nat) < 331947 := by decide
  have hcop : ¬ 53 ∣ (331947 - 331944) := by decide
  have heq : (331947 : ZMod 53) ^ 13 = (331944 : ZMod 53) ^ 13 := by decide
  have hne : (331947 : ZMod 2809) ^ 13 ≠ (331944 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 331947 := by decide
  have hB : ¬ 53 ∣ 331944 := by decide
  have hexp :=
    has_exp_one_of_zmod 331944 331947 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 331944 331947 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 331944 331947 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      331944 331947 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      331944 331947 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_332265_332268 :
    HasPrimeWithExpOne (S_val 332265 332268) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332265 332268 ∧ ¬ p ∣ (332268 - 332265) ∧
      ∃ (hNotC : ¬ p ∣ 332268) (hNotB : ¬ p ∣ 332265),
        order_of_C_B_inv_mod_p2 332268 332265 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 332265 332268 := by
  have hlt : (332265 : Nat) < 332268 := by decide
  have hcop : ¬ 313 ∣ (332268 - 332265) := by decide
  have heq : (332268 : ZMod 313) ^ 13 = (332265 : ZMod 313) ^ 13 := by decide
  have hne : (332268 : ZMod 97969) ^ 13 ≠ (332265 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 332268 := by decide
  have hB : ¬ 313 ∣ 332265 := by decide
  have hexp :=
    has_exp_one_of_zmod 332265 332268 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 332265 332268 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 332265 332268 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      332265 332268 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      332265 332268 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_332596_332599 :
    HasPrimeWithExpOne (S_val 332596 332599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332596 332599 ∧ ¬ p ∣ (332599 - 332596) ∧
      ∃ (hNotC : ¬ p ∣ 332599) (hNotB : ¬ p ∣ 332596),
        order_of_C_B_inv_mod_p2 332599 332596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 332596 332599 := by
  have hlt : (332596 : Nat) < 332599 := by decide
  have hcop : ¬ 157 ∣ (332599 - 332596) := by decide
  have heq : (332599 : ZMod 157) ^ 13 = (332596 : ZMod 157) ^ 13 := by decide
  have hne : (332599 : ZMod 24649) ^ 13 ≠ (332596 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 332599 := by decide
  have hB : ¬ 157 ∣ 332596 := by decide
  have hexp :=
    has_exp_one_of_zmod 332596 332599 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 332596 332599 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 332596 332599 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      332596 332599 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      332596 332599 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_332924_332927 :
    HasPrimeWithExpOne (S_val 332924 332927) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332924 332927 ∧ ¬ p ∣ (332927 - 332924) ∧
      ∃ (hNotC : ¬ p ∣ 332927) (hNotB : ¬ p ∣ 332924),
        order_of_C_B_inv_mod_p2 332927 332924 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 332924 332927 := by
  have hlt : (332924 : Nat) < 332927 := by decide
  have hcop : ¬ 79 ∣ (332927 - 332924) := by decide
  have heq : (332927 : ZMod 79) ^ 13 = (332924 : ZMod 79) ^ 13 := by decide
  have hne : (332927 : ZMod 6241) ^ 13 ≠ (332924 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 332927 := by decide
  have hB : ¬ 79 ∣ 332924 := by decide
  have hexp :=
    has_exp_one_of_zmod 332924 332927 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 332924 332927 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 332924 332927 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      332924 332927 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      332924 332927 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_333255_333258 :
    HasPrimeWithExpOne (S_val 333255 333258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333255 333258 ∧ ¬ p ∣ (333258 - 333255) ∧
      ∃ (hNotC : ¬ p ∣ 333258) (hNotB : ¬ p ∣ 333255),
        order_of_C_B_inv_mod_p2 333258 333255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 333255 333258 := by
  have hlt : (333255 : Nat) < 333258 := by decide
  have hcop : ¬ 53 ∣ (333258 - 333255) := by decide
  have heq : (333258 : ZMod 53) ^ 13 = (333255 : ZMod 53) ^ 13 := by decide
  have hne : (333258 : ZMod 2809) ^ 13 ≠ (333255 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 333258 := by decide
  have hB : ¬ 53 ∣ 333255 := by decide
  have hexp :=
    has_exp_one_of_zmod 333255 333258 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 333255 333258 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 333255 333258 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      333255 333258 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      333255 333258 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_333602_333605 :
    HasPrimeWithExpOne (S_val 333602 333605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333602 333605 ∧ ¬ p ∣ (333605 - 333602) ∧
      ∃ (hNotC : ¬ p ∣ 333605) (hNotB : ¬ p ∣ 333602),
        order_of_C_B_inv_mod_p2 333605 333602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 333602 333605 := by
  have hlt : (333602 : Nat) < 333605 := by decide
  have hcop : ¬ 79 ∣ (333605 - 333602) := by decide
  have heq : (333605 : ZMod 79) ^ 13 = (333602 : ZMod 79) ^ 13 := by decide
  have hne : (333605 : ZMod 6241) ^ 13 ≠ (333602 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 333605 := by decide
  have hB : ¬ 79 ∣ 333602 := by decide
  have hexp :=
    has_exp_one_of_zmod 333602 333605 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 333602 333605 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 333602 333605 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      333602 333605 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      333602 333605 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_333947_333950 :
    HasPrimeWithExpOne (S_val 333947 333950) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333947 333950 ∧ ¬ p ∣ (333950 - 333947) ∧
      ∃ (hNotC : ¬ p ∣ 333950) (hNotB : ¬ p ∣ 333947),
        order_of_C_B_inv_mod_p2 333950 333947 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 333947 333950 := by
  have hlt : (333947 : Nat) < 333950 := by decide
  have hcop : ¬ 79 ∣ (333950 - 333947) := by decide
  have heq : (333950 : ZMod 79) ^ 13 = (333947 : ZMod 79) ^ 13 := by decide
  have hne : (333950 : ZMod 6241) ^ 13 ≠ (333947 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 333950 := by decide
  have hB : ¬ 79 ∣ 333947 := by decide
  have hexp :=
    has_exp_one_of_zmod 333947 333950 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 333947 333950 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 333947 333950 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      333947 333950 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      333947 333950 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_334266_334269 :
    HasPrimeWithExpOne (S_val 334266 334269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334266 334269 ∧ ¬ p ∣ (334269 - 334266) ∧
      ∃ (hNotC : ¬ p ∣ 334269) (hNotB : ¬ p ∣ 334266),
        order_of_C_B_inv_mod_p2 334269 334266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 334266 334269 := by
  have hlt : (334266 : Nat) < 334269 := by decide
  have hcop : ¬ 131 ∣ (334269 - 334266) := by decide
  have heq : (334269 : ZMod 131) ^ 13 = (334266 : ZMod 131) ^ 13 := by decide
  have hne : (334269 : ZMod 17161) ^ 13 ≠ (334266 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 334269 := by decide
  have hB : ¬ 131 ∣ 334266 := by decide
  have hexp :=
    has_exp_one_of_zmod 334266 334269 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 334266 334269 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 334266 334269 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      334266 334269 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      334266 334269 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_334593_334596 :
    HasPrimeWithExpOne (S_val 334593 334596) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334593 334596 ∧ ¬ p ∣ (334596 - 334593) ∧
      ∃ (hNotC : ¬ p ∣ 334596) (hNotB : ¬ p ∣ 334593),
        order_of_C_B_inv_mod_p2 334596 334593 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 334593 334596 := by
  have hlt : (334593 : Nat) < 334596 := by decide
  have hcop : ¬ 53 ∣ (334596 - 334593) := by decide
  have heq : (334596 : ZMod 53) ^ 13 = (334593 : ZMod 53) ^ 13 := by decide
  have hne : (334596 : ZMod 2809) ^ 13 ≠ (334593 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 334596 := by decide
  have hB : ¬ 53 ∣ 334593 := by decide
  have hexp :=
    has_exp_one_of_zmod 334593 334596 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 334593 334596 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 334593 334596 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      334593 334596 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      334593 334596 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_334920_334923 :
    HasPrimeWithExpOne (S_val 334920 334923) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334920 334923 ∧ ¬ p ∣ (334923 - 334920) ∧
      ∃ (hNotC : ¬ p ∣ 334923) (hNotB : ¬ p ∣ 334920),
        order_of_C_B_inv_mod_p2 334923 334920 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 334920 334923 := by
  have hlt : (334920 : Nat) < 334923 := by decide
  have hcop : ¬ 53 ∣ (334923 - 334920) := by decide
  have heq : (334923 : ZMod 53) ^ 13 = (334920 : ZMod 53) ^ 13 := by decide
  have hne : (334923 : ZMod 2809) ^ 13 ≠ (334920 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 334923 := by decide
  have hB : ¬ 53 ∣ 334920 := by decide
  have hexp :=
    has_exp_one_of_zmod 334920 334923 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 334920 334923 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 334920 334923 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      334920 334923 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      334920 334923 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_335279_335282 :
    HasPrimeWithExpOne (S_val 335279 335282) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335279 335282 ∧ ¬ p ∣ (335282 - 335279) ∧
      ∃ (hNotC : ¬ p ∣ 335282) (hNotB : ¬ p ∣ 335279),
        order_of_C_B_inv_mod_p2 335282 335279 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 335279 335282 := by
  have hlt : (335279 : Nat) < 335282 := by decide
  have hcop : ¬ 157 ∣ (335282 - 335279) := by decide
  have heq : (335282 : ZMod 157) ^ 13 = (335279 : ZMod 157) ^ 13 := by decide
  have hne : (335282 : ZMod 24649) ^ 13 ≠ (335279 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 335282 := by decide
  have hB : ¬ 157 ∣ 335279 := by decide
  have hexp :=
    has_exp_one_of_zmod 335279 335282 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 335279 335282 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 335279 335282 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      335279 335282 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      335279 335282 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_335596_335599 :
    HasPrimeWithExpOne (S_val 335596 335599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335596 335599 ∧ ¬ p ∣ (335599 - 335596) ∧
      ∃ (hNotC : ¬ p ∣ 335599) (hNotB : ¬ p ∣ 335596),
        order_of_C_B_inv_mod_p2 335599 335596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 335596 335599 := by
  have hlt : (335596 : Nat) < 335599 := by decide
  have hcop : ¬ 313 ∣ (335599 - 335596) := by decide
  have heq : (335599 : ZMod 313) ^ 13 = (335596 : ZMod 313) ^ 13 := by decide
  have hne : (335599 : ZMod 97969) ^ 13 ≠ (335596 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 335599 := by decide
  have hB : ¬ 313 ∣ 335596 := by decide
  have hexp :=
    has_exp_one_of_zmod 335596 335599 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 335596 335599 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 335596 335599 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      335596 335599 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      335596 335599 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_335946_335949 :
    HasPrimeWithExpOne (S_val 335946 335949) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335946 335949 ∧ ¬ p ∣ (335949 - 335946) ∧
      ∃ (hNotC : ¬ p ∣ 335949) (hNotB : ¬ p ∣ 335946),
        order_of_C_B_inv_mod_p2 335949 335946 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 335946 335949 := by
  have hlt : (335946 : Nat) < 335949 := by decide
  have hcop : ¬ 53 ∣ (335949 - 335946) := by decide
  have heq : (335949 : ZMod 53) ^ 13 = (335946 : ZMod 53) ^ 13 := by decide
  have hne : (335949 : ZMod 2809) ^ 13 ≠ (335946 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 335949 := by decide
  have hB : ¬ 53 ∣ 335946 := by decide
  have hexp :=
    has_exp_one_of_zmod 335946 335949 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 335946 335949 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 335946 335949 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      335946 335949 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      335946 335949 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_336290_336293 :
    HasPrimeWithExpOne (S_val 336290 336293) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336290 336293 ∧ ¬ p ∣ (336293 - 336290) ∧
      ∃ (hNotC : ¬ p ∣ 336293) (hNotB : ¬ p ∣ 336290),
        order_of_C_B_inv_mod_p2 336293 336290 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 336290 336293 := by
  have hlt : (336290 : Nat) < 336293 := by decide
  have hcop : ¬ 53 ∣ (336293 - 336290) := by decide
  have heq : (336293 : ZMod 53) ^ 13 = (336290 : ZMod 53) ^ 13 := by decide
  have hne : (336293 : ZMod 2809) ^ 13 ≠ (336290 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 336293 := by decide
  have hB : ¬ 53 ∣ 336290 := by decide
  have hexp :=
    has_exp_one_of_zmod 336290 336293 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 336290 336293 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 336290 336293 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      336290 336293 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      336290 336293 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_336640_336643 :
    HasPrimeWithExpOne (S_val 336640 336643) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336640 336643 ∧ ¬ p ∣ (336643 - 336640) ∧
      ∃ (hNotC : ¬ p ∣ 336643) (hNotB : ¬ p ∣ 336640),
        order_of_C_B_inv_mod_p2 336643 336640 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 336640 336643 := by
  have hlt : (336640 : Nat) < 336643 := by decide
  have hcop : ¬ 53 ∣ (336643 - 336640) := by decide
  have heq : (336643 : ZMod 53) ^ 13 = (336640 : ZMod 53) ^ 13 := by decide
  have hne : (336643 : ZMod 2809) ^ 13 ≠ (336640 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 336643 := by decide
  have hB : ¬ 53 ∣ 336640 := by decide
  have hexp :=
    has_exp_one_of_zmod 336640 336643 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 336640 336643 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 336640 336643 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      336640 336643 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      336640 336643 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_336972_336975 :
    HasPrimeWithExpOne (S_val 336972 336975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336972 336975 ∧ ¬ p ∣ (336975 - 336972) ∧
      ∃ (hNotC : ¬ p ∣ 336975) (hNotB : ¬ p ∣ 336972),
        order_of_C_B_inv_mod_p2 336975 336972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 336972 336975 := by
  have hlt : (336972 : Nat) < 336975 := by decide
  have hcop : ¬ 157 ∣ (336975 - 336972) := by decide
  have heq : (336975 : ZMod 157) ^ 13 = (336972 : ZMod 157) ^ 13 := by decide
  have hne : (336975 : ZMod 24649) ^ 13 ≠ (336972 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 336975 := by decide
  have hB : ¬ 157 ∣ 336972 := by decide
  have hexp :=
    has_exp_one_of_zmod 336972 336975 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 336972 336975 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 336972 336975 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      336972 336975 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      336972 336975 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_337285_337288 :
    HasPrimeWithExpOne (S_val 337285 337288) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337285 337288 ∧ ¬ p ∣ (337288 - 337285) ∧
      ∃ (hNotC : ¬ p ∣ 337288) (hNotB : ¬ p ∣ 337285),
        order_of_C_B_inv_mod_p2 337288 337285 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 337285 337288 := by
  have hlt : (337285 : Nat) < 337288 := by decide
  have hcop : ¬ 53 ∣ (337288 - 337285) := by decide
  have heq : (337288 : ZMod 53) ^ 13 = (337285 : ZMod 53) ^ 13 := by decide
  have hne : (337288 : ZMod 2809) ^ 13 ≠ (337285 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 337288 := by decide
  have hB : ¬ 53 ∣ 337285 := by decide
  have hexp :=
    has_exp_one_of_zmod 337285 337288 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 337285 337288 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 337285 337288 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      337285 337288 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      337285 337288 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_337609_337612 :
    HasPrimeWithExpOne (S_val 337609 337612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337609 337612 ∧ ¬ p ∣ (337612 - 337609) ∧
      ∃ (hNotC : ¬ p ∣ 337612) (hNotB : ¬ p ∣ 337609),
        order_of_C_B_inv_mod_p2 337612 337609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 337609 337612 := by
  have hlt : (337609 : Nat) < 337612 := by decide
  have hcop : ¬ 79 ∣ (337612 - 337609) := by decide
  have heq : (337612 : ZMod 79) ^ 13 = (337609 : ZMod 79) ^ 13 := by decide
  have hne : (337612 : ZMod 6241) ^ 13 ≠ (337609 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 337612 := by decide
  have hB : ¬ 79 ∣ 337609 := by decide
  have hexp :=
    has_exp_one_of_zmod 337609 337612 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 337609 337612 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 337609 337612 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      337609 337612 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      337609 337612 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_337945_337948 :
    HasPrimeWithExpOne (S_val 337945 337948) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337945 337948 ∧ ¬ p ∣ (337948 - 337945) ∧
      ∃ (hNotC : ¬ p ∣ 337948) (hNotB : ¬ p ∣ 337945),
        order_of_C_B_inv_mod_p2 337948 337945 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 337945 337948 := by
  have hlt : (337945 : Nat) < 337948 := by decide
  have hcop : ¬ 79 ∣ (337948 - 337945) := by decide
  have heq : (337948 : ZMod 79) ^ 13 = (337945 : ZMod 79) ^ 13 := by decide
  have hne : (337948 : ZMod 6241) ^ 13 ≠ (337945 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 337948 := by decide
  have hB : ¬ 79 ∣ 337945 := by decide
  have hexp :=
    has_exp_one_of_zmod 337945 337948 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 337945 337948 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 337945 337948 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      337945 337948 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      337945 337948 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_338301_338304 :
    HasPrimeWithExpOne (S_val 338301 338304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338301 338304 ∧ ¬ p ∣ (338304 - 338301) ∧
      ∃ (hNotC : ¬ p ∣ 338304) (hNotB : ¬ p ∣ 338301),
        order_of_C_B_inv_mod_p2 338304 338301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 338301 338304 := by
  have hlt : (338301 : Nat) < 338304 := by decide
  have hcop : ¬ 79 ∣ (338304 - 338301) := by decide
  have heq : (338304 : ZMod 79) ^ 13 = (338301 : ZMod 79) ^ 13 := by decide
  have hne : (338304 : ZMod 6241) ^ 13 ≠ (338301 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 338304 := by decide
  have hB : ¬ 79 ∣ 338301 := by decide
  have hexp :=
    has_exp_one_of_zmod 338301 338304 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 338301 338304 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 338301 338304 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      338301 338304 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      338301 338304 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_338625_338628 :
    HasPrimeWithExpOne (S_val 338625 338628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338625 338628 ∧ ¬ p ∣ (338628 - 338625) ∧
      ∃ (hNotC : ¬ p ∣ 338628) (hNotB : ¬ p ∣ 338625),
        order_of_C_B_inv_mod_p2 338628 338625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 338625 338628 := by
  have hlt : (338625 : Nat) < 338628 := by decide
  have hcop : ¬ 157 ∣ (338628 - 338625) := by decide
  have heq : (338628 : ZMod 157) ^ 13 = (338625 : ZMod 157) ^ 13 := by decide
  have hne : (338628 : ZMod 24649) ^ 13 ≠ (338625 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 338628 := by decide
  have hB : ¬ 157 ∣ 338625 := by decide
  have hexp :=
    has_exp_one_of_zmod 338625 338628 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 338625 338628 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 338625 338628 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      338625 338628 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      338625 338628 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_338968_338971 :
    HasPrimeWithExpOne (S_val 338968 338971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338968 338971 ∧ ¬ p ∣ (338971 - 338968) ∧
      ∃ (hNotC : ¬ p ∣ 338971) (hNotB : ¬ p ∣ 338968),
        order_of_C_B_inv_mod_p2 338971 338968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 338968 338971 := by
  have hlt : (338968 : Nat) < 338971 := by decide
  have hcop : ¬ 79 ∣ (338971 - 338968) := by decide
  have heq : (338971 : ZMod 79) ^ 13 = (338968 : ZMod 79) ^ 13 := by decide
  have hne : (338971 : ZMod 6241) ^ 13 ≠ (338968 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 338971 := by decide
  have hB : ¬ 79 ∣ 338968 := by decide
  have hexp :=
    has_exp_one_of_zmod 338968 338971 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 338968 338971 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 338968 338971 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      338968 338971 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      338968 338971 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_339306_339309 :
    HasPrimeWithExpOne (S_val 339306 339309) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339306 339309 ∧ ¬ p ∣ (339309 - 339306) ∧
      ∃ (hNotC : ¬ p ∣ 339309) (hNotB : ¬ p ∣ 339306),
        order_of_C_B_inv_mod_p2 339309 339306 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 339306 339309 := by
  have hlt : (339306 : Nat) < 339309 := by decide
  have hcop : ¬ 157 ∣ (339309 - 339306) := by decide
  have heq : (339309 : ZMod 157) ^ 13 = (339306 : ZMod 157) ^ 13 := by decide
  have hne : (339309 : ZMod 24649) ^ 13 ≠ (339306 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 339309 := by decide
  have hB : ¬ 157 ∣ 339306 := by decide
  have hexp :=
    has_exp_one_of_zmod 339306 339309 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 339306 339309 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 339306 339309 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      339306 339309 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      339306 339309 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_339638_339641 :
    HasPrimeWithExpOne (S_val 339638 339641) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339638 339641 ∧ ¬ p ∣ (339641 - 339638) ∧
      ∃ (hNotC : ¬ p ∣ 339641) (hNotB : ¬ p ∣ 339638),
        order_of_C_B_inv_mod_p2 339641 339638 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 339638 339641 := by
  have hlt : (339638 : Nat) < 339641 := by decide
  have hcop : ¬ 313 ∣ (339641 - 339638) := by decide
  have heq : (339641 : ZMod 313) ^ 13 = (339638 : ZMod 313) ^ 13 := by decide
  have hne : (339641 : ZMod 97969) ^ 13 ≠ (339638 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 339641 := by decide
  have hB : ¬ 313 ∣ 339638 := by decide
  have hexp :=
    has_exp_one_of_zmod 339638 339641 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 339638 339641 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 339638 339641 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      339638 339641 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      339638 339641 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_339979_339982 :
    HasPrimeWithExpOne (S_val 339979 339982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339979 339982 ∧ ¬ p ∣ (339982 - 339979) ∧
      ∃ (hNotC : ¬ p ∣ 339982) (hNotB : ¬ p ∣ 339979),
        order_of_C_B_inv_mod_p2 339982 339979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 339979 339982 := by
  have hlt : (339979 : Nat) < 339982 := by decide
  have hcop : ¬ 53 ∣ (339982 - 339979) := by decide
  have heq : (339982 : ZMod 53) ^ 13 = (339979 : ZMod 53) ^ 13 := by decide
  have hne : (339982 : ZMod 2809) ^ 13 ≠ (339979 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 339982 := by decide
  have hB : ¬ 53 ∣ 339979 := by decide
  have hexp :=
    has_exp_one_of_zmod 339979 339982 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 339979 339982 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 339979 339982 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      339979 339982 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      339979 339982 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_340315_340318 :
    HasPrimeWithExpOne (S_val 340315 340318) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340315 340318 ∧ ¬ p ∣ (340318 - 340315) ∧
      ∃ (hNotC : ¬ p ∣ 340318) (hNotB : ¬ p ∣ 340315),
        order_of_C_B_inv_mod_p2 340318 340315 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 340315 340318 := by
  have hlt : (340315 : Nat) < 340318 := by decide
  have hcop : ¬ 79 ∣ (340318 - 340315) := by decide
  have heq : (340318 : ZMod 79) ^ 13 = (340315 : ZMod 79) ^ 13 := by decide
  have hne : (340318 : ZMod 6241) ^ 13 ≠ (340315 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 340318 := by decide
  have hB : ¬ 79 ∣ 340315 := by decide
  have hexp :=
    has_exp_one_of_zmod 340315 340318 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 340315 340318 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 340315 340318 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      340315 340318 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      340315 340318 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_340659_340662 :
    HasPrimeWithExpOne (S_val 340659 340662) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340659 340662 ∧ ¬ p ∣ (340662 - 340659) ∧
      ∃ (hNotC : ¬ p ∣ 340662) (hNotB : ¬ p ∣ 340659),
        order_of_C_B_inv_mod_p2 340662 340659 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 340659 340662 := by
  have hlt : (340659 : Nat) < 340662 := by decide
  have hcop : ¬ 443 ∣ (340662 - 340659) := by decide
  have heq : (340662 : ZMod 443) ^ 13 = (340659 : ZMod 443) ^ 13 := by decide
  have hne : (340662 : ZMod 196249) ^ 13 ≠ (340659 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 340662 := by decide
  have hB : ¬ 443 ∣ 340659 := by decide
  have hexp :=
    has_exp_one_of_zmod 340659 340662 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 340659 340662 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 340659 340662 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      340659 340662 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      340659 340662 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_340982_340985 :
    HasPrimeWithExpOne (S_val 340982 340985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340982 340985 ∧ ¬ p ∣ (340985 - 340982) ∧
      ∃ (hNotC : ¬ p ∣ 340985) (hNotB : ¬ p ∣ 340982),
        order_of_C_B_inv_mod_p2 340985 340982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 340982 340985 := by
  have hlt : (340982 : Nat) < 340985 := by decide
  have hcop : ¬ 79 ∣ (340985 - 340982) := by decide
  have heq : (340985 : ZMod 79) ^ 13 = (340982 : ZMod 79) ^ 13 := by decide
  have hne : (340985 : ZMod 6241) ^ 13 ≠ (340982 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 340985 := by decide
  have hB : ¬ 79 ∣ 340982 := by decide
  have hexp :=
    has_exp_one_of_zmod 340982 340985 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 340982 340985 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 340982 340985 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      340982 340985 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      340982 340985 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_341311_341314 :
    HasPrimeWithExpOne (S_val 341311 341314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341311 341314 ∧ ¬ p ∣ (341314 - 341311) ∧
      ∃ (hNotC : ¬ p ∣ 341314) (hNotB : ¬ p ∣ 341311),
        order_of_C_B_inv_mod_p2 341314 341311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 341311 341314 := by
  have hlt : (341311 : Nat) < 341314 := by decide
  have hcop : ¬ 53 ∣ (341314 - 341311) := by decide
  have heq : (341314 : ZMod 53) ^ 13 = (341311 : ZMod 53) ^ 13 := by decide
  have hne : (341314 : ZMod 2809) ^ 13 ≠ (341311 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 341314 := by decide
  have hB : ¬ 53 ∣ 341311 := by decide
  have hexp :=
    has_exp_one_of_zmod 341311 341314 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 341311 341314 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 341311 341314 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      341311 341314 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      341311 341314 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_341619_341622 :
    HasPrimeWithExpOne (S_val 341619 341622) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341619 341622 ∧ ¬ p ∣ (341622 - 341619) ∧
      ∃ (hNotC : ¬ p ∣ 341622) (hNotB : ¬ p ∣ 341619),
        order_of_C_B_inv_mod_p2 341622 341619 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 341619 341622 := by
  have hlt : (341619 : Nat) < 341622 := by decide
  have hcop : ¬ 79 ∣ (341622 - 341619) := by decide
  have heq : (341622 : ZMod 79) ^ 13 = (341619 : ZMod 79) ^ 13 := by decide
  have hne : (341622 : ZMod 6241) ^ 13 ≠ (341619 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 341622 := by decide
  have hB : ¬ 79 ∣ 341619 := by decide
  have hexp :=
    has_exp_one_of_zmod 341619 341622 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 341619 341622 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 341619 341622 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      341619 341622 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      341619 341622 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_341960_341963 :
    HasPrimeWithExpOne (S_val 341960 341963) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341960 341963 ∧ ¬ p ∣ (341963 - 341960) ∧
      ∃ (hNotC : ¬ p ∣ 341963) (hNotB : ¬ p ∣ 341960),
        order_of_C_B_inv_mod_p2 341963 341960 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 341960 341963 := by
  have hlt : (341960 : Nat) < 341963 := by decide
  have hcop : ¬ 53 ∣ (341963 - 341960) := by decide
  have heq : (341963 : ZMod 53) ^ 13 = (341960 : ZMod 53) ^ 13 := by decide
  have hne : (341963 : ZMod 2809) ^ 13 ≠ (341960 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 341963 := by decide
  have hB : ¬ 53 ∣ 341960 := by decide
  have hexp :=
    has_exp_one_of_zmod 341960 341963 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 341960 341963 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 341960 341963 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      341960 341963 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      341960 341963 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_342290_342293 :
    HasPrimeWithExpOne (S_val 342290 342293) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342290 342293 ∧ ¬ p ∣ (342293 - 342290) ∧
      ∃ (hNotC : ¬ p ∣ 342293) (hNotB : ¬ p ∣ 342290),
        order_of_C_B_inv_mod_p2 342293 342290 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 342290 342293 := by
  have hlt : (342290 : Nat) < 342293 := by decide
  have hcop : ¬ 79 ∣ (342293 - 342290) := by decide
  have heq : (342293 : ZMod 79) ^ 13 = (342290 : ZMod 79) ^ 13 := by decide
  have hne : (342293 : ZMod 6241) ^ 13 ≠ (342290 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 342293 := by decide
  have hB : ¬ 79 ∣ 342290 := by decide
  have hexp :=
    has_exp_one_of_zmod 342290 342293 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 342290 342293 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 342290 342293 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      342290 342293 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      342290 342293 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_342619_342622 :
    HasPrimeWithExpOne (S_val 342619 342622) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342619 342622 ∧ ¬ p ∣ (342622 - 342619) ∧
      ∃ (hNotC : ¬ p ∣ 342622) (hNotB : ¬ p ∣ 342619),
        order_of_C_B_inv_mod_p2 342622 342619 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 342619 342622 := by
  have hlt : (342619 : Nat) < 342622 := by decide
  have hcop : ¬ 131 ∣ (342622 - 342619) := by decide
  have heq : (342622 : ZMod 131) ^ 13 = (342619 : ZMod 131) ^ 13 := by decide
  have hne : (342622 : ZMod 17161) ^ 13 ≠ (342619 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 342622 := by decide
  have hB : ¬ 131 ∣ 342619 := by decide
  have hexp :=
    has_exp_one_of_zmod 342619 342622 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 342619 342622 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 342619 342622 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      342619 342622 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      342619 342622 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_342956_342959 :
    HasPrimeWithExpOne (S_val 342956 342959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342956 342959 ∧ ¬ p ∣ (342959 - 342956) ∧
      ∃ (hNotC : ¬ p ∣ 342959) (hNotB : ¬ p ∣ 342956),
        order_of_C_B_inv_mod_p2 342959 342956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 342956 342959 := by
  have hlt : (342956 : Nat) < 342959 := by decide
  have hcop : ¬ 53 ∣ (342959 - 342956) := by decide
  have heq : (342959 : ZMod 53) ^ 13 = (342956 : ZMod 53) ^ 13 := by decide
  have hne : (342959 : ZMod 2809) ^ 13 ≠ (342956 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 342959 := by decide
  have hB : ¬ 53 ∣ 342956 := by decide
  have hexp :=
    has_exp_one_of_zmod 342956 342959 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 342956 342959 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 342956 342959 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      342956 342959 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      342956 342959 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_343299_343302 :
    HasPrimeWithExpOne (S_val 343299 343302) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343299 343302 ∧ ¬ p ∣ (343302 - 343299) ∧
      ∃ (hNotC : ¬ p ∣ 343302) (hNotB : ¬ p ∣ 343299),
        order_of_C_B_inv_mod_p2 343302 343299 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 343299 343302 := by
  have hlt : (343299 : Nat) < 343302 := by decide
  have hcop : ¬ 53 ∣ (343302 - 343299) := by decide
  have heq : (343302 : ZMod 53) ^ 13 = (343299 : ZMod 53) ^ 13 := by decide
  have hne : (343302 : ZMod 2809) ^ 13 ≠ (343299 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 343302 := by decide
  have hB : ¬ 53 ∣ 343299 := by decide
  have hexp :=
    has_exp_one_of_zmod 343299 343302 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 343299 343302 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 343299 343302 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      343299 343302 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      343299 343302 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_343637_343640 :
    HasPrimeWithExpOne (S_val 343637 343640) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343637 343640 ∧ ¬ p ∣ (343640 - 343637) ∧
      ∃ (hNotC : ¬ p ∣ 343640) (hNotB : ¬ p ∣ 343637),
        order_of_C_B_inv_mod_p2 343640 343637 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 343637 343640 := by
  have hlt : (343637 : Nat) < 343640 := by decide
  have hcop : ¬ 157 ∣ (343640 - 343637) := by decide
  have heq : (343640 : ZMod 157) ^ 13 = (343637 : ZMod 157) ^ 13 := by decide
  have hne : (343640 : ZMod 24649) ^ 13 ≠ (343637 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 343640 := by decide
  have hB : ¬ 157 ∣ 343637 := by decide
  have hexp :=
    has_exp_one_of_zmod 343637 343640 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 343637 343640 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 343637 343640 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      343637 343640 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      343637 343640 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_343978_343981 :
    HasPrimeWithExpOne (S_val 343978 343981) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343978 343981 ∧ ¬ p ∣ (343981 - 343978) ∧
      ∃ (hNotC : ¬ p ∣ 343981) (hNotB : ¬ p ∣ 343978),
        order_of_C_B_inv_mod_p2 343981 343978 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 343978 343981 := by
  have hlt : (343978 : Nat) < 343981 := by decide
  have hcop : ¬ 79 ∣ (343981 - 343978) := by decide
  have heq : (343981 : ZMod 79) ^ 13 = (343978 : ZMod 79) ^ 13 := by decide
  have hne : (343981 : ZMod 6241) ^ 13 ≠ (343978 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 343981 := by decide
  have hB : ¬ 79 ∣ 343978 := by decide
  have hexp :=
    has_exp_one_of_zmod 343978 343981 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 343978 343981 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 343978 343981 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      343978 343981 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      343978 343981 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_344322_344325 :
    HasPrimeWithExpOne (S_val 344322 344325) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344322 344325 ∧ ¬ p ∣ (344325 - 344322) ∧
      ∃ (hNotC : ¬ p ∣ 344325) (hNotB : ¬ p ∣ 344322),
        order_of_C_B_inv_mod_p2 344325 344322 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 344322 344325 := by
  have hlt : (344322 : Nat) < 344325 := by decide
  have hcop : ¬ 131 ∣ (344325 - 344322) := by decide
  have heq : (344325 : ZMod 131) ^ 13 = (344322 : ZMod 131) ^ 13 := by decide
  have hne : (344325 : ZMod 17161) ^ 13 ≠ (344322 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 344325 := by decide
  have hB : ¬ 131 ∣ 344322 := by decide
  have hexp :=
    has_exp_one_of_zmod 344322 344325 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 344322 344325 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 344322 344325 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      344322 344325 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      344322 344325 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_344651_344654 :
    HasPrimeWithExpOne (S_val 344651 344654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344651 344654 ∧ ¬ p ∣ (344654 - 344651) ∧
      ∃ (hNotC : ¬ p ∣ 344654) (hNotB : ¬ p ∣ 344651),
        order_of_C_B_inv_mod_p2 344654 344651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 344651 344654 := by
  have hlt : (344651 : Nat) < 344654 := by decide
  have hcop : ¬ 53 ∣ (344654 - 344651) := by decide
  have heq : (344654 : ZMod 53) ^ 13 = (344651 : ZMod 53) ^ 13 := by decide
  have hne : (344654 : ZMod 2809) ^ 13 ≠ (344651 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 344654 := by decide
  have hB : ¬ 53 ∣ 344651 := by decide
  have hexp :=
    has_exp_one_of_zmod 344651 344654 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 344651 344654 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 344651 344654 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      344651 344654 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      344651 344654 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_344990_344993 :
    HasPrimeWithExpOne (S_val 344990 344993) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344990 344993 ∧ ¬ p ∣ (344993 - 344990) ∧
      ∃ (hNotC : ¬ p ∣ 344993) (hNotB : ¬ p ∣ 344990),
        order_of_C_B_inv_mod_p2 344993 344990 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 344990 344993 := by
  have hlt : (344990 : Nat) < 344993 := by decide
  have hcop : ¬ 53 ∣ (344993 - 344990) := by decide
  have heq : (344993 : ZMod 53) ^ 13 = (344990 : ZMod 53) ^ 13 := by decide
  have hne : (344993 : ZMod 2809) ^ 13 ≠ (344990 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 344993 := by decide
  have hB : ¬ 53 ∣ 344990 := by decide
  have hexp :=
    has_exp_one_of_zmod 344990 344993 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 344990 344993 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 344990 344993 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      344990 344993 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      344990 344993 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_345299_345302 :
    HasPrimeWithExpOne (S_val 345299 345302) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345299 345302 ∧ ¬ p ∣ (345302 - 345299) ∧
      ∃ (hNotC : ¬ p ∣ 345302) (hNotB : ¬ p ∣ 345299),
        order_of_C_B_inv_mod_p2 345302 345299 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 345299 345302 := by
  have hlt : (345299 : Nat) < 345302 := by decide
  have hcop : ¬ 53 ∣ (345302 - 345299) := by decide
  have heq : (345302 : ZMod 53) ^ 13 = (345299 : ZMod 53) ^ 13 := by decide
  have hne : (345302 : ZMod 2809) ^ 13 ≠ (345299 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 345302 := by decide
  have hB : ¬ 53 ∣ 345299 := by decide
  have hexp :=
    has_exp_one_of_zmod 345299 345302 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 345299 345302 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 345299 345302 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      345299 345302 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      345299 345302 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_345633_345636 :
    HasPrimeWithExpOne (S_val 345633 345636) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345633 345636 ∧ ¬ p ∣ (345636 - 345633) ∧
      ∃ (hNotC : ¬ p ∣ 345636) (hNotB : ¬ p ∣ 345633),
        order_of_C_B_inv_mod_p2 345636 345633 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 345633 345636 := by
  have hlt : (345633 : Nat) < 345636 := by decide
  have hcop : ¬ 131 ∣ (345636 - 345633) := by decide
  have heq : (345636 : ZMod 131) ^ 13 = (345633 : ZMod 131) ^ 13 := by decide
  have hne : (345636 : ZMod 17161) ^ 13 ≠ (345633 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 345636 := by decide
  have hB : ¬ 131 ∣ 345633 := by decide
  have hexp :=
    has_exp_one_of_zmod 345633 345636 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 345633 345636 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 345633 345636 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      345633 345636 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      345633 345636 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_345954_345957 :
    HasPrimeWithExpOne (S_val 345954 345957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345954 345957 ∧ ¬ p ∣ (345957 - 345954) ∧
      ∃ (hNotC : ¬ p ∣ 345957) (hNotB : ¬ p ∣ 345954),
        order_of_C_B_inv_mod_p2 345957 345954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 345954 345957 := by
  have hlt : (345954 : Nat) < 345957 := by decide
  have hcop : ¬ 79 ∣ (345957 - 345954) := by decide
  have heq : (345957 : ZMod 79) ^ 13 = (345954 : ZMod 79) ^ 13 := by decide
  have hne : (345957 : ZMod 6241) ^ 13 ≠ (345954 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 345957 := by decide
  have hB : ¬ 79 ∣ 345954 := by decide
  have hexp :=
    has_exp_one_of_zmod 345954 345957 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 345954 345957 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 345954 345957 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      345954 345957 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      345954 345957 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_346301_346304 :
    HasPrimeWithExpOne (S_val 346301 346304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346301 346304 ∧ ¬ p ∣ (346304 - 346301) ∧
      ∃ (hNotC : ¬ p ∣ 346304) (hNotB : ¬ p ∣ 346301),
        order_of_C_B_inv_mod_p2 346304 346301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 346301 346304 := by
  have hlt : (346301 : Nat) < 346304 := by decide
  have hcop : ¬ 131 ∣ (346304 - 346301) := by decide
  have heq : (346304 : ZMod 131) ^ 13 = (346301 : ZMod 131) ^ 13 := by decide
  have hne : (346304 : ZMod 17161) ^ 13 ≠ (346301 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 346304 := by decide
  have hB : ¬ 131 ∣ 346301 := by decide
  have hexp :=
    has_exp_one_of_zmod 346301 346304 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 346301 346304 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 346301 346304 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      346301 346304 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      346301 346304 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_346657_346660 :
    HasPrimeWithExpOne (S_val 346657 346660) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346657 346660 ∧ ¬ p ∣ (346660 - 346657) ∧
      ∃ (hNotC : ¬ p ∣ 346660) (hNotB : ¬ p ∣ 346657),
        order_of_C_B_inv_mod_p2 346660 346657 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 346657 346660 := by
  have hlt : (346657 : Nat) < 346660 := by decide
  have hcop : ¬ 53 ∣ (346660 - 346657) := by decide
  have heq : (346660 : ZMod 53) ^ 13 = (346657 : ZMod 53) ^ 13 := by decide
  have hne : (346660 : ZMod 2809) ^ 13 ≠ (346657 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 346660 := by decide
  have hB : ¬ 53 ∣ 346657 := by decide
  have hexp :=
    has_exp_one_of_zmod 346657 346660 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 346657 346660 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 346657 346660 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      346657 346660 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      346657 346660 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_346996_346999 :
    HasPrimeWithExpOne (S_val 346996 346999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346996 346999 ∧ ¬ p ∣ (346999 - 346996) ∧
      ∃ (hNotC : ¬ p ∣ 346999) (hNotB : ¬ p ∣ 346996),
        order_of_C_B_inv_mod_p2 346999 346996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 346996 346999 := by
  have hlt : (346996 : Nat) < 346999 := by decide
  have hcop : ¬ 53 ∣ (346999 - 346996) := by decide
  have heq : (346999 : ZMod 53) ^ 13 = (346996 : ZMod 53) ^ 13 := by decide
  have hne : (346999 : ZMod 2809) ^ 13 ≠ (346996 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 346999 := by decide
  have hB : ¬ 53 ∣ 346996 := by decide
  have hexp :=
    has_exp_one_of_zmod 346996 346999 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 346996 346999 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 346996 346999 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      346996 346999 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      346996 346999 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_347347_347350 :
    HasPrimeWithExpOne (S_val 347347 347350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 347347 347350 ∧ ¬ p ∣ (347350 - 347347) ∧
      ∃ (hNotC : ¬ p ∣ 347350) (hNotB : ¬ p ∣ 347347),
        order_of_C_B_inv_mod_p2 347350 347347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 347347 347350 := by
  have hlt : (347347 : Nat) < 347350 := by decide
  have hcop : ¬ 79 ∣ (347350 - 347347) := by decide
  have heq : (347350 : ZMod 79) ^ 13 = (347347 : ZMod 79) ^ 13 := by decide
  have hne : (347350 : ZMod 6241) ^ 13 ≠ (347347 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 347350 := by decide
  have hB : ¬ 79 ∣ 347347 := by decide
  have hexp :=
    has_exp_one_of_zmod 347347 347350 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 347347 347350 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 347347 347350 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      347347 347350 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      347347 347350 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_347692_347695 :
    HasPrimeWithExpOne (S_val 347692 347695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 347692 347695 ∧ ¬ p ∣ (347695 - 347692) ∧
      ∃ (hNotC : ¬ p ∣ 347695) (hNotB : ¬ p ∣ 347692),
        order_of_C_B_inv_mod_p2 347695 347692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 347692 347695 := by
  have hlt : (347692 : Nat) < 347695 := by decide
  have hcop : ¬ 79 ∣ (347695 - 347692) := by decide
  have heq : (347695 : ZMod 79) ^ 13 = (347692 : ZMod 79) ^ 13 := by decide
  have hne : (347695 : ZMod 6241) ^ 13 ≠ (347692 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 347695 := by decide
  have hB : ¬ 79 ∣ 347692 := by decide
  have hexp :=
    has_exp_one_of_zmod 347692 347695 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 347692 347695 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 347692 347695 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      347692 347695 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      347692 347695 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_348037_348040 :
    HasPrimeWithExpOne (S_val 348037 348040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348037 348040 ∧ ¬ p ∣ (348040 - 348037) ∧
      ∃ (hNotC : ¬ p ∣ 348040) (hNotB : ¬ p ∣ 348037),
        order_of_C_B_inv_mod_p2 348040 348037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 348037 348040 := by
  have hlt : (348037 : Nat) < 348040 := by decide
  have hcop : ¬ 79 ∣ (348040 - 348037) := by decide
  have heq : (348040 : ZMod 79) ^ 13 = (348037 : ZMod 79) ^ 13 := by decide
  have hne : (348040 : ZMod 6241) ^ 13 ≠ (348037 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 348040 := by decide
  have hB : ¬ 79 ∣ 348037 := by decide
  have hexp :=
    has_exp_one_of_zmod 348037 348040 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 348037 348040 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 348037 348040 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      348037 348040 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      348037 348040 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_348369_348372 :
    HasPrimeWithExpOne (S_val 348369 348372) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348369 348372 ∧ ¬ p ∣ (348372 - 348369) ∧
      ∃ (hNotC : ¬ p ∣ 348372) (hNotB : ¬ p ∣ 348369),
        order_of_C_B_inv_mod_p2 348372 348369 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 348369 348372 := by
  have hlt : (348369 : Nat) < 348372 := by decide
  have hcop : ¬ 79 ∣ (348372 - 348369) := by decide
  have heq : (348372 : ZMod 79) ^ 13 = (348369 : ZMod 79) ^ 13 := by decide
  have hne : (348372 : ZMod 6241) ^ 13 ≠ (348369 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 348372 := by decide
  have hB : ¬ 79 ∣ 348369 := by decide
  have hexp :=
    has_exp_one_of_zmod 348369 348372 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 348369 348372 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 348369 348372 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      348369 348372 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      348369 348372 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_348718_348721 :
    HasPrimeWithExpOne (S_val 348718 348721) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348718 348721 ∧ ¬ p ∣ (348721 - 348718) ∧
      ∃ (hNotC : ¬ p ∣ 348721) (hNotB : ¬ p ∣ 348718),
        order_of_C_B_inv_mod_p2 348721 348718 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 348718 348721 := by
  have hlt : (348718 : Nat) < 348721 := by decide
  have hcop : ¬ 79 ∣ (348721 - 348718) := by decide
  have heq : (348721 : ZMod 79) ^ 13 = (348718 : ZMod 79) ^ 13 := by decide
  have hne : (348721 : ZMod 6241) ^ 13 ≠ (348718 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 348721 := by decide
  have hB : ¬ 79 ∣ 348718 := by decide
  have hexp :=
    has_exp_one_of_zmod 348718 348721 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 348718 348721 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 348718 348721 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      348718 348721 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      348718 348721 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_349038_349041 :
    HasPrimeWithExpOne (S_val 349038 349041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349038 349041 ∧ ¬ p ∣ (349041 - 349038) ∧
      ∃ (hNotC : ¬ p ∣ 349041) (hNotB : ¬ p ∣ 349038),
        order_of_C_B_inv_mod_p2 349041 349038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 349038 349041 := by
  have hlt : (349038 : Nat) < 349041 := by decide
  have hcop : ¬ 131 ∣ (349041 - 349038) := by decide
  have heq : (349041 : ZMod 131) ^ 13 = (349038 : ZMod 131) ^ 13 := by decide
  have hne : (349041 : ZMod 17161) ^ 13 ≠ (349038 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 349041 := by decide
  have hB : ¬ 131 ∣ 349038 := by decide
  have hexp :=
    has_exp_one_of_zmod 349038 349041 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 349038 349041 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 349038 349041 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      349038 349041 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      349038 349041 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_349358_349361 :
    HasPrimeWithExpOne (S_val 349358 349361) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349358 349361 ∧ ¬ p ∣ (349361 - 349358) ∧
      ∃ (hNotC : ¬ p ∣ 349361) (hNotB : ¬ p ∣ 349358),
        order_of_C_B_inv_mod_p2 349361 349358 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 349358 349361 := by
  have hlt : (349358 : Nat) < 349361 := by decide
  have hcop : ¬ 157 ∣ (349361 - 349358) := by decide
  have heq : (349361 : ZMod 157) ^ 13 = (349358 : ZMod 157) ^ 13 := by decide
  have hne : (349361 : ZMod 24649) ^ 13 ≠ (349358 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 349361 := by decide
  have hB : ¬ 157 ∣ 349358 := by decide
  have hexp :=
    has_exp_one_of_zmod 349358 349361 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 349358 349361 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 349358 349361 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      349358 349361 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      349358 349361 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_349685_349688 :
    HasPrimeWithExpOne (S_val 349685 349688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349685 349688 ∧ ¬ p ∣ (349688 - 349685) ∧
      ∃ (hNotC : ¬ p ∣ 349688) (hNotB : ¬ p ∣ 349685),
        order_of_C_B_inv_mod_p2 349688 349685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 349685 349688 := by
  have hlt : (349685 : Nat) < 349688 := by decide
  have hcop : ¬ 53 ∣ (349688 - 349685) := by decide
  have heq : (349688 : ZMod 53) ^ 13 = (349685 : ZMod 53) ^ 13 := by decide
  have hne : (349688 : ZMod 2809) ^ 13 ≠ (349685 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 349688 := by decide
  have hB : ¬ 53 ∣ 349685 := by decide
  have hexp :=
    has_exp_one_of_zmod 349685 349688 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 349685 349688 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 349685 349688 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      349685 349688 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      349685 349688 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_350011_350014 :
    HasPrimeWithExpOne (S_val 350011 350014) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350011 350014 ∧ ¬ p ∣ (350014 - 350011) ∧
      ∃ (hNotC : ¬ p ∣ 350014) (hNotB : ¬ p ∣ 350011),
        order_of_C_B_inv_mod_p2 350014 350011 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350011 350014 := by
  have hlt : (350011 : Nat) < 350014 := by decide
  have hcop : ¬ 313 ∣ (350014 - 350011) := by decide
  have heq : (350014 : ZMod 313) ^ 13 = (350011 : ZMod 313) ^ 13 := by decide
  have hne : (350014 : ZMod 97969) ^ 13 ≠ (350011 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 350014 := by decide
  have hB : ¬ 313 ∣ 350011 := by decide
  have hexp :=
    has_exp_one_of_zmod 350011 350014 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 350011 350014 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 350011 350014 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      350011 350014 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      350011 350014 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_350344_350347 :
    HasPrimeWithExpOne (S_val 350344 350347) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350344 350347 ∧ ¬ p ∣ (350347 - 350344) ∧
      ∃ (hNotC : ¬ p ∣ 350347) (hNotB : ¬ p ∣ 350344),
        order_of_C_B_inv_mod_p2 350347 350344 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350344 350347 := by
  have hlt : (350344 : Nat) < 350347 := by decide
  have hcop : ¬ 79 ∣ (350347 - 350344) := by decide
  have heq : (350347 : ZMod 79) ^ 13 = (350344 : ZMod 79) ^ 13 := by decide
  have hne : (350347 : ZMod 6241) ^ 13 ≠ (350344 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 350347 := by decide
  have hB : ¬ 79 ∣ 350344 := by decide
  have hexp :=
    has_exp_one_of_zmod 350344 350347 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 350344 350347 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 350344 350347 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      350344 350347 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      350344 350347 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_350685_350688 :
    HasPrimeWithExpOne (S_val 350685 350688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350685 350688 ∧ ¬ p ∣ (350688 - 350685) ∧
      ∃ (hNotC : ¬ p ∣ 350688) (hNotB : ¬ p ∣ 350685),
        order_of_C_B_inv_mod_p2 350688 350685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 350685 350688 := by
  have hlt : (350685 : Nat) < 350688 := by decide
  have hcop : ¬ 53 ∣ (350688 - 350685) := by decide
  have heq : (350688 : ZMod 53) ^ 13 = (350685 : ZMod 53) ^ 13 := by decide
  have hne : (350688 : ZMod 2809) ^ 13 ≠ (350685 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 350688 := by decide
  have hB : ¬ 53 ∣ 350685 := by decide
  have hexp :=
    has_exp_one_of_zmod 350685 350688 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 350685 350688 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 350685 350688 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      350685 350688 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      350685 350688 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_351017_351020 :
    HasPrimeWithExpOne (S_val 351017 351020) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351017 351020 ∧ ¬ p ∣ (351020 - 351017) ∧
      ∃ (hNotC : ¬ p ∣ 351020) (hNotB : ¬ p ∣ 351017),
        order_of_C_B_inv_mod_p2 351020 351017 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 351017 351020 := by
  have hlt : (351017 : Nat) < 351020 := by decide
  have hcop : ¬ 131 ∣ (351020 - 351017) := by decide
  have heq : (351020 : ZMod 131) ^ 13 = (351017 : ZMod 131) ^ 13 := by decide
  have hne : (351020 : ZMod 17161) ^ 13 ≠ (351017 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 351020 := by decide
  have hB : ¬ 131 ∣ 351017 := by decide
  have hexp :=
    has_exp_one_of_zmod 351017 351020 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 351017 351020 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 351017 351020 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      351017 351020 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      351017 351020 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_351347_351350 :
    HasPrimeWithExpOne (S_val 351347 351350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351347 351350 ∧ ¬ p ∣ (351350 - 351347) ∧
      ∃ (hNotC : ¬ p ∣ 351350) (hNotB : ¬ p ∣ 351347),
        order_of_C_B_inv_mod_p2 351350 351347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 351347 351350 := by
  have hlt : (351347 : Nat) < 351350 := by decide
  have hcop : ¬ 53 ∣ (351350 - 351347) := by decide
  have heq : (351350 : ZMod 53) ^ 13 = (351347 : ZMod 53) ^ 13 := by decide
  have hne : (351350 : ZMod 2809) ^ 13 ≠ (351347 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 351350 := by decide
  have hB : ¬ 53 ∣ 351347 := by decide
  have hexp :=
    has_exp_one_of_zmod 351347 351350 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 351347 351350 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 351347 351350 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      351347 351350 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      351347 351350 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_351710_351713 :
    HasPrimeWithExpOne (S_val 351710 351713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351710 351713 ∧ ¬ p ∣ (351713 - 351710) ∧
      ∃ (hNotC : ¬ p ∣ 351713) (hNotB : ¬ p ∣ 351710),
        order_of_C_B_inv_mod_p2 351713 351710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 351710 351713 := by
  have hlt : (351710 : Nat) < 351713 := by decide
  have hcop : ¬ 443 ∣ (351713 - 351710) := by decide
  have heq : (351713 : ZMod 443) ^ 13 = (351710 : ZMod 443) ^ 13 := by decide
  have hne : (351713 : ZMod 196249) ^ 13 ≠ (351710 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 351713 := by decide
  have hB : ¬ 443 ∣ 351710 := by decide
  have hexp :=
    has_exp_one_of_zmod 351710 351713 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 351710 351713 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 351710 351713 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      351710 351713 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      351710 351713 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_352036_352039 :
    HasPrimeWithExpOne (S_val 352036 352039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352036 352039 ∧ ¬ p ∣ (352039 - 352036) ∧
      ∃ (hNotC : ¬ p ∣ 352039) (hNotB : ¬ p ∣ 352036),
        order_of_C_B_inv_mod_p2 352039 352036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 352036 352039 := by
  have hlt : (352036 : Nat) < 352039 := by decide
  have hcop : ¬ 53 ∣ (352039 - 352036) := by decide
  have heq : (352039 : ZMod 53) ^ 13 = (352036 : ZMod 53) ^ 13 := by decide
  have hne : (352039 : ZMod 2809) ^ 13 ≠ (352036 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 352039 := by decide
  have hB : ¬ 53 ∣ 352036 := by decide
  have hexp :=
    has_exp_one_of_zmod 352036 352039 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 352036 352039 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 352036 352039 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      352036 352039 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      352036 352039 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_352363_352366 :
    HasPrimeWithExpOne (S_val 352363 352366) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352363 352366 ∧ ¬ p ∣ (352366 - 352363) ∧
      ∃ (hNotC : ¬ p ∣ 352366) (hNotB : ¬ p ∣ 352363),
        order_of_C_B_inv_mod_p2 352366 352363 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 352363 352366 := by
  have hlt : (352363 : Nat) < 352366 := by decide
  have hcop : ¬ 79 ∣ (352366 - 352363) := by decide
  have heq : (352366 : ZMod 79) ^ 13 = (352363 : ZMod 79) ^ 13 := by decide
  have hne : (352366 : ZMod 6241) ^ 13 ≠ (352363 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 352366 := by decide
  have hB : ¬ 79 ∣ 352363 := by decide
  have hexp :=
    has_exp_one_of_zmod 352363 352366 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 352363 352366 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 352363 352366 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      352363 352366 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      352363 352366 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_352707_352710 :
    HasPrimeWithExpOne (S_val 352707 352710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352707 352710 ∧ ¬ p ∣ (352710 - 352707) ∧
      ∃ (hNotC : ¬ p ∣ 352710) (hNotB : ¬ p ∣ 352707),
        order_of_C_B_inv_mod_p2 352710 352707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 352707 352710 := by
  have hlt : (352707 : Nat) < 352710 := by decide
  have hcop : ¬ 53 ∣ (352710 - 352707) := by decide
  have heq : (352710 : ZMod 53) ^ 13 = (352707 : ZMod 53) ^ 13 := by decide
  have hne : (352710 : ZMod 2809) ^ 13 ≠ (352707 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 352710 := by decide
  have hB : ¬ 53 ∣ 352707 := by decide
  have hexp :=
    has_exp_one_of_zmod 352707 352710 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 352707 352710 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 352707 352710 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      352707 352710 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      352707 352710 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_353030_353033 :
    HasPrimeWithExpOne (S_val 353030 353033) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353030 353033 ∧ ¬ p ∣ (353033 - 353030) ∧
      ∃ (hNotC : ¬ p ∣ 353033) (hNotB : ¬ p ∣ 353030),
        order_of_C_B_inv_mod_p2 353033 353030 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 353030 353033 := by
  have hlt : (353030 : Nat) < 353033 := by decide
  have hcop : ¬ 79 ∣ (353033 - 353030) := by decide
  have heq : (353033 : ZMod 79) ^ 13 = (353030 : ZMod 79) ^ 13 := by decide
  have hne : (353033 : ZMod 6241) ^ 13 ≠ (353030 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 353033 := by decide
  have hB : ¬ 79 ∣ 353030 := by decide
  have hexp :=
    has_exp_one_of_zmod 353030 353033 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 353030 353033 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 353030 353033 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      353030 353033 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      353030 353033 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_353364_353367 :
    HasPrimeWithExpOne (S_val 353364 353367) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353364 353367 ∧ ¬ p ∣ (353367 - 353364) ∧
      ∃ (hNotC : ¬ p ∣ 353367) (hNotB : ¬ p ∣ 353364),
        order_of_C_B_inv_mod_p2 353367 353364 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 353364 353367 := by
  have hlt : (353364 : Nat) < 353367 := by decide
  have hcop : ¬ 53 ∣ (353367 - 353364) := by decide
  have heq : (353367 : ZMod 53) ^ 13 = (353364 : ZMod 53) ^ 13 := by decide
  have hne : (353367 : ZMod 2809) ^ 13 ≠ (353364 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 353367 := by decide
  have hB : ¬ 53 ∣ 353364 := by decide
  have hexp :=
    has_exp_one_of_zmod 353364 353367 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 353364 353367 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 353364 353367 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      353364 353367 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      353364 353367 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_353696_353699 :
    HasPrimeWithExpOne (S_val 353696 353699) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353696 353699 ∧ ¬ p ∣ (353699 - 353696) ∧
      ∃ (hNotC : ¬ p ∣ 353699) (hNotB : ¬ p ∣ 353696),
        order_of_C_B_inv_mod_p2 353699 353696 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 353696 353699 := by
  have hlt : (353696 : Nat) < 353699 := by decide
  have hcop : ¬ 79 ∣ (353699 - 353696) := by decide
  have heq : (353699 : ZMod 79) ^ 13 = (353696 : ZMod 79) ^ 13 := by decide
  have hne : (353699 : ZMod 6241) ^ 13 ≠ (353696 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 353699 := by decide
  have hB : ¬ 79 ∣ 353696 := by decide
  have hexp :=
    has_exp_one_of_zmod 353696 353699 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 353696 353699 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 353696 353699 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      353696 353699 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      353696 353699 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_354037_354040 :
    HasPrimeWithExpOne (S_val 354037 354040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354037 354040 ∧ ¬ p ∣ (354040 - 354037) ∧
      ∃ (hNotC : ¬ p ∣ 354040) (hNotB : ¬ p ∣ 354037),
        order_of_C_B_inv_mod_p2 354040 354037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 354037 354040 := by
  have hlt : (354037 : Nat) < 354040 := by decide
  have hcop : ¬ 521 ∣ (354040 - 354037) := by decide
  have heq : (354040 : ZMod 521) ^ 13 = (354037 : ZMod 521) ^ 13 := by decide
  have hne : (354040 : ZMod 271441) ^ 13 ≠ (354037 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 354040 := by decide
  have hB : ¬ 521 ∣ 354037 := by decide
  have hexp :=
    has_exp_one_of_zmod 354037 354040 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 354037 354040 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 354037 354040 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      354037 354040 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      354037 354040 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_354392_354395 :
    HasPrimeWithExpOne (S_val 354392 354395) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354392 354395 ∧ ¬ p ∣ (354395 - 354392) ∧
      ∃ (hNotC : ¬ p ∣ 354395) (hNotB : ¬ p ∣ 354392),
        order_of_C_B_inv_mod_p2 354395 354392 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 354392 354395 := by
  have hlt : (354392 : Nat) < 354395 := by decide
  have hcop : ¬ 443 ∣ (354395 - 354392) := by decide
  have heq : (354395 : ZMod 443) ^ 13 = (354392 : ZMod 443) ^ 13 := by decide
  have hne : (354395 : ZMod 196249) ^ 13 ≠ (354392 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 354395 := by decide
  have hB : ¬ 443 ∣ 354392 := by decide
  have hexp :=
    has_exp_one_of_zmod 354392 354395 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 354392 354395 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 354392 354395 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      354392 354395 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      354392 354395 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_354722_354725 :
    HasPrimeWithExpOne (S_val 354722 354725) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354722 354725 ∧ ¬ p ∣ (354725 - 354722) ∧
      ∃ (hNotC : ¬ p ∣ 354725) (hNotB : ¬ p ∣ 354722),
        order_of_C_B_inv_mod_p2 354725 354722 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 354722 354725 := by
  have hlt : (354722 : Nat) < 354725 := by decide
  have hcop : ¬ 53 ∣ (354725 - 354722) := by decide
  have heq : (354725 : ZMod 53) ^ 13 = (354722 : ZMod 53) ^ 13 := by decide
  have hne : (354725 : ZMod 2809) ^ 13 ≠ (354722 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 354725 := by decide
  have hB : ¬ 53 ∣ 354722 := by decide
  have hexp :=
    has_exp_one_of_zmod 354722 354725 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 354722 354725 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 354722 354725 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      354722 354725 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      354722 354725 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_355053_355056 :
    HasPrimeWithExpOne (S_val 355053 355056) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355053 355056 ∧ ¬ p ∣ (355056 - 355053) ∧
      ∃ (hNotC : ¬ p ∣ 355056) (hNotB : ¬ p ∣ 355053),
        order_of_C_B_inv_mod_p2 355056 355053 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 355053 355056 := by
  have hlt : (355053 : Nat) < 355056 := by decide
  have hcop : ¬ 53 ∣ (355056 - 355053) := by decide
  have heq : (355056 : ZMod 53) ^ 13 = (355053 : ZMod 53) ^ 13 := by decide
  have hne : (355056 : ZMod 2809) ^ 13 ≠ (355053 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 355056 := by decide
  have hB : ¬ 53 ∣ 355053 := by decide
  have hexp :=
    has_exp_one_of_zmod 355053 355056 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 355053 355056 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 355053 355056 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      355053 355056 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      355053 355056 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_355397_355400 :
    HasPrimeWithExpOne (S_val 355397 355400) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355397 355400 ∧ ¬ p ∣ (355400 - 355397) ∧
      ∃ (hNotC : ¬ p ∣ 355400) (hNotB : ¬ p ∣ 355397),
        order_of_C_B_inv_mod_p2 355400 355397 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 355397 355400 := by
  have hlt : (355397 : Nat) < 355400 := by decide
  have hcop : ¬ 53 ∣ (355400 - 355397) := by decide
  have heq : (355400 : ZMod 53) ^ 13 = (355397 : ZMod 53) ^ 13 := by decide
  have hne : (355400 : ZMod 2809) ^ 13 ≠ (355397 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 355400 := by decide
  have hB : ¬ 53 ∣ 355397 := by decide
  have hexp :=
    has_exp_one_of_zmod 355397 355400 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 355397 355400 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 355397 355400 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      355397 355400 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      355397 355400 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_355727_355730 :
    HasPrimeWithExpOne (S_val 355727 355730) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355727 355730 ∧ ¬ p ∣ (355730 - 355727) ∧
      ∃ (hNotC : ¬ p ∣ 355730) (hNotB : ¬ p ∣ 355727),
        order_of_C_B_inv_mod_p2 355730 355727 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 355727 355730 := by
  have hlt : (355727 : Nat) < 355730 := by decide
  have hcop : ¬ 53 ∣ (355730 - 355727) := by decide
  have heq : (355730 : ZMod 53) ^ 13 = (355727 : ZMod 53) ^ 13 := by decide
  have hne : (355730 : ZMod 2809) ^ 13 ≠ (355727 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 355730 := by decide
  have hB : ¬ 53 ∣ 355727 := by decide
  have hexp :=
    has_exp_one_of_zmod 355727 355730 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 355727 355730 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 355727 355730 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      355727 355730 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      355727 355730 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_356065_356068 :
    HasPrimeWithExpOne (S_val 356065 356068) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356065 356068 ∧ ¬ p ∣ (356068 - 356065) ∧
      ∃ (hNotC : ¬ p ∣ 356068) (hNotB : ¬ p ∣ 356065),
        order_of_C_B_inv_mod_p2 356068 356065 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 356065 356068 := by
  have hlt : (356065 : Nat) < 356068 := by decide
  have hcop : ¬ 79 ∣ (356068 - 356065) := by decide
  have heq : (356068 : ZMod 79) ^ 13 = (356065 : ZMod 79) ^ 13 := by decide
  have hne : (356068 : ZMod 6241) ^ 13 ≠ (356065 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 356068 := by decide
  have hB : ¬ 79 ∣ 356065 := by decide
  have hexp :=
    has_exp_one_of_zmod 356065 356068 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 356065 356068 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 356065 356068 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      356065 356068 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      356065 356068 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_356410_356413 :
    HasPrimeWithExpOne (S_val 356410 356413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356410 356413 ∧ ¬ p ∣ (356413 - 356410) ∧
      ∃ (hNotC : ¬ p ∣ 356413) (hNotB : ¬ p ∣ 356410),
        order_of_C_B_inv_mod_p2 356413 356410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 356410 356413 := by
  have hlt : (356410 : Nat) < 356413 := by decide
  have hcop : ¬ 131 ∣ (356413 - 356410) := by decide
  have heq : (356413 : ZMod 131) ^ 13 = (356410 : ZMod 131) ^ 13 := by decide
  have hne : (356413 : ZMod 17161) ^ 13 ≠ (356410 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 356413 := by decide
  have hB : ¬ 131 ∣ 356410 := by decide
  have hexp :=
    has_exp_one_of_zmod 356410 356413 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 356410 356413 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 356410 356413 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      356410 356413 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      356410 356413 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_356750_356753 :
    HasPrimeWithExpOne (S_val 356750 356753) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356750 356753 ∧ ¬ p ∣ (356753 - 356750) ∧
      ∃ (hNotC : ¬ p ∣ 356753) (hNotB : ¬ p ∣ 356750),
        order_of_C_B_inv_mod_p2 356753 356750 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 356750 356753 := by
  have hlt : (356750 : Nat) < 356753 := by decide
  have hcop : ¬ 521 ∣ (356753 - 356750) := by decide
  have heq : (356753 : ZMod 521) ^ 13 = (356750 : ZMod 521) ^ 13 := by decide
  have hne : (356753 : ZMod 271441) ^ 13 ≠ (356750 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 356753 := by decide
  have hB : ¬ 521 ∣ 356750 := by decide
  have hexp :=
    has_exp_one_of_zmod 356750 356753 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 356750 356753 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 356750 356753 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      356750 356753 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      356750 356753 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_357088_357091 :
    HasPrimeWithExpOne (S_val 357088 357091) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357088 357091 ∧ ¬ p ∣ (357091 - 357088) ∧
      ∃ (hNotC : ¬ p ∣ 357091) (hNotB : ¬ p ∣ 357088),
        order_of_C_B_inv_mod_p2 357091 357088 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 357088 357091 := by
  have hlt : (357088 : Nat) < 357091 := by decide
  have hcop : ¬ 157 ∣ (357091 - 357088) := by decide
  have heq : (357091 : ZMod 157) ^ 13 = (357088 : ZMod 157) ^ 13 := by decide
  have hne : (357091 : ZMod 24649) ^ 13 ≠ (357088 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 357091 := by decide
  have hB : ¬ 157 ∣ 357088 := by decide
  have hexp :=
    has_exp_one_of_zmod 357088 357091 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 357088 357091 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 357088 357091 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      357088 357091 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      357088 357091 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_357441_357444 :
    HasPrimeWithExpOne (S_val 357441 357444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357441 357444 ∧ ¬ p ∣ (357444 - 357441) ∧
      ∃ (hNotC : ¬ p ∣ 357444) (hNotB : ¬ p ∣ 357441),
        order_of_C_B_inv_mod_p2 357444 357441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 357441 357444 := by
  have hlt : (357441 : Nat) < 357444 := by decide
  have hcop : ¬ 131 ∣ (357444 - 357441) := by decide
  have heq : (357444 : ZMod 131) ^ 13 = (357441 : ZMod 131) ^ 13 := by decide
  have hne : (357444 : ZMod 17161) ^ 13 ≠ (357441 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 357444 := by decide
  have hB : ¬ 131 ∣ 357441 := by decide
  have hexp :=
    has_exp_one_of_zmod 357441 357444 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 357441 357444 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 357441 357444 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      357441 357444 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      357441 357444 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_357773_357776 :
    HasPrimeWithExpOne (S_val 357773 357776) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357773 357776 ∧ ¬ p ∣ (357776 - 357773) ∧
      ∃ (hNotC : ¬ p ∣ 357776) (hNotB : ¬ p ∣ 357773),
        order_of_C_B_inv_mod_p2 357776 357773 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 357773 357776 := by
  have hlt : (357773 : Nat) < 357776 := by decide
  have hcop : ¬ 313 ∣ (357776 - 357773) := by decide
  have heq : (357776 : ZMod 313) ^ 13 = (357773 : ZMod 313) ^ 13 := by decide
  have hne : (357776 : ZMod 97969) ^ 13 ≠ (357773 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 357776 := by decide
  have hB : ¬ 313 ∣ 357773 := by decide
  have hexp :=
    has_exp_one_of_zmod 357773 357776 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 357773 357776 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 357773 357776 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      357773 357776 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      357773 357776 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_358096_358099 :
    HasPrimeWithExpOne (S_val 358096 358099) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358096 358099 ∧ ¬ p ∣ (358099 - 358096) ∧
      ∃ (hNotC : ¬ p ∣ 358099) (hNotB : ¬ p ∣ 358096),
        order_of_C_B_inv_mod_p2 358099 358096 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 358096 358099 := by
  have hlt : (358096 : Nat) < 358099 := by decide
  have hcop : ¬ 131 ∣ (358099 - 358096) := by decide
  have heq : (358099 : ZMod 131) ^ 13 = (358096 : ZMod 131) ^ 13 := by decide
  have hne : (358099 : ZMod 17161) ^ 13 ≠ (358096 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 358099 := by decide
  have hB : ¬ 131 ∣ 358096 := by decide
  have hexp :=
    has_exp_one_of_zmod 358096 358099 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 358096 358099 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 358096 358099 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      358096 358099 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      358096 358099 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_358433_358436 :
    HasPrimeWithExpOne (S_val 358433 358436) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358433 358436 ∧ ¬ p ∣ (358436 - 358433) ∧
      ∃ (hNotC : ¬ p ∣ 358436) (hNotB : ¬ p ∣ 358433),
        order_of_C_B_inv_mod_p2 358436 358433 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 358433 358436 := by
  have hlt : (358433 : Nat) < 358436 := by decide
  have hcop : ¬ 547 ∣ (358436 - 358433) := by decide
  have heq : (358436 : ZMod 547) ^ 13 = (358433 : ZMod 547) ^ 13 := by decide
  have hne : (358436 : ZMod 299209) ^ 13 ≠ (358433 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 358436 := by decide
  have hB : ¬ 547 ∣ 358433 := by decide
  have hexp :=
    has_exp_one_of_zmod 358433 358436 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 358433 358436 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 358433 358436 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      358433 358436 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      358433 358436 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_358763_358766 :
    HasPrimeWithExpOne (S_val 358763 358766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358763 358766 ∧ ¬ p ∣ (358766 - 358763) ∧
      ∃ (hNotC : ¬ p ∣ 358766) (hNotB : ¬ p ∣ 358763),
        order_of_C_B_inv_mod_p2 358766 358763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 358763 358766 := by
  have hlt : (358763 : Nat) < 358766 := by decide
  have hcop : ¬ 53 ∣ (358766 - 358763) := by decide
  have heq : (358766 : ZMod 53) ^ 13 = (358763 : ZMod 53) ^ 13 := by decide
  have hne : (358766 : ZMod 2809) ^ 13 ≠ (358763 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 358766 := by decide
  have hB : ¬ 53 ∣ 358763 := by decide
  have hexp :=
    has_exp_one_of_zmod 358763 358766 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 358763 358766 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 358763 358766 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      358763 358766 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      358763 358766 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_359107_359110 :
    HasPrimeWithExpOne (S_val 359107 359110) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359107 359110 ∧ ¬ p ∣ (359110 - 359107) ∧
      ∃ (hNotC : ¬ p ∣ 359110) (hNotB : ¬ p ∣ 359107),
        order_of_C_B_inv_mod_p2 359110 359107 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 359107 359110 := by
  have hlt : (359107 : Nat) < 359110 := by decide
  have hcop : ¬ 53 ∣ (359110 - 359107) := by decide
  have heq : (359110 : ZMod 53) ^ 13 = (359107 : ZMod 53) ^ 13 := by decide
  have hne : (359110 : ZMod 2809) ^ 13 ≠ (359107 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 359110 := by decide
  have hB : ¬ 53 ∣ 359107 := by decide
  have hexp :=
    has_exp_one_of_zmod 359107 359110 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 359107 359110 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 359107 359110 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      359107 359110 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      359107 359110 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_359423_359426 :
    HasPrimeWithExpOne (S_val 359423 359426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359423 359426 ∧ ¬ p ∣ (359426 - 359423) ∧
      ∃ (hNotC : ¬ p ∣ 359426) (hNotB : ¬ p ∣ 359423),
        order_of_C_B_inv_mod_p2 359426 359423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 359423 359426 := by
  have hlt : (359423 : Nat) < 359426 := by decide
  have hcop : ¬ 131 ∣ (359426 - 359423) := by decide
  have heq : (359426 : ZMod 131) ^ 13 = (359423 : ZMod 131) ^ 13 := by decide
  have hne : (359426 : ZMod 17161) ^ 13 ≠ (359423 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 359426 := by decide
  have hB : ¬ 131 ∣ 359423 := by decide
  have hexp :=
    has_exp_one_of_zmod 359423 359426 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 359423 359426 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 359423 359426 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      359423 359426 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      359423 359426 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_359756_359759 :
    HasPrimeWithExpOne (S_val 359756 359759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359756 359759 ∧ ¬ p ∣ (359759 - 359756) ∧
      ∃ (hNotC : ¬ p ∣ 359759) (hNotB : ¬ p ∣ 359756),
        order_of_C_B_inv_mod_p2 359759 359756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 359756 359759 := by
  have hlt : (359756 : Nat) < 359759 := by decide
  have hcop : ¬ 53 ∣ (359759 - 359756) := by decide
  have heq : (359759 : ZMod 53) ^ 13 = (359756 : ZMod 53) ^ 13 := by decide
  have hne : (359759 : ZMod 2809) ^ 13 ≠ (359756 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 359759 := by decide
  have hB : ¬ 53 ∣ 359756 := by decide
  have hexp :=
    has_exp_one_of_zmod 359756 359759 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 359756 359759 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 359756 359759 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      359756 359759 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      359756 359759 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_360095_360098 :
    HasPrimeWithExpOne (S_val 360095 360098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360095 360098 ∧ ¬ p ∣ (360098 - 360095) ∧
      ∃ (hNotC : ¬ p ∣ 360098) (hNotB : ¬ p ∣ 360095),
        order_of_C_B_inv_mod_p2 360098 360095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 360095 360098 := by
  have hlt : (360095 : Nat) < 360098 := by decide
  have hcop : ¬ 53 ∣ (360098 - 360095) := by decide
  have heq : (360098 : ZMod 53) ^ 13 = (360095 : ZMod 53) ^ 13 := by decide
  have hne : (360098 : ZMod 2809) ^ 13 ≠ (360095 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 360098 := by decide
  have hB : ¬ 53 ∣ 360095 := by decide
  have hexp :=
    has_exp_one_of_zmod 360095 360098 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 360095 360098 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 360095 360098 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      360095 360098 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      360095 360098 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_360428_360431 :
    HasPrimeWithExpOne (S_val 360428 360431) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360428 360431 ∧ ¬ p ∣ (360431 - 360428) ∧
      ∃ (hNotC : ¬ p ∣ 360431) (hNotB : ¬ p ∣ 360428),
        order_of_C_B_inv_mod_p2 360431 360428 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 360428 360431 := by
  have hlt : (360428 : Nat) < 360431 := by decide
  have hcop : ¬ 547 ∣ (360431 - 360428) := by decide
  have heq : (360431 : ZMod 547) ^ 13 = (360428 : ZMod 547) ^ 13 := by decide
  have hne : (360431 : ZMod 299209) ^ 13 ≠ (360428 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 360431 := by decide
  have hB : ¬ 547 ∣ 360428 := by decide
  have hexp :=
    has_exp_one_of_zmod 360428 360431 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 360428 360431 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 360428 360431 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      360428 360431 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      360428 360431 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_360767_360770 :
    HasPrimeWithExpOne (S_val 360767 360770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360767 360770 ∧ ¬ p ∣ (360770 - 360767) ∧
      ∃ (hNotC : ¬ p ∣ 360770) (hNotB : ¬ p ∣ 360767),
        order_of_C_B_inv_mod_p2 360770 360767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 360767 360770 := by
  have hlt : (360767 : Nat) < 360770 := by decide
  have hcop : ¬ 79 ∣ (360770 - 360767) := by decide
  have heq : (360770 : ZMod 79) ^ 13 = (360767 : ZMod 79) ^ 13 := by decide
  have hne : (360770 : ZMod 6241) ^ 13 ≠ (360767 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 360770 := by decide
  have hB : ¬ 79 ∣ 360767 := by decide
  have hexp :=
    has_exp_one_of_zmod 360767 360770 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 360767 360770 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 360767 360770 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      360767 360770 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      360767 360770 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_361110_361113 :
    HasPrimeWithExpOne (S_val 361110 361113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361110 361113 ∧ ¬ p ∣ (361113 - 361110) ∧
      ∃ (hNotC : ¬ p ∣ 361113) (hNotB : ¬ p ∣ 361110),
        order_of_C_B_inv_mod_p2 361113 361110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 361110 361113 := by
  have hlt : (361110 : Nat) < 361113 := by decide
  have hcop : ¬ 131 ∣ (361113 - 361110) := by decide
  have heq : (361113 : ZMod 131) ^ 13 = (361110 : ZMod 131) ^ 13 := by decide
  have hne : (361113 : ZMod 17161) ^ 13 ≠ (361110 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 361113 := by decide
  have hB : ¬ 131 ∣ 361110 := by decide
  have hexp :=
    has_exp_one_of_zmod 361110 361113 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 361110 361113 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 361110 361113 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      361110 361113 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      361110 361113 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_361464_361467 :
    HasPrimeWithExpOne (S_val 361464 361467) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361464 361467 ∧ ¬ p ∣ (361467 - 361464) ∧
      ∃ (hNotC : ¬ p ∣ 361467) (hNotB : ¬ p ∣ 361464),
        order_of_C_B_inv_mod_p2 361467 361464 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 361464 361467 := by
  have hlt : (361464 : Nat) < 361467 := by decide
  have hcop : ¬ 53 ∣ (361467 - 361464) := by decide
  have heq : (361467 : ZMod 53) ^ 13 = (361464 : ZMod 53) ^ 13 := by decide
  have hne : (361467 : ZMod 2809) ^ 13 ≠ (361464 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 361467 := by decide
  have hB : ¬ 53 ∣ 361464 := by decide
  have hexp :=
    has_exp_one_of_zmod 361464 361467 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 361464 361467 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 361464 361467 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      361464 361467 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      361464 361467 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_361784_361787 :
    HasPrimeWithExpOne (S_val 361784 361787) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361784 361787 ∧ ¬ p ∣ (361787 - 361784) ∧
      ∃ (hNotC : ¬ p ∣ 361787) (hNotB : ¬ p ∣ 361784),
        order_of_C_B_inv_mod_p2 361787 361784 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 361784 361787 := by
  have hlt : (361784 : Nat) < 361787 := by decide
  have hcop : ¬ 53 ∣ (361787 - 361784) := by decide
  have heq : (361787 : ZMod 53) ^ 13 = (361784 : ZMod 53) ^ 13 := by decide
  have hne : (361787 : ZMod 2809) ^ 13 ≠ (361784 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 361787 := by decide
  have hB : ¬ 53 ∣ 361784 := by decide
  have hexp :=
    has_exp_one_of_zmod 361784 361787 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 361784 361787 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 361784 361787 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      361784 361787 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      361784 361787 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_362106_362109 :
    HasPrimeWithExpOne (S_val 362106 362109) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362106 362109 ∧ ¬ p ∣ (362109 - 362106) ∧
      ∃ (hNotC : ¬ p ∣ 362109) (hNotB : ¬ p ∣ 362106),
        order_of_C_B_inv_mod_p2 362109 362106 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 362106 362109 := by
  have hlt : (362106 : Nat) < 362109 := by decide
  have hcop : ¬ 53 ∣ (362109 - 362106) := by decide
  have heq : (362109 : ZMod 53) ^ 13 = (362106 : ZMod 53) ^ 13 := by decide
  have hne : (362109 : ZMod 2809) ^ 13 ≠ (362106 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 362109 := by decide
  have hB : ¬ 53 ∣ 362106 := by decide
  have hexp :=
    has_exp_one_of_zmod 362106 362109 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 362106 362109 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 362106 362109 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      362106 362109 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      362106 362109 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_362419_362422 :
    HasPrimeWithExpOne (S_val 362419 362422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362419 362422 ∧ ¬ p ∣ (362422 - 362419) ∧
      ∃ (hNotC : ¬ p ∣ 362422) (hNotB : ¬ p ∣ 362419),
        order_of_C_B_inv_mod_p2 362422 362419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 362419 362422 := by
  have hlt : (362419 : Nat) < 362422 := by decide
  have hcop : ¬ 53 ∣ (362422 - 362419) := by decide
  have heq : (362422 : ZMod 53) ^ 13 = (362419 : ZMod 53) ^ 13 := by decide
  have hne : (362422 : ZMod 2809) ^ 13 ≠ (362419 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 362422 := by decide
  have hB : ¬ 53 ∣ 362419 := by decide
  have hexp :=
    has_exp_one_of_zmod 362419 362422 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 362419 362422 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 362419 362422 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      362419 362422 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      362419 362422 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_362750_362753 :
    HasPrimeWithExpOne (S_val 362750 362753) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362750 362753 ∧ ¬ p ∣ (362753 - 362750) ∧
      ∃ (hNotC : ¬ p ∣ 362753) (hNotB : ¬ p ∣ 362750),
        order_of_C_B_inv_mod_p2 362753 362750 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 362750 362753 := by
  have hlt : (362750 : Nat) < 362753 := by decide
  have hcop : ¬ 313 ∣ (362753 - 362750) := by decide
  have heq : (362753 : ZMod 313) ^ 13 = (362750 : ZMod 313) ^ 13 := by decide
  have hne : (362753 : ZMod 97969) ^ 13 ≠ (362750 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 362753 := by decide
  have hB : ¬ 313 ∣ 362750 := by decide
  have hexp :=
    has_exp_one_of_zmod 362750 362753 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 362750 362753 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 362750 362753 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      362750 362753 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      362750 362753 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_363097_363100 :
    HasPrimeWithExpOne (S_val 363097 363100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363097 363100 ∧ ¬ p ∣ (363100 - 363097) ∧
      ∃ (hNotC : ¬ p ∣ 363100) (hNotB : ¬ p ∣ 363097),
        order_of_C_B_inv_mod_p2 363100 363097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 363097 363100 := by
  have hlt : (363097 : Nat) < 363100 := by decide
  have hcop : ¬ 79 ∣ (363100 - 363097) := by decide
  have heq : (363100 : ZMod 79) ^ 13 = (363097 : ZMod 79) ^ 13 := by decide
  have hne : (363100 : ZMod 6241) ^ 13 ≠ (363097 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 363100 := by decide
  have hB : ¬ 79 ∣ 363097 := by decide
  have hexp :=
    has_exp_one_of_zmod 363097 363100 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 363097 363100 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 363097 363100 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      363097 363100 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      363097 363100 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_363426_363429 :
    HasPrimeWithExpOne (S_val 363426 363429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363426 363429 ∧ ¬ p ∣ (363429 - 363426) ∧
      ∃ (hNotC : ¬ p ∣ 363429) (hNotB : ¬ p ∣ 363426),
        order_of_C_B_inv_mod_p2 363429 363426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 363426 363429 := by
  have hlt : (363426 : Nat) < 363429 := by decide
  have hcop : ¬ 53 ∣ (363429 - 363426) := by decide
  have heq : (363429 : ZMod 53) ^ 13 = (363426 : ZMod 53) ^ 13 := by decide
  have hne : (363429 : ZMod 2809) ^ 13 ≠ (363426 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 363429 := by decide
  have hB : ¬ 53 ∣ 363426 := by decide
  have hexp :=
    has_exp_one_of_zmod 363426 363429 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 363426 363429 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 363426 363429 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      363426 363429 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      363426 363429 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_363776_363779 :
    HasPrimeWithExpOne (S_val 363776 363779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363776 363779 ∧ ¬ p ∣ (363779 - 363776) ∧
      ∃ (hNotC : ¬ p ∣ 363779) (hNotB : ¬ p ∣ 363776),
        order_of_C_B_inv_mod_p2 363779 363776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 363776 363779 := by
  have hlt : (363776 : Nat) < 363779 := by decide
  have hcop : ¬ 53 ∣ (363779 - 363776) := by decide
  have heq : (363779 : ZMod 53) ^ 13 = (363776 : ZMod 53) ^ 13 := by decide
  have hne : (363779 : ZMod 2809) ^ 13 ≠ (363776 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 363779 := by decide
  have hB : ¬ 53 ∣ 363776 := by decide
  have hexp :=
    has_exp_one_of_zmod 363776 363779 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 363776 363779 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 363776 363779 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      363776 363779 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      363776 363779 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_364114_364117 :
    HasPrimeWithExpOne (S_val 364114 364117) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364114 364117 ∧ ¬ p ∣ (364117 - 364114) ∧
      ∃ (hNotC : ¬ p ∣ 364117) (hNotB : ¬ p ∣ 364114),
        order_of_C_B_inv_mod_p2 364117 364114 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364114 364117 := by
  have hlt : (364114 : Nat) < 364117 := by decide
  have hcop : ¬ 53 ∣ (364117 - 364114) := by decide
  have heq : (364117 : ZMod 53) ^ 13 = (364114 : ZMod 53) ^ 13 := by decide
  have hne : (364117 : ZMod 2809) ^ 13 ≠ (364114 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 364117 := by decide
  have hB : ¬ 53 ∣ 364114 := by decide
  have hexp :=
    has_exp_one_of_zmod 364114 364117 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 364114 364117 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 364114 364117 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      364114 364117 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      364114 364117 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_364460_364463 :
    HasPrimeWithExpOne (S_val 364460 364463) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364460 364463 ∧ ¬ p ∣ (364463 - 364460) ∧
      ∃ (hNotC : ¬ p ∣ 364463) (hNotB : ¬ p ∣ 364460),
        order_of_C_B_inv_mod_p2 364463 364460 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364460 364463 := by
  have hlt : (364460 : Nat) < 364463 := by decide
  have hcop : ¬ 53 ∣ (364463 - 364460) := by decide
  have heq : (364463 : ZMod 53) ^ 13 = (364460 : ZMod 53) ^ 13 := by decide
  have hne : (364463 : ZMod 2809) ^ 13 ≠ (364460 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 364463 := by decide
  have hB : ¬ 53 ∣ 364460 := by decide
  have hexp :=
    has_exp_one_of_zmod 364460 364463 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 364460 364463 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 364460 364463 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      364460 364463 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      364460 364463 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_364789_364792 :
    HasPrimeWithExpOne (S_val 364789 364792) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364789 364792 ∧ ¬ p ∣ (364792 - 364789) ∧
      ∃ (hNotC : ¬ p ∣ 364792) (hNotB : ¬ p ∣ 364789),
        order_of_C_B_inv_mod_p2 364792 364789 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 364789 364792 := by
  have hlt : (364789 : Nat) < 364792 := by decide
  have hcop : ¬ 131 ∣ (364792 - 364789) := by decide
  have heq : (364792 : ZMod 131) ^ 13 = (364789 : ZMod 131) ^ 13 := by decide
  have hne : (364792 : ZMod 17161) ^ 13 ≠ (364789 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 364792 := by decide
  have hB : ¬ 131 ∣ 364789 := by decide
  have hexp :=
    has_exp_one_of_zmod 364789 364792 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 364789 364792 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 364789 364792 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      364789 364792 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      364789 364792 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_365127_365130 :
    HasPrimeWithExpOne (S_val 365127 365130) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365127 365130 ∧ ¬ p ∣ (365130 - 365127) ∧
      ∃ (hNotC : ¬ p ∣ 365130) (hNotB : ¬ p ∣ 365127),
        order_of_C_B_inv_mod_p2 365130 365127 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 365127 365130 := by
  have hlt : (365127 : Nat) < 365130 := by decide
  have hcop : ¬ 53 ∣ (365130 - 365127) := by decide
  have heq : (365130 : ZMod 53) ^ 13 = (365127 : ZMod 53) ^ 13 := by decide
  have hne : (365130 : ZMod 2809) ^ 13 ≠ (365127 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 365130 := by decide
  have hB : ¬ 53 ∣ 365127 := by decide
  have hexp :=
    has_exp_one_of_zmod 365127 365130 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 365127 365130 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 365127 365130 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      365127 365130 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      365127 365130 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_365467_365470 :
    HasPrimeWithExpOne (S_val 365467 365470) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365467 365470 ∧ ¬ p ∣ (365470 - 365467) ∧
      ∃ (hNotC : ¬ p ∣ 365470) (hNotB : ¬ p ∣ 365467),
        order_of_C_B_inv_mod_p2 365470 365467 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 365467 365470 := by
  have hlt : (365467 : Nat) < 365470 := by decide
  have hcop : ¬ 53 ∣ (365470 - 365467) := by decide
  have heq : (365470 : ZMod 53) ^ 13 = (365467 : ZMod 53) ^ 13 := by decide
  have hne : (365470 : ZMod 2809) ^ 13 ≠ (365467 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 365470 := by decide
  have hB : ¬ 53 ∣ 365467 := by decide
  have hexp :=
    has_exp_one_of_zmod 365467 365470 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 365467 365470 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 365467 365470 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      365467 365470 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      365467 365470 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_365810_365813 :
    HasPrimeWithExpOne (S_val 365810 365813) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365810 365813 ∧ ¬ p ∣ (365813 - 365810) ∧
      ∃ (hNotC : ¬ p ∣ 365813) (hNotB : ¬ p ∣ 365810),
        order_of_C_B_inv_mod_p2 365813 365810 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 365810 365813 := by
  have hlt : (365810 : Nat) < 365813 := by decide
  have hcop : ¬ 53 ∣ (365813 - 365810) := by decide
  have heq : (365813 : ZMod 53) ^ 13 = (365810 : ZMod 53) ^ 13 := by decide
  have hne : (365813 : ZMod 2809) ^ 13 ≠ (365810 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 365813 := by decide
  have hB : ¬ 53 ∣ 365810 := by decide
  have hexp :=
    has_exp_one_of_zmod 365810 365813 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 365810 365813 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 365810 365813 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      365810 365813 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      365810 365813 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_366100_366103 :
    HasPrimeWithExpOne (S_val 366100 366103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366100 366103 ∧ ¬ p ∣ (366103 - 366100) ∧
      ∃ (hNotC : ¬ p ∣ 366103) (hNotB : ¬ p ∣ 366100),
        order_of_C_B_inv_mod_p2 366103 366100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 366100 366103 := by
  have hlt : (366100 : Nat) < 366103 := by decide
  have hcop : ¬ 79 ∣ (366103 - 366100) := by decide
  have heq : (366103 : ZMod 79) ^ 13 = (366100 : ZMod 79) ^ 13 := by decide
  have hne : (366103 : ZMod 6241) ^ 13 ≠ (366100 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 366103 := by decide
  have hB : ¬ 79 ∣ 366100 := by decide
  have hexp :=
    has_exp_one_of_zmod 366100 366103 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 366100 366103 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 366100 366103 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      366100 366103 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      366100 366103 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_366445_366448 :
    HasPrimeWithExpOne (S_val 366445 366448) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366445 366448 ∧ ¬ p ∣ (366448 - 366445) ∧
      ∃ (hNotC : ¬ p ∣ 366448) (hNotB : ¬ p ∣ 366445),
        order_of_C_B_inv_mod_p2 366448 366445 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 366445 366448 := by
  have hlt : (366445 : Nat) < 366448 := by decide
  have hcop : ¬ 547 ∣ (366448 - 366445) := by decide
  have heq : (366448 : ZMod 547) ^ 13 = (366445 : ZMod 547) ^ 13 := by decide
  have hne : (366448 : ZMod 299209) ^ 13 ≠ (366445 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 366448 := by decide
  have hB : ¬ 547 ∣ 366445 := by decide
  have hexp :=
    has_exp_one_of_zmod 366445 366448 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 366445 366448 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 366445 366448 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      366445 366448 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      366445 366448 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_366765_366768 :
    HasPrimeWithExpOne (S_val 366765 366768) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366765 366768 ∧ ¬ p ∣ (366768 - 366765) ∧
      ∃ (hNotC : ¬ p ∣ 366768) (hNotB : ¬ p ∣ 366765),
        order_of_C_B_inv_mod_p2 366768 366765 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 366765 366768 := by
  have hlt : (366765 : Nat) < 366768 := by decide
  have hcop : ¬ 53 ∣ (366768 - 366765) := by decide
  have heq : (366768 : ZMod 53) ^ 13 = (366765 : ZMod 53) ^ 13 := by decide
  have hne : (366768 : ZMod 2809) ^ 13 ≠ (366765 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 366768 := by decide
  have hB : ¬ 53 ∣ 366765 := by decide
  have hexp :=
    has_exp_one_of_zmod 366765 366768 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 366765 366768 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 366765 366768 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      366765 366768 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      366765 366768 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_367092_367095 :
    HasPrimeWithExpOne (S_val 367092 367095) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367092 367095 ∧ ¬ p ∣ (367095 - 367092) ∧
      ∃ (hNotC : ¬ p ∣ 367095) (hNotB : ¬ p ∣ 367092),
        order_of_C_B_inv_mod_p2 367095 367092 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 367092 367095 := by
  have hlt : (367092 : Nat) < 367095 := by decide
  have hcop : ¬ 79 ∣ (367095 - 367092) := by decide
  have heq : (367095 : ZMod 79) ^ 13 = (367092 : ZMod 79) ^ 13 := by decide
  have hne : (367095 : ZMod 6241) ^ 13 ≠ (367092 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 367095 := by decide
  have hB : ¬ 79 ∣ 367092 := by decide
  have hexp :=
    has_exp_one_of_zmod 367092 367095 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 367092 367095 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 367092 367095 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      367092 367095 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      367092 367095 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_367430_367433 :
    HasPrimeWithExpOne (S_val 367430 367433) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367430 367433 ∧ ¬ p ∣ (367433 - 367430) ∧
      ∃ (hNotC : ¬ p ∣ 367433) (hNotB : ¬ p ∣ 367430),
        order_of_C_B_inv_mod_p2 367433 367430 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 367430 367433 := by
  have hlt : (367430 : Nat) < 367433 := by decide
  have hcop : ¬ 157 ∣ (367433 - 367430) := by decide
  have heq : (367433 : ZMod 157) ^ 13 = (367430 : ZMod 157) ^ 13 := by decide
  have hne : (367433 : ZMod 24649) ^ 13 ≠ (367430 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 367433 := by decide
  have hB : ¬ 157 ∣ 367430 := by decide
  have hexp :=
    has_exp_one_of_zmod 367430 367433 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 367430 367433 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 367430 367433 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      367430 367433 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      367430 367433 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_367780_367783 :
    HasPrimeWithExpOne (S_val 367780 367783) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367780 367783 ∧ ¬ p ∣ (367783 - 367780) ∧
      ∃ (hNotC : ¬ p ∣ 367783) (hNotB : ¬ p ∣ 367780),
        order_of_C_B_inv_mod_p2 367783 367780 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 367780 367783 := by
  have hlt : (367780 : Nat) < 367783 := by decide
  have hcop : ¬ 53 ∣ (367783 - 367780) := by decide
  have heq : (367783 : ZMod 53) ^ 13 = (367780 : ZMod 53) ^ 13 := by decide
  have hne : (367783 : ZMod 2809) ^ 13 ≠ (367780 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 367783 := by decide
  have hB : ¬ 53 ∣ 367780 := by decide
  have hexp :=
    has_exp_one_of_zmod 367780 367783 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 367780 367783 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 367780 367783 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      367780 367783 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      367780 367783 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_368119_368122 :
    HasPrimeWithExpOne (S_val 368119 368122) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368119 368122 ∧ ¬ p ∣ (368122 - 368119) ∧
      ∃ (hNotC : ¬ p ∣ 368122) (hNotB : ¬ p ∣ 368119),
        order_of_C_B_inv_mod_p2 368122 368119 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 368119 368122 := by
  have hlt : (368119 : Nat) < 368122 := by decide
  have hcop : ¬ 79 ∣ (368122 - 368119) := by decide
  have heq : (368122 : ZMod 79) ^ 13 = (368119 : ZMod 79) ^ 13 := by decide
  have hne : (368122 : ZMod 6241) ^ 13 ≠ (368119 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 368122 := by decide
  have hB : ¬ 79 ∣ 368119 := by decide
  have hexp :=
    has_exp_one_of_zmod 368119 368122 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 368119 368122 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 368119 368122 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      368119 368122 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      368119 368122 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_368462_368465 :
    HasPrimeWithExpOne (S_val 368462 368465) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368462 368465 ∧ ¬ p ∣ (368465 - 368462) ∧
      ∃ (hNotC : ¬ p ∣ 368465) (hNotB : ¬ p ∣ 368462),
        order_of_C_B_inv_mod_p2 368465 368462 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 368462 368465 := by
  have hlt : (368462 : Nat) < 368465 := by decide
  have hcop : ¬ 53 ∣ (368465 - 368462) := by decide
  have heq : (368465 : ZMod 53) ^ 13 = (368462 : ZMod 53) ^ 13 := by decide
  have hne : (368465 : ZMod 2809) ^ 13 ≠ (368462 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 368465 := by decide
  have hB : ¬ 53 ∣ 368462 := by decide
  have hexp :=
    has_exp_one_of_zmod 368462 368465 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 368462 368465 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 368462 368465 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      368462 368465 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      368462 368465 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_368787_368790 :
    HasPrimeWithExpOne (S_val 368787 368790) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368787 368790 ∧ ¬ p ∣ (368790 - 368787) ∧
      ∃ (hNotC : ¬ p ∣ 368790) (hNotB : ¬ p ∣ 368787),
        order_of_C_B_inv_mod_p2 368790 368787 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 368787 368790 := by
  have hlt : (368787 : Nat) < 368790 := by decide
  have hcop : ¬ 53 ∣ (368790 - 368787) := by decide
  have heq : (368790 : ZMod 53) ^ 13 = (368787 : ZMod 53) ^ 13 := by decide
  have hne : (368790 : ZMod 2809) ^ 13 ≠ (368787 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 368790 := by decide
  have hB : ¬ 53 ∣ 368787 := by decide
  have hexp :=
    has_exp_one_of_zmod 368787 368790 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 368787 368790 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 368787 368790 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      368787 368790 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      368787 368790 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_369117_369120 :
    HasPrimeWithExpOne (S_val 369117 369120) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369117 369120 ∧ ¬ p ∣ (369120 - 369117) ∧
      ∃ (hNotC : ¬ p ∣ 369120) (hNotB : ¬ p ∣ 369117),
        order_of_C_B_inv_mod_p2 369120 369117 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 369117 369120 := by
  have hlt : (369117 : Nat) < 369120 := by decide
  have hcop : ¬ 131 ∣ (369120 - 369117) := by decide
  have heq : (369120 : ZMod 131) ^ 13 = (369117 : ZMod 131) ^ 13 := by decide
  have hne : (369120 : ZMod 17161) ^ 13 ≠ (369117 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 369120 := by decide
  have hB : ¬ 131 ∣ 369117 := by decide
  have hexp :=
    has_exp_one_of_zmod 369117 369120 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 369117 369120 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 369117 369120 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      369117 369120 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      369117 369120 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_369469_369472 :
    HasPrimeWithExpOne (S_val 369469 369472) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369469 369472 ∧ ¬ p ∣ (369472 - 369469) ∧
      ∃ (hNotC : ¬ p ∣ 369472) (hNotB : ¬ p ∣ 369469),
        order_of_C_B_inv_mod_p2 369472 369469 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 369469 369472 := by
  have hlt : (369469 : Nat) < 369472 := by decide
  have hcop : ¬ 53 ∣ (369472 - 369469) := by decide
  have heq : (369472 : ZMod 53) ^ 13 = (369469 : ZMod 53) ^ 13 := by decide
  have hne : (369472 : ZMod 2809) ^ 13 ≠ (369469 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 369472 := by decide
  have hB : ¬ 53 ∣ 369469 := by decide
  have hexp :=
    has_exp_one_of_zmod 369469 369472 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 369469 369472 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 369469 369472 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      369469 369472 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      369469 369472 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_369799_369802 :
    HasPrimeWithExpOne (S_val 369799 369802) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369799 369802 ∧ ¬ p ∣ (369802 - 369799) ∧
      ∃ (hNotC : ¬ p ∣ 369802) (hNotB : ¬ p ∣ 369799),
        order_of_C_B_inv_mod_p2 369802 369799 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 369799 369802 := by
  have hlt : (369799 : Nat) < 369802 := by decide
  have hcop : ¬ 53 ∣ (369802 - 369799) := by decide
  have heq : (369802 : ZMod 53) ^ 13 = (369799 : ZMod 53) ^ 13 := by decide
  have hne : (369802 : ZMod 2809) ^ 13 ≠ (369799 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 369802 := by decide
  have hB : ¬ 53 ∣ 369799 := by decide
  have hexp :=
    has_exp_one_of_zmod 369799 369802 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 369799 369802 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 369799 369802 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      369799 369802 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      369799 369802 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_370136_370139 :
    HasPrimeWithExpOne (S_val 370136 370139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370136 370139 ∧ ¬ p ∣ (370139 - 370136) ∧
      ∃ (hNotC : ¬ p ∣ 370139) (hNotB : ¬ p ∣ 370136),
        order_of_C_B_inv_mod_p2 370139 370136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 370136 370139 := by
  have hlt : (370136 : Nat) < 370139 := by decide
  have hcop : ¬ 53 ∣ (370139 - 370136) := by decide
  have heq : (370139 : ZMod 53) ^ 13 = (370136 : ZMod 53) ^ 13 := by decide
  have hne : (370139 : ZMod 2809) ^ 13 ≠ (370136 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 370139 := by decide
  have hB : ¬ 53 ∣ 370136 := by decide
  have hexp :=
    has_exp_one_of_zmod 370136 370139 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 370136 370139 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 370136 370139 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      370136 370139 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      370136 370139 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_370461_370464 :
    HasPrimeWithExpOne (S_val 370461 370464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370461 370464 ∧ ¬ p ∣ (370464 - 370461) ∧
      ∃ (hNotC : ¬ p ∣ 370464) (hNotB : ¬ p ∣ 370461),
        order_of_C_B_inv_mod_p2 370464 370461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 370461 370464 := by
  have hlt : (370461 : Nat) < 370464 := by decide
  have hcop : ¬ 53 ∣ (370464 - 370461) := by decide
  have heq : (370464 : ZMod 53) ^ 13 = (370461 : ZMod 53) ^ 13 := by decide
  have hne : (370464 : ZMod 2809) ^ 13 ≠ (370461 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 370464 := by decide
  have hB : ¬ 53 ∣ 370461 := by decide
  have hexp :=
    has_exp_one_of_zmod 370461 370464 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 370461 370464 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 370461 370464 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      370461 370464 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      370461 370464 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_370794_370797 :
    HasPrimeWithExpOne (S_val 370794 370797) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370794 370797 ∧ ¬ p ∣ (370797 - 370794) ∧
      ∃ (hNotC : ¬ p ∣ 370797) (hNotB : ¬ p ∣ 370794),
        order_of_C_B_inv_mod_p2 370797 370794 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 370794 370797 := by
  have hlt : (370794 : Nat) < 370797 := by decide
  have hcop : ¬ 53 ∣ (370797 - 370794) := by decide
  have heq : (370797 : ZMod 53) ^ 13 = (370794 : ZMod 53) ^ 13 := by decide
  have hne : (370797 : ZMod 2809) ^ 13 ≠ (370794 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 370797 := by decide
  have hB : ¬ 53 ∣ 370794 := by decide
  have hexp :=
    has_exp_one_of_zmod 370794 370797 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 370794 370797 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 370794 370797 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      370794 370797 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      370794 370797 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_371126_371129 :
    HasPrimeWithExpOne (S_val 371126 371129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371126 371129 ∧ ¬ p ∣ (371129 - 371126) ∧
      ∃ (hNotC : ¬ p ∣ 371129) (hNotB : ¬ p ∣ 371126),
        order_of_C_B_inv_mod_p2 371129 371126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 371126 371129 := by
  have hlt : (371126 : Nat) < 371129 := by decide
  have hcop : ¬ 79 ∣ (371129 - 371126) := by decide
  have heq : (371129 : ZMod 79) ^ 13 = (371126 : ZMod 79) ^ 13 := by decide
  have hne : (371129 : ZMod 6241) ^ 13 ≠ (371126 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 371129 := by decide
  have hB : ¬ 79 ∣ 371126 := by decide
  have hexp :=
    has_exp_one_of_zmod 371126 371129 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 371126 371129 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 371126 371129 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      371126 371129 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      371126 371129 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_371468_371471 :
    HasPrimeWithExpOne (S_val 371468 371471) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371468 371471 ∧ ¬ p ∣ (371471 - 371468) ∧
      ∃ (hNotC : ¬ p ∣ 371471) (hNotB : ¬ p ∣ 371468),
        order_of_C_B_inv_mod_p2 371471 371468 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 371468 371471 := by
  have hlt : (371468 : Nat) < 371471 := by decide
  have hcop : ¬ 53 ∣ (371471 - 371468) := by decide
  have heq : (371471 : ZMod 53) ^ 13 = (371468 : ZMod 53) ^ 13 := by decide
  have hne : (371471 : ZMod 2809) ^ 13 ≠ (371468 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 371471 := by decide
  have hB : ¬ 53 ∣ 371468 := by decide
  have hexp :=
    has_exp_one_of_zmod 371468 371471 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 371468 371471 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 371468 371471 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      371468 371471 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      371468 371471 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_371805_371808 :
    HasPrimeWithExpOne (S_val 371805 371808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371805 371808 ∧ ¬ p ∣ (371808 - 371805) ∧
      ∃ (hNotC : ¬ p ∣ 371808) (hNotB : ¬ p ∣ 371805),
        order_of_C_B_inv_mod_p2 371808 371805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 371805 371808 := by
  have hlt : (371805 : Nat) < 371808 := by decide
  have hcop : ¬ 53 ∣ (371808 - 371805) := by decide
  have heq : (371808 : ZMod 53) ^ 13 = (371805 : ZMod 53) ^ 13 := by decide
  have hne : (371808 : ZMod 2809) ^ 13 ≠ (371805 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 371808 := by decide
  have hB : ¬ 53 ∣ 371805 := by decide
  have hexp :=
    has_exp_one_of_zmod 371805 371808 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 371805 371808 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 371805 371808 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      371805 371808 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      371805 371808 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_372150_372153 :
    HasPrimeWithExpOne (S_val 372150 372153) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372150 372153 ∧ ¬ p ∣ (372153 - 372150) ∧
      ∃ (hNotC : ¬ p ∣ 372153) (hNotB : ¬ p ∣ 372150),
        order_of_C_B_inv_mod_p2 372153 372150 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 372150 372153 := by
  have hlt : (372150 : Nat) < 372153 := by decide
  have hcop : ¬ 53 ∣ (372153 - 372150) := by decide
  have heq : (372153 : ZMod 53) ^ 13 = (372150 : ZMod 53) ^ 13 := by decide
  have hne : (372153 : ZMod 2809) ^ 13 ≠ (372150 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 372153 := by decide
  have hB : ¬ 53 ∣ 372150 := by decide
  have hexp :=
    has_exp_one_of_zmod 372150 372153 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 372150 372153 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 372150 372153 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      372150 372153 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      372150 372153 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_372489_372492 :
    HasPrimeWithExpOne (S_val 372489 372492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372489 372492 ∧ ¬ p ∣ (372492 - 372489) ∧
      ∃ (hNotC : ¬ p ∣ 372492) (hNotB : ¬ p ∣ 372489),
        order_of_C_B_inv_mod_p2 372492 372489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 372489 372492 := by
  have hlt : (372489 : Nat) < 372492 := by decide
  have hcop : ¬ 53 ∣ (372492 - 372489) := by decide
  have heq : (372492 : ZMod 53) ^ 13 = (372489 : ZMod 53) ^ 13 := by decide
  have hne : (372492 : ZMod 2809) ^ 13 ≠ (372489 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 372492 := by decide
  have hB : ¬ 53 ∣ 372489 := by decide
  have hexp :=
    has_exp_one_of_zmod 372489 372492 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 372489 372492 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 372489 372492 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      372489 372492 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      372489 372492 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_372814_372817 :
    HasPrimeWithExpOne (S_val 372814 372817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372814 372817 ∧ ¬ p ∣ (372817 - 372814) ∧
      ∃ (hNotC : ¬ p ∣ 372817) (hNotB : ¬ p ∣ 372814),
        order_of_C_B_inv_mod_p2 372817 372814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 372814 372817 := by
  have hlt : (372814 : Nat) < 372817 := by decide
  have hcop : ¬ 79 ∣ (372817 - 372814) := by decide
  have heq : (372817 : ZMod 79) ^ 13 = (372814 : ZMod 79) ^ 13 := by decide
  have hne : (372817 : ZMod 6241) ^ 13 ≠ (372814 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 372817 := by decide
  have hB : ¬ 79 ∣ 372814 := by decide
  have hexp :=
    has_exp_one_of_zmod 372814 372817 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 372814 372817 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 372814 372817 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      372814 372817 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      372814 372817 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_373156_373159 :
    HasPrimeWithExpOne (S_val 373156 373159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373156 373159 ∧ ¬ p ∣ (373159 - 373156) ∧
      ∃ (hNotC : ¬ p ∣ 373159) (hNotB : ¬ p ∣ 373156),
        order_of_C_B_inv_mod_p2 373159 373156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 373156 373159 := by
  have hlt : (373156 : Nat) < 373159 := by decide
  have hcop : ¬ 131 ∣ (373159 - 373156) := by decide
  have heq : (373159 : ZMod 131) ^ 13 = (373156 : ZMod 131) ^ 13 := by decide
  have hne : (373159 : ZMod 17161) ^ 13 ≠ (373156 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 373159 := by decide
  have hB : ¬ 131 ∣ 373156 := by decide
  have hexp :=
    has_exp_one_of_zmod 373156 373159 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 373156 373159 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 373156 373159 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      373156 373159 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      373156 373159 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_373497_373500 :
    HasPrimeWithExpOne (S_val 373497 373500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373497 373500 ∧ ¬ p ∣ (373500 - 373497) ∧
      ∃ (hNotC : ¬ p ∣ 373500) (hNotB : ¬ p ∣ 373497),
        order_of_C_B_inv_mod_p2 373500 373497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 373497 373500 := by
  have hlt : (373497 : Nat) < 373500 := by decide
  have hcop : ¬ 53 ∣ (373500 - 373497) := by decide
  have heq : (373500 : ZMod 53) ^ 13 = (373497 : ZMod 53) ^ 13 := by decide
  have hne : (373500 : ZMod 2809) ^ 13 ≠ (373497 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 373500 := by decide
  have hB : ¬ 53 ∣ 373497 := by decide
  have hexp :=
    has_exp_one_of_zmod 373497 373500 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 373497 373500 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 373497 373500 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      373497 373500 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      373497 373500 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_373827_373830 :
    HasPrimeWithExpOne (S_val 373827 373830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373827 373830 ∧ ¬ p ∣ (373830 - 373827) ∧
      ∃ (hNotC : ¬ p ∣ 373830) (hNotB : ¬ p ∣ 373827),
        order_of_C_B_inv_mod_p2 373830 373827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 373827 373830 := by
  have hlt : (373827 : Nat) < 373830 := by decide
  have hcop : ¬ 53 ∣ (373830 - 373827) := by decide
  have heq : (373830 : ZMod 53) ^ 13 = (373827 : ZMod 53) ^ 13 := by decide
  have hne : (373830 : ZMod 2809) ^ 13 ≠ (373827 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 373830 := by decide
  have hB : ¬ 53 ∣ 373827 := by decide
  have hexp :=
    has_exp_one_of_zmod 373827 373830 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 373827 373830 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 373827 373830 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      373827 373830 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      373827 373830 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_374185_374188 :
    HasPrimeWithExpOne (S_val 374185 374188) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374185 374188 ∧ ¬ p ∣ (374188 - 374185) ∧
      ∃ (hNotC : ¬ p ∣ 374188) (hNotB : ¬ p ∣ 374185),
        order_of_C_B_inv_mod_p2 374188 374185 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 374185 374188 := by
  have hlt : (374185 : Nat) < 374188 := by decide
  have hcop : ¬ 53 ∣ (374188 - 374185) := by decide
  have heq : (374188 : ZMod 53) ^ 13 = (374185 : ZMod 53) ^ 13 := by decide
  have hne : (374188 : ZMod 2809) ^ 13 ≠ (374185 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 374188 := by decide
  have hB : ¬ 53 ∣ 374185 := by decide
  have hexp :=
    has_exp_one_of_zmod 374185 374188 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 374185 374188 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 374185 374188 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      374185 374188 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      374185 374188 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_374490_374493 :
    HasPrimeWithExpOne (S_val 374490 374493) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374490 374493 ∧ ¬ p ∣ (374493 - 374490) ∧
      ∃ (hNotC : ¬ p ∣ 374493) (hNotB : ¬ p ∣ 374490),
        order_of_C_B_inv_mod_p2 374493 374490 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 374490 374493 := by
  have hlt : (374490 : Nat) < 374493 := by decide
  have hcop : ¬ 53 ∣ (374493 - 374490) := by decide
  have heq : (374493 : ZMod 53) ^ 13 = (374490 : ZMod 53) ^ 13 := by decide
  have hne : (374493 : ZMod 2809) ^ 13 ≠ (374490 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 374493 := by decide
  have hB : ¬ 53 ∣ 374490 := by decide
  have hexp :=
    has_exp_one_of_zmod 374490 374493 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 374490 374493 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 374490 374493 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      374490 374493 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      374490 374493 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_374823_374826 :
    HasPrimeWithExpOne (S_val 374823 374826) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374823 374826 ∧ ¬ p ∣ (374826 - 374823) ∧
      ∃ (hNotC : ¬ p ∣ 374826) (hNotB : ¬ p ∣ 374823),
        order_of_C_B_inv_mod_p2 374826 374823 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 374823 374826 := by
  have hlt : (374823 : Nat) < 374826 := by decide
  have hcop : ¬ 521 ∣ (374826 - 374823) := by decide
  have heq : (374826 : ZMod 521) ^ 13 = (374823 : ZMod 521) ^ 13 := by decide
  have hne : (374826 : ZMod 271441) ^ 13 ≠ (374823 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 374826 := by decide
  have hB : ¬ 521 ∣ 374823 := by decide
  have hexp :=
    has_exp_one_of_zmod 374823 374826 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 374823 374826 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 374823 374826 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      374823 374826 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      374823 374826 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_375144_375147 :
    HasPrimeWithExpOne (S_val 375144 375147) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375144 375147 ∧ ¬ p ∣ (375147 - 375144) ∧
      ∃ (hNotC : ¬ p ∣ 375147) (hNotB : ¬ p ∣ 375144),
        order_of_C_B_inv_mod_p2 375147 375144 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 375144 375147 := by
  have hlt : (375144 : Nat) < 375147 := by decide
  have hcop : ¬ 53 ∣ (375147 - 375144) := by decide
  have heq : (375147 : ZMod 53) ^ 13 = (375144 : ZMod 53) ^ 13 := by decide
  have hne : (375147 : ZMod 2809) ^ 13 ≠ (375144 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 375147 := by decide
  have hB : ¬ 53 ∣ 375144 := by decide
  have hexp :=
    has_exp_one_of_zmod 375144 375147 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 375144 375147 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 375144 375147 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      375144 375147 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      375144 375147 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_375466_375469 :
    HasPrimeWithExpOne (S_val 375466 375469) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375466 375469 ∧ ¬ p ∣ (375469 - 375466) ∧
      ∃ (hNotC : ¬ p ∣ 375469) (hNotB : ¬ p ∣ 375466),
        order_of_C_B_inv_mod_p2 375469 375466 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 375466 375469 := by
  have hlt : (375466 : Nat) < 375469 := by decide
  have hcop : ¬ 79 ∣ (375469 - 375466) := by decide
  have heq : (375469 : ZMod 79) ^ 13 = (375466 : ZMod 79) ^ 13 := by decide
  have hne : (375469 : ZMod 6241) ^ 13 ≠ (375466 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 375469 := by decide
  have hB : ¬ 79 ∣ 375466 := by decide
  have hexp :=
    has_exp_one_of_zmod 375466 375469 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 375466 375469 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 375466 375469 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      375466 375469 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      375466 375469 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_375802_375805 :
    HasPrimeWithExpOne (S_val 375802 375805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375802 375805 ∧ ¬ p ∣ (375805 - 375802) ∧
      ∃ (hNotC : ¬ p ∣ 375805) (hNotB : ¬ p ∣ 375802),
        order_of_C_B_inv_mod_p2 375805 375802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 375802 375805 := by
  have hlt : (375802 : Nat) < 375805 := by decide
  have hcop : ¬ 53 ∣ (375805 - 375802) := by decide
  have heq : (375805 : ZMod 53) ^ 13 = (375802 : ZMod 53) ^ 13 := by decide
  have hne : (375805 : ZMod 2809) ^ 13 ≠ (375802 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 375805 := by decide
  have hB : ¬ 53 ∣ 375802 := by decide
  have hexp :=
    has_exp_one_of_zmod 375802 375805 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 375802 375805 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 375802 375805 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      375802 375805 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      375802 375805 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_376140_376143 :
    HasPrimeWithExpOne (S_val 376140 376143) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376140 376143 ∧ ¬ p ∣ (376143 - 376140) ∧
      ∃ (hNotC : ¬ p ∣ 376143) (hNotB : ¬ p ∣ 376140),
        order_of_C_B_inv_mod_p2 376143 376140 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 376140 376143 := by
  have hlt : (376140 : Nat) < 376143 := by decide
  have hcop : ¬ 157 ∣ (376143 - 376140) := by decide
  have heq : (376143 : ZMod 157) ^ 13 = (376140 : ZMod 157) ^ 13 := by decide
  have hne : (376143 : ZMod 24649) ^ 13 ≠ (376140 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 376143 := by decide
  have hB : ¬ 157 ∣ 376140 := by decide
  have hexp :=
    has_exp_one_of_zmod 376140 376143 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 376140 376143 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 376140 376143 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      376140 376143 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      376140 376143 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_376456_376459 :
    HasPrimeWithExpOne (S_val 376456 376459) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376456 376459 ∧ ¬ p ∣ (376459 - 376456) ∧
      ∃ (hNotC : ¬ p ∣ 376459) (hNotB : ¬ p ∣ 376456),
        order_of_C_B_inv_mod_p2 376459 376456 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 376456 376459 := by
  have hlt : (376456 : Nat) < 376459 := by decide
  have hcop : ¬ 521 ∣ (376459 - 376456) := by decide
  have heq : (376459 : ZMod 521) ^ 13 = (376456 : ZMod 521) ^ 13 := by decide
  have hne : (376459 : ZMod 271441) ^ 13 ≠ (376456 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 376459 := by decide
  have hB : ¬ 521 ∣ 376456 := by decide
  have hexp :=
    has_exp_one_of_zmod 376456 376459 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 376456 376459 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 376456 376459 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      376456 376459 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      376456 376459 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_376814_376817 :
    HasPrimeWithExpOne (S_val 376814 376817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376814 376817 ∧ ¬ p ∣ (376817 - 376814) ∧
      ∃ (hNotC : ¬ p ∣ 376817) (hNotB : ¬ p ∣ 376814),
        order_of_C_B_inv_mod_p2 376817 376814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 376814 376817 := by
  have hlt : (376814 : Nat) < 376817 := by decide
  have hcop : ¬ 53 ∣ (376817 - 376814) := by decide
  have heq : (376817 : ZMod 53) ^ 13 = (376814 : ZMod 53) ^ 13 := by decide
  have hne : (376817 : ZMod 2809) ^ 13 ≠ (376814 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 376817 := by decide
  have hB : ¬ 53 ∣ 376814 := by decide
  have hexp :=
    has_exp_one_of_zmod 376814 376817 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 376814 376817 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 376814 376817 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      376814 376817 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      376814 376817 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_377152_377155 :
    HasPrimeWithExpOne (S_val 377152 377155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377152 377155 ∧ ¬ p ∣ (377155 - 377152) ∧
      ∃ (hNotC : ¬ p ∣ 377155) (hNotB : ¬ p ∣ 377152),
        order_of_C_B_inv_mod_p2 377155 377152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 377152 377155 := by
  have hlt : (377152 : Nat) < 377155 := by decide
  have hcop : ¬ 53 ∣ (377155 - 377152) := by decide
  have heq : (377155 : ZMod 53) ^ 13 = (377152 : ZMod 53) ^ 13 := by decide
  have hne : (377155 : ZMod 2809) ^ 13 ≠ (377152 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 377155 := by decide
  have hB : ¬ 53 ∣ 377152 := by decide
  have hexp :=
    has_exp_one_of_zmod 377152 377155 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 377152 377155 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 377152 377155 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      377152 377155 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      377152 377155 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_377492_377495 :
    HasPrimeWithExpOne (S_val 377492 377495) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377492 377495 ∧ ¬ p ∣ (377495 - 377492) ∧
      ∃ (hNotC : ¬ p ∣ 377495) (hNotB : ¬ p ∣ 377492),
        order_of_C_B_inv_mod_p2 377495 377492 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 377492 377495 := by
  have hlt : (377492 : Nat) < 377495 := by decide
  have hcop : ¬ 313 ∣ (377495 - 377492) := by decide
  have heq : (377495 : ZMod 313) ^ 13 = (377492 : ZMod 313) ^ 13 := by decide
  have hne : (377495 : ZMod 97969) ^ 13 ≠ (377492 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 377495 := by decide
  have hB : ¬ 313 ∣ 377492 := by decide
  have hexp :=
    has_exp_one_of_zmod 377492 377495 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 377492 377495 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 377492 377495 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      377492 377495 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      377492 377495 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_377863_377866 :
    HasPrimeWithExpOne (S_val 377863 377866) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377863 377866 ∧ ¬ p ∣ (377866 - 377863) ∧
      ∃ (hNotC : ¬ p ∣ 377866) (hNotB : ¬ p ∣ 377863),
        order_of_C_B_inv_mod_p2 377866 377863 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 377863 377866 := by
  have hlt : (377863 : Nat) < 377866 := by decide
  have hcop : ¬ 157 ∣ (377866 - 377863) := by decide
  have heq : (377866 : ZMod 157) ^ 13 = (377863 : ZMod 157) ^ 13 := by decide
  have hne : (377866 : ZMod 24649) ^ 13 ≠ (377863 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 377866 := by decide
  have hB : ¬ 157 ∣ 377863 := by decide
  have hexp :=
    has_exp_one_of_zmod 377863 377866 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 377863 377866 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 377863 377866 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      377863 377866 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      377863 377866 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_378192_378195 :
    HasPrimeWithExpOne (S_val 378192 378195) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378192 378195 ∧ ¬ p ∣ (378195 - 378192) ∧
      ∃ (hNotC : ¬ p ∣ 378195) (hNotB : ¬ p ∣ 378192),
        order_of_C_B_inv_mod_p2 378195 378192 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 378192 378195 := by
  have hlt : (378192 : Nat) < 378195 := by decide
  have hcop : ¬ 53 ∣ (378195 - 378192) := by decide
  have heq : (378195 : ZMod 53) ^ 13 = (378192 : ZMod 53) ^ 13 := by decide
  have hne : (378195 : ZMod 2809) ^ 13 ≠ (378192 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 378195 := by decide
  have hB : ¬ 53 ∣ 378192 := by decide
  have hexp :=
    has_exp_one_of_zmod 378192 378195 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 378192 378195 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 378192 378195 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      378192 378195 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      378192 378195 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_378527_378530 :
    HasPrimeWithExpOne (S_val 378527 378530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378527 378530 ∧ ¬ p ∣ (378530 - 378527) ∧
      ∃ (hNotC : ¬ p ∣ 378530) (hNotB : ¬ p ∣ 378527),
        order_of_C_B_inv_mod_p2 378530 378527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 378527 378530 := by
  have hlt : (378527 : Nat) < 378530 := by decide
  have hcop : ¬ 131 ∣ (378530 - 378527) := by decide
  have heq : (378530 : ZMod 131) ^ 13 = (378527 : ZMod 131) ^ 13 := by decide
  have hne : (378530 : ZMod 17161) ^ 13 ≠ (378527 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 378530 := by decide
  have hB : ¬ 131 ∣ 378527 := by decide
  have hexp :=
    has_exp_one_of_zmod 378527 378530 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 378527 378530 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 378527 378530 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      378527 378530 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      378527 378530 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_378858_378861 :
    HasPrimeWithExpOne (S_val 378858 378861) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378858 378861 ∧ ¬ p ∣ (378861 - 378858) ∧
      ∃ (hNotC : ¬ p ∣ 378861) (hNotB : ¬ p ∣ 378858),
        order_of_C_B_inv_mod_p2 378861 378858 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 378858 378861 := by
  have hlt : (378858 : Nat) < 378861 := by decide
  have hcop : ¬ 79 ∣ (378861 - 378858) := by decide
  have heq : (378861 : ZMod 79) ^ 13 = (378858 : ZMod 79) ^ 13 := by decide
  have hne : (378861 : ZMod 6241) ^ 13 ≠ (378858 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 378861 := by decide
  have hB : ¬ 79 ∣ 378858 := by decide
  have hexp :=
    has_exp_one_of_zmod 378858 378861 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 378858 378861 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 378858 378861 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      378858 378861 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      378858 378861 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_379194_379197 :
    HasPrimeWithExpOne (S_val 379194 379197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379194 379197 ∧ ¬ p ∣ (379197 - 379194) ∧
      ∃ (hNotC : ¬ p ∣ 379197) (hNotB : ¬ p ∣ 379194),
        order_of_C_B_inv_mod_p2 379197 379194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379194 379197 := by
  have hlt : (379194 : Nat) < 379197 := by decide
  have hcop : ¬ 53 ∣ (379197 - 379194) := by decide
  have heq : (379197 : ZMod 53) ^ 13 = (379194 : ZMod 53) ^ 13 := by decide
  have hne : (379197 : ZMod 2809) ^ 13 ≠ (379194 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 379197 := by decide
  have hB : ¬ 53 ∣ 379194 := by decide
  have hexp :=
    has_exp_one_of_zmod 379194 379197 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 379194 379197 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 379194 379197 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      379194 379197 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      379194 379197 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_379534_379537 :
    HasPrimeWithExpOne (S_val 379534 379537) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379534 379537 ∧ ¬ p ∣ (379537 - 379534) ∧
      ∃ (hNotC : ¬ p ∣ 379537) (hNotB : ¬ p ∣ 379534),
        order_of_C_B_inv_mod_p2 379537 379534 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379534 379537 := by
  have hlt : (379534 : Nat) < 379537 := by decide
  have hcop : ¬ 79 ∣ (379537 - 379534) := by decide
  have heq : (379537 : ZMod 79) ^ 13 = (379534 : ZMod 79) ^ 13 := by decide
  have hne : (379537 : ZMod 6241) ^ 13 ≠ (379534 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 379537 := by decide
  have hB : ¬ 79 ∣ 379534 := by decide
  have hexp :=
    has_exp_one_of_zmod 379534 379537 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 379534 379537 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 379534 379537 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      379534 379537 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      379534 379537 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_379869_379872 :
    HasPrimeWithExpOne (S_val 379869 379872) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379869 379872 ∧ ¬ p ∣ (379872 - 379869) ∧
      ∃ (hNotC : ¬ p ∣ 379872) (hNotB : ¬ p ∣ 379869),
        order_of_C_B_inv_mod_p2 379872 379869 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 379869 379872 := by
  have hlt : (379869 : Nat) < 379872 := by decide
  have hcop : ¬ 53 ∣ (379872 - 379869) := by decide
  have heq : (379872 : ZMod 53) ^ 13 = (379869 : ZMod 53) ^ 13 := by decide
  have hne : (379872 : ZMod 2809) ^ 13 ≠ (379869 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 379872 := by decide
  have hB : ¬ 53 ∣ 379869 := by decide
  have hexp :=
    has_exp_one_of_zmod 379869 379872 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 379869 379872 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 379869 379872 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      379869 379872 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      379869 379872 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_380209_380212 :
    HasPrimeWithExpOne (S_val 380209 380212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380209 380212 ∧ ¬ p ∣ (380212 - 380209) ∧
      ∃ (hNotC : ¬ p ∣ 380212) (hNotB : ¬ p ∣ 380209),
        order_of_C_B_inv_mod_p2 380212 380209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 380209 380212 := by
  have hlt : (380209 : Nat) < 380212 := by decide
  have hcop : ¬ 53 ∣ (380212 - 380209) := by decide
  have heq : (380212 : ZMod 53) ^ 13 = (380209 : ZMod 53) ^ 13 := by decide
  have hne : (380212 : ZMod 2809) ^ 13 ≠ (380209 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 380212 := by decide
  have hB : ¬ 53 ∣ 380209 := by decide
  have hexp :=
    has_exp_one_of_zmod 380209 380212 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 380209 380212 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 380209 380212 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      380209 380212 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      380209 380212 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_380536_380539 :
    HasPrimeWithExpOne (S_val 380536 380539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380536 380539 ∧ ¬ p ∣ (380539 - 380536) ∧
      ∃ (hNotC : ¬ p ∣ 380539) (hNotB : ¬ p ∣ 380536),
        order_of_C_B_inv_mod_p2 380539 380536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 380536 380539 := by
  have hlt : (380536 : Nat) < 380539 := by decide
  have hcop : ¬ 157 ∣ (380539 - 380536) := by decide
  have heq : (380539 : ZMod 157) ^ 13 = (380536 : ZMod 157) ^ 13 := by decide
  have hne : (380539 : ZMod 24649) ^ 13 ≠ (380536 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 380539 := by decide
  have hB : ¬ 157 ∣ 380536 := by decide
  have hexp :=
    has_exp_one_of_zmod 380536 380539 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 380536 380539 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 380536 380539 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      380536 380539 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      380536 380539 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_380872_380875 :
    HasPrimeWithExpOne (S_val 380872 380875) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380872 380875 ∧ ¬ p ∣ (380875 - 380872) ∧
      ∃ (hNotC : ¬ p ∣ 380875) (hNotB : ¬ p ∣ 380872),
        order_of_C_B_inv_mod_p2 380875 380872 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 380872 380875 := by
  have hlt : (380872 : Nat) < 380875 := by decide
  have hcop : ¬ 79 ∣ (380875 - 380872) := by decide
  have heq : (380875 : ZMod 79) ^ 13 = (380872 : ZMod 79) ^ 13 := by decide
  have hne : (380875 : ZMod 6241) ^ 13 ≠ (380872 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 380875 := by decide
  have hB : ¬ 79 ∣ 380872 := by decide
  have hexp :=
    has_exp_one_of_zmod 380872 380875 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 380872 380875 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 380872 380875 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      380872 380875 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      380872 380875 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_381221_381224 :
    HasPrimeWithExpOne (S_val 381221 381224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381221 381224 ∧ ¬ p ∣ (381224 - 381221) ∧
      ∃ (hNotC : ¬ p ∣ 381224) (hNotB : ¬ p ∣ 381221),
        order_of_C_B_inv_mod_p2 381224 381221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 381221 381224 := by
  have hlt : (381221 : Nat) < 381224 := by decide
  have hcop : ¬ 53 ∣ (381224 - 381221) := by decide
  have heq : (381224 : ZMod 53) ^ 13 = (381221 : ZMod 53) ^ 13 := by decide
  have hne : (381224 : ZMod 2809) ^ 13 ≠ (381221 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 381224 := by decide
  have hB : ¬ 53 ∣ 381221 := by decide
  have hexp :=
    has_exp_one_of_zmod 381221 381224 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 381221 381224 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 381221 381224 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      381221 381224 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      381221 381224 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_381552_381555 :
    HasPrimeWithExpOne (S_val 381552 381555) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381552 381555 ∧ ¬ p ∣ (381555 - 381552) ∧
      ∃ (hNotC : ¬ p ∣ 381555) (hNotB : ¬ p ∣ 381552),
        order_of_C_B_inv_mod_p2 381555 381552 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 381552 381555 := by
  have hlt : (381552 : Nat) < 381555 := by decide
  have hcop : ¬ 53 ∣ (381555 - 381552) := by decide
  have heq : (381555 : ZMod 53) ^ 13 = (381552 : ZMod 53) ^ 13 := by decide
  have hne : (381555 : ZMod 2809) ^ 13 ≠ (381552 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 381555 := by decide
  have hB : ¬ 53 ∣ 381552 := by decide
  have hexp :=
    has_exp_one_of_zmod 381552 381555 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 381552 381555 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 381552 381555 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      381552 381555 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      381552 381555 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_381894_381897 :
    HasPrimeWithExpOne (S_val 381894 381897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381894 381897 ∧ ¬ p ∣ (381897 - 381894) ∧
      ∃ (hNotC : ¬ p ∣ 381897) (hNotB : ¬ p ∣ 381894),
        order_of_C_B_inv_mod_p2 381897 381894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 381894 381897 := by
  have hlt : (381894 : Nat) < 381897 := by decide
  have hcop : ¬ 157 ∣ (381897 - 381894) := by decide
  have heq : (381897 : ZMod 157) ^ 13 = (381894 : ZMod 157) ^ 13 := by decide
  have hne : (381897 : ZMod 24649) ^ 13 ≠ (381894 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 381897 := by decide
  have hB : ¬ 157 ∣ 381894 := by decide
  have hexp :=
    has_exp_one_of_zmod 381894 381897 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 381894 381897 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 381894 381897 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      381894 381897 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      381894 381897 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_382225_382228 :
    HasPrimeWithExpOne (S_val 382225 382228) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382225 382228 ∧ ¬ p ∣ (382228 - 382225) ∧
      ∃ (hNotC : ¬ p ∣ 382228) (hNotB : ¬ p ∣ 382225),
        order_of_C_B_inv_mod_p2 382228 382225 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 382225 382228 := by
  have hlt : (382225 : Nat) < 382228 := by decide
  have hcop : ¬ 79 ∣ (382228 - 382225) := by decide
  have heq : (382228 : ZMod 79) ^ 13 = (382225 : ZMod 79) ^ 13 := by decide
  have hne : (382228 : ZMod 6241) ^ 13 ≠ (382225 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 382228 := by decide
  have hB : ¬ 79 ∣ 382225 := by decide
  have hexp :=
    has_exp_one_of_zmod 382225 382228 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 382225 382228 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 382225 382228 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      382225 382228 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      382225 382228 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_382563_382566 :
    HasPrimeWithExpOne (S_val 382563 382566) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382563 382566 ∧ ¬ p ∣ (382566 - 382563) ∧
      ∃ (hNotC : ¬ p ∣ 382566) (hNotB : ¬ p ∣ 382563),
        order_of_C_B_inv_mod_p2 382566 382563 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 382563 382566 := by
  have hlt : (382563 : Nat) < 382566 := by decide
  have hcop : ¬ 131 ∣ (382566 - 382563) := by decide
  have heq : (382566 : ZMod 131) ^ 13 = (382563 : ZMod 131) ^ 13 := by decide
  have hne : (382566 : ZMod 17161) ^ 13 ≠ (382563 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 382566 := by decide
  have hB : ¬ 131 ∣ 382563 := by decide
  have hexp :=
    has_exp_one_of_zmod 382563 382566 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 382563 382566 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 382563 382566 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      382563 382566 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      382563 382566 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_382887_382890 :
    HasPrimeWithExpOne (S_val 382887 382890) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382887 382890 ∧ ¬ p ∣ (382890 - 382887) ∧
      ∃ (hNotC : ¬ p ∣ 382890) (hNotB : ¬ p ∣ 382887),
        order_of_C_B_inv_mod_p2 382890 382887 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 382887 382890 := by
  have hlt : (382887 : Nat) < 382890 := by decide
  have hcop : ¬ 79 ∣ (382890 - 382887) := by decide
  have heq : (382890 : ZMod 79) ^ 13 = (382887 : ZMod 79) ^ 13 := by decide
  have hne : (382890 : ZMod 6241) ^ 13 ≠ (382887 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 382890 := by decide
  have hB : ¬ 79 ∣ 382887 := by decide
  have hexp :=
    has_exp_one_of_zmod 382887 382890 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 382887 382890 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 382887 382890 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      382887 382890 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      382887 382890 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_383224_383227 :
    HasPrimeWithExpOne (S_val 383224 383227) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383224 383227 ∧ ¬ p ∣ (383227 - 383224) ∧
      ∃ (hNotC : ¬ p ∣ 383227) (hNotB : ¬ p ∣ 383224),
        order_of_C_B_inv_mod_p2 383227 383224 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 383224 383227 := by
  have hlt : (383224 : Nat) < 383227 := by decide
  have hcop : ¬ 443 ∣ (383227 - 383224) := by decide
  have heq : (383227 : ZMod 443) ^ 13 = (383224 : ZMod 443) ^ 13 := by decide
  have hne : (383227 : ZMod 196249) ^ 13 ≠ (383224 : ZMod 196249) ^ 13 := by decide
  have hC : ¬ 443 ∣ 383227 := by decide
  have hB : ¬ 443 ∣ 383224 := by decide
  have hexp :=
    has_exp_one_of_zmod 383224 383227 443 196249 hlt prime_443 sq_443 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 383224 383227 443 hlt prime_443 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 383224 383227 443 196249 hlt sq_443 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      383224 383227 443 prime_443 ne_13_443 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      383224 383227 443 prime_443 hdvd hcop ne_13_443 hlt hC hB hord
  exact ⟨hexp, ⟨443, prime_443, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_383558_383561 :
    HasPrimeWithExpOne (S_val 383558 383561) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383558 383561 ∧ ¬ p ∣ (383561 - 383558) ∧
      ∃ (hNotC : ¬ p ∣ 383561) (hNotB : ¬ p ∣ 383558),
        order_of_C_B_inv_mod_p2 383561 383558 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 383558 383561 := by
  have hlt : (383558 : Nat) < 383561 := by decide
  have hcop : ¬ 79 ∣ (383561 - 383558) := by decide
  have heq : (383561 : ZMod 79) ^ 13 = (383558 : ZMod 79) ^ 13 := by decide
  have hne : (383561 : ZMod 6241) ^ 13 ≠ (383558 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 383561 := by decide
  have hB : ¬ 79 ∣ 383558 := by decide
  have hexp :=
    has_exp_one_of_zmod 383558 383561 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 383558 383561 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 383558 383561 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      383558 383561 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      383558 383561 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_383874_383877 :
    HasPrimeWithExpOne (S_val 383874 383877) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383874 383877 ∧ ¬ p ∣ (383877 - 383874) ∧
      ∃ (hNotC : ¬ p ∣ 383877) (hNotB : ¬ p ∣ 383874),
        order_of_C_B_inv_mod_p2 383877 383874 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 383874 383877 := by
  have hlt : (383874 : Nat) < 383877 := by decide
  have hcop : ¬ 79 ∣ (383877 - 383874) := by decide
  have heq : (383877 : ZMod 79) ^ 13 = (383874 : ZMod 79) ^ 13 := by decide
  have hne : (383877 : ZMod 6241) ^ 13 ≠ (383874 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 383877 := by decide
  have hB : ¬ 79 ∣ 383874 := by decide
  have hexp :=
    has_exp_one_of_zmod 383874 383877 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 383874 383877 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 383874 383877 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      383874 383877 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      383874 383877 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_384202_384205 :
    HasPrimeWithExpOne (S_val 384202 384205) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384202 384205 ∧ ¬ p ∣ (384205 - 384202) ∧
      ∃ (hNotC : ¬ p ∣ 384205) (hNotB : ¬ p ∣ 384202),
        order_of_C_B_inv_mod_p2 384205 384202 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 384202 384205 := by
  have hlt : (384202 : Nat) < 384205 := by decide
  have hcop : ¬ 53 ∣ (384205 - 384202) := by decide
  have heq : (384205 : ZMod 53) ^ 13 = (384202 : ZMod 53) ^ 13 := by decide
  have hne : (384205 : ZMod 2809) ^ 13 ≠ (384202 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 384205 := by decide
  have hB : ¬ 53 ∣ 384202 := by decide
  have hexp :=
    has_exp_one_of_zmod 384202 384205 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 384202 384205 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 384202 384205 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      384202 384205 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      384202 384205 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_384543_384546 :
    HasPrimeWithExpOne (S_val 384543 384546) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384543 384546 ∧ ¬ p ∣ (384546 - 384543) ∧
      ∃ (hNotC : ¬ p ∣ 384546) (hNotB : ¬ p ∣ 384543),
        order_of_C_B_inv_mod_p2 384546 384543 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 384543 384546 := by
  have hlt : (384543 : Nat) < 384546 := by decide
  have hcop : ¬ 157 ∣ (384546 - 384543) := by decide
  have heq : (384546 : ZMod 157) ^ 13 = (384543 : ZMod 157) ^ 13 := by decide
  have hne : (384546 : ZMod 24649) ^ 13 ≠ (384543 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 384546 := by decide
  have hB : ¬ 157 ∣ 384543 := by decide
  have hexp :=
    has_exp_one_of_zmod 384543 384546 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 384543 384546 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 384543 384546 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      384543 384546 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      384543 384546 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_384884_384887 :
    HasPrimeWithExpOne (S_val 384884 384887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384884 384887 ∧ ¬ p ∣ (384887 - 384884) ∧
      ∃ (hNotC : ¬ p ∣ 384887) (hNotB : ¬ p ∣ 384884),
        order_of_C_B_inv_mod_p2 384887 384884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 384884 384887 := by
  have hlt : (384884 : Nat) < 384887 := by decide
  have hcop : ¬ 521 ∣ (384887 - 384884) := by decide
  have heq : (384887 : ZMod 521) ^ 13 = (384884 : ZMod 521) ^ 13 := by decide
  have hne : (384887 : ZMod 271441) ^ 13 ≠ (384884 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 384887 := by decide
  have hB : ¬ 521 ∣ 384884 := by decide
  have hexp :=
    has_exp_one_of_zmod 384884 384887 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 384884 384887 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 384884 384887 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      384884 384887 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      384884 384887 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_385217_385220 :
    HasPrimeWithExpOne (S_val 385217 385220) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385217 385220 ∧ ¬ p ∣ (385220 - 385217) ∧
      ∃ (hNotC : ¬ p ∣ 385220) (hNotB : ¬ p ∣ 385217),
        order_of_C_B_inv_mod_p2 385220 385217 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 385217 385220 := by
  have hlt : (385217 : Nat) < 385220 := by decide
  have hcop : ¬ 53 ∣ (385220 - 385217) := by decide
  have heq : (385220 : ZMod 53) ^ 13 = (385217 : ZMod 53) ^ 13 := by decide
  have hne : (385220 : ZMod 2809) ^ 13 ≠ (385217 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 385220 := by decide
  have hB : ¬ 53 ∣ 385217 := by decide
  have hexp :=
    has_exp_one_of_zmod 385217 385220 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 385217 385220 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 385217 385220 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      385217 385220 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      385217 385220 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_385556_385559 :
    HasPrimeWithExpOne (S_val 385556 385559) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385556 385559 ∧ ¬ p ∣ (385559 - 385556) ∧
      ∃ (hNotC : ¬ p ∣ 385559) (hNotB : ¬ p ∣ 385556),
        order_of_C_B_inv_mod_p2 385559 385556 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 385556 385559 := by
  have hlt : (385556 : Nat) < 385559 := by decide
  have hcop : ¬ 157 ∣ (385559 - 385556) := by decide
  have heq : (385559 : ZMod 157) ^ 13 = (385556 : ZMod 157) ^ 13 := by decide
  have hne : (385559 : ZMod 24649) ^ 13 ≠ (385556 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 385559 := by decide
  have hB : ¬ 157 ∣ 385556 := by decide
  have hexp :=
    has_exp_one_of_zmod 385556 385559 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 385556 385559 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 385556 385559 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      385556 385559 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      385556 385559 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_385883_385886 :
    HasPrimeWithExpOne (S_val 385883 385886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385883 385886 ∧ ¬ p ∣ (385886 - 385883) ∧
      ∃ (hNotC : ¬ p ∣ 385886) (hNotB : ¬ p ∣ 385883),
        order_of_C_B_inv_mod_p2 385886 385883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 385883 385886 := by
  have hlt : (385883 : Nat) < 385886 := by decide
  have hcop : ¬ 313 ∣ (385886 - 385883) := by decide
  have heq : (385886 : ZMod 313) ^ 13 = (385883 : ZMod 313) ^ 13 := by decide
  have hne : (385886 : ZMod 97969) ^ 13 ≠ (385883 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 385886 := by decide
  have hB : ¬ 313 ∣ 385883 := by decide
  have hexp :=
    has_exp_one_of_zmod 385883 385886 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 385883 385886 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 385883 385886 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      385883 385886 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      385883 385886 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_386231_386234 :
    HasPrimeWithExpOne (S_val 386231 386234) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386231 386234 ∧ ¬ p ∣ (386234 - 386231) ∧
      ∃ (hNotC : ¬ p ∣ 386234) (hNotB : ¬ p ∣ 386231),
        order_of_C_B_inv_mod_p2 386234 386231 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386231 386234 := by
  have hlt : (386231 : Nat) < 386234 := by decide
  have hcop : ¬ 131 ∣ (386234 - 386231) := by decide
  have heq : (386234 : ZMod 131) ^ 13 = (386231 : ZMod 131) ^ 13 := by decide
  have hne : (386234 : ZMod 17161) ^ 13 ≠ (386231 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 386234 := by decide
  have hB : ¬ 131 ∣ 386231 := by decide
  have hexp :=
    has_exp_one_of_zmod 386231 386234 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 386231 386234 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 386231 386234 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      386231 386234 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      386231 386234 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_386561_386564 :
    HasPrimeWithExpOne (S_val 386561 386564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386561 386564 ∧ ¬ p ∣ (386564 - 386561) ∧
      ∃ (hNotC : ¬ p ∣ 386564) (hNotB : ¬ p ∣ 386561),
        order_of_C_B_inv_mod_p2 386564 386561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386561 386564 := by
  have hlt : (386561 : Nat) < 386564 := by decide
  have hcop : ¬ 53 ∣ (386564 - 386561) := by decide
  have heq : (386564 : ZMod 53) ^ 13 = (386561 : ZMod 53) ^ 13 := by decide
  have hne : (386564 : ZMod 2809) ^ 13 ≠ (386561 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 386564 := by decide
  have hB : ¬ 53 ∣ 386561 := by decide
  have hexp :=
    has_exp_one_of_zmod 386561 386564 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 386561 386564 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 386561 386564 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      386561 386564 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      386561 386564 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_386884_386887 :
    HasPrimeWithExpOne (S_val 386884 386887) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386884 386887 ∧ ¬ p ∣ (386887 - 386884) ∧
      ∃ (hNotC : ¬ p ∣ 386887) (hNotB : ¬ p ∣ 386884),
        order_of_C_B_inv_mod_p2 386887 386884 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386884 386887 := by
  have hlt : (386884 : Nat) < 386887 := by decide
  have hcop : ¬ 53 ∣ (386887 - 386884) := by decide
  have heq : (386887 : ZMod 53) ^ 13 = (386884 : ZMod 53) ^ 13 := by decide
  have hne : (386887 : ZMod 2809) ^ 13 ≠ (386884 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 386887 := by decide
  have hB : ¬ 53 ∣ 386884 := by decide
  have hexp :=
    has_exp_one_of_zmod 386884 386887 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 386884 386887 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 386884 386887 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      386884 386887 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      386884 386887 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_387210_387213 :
    HasPrimeWithExpOne (S_val 387210 387213) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387210 387213 ∧ ¬ p ∣ (387213 - 387210) ∧
      ∃ (hNotC : ¬ p ∣ 387213) (hNotB : ¬ p ∣ 387210),
        order_of_C_B_inv_mod_p2 387213 387210 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 387210 387213 := by
  have hlt : (387210 : Nat) < 387213 := by decide
  have hcop : ¬ 53 ∣ (387213 - 387210) := by decide
  have heq : (387213 : ZMod 53) ^ 13 = (387210 : ZMod 53) ^ 13 := by decide
  have hne : (387213 : ZMod 2809) ^ 13 ≠ (387210 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 387213 := by decide
  have hB : ¬ 53 ∣ 387210 := by decide
  have hexp :=
    has_exp_one_of_zmod 387210 387213 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 387210 387213 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 387210 387213 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      387210 387213 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      387210 387213 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_387529_387532 :
    HasPrimeWithExpOne (S_val 387529 387532) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387529 387532 ∧ ¬ p ∣ (387532 - 387529) ∧
      ∃ (hNotC : ¬ p ∣ 387532) (hNotB : ¬ p ∣ 387529),
        order_of_C_B_inv_mod_p2 387532 387529 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 387529 387532 := by
  have hlt : (387529 : Nat) < 387532 := by decide
  have hcop : ¬ 53 ∣ (387532 - 387529) := by decide
  have heq : (387532 : ZMod 53) ^ 13 = (387529 : ZMod 53) ^ 13 := by decide
  have hne : (387532 : ZMod 2809) ^ 13 ≠ (387529 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 387532 := by decide
  have hB : ¬ 53 ∣ 387529 := by decide
  have hexp :=
    has_exp_one_of_zmod 387529 387532 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 387529 387532 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 387529 387532 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      387529 387532 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      387529 387532 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_387866_387869 :
    HasPrimeWithExpOne (S_val 387866 387869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387866 387869 ∧ ¬ p ∣ (387869 - 387866) ∧
      ∃ (hNotC : ¬ p ∣ 387869) (hNotB : ¬ p ∣ 387866),
        order_of_C_B_inv_mod_p2 387869 387866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 387866 387869 := by
  have hlt : (387866 : Nat) < 387869 := by decide
  have hcop : ¬ 521 ∣ (387869 - 387866) := by decide
  have heq : (387869 : ZMod 521) ^ 13 = (387866 : ZMod 521) ^ 13 := by decide
  have hne : (387869 : ZMod 271441) ^ 13 ≠ (387866 : ZMod 271441) ^ 13 := by decide
  have hC : ¬ 521 ∣ 387869 := by decide
  have hB : ¬ 521 ∣ 387866 := by decide
  have hexp :=
    has_exp_one_of_zmod 387866 387869 521 271441 hlt prime_521 sq_521 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 387866 387869 521 hlt prime_521 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 387866 387869 521 271441 hlt sq_521 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      387866 387869 521 prime_521 ne_13_521 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      387866 387869 521 prime_521 hdvd hcop ne_13_521 hlt hC hB hord
  exact ⟨hexp, ⟨521, prime_521, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_388209_388212 :
    HasPrimeWithExpOne (S_val 388209 388212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388209 388212 ∧ ¬ p ∣ (388212 - 388209) ∧
      ∃ (hNotC : ¬ p ∣ 388212) (hNotB : ¬ p ∣ 388209),
        order_of_C_B_inv_mod_p2 388212 388209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 388209 388212 := by
  have hlt : (388209 : Nat) < 388212 := by decide
  have hcop : ¬ 53 ∣ (388212 - 388209) := by decide
  have heq : (388212 : ZMod 53) ^ 13 = (388209 : ZMod 53) ^ 13 := by decide
  have hne : (388212 : ZMod 2809) ^ 13 ≠ (388209 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 388212 := by decide
  have hB : ¬ 53 ∣ 388209 := by decide
  have hexp :=
    has_exp_one_of_zmod 388209 388212 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 388209 388212 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 388209 388212 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      388209 388212 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      388209 388212 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_388540_388543 :
    HasPrimeWithExpOne (S_val 388540 388543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388540 388543 ∧ ¬ p ∣ (388543 - 388540) ∧
      ∃ (hNotC : ¬ p ∣ 388543) (hNotB : ¬ p ∣ 388540),
        order_of_C_B_inv_mod_p2 388543 388540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 388540 388543 := by
  have hlt : (388540 : Nat) < 388543 := by decide
  have hcop : ¬ 79 ∣ (388543 - 388540) := by decide
  have heq : (388543 : ZMod 79) ^ 13 = (388540 : ZMod 79) ^ 13 := by decide
  have hne : (388543 : ZMod 6241) ^ 13 ≠ (388540 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 388543 := by decide
  have hB : ¬ 79 ∣ 388540 := by decide
  have hexp :=
    has_exp_one_of_zmod 388540 388543 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 388540 388543 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 388540 388543 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      388540 388543 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      388540 388543 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_388891_388894 :
    HasPrimeWithExpOne (S_val 388891 388894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388891 388894 ∧ ¬ p ∣ (388894 - 388891) ∧
      ∃ (hNotC : ¬ p ∣ 388894) (hNotB : ¬ p ∣ 388891),
        order_of_C_B_inv_mod_p2 388894 388891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 388891 388894 := by
  have hlt : (388891 : Nat) < 388894 := by decide
  have hcop : ¬ 79 ∣ (388894 - 388891) := by decide
  have heq : (388894 : ZMod 79) ^ 13 = (388891 : ZMod 79) ^ 13 := by decide
  have hne : (388894 : ZMod 6241) ^ 13 ≠ (388891 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 388894 := by decide
  have hB : ¬ 79 ∣ 388891 := by decide
  have hexp :=
    has_exp_one_of_zmod 388891 388894 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 388891 388894 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 388891 388894 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      388891 388894 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      388891 388894 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_389250_389253 :
    HasPrimeWithExpOne (S_val 389250 389253) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389250 389253 ∧ ¬ p ∣ (389253 - 389250) ∧
      ∃ (hNotC : ¬ p ∣ 389253) (hNotB : ¬ p ∣ 389250),
        order_of_C_B_inv_mod_p2 389253 389250 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 389250 389253 := by
  have hlt : (389250 : Nat) < 389253 := by decide
  have hcop : ¬ 53 ∣ (389253 - 389250) := by decide
  have heq : (389253 : ZMod 53) ^ 13 = (389250 : ZMod 53) ^ 13 := by decide
  have hne : (389253 : ZMod 2809) ^ 13 ≠ (389250 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 389253 := by decide
  have hB : ¬ 53 ∣ 389250 := by decide
  have hexp :=
    has_exp_one_of_zmod 389250 389253 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 389250 389253 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 389250 389253 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      389250 389253 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      389250 389253 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_389562_389565 :
    HasPrimeWithExpOne (S_val 389562 389565) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389562 389565 ∧ ¬ p ∣ (389565 - 389562) ∧
      ∃ (hNotC : ¬ p ∣ 389565) (hNotB : ¬ p ∣ 389562),
        order_of_C_B_inv_mod_p2 389565 389562 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 389562 389565 := by
  have hlt : (389562 : Nat) < 389565 := by decide
  have hcop : ¬ 79 ∣ (389565 - 389562) := by decide
  have heq : (389565 : ZMod 79) ^ 13 = (389562 : ZMod 79) ^ 13 := by decide
  have hne : (389565 : ZMod 6241) ^ 13 ≠ (389562 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 389565 := by decide
  have hB : ¬ 79 ∣ 389562 := by decide
  have hexp :=
    has_exp_one_of_zmod 389562 389565 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 389562 389565 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 389562 389565 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      389562 389565 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      389562 389565 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_389910_389913 :
    HasPrimeWithExpOne (S_val 389910 389913) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389910 389913 ∧ ¬ p ∣ (389913 - 389910) ∧
      ∃ (hNotC : ¬ p ∣ 389913) (hNotB : ¬ p ∣ 389910),
        order_of_C_B_inv_mod_p2 389913 389910 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 389910 389913 := by
  have hlt : (389910 : Nat) < 389913 := by decide
  have hcop : ¬ 131 ∣ (389913 - 389910) := by decide
  have heq : (389913 : ZMod 131) ^ 13 = (389910 : ZMod 131) ^ 13 := by decide
  have hne : (389913 : ZMod 17161) ^ 13 ≠ (389910 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 389913 := by decide
  have hB : ¬ 131 ∣ 389910 := by decide
  have hexp :=
    has_exp_one_of_zmod 389910 389913 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 389910 389913 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 389910 389913 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      389910 389913 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      389910 389913 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_390245_390248 :
    HasPrimeWithExpOne (S_val 390245 390248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390245 390248 ∧ ¬ p ∣ (390248 - 390245) ∧
      ∃ (hNotC : ¬ p ∣ 390248) (hNotB : ¬ p ∣ 390245),
        order_of_C_B_inv_mod_p2 390248 390245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 390245 390248 := by
  have hlt : (390245 : Nat) < 390248 := by decide
  have hcop : ¬ 53 ∣ (390248 - 390245) := by decide
  have heq : (390248 : ZMod 53) ^ 13 = (390245 : ZMod 53) ^ 13 := by decide
  have hne : (390248 : ZMod 2809) ^ 13 ≠ (390245 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 390248 := by decide
  have hB : ¬ 53 ∣ 390245 := by decide
  have hexp :=
    has_exp_one_of_zmod 390245 390248 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 390245 390248 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 390245 390248 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      390245 390248 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      390245 390248 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_390567_390570 :
    HasPrimeWithExpOne (S_val 390567 390570) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390567 390570 ∧ ¬ p ∣ (390570 - 390567) ∧
      ∃ (hNotC : ¬ p ∣ 390570) (hNotB : ¬ p ∣ 390567),
        order_of_C_B_inv_mod_p2 390570 390567 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 390567 390570 := by
  have hlt : (390567 : Nat) < 390570 := by decide
  have hcop : ¬ 53 ∣ (390570 - 390567) := by decide
  have heq : (390570 : ZMod 53) ^ 13 = (390567 : ZMod 53) ^ 13 := by decide
  have hne : (390570 : ZMod 2809) ^ 13 ≠ (390567 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 390570 := by decide
  have hB : ¬ 53 ∣ 390567 := by decide
  have hexp :=
    has_exp_one_of_zmod 390567 390570 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 390567 390570 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 390567 390570 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      390567 390570 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      390567 390570 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_390901_390904 :
    HasPrimeWithExpOne (S_val 390901 390904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390901 390904 ∧ ¬ p ∣ (390904 - 390901) ∧
      ∃ (hNotC : ¬ p ∣ 390904) (hNotB : ¬ p ∣ 390901),
        order_of_C_B_inv_mod_p2 390904 390901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 390901 390904 := by
  have hlt : (390901 : Nat) < 390904 := by decide
  have hcop : ¬ 313 ∣ (390904 - 390901) := by decide
  have heq : (390904 : ZMod 313) ^ 13 = (390901 : ZMod 313) ^ 13 := by decide
  have hne : (390904 : ZMod 97969) ^ 13 ≠ (390901 : ZMod 97969) ^ 13 := by decide
  have hC : ¬ 313 ∣ 390904 := by decide
  have hB : ¬ 313 ∣ 390901 := by decide
  have hexp :=
    has_exp_one_of_zmod 390901 390904 313 97969 hlt prime_313 sq_313 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 390901 390904 313 hlt prime_313 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 390901 390904 313 97969 hlt sq_313 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      390901 390904 313 prime_313 ne_13_313 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      390901 390904 313 prime_313 hdvd hcop ne_13_313 hlt hC hB hord
  exact ⟨hexp, ⟨313, prime_313, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_391226_391229 :
    HasPrimeWithExpOne (S_val 391226 391229) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391226 391229 ∧ ¬ p ∣ (391229 - 391226) ∧
      ∃ (hNotC : ¬ p ∣ 391229) (hNotB : ¬ p ∣ 391226),
        order_of_C_B_inv_mod_p2 391229 391226 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 391226 391229 := by
  have hlt : (391226 : Nat) < 391229 := by decide
  have hcop : ¬ 79 ∣ (391229 - 391226) := by decide
  have heq : (391229 : ZMod 79) ^ 13 = (391226 : ZMod 79) ^ 13 := by decide
  have hne : (391229 : ZMod 6241) ^ 13 ≠ (391226 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 391229 := by decide
  have hB : ¬ 79 ∣ 391226 := by decide
  have hexp :=
    has_exp_one_of_zmod 391226 391229 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 391226 391229 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 391226 391229 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      391226 391229 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      391226 391229 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_391568_391571 :
    HasPrimeWithExpOne (S_val 391568 391571) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391568 391571 ∧ ¬ p ∣ (391571 - 391568) ∧
      ∃ (hNotC : ¬ p ∣ 391571) (hNotB : ¬ p ∣ 391568),
        order_of_C_B_inv_mod_p2 391571 391568 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 391568 391571 := by
  have hlt : (391568 : Nat) < 391571 := by decide
  have hcop : ¬ 53 ∣ (391571 - 391568) := by decide
  have heq : (391571 : ZMod 53) ^ 13 = (391568 : ZMod 53) ^ 13 := by decide
  have hne : (391571 : ZMod 2809) ^ 13 ≠ (391568 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 391571 := by decide
  have hB : ¬ 53 ∣ 391568 := by decide
  have hexp :=
    has_exp_one_of_zmod 391568 391571 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 391568 391571 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 391568 391571 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      391568 391571 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      391568 391571 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_391893_391896 :
    HasPrimeWithExpOne (S_val 391893 391896) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391893 391896 ∧ ¬ p ∣ (391896 - 391893) ∧
      ∃ (hNotC : ¬ p ∣ 391896) (hNotB : ¬ p ∣ 391893),
        order_of_C_B_inv_mod_p2 391896 391893 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 391893 391896 := by
  have hlt : (391893 : Nat) < 391896 := by decide
  have hcop : ¬ 79 ∣ (391896 - 391893) := by decide
  have heq : (391896 : ZMod 79) ^ 13 = (391893 : ZMod 79) ^ 13 := by decide
  have hne : (391896 : ZMod 6241) ^ 13 ≠ (391893 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 391896 := by decide
  have hB : ¬ 79 ∣ 391893 := by decide
  have hexp :=
    has_exp_one_of_zmod 391893 391896 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 391893 391896 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 391893 391896 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      391893 391896 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      391893 391896 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_392220_392223 :
    HasPrimeWithExpOne (S_val 392220 392223) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392220 392223 ∧ ¬ p ∣ (392223 - 392220) ∧
      ∃ (hNotC : ¬ p ∣ 392223) (hNotB : ¬ p ∣ 392220),
        order_of_C_B_inv_mod_p2 392223 392220 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 392220 392223 := by
  have hlt : (392220 : Nat) < 392223 := by decide
  have hcop : ¬ 79 ∣ (392223 - 392220) := by decide
  have heq : (392223 : ZMod 79) ^ 13 = (392220 : ZMod 79) ^ 13 := by decide
  have hne : (392223 : ZMod 6241) ^ 13 ≠ (392220 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 392223 := by decide
  have hB : ¬ 79 ∣ 392220 := by decide
  have hexp :=
    has_exp_one_of_zmod 392220 392223 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 392220 392223 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 392220 392223 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      392220 392223 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      392220 392223 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_392575_392578 :
    HasPrimeWithExpOne (S_val 392575 392578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392575 392578 ∧ ¬ p ∣ (392578 - 392575) ∧
      ∃ (hNotC : ¬ p ∣ 392578) (hNotB : ¬ p ∣ 392575),
        order_of_C_B_inv_mod_p2 392578 392575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 392575 392578 := by
  have hlt : (392575 : Nat) < 392578 := by decide
  have hcop : ¬ 53 ∣ (392578 - 392575) := by decide
  have heq : (392578 : ZMod 53) ^ 13 = (392575 : ZMod 53) ^ 13 := by decide
  have hne : (392578 : ZMod 2809) ^ 13 ≠ (392575 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 392578 := by decide
  have hB : ¬ 53 ∣ 392575 := by decide
  have hexp :=
    has_exp_one_of_zmod 392575 392578 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 392575 392578 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 392575 392578 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      392575 392578 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      392575 392578 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_392905_392908 :
    HasPrimeWithExpOne (S_val 392905 392908) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392905 392908 ∧ ¬ p ∣ (392908 - 392905) ∧
      ∃ (hNotC : ¬ p ∣ 392908) (hNotB : ¬ p ∣ 392905),
        order_of_C_B_inv_mod_p2 392908 392905 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 392905 392908 := by
  have hlt : (392905 : Nat) < 392908 := by decide
  have hcop : ¬ 157 ∣ (392908 - 392905) := by decide
  have heq : (392908 : ZMod 157) ^ 13 = (392905 : ZMod 157) ^ 13 := by decide
  have hne : (392908 : ZMod 24649) ^ 13 ≠ (392905 : ZMod 24649) ^ 13 := by decide
  have hC : ¬ 157 ∣ 392908 := by decide
  have hB : ¬ 157 ∣ 392905 := by decide
  have hexp :=
    has_exp_one_of_zmod 392905 392908 157 24649 hlt prime_157 sq_157 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 392905 392908 157 hlt prime_157 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 392905 392908 157 24649 hlt sq_157 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      392905 392908 157 prime_157 ne_13_157 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      392905 392908 157 prime_157 hdvd hcop ne_13_157 hlt hC hB hord
  exact ⟨hexp, ⟨157, prime_157, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_393245_393248 :
    HasPrimeWithExpOne (S_val 393245 393248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393245 393248 ∧ ¬ p ∣ (393248 - 393245) ∧
      ∃ (hNotC : ¬ p ∣ 393248) (hNotB : ¬ p ∣ 393245),
        order_of_C_B_inv_mod_p2 393248 393245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 393245 393248 := by
  have hlt : (393245 : Nat) < 393248 := by decide
  have hcop : ¬ 79 ∣ (393248 - 393245) := by decide
  have heq : (393248 : ZMod 79) ^ 13 = (393245 : ZMod 79) ^ 13 := by decide
  have hne : (393248 : ZMod 6241) ^ 13 ≠ (393245 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 393248 := by decide
  have hB : ¬ 79 ∣ 393245 := by decide
  have hexp :=
    has_exp_one_of_zmod 393245 393248 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 393245 393248 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 393245 393248 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      393245 393248 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      393245 393248 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_393583_393586 :
    HasPrimeWithExpOne (S_val 393583 393586) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393583 393586 ∧ ¬ p ∣ (393586 - 393583) ∧
      ∃ (hNotC : ¬ p ∣ 393586) (hNotB : ¬ p ∣ 393583),
        order_of_C_B_inv_mod_p2 393586 393583 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 393583 393586 := by
  have hlt : (393583 : Nat) < 393586 := by decide
  have hcop : ¬ 53 ∣ (393586 - 393583) := by decide
  have heq : (393586 : ZMod 53) ^ 13 = (393583 : ZMod 53) ^ 13 := by decide
  have hne : (393586 : ZMod 2809) ^ 13 ≠ (393583 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 393586 := by decide
  have hB : ¬ 53 ∣ 393583 := by decide
  have hexp :=
    has_exp_one_of_zmod 393583 393586 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 393583 393586 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 393583 393586 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      393583 393586 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      393583 393586 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_393909_393912 :
    HasPrimeWithExpOne (S_val 393909 393912) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393909 393912 ∧ ¬ p ∣ (393912 - 393909) ∧
      ∃ (hNotC : ¬ p ∣ 393912) (hNotB : ¬ p ∣ 393909),
        order_of_C_B_inv_mod_p2 393912 393909 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 393909 393912 := by
  have hlt : (393909 : Nat) < 393912 := by decide
  have hcop : ¬ 53 ∣ (393912 - 393909) := by decide
  have heq : (393912 : ZMod 53) ^ 13 = (393909 : ZMod 53) ^ 13 := by decide
  have hne : (393912 : ZMod 2809) ^ 13 ≠ (393909 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 393912 := by decide
  have hB : ¬ 53 ∣ 393909 := by decide
  have hexp :=
    has_exp_one_of_zmod 393909 393912 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 393909 393912 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 393909 393912 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      393909 393912 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      393909 393912 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_394258_394261 :
    HasPrimeWithExpOne (S_val 394258 394261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394258 394261 ∧ ¬ p ∣ (394261 - 394258) ∧
      ∃ (hNotC : ¬ p ∣ 394261) (hNotB : ¬ p ∣ 394258),
        order_of_C_B_inv_mod_p2 394261 394258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 394258 394261 := by
  have hlt : (394258 : Nat) < 394261 := by decide
  have hcop : ¬ 53 ∣ (394261 - 394258) := by decide
  have heq : (394261 : ZMod 53) ^ 13 = (394258 : ZMod 53) ^ 13 := by decide
  have hne : (394261 : ZMod 2809) ^ 13 ≠ (394258 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 394261 := by decide
  have hB : ¬ 53 ∣ 394258 := by decide
  have hexp :=
    has_exp_one_of_zmod 394258 394261 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 394258 394261 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 394258 394261 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      394258 394261 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      394258 394261 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_394598_394601 :
    HasPrimeWithExpOne (S_val 394598 394601) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394598 394601 ∧ ¬ p ∣ (394601 - 394598) ∧
      ∃ (hNotC : ¬ p ∣ 394601) (hNotB : ¬ p ∣ 394598),
        order_of_C_B_inv_mod_p2 394601 394598 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 394598 394601 := by
  have hlt : (394598 : Nat) < 394601 := by decide
  have hcop : ¬ 53 ∣ (394601 - 394598) := by decide
  have heq : (394601 : ZMod 53) ^ 13 = (394598 : ZMod 53) ^ 13 := by decide
  have hne : (394601 : ZMod 2809) ^ 13 ≠ (394598 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 394601 := by decide
  have hB : ¬ 53 ∣ 394598 := by decide
  have hexp :=
    has_exp_one_of_zmod 394598 394601 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 394598 394601 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 394598 394601 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      394598 394601 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      394598 394601 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_394940_394943 :
    HasPrimeWithExpOne (S_val 394940 394943) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394940 394943 ∧ ¬ p ∣ (394943 - 394940) ∧
      ∃ (hNotC : ¬ p ∣ 394943) (hNotB : ¬ p ∣ 394940),
        order_of_C_B_inv_mod_p2 394943 394940 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 394940 394943 := by
  have hlt : (394940 : Nat) < 394943 := by decide
  have hcop : ¬ 53 ∣ (394943 - 394940) := by decide
  have heq : (394943 : ZMod 53) ^ 13 = (394940 : ZMod 53) ^ 13 := by decide
  have hne : (394943 : ZMod 2809) ^ 13 ≠ (394940 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 394943 := by decide
  have hB : ¬ 53 ∣ 394940 := by decide
  have hexp :=
    has_exp_one_of_zmod 394940 394943 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 394940 394943 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 394940 394943 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      394940 394943 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      394940 394943 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_395267_395270 :
    HasPrimeWithExpOne (S_val 395267 395270) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395267 395270 ∧ ¬ p ∣ (395270 - 395267) ∧
      ∃ (hNotC : ¬ p ∣ 395270) (hNotB : ¬ p ∣ 395267),
        order_of_C_B_inv_mod_p2 395270 395267 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 395267 395270 := by
  have hlt : (395267 : Nat) < 395270 := by decide
  have hcop : ¬ 53 ∣ (395270 - 395267) := by decide
  have heq : (395270 : ZMod 53) ^ 13 = (395267 : ZMod 53) ^ 13 := by decide
  have hne : (395270 : ZMod 2809) ^ 13 ≠ (395267 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 395270 := by decide
  have hB : ¬ 53 ∣ 395267 := by decide
  have hexp :=
    has_exp_one_of_zmod 395267 395270 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 395267 395270 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 395267 395270 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      395267 395270 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      395267 395270 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_395611_395614 :
    HasPrimeWithExpOne (S_val 395611 395614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395611 395614 ∧ ¬ p ∣ (395614 - 395611) ∧
      ∃ (hNotC : ¬ p ∣ 395614) (hNotB : ¬ p ∣ 395611),
        order_of_C_B_inv_mod_p2 395614 395611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 395611 395614 := by
  have hlt : (395611 : Nat) < 395614 := by decide
  have hcop : ¬ 79 ∣ (395614 - 395611) := by decide
  have heq : (395614 : ZMod 79) ^ 13 = (395611 : ZMod 79) ^ 13 := by decide
  have hne : (395614 : ZMod 6241) ^ 13 ≠ (395611 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 395614 := by decide
  have hB : ¬ 79 ∣ 395611 := by decide
  have hexp :=
    has_exp_one_of_zmod 395611 395614 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 395611 395614 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 395611 395614 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      395611 395614 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      395611 395614 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_395954_395957 :
    HasPrimeWithExpOne (S_val 395954 395957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395954 395957 ∧ ¬ p ∣ (395957 - 395954) ∧
      ∃ (hNotC : ¬ p ∣ 395957) (hNotB : ¬ p ∣ 395954),
        order_of_C_B_inv_mod_p2 395957 395954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 395954 395957 := by
  have hlt : (395954 : Nat) < 395957 := by decide
  have hcop : ¬ 53 ∣ (395957 - 395954) := by decide
  have heq : (395957 : ZMod 53) ^ 13 = (395954 : ZMod 53) ^ 13 := by decide
  have hne : (395957 : ZMod 2809) ^ 13 ≠ (395954 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 395957 := by decide
  have hB : ¬ 53 ∣ 395954 := by decide
  have hexp :=
    has_exp_one_of_zmod 395954 395957 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 395954 395957 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 395954 395957 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      395954 395957 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      395954 395957 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_396276_396279 :
    HasPrimeWithExpOne (S_val 396276 396279) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396276 396279 ∧ ¬ p ∣ (396279 - 396276) ∧
      ∃ (hNotC : ¬ p ∣ 396279) (hNotB : ¬ p ∣ 396276),
        order_of_C_B_inv_mod_p2 396279 396276 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 396276 396279 := by
  have hlt : (396276 : Nat) < 396279 := by decide
  have hcop : ¬ 79 ∣ (396279 - 396276) := by decide
  have heq : (396279 : ZMod 79) ^ 13 = (396276 : ZMod 79) ^ 13 := by decide
  have hne : (396279 : ZMod 6241) ^ 13 ≠ (396276 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 396279 := by decide
  have hB : ¬ 79 ∣ 396276 := by decide
  have hexp :=
    has_exp_one_of_zmod 396276 396279 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 396276 396279 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 396276 396279 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      396276 396279 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      396276 396279 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_396633_396636 :
    HasPrimeWithExpOne (S_val 396633 396636) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396633 396636 ∧ ¬ p ∣ (396636 - 396633) ∧
      ∃ (hNotC : ¬ p ∣ 396636) (hNotB : ¬ p ∣ 396633),
        order_of_C_B_inv_mod_p2 396636 396633 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 396633 396636 := by
  have hlt : (396633 : Nat) < 396636 := by decide
  have hcop : ¬ 79 ∣ (396636 - 396633) := by decide
  have heq : (396636 : ZMod 79) ^ 13 = (396633 : ZMod 79) ^ 13 := by decide
  have hne : (396636 : ZMod 6241) ^ 13 ≠ (396633 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 396636 := by decide
  have hB : ¬ 79 ∣ 396633 := by decide
  have hexp :=
    has_exp_one_of_zmod 396633 396636 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 396633 396636 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 396633 396636 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      396633 396636 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      396633 396636 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_396971_396974 :
    HasPrimeWithExpOne (S_val 396971 396974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396971 396974 ∧ ¬ p ∣ (396974 - 396971) ∧
      ∃ (hNotC : ¬ p ∣ 396974) (hNotB : ¬ p ∣ 396971),
        order_of_C_B_inv_mod_p2 396974 396971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 396971 396974 := by
  have hlt : (396971 : Nat) < 396974 := by decide
  have hcop : ¬ 547 ∣ (396974 - 396971) := by decide
  have heq : (396974 : ZMod 547) ^ 13 = (396971 : ZMod 547) ^ 13 := by decide
  have hne : (396974 : ZMod 299209) ^ 13 ≠ (396971 : ZMod 299209) ^ 13 := by decide
  have hC : ¬ 547 ∣ 396974 := by decide
  have hB : ¬ 547 ∣ 396971 := by decide
  have hexp :=
    has_exp_one_of_zmod 396971 396974 547 299209 hlt prime_547 sq_547 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 396971 396974 547 hlt prime_547 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 396971 396974 547 299209 hlt sq_547 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      396971 396974 547 prime_547 ne_13_547 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      396971 396974 547 prime_547 hdvd hcop ne_13_547 hlt hC hB hord
  exact ⟨hexp, ⟨547, prime_547, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_397328_397331 :
    HasPrimeWithExpOne (S_val 397328 397331) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397328 397331 ∧ ¬ p ∣ (397331 - 397328) ∧
      ∃ (hNotC : ¬ p ∣ 397331) (hNotB : ¬ p ∣ 397328),
        order_of_C_B_inv_mod_p2 397331 397328 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 397328 397331 := by
  have hlt : (397328 : Nat) < 397331 := by decide
  have hcop : ¬ 53 ∣ (397331 - 397328) := by decide
  have heq : (397331 : ZMod 53) ^ 13 = (397328 : ZMod 53) ^ 13 := by decide
  have hne : (397331 : ZMod 2809) ^ 13 ≠ (397328 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 397331 := by decide
  have hB : ¬ 53 ∣ 397328 := by decide
  have hexp :=
    has_exp_one_of_zmod 397328 397331 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 397328 397331 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 397328 397331 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      397328 397331 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      397328 397331 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_397660_397663 :
    HasPrimeWithExpOne (S_val 397660 397663) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397660 397663 ∧ ¬ p ∣ (397663 - 397660) ∧
      ∃ (hNotC : ¬ p ∣ 397663) (hNotB : ¬ p ∣ 397660),
        order_of_C_B_inv_mod_p2 397663 397660 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 397660 397663 := by
  have hlt : (397660 : Nat) < 397663 := by decide
  have hcop : ¬ 79 ∣ (397663 - 397660) := by decide
  have heq : (397663 : ZMod 79) ^ 13 = (397660 : ZMod 79) ^ 13 := by decide
  have hne : (397663 : ZMod 6241) ^ 13 ≠ (397660 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 397663 := by decide
  have hB : ¬ 79 ∣ 397660 := by decide
  have hexp :=
    has_exp_one_of_zmod 397660 397663 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 397660 397663 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 397660 397663 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      397660 397663 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      397660 397663 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_397990_397993 :
    HasPrimeWithExpOne (S_val 397990 397993) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397990 397993 ∧ ¬ p ∣ (397993 - 397990) ∧
      ∃ (hNotC : ¬ p ∣ 397993) (hNotB : ¬ p ∣ 397990),
        order_of_C_B_inv_mod_p2 397993 397990 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 397990 397993 := by
  have hlt : (397990 : Nat) < 397993 := by decide
  have hcop : ¬ 53 ∣ (397993 - 397990) := by decide
  have heq : (397993 : ZMod 53) ^ 13 = (397990 : ZMod 53) ^ 13 := by decide
  have hne : (397993 : ZMod 2809) ^ 13 ≠ (397990 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 397993 := by decide
  have hB : ¬ 53 ∣ 397990 := by decide
  have hexp :=
    has_exp_one_of_zmod 397990 397993 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 397990 397993 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 397990 397993 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      397990 397993 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      397990 397993 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_398314_398317 :
    HasPrimeWithExpOne (S_val 398314 398317) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 398314 398317 ∧ ¬ p ∣ (398317 - 398314) ∧
      ∃ (hNotC : ¬ p ∣ 398317) (hNotB : ¬ p ∣ 398314),
        order_of_C_B_inv_mod_p2 398317 398314 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 398314 398317 := by
  have hlt : (398314 : Nat) < 398317 := by decide
  have hcop : ¬ 131 ∣ (398317 - 398314) := by decide
  have heq : (398317 : ZMod 131) ^ 13 = (398314 : ZMod 131) ^ 13 := by decide
  have hne : (398317 : ZMod 17161) ^ 13 ≠ (398314 : ZMod 17161) ^ 13 := by decide
  have hC : ¬ 131 ∣ 398317 := by decide
  have hB : ¬ 131 ∣ 398314 := by decide
  have hexp :=
    has_exp_one_of_zmod 398314 398317 131 17161 hlt prime_131 sq_131 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 398314 398317 131 hlt prime_131 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 398314 398317 131 17161 hlt sq_131 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      398314 398317 131 prime_131 ne_13_131 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      398314 398317 131 prime_131 hdvd hcop ne_13_131 hlt hC hB hord
  exact ⟨hexp, ⟨131, prime_131, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_398679_398682 :
    HasPrimeWithExpOne (S_val 398679 398682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 398679 398682 ∧ ¬ p ∣ (398682 - 398679) ∧
      ∃ (hNotC : ¬ p ∣ 398682) (hNotB : ¬ p ∣ 398679),
        order_of_C_B_inv_mod_p2 398682 398679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 398679 398682 := by
  have hlt : (398679 : Nat) < 398682 := by decide
  have hcop : ¬ 53 ∣ (398682 - 398679) := by decide
  have heq : (398682 : ZMod 53) ^ 13 = (398679 : ZMod 53) ^ 13 := by decide
  have hne : (398682 : ZMod 2809) ^ 13 ≠ (398679 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 398682 := by decide
  have hB : ¬ 53 ∣ 398679 := by decide
  have hexp :=
    has_exp_one_of_zmod 398679 398682 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 398679 398682 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 398679 398682 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      398679 398682 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      398679 398682 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_399003_399006 :
    HasPrimeWithExpOne (S_val 399003 399006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399003 399006 ∧ ¬ p ∣ (399006 - 399003) ∧
      ∃ (hNotC : ¬ p ∣ 399006) (hNotB : ¬ p ∣ 399003),
        order_of_C_B_inv_mod_p2 399006 399003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 399003 399006 := by
  have hlt : (399003 : Nat) < 399006 := by decide
  have hcop : ¬ 79 ∣ (399006 - 399003) := by decide
  have heq : (399006 : ZMod 79) ^ 13 = (399003 : ZMod 79) ^ 13 := by decide
  have hne : (399006 : ZMod 6241) ^ 13 ≠ (399003 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 399006 := by decide
  have hB : ¬ 79 ∣ 399003 := by decide
  have hexp :=
    has_exp_one_of_zmod 399003 399006 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 399003 399006 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 399003 399006 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      399003 399006 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      399003 399006 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_399346_399349 :
    HasPrimeWithExpOne (S_val 399346 399349) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399346 399349 ∧ ¬ p ∣ (399349 - 399346) ∧
      ∃ (hNotC : ¬ p ∣ 399349) (hNotB : ¬ p ∣ 399346),
        order_of_C_B_inv_mod_p2 399349 399346 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 399346 399349 := by
  have hlt : (399346 : Nat) < 399349 := by decide
  have hcop : ¬ 53 ∣ (399349 - 399346) := by decide
  have heq : (399349 : ZMod 53) ^ 13 = (399346 : ZMod 53) ^ 13 := by decide
  have hne : (399349 : ZMod 2809) ^ 13 ≠ (399346 : ZMod 2809) ^ 13 := by decide
  have hC : ¬ 53 ∣ 399349 := by decide
  have hB : ¬ 53 ∣ 399346 := by decide
  have hexp :=
    has_exp_one_of_zmod 399346 399349 53 2809 hlt prime_53 sq_53 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 399346 399349 53 hlt prime_53 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 399346 399349 53 2809 hlt sq_53 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      399346 399349 53 prime_53 ne_13_53 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      399346 399349 53 prime_53 hdvd hcop ne_13_53 hlt hC hB hord
  exact ⟨hexp, ⟨53, prime_53, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_399674_399677 :
    HasPrimeWithExpOne (S_val 399674 399677) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399674 399677 ∧ ¬ p ∣ (399677 - 399674) ∧
      ∃ (hNotC : ¬ p ∣ 399677) (hNotB : ¬ p ∣ 399674),
        order_of_C_B_inv_mod_p2 399677 399674 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 399674 399677 := by
  have hlt : (399674 : Nat) < 399677 := by decide
  have hcop : ¬ 79 ∣ (399677 - 399674) := by decide
  have heq : (399677 : ZMod 79) ^ 13 = (399674 : ZMod 79) ^ 13 := by decide
  have hne : (399677 : ZMod 6241) ^ 13 ≠ (399674 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 399677 := by decide
  have hB : ¬ 79 ∣ 399674 := by decide
  have hexp :=
    has_exp_one_of_zmod 399674 399677 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 399674 399677 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 399674 399677 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      399674 399677 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      399674 399677 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
theorem row_400000_400003 :
    HasPrimeWithExpOne (S_val 400000 400003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400000 400003 ∧ ¬ p ∣ (400003 - 400000) ∧
      ∃ (hNotC : ¬ p ∣ 400003) (hNotB : ¬ p ∣ 400000),
        order_of_C_B_inv_mod_p2 400003 400000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 400000 400003 := by
  have hlt : (400000 : Nat) < 400003 := by decide
  have hcop : ¬ 79 ∣ (400003 - 400000) := by decide
  have heq : (400003 : ZMod 79) ^ 13 = (400000 : ZMod 79) ^ 13 := by decide
  have hne : (400003 : ZMod 6241) ^ 13 ≠ (400000 : ZMod 6241) ^ 13 := by decide
  have hC : ¬ 79 ∣ 400003 := by decide
  have hB : ¬ 79 ∣ 400000 := by decide
  have hexp :=
    has_exp_one_of_zmod 400000 400003 79 6241 hlt prime_79 sq_79 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 400000 400003 79 hlt prime_79 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 400000 400003 79 6241 hlt sq_79 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      400000 400003 79 prime_79 ne_13_79 hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      400000 400003 79 prime_79 hdvd hcop ne_13_79 hlt hC hB hord
  exact ⟨hexp, ⟨79, prime_79, hdvd, hcop, hC, hB, hord⟩, hfourth⟩
/-! ## Packed 299 new rows, then 1199 = 900 inherited ∧ 299 new (not a `∀`; not one 1199-And) -/
theorem S_has_prime_with_exp_one_300000_lt_B_le_400000_table_rows :
    HasPrimeWithExpOne (S_val 300003 300006) ∧
    HasPrimeWithExpOne (S_val 300342 300345) ∧
    HasPrimeWithExpOne (S_val 300687 300690) ∧
    HasPrimeWithExpOne (S_val 301031 301034) ∧
    HasPrimeWithExpOne (S_val 301359 301362) ∧
    HasPrimeWithExpOne (S_val 301713 301716) ∧
    HasPrimeWithExpOne (S_val 302038 302041) ∧
    HasPrimeWithExpOne (S_val 302404 302407) ∧
    HasPrimeWithExpOne (S_val 302731 302734) ∧
    HasPrimeWithExpOne (S_val 303078 303081) ∧
    HasPrimeWithExpOne (S_val 303405 303408) ∧
    HasPrimeWithExpOne (S_val 303738 303741) ∧
    HasPrimeWithExpOne (S_val 304053 304056) ∧
    HasPrimeWithExpOne (S_val 304385 304388) ∧
    HasPrimeWithExpOne (S_val 304737 304740) ∧
    HasPrimeWithExpOne (S_val 305077 305080) ∧
    HasPrimeWithExpOne (S_val 305429 305432) ∧
    HasPrimeWithExpOne (S_val 305775 305778) ∧
    HasPrimeWithExpOne (S_val 306110 306113) ∧
    HasPrimeWithExpOne (S_val 306440 306443) ∧
    HasPrimeWithExpOne (S_val 306757 306760) ∧
    HasPrimeWithExpOne (S_val 307096 307099) ∧
    HasPrimeWithExpOne (S_val 307412 307415) ∧
    HasPrimeWithExpOne (S_val 307747 307750) ∧
    HasPrimeWithExpOne (S_val 308066 308069) ∧
    HasPrimeWithExpOne (S_val 308394 308397) ∧
    HasPrimeWithExpOne (S_val 308743 308746) ∧
    HasPrimeWithExpOne (S_val 309087 309090) ∧
    HasPrimeWithExpOne (S_val 309428 309431) ∧
    HasPrimeWithExpOne (S_val 309776 309779) ∧
    HasPrimeWithExpOne (S_val 310132 310135) ∧
    HasPrimeWithExpOne (S_val 310460 310463) ∧
    HasPrimeWithExpOne (S_val 310785 310788) ∧
    HasPrimeWithExpOne (S_val 311125 311128) ∧
    HasPrimeWithExpOne (S_val 311468 311471) ∧
    HasPrimeWithExpOne (S_val 311792 311795) ∧
    HasPrimeWithExpOne (S_val 312121 312124) ∧
    HasPrimeWithExpOne (S_val 312450 312453) ∧
    HasPrimeWithExpOne (S_val 312798 312801) ∧
    HasPrimeWithExpOne (S_val 313141 313144) ∧
    HasPrimeWithExpOne (S_val 313489 313492) ∧
    HasPrimeWithExpOne (S_val 313800 313803) ∧
    HasPrimeWithExpOne (S_val 314126 314129) ∧
    HasPrimeWithExpOne (S_val 314485 314488) ∧
    HasPrimeWithExpOne (S_val 314813 314816) ∧
    HasPrimeWithExpOne (S_val 315143 315146) ∧
    HasPrimeWithExpOne (S_val 315488 315491) ∧
    HasPrimeWithExpOne (S_val 315825 315828) ∧
    HasPrimeWithExpOne (S_val 316157 316160) ∧
    HasPrimeWithExpOne (S_val 316497 316500) ∧
    HasPrimeWithExpOne (S_val 316826 316829) ∧
    HasPrimeWithExpOne (S_val 317159 317162) ∧
    HasPrimeWithExpOne (S_val 317504 317507) ∧
    HasPrimeWithExpOne (S_val 317828 317831) ∧
    HasPrimeWithExpOne (S_val 318143 318146) ∧
    HasPrimeWithExpOne (S_val 318485 318488) ∧
    HasPrimeWithExpOne (S_val 318827 318830) ∧
    HasPrimeWithExpOne (S_val 319172 319175) ∧
    HasPrimeWithExpOne (S_val 319527 319530) ∧
    HasPrimeWithExpOne (S_val 319851 319854) ∧
    HasPrimeWithExpOne (S_val 320172 320175) ∧
    HasPrimeWithExpOne (S_val 320515 320518) ∧
    HasPrimeWithExpOne (S_val 320835 320838) ∧
    HasPrimeWithExpOne (S_val 321162 321165) ∧
    HasPrimeWithExpOne (S_val 321511 321514) ∧
    HasPrimeWithExpOne (S_val 321856 321859) ∧
    HasPrimeWithExpOne (S_val 322193 322196) ∧
    HasPrimeWithExpOne (S_val 322545 322548) ∧
    HasPrimeWithExpOne (S_val 322881 322884) ∧
    HasPrimeWithExpOne (S_val 323233 323236) ∧
    HasPrimeWithExpOne (S_val 323556 323559) ∧
    HasPrimeWithExpOne (S_val 323892 323895) ∧
    HasPrimeWithExpOne (S_val 324222 324225) ∧
    HasPrimeWithExpOne (S_val 324537 324540) ∧
    HasPrimeWithExpOne (S_val 324843 324846) ∧
    HasPrimeWithExpOne (S_val 325185 325188) ∧
    HasPrimeWithExpOne (S_val 325513 325516) ∧
    HasPrimeWithExpOne (S_val 325852 325855) ∧
    HasPrimeWithExpOne (S_val 326193 326196) ∧
    HasPrimeWithExpOne (S_val 326528 326531) ∧
    HasPrimeWithExpOne (S_val 326897 326900) ∧
    HasPrimeWithExpOne (S_val 327236 327239) ∧
    HasPrimeWithExpOne (S_val 327559 327562) ∧
    HasPrimeWithExpOne (S_val 327902 327905) ∧
    HasPrimeWithExpOne (S_val 328229 328232) ∧
    HasPrimeWithExpOne (S_val 328553 328556) ∧
    HasPrimeWithExpOne (S_val 328900 328903) ∧
    HasPrimeWithExpOne (S_val 329242 329245) ∧
    HasPrimeWithExpOne (S_val 329571 329574) ∧
    HasPrimeWithExpOne (S_val 329918 329921) ∧
    HasPrimeWithExpOne (S_val 330258 330261) ∧
    HasPrimeWithExpOne (S_val 330592 330595) ∧
    HasPrimeWithExpOne (S_val 330944 330947) ∧
    HasPrimeWithExpOne (S_val 331263 331266) ∧
    HasPrimeWithExpOne (S_val 331598 331601) ∧
    HasPrimeWithExpOne (S_val 331944 331947) ∧
    HasPrimeWithExpOne (S_val 332265 332268) ∧
    HasPrimeWithExpOne (S_val 332596 332599) ∧
    HasPrimeWithExpOne (S_val 332924 332927) ∧
    HasPrimeWithExpOne (S_val 333255 333258) ∧
    HasPrimeWithExpOne (S_val 333602 333605) ∧
    HasPrimeWithExpOne (S_val 333947 333950) ∧
    HasPrimeWithExpOne (S_val 334266 334269) ∧
    HasPrimeWithExpOne (S_val 334593 334596) ∧
    HasPrimeWithExpOne (S_val 334920 334923) ∧
    HasPrimeWithExpOne (S_val 335279 335282) ∧
    HasPrimeWithExpOne (S_val 335596 335599) ∧
    HasPrimeWithExpOne (S_val 335946 335949) ∧
    HasPrimeWithExpOne (S_val 336290 336293) ∧
    HasPrimeWithExpOne (S_val 336640 336643) ∧
    HasPrimeWithExpOne (S_val 336972 336975) ∧
    HasPrimeWithExpOne (S_val 337285 337288) ∧
    HasPrimeWithExpOne (S_val 337609 337612) ∧
    HasPrimeWithExpOne (S_val 337945 337948) ∧
    HasPrimeWithExpOne (S_val 338301 338304) ∧
    HasPrimeWithExpOne (S_val 338625 338628) ∧
    HasPrimeWithExpOne (S_val 338968 338971) ∧
    HasPrimeWithExpOne (S_val 339306 339309) ∧
    HasPrimeWithExpOne (S_val 339638 339641) ∧
    HasPrimeWithExpOne (S_val 339979 339982) ∧
    HasPrimeWithExpOne (S_val 340315 340318) ∧
    HasPrimeWithExpOne (S_val 340659 340662) ∧
    HasPrimeWithExpOne (S_val 340982 340985) ∧
    HasPrimeWithExpOne (S_val 341311 341314) ∧
    HasPrimeWithExpOne (S_val 341619 341622) ∧
    HasPrimeWithExpOne (S_val 341960 341963) ∧
    HasPrimeWithExpOne (S_val 342290 342293) ∧
    HasPrimeWithExpOne (S_val 342619 342622) ∧
    HasPrimeWithExpOne (S_val 342956 342959) ∧
    HasPrimeWithExpOne (S_val 343299 343302) ∧
    HasPrimeWithExpOne (S_val 343637 343640) ∧
    HasPrimeWithExpOne (S_val 343978 343981) ∧
    HasPrimeWithExpOne (S_val 344322 344325) ∧
    HasPrimeWithExpOne (S_val 344651 344654) ∧
    HasPrimeWithExpOne (S_val 344990 344993) ∧
    HasPrimeWithExpOne (S_val 345299 345302) ∧
    HasPrimeWithExpOne (S_val 345633 345636) ∧
    HasPrimeWithExpOne (S_val 345954 345957) ∧
    HasPrimeWithExpOne (S_val 346301 346304) ∧
    HasPrimeWithExpOne (S_val 346657 346660) ∧
    HasPrimeWithExpOne (S_val 346996 346999) ∧
    HasPrimeWithExpOne (S_val 347347 347350) ∧
    HasPrimeWithExpOne (S_val 347692 347695) ∧
    HasPrimeWithExpOne (S_val 348037 348040) ∧
    HasPrimeWithExpOne (S_val 348369 348372) ∧
    HasPrimeWithExpOne (S_val 348718 348721) ∧
    HasPrimeWithExpOne (S_val 349038 349041) ∧
    HasPrimeWithExpOne (S_val 349358 349361) ∧
    HasPrimeWithExpOne (S_val 349685 349688) ∧
    HasPrimeWithExpOne (S_val 350011 350014) ∧
    HasPrimeWithExpOne (S_val 350344 350347) ∧
    HasPrimeWithExpOne (S_val 350685 350688) ∧
    HasPrimeWithExpOne (S_val 351017 351020) ∧
    HasPrimeWithExpOne (S_val 351347 351350) ∧
    HasPrimeWithExpOne (S_val 351710 351713) ∧
    HasPrimeWithExpOne (S_val 352036 352039) ∧
    HasPrimeWithExpOne (S_val 352363 352366) ∧
    HasPrimeWithExpOne (S_val 352707 352710) ∧
    HasPrimeWithExpOne (S_val 353030 353033) ∧
    HasPrimeWithExpOne (S_val 353364 353367) ∧
    HasPrimeWithExpOne (S_val 353696 353699) ∧
    HasPrimeWithExpOne (S_val 354037 354040) ∧
    HasPrimeWithExpOne (S_val 354392 354395) ∧
    HasPrimeWithExpOne (S_val 354722 354725) ∧
    HasPrimeWithExpOne (S_val 355053 355056) ∧
    HasPrimeWithExpOne (S_val 355397 355400) ∧
    HasPrimeWithExpOne (S_val 355727 355730) ∧
    HasPrimeWithExpOne (S_val 356065 356068) ∧
    HasPrimeWithExpOne (S_val 356410 356413) ∧
    HasPrimeWithExpOne (S_val 356750 356753) ∧
    HasPrimeWithExpOne (S_val 357088 357091) ∧
    HasPrimeWithExpOne (S_val 357441 357444) ∧
    HasPrimeWithExpOne (S_val 357773 357776) ∧
    HasPrimeWithExpOne (S_val 358096 358099) ∧
    HasPrimeWithExpOne (S_val 358433 358436) ∧
    HasPrimeWithExpOne (S_val 358763 358766) ∧
    HasPrimeWithExpOne (S_val 359107 359110) ∧
    HasPrimeWithExpOne (S_val 359423 359426) ∧
    HasPrimeWithExpOne (S_val 359756 359759) ∧
    HasPrimeWithExpOne (S_val 360095 360098) ∧
    HasPrimeWithExpOne (S_val 360428 360431) ∧
    HasPrimeWithExpOne (S_val 360767 360770) ∧
    HasPrimeWithExpOne (S_val 361110 361113) ∧
    HasPrimeWithExpOne (S_val 361464 361467) ∧
    HasPrimeWithExpOne (S_val 361784 361787) ∧
    HasPrimeWithExpOne (S_val 362106 362109) ∧
    HasPrimeWithExpOne (S_val 362419 362422) ∧
    HasPrimeWithExpOne (S_val 362750 362753) ∧
    HasPrimeWithExpOne (S_val 363097 363100) ∧
    HasPrimeWithExpOne (S_val 363426 363429) ∧
    HasPrimeWithExpOne (S_val 363776 363779) ∧
    HasPrimeWithExpOne (S_val 364114 364117) ∧
    HasPrimeWithExpOne (S_val 364460 364463) ∧
    HasPrimeWithExpOne (S_val 364789 364792) ∧
    HasPrimeWithExpOne (S_val 365127 365130) ∧
    HasPrimeWithExpOne (S_val 365467 365470) ∧
    HasPrimeWithExpOne (S_val 365810 365813) ∧
    HasPrimeWithExpOne (S_val 366100 366103) ∧
    HasPrimeWithExpOne (S_val 366445 366448) ∧
    HasPrimeWithExpOne (S_val 366765 366768) ∧
    HasPrimeWithExpOne (S_val 367092 367095) ∧
    HasPrimeWithExpOne (S_val 367430 367433) ∧
    HasPrimeWithExpOne (S_val 367780 367783) ∧
    HasPrimeWithExpOne (S_val 368119 368122) ∧
    HasPrimeWithExpOne (S_val 368462 368465) ∧
    HasPrimeWithExpOne (S_val 368787 368790) ∧
    HasPrimeWithExpOne (S_val 369117 369120) ∧
    HasPrimeWithExpOne (S_val 369469 369472) ∧
    HasPrimeWithExpOne (S_val 369799 369802) ∧
    HasPrimeWithExpOne (S_val 370136 370139) ∧
    HasPrimeWithExpOne (S_val 370461 370464) ∧
    HasPrimeWithExpOne (S_val 370794 370797) ∧
    HasPrimeWithExpOne (S_val 371126 371129) ∧
    HasPrimeWithExpOne (S_val 371468 371471) ∧
    HasPrimeWithExpOne (S_val 371805 371808) ∧
    HasPrimeWithExpOne (S_val 372150 372153) ∧
    HasPrimeWithExpOne (S_val 372489 372492) ∧
    HasPrimeWithExpOne (S_val 372814 372817) ∧
    HasPrimeWithExpOne (S_val 373156 373159) ∧
    HasPrimeWithExpOne (S_val 373497 373500) ∧
    HasPrimeWithExpOne (S_val 373827 373830) ∧
    HasPrimeWithExpOne (S_val 374185 374188) ∧
    HasPrimeWithExpOne (S_val 374490 374493) ∧
    HasPrimeWithExpOne (S_val 374823 374826) ∧
    HasPrimeWithExpOne (S_val 375144 375147) ∧
    HasPrimeWithExpOne (S_val 375466 375469) ∧
    HasPrimeWithExpOne (S_val 375802 375805) ∧
    HasPrimeWithExpOne (S_val 376140 376143) ∧
    HasPrimeWithExpOne (S_val 376456 376459) ∧
    HasPrimeWithExpOne (S_val 376814 376817) ∧
    HasPrimeWithExpOne (S_val 377152 377155) ∧
    HasPrimeWithExpOne (S_val 377492 377495) ∧
    HasPrimeWithExpOne (S_val 377863 377866) ∧
    HasPrimeWithExpOne (S_val 378192 378195) ∧
    HasPrimeWithExpOne (S_val 378527 378530) ∧
    HasPrimeWithExpOne (S_val 378858 378861) ∧
    HasPrimeWithExpOne (S_val 379194 379197) ∧
    HasPrimeWithExpOne (S_val 379534 379537) ∧
    HasPrimeWithExpOne (S_val 379869 379872) ∧
    HasPrimeWithExpOne (S_val 380209 380212) ∧
    HasPrimeWithExpOne (S_val 380536 380539) ∧
    HasPrimeWithExpOne (S_val 380872 380875) ∧
    HasPrimeWithExpOne (S_val 381221 381224) ∧
    HasPrimeWithExpOne (S_val 381552 381555) ∧
    HasPrimeWithExpOne (S_val 381894 381897) ∧
    HasPrimeWithExpOne (S_val 382225 382228) ∧
    HasPrimeWithExpOne (S_val 382563 382566) ∧
    HasPrimeWithExpOne (S_val 382887 382890) ∧
    HasPrimeWithExpOne (S_val 383224 383227) ∧
    HasPrimeWithExpOne (S_val 383558 383561) ∧
    HasPrimeWithExpOne (S_val 383874 383877) ∧
    HasPrimeWithExpOne (S_val 384202 384205) ∧
    HasPrimeWithExpOne (S_val 384543 384546) ∧
    HasPrimeWithExpOne (S_val 384884 384887) ∧
    HasPrimeWithExpOne (S_val 385217 385220) ∧
    HasPrimeWithExpOne (S_val 385556 385559) ∧
    HasPrimeWithExpOne (S_val 385883 385886) ∧
    HasPrimeWithExpOne (S_val 386231 386234) ∧
    HasPrimeWithExpOne (S_val 386561 386564) ∧
    HasPrimeWithExpOne (S_val 386884 386887) ∧
    HasPrimeWithExpOne (S_val 387210 387213) ∧
    HasPrimeWithExpOne (S_val 387529 387532) ∧
    HasPrimeWithExpOne (S_val 387866 387869) ∧
    HasPrimeWithExpOne (S_val 388209 388212) ∧
    HasPrimeWithExpOne (S_val 388540 388543) ∧
    HasPrimeWithExpOne (S_val 388891 388894) ∧
    HasPrimeWithExpOne (S_val 389250 389253) ∧
    HasPrimeWithExpOne (S_val 389562 389565) ∧
    HasPrimeWithExpOne (S_val 389910 389913) ∧
    HasPrimeWithExpOne (S_val 390245 390248) ∧
    HasPrimeWithExpOne (S_val 390567 390570) ∧
    HasPrimeWithExpOne (S_val 390901 390904) ∧
    HasPrimeWithExpOne (S_val 391226 391229) ∧
    HasPrimeWithExpOne (S_val 391568 391571) ∧
    HasPrimeWithExpOne (S_val 391893 391896) ∧
    HasPrimeWithExpOne (S_val 392220 392223) ∧
    HasPrimeWithExpOne (S_val 392575 392578) ∧
    HasPrimeWithExpOne (S_val 392905 392908) ∧
    HasPrimeWithExpOne (S_val 393245 393248) ∧
    HasPrimeWithExpOne (S_val 393583 393586) ∧
    HasPrimeWithExpOne (S_val 393909 393912) ∧
    HasPrimeWithExpOne (S_val 394258 394261) ∧
    HasPrimeWithExpOne (S_val 394598 394601) ∧
    HasPrimeWithExpOne (S_val 394940 394943) ∧
    HasPrimeWithExpOne (S_val 395267 395270) ∧
    HasPrimeWithExpOne (S_val 395611 395614) ∧
    HasPrimeWithExpOne (S_val 395954 395957) ∧
    HasPrimeWithExpOne (S_val 396276 396279) ∧
    HasPrimeWithExpOne (S_val 396633 396636) ∧
    HasPrimeWithExpOne (S_val 396971 396974) ∧
    HasPrimeWithExpOne (S_val 397328 397331) ∧
    HasPrimeWithExpOne (S_val 397660 397663) ∧
    HasPrimeWithExpOne (S_val 397990 397993) ∧
    HasPrimeWithExpOne (S_val 398314 398317) ∧
    HasPrimeWithExpOne (S_val 398679 398682) ∧
    HasPrimeWithExpOne (S_val 399003 399006) ∧
    HasPrimeWithExpOne (S_val 399346 399349) ∧
    HasPrimeWithExpOne (S_val 399674 399677) ∧
    HasPrimeWithExpOne (S_val 400000 400003) :=
  ⟨row_300003_300006.1, row_300342_300345.1, row_300687_300690.1, row_301031_301034.1, row_301359_301362.1, row_301713_301716.1, row_302038_302041.1, row_302404_302407.1, row_302731_302734.1, row_303078_303081.1, row_303405_303408.1, row_303738_303741.1, row_304053_304056.1, row_304385_304388.1, row_304737_304740.1, row_305077_305080.1, row_305429_305432.1, row_305775_305778.1, row_306110_306113.1, row_306440_306443.1, row_306757_306760.1, row_307096_307099.1, row_307412_307415.1, row_307747_307750.1, row_308066_308069.1, row_308394_308397.1, row_308743_308746.1, row_309087_309090.1, row_309428_309431.1, row_309776_309779.1, row_310132_310135.1, row_310460_310463.1, row_310785_310788.1, row_311125_311128.1, row_311468_311471.1, row_311792_311795.1, row_312121_312124.1, row_312450_312453.1, row_312798_312801.1, row_313141_313144.1, row_313489_313492.1, row_313800_313803.1, row_314126_314129.1, row_314485_314488.1, row_314813_314816.1, row_315143_315146.1, row_315488_315491.1, row_315825_315828.1, row_316157_316160.1, row_316497_316500.1, row_316826_316829.1, row_317159_317162.1, row_317504_317507.1, row_317828_317831.1, row_318143_318146.1, row_318485_318488.1, row_318827_318830.1, row_319172_319175.1, row_319527_319530.1, row_319851_319854.1, row_320172_320175.1, row_320515_320518.1, row_320835_320838.1, row_321162_321165.1, row_321511_321514.1, row_321856_321859.1, row_322193_322196.1, row_322545_322548.1, row_322881_322884.1, row_323233_323236.1, row_323556_323559.1, row_323892_323895.1, row_324222_324225.1, row_324537_324540.1, row_324843_324846.1, row_325185_325188.1, row_325513_325516.1, row_325852_325855.1, row_326193_326196.1, row_326528_326531.1, row_326897_326900.1, row_327236_327239.1, row_327559_327562.1, row_327902_327905.1, row_328229_328232.1, row_328553_328556.1, row_328900_328903.1, row_329242_329245.1, row_329571_329574.1, row_329918_329921.1, row_330258_330261.1, row_330592_330595.1, row_330944_330947.1, row_331263_331266.1, row_331598_331601.1, row_331944_331947.1, row_332265_332268.1, row_332596_332599.1, row_332924_332927.1, row_333255_333258.1, row_333602_333605.1, row_333947_333950.1, row_334266_334269.1, row_334593_334596.1, row_334920_334923.1, row_335279_335282.1, row_335596_335599.1, row_335946_335949.1, row_336290_336293.1, row_336640_336643.1, row_336972_336975.1, row_337285_337288.1, row_337609_337612.1, row_337945_337948.1, row_338301_338304.1, row_338625_338628.1, row_338968_338971.1, row_339306_339309.1, row_339638_339641.1, row_339979_339982.1, row_340315_340318.1, row_340659_340662.1, row_340982_340985.1, row_341311_341314.1, row_341619_341622.1, row_341960_341963.1, row_342290_342293.1, row_342619_342622.1, row_342956_342959.1, row_343299_343302.1, row_343637_343640.1, row_343978_343981.1, row_344322_344325.1, row_344651_344654.1, row_344990_344993.1, row_345299_345302.1, row_345633_345636.1, row_345954_345957.1, row_346301_346304.1, row_346657_346660.1, row_346996_346999.1, row_347347_347350.1, row_347692_347695.1, row_348037_348040.1, row_348369_348372.1, row_348718_348721.1, row_349038_349041.1, row_349358_349361.1, row_349685_349688.1, row_350011_350014.1, row_350344_350347.1, row_350685_350688.1, row_351017_351020.1, row_351347_351350.1, row_351710_351713.1, row_352036_352039.1, row_352363_352366.1, row_352707_352710.1, row_353030_353033.1, row_353364_353367.1, row_353696_353699.1, row_354037_354040.1, row_354392_354395.1, row_354722_354725.1, row_355053_355056.1, row_355397_355400.1, row_355727_355730.1, row_356065_356068.1, row_356410_356413.1, row_356750_356753.1, row_357088_357091.1, row_357441_357444.1, row_357773_357776.1, row_358096_358099.1, row_358433_358436.1, row_358763_358766.1, row_359107_359110.1, row_359423_359426.1, row_359756_359759.1, row_360095_360098.1, row_360428_360431.1, row_360767_360770.1, row_361110_361113.1, row_361464_361467.1, row_361784_361787.1, row_362106_362109.1, row_362419_362422.1, row_362750_362753.1, row_363097_363100.1, row_363426_363429.1, row_363776_363779.1, row_364114_364117.1, row_364460_364463.1, row_364789_364792.1, row_365127_365130.1, row_365467_365470.1, row_365810_365813.1, row_366100_366103.1, row_366445_366448.1, row_366765_366768.1, row_367092_367095.1, row_367430_367433.1, row_367780_367783.1, row_368119_368122.1, row_368462_368465.1, row_368787_368790.1, row_369117_369120.1, row_369469_369472.1, row_369799_369802.1, row_370136_370139.1, row_370461_370464.1, row_370794_370797.1, row_371126_371129.1, row_371468_371471.1, row_371805_371808.1, row_372150_372153.1, row_372489_372492.1, row_372814_372817.1, row_373156_373159.1, row_373497_373500.1, row_373827_373830.1, row_374185_374188.1, row_374490_374493.1, row_374823_374826.1, row_375144_375147.1, row_375466_375469.1, row_375802_375805.1, row_376140_376143.1, row_376456_376459.1, row_376814_376817.1, row_377152_377155.1, row_377492_377495.1, row_377863_377866.1, row_378192_378195.1, row_378527_378530.1, row_378858_378861.1, row_379194_379197.1, row_379534_379537.1, row_379869_379872.1, row_380209_380212.1, row_380536_380539.1, row_380872_380875.1, row_381221_381224.1, row_381552_381555.1, row_381894_381897.1, row_382225_382228.1, row_382563_382566.1, row_382887_382890.1, row_383224_383227.1, row_383558_383561.1, row_383874_383877.1, row_384202_384205.1, row_384543_384546.1, row_384884_384887.1, row_385217_385220.1, row_385556_385559.1, row_385883_385886.1, row_386231_386234.1, row_386561_386564.1, row_386884_386887.1, row_387210_387213.1, row_387529_387532.1, row_387866_387869.1, row_388209_388212.1, row_388540_388543.1, row_388891_388894.1, row_389250_389253.1, row_389562_389565.1, row_389910_389913.1, row_390245_390248.1, row_390567_390570.1, row_390901_390904.1, row_391226_391229.1, row_391568_391571.1, row_391893_391896.1, row_392220_392223.1, row_392575_392578.1, row_392905_392908.1, row_393245_393248.1, row_393583_393586.1, row_393909_393912.1, row_394258_394261.1, row_394598_394601.1, row_394940_394943.1, row_395267_395270.1, row_395611_395614.1, row_395954_395957.1, row_396276_396279.1, row_396633_396636.1, row_396971_396974.1, row_397328_397331.1, row_397660_397663.1, row_397990_397993.1, row_398314_398317.1, row_398679_398682.1, row_399003_399006.1, row_399346_399349.1, row_399674_399677.1, row_400000_400003.1⟩
theorem exists_p_with_order_ne_13_300000_lt_B_le_400000_from_exp_one_table_rows :
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300003 300006 ∧ ¬ p ∣ (300006 - 300003) ∧
      ∃ (hNotC : ¬ p ∣ 300006) (hNotB : ¬ p ∣ 300003),
        order_of_C_B_inv_mod_p2 300006 300003 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300342 300345 ∧ ¬ p ∣ (300345 - 300342) ∧
      ∃ (hNotC : ¬ p ∣ 300345) (hNotB : ¬ p ∣ 300342),
        order_of_C_B_inv_mod_p2 300345 300342 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 300687 300690 ∧ ¬ p ∣ (300690 - 300687) ∧
      ∃ (hNotC : ¬ p ∣ 300690) (hNotB : ¬ p ∣ 300687),
        order_of_C_B_inv_mod_p2 300690 300687 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301031 301034 ∧ ¬ p ∣ (301034 - 301031) ∧
      ∃ (hNotC : ¬ p ∣ 301034) (hNotB : ¬ p ∣ 301031),
        order_of_C_B_inv_mod_p2 301034 301031 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301359 301362 ∧ ¬ p ∣ (301362 - 301359) ∧
      ∃ (hNotC : ¬ p ∣ 301362) (hNotB : ¬ p ∣ 301359),
        order_of_C_B_inv_mod_p2 301362 301359 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 301713 301716 ∧ ¬ p ∣ (301716 - 301713) ∧
      ∃ (hNotC : ¬ p ∣ 301716) (hNotB : ¬ p ∣ 301713),
        order_of_C_B_inv_mod_p2 301716 301713 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302038 302041 ∧ ¬ p ∣ (302041 - 302038) ∧
      ∃ (hNotC : ¬ p ∣ 302041) (hNotB : ¬ p ∣ 302038),
        order_of_C_B_inv_mod_p2 302041 302038 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302404 302407 ∧ ¬ p ∣ (302407 - 302404) ∧
      ∃ (hNotC : ¬ p ∣ 302407) (hNotB : ¬ p ∣ 302404),
        order_of_C_B_inv_mod_p2 302407 302404 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 302731 302734 ∧ ¬ p ∣ (302734 - 302731) ∧
      ∃ (hNotC : ¬ p ∣ 302734) (hNotB : ¬ p ∣ 302731),
        order_of_C_B_inv_mod_p2 302734 302731 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303078 303081 ∧ ¬ p ∣ (303081 - 303078) ∧
      ∃ (hNotC : ¬ p ∣ 303081) (hNotB : ¬ p ∣ 303078),
        order_of_C_B_inv_mod_p2 303081 303078 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303405 303408 ∧ ¬ p ∣ (303408 - 303405) ∧
      ∃ (hNotC : ¬ p ∣ 303408) (hNotB : ¬ p ∣ 303405),
        order_of_C_B_inv_mod_p2 303408 303405 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 303738 303741 ∧ ¬ p ∣ (303741 - 303738) ∧
      ∃ (hNotC : ¬ p ∣ 303741) (hNotB : ¬ p ∣ 303738),
        order_of_C_B_inv_mod_p2 303741 303738 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304053 304056 ∧ ¬ p ∣ (304056 - 304053) ∧
      ∃ (hNotC : ¬ p ∣ 304056) (hNotB : ¬ p ∣ 304053),
        order_of_C_B_inv_mod_p2 304056 304053 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304385 304388 ∧ ¬ p ∣ (304388 - 304385) ∧
      ∃ (hNotC : ¬ p ∣ 304388) (hNotB : ¬ p ∣ 304385),
        order_of_C_B_inv_mod_p2 304388 304385 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 304737 304740 ∧ ¬ p ∣ (304740 - 304737) ∧
      ∃ (hNotC : ¬ p ∣ 304740) (hNotB : ¬ p ∣ 304737),
        order_of_C_B_inv_mod_p2 304740 304737 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305077 305080 ∧ ¬ p ∣ (305080 - 305077) ∧
      ∃ (hNotC : ¬ p ∣ 305080) (hNotB : ¬ p ∣ 305077),
        order_of_C_B_inv_mod_p2 305080 305077 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305429 305432 ∧ ¬ p ∣ (305432 - 305429) ∧
      ∃ (hNotC : ¬ p ∣ 305432) (hNotB : ¬ p ∣ 305429),
        order_of_C_B_inv_mod_p2 305432 305429 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 305775 305778 ∧ ¬ p ∣ (305778 - 305775) ∧
      ∃ (hNotC : ¬ p ∣ 305778) (hNotB : ¬ p ∣ 305775),
        order_of_C_B_inv_mod_p2 305778 305775 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306110 306113 ∧ ¬ p ∣ (306113 - 306110) ∧
      ∃ (hNotC : ¬ p ∣ 306113) (hNotB : ¬ p ∣ 306110),
        order_of_C_B_inv_mod_p2 306113 306110 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306440 306443 ∧ ¬ p ∣ (306443 - 306440) ∧
      ∃ (hNotC : ¬ p ∣ 306443) (hNotB : ¬ p ∣ 306440),
        order_of_C_B_inv_mod_p2 306443 306440 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 306757 306760 ∧ ¬ p ∣ (306760 - 306757) ∧
      ∃ (hNotC : ¬ p ∣ 306760) (hNotB : ¬ p ∣ 306757),
        order_of_C_B_inv_mod_p2 306760 306757 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307096 307099 ∧ ¬ p ∣ (307099 - 307096) ∧
      ∃ (hNotC : ¬ p ∣ 307099) (hNotB : ¬ p ∣ 307096),
        order_of_C_B_inv_mod_p2 307099 307096 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307412 307415 ∧ ¬ p ∣ (307415 - 307412) ∧
      ∃ (hNotC : ¬ p ∣ 307415) (hNotB : ¬ p ∣ 307412),
        order_of_C_B_inv_mod_p2 307415 307412 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 307747 307750 ∧ ¬ p ∣ (307750 - 307747) ∧
      ∃ (hNotC : ¬ p ∣ 307750) (hNotB : ¬ p ∣ 307747),
        order_of_C_B_inv_mod_p2 307750 307747 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308066 308069 ∧ ¬ p ∣ (308069 - 308066) ∧
      ∃ (hNotC : ¬ p ∣ 308069) (hNotB : ¬ p ∣ 308066),
        order_of_C_B_inv_mod_p2 308069 308066 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308394 308397 ∧ ¬ p ∣ (308397 - 308394) ∧
      ∃ (hNotC : ¬ p ∣ 308397) (hNotB : ¬ p ∣ 308394),
        order_of_C_B_inv_mod_p2 308397 308394 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 308743 308746 ∧ ¬ p ∣ (308746 - 308743) ∧
      ∃ (hNotC : ¬ p ∣ 308746) (hNotB : ¬ p ∣ 308743),
        order_of_C_B_inv_mod_p2 308746 308743 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309087 309090 ∧ ¬ p ∣ (309090 - 309087) ∧
      ∃ (hNotC : ¬ p ∣ 309090) (hNotB : ¬ p ∣ 309087),
        order_of_C_B_inv_mod_p2 309090 309087 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309428 309431 ∧ ¬ p ∣ (309431 - 309428) ∧
      ∃ (hNotC : ¬ p ∣ 309431) (hNotB : ¬ p ∣ 309428),
        order_of_C_B_inv_mod_p2 309431 309428 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 309776 309779 ∧ ¬ p ∣ (309779 - 309776) ∧
      ∃ (hNotC : ¬ p ∣ 309779) (hNotB : ¬ p ∣ 309776),
        order_of_C_B_inv_mod_p2 309779 309776 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310132 310135 ∧ ¬ p ∣ (310135 - 310132) ∧
      ∃ (hNotC : ¬ p ∣ 310135) (hNotB : ¬ p ∣ 310132),
        order_of_C_B_inv_mod_p2 310135 310132 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310460 310463 ∧ ¬ p ∣ (310463 - 310460) ∧
      ∃ (hNotC : ¬ p ∣ 310463) (hNotB : ¬ p ∣ 310460),
        order_of_C_B_inv_mod_p2 310463 310460 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 310785 310788 ∧ ¬ p ∣ (310788 - 310785) ∧
      ∃ (hNotC : ¬ p ∣ 310788) (hNotB : ¬ p ∣ 310785),
        order_of_C_B_inv_mod_p2 310788 310785 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311125 311128 ∧ ¬ p ∣ (311128 - 311125) ∧
      ∃ (hNotC : ¬ p ∣ 311128) (hNotB : ¬ p ∣ 311125),
        order_of_C_B_inv_mod_p2 311128 311125 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311468 311471 ∧ ¬ p ∣ (311471 - 311468) ∧
      ∃ (hNotC : ¬ p ∣ 311471) (hNotB : ¬ p ∣ 311468),
        order_of_C_B_inv_mod_p2 311471 311468 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 311792 311795 ∧ ¬ p ∣ (311795 - 311792) ∧
      ∃ (hNotC : ¬ p ∣ 311795) (hNotB : ¬ p ∣ 311792),
        order_of_C_B_inv_mod_p2 311795 311792 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312121 312124 ∧ ¬ p ∣ (312124 - 312121) ∧
      ∃ (hNotC : ¬ p ∣ 312124) (hNotB : ¬ p ∣ 312121),
        order_of_C_B_inv_mod_p2 312124 312121 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312450 312453 ∧ ¬ p ∣ (312453 - 312450) ∧
      ∃ (hNotC : ¬ p ∣ 312453) (hNotB : ¬ p ∣ 312450),
        order_of_C_B_inv_mod_p2 312453 312450 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 312798 312801 ∧ ¬ p ∣ (312801 - 312798) ∧
      ∃ (hNotC : ¬ p ∣ 312801) (hNotB : ¬ p ∣ 312798),
        order_of_C_B_inv_mod_p2 312801 312798 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313141 313144 ∧ ¬ p ∣ (313144 - 313141) ∧
      ∃ (hNotC : ¬ p ∣ 313144) (hNotB : ¬ p ∣ 313141),
        order_of_C_B_inv_mod_p2 313144 313141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313489 313492 ∧ ¬ p ∣ (313492 - 313489) ∧
      ∃ (hNotC : ¬ p ∣ 313492) (hNotB : ¬ p ∣ 313489),
        order_of_C_B_inv_mod_p2 313492 313489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 313800 313803 ∧ ¬ p ∣ (313803 - 313800) ∧
      ∃ (hNotC : ¬ p ∣ 313803) (hNotB : ¬ p ∣ 313800),
        order_of_C_B_inv_mod_p2 313803 313800 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314126 314129 ∧ ¬ p ∣ (314129 - 314126) ∧
      ∃ (hNotC : ¬ p ∣ 314129) (hNotB : ¬ p ∣ 314126),
        order_of_C_B_inv_mod_p2 314129 314126 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314485 314488 ∧ ¬ p ∣ (314488 - 314485) ∧
      ∃ (hNotC : ¬ p ∣ 314488) (hNotB : ¬ p ∣ 314485),
        order_of_C_B_inv_mod_p2 314488 314485 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 314813 314816 ∧ ¬ p ∣ (314816 - 314813) ∧
      ∃ (hNotC : ¬ p ∣ 314816) (hNotB : ¬ p ∣ 314813),
        order_of_C_B_inv_mod_p2 314816 314813 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315143 315146 ∧ ¬ p ∣ (315146 - 315143) ∧
      ∃ (hNotC : ¬ p ∣ 315146) (hNotB : ¬ p ∣ 315143),
        order_of_C_B_inv_mod_p2 315146 315143 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315488 315491 ∧ ¬ p ∣ (315491 - 315488) ∧
      ∃ (hNotC : ¬ p ∣ 315491) (hNotB : ¬ p ∣ 315488),
        order_of_C_B_inv_mod_p2 315491 315488 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 315825 315828 ∧ ¬ p ∣ (315828 - 315825) ∧
      ∃ (hNotC : ¬ p ∣ 315828) (hNotB : ¬ p ∣ 315825),
        order_of_C_B_inv_mod_p2 315828 315825 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316157 316160 ∧ ¬ p ∣ (316160 - 316157) ∧
      ∃ (hNotC : ¬ p ∣ 316160) (hNotB : ¬ p ∣ 316157),
        order_of_C_B_inv_mod_p2 316160 316157 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316497 316500 ∧ ¬ p ∣ (316500 - 316497) ∧
      ∃ (hNotC : ¬ p ∣ 316500) (hNotB : ¬ p ∣ 316497),
        order_of_C_B_inv_mod_p2 316500 316497 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 316826 316829 ∧ ¬ p ∣ (316829 - 316826) ∧
      ∃ (hNotC : ¬ p ∣ 316829) (hNotB : ¬ p ∣ 316826),
        order_of_C_B_inv_mod_p2 316829 316826 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317159 317162 ∧ ¬ p ∣ (317162 - 317159) ∧
      ∃ (hNotC : ¬ p ∣ 317162) (hNotB : ¬ p ∣ 317159),
        order_of_C_B_inv_mod_p2 317162 317159 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317504 317507 ∧ ¬ p ∣ (317507 - 317504) ∧
      ∃ (hNotC : ¬ p ∣ 317507) (hNotB : ¬ p ∣ 317504),
        order_of_C_B_inv_mod_p2 317507 317504 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 317828 317831 ∧ ¬ p ∣ (317831 - 317828) ∧
      ∃ (hNotC : ¬ p ∣ 317831) (hNotB : ¬ p ∣ 317828),
        order_of_C_B_inv_mod_p2 317831 317828 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318143 318146 ∧ ¬ p ∣ (318146 - 318143) ∧
      ∃ (hNotC : ¬ p ∣ 318146) (hNotB : ¬ p ∣ 318143),
        order_of_C_B_inv_mod_p2 318146 318143 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318485 318488 ∧ ¬ p ∣ (318488 - 318485) ∧
      ∃ (hNotC : ¬ p ∣ 318488) (hNotB : ¬ p ∣ 318485),
        order_of_C_B_inv_mod_p2 318488 318485 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 318827 318830 ∧ ¬ p ∣ (318830 - 318827) ∧
      ∃ (hNotC : ¬ p ∣ 318830) (hNotB : ¬ p ∣ 318827),
        order_of_C_B_inv_mod_p2 318830 318827 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319172 319175 ∧ ¬ p ∣ (319175 - 319172) ∧
      ∃ (hNotC : ¬ p ∣ 319175) (hNotB : ¬ p ∣ 319172),
        order_of_C_B_inv_mod_p2 319175 319172 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319527 319530 ∧ ¬ p ∣ (319530 - 319527) ∧
      ∃ (hNotC : ¬ p ∣ 319530) (hNotB : ¬ p ∣ 319527),
        order_of_C_B_inv_mod_p2 319530 319527 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 319851 319854 ∧ ¬ p ∣ (319854 - 319851) ∧
      ∃ (hNotC : ¬ p ∣ 319854) (hNotB : ¬ p ∣ 319851),
        order_of_C_B_inv_mod_p2 319854 319851 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320172 320175 ∧ ¬ p ∣ (320175 - 320172) ∧
      ∃ (hNotC : ¬ p ∣ 320175) (hNotB : ¬ p ∣ 320172),
        order_of_C_B_inv_mod_p2 320175 320172 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320515 320518 ∧ ¬ p ∣ (320518 - 320515) ∧
      ∃ (hNotC : ¬ p ∣ 320518) (hNotB : ¬ p ∣ 320515),
        order_of_C_B_inv_mod_p2 320518 320515 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 320835 320838 ∧ ¬ p ∣ (320838 - 320835) ∧
      ∃ (hNotC : ¬ p ∣ 320838) (hNotB : ¬ p ∣ 320835),
        order_of_C_B_inv_mod_p2 320838 320835 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321162 321165 ∧ ¬ p ∣ (321165 - 321162) ∧
      ∃ (hNotC : ¬ p ∣ 321165) (hNotB : ¬ p ∣ 321162),
        order_of_C_B_inv_mod_p2 321165 321162 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321511 321514 ∧ ¬ p ∣ (321514 - 321511) ∧
      ∃ (hNotC : ¬ p ∣ 321514) (hNotB : ¬ p ∣ 321511),
        order_of_C_B_inv_mod_p2 321514 321511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 321856 321859 ∧ ¬ p ∣ (321859 - 321856) ∧
      ∃ (hNotC : ¬ p ∣ 321859) (hNotB : ¬ p ∣ 321856),
        order_of_C_B_inv_mod_p2 321859 321856 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322193 322196 ∧ ¬ p ∣ (322196 - 322193) ∧
      ∃ (hNotC : ¬ p ∣ 322196) (hNotB : ¬ p ∣ 322193),
        order_of_C_B_inv_mod_p2 322196 322193 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322545 322548 ∧ ¬ p ∣ (322548 - 322545) ∧
      ∃ (hNotC : ¬ p ∣ 322548) (hNotB : ¬ p ∣ 322545),
        order_of_C_B_inv_mod_p2 322548 322545 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 322881 322884 ∧ ¬ p ∣ (322884 - 322881) ∧
      ∃ (hNotC : ¬ p ∣ 322884) (hNotB : ¬ p ∣ 322881),
        order_of_C_B_inv_mod_p2 322884 322881 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323233 323236 ∧ ¬ p ∣ (323236 - 323233) ∧
      ∃ (hNotC : ¬ p ∣ 323236) (hNotB : ¬ p ∣ 323233),
        order_of_C_B_inv_mod_p2 323236 323233 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323556 323559 ∧ ¬ p ∣ (323559 - 323556) ∧
      ∃ (hNotC : ¬ p ∣ 323559) (hNotB : ¬ p ∣ 323556),
        order_of_C_B_inv_mod_p2 323559 323556 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 323892 323895 ∧ ¬ p ∣ (323895 - 323892) ∧
      ∃ (hNotC : ¬ p ∣ 323895) (hNotB : ¬ p ∣ 323892),
        order_of_C_B_inv_mod_p2 323895 323892 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324222 324225 ∧ ¬ p ∣ (324225 - 324222) ∧
      ∃ (hNotC : ¬ p ∣ 324225) (hNotB : ¬ p ∣ 324222),
        order_of_C_B_inv_mod_p2 324225 324222 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324537 324540 ∧ ¬ p ∣ (324540 - 324537) ∧
      ∃ (hNotC : ¬ p ∣ 324540) (hNotB : ¬ p ∣ 324537),
        order_of_C_B_inv_mod_p2 324540 324537 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 324843 324846 ∧ ¬ p ∣ (324846 - 324843) ∧
      ∃ (hNotC : ¬ p ∣ 324846) (hNotB : ¬ p ∣ 324843),
        order_of_C_B_inv_mod_p2 324846 324843 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325185 325188 ∧ ¬ p ∣ (325188 - 325185) ∧
      ∃ (hNotC : ¬ p ∣ 325188) (hNotB : ¬ p ∣ 325185),
        order_of_C_B_inv_mod_p2 325188 325185 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325513 325516 ∧ ¬ p ∣ (325516 - 325513) ∧
      ∃ (hNotC : ¬ p ∣ 325516) (hNotB : ¬ p ∣ 325513),
        order_of_C_B_inv_mod_p2 325516 325513 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 325852 325855 ∧ ¬ p ∣ (325855 - 325852) ∧
      ∃ (hNotC : ¬ p ∣ 325855) (hNotB : ¬ p ∣ 325852),
        order_of_C_B_inv_mod_p2 325855 325852 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326193 326196 ∧ ¬ p ∣ (326196 - 326193) ∧
      ∃ (hNotC : ¬ p ∣ 326196) (hNotB : ¬ p ∣ 326193),
        order_of_C_B_inv_mod_p2 326196 326193 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326528 326531 ∧ ¬ p ∣ (326531 - 326528) ∧
      ∃ (hNotC : ¬ p ∣ 326531) (hNotB : ¬ p ∣ 326528),
        order_of_C_B_inv_mod_p2 326531 326528 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 326897 326900 ∧ ¬ p ∣ (326900 - 326897) ∧
      ∃ (hNotC : ¬ p ∣ 326900) (hNotB : ¬ p ∣ 326897),
        order_of_C_B_inv_mod_p2 326900 326897 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327236 327239 ∧ ¬ p ∣ (327239 - 327236) ∧
      ∃ (hNotC : ¬ p ∣ 327239) (hNotB : ¬ p ∣ 327236),
        order_of_C_B_inv_mod_p2 327239 327236 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327559 327562 ∧ ¬ p ∣ (327562 - 327559) ∧
      ∃ (hNotC : ¬ p ∣ 327562) (hNotB : ¬ p ∣ 327559),
        order_of_C_B_inv_mod_p2 327562 327559 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 327902 327905 ∧ ¬ p ∣ (327905 - 327902) ∧
      ∃ (hNotC : ¬ p ∣ 327905) (hNotB : ¬ p ∣ 327902),
        order_of_C_B_inv_mod_p2 327905 327902 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328229 328232 ∧ ¬ p ∣ (328232 - 328229) ∧
      ∃ (hNotC : ¬ p ∣ 328232) (hNotB : ¬ p ∣ 328229),
        order_of_C_B_inv_mod_p2 328232 328229 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328553 328556 ∧ ¬ p ∣ (328556 - 328553) ∧
      ∃ (hNotC : ¬ p ∣ 328556) (hNotB : ¬ p ∣ 328553),
        order_of_C_B_inv_mod_p2 328556 328553 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 328900 328903 ∧ ¬ p ∣ (328903 - 328900) ∧
      ∃ (hNotC : ¬ p ∣ 328903) (hNotB : ¬ p ∣ 328900),
        order_of_C_B_inv_mod_p2 328903 328900 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329242 329245 ∧ ¬ p ∣ (329245 - 329242) ∧
      ∃ (hNotC : ¬ p ∣ 329245) (hNotB : ¬ p ∣ 329242),
        order_of_C_B_inv_mod_p2 329245 329242 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329571 329574 ∧ ¬ p ∣ (329574 - 329571) ∧
      ∃ (hNotC : ¬ p ∣ 329574) (hNotB : ¬ p ∣ 329571),
        order_of_C_B_inv_mod_p2 329574 329571 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 329918 329921 ∧ ¬ p ∣ (329921 - 329918) ∧
      ∃ (hNotC : ¬ p ∣ 329921) (hNotB : ¬ p ∣ 329918),
        order_of_C_B_inv_mod_p2 329921 329918 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330258 330261 ∧ ¬ p ∣ (330261 - 330258) ∧
      ∃ (hNotC : ¬ p ∣ 330261) (hNotB : ¬ p ∣ 330258),
        order_of_C_B_inv_mod_p2 330261 330258 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330592 330595 ∧ ¬ p ∣ (330595 - 330592) ∧
      ∃ (hNotC : ¬ p ∣ 330595) (hNotB : ¬ p ∣ 330592),
        order_of_C_B_inv_mod_p2 330595 330592 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 330944 330947 ∧ ¬ p ∣ (330947 - 330944) ∧
      ∃ (hNotC : ¬ p ∣ 330947) (hNotB : ¬ p ∣ 330944),
        order_of_C_B_inv_mod_p2 330947 330944 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331263 331266 ∧ ¬ p ∣ (331266 - 331263) ∧
      ∃ (hNotC : ¬ p ∣ 331266) (hNotB : ¬ p ∣ 331263),
        order_of_C_B_inv_mod_p2 331266 331263 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331598 331601 ∧ ¬ p ∣ (331601 - 331598) ∧
      ∃ (hNotC : ¬ p ∣ 331601) (hNotB : ¬ p ∣ 331598),
        order_of_C_B_inv_mod_p2 331601 331598 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 331944 331947 ∧ ¬ p ∣ (331947 - 331944) ∧
      ∃ (hNotC : ¬ p ∣ 331947) (hNotB : ¬ p ∣ 331944),
        order_of_C_B_inv_mod_p2 331947 331944 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332265 332268 ∧ ¬ p ∣ (332268 - 332265) ∧
      ∃ (hNotC : ¬ p ∣ 332268) (hNotB : ¬ p ∣ 332265),
        order_of_C_B_inv_mod_p2 332268 332265 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332596 332599 ∧ ¬ p ∣ (332599 - 332596) ∧
      ∃ (hNotC : ¬ p ∣ 332599) (hNotB : ¬ p ∣ 332596),
        order_of_C_B_inv_mod_p2 332599 332596 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 332924 332927 ∧ ¬ p ∣ (332927 - 332924) ∧
      ∃ (hNotC : ¬ p ∣ 332927) (hNotB : ¬ p ∣ 332924),
        order_of_C_B_inv_mod_p2 332927 332924 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333255 333258 ∧ ¬ p ∣ (333258 - 333255) ∧
      ∃ (hNotC : ¬ p ∣ 333258) (hNotB : ¬ p ∣ 333255),
        order_of_C_B_inv_mod_p2 333258 333255 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333602 333605 ∧ ¬ p ∣ (333605 - 333602) ∧
      ∃ (hNotC : ¬ p ∣ 333605) (hNotB : ¬ p ∣ 333602),
        order_of_C_B_inv_mod_p2 333605 333602 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 333947 333950 ∧ ¬ p ∣ (333950 - 333947) ∧
      ∃ (hNotC : ¬ p ∣ 333950) (hNotB : ¬ p ∣ 333947),
        order_of_C_B_inv_mod_p2 333950 333947 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334266 334269 ∧ ¬ p ∣ (334269 - 334266) ∧
      ∃ (hNotC : ¬ p ∣ 334269) (hNotB : ¬ p ∣ 334266),
        order_of_C_B_inv_mod_p2 334269 334266 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334593 334596 ∧ ¬ p ∣ (334596 - 334593) ∧
      ∃ (hNotC : ¬ p ∣ 334596) (hNotB : ¬ p ∣ 334593),
        order_of_C_B_inv_mod_p2 334596 334593 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 334920 334923 ∧ ¬ p ∣ (334923 - 334920) ∧
      ∃ (hNotC : ¬ p ∣ 334923) (hNotB : ¬ p ∣ 334920),
        order_of_C_B_inv_mod_p2 334923 334920 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335279 335282 ∧ ¬ p ∣ (335282 - 335279) ∧
      ∃ (hNotC : ¬ p ∣ 335282) (hNotB : ¬ p ∣ 335279),
        order_of_C_B_inv_mod_p2 335282 335279 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335596 335599 ∧ ¬ p ∣ (335599 - 335596) ∧
      ∃ (hNotC : ¬ p ∣ 335599) (hNotB : ¬ p ∣ 335596),
        order_of_C_B_inv_mod_p2 335599 335596 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 335946 335949 ∧ ¬ p ∣ (335949 - 335946) ∧
      ∃ (hNotC : ¬ p ∣ 335949) (hNotB : ¬ p ∣ 335946),
        order_of_C_B_inv_mod_p2 335949 335946 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336290 336293 ∧ ¬ p ∣ (336293 - 336290) ∧
      ∃ (hNotC : ¬ p ∣ 336293) (hNotB : ¬ p ∣ 336290),
        order_of_C_B_inv_mod_p2 336293 336290 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336640 336643 ∧ ¬ p ∣ (336643 - 336640) ∧
      ∃ (hNotC : ¬ p ∣ 336643) (hNotB : ¬ p ∣ 336640),
        order_of_C_B_inv_mod_p2 336643 336640 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 336972 336975 ∧ ¬ p ∣ (336975 - 336972) ∧
      ∃ (hNotC : ¬ p ∣ 336975) (hNotB : ¬ p ∣ 336972),
        order_of_C_B_inv_mod_p2 336975 336972 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337285 337288 ∧ ¬ p ∣ (337288 - 337285) ∧
      ∃ (hNotC : ¬ p ∣ 337288) (hNotB : ¬ p ∣ 337285),
        order_of_C_B_inv_mod_p2 337288 337285 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337609 337612 ∧ ¬ p ∣ (337612 - 337609) ∧
      ∃ (hNotC : ¬ p ∣ 337612) (hNotB : ¬ p ∣ 337609),
        order_of_C_B_inv_mod_p2 337612 337609 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 337945 337948 ∧ ¬ p ∣ (337948 - 337945) ∧
      ∃ (hNotC : ¬ p ∣ 337948) (hNotB : ¬ p ∣ 337945),
        order_of_C_B_inv_mod_p2 337948 337945 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338301 338304 ∧ ¬ p ∣ (338304 - 338301) ∧
      ∃ (hNotC : ¬ p ∣ 338304) (hNotB : ¬ p ∣ 338301),
        order_of_C_B_inv_mod_p2 338304 338301 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338625 338628 ∧ ¬ p ∣ (338628 - 338625) ∧
      ∃ (hNotC : ¬ p ∣ 338628) (hNotB : ¬ p ∣ 338625),
        order_of_C_B_inv_mod_p2 338628 338625 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 338968 338971 ∧ ¬ p ∣ (338971 - 338968) ∧
      ∃ (hNotC : ¬ p ∣ 338971) (hNotB : ¬ p ∣ 338968),
        order_of_C_B_inv_mod_p2 338971 338968 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339306 339309 ∧ ¬ p ∣ (339309 - 339306) ∧
      ∃ (hNotC : ¬ p ∣ 339309) (hNotB : ¬ p ∣ 339306),
        order_of_C_B_inv_mod_p2 339309 339306 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339638 339641 ∧ ¬ p ∣ (339641 - 339638) ∧
      ∃ (hNotC : ¬ p ∣ 339641) (hNotB : ¬ p ∣ 339638),
        order_of_C_B_inv_mod_p2 339641 339638 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 339979 339982 ∧ ¬ p ∣ (339982 - 339979) ∧
      ∃ (hNotC : ¬ p ∣ 339982) (hNotB : ¬ p ∣ 339979),
        order_of_C_B_inv_mod_p2 339982 339979 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340315 340318 ∧ ¬ p ∣ (340318 - 340315) ∧
      ∃ (hNotC : ¬ p ∣ 340318) (hNotB : ¬ p ∣ 340315),
        order_of_C_B_inv_mod_p2 340318 340315 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340659 340662 ∧ ¬ p ∣ (340662 - 340659) ∧
      ∃ (hNotC : ¬ p ∣ 340662) (hNotB : ¬ p ∣ 340659),
        order_of_C_B_inv_mod_p2 340662 340659 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 340982 340985 ∧ ¬ p ∣ (340985 - 340982) ∧
      ∃ (hNotC : ¬ p ∣ 340985) (hNotB : ¬ p ∣ 340982),
        order_of_C_B_inv_mod_p2 340985 340982 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341311 341314 ∧ ¬ p ∣ (341314 - 341311) ∧
      ∃ (hNotC : ¬ p ∣ 341314) (hNotB : ¬ p ∣ 341311),
        order_of_C_B_inv_mod_p2 341314 341311 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341619 341622 ∧ ¬ p ∣ (341622 - 341619) ∧
      ∃ (hNotC : ¬ p ∣ 341622) (hNotB : ¬ p ∣ 341619),
        order_of_C_B_inv_mod_p2 341622 341619 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 341960 341963 ∧ ¬ p ∣ (341963 - 341960) ∧
      ∃ (hNotC : ¬ p ∣ 341963) (hNotB : ¬ p ∣ 341960),
        order_of_C_B_inv_mod_p2 341963 341960 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342290 342293 ∧ ¬ p ∣ (342293 - 342290) ∧
      ∃ (hNotC : ¬ p ∣ 342293) (hNotB : ¬ p ∣ 342290),
        order_of_C_B_inv_mod_p2 342293 342290 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342619 342622 ∧ ¬ p ∣ (342622 - 342619) ∧
      ∃ (hNotC : ¬ p ∣ 342622) (hNotB : ¬ p ∣ 342619),
        order_of_C_B_inv_mod_p2 342622 342619 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 342956 342959 ∧ ¬ p ∣ (342959 - 342956) ∧
      ∃ (hNotC : ¬ p ∣ 342959) (hNotB : ¬ p ∣ 342956),
        order_of_C_B_inv_mod_p2 342959 342956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343299 343302 ∧ ¬ p ∣ (343302 - 343299) ∧
      ∃ (hNotC : ¬ p ∣ 343302) (hNotB : ¬ p ∣ 343299),
        order_of_C_B_inv_mod_p2 343302 343299 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343637 343640 ∧ ¬ p ∣ (343640 - 343637) ∧
      ∃ (hNotC : ¬ p ∣ 343640) (hNotB : ¬ p ∣ 343637),
        order_of_C_B_inv_mod_p2 343640 343637 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 343978 343981 ∧ ¬ p ∣ (343981 - 343978) ∧
      ∃ (hNotC : ¬ p ∣ 343981) (hNotB : ¬ p ∣ 343978),
        order_of_C_B_inv_mod_p2 343981 343978 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344322 344325 ∧ ¬ p ∣ (344325 - 344322) ∧
      ∃ (hNotC : ¬ p ∣ 344325) (hNotB : ¬ p ∣ 344322),
        order_of_C_B_inv_mod_p2 344325 344322 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344651 344654 ∧ ¬ p ∣ (344654 - 344651) ∧
      ∃ (hNotC : ¬ p ∣ 344654) (hNotB : ¬ p ∣ 344651),
        order_of_C_B_inv_mod_p2 344654 344651 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 344990 344993 ∧ ¬ p ∣ (344993 - 344990) ∧
      ∃ (hNotC : ¬ p ∣ 344993) (hNotB : ¬ p ∣ 344990),
        order_of_C_B_inv_mod_p2 344993 344990 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345299 345302 ∧ ¬ p ∣ (345302 - 345299) ∧
      ∃ (hNotC : ¬ p ∣ 345302) (hNotB : ¬ p ∣ 345299),
        order_of_C_B_inv_mod_p2 345302 345299 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345633 345636 ∧ ¬ p ∣ (345636 - 345633) ∧
      ∃ (hNotC : ¬ p ∣ 345636) (hNotB : ¬ p ∣ 345633),
        order_of_C_B_inv_mod_p2 345636 345633 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 345954 345957 ∧ ¬ p ∣ (345957 - 345954) ∧
      ∃ (hNotC : ¬ p ∣ 345957) (hNotB : ¬ p ∣ 345954),
        order_of_C_B_inv_mod_p2 345957 345954 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346301 346304 ∧ ¬ p ∣ (346304 - 346301) ∧
      ∃ (hNotC : ¬ p ∣ 346304) (hNotB : ¬ p ∣ 346301),
        order_of_C_B_inv_mod_p2 346304 346301 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346657 346660 ∧ ¬ p ∣ (346660 - 346657) ∧
      ∃ (hNotC : ¬ p ∣ 346660) (hNotB : ¬ p ∣ 346657),
        order_of_C_B_inv_mod_p2 346660 346657 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 346996 346999 ∧ ¬ p ∣ (346999 - 346996) ∧
      ∃ (hNotC : ¬ p ∣ 346999) (hNotB : ¬ p ∣ 346996),
        order_of_C_B_inv_mod_p2 346999 346996 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 347347 347350 ∧ ¬ p ∣ (347350 - 347347) ∧
      ∃ (hNotC : ¬ p ∣ 347350) (hNotB : ¬ p ∣ 347347),
        order_of_C_B_inv_mod_p2 347350 347347 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 347692 347695 ∧ ¬ p ∣ (347695 - 347692) ∧
      ∃ (hNotC : ¬ p ∣ 347695) (hNotB : ¬ p ∣ 347692),
        order_of_C_B_inv_mod_p2 347695 347692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348037 348040 ∧ ¬ p ∣ (348040 - 348037) ∧
      ∃ (hNotC : ¬ p ∣ 348040) (hNotB : ¬ p ∣ 348037),
        order_of_C_B_inv_mod_p2 348040 348037 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348369 348372 ∧ ¬ p ∣ (348372 - 348369) ∧
      ∃ (hNotC : ¬ p ∣ 348372) (hNotB : ¬ p ∣ 348369),
        order_of_C_B_inv_mod_p2 348372 348369 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 348718 348721 ∧ ¬ p ∣ (348721 - 348718) ∧
      ∃ (hNotC : ¬ p ∣ 348721) (hNotB : ¬ p ∣ 348718),
        order_of_C_B_inv_mod_p2 348721 348718 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349038 349041 ∧ ¬ p ∣ (349041 - 349038) ∧
      ∃ (hNotC : ¬ p ∣ 349041) (hNotB : ¬ p ∣ 349038),
        order_of_C_B_inv_mod_p2 349041 349038 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349358 349361 ∧ ¬ p ∣ (349361 - 349358) ∧
      ∃ (hNotC : ¬ p ∣ 349361) (hNotB : ¬ p ∣ 349358),
        order_of_C_B_inv_mod_p2 349361 349358 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 349685 349688 ∧ ¬ p ∣ (349688 - 349685) ∧
      ∃ (hNotC : ¬ p ∣ 349688) (hNotB : ¬ p ∣ 349685),
        order_of_C_B_inv_mod_p2 349688 349685 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350011 350014 ∧ ¬ p ∣ (350014 - 350011) ∧
      ∃ (hNotC : ¬ p ∣ 350014) (hNotB : ¬ p ∣ 350011),
        order_of_C_B_inv_mod_p2 350014 350011 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350344 350347 ∧ ¬ p ∣ (350347 - 350344) ∧
      ∃ (hNotC : ¬ p ∣ 350347) (hNotB : ¬ p ∣ 350344),
        order_of_C_B_inv_mod_p2 350347 350344 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 350685 350688 ∧ ¬ p ∣ (350688 - 350685) ∧
      ∃ (hNotC : ¬ p ∣ 350688) (hNotB : ¬ p ∣ 350685),
        order_of_C_B_inv_mod_p2 350688 350685 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351017 351020 ∧ ¬ p ∣ (351020 - 351017) ∧
      ∃ (hNotC : ¬ p ∣ 351020) (hNotB : ¬ p ∣ 351017),
        order_of_C_B_inv_mod_p2 351020 351017 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351347 351350 ∧ ¬ p ∣ (351350 - 351347) ∧
      ∃ (hNotC : ¬ p ∣ 351350) (hNotB : ¬ p ∣ 351347),
        order_of_C_B_inv_mod_p2 351350 351347 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 351710 351713 ∧ ¬ p ∣ (351713 - 351710) ∧
      ∃ (hNotC : ¬ p ∣ 351713) (hNotB : ¬ p ∣ 351710),
        order_of_C_B_inv_mod_p2 351713 351710 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352036 352039 ∧ ¬ p ∣ (352039 - 352036) ∧
      ∃ (hNotC : ¬ p ∣ 352039) (hNotB : ¬ p ∣ 352036),
        order_of_C_B_inv_mod_p2 352039 352036 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352363 352366 ∧ ¬ p ∣ (352366 - 352363) ∧
      ∃ (hNotC : ¬ p ∣ 352366) (hNotB : ¬ p ∣ 352363),
        order_of_C_B_inv_mod_p2 352366 352363 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 352707 352710 ∧ ¬ p ∣ (352710 - 352707) ∧
      ∃ (hNotC : ¬ p ∣ 352710) (hNotB : ¬ p ∣ 352707),
        order_of_C_B_inv_mod_p2 352710 352707 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353030 353033 ∧ ¬ p ∣ (353033 - 353030) ∧
      ∃ (hNotC : ¬ p ∣ 353033) (hNotB : ¬ p ∣ 353030),
        order_of_C_B_inv_mod_p2 353033 353030 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353364 353367 ∧ ¬ p ∣ (353367 - 353364) ∧
      ∃ (hNotC : ¬ p ∣ 353367) (hNotB : ¬ p ∣ 353364),
        order_of_C_B_inv_mod_p2 353367 353364 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 353696 353699 ∧ ¬ p ∣ (353699 - 353696) ∧
      ∃ (hNotC : ¬ p ∣ 353699) (hNotB : ¬ p ∣ 353696),
        order_of_C_B_inv_mod_p2 353699 353696 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354037 354040 ∧ ¬ p ∣ (354040 - 354037) ∧
      ∃ (hNotC : ¬ p ∣ 354040) (hNotB : ¬ p ∣ 354037),
        order_of_C_B_inv_mod_p2 354040 354037 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354392 354395 ∧ ¬ p ∣ (354395 - 354392) ∧
      ∃ (hNotC : ¬ p ∣ 354395) (hNotB : ¬ p ∣ 354392),
        order_of_C_B_inv_mod_p2 354395 354392 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 354722 354725 ∧ ¬ p ∣ (354725 - 354722) ∧
      ∃ (hNotC : ¬ p ∣ 354725) (hNotB : ¬ p ∣ 354722),
        order_of_C_B_inv_mod_p2 354725 354722 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355053 355056 ∧ ¬ p ∣ (355056 - 355053) ∧
      ∃ (hNotC : ¬ p ∣ 355056) (hNotB : ¬ p ∣ 355053),
        order_of_C_B_inv_mod_p2 355056 355053 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355397 355400 ∧ ¬ p ∣ (355400 - 355397) ∧
      ∃ (hNotC : ¬ p ∣ 355400) (hNotB : ¬ p ∣ 355397),
        order_of_C_B_inv_mod_p2 355400 355397 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 355727 355730 ∧ ¬ p ∣ (355730 - 355727) ∧
      ∃ (hNotC : ¬ p ∣ 355730) (hNotB : ¬ p ∣ 355727),
        order_of_C_B_inv_mod_p2 355730 355727 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356065 356068 ∧ ¬ p ∣ (356068 - 356065) ∧
      ∃ (hNotC : ¬ p ∣ 356068) (hNotB : ¬ p ∣ 356065),
        order_of_C_B_inv_mod_p2 356068 356065 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356410 356413 ∧ ¬ p ∣ (356413 - 356410) ∧
      ∃ (hNotC : ¬ p ∣ 356413) (hNotB : ¬ p ∣ 356410),
        order_of_C_B_inv_mod_p2 356413 356410 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 356750 356753 ∧ ¬ p ∣ (356753 - 356750) ∧
      ∃ (hNotC : ¬ p ∣ 356753) (hNotB : ¬ p ∣ 356750),
        order_of_C_B_inv_mod_p2 356753 356750 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357088 357091 ∧ ¬ p ∣ (357091 - 357088) ∧
      ∃ (hNotC : ¬ p ∣ 357091) (hNotB : ¬ p ∣ 357088),
        order_of_C_B_inv_mod_p2 357091 357088 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357441 357444 ∧ ¬ p ∣ (357444 - 357441) ∧
      ∃ (hNotC : ¬ p ∣ 357444) (hNotB : ¬ p ∣ 357441),
        order_of_C_B_inv_mod_p2 357444 357441 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 357773 357776 ∧ ¬ p ∣ (357776 - 357773) ∧
      ∃ (hNotC : ¬ p ∣ 357776) (hNotB : ¬ p ∣ 357773),
        order_of_C_B_inv_mod_p2 357776 357773 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358096 358099 ∧ ¬ p ∣ (358099 - 358096) ∧
      ∃ (hNotC : ¬ p ∣ 358099) (hNotB : ¬ p ∣ 358096),
        order_of_C_B_inv_mod_p2 358099 358096 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358433 358436 ∧ ¬ p ∣ (358436 - 358433) ∧
      ∃ (hNotC : ¬ p ∣ 358436) (hNotB : ¬ p ∣ 358433),
        order_of_C_B_inv_mod_p2 358436 358433 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 358763 358766 ∧ ¬ p ∣ (358766 - 358763) ∧
      ∃ (hNotC : ¬ p ∣ 358766) (hNotB : ¬ p ∣ 358763),
        order_of_C_B_inv_mod_p2 358766 358763 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359107 359110 ∧ ¬ p ∣ (359110 - 359107) ∧
      ∃ (hNotC : ¬ p ∣ 359110) (hNotB : ¬ p ∣ 359107),
        order_of_C_B_inv_mod_p2 359110 359107 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359423 359426 ∧ ¬ p ∣ (359426 - 359423) ∧
      ∃ (hNotC : ¬ p ∣ 359426) (hNotB : ¬ p ∣ 359423),
        order_of_C_B_inv_mod_p2 359426 359423 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 359756 359759 ∧ ¬ p ∣ (359759 - 359756) ∧
      ∃ (hNotC : ¬ p ∣ 359759) (hNotB : ¬ p ∣ 359756),
        order_of_C_B_inv_mod_p2 359759 359756 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360095 360098 ∧ ¬ p ∣ (360098 - 360095) ∧
      ∃ (hNotC : ¬ p ∣ 360098) (hNotB : ¬ p ∣ 360095),
        order_of_C_B_inv_mod_p2 360098 360095 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360428 360431 ∧ ¬ p ∣ (360431 - 360428) ∧
      ∃ (hNotC : ¬ p ∣ 360431) (hNotB : ¬ p ∣ 360428),
        order_of_C_B_inv_mod_p2 360431 360428 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 360767 360770 ∧ ¬ p ∣ (360770 - 360767) ∧
      ∃ (hNotC : ¬ p ∣ 360770) (hNotB : ¬ p ∣ 360767),
        order_of_C_B_inv_mod_p2 360770 360767 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361110 361113 ∧ ¬ p ∣ (361113 - 361110) ∧
      ∃ (hNotC : ¬ p ∣ 361113) (hNotB : ¬ p ∣ 361110),
        order_of_C_B_inv_mod_p2 361113 361110 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361464 361467 ∧ ¬ p ∣ (361467 - 361464) ∧
      ∃ (hNotC : ¬ p ∣ 361467) (hNotB : ¬ p ∣ 361464),
        order_of_C_B_inv_mod_p2 361467 361464 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 361784 361787 ∧ ¬ p ∣ (361787 - 361784) ∧
      ∃ (hNotC : ¬ p ∣ 361787) (hNotB : ¬ p ∣ 361784),
        order_of_C_B_inv_mod_p2 361787 361784 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362106 362109 ∧ ¬ p ∣ (362109 - 362106) ∧
      ∃ (hNotC : ¬ p ∣ 362109) (hNotB : ¬ p ∣ 362106),
        order_of_C_B_inv_mod_p2 362109 362106 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362419 362422 ∧ ¬ p ∣ (362422 - 362419) ∧
      ∃ (hNotC : ¬ p ∣ 362422) (hNotB : ¬ p ∣ 362419),
        order_of_C_B_inv_mod_p2 362422 362419 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 362750 362753 ∧ ¬ p ∣ (362753 - 362750) ∧
      ∃ (hNotC : ¬ p ∣ 362753) (hNotB : ¬ p ∣ 362750),
        order_of_C_B_inv_mod_p2 362753 362750 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363097 363100 ∧ ¬ p ∣ (363100 - 363097) ∧
      ∃ (hNotC : ¬ p ∣ 363100) (hNotB : ¬ p ∣ 363097),
        order_of_C_B_inv_mod_p2 363100 363097 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363426 363429 ∧ ¬ p ∣ (363429 - 363426) ∧
      ∃ (hNotC : ¬ p ∣ 363429) (hNotB : ¬ p ∣ 363426),
        order_of_C_B_inv_mod_p2 363429 363426 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 363776 363779 ∧ ¬ p ∣ (363779 - 363776) ∧
      ∃ (hNotC : ¬ p ∣ 363779) (hNotB : ¬ p ∣ 363776),
        order_of_C_B_inv_mod_p2 363779 363776 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364114 364117 ∧ ¬ p ∣ (364117 - 364114) ∧
      ∃ (hNotC : ¬ p ∣ 364117) (hNotB : ¬ p ∣ 364114),
        order_of_C_B_inv_mod_p2 364117 364114 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364460 364463 ∧ ¬ p ∣ (364463 - 364460) ∧
      ∃ (hNotC : ¬ p ∣ 364463) (hNotB : ¬ p ∣ 364460),
        order_of_C_B_inv_mod_p2 364463 364460 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 364789 364792 ∧ ¬ p ∣ (364792 - 364789) ∧
      ∃ (hNotC : ¬ p ∣ 364792) (hNotB : ¬ p ∣ 364789),
        order_of_C_B_inv_mod_p2 364792 364789 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365127 365130 ∧ ¬ p ∣ (365130 - 365127) ∧
      ∃ (hNotC : ¬ p ∣ 365130) (hNotB : ¬ p ∣ 365127),
        order_of_C_B_inv_mod_p2 365130 365127 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365467 365470 ∧ ¬ p ∣ (365470 - 365467) ∧
      ∃ (hNotC : ¬ p ∣ 365470) (hNotB : ¬ p ∣ 365467),
        order_of_C_B_inv_mod_p2 365470 365467 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 365810 365813 ∧ ¬ p ∣ (365813 - 365810) ∧
      ∃ (hNotC : ¬ p ∣ 365813) (hNotB : ¬ p ∣ 365810),
        order_of_C_B_inv_mod_p2 365813 365810 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366100 366103 ∧ ¬ p ∣ (366103 - 366100) ∧
      ∃ (hNotC : ¬ p ∣ 366103) (hNotB : ¬ p ∣ 366100),
        order_of_C_B_inv_mod_p2 366103 366100 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366445 366448 ∧ ¬ p ∣ (366448 - 366445) ∧
      ∃ (hNotC : ¬ p ∣ 366448) (hNotB : ¬ p ∣ 366445),
        order_of_C_B_inv_mod_p2 366448 366445 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 366765 366768 ∧ ¬ p ∣ (366768 - 366765) ∧
      ∃ (hNotC : ¬ p ∣ 366768) (hNotB : ¬ p ∣ 366765),
        order_of_C_B_inv_mod_p2 366768 366765 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367092 367095 ∧ ¬ p ∣ (367095 - 367092) ∧
      ∃ (hNotC : ¬ p ∣ 367095) (hNotB : ¬ p ∣ 367092),
        order_of_C_B_inv_mod_p2 367095 367092 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367430 367433 ∧ ¬ p ∣ (367433 - 367430) ∧
      ∃ (hNotC : ¬ p ∣ 367433) (hNotB : ¬ p ∣ 367430),
        order_of_C_B_inv_mod_p2 367433 367430 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 367780 367783 ∧ ¬ p ∣ (367783 - 367780) ∧
      ∃ (hNotC : ¬ p ∣ 367783) (hNotB : ¬ p ∣ 367780),
        order_of_C_B_inv_mod_p2 367783 367780 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368119 368122 ∧ ¬ p ∣ (368122 - 368119) ∧
      ∃ (hNotC : ¬ p ∣ 368122) (hNotB : ¬ p ∣ 368119),
        order_of_C_B_inv_mod_p2 368122 368119 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368462 368465 ∧ ¬ p ∣ (368465 - 368462) ∧
      ∃ (hNotC : ¬ p ∣ 368465) (hNotB : ¬ p ∣ 368462),
        order_of_C_B_inv_mod_p2 368465 368462 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 368787 368790 ∧ ¬ p ∣ (368790 - 368787) ∧
      ∃ (hNotC : ¬ p ∣ 368790) (hNotB : ¬ p ∣ 368787),
        order_of_C_B_inv_mod_p2 368790 368787 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369117 369120 ∧ ¬ p ∣ (369120 - 369117) ∧
      ∃ (hNotC : ¬ p ∣ 369120) (hNotB : ¬ p ∣ 369117),
        order_of_C_B_inv_mod_p2 369120 369117 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369469 369472 ∧ ¬ p ∣ (369472 - 369469) ∧
      ∃ (hNotC : ¬ p ∣ 369472) (hNotB : ¬ p ∣ 369469),
        order_of_C_B_inv_mod_p2 369472 369469 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 369799 369802 ∧ ¬ p ∣ (369802 - 369799) ∧
      ∃ (hNotC : ¬ p ∣ 369802) (hNotB : ¬ p ∣ 369799),
        order_of_C_B_inv_mod_p2 369802 369799 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370136 370139 ∧ ¬ p ∣ (370139 - 370136) ∧
      ∃ (hNotC : ¬ p ∣ 370139) (hNotB : ¬ p ∣ 370136),
        order_of_C_B_inv_mod_p2 370139 370136 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370461 370464 ∧ ¬ p ∣ (370464 - 370461) ∧
      ∃ (hNotC : ¬ p ∣ 370464) (hNotB : ¬ p ∣ 370461),
        order_of_C_B_inv_mod_p2 370464 370461 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 370794 370797 ∧ ¬ p ∣ (370797 - 370794) ∧
      ∃ (hNotC : ¬ p ∣ 370797) (hNotB : ¬ p ∣ 370794),
        order_of_C_B_inv_mod_p2 370797 370794 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371126 371129 ∧ ¬ p ∣ (371129 - 371126) ∧
      ∃ (hNotC : ¬ p ∣ 371129) (hNotB : ¬ p ∣ 371126),
        order_of_C_B_inv_mod_p2 371129 371126 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371468 371471 ∧ ¬ p ∣ (371471 - 371468) ∧
      ∃ (hNotC : ¬ p ∣ 371471) (hNotB : ¬ p ∣ 371468),
        order_of_C_B_inv_mod_p2 371471 371468 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 371805 371808 ∧ ¬ p ∣ (371808 - 371805) ∧
      ∃ (hNotC : ¬ p ∣ 371808) (hNotB : ¬ p ∣ 371805),
        order_of_C_B_inv_mod_p2 371808 371805 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372150 372153 ∧ ¬ p ∣ (372153 - 372150) ∧
      ∃ (hNotC : ¬ p ∣ 372153) (hNotB : ¬ p ∣ 372150),
        order_of_C_B_inv_mod_p2 372153 372150 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372489 372492 ∧ ¬ p ∣ (372492 - 372489) ∧
      ∃ (hNotC : ¬ p ∣ 372492) (hNotB : ¬ p ∣ 372489),
        order_of_C_B_inv_mod_p2 372492 372489 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 372814 372817 ∧ ¬ p ∣ (372817 - 372814) ∧
      ∃ (hNotC : ¬ p ∣ 372817) (hNotB : ¬ p ∣ 372814),
        order_of_C_B_inv_mod_p2 372817 372814 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373156 373159 ∧ ¬ p ∣ (373159 - 373156) ∧
      ∃ (hNotC : ¬ p ∣ 373159) (hNotB : ¬ p ∣ 373156),
        order_of_C_B_inv_mod_p2 373159 373156 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373497 373500 ∧ ¬ p ∣ (373500 - 373497) ∧
      ∃ (hNotC : ¬ p ∣ 373500) (hNotB : ¬ p ∣ 373497),
        order_of_C_B_inv_mod_p2 373500 373497 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 373827 373830 ∧ ¬ p ∣ (373830 - 373827) ∧
      ∃ (hNotC : ¬ p ∣ 373830) (hNotB : ¬ p ∣ 373827),
        order_of_C_B_inv_mod_p2 373830 373827 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374185 374188 ∧ ¬ p ∣ (374188 - 374185) ∧
      ∃ (hNotC : ¬ p ∣ 374188) (hNotB : ¬ p ∣ 374185),
        order_of_C_B_inv_mod_p2 374188 374185 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374490 374493 ∧ ¬ p ∣ (374493 - 374490) ∧
      ∃ (hNotC : ¬ p ∣ 374493) (hNotB : ¬ p ∣ 374490),
        order_of_C_B_inv_mod_p2 374493 374490 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 374823 374826 ∧ ¬ p ∣ (374826 - 374823) ∧
      ∃ (hNotC : ¬ p ∣ 374826) (hNotB : ¬ p ∣ 374823),
        order_of_C_B_inv_mod_p2 374826 374823 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375144 375147 ∧ ¬ p ∣ (375147 - 375144) ∧
      ∃ (hNotC : ¬ p ∣ 375147) (hNotB : ¬ p ∣ 375144),
        order_of_C_B_inv_mod_p2 375147 375144 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375466 375469 ∧ ¬ p ∣ (375469 - 375466) ∧
      ∃ (hNotC : ¬ p ∣ 375469) (hNotB : ¬ p ∣ 375466),
        order_of_C_B_inv_mod_p2 375469 375466 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 375802 375805 ∧ ¬ p ∣ (375805 - 375802) ∧
      ∃ (hNotC : ¬ p ∣ 375805) (hNotB : ¬ p ∣ 375802),
        order_of_C_B_inv_mod_p2 375805 375802 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376140 376143 ∧ ¬ p ∣ (376143 - 376140) ∧
      ∃ (hNotC : ¬ p ∣ 376143) (hNotB : ¬ p ∣ 376140),
        order_of_C_B_inv_mod_p2 376143 376140 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376456 376459 ∧ ¬ p ∣ (376459 - 376456) ∧
      ∃ (hNotC : ¬ p ∣ 376459) (hNotB : ¬ p ∣ 376456),
        order_of_C_B_inv_mod_p2 376459 376456 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 376814 376817 ∧ ¬ p ∣ (376817 - 376814) ∧
      ∃ (hNotC : ¬ p ∣ 376817) (hNotB : ¬ p ∣ 376814),
        order_of_C_B_inv_mod_p2 376817 376814 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377152 377155 ∧ ¬ p ∣ (377155 - 377152) ∧
      ∃ (hNotC : ¬ p ∣ 377155) (hNotB : ¬ p ∣ 377152),
        order_of_C_B_inv_mod_p2 377155 377152 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377492 377495 ∧ ¬ p ∣ (377495 - 377492) ∧
      ∃ (hNotC : ¬ p ∣ 377495) (hNotB : ¬ p ∣ 377492),
        order_of_C_B_inv_mod_p2 377495 377492 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 377863 377866 ∧ ¬ p ∣ (377866 - 377863) ∧
      ∃ (hNotC : ¬ p ∣ 377866) (hNotB : ¬ p ∣ 377863),
        order_of_C_B_inv_mod_p2 377866 377863 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378192 378195 ∧ ¬ p ∣ (378195 - 378192) ∧
      ∃ (hNotC : ¬ p ∣ 378195) (hNotB : ¬ p ∣ 378192),
        order_of_C_B_inv_mod_p2 378195 378192 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378527 378530 ∧ ¬ p ∣ (378530 - 378527) ∧
      ∃ (hNotC : ¬ p ∣ 378530) (hNotB : ¬ p ∣ 378527),
        order_of_C_B_inv_mod_p2 378530 378527 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 378858 378861 ∧ ¬ p ∣ (378861 - 378858) ∧
      ∃ (hNotC : ¬ p ∣ 378861) (hNotB : ¬ p ∣ 378858),
        order_of_C_B_inv_mod_p2 378861 378858 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379194 379197 ∧ ¬ p ∣ (379197 - 379194) ∧
      ∃ (hNotC : ¬ p ∣ 379197) (hNotB : ¬ p ∣ 379194),
        order_of_C_B_inv_mod_p2 379197 379194 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379534 379537 ∧ ¬ p ∣ (379537 - 379534) ∧
      ∃ (hNotC : ¬ p ∣ 379537) (hNotB : ¬ p ∣ 379534),
        order_of_C_B_inv_mod_p2 379537 379534 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 379869 379872 ∧ ¬ p ∣ (379872 - 379869) ∧
      ∃ (hNotC : ¬ p ∣ 379872) (hNotB : ¬ p ∣ 379869),
        order_of_C_B_inv_mod_p2 379872 379869 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380209 380212 ∧ ¬ p ∣ (380212 - 380209) ∧
      ∃ (hNotC : ¬ p ∣ 380212) (hNotB : ¬ p ∣ 380209),
        order_of_C_B_inv_mod_p2 380212 380209 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380536 380539 ∧ ¬ p ∣ (380539 - 380536) ∧
      ∃ (hNotC : ¬ p ∣ 380539) (hNotB : ¬ p ∣ 380536),
        order_of_C_B_inv_mod_p2 380539 380536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 380872 380875 ∧ ¬ p ∣ (380875 - 380872) ∧
      ∃ (hNotC : ¬ p ∣ 380875) (hNotB : ¬ p ∣ 380872),
        order_of_C_B_inv_mod_p2 380875 380872 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381221 381224 ∧ ¬ p ∣ (381224 - 381221) ∧
      ∃ (hNotC : ¬ p ∣ 381224) (hNotB : ¬ p ∣ 381221),
        order_of_C_B_inv_mod_p2 381224 381221 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381552 381555 ∧ ¬ p ∣ (381555 - 381552) ∧
      ∃ (hNotC : ¬ p ∣ 381555) (hNotB : ¬ p ∣ 381552),
        order_of_C_B_inv_mod_p2 381555 381552 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 381894 381897 ∧ ¬ p ∣ (381897 - 381894) ∧
      ∃ (hNotC : ¬ p ∣ 381897) (hNotB : ¬ p ∣ 381894),
        order_of_C_B_inv_mod_p2 381897 381894 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382225 382228 ∧ ¬ p ∣ (382228 - 382225) ∧
      ∃ (hNotC : ¬ p ∣ 382228) (hNotB : ¬ p ∣ 382225),
        order_of_C_B_inv_mod_p2 382228 382225 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382563 382566 ∧ ¬ p ∣ (382566 - 382563) ∧
      ∃ (hNotC : ¬ p ∣ 382566) (hNotB : ¬ p ∣ 382563),
        order_of_C_B_inv_mod_p2 382566 382563 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 382887 382890 ∧ ¬ p ∣ (382890 - 382887) ∧
      ∃ (hNotC : ¬ p ∣ 382890) (hNotB : ¬ p ∣ 382887),
        order_of_C_B_inv_mod_p2 382890 382887 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383224 383227 ∧ ¬ p ∣ (383227 - 383224) ∧
      ∃ (hNotC : ¬ p ∣ 383227) (hNotB : ¬ p ∣ 383224),
        order_of_C_B_inv_mod_p2 383227 383224 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383558 383561 ∧ ¬ p ∣ (383561 - 383558) ∧
      ∃ (hNotC : ¬ p ∣ 383561) (hNotB : ¬ p ∣ 383558),
        order_of_C_B_inv_mod_p2 383561 383558 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 383874 383877 ∧ ¬ p ∣ (383877 - 383874) ∧
      ∃ (hNotC : ¬ p ∣ 383877) (hNotB : ¬ p ∣ 383874),
        order_of_C_B_inv_mod_p2 383877 383874 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384202 384205 ∧ ¬ p ∣ (384205 - 384202) ∧
      ∃ (hNotC : ¬ p ∣ 384205) (hNotB : ¬ p ∣ 384202),
        order_of_C_B_inv_mod_p2 384205 384202 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384543 384546 ∧ ¬ p ∣ (384546 - 384543) ∧
      ∃ (hNotC : ¬ p ∣ 384546) (hNotB : ¬ p ∣ 384543),
        order_of_C_B_inv_mod_p2 384546 384543 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 384884 384887 ∧ ¬ p ∣ (384887 - 384884) ∧
      ∃ (hNotC : ¬ p ∣ 384887) (hNotB : ¬ p ∣ 384884),
        order_of_C_B_inv_mod_p2 384887 384884 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385217 385220 ∧ ¬ p ∣ (385220 - 385217) ∧
      ∃ (hNotC : ¬ p ∣ 385220) (hNotB : ¬ p ∣ 385217),
        order_of_C_B_inv_mod_p2 385220 385217 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385556 385559 ∧ ¬ p ∣ (385559 - 385556) ∧
      ∃ (hNotC : ¬ p ∣ 385559) (hNotB : ¬ p ∣ 385556),
        order_of_C_B_inv_mod_p2 385559 385556 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 385883 385886 ∧ ¬ p ∣ (385886 - 385883) ∧
      ∃ (hNotC : ¬ p ∣ 385886) (hNotB : ¬ p ∣ 385883),
        order_of_C_B_inv_mod_p2 385886 385883 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386231 386234 ∧ ¬ p ∣ (386234 - 386231) ∧
      ∃ (hNotC : ¬ p ∣ 386234) (hNotB : ¬ p ∣ 386231),
        order_of_C_B_inv_mod_p2 386234 386231 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386561 386564 ∧ ¬ p ∣ (386564 - 386561) ∧
      ∃ (hNotC : ¬ p ∣ 386564) (hNotB : ¬ p ∣ 386561),
        order_of_C_B_inv_mod_p2 386564 386561 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386884 386887 ∧ ¬ p ∣ (386887 - 386884) ∧
      ∃ (hNotC : ¬ p ∣ 386887) (hNotB : ¬ p ∣ 386884),
        order_of_C_B_inv_mod_p2 386887 386884 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387210 387213 ∧ ¬ p ∣ (387213 - 387210) ∧
      ∃ (hNotC : ¬ p ∣ 387213) (hNotB : ¬ p ∣ 387210),
        order_of_C_B_inv_mod_p2 387213 387210 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387529 387532 ∧ ¬ p ∣ (387532 - 387529) ∧
      ∃ (hNotC : ¬ p ∣ 387532) (hNotB : ¬ p ∣ 387529),
        order_of_C_B_inv_mod_p2 387532 387529 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 387866 387869 ∧ ¬ p ∣ (387869 - 387866) ∧
      ∃ (hNotC : ¬ p ∣ 387869) (hNotB : ¬ p ∣ 387866),
        order_of_C_B_inv_mod_p2 387869 387866 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388209 388212 ∧ ¬ p ∣ (388212 - 388209) ∧
      ∃ (hNotC : ¬ p ∣ 388212) (hNotB : ¬ p ∣ 388209),
        order_of_C_B_inv_mod_p2 388212 388209 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388540 388543 ∧ ¬ p ∣ (388543 - 388540) ∧
      ∃ (hNotC : ¬ p ∣ 388543) (hNotB : ¬ p ∣ 388540),
        order_of_C_B_inv_mod_p2 388543 388540 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 388891 388894 ∧ ¬ p ∣ (388894 - 388891) ∧
      ∃ (hNotC : ¬ p ∣ 388894) (hNotB : ¬ p ∣ 388891),
        order_of_C_B_inv_mod_p2 388894 388891 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389250 389253 ∧ ¬ p ∣ (389253 - 389250) ∧
      ∃ (hNotC : ¬ p ∣ 389253) (hNotB : ¬ p ∣ 389250),
        order_of_C_B_inv_mod_p2 389253 389250 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389562 389565 ∧ ¬ p ∣ (389565 - 389562) ∧
      ∃ (hNotC : ¬ p ∣ 389565) (hNotB : ¬ p ∣ 389562),
        order_of_C_B_inv_mod_p2 389565 389562 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 389910 389913 ∧ ¬ p ∣ (389913 - 389910) ∧
      ∃ (hNotC : ¬ p ∣ 389913) (hNotB : ¬ p ∣ 389910),
        order_of_C_B_inv_mod_p2 389913 389910 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390245 390248 ∧ ¬ p ∣ (390248 - 390245) ∧
      ∃ (hNotC : ¬ p ∣ 390248) (hNotB : ¬ p ∣ 390245),
        order_of_C_B_inv_mod_p2 390248 390245 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390567 390570 ∧ ¬ p ∣ (390570 - 390567) ∧
      ∃ (hNotC : ¬ p ∣ 390570) (hNotB : ¬ p ∣ 390567),
        order_of_C_B_inv_mod_p2 390570 390567 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 390901 390904 ∧ ¬ p ∣ (390904 - 390901) ∧
      ∃ (hNotC : ¬ p ∣ 390904) (hNotB : ¬ p ∣ 390901),
        order_of_C_B_inv_mod_p2 390904 390901 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391226 391229 ∧ ¬ p ∣ (391229 - 391226) ∧
      ∃ (hNotC : ¬ p ∣ 391229) (hNotB : ¬ p ∣ 391226),
        order_of_C_B_inv_mod_p2 391229 391226 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391568 391571 ∧ ¬ p ∣ (391571 - 391568) ∧
      ∃ (hNotC : ¬ p ∣ 391571) (hNotB : ¬ p ∣ 391568),
        order_of_C_B_inv_mod_p2 391571 391568 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 391893 391896 ∧ ¬ p ∣ (391896 - 391893) ∧
      ∃ (hNotC : ¬ p ∣ 391896) (hNotB : ¬ p ∣ 391893),
        order_of_C_B_inv_mod_p2 391896 391893 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392220 392223 ∧ ¬ p ∣ (392223 - 392220) ∧
      ∃ (hNotC : ¬ p ∣ 392223) (hNotB : ¬ p ∣ 392220),
        order_of_C_B_inv_mod_p2 392223 392220 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392575 392578 ∧ ¬ p ∣ (392578 - 392575) ∧
      ∃ (hNotC : ¬ p ∣ 392578) (hNotB : ¬ p ∣ 392575),
        order_of_C_B_inv_mod_p2 392578 392575 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 392905 392908 ∧ ¬ p ∣ (392908 - 392905) ∧
      ∃ (hNotC : ¬ p ∣ 392908) (hNotB : ¬ p ∣ 392905),
        order_of_C_B_inv_mod_p2 392908 392905 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393245 393248 ∧ ¬ p ∣ (393248 - 393245) ∧
      ∃ (hNotC : ¬ p ∣ 393248) (hNotB : ¬ p ∣ 393245),
        order_of_C_B_inv_mod_p2 393248 393245 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393583 393586 ∧ ¬ p ∣ (393586 - 393583) ∧
      ∃ (hNotC : ¬ p ∣ 393586) (hNotB : ¬ p ∣ 393583),
        order_of_C_B_inv_mod_p2 393586 393583 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 393909 393912 ∧ ¬ p ∣ (393912 - 393909) ∧
      ∃ (hNotC : ¬ p ∣ 393912) (hNotB : ¬ p ∣ 393909),
        order_of_C_B_inv_mod_p2 393912 393909 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394258 394261 ∧ ¬ p ∣ (394261 - 394258) ∧
      ∃ (hNotC : ¬ p ∣ 394261) (hNotB : ¬ p ∣ 394258),
        order_of_C_B_inv_mod_p2 394261 394258 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394598 394601 ∧ ¬ p ∣ (394601 - 394598) ∧
      ∃ (hNotC : ¬ p ∣ 394601) (hNotB : ¬ p ∣ 394598),
        order_of_C_B_inv_mod_p2 394601 394598 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 394940 394943 ∧ ¬ p ∣ (394943 - 394940) ∧
      ∃ (hNotC : ¬ p ∣ 394943) (hNotB : ¬ p ∣ 394940),
        order_of_C_B_inv_mod_p2 394943 394940 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395267 395270 ∧ ¬ p ∣ (395270 - 395267) ∧
      ∃ (hNotC : ¬ p ∣ 395270) (hNotB : ¬ p ∣ 395267),
        order_of_C_B_inv_mod_p2 395270 395267 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395611 395614 ∧ ¬ p ∣ (395614 - 395611) ∧
      ∃ (hNotC : ¬ p ∣ 395614) (hNotB : ¬ p ∣ 395611),
        order_of_C_B_inv_mod_p2 395614 395611 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 395954 395957 ∧ ¬ p ∣ (395957 - 395954) ∧
      ∃ (hNotC : ¬ p ∣ 395957) (hNotB : ¬ p ∣ 395954),
        order_of_C_B_inv_mod_p2 395957 395954 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396276 396279 ∧ ¬ p ∣ (396279 - 396276) ∧
      ∃ (hNotC : ¬ p ∣ 396279) (hNotB : ¬ p ∣ 396276),
        order_of_C_B_inv_mod_p2 396279 396276 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396633 396636 ∧ ¬ p ∣ (396636 - 396633) ∧
      ∃ (hNotC : ¬ p ∣ 396636) (hNotB : ¬ p ∣ 396633),
        order_of_C_B_inv_mod_p2 396636 396633 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 396971 396974 ∧ ¬ p ∣ (396974 - 396971) ∧
      ∃ (hNotC : ¬ p ∣ 396974) (hNotB : ¬ p ∣ 396971),
        order_of_C_B_inv_mod_p2 396974 396971 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397328 397331 ∧ ¬ p ∣ (397331 - 397328) ∧
      ∃ (hNotC : ¬ p ∣ 397331) (hNotB : ¬ p ∣ 397328),
        order_of_C_B_inv_mod_p2 397331 397328 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397660 397663 ∧ ¬ p ∣ (397663 - 397660) ∧
      ∃ (hNotC : ¬ p ∣ 397663) (hNotB : ¬ p ∣ 397660),
        order_of_C_B_inv_mod_p2 397663 397660 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 397990 397993 ∧ ¬ p ∣ (397993 - 397990) ∧
      ∃ (hNotC : ¬ p ∣ 397993) (hNotB : ¬ p ∣ 397990),
        order_of_C_B_inv_mod_p2 397993 397990 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 398314 398317 ∧ ¬ p ∣ (398317 - 398314) ∧
      ∃ (hNotC : ¬ p ∣ 398317) (hNotB : ¬ p ∣ 398314),
        order_of_C_B_inv_mod_p2 398317 398314 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 398679 398682 ∧ ¬ p ∣ (398682 - 398679) ∧
      ∃ (hNotC : ¬ p ∣ 398682) (hNotB : ¬ p ∣ 398679),
        order_of_C_B_inv_mod_p2 398682 398679 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399003 399006 ∧ ¬ p ∣ (399006 - 399003) ∧
      ∃ (hNotC : ¬ p ∣ 399006) (hNotB : ¬ p ∣ 399003),
        order_of_C_B_inv_mod_p2 399006 399003 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399346 399349 ∧ ¬ p ∣ (399349 - 399346) ∧
      ∃ (hNotC : ¬ p ∣ 399349) (hNotB : ¬ p ∣ 399346),
        order_of_C_B_inv_mod_p2 399349 399346 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 399674 399677 ∧ ¬ p ∣ (399677 - 399674) ∧
      ∃ (hNotC : ¬ p ∣ 399677) (hNotB : ¬ p ∣ 399674),
        order_of_C_B_inv_mod_p2 399677 399674 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 400000 400003 ∧ ¬ p ∣ (400003 - 400000) ∧
      ∃ (hNotC : ¬ p ∣ 400003) (hNotB : ¬ p ∣ 400000),
        order_of_C_B_inv_mod_p2 400003 400000 p hp hNotC hNotB ≠ 13) :=
  ⟨row_300003_300006.2.1, row_300342_300345.2.1, row_300687_300690.2.1, row_301031_301034.2.1, row_301359_301362.2.1, row_301713_301716.2.1, row_302038_302041.2.1, row_302404_302407.2.1, row_302731_302734.2.1, row_303078_303081.2.1, row_303405_303408.2.1, row_303738_303741.2.1, row_304053_304056.2.1, row_304385_304388.2.1, row_304737_304740.2.1, row_305077_305080.2.1, row_305429_305432.2.1, row_305775_305778.2.1, row_306110_306113.2.1, row_306440_306443.2.1, row_306757_306760.2.1, row_307096_307099.2.1, row_307412_307415.2.1, row_307747_307750.2.1, row_308066_308069.2.1, row_308394_308397.2.1, row_308743_308746.2.1, row_309087_309090.2.1, row_309428_309431.2.1, row_309776_309779.2.1, row_310132_310135.2.1, row_310460_310463.2.1, row_310785_310788.2.1, row_311125_311128.2.1, row_311468_311471.2.1, row_311792_311795.2.1, row_312121_312124.2.1, row_312450_312453.2.1, row_312798_312801.2.1, row_313141_313144.2.1, row_313489_313492.2.1, row_313800_313803.2.1, row_314126_314129.2.1, row_314485_314488.2.1, row_314813_314816.2.1, row_315143_315146.2.1, row_315488_315491.2.1, row_315825_315828.2.1, row_316157_316160.2.1, row_316497_316500.2.1, row_316826_316829.2.1, row_317159_317162.2.1, row_317504_317507.2.1, row_317828_317831.2.1, row_318143_318146.2.1, row_318485_318488.2.1, row_318827_318830.2.1, row_319172_319175.2.1, row_319527_319530.2.1, row_319851_319854.2.1, row_320172_320175.2.1, row_320515_320518.2.1, row_320835_320838.2.1, row_321162_321165.2.1, row_321511_321514.2.1, row_321856_321859.2.1, row_322193_322196.2.1, row_322545_322548.2.1, row_322881_322884.2.1, row_323233_323236.2.1, row_323556_323559.2.1, row_323892_323895.2.1, row_324222_324225.2.1, row_324537_324540.2.1, row_324843_324846.2.1, row_325185_325188.2.1, row_325513_325516.2.1, row_325852_325855.2.1, row_326193_326196.2.1, row_326528_326531.2.1, row_326897_326900.2.1, row_327236_327239.2.1, row_327559_327562.2.1, row_327902_327905.2.1, row_328229_328232.2.1, row_328553_328556.2.1, row_328900_328903.2.1, row_329242_329245.2.1, row_329571_329574.2.1, row_329918_329921.2.1, row_330258_330261.2.1, row_330592_330595.2.1, row_330944_330947.2.1, row_331263_331266.2.1, row_331598_331601.2.1, row_331944_331947.2.1, row_332265_332268.2.1, row_332596_332599.2.1, row_332924_332927.2.1, row_333255_333258.2.1, row_333602_333605.2.1, row_333947_333950.2.1, row_334266_334269.2.1, row_334593_334596.2.1, row_334920_334923.2.1, row_335279_335282.2.1, row_335596_335599.2.1, row_335946_335949.2.1, row_336290_336293.2.1, row_336640_336643.2.1, row_336972_336975.2.1, row_337285_337288.2.1, row_337609_337612.2.1, row_337945_337948.2.1, row_338301_338304.2.1, row_338625_338628.2.1, row_338968_338971.2.1, row_339306_339309.2.1, row_339638_339641.2.1, row_339979_339982.2.1, row_340315_340318.2.1, row_340659_340662.2.1, row_340982_340985.2.1, row_341311_341314.2.1, row_341619_341622.2.1, row_341960_341963.2.1, row_342290_342293.2.1, row_342619_342622.2.1, row_342956_342959.2.1, row_343299_343302.2.1, row_343637_343640.2.1, row_343978_343981.2.1, row_344322_344325.2.1, row_344651_344654.2.1, row_344990_344993.2.1, row_345299_345302.2.1, row_345633_345636.2.1, row_345954_345957.2.1, row_346301_346304.2.1, row_346657_346660.2.1, row_346996_346999.2.1, row_347347_347350.2.1, row_347692_347695.2.1, row_348037_348040.2.1, row_348369_348372.2.1, row_348718_348721.2.1, row_349038_349041.2.1, row_349358_349361.2.1, row_349685_349688.2.1, row_350011_350014.2.1, row_350344_350347.2.1, row_350685_350688.2.1, row_351017_351020.2.1, row_351347_351350.2.1, row_351710_351713.2.1, row_352036_352039.2.1, row_352363_352366.2.1, row_352707_352710.2.1, row_353030_353033.2.1, row_353364_353367.2.1, row_353696_353699.2.1, row_354037_354040.2.1, row_354392_354395.2.1, row_354722_354725.2.1, row_355053_355056.2.1, row_355397_355400.2.1, row_355727_355730.2.1, row_356065_356068.2.1, row_356410_356413.2.1, row_356750_356753.2.1, row_357088_357091.2.1, row_357441_357444.2.1, row_357773_357776.2.1, row_358096_358099.2.1, row_358433_358436.2.1, row_358763_358766.2.1, row_359107_359110.2.1, row_359423_359426.2.1, row_359756_359759.2.1, row_360095_360098.2.1, row_360428_360431.2.1, row_360767_360770.2.1, row_361110_361113.2.1, row_361464_361467.2.1, row_361784_361787.2.1, row_362106_362109.2.1, row_362419_362422.2.1, row_362750_362753.2.1, row_363097_363100.2.1, row_363426_363429.2.1, row_363776_363779.2.1, row_364114_364117.2.1, row_364460_364463.2.1, row_364789_364792.2.1, row_365127_365130.2.1, row_365467_365470.2.1, row_365810_365813.2.1, row_366100_366103.2.1, row_366445_366448.2.1, row_366765_366768.2.1, row_367092_367095.2.1, row_367430_367433.2.1, row_367780_367783.2.1, row_368119_368122.2.1, row_368462_368465.2.1, row_368787_368790.2.1, row_369117_369120.2.1, row_369469_369472.2.1, row_369799_369802.2.1, row_370136_370139.2.1, row_370461_370464.2.1, row_370794_370797.2.1, row_371126_371129.2.1, row_371468_371471.2.1, row_371805_371808.2.1, row_372150_372153.2.1, row_372489_372492.2.1, row_372814_372817.2.1, row_373156_373159.2.1, row_373497_373500.2.1, row_373827_373830.2.1, row_374185_374188.2.1, row_374490_374493.2.1, row_374823_374826.2.1, row_375144_375147.2.1, row_375466_375469.2.1, row_375802_375805.2.1, row_376140_376143.2.1, row_376456_376459.2.1, row_376814_376817.2.1, row_377152_377155.2.1, row_377492_377495.2.1, row_377863_377866.2.1, row_378192_378195.2.1, row_378527_378530.2.1, row_378858_378861.2.1, row_379194_379197.2.1, row_379534_379537.2.1, row_379869_379872.2.1, row_380209_380212.2.1, row_380536_380539.2.1, row_380872_380875.2.1, row_381221_381224.2.1, row_381552_381555.2.1, row_381894_381897.2.1, row_382225_382228.2.1, row_382563_382566.2.1, row_382887_382890.2.1, row_383224_383227.2.1, row_383558_383561.2.1, row_383874_383877.2.1, row_384202_384205.2.1, row_384543_384546.2.1, row_384884_384887.2.1, row_385217_385220.2.1, row_385556_385559.2.1, row_385883_385886.2.1, row_386231_386234.2.1, row_386561_386564.2.1, row_386884_386887.2.1, row_387210_387213.2.1, row_387529_387532.2.1, row_387866_387869.2.1, row_388209_388212.2.1, row_388540_388543.2.1, row_388891_388894.2.1, row_389250_389253.2.1, row_389562_389565.2.1, row_389910_389913.2.1, row_390245_390248.2.1, row_390567_390570.2.1, row_390901_390904.2.1, row_391226_391229.2.1, row_391568_391571.2.1, row_391893_391896.2.1, row_392220_392223.2.1, row_392575_392578.2.1, row_392905_392908.2.1, row_393245_393248.2.1, row_393583_393586.2.1, row_393909_393912.2.1, row_394258_394261.2.1, row_394598_394601.2.1, row_394940_394943.2.1, row_395267_395270.2.1, row_395611_395614.2.1, row_395954_395957.2.1, row_396276_396279.2.1, row_396633_396636.2.1, row_396971_396974.2.1, row_397328_397331.2.1, row_397660_397663.2.1, row_397990_397993.2.1, row_398314_398317.2.1, row_398679_398682.2.1, row_399003_399006.2.1, row_399346_399349.2.1, row_399674_399677.2.1, row_400000_400003.2.1⟩
theorem S_not_fourth_300000_lt_B_le_400000_from_exp_one_table_rows :
    S_not_fourth 300003 300006 ∧
    S_not_fourth 300342 300345 ∧
    S_not_fourth 300687 300690 ∧
    S_not_fourth 301031 301034 ∧
    S_not_fourth 301359 301362 ∧
    S_not_fourth 301713 301716 ∧
    S_not_fourth 302038 302041 ∧
    S_not_fourth 302404 302407 ∧
    S_not_fourth 302731 302734 ∧
    S_not_fourth 303078 303081 ∧
    S_not_fourth 303405 303408 ∧
    S_not_fourth 303738 303741 ∧
    S_not_fourth 304053 304056 ∧
    S_not_fourth 304385 304388 ∧
    S_not_fourth 304737 304740 ∧
    S_not_fourth 305077 305080 ∧
    S_not_fourth 305429 305432 ∧
    S_not_fourth 305775 305778 ∧
    S_not_fourth 306110 306113 ∧
    S_not_fourth 306440 306443 ∧
    S_not_fourth 306757 306760 ∧
    S_not_fourth 307096 307099 ∧
    S_not_fourth 307412 307415 ∧
    S_not_fourth 307747 307750 ∧
    S_not_fourth 308066 308069 ∧
    S_not_fourth 308394 308397 ∧
    S_not_fourth 308743 308746 ∧
    S_not_fourth 309087 309090 ∧
    S_not_fourth 309428 309431 ∧
    S_not_fourth 309776 309779 ∧
    S_not_fourth 310132 310135 ∧
    S_not_fourth 310460 310463 ∧
    S_not_fourth 310785 310788 ∧
    S_not_fourth 311125 311128 ∧
    S_not_fourth 311468 311471 ∧
    S_not_fourth 311792 311795 ∧
    S_not_fourth 312121 312124 ∧
    S_not_fourth 312450 312453 ∧
    S_not_fourth 312798 312801 ∧
    S_not_fourth 313141 313144 ∧
    S_not_fourth 313489 313492 ∧
    S_not_fourth 313800 313803 ∧
    S_not_fourth 314126 314129 ∧
    S_not_fourth 314485 314488 ∧
    S_not_fourth 314813 314816 ∧
    S_not_fourth 315143 315146 ∧
    S_not_fourth 315488 315491 ∧
    S_not_fourth 315825 315828 ∧
    S_not_fourth 316157 316160 ∧
    S_not_fourth 316497 316500 ∧
    S_not_fourth 316826 316829 ∧
    S_not_fourth 317159 317162 ∧
    S_not_fourth 317504 317507 ∧
    S_not_fourth 317828 317831 ∧
    S_not_fourth 318143 318146 ∧
    S_not_fourth 318485 318488 ∧
    S_not_fourth 318827 318830 ∧
    S_not_fourth 319172 319175 ∧
    S_not_fourth 319527 319530 ∧
    S_not_fourth 319851 319854 ∧
    S_not_fourth 320172 320175 ∧
    S_not_fourth 320515 320518 ∧
    S_not_fourth 320835 320838 ∧
    S_not_fourth 321162 321165 ∧
    S_not_fourth 321511 321514 ∧
    S_not_fourth 321856 321859 ∧
    S_not_fourth 322193 322196 ∧
    S_not_fourth 322545 322548 ∧
    S_not_fourth 322881 322884 ∧
    S_not_fourth 323233 323236 ∧
    S_not_fourth 323556 323559 ∧
    S_not_fourth 323892 323895 ∧
    S_not_fourth 324222 324225 ∧
    S_not_fourth 324537 324540 ∧
    S_not_fourth 324843 324846 ∧
    S_not_fourth 325185 325188 ∧
    S_not_fourth 325513 325516 ∧
    S_not_fourth 325852 325855 ∧
    S_not_fourth 326193 326196 ∧
    S_not_fourth 326528 326531 ∧
    S_not_fourth 326897 326900 ∧
    S_not_fourth 327236 327239 ∧
    S_not_fourth 327559 327562 ∧
    S_not_fourth 327902 327905 ∧
    S_not_fourth 328229 328232 ∧
    S_not_fourth 328553 328556 ∧
    S_not_fourth 328900 328903 ∧
    S_not_fourth 329242 329245 ∧
    S_not_fourth 329571 329574 ∧
    S_not_fourth 329918 329921 ∧
    S_not_fourth 330258 330261 ∧
    S_not_fourth 330592 330595 ∧
    S_not_fourth 330944 330947 ∧
    S_not_fourth 331263 331266 ∧
    S_not_fourth 331598 331601 ∧
    S_not_fourth 331944 331947 ∧
    S_not_fourth 332265 332268 ∧
    S_not_fourth 332596 332599 ∧
    S_not_fourth 332924 332927 ∧
    S_not_fourth 333255 333258 ∧
    S_not_fourth 333602 333605 ∧
    S_not_fourth 333947 333950 ∧
    S_not_fourth 334266 334269 ∧
    S_not_fourth 334593 334596 ∧
    S_not_fourth 334920 334923 ∧
    S_not_fourth 335279 335282 ∧
    S_not_fourth 335596 335599 ∧
    S_not_fourth 335946 335949 ∧
    S_not_fourth 336290 336293 ∧
    S_not_fourth 336640 336643 ∧
    S_not_fourth 336972 336975 ∧
    S_not_fourth 337285 337288 ∧
    S_not_fourth 337609 337612 ∧
    S_not_fourth 337945 337948 ∧
    S_not_fourth 338301 338304 ∧
    S_not_fourth 338625 338628 ∧
    S_not_fourth 338968 338971 ∧
    S_not_fourth 339306 339309 ∧
    S_not_fourth 339638 339641 ∧
    S_not_fourth 339979 339982 ∧
    S_not_fourth 340315 340318 ∧
    S_not_fourth 340659 340662 ∧
    S_not_fourth 340982 340985 ∧
    S_not_fourth 341311 341314 ∧
    S_not_fourth 341619 341622 ∧
    S_not_fourth 341960 341963 ∧
    S_not_fourth 342290 342293 ∧
    S_not_fourth 342619 342622 ∧
    S_not_fourth 342956 342959 ∧
    S_not_fourth 343299 343302 ∧
    S_not_fourth 343637 343640 ∧
    S_not_fourth 343978 343981 ∧
    S_not_fourth 344322 344325 ∧
    S_not_fourth 344651 344654 ∧
    S_not_fourth 344990 344993 ∧
    S_not_fourth 345299 345302 ∧
    S_not_fourth 345633 345636 ∧
    S_not_fourth 345954 345957 ∧
    S_not_fourth 346301 346304 ∧
    S_not_fourth 346657 346660 ∧
    S_not_fourth 346996 346999 ∧
    S_not_fourth 347347 347350 ∧
    S_not_fourth 347692 347695 ∧
    S_not_fourth 348037 348040 ∧
    S_not_fourth 348369 348372 ∧
    S_not_fourth 348718 348721 ∧
    S_not_fourth 349038 349041 ∧
    S_not_fourth 349358 349361 ∧
    S_not_fourth 349685 349688 ∧
    S_not_fourth 350011 350014 ∧
    S_not_fourth 350344 350347 ∧
    S_not_fourth 350685 350688 ∧
    S_not_fourth 351017 351020 ∧
    S_not_fourth 351347 351350 ∧
    S_not_fourth 351710 351713 ∧
    S_not_fourth 352036 352039 ∧
    S_not_fourth 352363 352366 ∧
    S_not_fourth 352707 352710 ∧
    S_not_fourth 353030 353033 ∧
    S_not_fourth 353364 353367 ∧
    S_not_fourth 353696 353699 ∧
    S_not_fourth 354037 354040 ∧
    S_not_fourth 354392 354395 ∧
    S_not_fourth 354722 354725 ∧
    S_not_fourth 355053 355056 ∧
    S_not_fourth 355397 355400 ∧
    S_not_fourth 355727 355730 ∧
    S_not_fourth 356065 356068 ∧
    S_not_fourth 356410 356413 ∧
    S_not_fourth 356750 356753 ∧
    S_not_fourth 357088 357091 ∧
    S_not_fourth 357441 357444 ∧
    S_not_fourth 357773 357776 ∧
    S_not_fourth 358096 358099 ∧
    S_not_fourth 358433 358436 ∧
    S_not_fourth 358763 358766 ∧
    S_not_fourth 359107 359110 ∧
    S_not_fourth 359423 359426 ∧
    S_not_fourth 359756 359759 ∧
    S_not_fourth 360095 360098 ∧
    S_not_fourth 360428 360431 ∧
    S_not_fourth 360767 360770 ∧
    S_not_fourth 361110 361113 ∧
    S_not_fourth 361464 361467 ∧
    S_not_fourth 361784 361787 ∧
    S_not_fourth 362106 362109 ∧
    S_not_fourth 362419 362422 ∧
    S_not_fourth 362750 362753 ∧
    S_not_fourth 363097 363100 ∧
    S_not_fourth 363426 363429 ∧
    S_not_fourth 363776 363779 ∧
    S_not_fourth 364114 364117 ∧
    S_not_fourth 364460 364463 ∧
    S_not_fourth 364789 364792 ∧
    S_not_fourth 365127 365130 ∧
    S_not_fourth 365467 365470 ∧
    S_not_fourth 365810 365813 ∧
    S_not_fourth 366100 366103 ∧
    S_not_fourth 366445 366448 ∧
    S_not_fourth 366765 366768 ∧
    S_not_fourth 367092 367095 ∧
    S_not_fourth 367430 367433 ∧
    S_not_fourth 367780 367783 ∧
    S_not_fourth 368119 368122 ∧
    S_not_fourth 368462 368465 ∧
    S_not_fourth 368787 368790 ∧
    S_not_fourth 369117 369120 ∧
    S_not_fourth 369469 369472 ∧
    S_not_fourth 369799 369802 ∧
    S_not_fourth 370136 370139 ∧
    S_not_fourth 370461 370464 ∧
    S_not_fourth 370794 370797 ∧
    S_not_fourth 371126 371129 ∧
    S_not_fourth 371468 371471 ∧
    S_not_fourth 371805 371808 ∧
    S_not_fourth 372150 372153 ∧
    S_not_fourth 372489 372492 ∧
    S_not_fourth 372814 372817 ∧
    S_not_fourth 373156 373159 ∧
    S_not_fourth 373497 373500 ∧
    S_not_fourth 373827 373830 ∧
    S_not_fourth 374185 374188 ∧
    S_not_fourth 374490 374493 ∧
    S_not_fourth 374823 374826 ∧
    S_not_fourth 375144 375147 ∧
    S_not_fourth 375466 375469 ∧
    S_not_fourth 375802 375805 ∧
    S_not_fourth 376140 376143 ∧
    S_not_fourth 376456 376459 ∧
    S_not_fourth 376814 376817 ∧
    S_not_fourth 377152 377155 ∧
    S_not_fourth 377492 377495 ∧
    S_not_fourth 377863 377866 ∧
    S_not_fourth 378192 378195 ∧
    S_not_fourth 378527 378530 ∧
    S_not_fourth 378858 378861 ∧
    S_not_fourth 379194 379197 ∧
    S_not_fourth 379534 379537 ∧
    S_not_fourth 379869 379872 ∧
    S_not_fourth 380209 380212 ∧
    S_not_fourth 380536 380539 ∧
    S_not_fourth 380872 380875 ∧
    S_not_fourth 381221 381224 ∧
    S_not_fourth 381552 381555 ∧
    S_not_fourth 381894 381897 ∧
    S_not_fourth 382225 382228 ∧
    S_not_fourth 382563 382566 ∧
    S_not_fourth 382887 382890 ∧
    S_not_fourth 383224 383227 ∧
    S_not_fourth 383558 383561 ∧
    S_not_fourth 383874 383877 ∧
    S_not_fourth 384202 384205 ∧
    S_not_fourth 384543 384546 ∧
    S_not_fourth 384884 384887 ∧
    S_not_fourth 385217 385220 ∧
    S_not_fourth 385556 385559 ∧
    S_not_fourth 385883 385886 ∧
    S_not_fourth 386231 386234 ∧
    S_not_fourth 386561 386564 ∧
    S_not_fourth 386884 386887 ∧
    S_not_fourth 387210 387213 ∧
    S_not_fourth 387529 387532 ∧
    S_not_fourth 387866 387869 ∧
    S_not_fourth 388209 388212 ∧
    S_not_fourth 388540 388543 ∧
    S_not_fourth 388891 388894 ∧
    S_not_fourth 389250 389253 ∧
    S_not_fourth 389562 389565 ∧
    S_not_fourth 389910 389913 ∧
    S_not_fourth 390245 390248 ∧
    S_not_fourth 390567 390570 ∧
    S_not_fourth 390901 390904 ∧
    S_not_fourth 391226 391229 ∧
    S_not_fourth 391568 391571 ∧
    S_not_fourth 391893 391896 ∧
    S_not_fourth 392220 392223 ∧
    S_not_fourth 392575 392578 ∧
    S_not_fourth 392905 392908 ∧
    S_not_fourth 393245 393248 ∧
    S_not_fourth 393583 393586 ∧
    S_not_fourth 393909 393912 ∧
    S_not_fourth 394258 394261 ∧
    S_not_fourth 394598 394601 ∧
    S_not_fourth 394940 394943 ∧
    S_not_fourth 395267 395270 ∧
    S_not_fourth 395611 395614 ∧
    S_not_fourth 395954 395957 ∧
    S_not_fourth 396276 396279 ∧
    S_not_fourth 396633 396636 ∧
    S_not_fourth 396971 396974 ∧
    S_not_fourth 397328 397331 ∧
    S_not_fourth 397660 397663 ∧
    S_not_fourth 397990 397993 ∧
    S_not_fourth 398314 398317 ∧
    S_not_fourth 398679 398682 ∧
    S_not_fourth 399003 399006 ∧
    S_not_fourth 399346 399349 ∧
    S_not_fourth 399674 399677 ∧
    S_not_fourth 400000 400003 :=
  ⟨row_300003_300006.2.2, row_300342_300345.2.2, row_300687_300690.2.2, row_301031_301034.2.2, row_301359_301362.2.2, row_301713_301716.2.2, row_302038_302041.2.2, row_302404_302407.2.2, row_302731_302734.2.2, row_303078_303081.2.2, row_303405_303408.2.2, row_303738_303741.2.2, row_304053_304056.2.2, row_304385_304388.2.2, row_304737_304740.2.2, row_305077_305080.2.2, row_305429_305432.2.2, row_305775_305778.2.2, row_306110_306113.2.2, row_306440_306443.2.2, row_306757_306760.2.2, row_307096_307099.2.2, row_307412_307415.2.2, row_307747_307750.2.2, row_308066_308069.2.2, row_308394_308397.2.2, row_308743_308746.2.2, row_309087_309090.2.2, row_309428_309431.2.2, row_309776_309779.2.2, row_310132_310135.2.2, row_310460_310463.2.2, row_310785_310788.2.2, row_311125_311128.2.2, row_311468_311471.2.2, row_311792_311795.2.2, row_312121_312124.2.2, row_312450_312453.2.2, row_312798_312801.2.2, row_313141_313144.2.2, row_313489_313492.2.2, row_313800_313803.2.2, row_314126_314129.2.2, row_314485_314488.2.2, row_314813_314816.2.2, row_315143_315146.2.2, row_315488_315491.2.2, row_315825_315828.2.2, row_316157_316160.2.2, row_316497_316500.2.2, row_316826_316829.2.2, row_317159_317162.2.2, row_317504_317507.2.2, row_317828_317831.2.2, row_318143_318146.2.2, row_318485_318488.2.2, row_318827_318830.2.2, row_319172_319175.2.2, row_319527_319530.2.2, row_319851_319854.2.2, row_320172_320175.2.2, row_320515_320518.2.2, row_320835_320838.2.2, row_321162_321165.2.2, row_321511_321514.2.2, row_321856_321859.2.2, row_322193_322196.2.2, row_322545_322548.2.2, row_322881_322884.2.2, row_323233_323236.2.2, row_323556_323559.2.2, row_323892_323895.2.2, row_324222_324225.2.2, row_324537_324540.2.2, row_324843_324846.2.2, row_325185_325188.2.2, row_325513_325516.2.2, row_325852_325855.2.2, row_326193_326196.2.2, row_326528_326531.2.2, row_326897_326900.2.2, row_327236_327239.2.2, row_327559_327562.2.2, row_327902_327905.2.2, row_328229_328232.2.2, row_328553_328556.2.2, row_328900_328903.2.2, row_329242_329245.2.2, row_329571_329574.2.2, row_329918_329921.2.2, row_330258_330261.2.2, row_330592_330595.2.2, row_330944_330947.2.2, row_331263_331266.2.2, row_331598_331601.2.2, row_331944_331947.2.2, row_332265_332268.2.2, row_332596_332599.2.2, row_332924_332927.2.2, row_333255_333258.2.2, row_333602_333605.2.2, row_333947_333950.2.2, row_334266_334269.2.2, row_334593_334596.2.2, row_334920_334923.2.2, row_335279_335282.2.2, row_335596_335599.2.2, row_335946_335949.2.2, row_336290_336293.2.2, row_336640_336643.2.2, row_336972_336975.2.2, row_337285_337288.2.2, row_337609_337612.2.2, row_337945_337948.2.2, row_338301_338304.2.2, row_338625_338628.2.2, row_338968_338971.2.2, row_339306_339309.2.2, row_339638_339641.2.2, row_339979_339982.2.2, row_340315_340318.2.2, row_340659_340662.2.2, row_340982_340985.2.2, row_341311_341314.2.2, row_341619_341622.2.2, row_341960_341963.2.2, row_342290_342293.2.2, row_342619_342622.2.2, row_342956_342959.2.2, row_343299_343302.2.2, row_343637_343640.2.2, row_343978_343981.2.2, row_344322_344325.2.2, row_344651_344654.2.2, row_344990_344993.2.2, row_345299_345302.2.2, row_345633_345636.2.2, row_345954_345957.2.2, row_346301_346304.2.2, row_346657_346660.2.2, row_346996_346999.2.2, row_347347_347350.2.2, row_347692_347695.2.2, row_348037_348040.2.2, row_348369_348372.2.2, row_348718_348721.2.2, row_349038_349041.2.2, row_349358_349361.2.2, row_349685_349688.2.2, row_350011_350014.2.2, row_350344_350347.2.2, row_350685_350688.2.2, row_351017_351020.2.2, row_351347_351350.2.2, row_351710_351713.2.2, row_352036_352039.2.2, row_352363_352366.2.2, row_352707_352710.2.2, row_353030_353033.2.2, row_353364_353367.2.2, row_353696_353699.2.2, row_354037_354040.2.2, row_354392_354395.2.2, row_354722_354725.2.2, row_355053_355056.2.2, row_355397_355400.2.2, row_355727_355730.2.2, row_356065_356068.2.2, row_356410_356413.2.2, row_356750_356753.2.2, row_357088_357091.2.2, row_357441_357444.2.2, row_357773_357776.2.2, row_358096_358099.2.2, row_358433_358436.2.2, row_358763_358766.2.2, row_359107_359110.2.2, row_359423_359426.2.2, row_359756_359759.2.2, row_360095_360098.2.2, row_360428_360431.2.2, row_360767_360770.2.2, row_361110_361113.2.2, row_361464_361467.2.2, row_361784_361787.2.2, row_362106_362109.2.2, row_362419_362422.2.2, row_362750_362753.2.2, row_363097_363100.2.2, row_363426_363429.2.2, row_363776_363779.2.2, row_364114_364117.2.2, row_364460_364463.2.2, row_364789_364792.2.2, row_365127_365130.2.2, row_365467_365470.2.2, row_365810_365813.2.2, row_366100_366103.2.2, row_366445_366448.2.2, row_366765_366768.2.2, row_367092_367095.2.2, row_367430_367433.2.2, row_367780_367783.2.2, row_368119_368122.2.2, row_368462_368465.2.2, row_368787_368790.2.2, row_369117_369120.2.2, row_369469_369472.2.2, row_369799_369802.2.2, row_370136_370139.2.2, row_370461_370464.2.2, row_370794_370797.2.2, row_371126_371129.2.2, row_371468_371471.2.2, row_371805_371808.2.2, row_372150_372153.2.2, row_372489_372492.2.2, row_372814_372817.2.2, row_373156_373159.2.2, row_373497_373500.2.2, row_373827_373830.2.2, row_374185_374188.2.2, row_374490_374493.2.2, row_374823_374826.2.2, row_375144_375147.2.2, row_375466_375469.2.2, row_375802_375805.2.2, row_376140_376143.2.2, row_376456_376459.2.2, row_376814_376817.2.2, row_377152_377155.2.2, row_377492_377495.2.2, row_377863_377866.2.2, row_378192_378195.2.2, row_378527_378530.2.2, row_378858_378861.2.2, row_379194_379197.2.2, row_379534_379537.2.2, row_379869_379872.2.2, row_380209_380212.2.2, row_380536_380539.2.2, row_380872_380875.2.2, row_381221_381224.2.2, row_381552_381555.2.2, row_381894_381897.2.2, row_382225_382228.2.2, row_382563_382566.2.2, row_382887_382890.2.2, row_383224_383227.2.2, row_383558_383561.2.2, row_383874_383877.2.2, row_384202_384205.2.2, row_384543_384546.2.2, row_384884_384887.2.2, row_385217_385220.2.2, row_385556_385559.2.2, row_385883_385886.2.2, row_386231_386234.2.2, row_386561_386564.2.2, row_386884_386887.2.2, row_387210_387213.2.2, row_387529_387532.2.2, row_387866_387869.2.2, row_388209_388212.2.2, row_388540_388543.2.2, row_388891_388894.2.2, row_389250_389253.2.2, row_389562_389565.2.2, row_389910_389913.2.2, row_390245_390248.2.2, row_390567_390570.2.2, row_390901_390904.2.2, row_391226_391229.2.2, row_391568_391571.2.2, row_391893_391896.2.2, row_392220_392223.2.2, row_392575_392578.2.2, row_392905_392908.2.2, row_393245_393248.2.2, row_393583_393586.2.2, row_393909_393912.2.2, row_394258_394261.2.2, row_394598_394601.2.2, row_394940_394943.2.2, row_395267_395270.2.2, row_395611_395614.2.2, row_395954_395957.2.2, row_396276_396279.2.2, row_396633_396636.2.2, row_396971_396974.2.2, row_397328_397331.2.2, row_397660_397663.2.2, row_397990_397993.2.2, row_398314_398317.2.2, row_398679_398682.2.2, row_399003_399006.2.2, row_399346_399349.2.2, row_399674_399677.2.2, row_400000_400003.2.2⟩
def S_has_prime_with_exp_one_B_le_400000_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_has_prime_with_exp_one_B_le_300000_table_rows
    S_has_prime_with_exp_one_300000_lt_B_le_400000_table_rows

def exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows
    exists_p_with_order_ne_13_300000_lt_B_le_400000_from_exp_one_table_rows

def S_not_fourth_B_le_400000_from_exp_one_table_rows :=
  And.intro BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_not_fourth_B_le_300000_from_exp_one_table_rows
    S_not_fourth_300000_lt_B_le_400000_from_exp_one_table_rows

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Inhabited.  Displayed coefficient misses plus
displayed `S₂(Γ₀(2))` dimension `0`.  Not Ribet. -/
def level_lowering_26_to_2_from_no_match :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.level_lowering_26_to_2_from_no_match

/-- Inhabited.  Coefficient check, not residual iso. -/
def s2_26_displayed_newforms_miss_frey_traces :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.s2_26_displayed_newforms_miss_frey_traces

/-- Uninhabited.  Ljunggren-type; named rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  Named rows are not every `B ≤ 400000`.
`B > 400000` needs Bugeaud–Corvaja–Zannier. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 300000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_300000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.bugeaud_P_phi13_gt_C_when_B_gt_300000

/-- Uninhabited.  Squarefull + `B > 300000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_300000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_300000

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 400000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_400000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 400000 < B →
    C < P_phi13 B C

/-- Uninhabited.  Squarefull + `B > 400000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_400000 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C → 400000 < B →
    IsSquarefull (S_val B C) →
    Nat.sqrt (13 * C ^ 12) < rad (S_val B C)

/-- Uninhabited.  Kraus matching at `q = 13`, level 26.
Even-`A` `13 ∣ A` close.  Coefficient misses plus
displayed `S₂(Γ₀(2)) = 0` are not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.kraus_elimination_q_13_level_26

/-- Uninhabited.  Missing Mathlib Ribet arrow `26 → 2`. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.ribet_26_to_2_from_displayed_miss

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

#check S_val
#check S_bounds
#check HasPrimeWithExpOne
#check S_not_fourth
#check S_has_prime_with_exp_one_B_le_400000_table_rows
#check exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows
#check S_not_fourth_B_le_400000_from_exp_one_table_rows
#check row_300003_300006
#check row_400000_400003
#check kraus_elimination_q_13_level_26
#check bugeaud_P_phi13_gt_C_when_B_gt_400000
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#check level_lowering_26_to_2_from_no_match
#check s2_26_displayed_newforms_miss_frey_traces
#print axioms S_has_prime_with_exp_one_B_le_400000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_400000_from_exp_one_table_rows
#print axioms row_300003_300006
#print axioms row_400000_400003
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299
