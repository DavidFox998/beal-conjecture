/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.47.0 — B = 200000 outlier
p = 12186951011 (not a forall).

Closes the gap-3 pair (200000, 200003)
that has no prime p <= 547 dividing S.
Least prime factor is 12186951011.
Pratt: p-1 = 2 * 5 * 13 * 29 * 47 * 109 * 631
and 2 has order p-1 in (Z/pZ)^x
(64-step binary modPow; p < 2^64).

S mod p = 0 and S mod p^2 != 0 via
(C : ZMod p)^13 = (B : ZMod p)^13 and
(C : ZMod q)^13 != (B : ZMod q)^13 with
numeral q = p * p = 148521774944513922121,
so p does not divide the gap, p^2 does
not divide S, order != 13, S_not_fourth.

Together with the 600 named Step41 rows
this is 601 named rows with B <= 200000,
C = B+3.  Still not every B <= 200000.

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
ExistsNewformLevel2 stays 0 != 0.
B > 200000 Bugeaud stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal forall.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension
import BealLevel26Foundations.Beal.FullProof.TWPrimesPratt
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.List.Prime
import Mathlib.Data.List.Dedup
import Mathlib.Tactic

set_option maxHeartbeats 8000000
set_option maxRecDepth 10000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_bounds)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2 S_not_fourth S_not_fourth_of_order_ne_13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
  (HasPrimeWithExpOne exists_p_with_order_ne_13_of_has_exp_one IsSquarefull)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
  (has_exp_one_of_zmod p_dvd_S_val_of_pow13_eq not_p_sq_dvd_S_val_of_pow13_ne)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (rad)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound
  (P_phi13)
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

/-! ## 64-step Pratt (p = 12186951011 > 2³²) -/

def modPow64 (a e m : Nat) : Nat :=
  if m ≤ 1 then 0 else (modPow.run m 64 (a % m, e, 1)).2.2

theorem modPow64_zmod {m : Nat} [NeZero m] (hm : 1 < m) (a e : Nat)
    (he : e < 2 ^ 64) :
    (modPow64 a e m : ZMod m) = (a : ZMod m) ^ e := by
  unfold modPow64
  rw [if_neg (not_le.mpr hm), modPow.run_zmod, zmod_natCast_mod]
  have : e % 2 ^ 64 = e := Nat.mod_eq_of_lt he
  rw [this, Nat.cast_one, one_mul]

theorem modPow64_lt {a e m : Nat} (hm : 1 < m) : modPow64 a e m < m := by
  unfold modPow64
  rw [if_neg (not_le.mpr hm)]
  exact modPow.run_lt hm 64 (a % m) e 1 hm

theorem prime_of_pratt64 {n a : Nat} (qs : List Nat)
    (hn : 1 < n) (hn64 : n < 2 ^ 64) (ha : Nat.Coprime a n)
    (hprod : qs.prod = n - 1)
    (hqs : ∀ q ∈ qs, Nat.Prime q)
    (hpow : modPow64 a (n - 1) n = 1)
    (hne : ∀ q ∈ qs.dedup, modPow64 a ((n - 1) / q) n ≠ 1) :
    Nat.Prime n := by
  haveI : NeZero n := ⟨(Nat.zero_lt_of_lt hn).ne'⟩
  haveI : Fact (1 < n) := ⟨hn⟩
  haveI : Fintype (ZMod n) := inferInstance
  haveI : DecidableEq (ZMod n) := inferInstance
  haveI : Fintype (ZMod n)ˣ := inferInstance
  have he64 : n - 1 < 2 ^ 64 := lt_of_le_of_lt (Nat.sub_le n 1) hn64
  let u : (ZMod n)ˣ := ZMod.unitOfCoprime a ha
  have hord : orderOf u = n - 1 := by
    refine orderOf_eq_of_pow_and_pow_div_prime (Nat.sub_pos_of_lt hn) ?_ ?_
    · apply Units.ext
      rw [Units.val_pow_eq_pow_val, Units.val_one, ZMod.coe_unitOfCoprime]
      have hz := modPow64_zmod hn a (n - 1) he64
      rw [hpow, Nat.cast_one] at hz
      exact hz.symm
    · intro p hp hpdiv
      have hp' : Prime (p : Nat) := Nat.prime_iff.mp hp
      have hmem : p ∈ qs := by
        have hdiv' : p ∣ qs.prod := by
          rw [hprod]; exact hpdiv
        refine mem_list_primes_of_dvd_prod hp' ?_ hdiv'
        intro q hq
        exact Nat.prime_iff.mp (hqs q hq)
      have hmemd : p ∈ qs.dedup := List.mem_dedup.mpr hmem
      have hnpow : modPow64 a ((n - 1) / p) n ≠ 1 := hne p hmemd
      intro hu
      apply hnpow
      have hcoe : (u : ZMod n) ^ ((n - 1) / p) = 1 := by
        rw [← Units.val_pow_eq_pow_val, hu, Units.val_one]
      have hdiv64 : (n - 1) / p < 2 ^ 64 :=
        lt_of_le_of_lt (Nat.div_le_self _ _) he64
      rw [ZMod.coe_unitOfCoprime, ← modPow64_zmod hn a ((n - 1) / p) hdiv64] at hcoe
      have hlt := modPow64_lt (a := a) (e := (n - 1) / p) hn
      have hval := ZMod.val_natCast_of_lt hlt
      have hone : (1 : ZMod n).val = 1 := ZMod.val_one n
      calc
        modPow64 a ((n - 1) / p) n
            = (modPow64 a ((n - 1) / p) n : ZMod n).val := hval.symm
        _ = (1 : ZMod n).val := congrArg ZMod.val hcoe
        _ = 1 := hone
  have hcard : Fintype.card (ZMod n)ˣ = n - 1 := by
    have hdiv := orderOf_dvd_card (x := u)
    rw [hord] at hdiv
    have hle := Nat.card_units_zmod_lt_sub_one hn
    have hpos : 0 < Fintype.card (ZMod n)ˣ := Fintype.card_pos
    exact le_antisymm hle (Nat.le_of_dvd hpos hdiv)
  exact (Nat.prime_iff_card_units n).2 hcard

/-! ## Pratt certificate for 12186951011 -/

def prime_12186951011_qs : List Nat := [2, 5, 13, 29, 47, 109, 631]

theorem prime_12186951011_gt_one : 1 < 12186951011 := by decide
theorem prime_12186951011_lt_2pow64 : 12186951011 < 2 ^ 64 := by decide
theorem prime_12186951011_coprime : Nat.Coprime 2 12186951011 := by decide
theorem prime_12186951011_prod :
    prime_12186951011_qs.prod = 12186951010 := by decide
theorem prime_12186951011_primes :
    ∀ q ∈ prime_12186951011_qs, Nat.Prime q := by decide
theorem prime_12186951011_pow :
    modPow64 2 12186951010 12186951011 = 1 := by decide
theorem prime_12186951011_ne :
    ∀ q ∈ prime_12186951011_qs.dedup,
      modPow64 2 (12186951010 / q) 12186951011 ≠ 1 := by decide

theorem prime_12186951011 : Nat.Prime 12186951011 :=
  prime_of_pratt64 (n := 12186951011) (a := 2) prime_12186951011_qs
    prime_12186951011_gt_one prime_12186951011_lt_2pow64
    prime_12186951011_coprime prime_12186951011_prod
    prime_12186951011_primes prime_12186951011_pow prime_12186951011_ne

theorem sq_12186951011 :
    (148521774944513922121 : Nat) = 12186951011 * 12186951011 := by
  decide

theorem ne_13_12186951011 : 12186951011 ≠ 13 := by decide

/-! ## Outlier row (200000, 200003) -/

theorem row_200000_200003 :
    HasPrimeWithExpOne (S_val 200000 200003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200000 200003 ∧ ¬ p ∣ (200003 - 200000) ∧
      ∃ (hNotC : ¬ p ∣ 200003) (hNotB : ¬ p ∣ 200000),
        order_of_C_B_inv_mod_p2 200003 200000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 200000 200003 := by
  have hlt : (200000 : Nat) < 200003 := by decide
  have hcop : ¬ 12186951011 ∣ (200003 - 200000) := by decide
  have heq : (200003 : ZMod 12186951011) ^ 13 =
      (200000 : ZMod 12186951011) ^ 13 := by decide
  have hne : (200003 : ZMod 148521774944513922121) ^ 13 ≠
      (200000 : ZMod 148521774944513922121) ^ 13 := by decide
  have hC : ¬ 12186951011 ∣ 200003 := by decide
  have hB : ¬ 12186951011 ∣ 200000 := by decide
  have hexp :=
    has_exp_one_of_zmod 200000 200003 12186951011 148521774944513922121
      hlt prime_12186951011 sq_12186951011 hcop heq hne
  have hdvd :=
    p_dvd_S_val_of_pow13_eq 200000 200003 12186951011 hlt
      prime_12186951011 hcop heq
  have hnsq :=
    not_p_sq_dvd_S_val_of_pow13_ne 200000 200003 12186951011
      148521774944513922121 hlt sq_12186951011 hne
  have hord :=
    exists_p_with_order_ne_13_of_has_exp_one
      200000 200003 12186951011 prime_12186951011 ne_13_12186951011
      hlt hC hB hdvd hcop hnsq
  have hfourth :=
    S_not_fourth_of_order_ne_13
      200000 200003 12186951011 prime_12186951011 hdvd hcop
      ne_13_12186951011 hlt hC hB hord
  exact ⟨hexp, ⟨12186951011, prime_12186951011, hdvd, hcop, hC, hB, hord⟩,
    hfourth⟩

/-! ## Inherited Step41 rows (600 wrappers) -/
def row_1_4 :
    HasPrimeWithExpOne (S_val 1 4) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1 4 ∧ ¬ p ∣ (4 - 1) ∧
      ∃ (hNotC : ¬ p ∣ 4) (hNotB : ¬ p ∣ 1),
        order_of_C_B_inv_mod_p2 4 1 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1 4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_1_4
def row_196_199 :
    HasPrimeWithExpOne (S_val 196 199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196 199 ∧ ¬ p ∣ (199 - 196) ∧
      ∃ (hNotC : ¬ p ∣ 199) (hNotB : ¬ p ∣ 196),
        order_of_C_B_inv_mod_p2 199 196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196 199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_196_199
def row_386_389 :
    HasPrimeWithExpOne (S_val 386 389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 386 389 ∧ ¬ p ∣ (389 - 386) ∧
      ∃ (hNotC : ¬ p ∣ 389) (hNotB : ¬ p ∣ 386),
        order_of_C_B_inv_mod_p2 389 386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 386 389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_386_389
def row_587_590 :
    HasPrimeWithExpOne (S_val 587 590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 587 590 ∧ ¬ p ∣ (590 - 587) ∧
      ∃ (hNotC : ¬ p ∣ 590) (hNotB : ¬ p ∣ 587),
        order_of_C_B_inv_mod_p2 590 587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 587 590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_587_590
def row_1171_1174 :
    HasPrimeWithExpOne (S_val 1171 1174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1171 1174 ∧ ¬ p ∣ (1174 - 1171) ∧
      ∃ (hNotC : ¬ p ∣ 1174) (hNotB : ¬ p ∣ 1171),
        order_of_C_B_inv_mod_p2 1174 1171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1171 1174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_1171_1174
def row_1366_1369 :
    HasPrimeWithExpOne (S_val 1366 1369) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1366 1369 ∧ ¬ p ∣ (1369 - 1366) ∧
      ∃ (hNotC : ¬ p ∣ 1369) (hNotB : ¬ p ∣ 1366),
        order_of_C_B_inv_mod_p2 1369 1366 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1366 1369 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_1366_1369
def row_1559_1562 :
    HasPrimeWithExpOne (S_val 1559 1562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1559 1562 ∧ ¬ p ∣ (1562 - 1559) ∧
      ∃ (hNotC : ¬ p ∣ 1562) (hNotB : ¬ p ∣ 1559),
        order_of_C_B_inv_mod_p2 1562 1559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1559 1562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_1559_1562
def row_1756_1759 :
    HasPrimeWithExpOne (S_val 1756 1759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 1756 1759 ∧ ¬ p ∣ (1759 - 1756) ∧
      ∃ (hNotC : ¬ p ∣ 1759) (hNotB : ¬ p ∣ 1756),
        order_of_C_B_inv_mod_p2 1759 1756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 1756 1759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_1756_1759
def row_2146_2149 :
    HasPrimeWithExpOne (S_val 2146 2149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2146 2149 ∧ ¬ p ∣ (2149 - 2146) ∧
      ∃ (hNotC : ¬ p ∣ 2149) (hNotB : ¬ p ∣ 2146),
        order_of_C_B_inv_mod_p2 2149 2146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2146 2149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_2146_2149
def row_2536_2539 :
    HasPrimeWithExpOne (S_val 2536 2539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2536 2539 ∧ ¬ p ∣ (2539 - 2536) ∧
      ∃ (hNotC : ¬ p ∣ 2539) (hNotB : ¬ p ∣ 2536),
        order_of_C_B_inv_mod_p2 2539 2536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2536 2539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_2536_2539
def row_2731_2734 :
    HasPrimeWithExpOne (S_val 2731 2734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 2731 2734 ∧ ¬ p ∣ (2734 - 2731) ∧
      ∃ (hNotC : ¬ p ∣ 2734) (hNotB : ¬ p ∣ 2731),
        order_of_C_B_inv_mod_p2 2734 2731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 2731 2734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_2731_2734
def row_3313_3316 :
    HasPrimeWithExpOne (S_val 3313 3316) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3313 3316 ∧ ¬ p ∣ (3316 - 3313) ∧
      ∃ (hNotC : ¬ p ∣ 3316) (hNotB : ¬ p ∣ 3313),
        order_of_C_B_inv_mod_p2 3316 3313 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3313 3316 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_3313_3316
def row_3511_3514 :
    HasPrimeWithExpOne (S_val 3511 3514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3511 3514 ∧ ¬ p ∣ (3514 - 3511) ∧
      ∃ (hNotC : ¬ p ∣ 3514) (hNotB : ¬ p ∣ 3511),
        order_of_C_B_inv_mod_p2 3514 3511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3511 3514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_3511_3514
def row_3706_3709 :
    HasPrimeWithExpOne (S_val 3706 3709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3706 3709 ∧ ¬ p ∣ (3709 - 3706) ∧
      ∃ (hNotC : ¬ p ∣ 3709) (hNotB : ¬ p ∣ 3706),
        order_of_C_B_inv_mod_p2 3709 3706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3706 3709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_3706_3709
def row_3901_3904 :
    HasPrimeWithExpOne (S_val 3901 3904) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 3901 3904 ∧ ¬ p ∣ (3904 - 3901) ∧
      ∃ (hNotC : ¬ p ∣ 3904) (hNotB : ¬ p ∣ 3901),
        order_of_C_B_inv_mod_p2 3904 3901 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 3901 3904 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_3901_3904
def row_4682_4685 :
    HasPrimeWithExpOne (S_val 4682 4685) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4682 4685 ∧ ¬ p ∣ (4685 - 4682) ∧
      ∃ (hNotC : ¬ p ∣ 4685) (hNotB : ¬ p ∣ 4682),
        order_of_C_B_inv_mod_p2 4685 4682 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4682 4685 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_4682_4685
def row_4876_4879 :
    HasPrimeWithExpOne (S_val 4876 4879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 4876 4879 ∧ ¬ p ∣ (4879 - 4876) ∧
      ∃ (hNotC : ¬ p ∣ 4879) (hNotB : ¬ p ∣ 4876),
        order_of_C_B_inv_mod_p2 4879 4876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 4876 4879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_4876_4879
def row_5071_5074 :
    HasPrimeWithExpOne (S_val 5071 5074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5071 5074 ∧ ¬ p ∣ (5074 - 5071) ∧
      ∃ (hNotC : ¬ p ∣ 5074) (hNotB : ¬ p ∣ 5071),
        order_of_C_B_inv_mod_p2 5074 5071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5071 5074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_5071_5074
def row_5461_5464 :
    HasPrimeWithExpOne (S_val 5461 5464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5461 5464 ∧ ¬ p ∣ (5464 - 5461) ∧
      ∃ (hNotC : ¬ p ∣ 5464) (hNotB : ¬ p ∣ 5461),
        order_of_C_B_inv_mod_p2 5464 5461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5461 5464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_5461_5464
def row_5849_5852 :
    HasPrimeWithExpOne (S_val 5849 5852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 5849 5852 ∧ ¬ p ∣ (5852 - 5849) ∧
      ∃ (hNotC : ¬ p ∣ 5852) (hNotB : ¬ p ∣ 5849),
        order_of_C_B_inv_mod_p2 5852 5849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 5849 5852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_5849_5852
def row_6046_6049 :
    HasPrimeWithExpOne (S_val 6046 6049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6046 6049 ∧ ¬ p ∣ (6049 - 6046) ∧
      ∃ (hNotC : ¬ p ∣ 6049) (hNotB : ¬ p ∣ 6046),
        order_of_C_B_inv_mod_p2 6049 6046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6046 6049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_6046_6049
def row_6241_6244 :
    HasPrimeWithExpOne (S_val 6241 6244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6241 6244 ∧ ¬ p ∣ (6244 - 6241) ∧
      ∃ (hNotC : ¬ p ∣ 6244) (hNotB : ¬ p ∣ 6241),
        order_of_C_B_inv_mod_p2 6244 6241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6241 6244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_6241_6244
def row_6631_6634 :
    HasPrimeWithExpOne (S_val 6631 6634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 6631 6634 ∧ ¬ p ∣ (6634 - 6631) ∧
      ∃ (hNotC : ¬ p ∣ 6634) (hNotB : ¬ p ∣ 6631),
        order_of_C_B_inv_mod_p2 6634 6631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 6631 6634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_6631_6634
def row_7411_7414 :
    HasPrimeWithExpOne (S_val 7411 7414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7411 7414 ∧ ¬ p ∣ (7414 - 7411) ∧
      ∃ (hNotC : ¬ p ∣ 7414) (hNotB : ¬ p ∣ 7411),
        order_of_C_B_inv_mod_p2 7414 7411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7411 7414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_7411_7414
def row_7606_7609 :
    HasPrimeWithExpOne (S_val 7606 7609) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7606 7609 ∧ ¬ p ∣ (7609 - 7606) ∧
      ∃ (hNotC : ¬ p ∣ 7609) (hNotB : ¬ p ∣ 7606),
        order_of_C_B_inv_mod_p2 7609 7606 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7606 7609 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_7606_7609
def row_7801_7804 :
    HasPrimeWithExpOne (S_val 7801 7804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7801 7804 ∧ ¬ p ∣ (7804 - 7801) ∧
      ∃ (hNotC : ¬ p ∣ 7804) (hNotB : ¬ p ∣ 7801),
        order_of_C_B_inv_mod_p2 7804 7801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7801 7804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_7801_7804
def row_7997_8000 :
    HasPrimeWithExpOne (S_val 7997 8000) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 7997 8000 ∧ ¬ p ∣ (8000 - 7997) ∧
      ∃ (hNotC : ¬ p ∣ 8000) (hNotB : ¬ p ∣ 7997),
        order_of_C_B_inv_mod_p2 8000 7997 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 7997 8000 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_7997_8000
def row_8194_8197 :
    HasPrimeWithExpOne (S_val 8194 8197) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8194 8197 ∧ ¬ p ∣ (8197 - 8194) ∧
      ∃ (hNotC : ¬ p ∣ 8197) (hNotB : ¬ p ∣ 8194),
        order_of_C_B_inv_mod_p2 8197 8194 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8194 8197 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_8194_8197
def row_8582_8585 :
    HasPrimeWithExpOne (S_val 8582 8585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 8582 8585 ∧ ¬ p ∣ (8585 - 8582) ∧
      ∃ (hNotC : ¬ p ∣ 8585) (hNotB : ¬ p ∣ 8582),
        order_of_C_B_inv_mod_p2 8585 8582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 8582 8585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_8582_8585
def row_9163_9166 :
    HasPrimeWithExpOne (S_val 9163 9166) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9163 9166 ∧ ¬ p ∣ (9166 - 9163) ∧
      ∃ (hNotC : ¬ p ∣ 9166) (hNotB : ¬ p ∣ 9163),
        order_of_C_B_inv_mod_p2 9166 9163 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9163 9166 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_9163_9166
def row_9361_9364 :
    HasPrimeWithExpOne (S_val 9361 9364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9361 9364 ∧ ¬ p ∣ (9364 - 9361) ∧
      ∃ (hNotC : ¬ p ∣ 9364) (hNotB : ¬ p ∣ 9361),
        order_of_C_B_inv_mod_p2 9364 9361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9361 9364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_9361_9364
def row_9751_9754 :
    HasPrimeWithExpOne (S_val 9751 9754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 9751 9754 ∧ ¬ p ∣ (9754 - 9751) ∧
      ∃ (hNotC : ¬ p ∣ 9754) (hNotB : ¬ p ∣ 9751),
        order_of_C_B_inv_mod_p2 9754 9751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 9751 9754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_9751_9754
def row_10000_10003 :
    HasPrimeWithExpOne (S_val 10000 10003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10000 10003 ∧ ¬ p ∣ (10003 - 10000) ∧
      ∃ (hNotC : ¬ p ∣ 10003) (hNotB : ¬ p ∣ 10000),
        order_of_C_B_inv_mod_p2 10003 10000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10000 10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_10000_10003
def row_10141_10144 :
    HasPrimeWithExpOne (S_val 10141 10144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10141 10144 ∧ ¬ p ∣ (10144 - 10141) ∧
      ∃ (hNotC : ¬ p ∣ 10144) (hNotB : ¬ p ∣ 10141),
        order_of_C_B_inv_mod_p2 10144 10141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10141 10144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_10141_10144
def row_10531_10534 :
    HasPrimeWithExpOne (S_val 10531 10534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10531 10534 ∧ ¬ p ∣ (10534 - 10531) ∧
      ∃ (hNotC : ¬ p ∣ 10534) (hNotB : ¬ p ∣ 10531),
        order_of_C_B_inv_mod_p2 10534 10531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10531 10534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_10531_10534
def row_10726_10729 :
    HasPrimeWithExpOne (S_val 10726 10729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 10726 10729 ∧ ¬ p ∣ (10729 - 10726) ∧
      ∃ (hNotC : ¬ p ∣ 10729) (hNotB : ¬ p ∣ 10726),
        order_of_C_B_inv_mod_p2 10729 10726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 10726 10729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_10726_10729
def row_11311_11314 :
    HasPrimeWithExpOne (S_val 11311 11314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11311 11314 ∧ ¬ p ∣ (11314 - 11311) ∧
      ∃ (hNotC : ¬ p ∣ 11314) (hNotB : ¬ p ∣ 11311),
        order_of_C_B_inv_mod_p2 11314 11311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11311 11314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_11311_11314
def row_11506_11509 :
    HasPrimeWithExpOne (S_val 11506 11509) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11506 11509 ∧ ¬ p ∣ (11509 - 11506) ∧
      ∃ (hNotC : ¬ p ∣ 11509) (hNotB : ¬ p ∣ 11506),
        order_of_C_B_inv_mod_p2 11509 11506 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11506 11509 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_11506_11509
def row_11896_11899 :
    HasPrimeWithExpOne (S_val 11896 11899) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 11896 11899 ∧ ¬ p ∣ (11899 - 11896) ∧
      ∃ (hNotC : ¬ p ∣ 11899) (hNotB : ¬ p ∣ 11896),
        order_of_C_B_inv_mod_p2 11899 11896 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 11896 11899 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_11896_11899
def row_12091_12094 :
    HasPrimeWithExpOne (S_val 12091 12094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12091 12094 ∧ ¬ p ∣ (12094 - 12091) ∧
      ∃ (hNotC : ¬ p ∣ 12094) (hNotB : ¬ p ∣ 12091),
        order_of_C_B_inv_mod_p2 12094 12091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12091 12094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_12091_12094
def row_12871_12874 :
    HasPrimeWithExpOne (S_val 12871 12874) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 12871 12874 ∧ ¬ p ∣ (12874 - 12871) ∧
      ∃ (hNotC : ¬ p ∣ 12874) (hNotB : ¬ p ∣ 12871),
        order_of_C_B_inv_mod_p2 12874 12871 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 12871 12874 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_12871_12874
def row_13066_13069 :
    HasPrimeWithExpOne (S_val 13066 13069) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13066 13069 ∧ ¬ p ∣ (13069 - 13066) ∧
      ∃ (hNotC : ¬ p ∣ 13069) (hNotB : ¬ p ∣ 13066),
        order_of_C_B_inv_mod_p2 13069 13066 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13066 13069 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_13066_13069
def row_13258_13261 :
    HasPrimeWithExpOne (S_val 13258 13261) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13258 13261 ∧ ¬ p ∣ (13261 - 13258) ∧
      ∃ (hNotC : ¬ p ∣ 13261) (hNotB : ¬ p ∣ 13258),
        order_of_C_B_inv_mod_p2 13261 13258 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13258 13261 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_13258_13261
def row_13457_13460 :
    HasPrimeWithExpOne (S_val 13457 13460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13457 13460 ∧ ¬ p ∣ (13460 - 13457) ∧
      ∃ (hNotC : ¬ p ∣ 13460) (hNotB : ¬ p ∣ 13457),
        order_of_C_B_inv_mod_p2 13460 13457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13457 13460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_13457_13460
def row_13651_13654 :
    HasPrimeWithExpOne (S_val 13651 13654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13651 13654 ∧ ¬ p ∣ (13654 - 13651) ∧
      ∃ (hNotC : ¬ p ∣ 13654) (hNotB : ¬ p ∣ 13651),
        order_of_C_B_inv_mod_p2 13654 13651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13651 13654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_13651_13654
def row_13846_13849 :
    HasPrimeWithExpOne (S_val 13846 13849) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 13846 13849 ∧ ¬ p ∣ (13849 - 13846) ∧
      ∃ (hNotC : ¬ p ∣ 13849) (hNotB : ¬ p ∣ 13846),
        order_of_C_B_inv_mod_p2 13849 13846 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 13846 13849 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_13846_13849
def row_14041_14044 :
    HasPrimeWithExpOne (S_val 14041 14044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14041 14044 ∧ ¬ p ∣ (14044 - 14041) ∧
      ∃ (hNotC : ¬ p ∣ 14044) (hNotB : ¬ p ∣ 14041),
        order_of_C_B_inv_mod_p2 14044 14041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14041 14044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_14041_14044
def row_14236_14239 :
    HasPrimeWithExpOne (S_val 14236 14239) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14236 14239 ∧ ¬ p ∣ (14239 - 14236) ∧
      ∃ (hNotC : ¬ p ∣ 14239) (hNotB : ¬ p ∣ 14236),
        order_of_C_B_inv_mod_p2 14239 14236 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14236 14239 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_14236_14239
def row_14431_14434 :
    HasPrimeWithExpOne (S_val 14431 14434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14431 14434 ∧ ¬ p ∣ (14434 - 14431) ∧
      ∃ (hNotC : ¬ p ∣ 14434) (hNotB : ¬ p ∣ 14431),
        order_of_C_B_inv_mod_p2 14434 14431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14431 14434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_14431_14434
def row_14626_14629 :
    HasPrimeWithExpOne (S_val 14626 14629) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14626 14629 ∧ ¬ p ∣ (14629 - 14626) ∧
      ∃ (hNotC : ¬ p ∣ 14629) (hNotB : ¬ p ∣ 14626),
        order_of_C_B_inv_mod_p2 14629 14626 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14626 14629 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_14626_14629
def row_14821_14824 :
    HasPrimeWithExpOne (S_val 14821 14824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 14821 14824 ∧ ¬ p ∣ (14824 - 14821) ∧
      ∃ (hNotC : ¬ p ∣ 14824) (hNotB : ¬ p ∣ 14821),
        order_of_C_B_inv_mod_p2 14824 14821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 14821 14824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_14821_14824
def row_15016_15019 :
    HasPrimeWithExpOne (S_val 15016 15019) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15016 15019 ∧ ¬ p ∣ (15019 - 15016) ∧
      ∃ (hNotC : ¬ p ∣ 15019) (hNotB : ¬ p ∣ 15016),
        order_of_C_B_inv_mod_p2 15019 15016 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15016 15019 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_15016_15019
def row_15211_15214 :
    HasPrimeWithExpOne (S_val 15211 15214) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15211 15214 ∧ ¬ p ∣ (15214 - 15211) ∧
      ∃ (hNotC : ¬ p ∣ 15214) (hNotB : ¬ p ∣ 15211),
        order_of_C_B_inv_mod_p2 15214 15211 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15211 15214 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_15211_15214
def row_15406_15409 :
    HasPrimeWithExpOne (S_val 15406 15409) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15406 15409 ∧ ¬ p ∣ (15409 - 15406) ∧
      ∃ (hNotC : ¬ p ∣ 15409) (hNotB : ¬ p ∣ 15406),
        order_of_C_B_inv_mod_p2 15409 15406 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15406 15409 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_15406_15409
def row_15991_15994 :
    HasPrimeWithExpOne (S_val 15991 15994) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 15991 15994 ∧ ¬ p ∣ (15994 - 15991) ∧
      ∃ (hNotC : ¬ p ∣ 15994) (hNotB : ¬ p ∣ 15991),
        order_of_C_B_inv_mod_p2 15994 15991 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 15991 15994 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_15991_15994
def row_16186_16189 :
    HasPrimeWithExpOne (S_val 16186 16189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16186 16189 ∧ ¬ p ∣ (16189 - 16186) ∧
      ∃ (hNotC : ¬ p ∣ 16189) (hNotB : ¬ p ∣ 16186),
        order_of_C_B_inv_mod_p2 16189 16186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16186 16189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_16186_16189
def row_16381_16384 :
    HasPrimeWithExpOne (S_val 16381 16384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16381 16384 ∧ ¬ p ∣ (16384 - 16381) ∧
      ∃ (hNotC : ¬ p ∣ 16384) (hNotB : ¬ p ∣ 16381),
        order_of_C_B_inv_mod_p2 16384 16381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16381 16384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_16381_16384
def row_16576_16579 :
    HasPrimeWithExpOne (S_val 16576 16579) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16576 16579 ∧ ¬ p ∣ (16579 - 16576) ∧
      ∃ (hNotC : ¬ p ∣ 16579) (hNotB : ¬ p ∣ 16576),
        order_of_C_B_inv_mod_p2 16579 16576 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16576 16579 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_16576_16579
def row_16771_16774 :
    HasPrimeWithExpOne (S_val 16771 16774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16771 16774 ∧ ¬ p ∣ (16774 - 16771) ∧
      ∃ (hNotC : ¬ p ∣ 16774) (hNotB : ¬ p ∣ 16771),
        order_of_C_B_inv_mod_p2 16774 16771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16771 16774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_16771_16774
def row_16966_16969 :
    HasPrimeWithExpOne (S_val 16966 16969) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 16966 16969 ∧ ¬ p ∣ (16969 - 16966) ∧
      ∃ (hNotC : ¬ p ∣ 16969) (hNotB : ¬ p ∣ 16966),
        order_of_C_B_inv_mod_p2 16969 16966 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 16966 16969 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_16966_16969
def row_17161_17164 :
    HasPrimeWithExpOne (S_val 17161 17164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17161 17164 ∧ ¬ p ∣ (17164 - 17161) ∧
      ∃ (hNotC : ¬ p ∣ 17164) (hNotB : ¬ p ∣ 17161),
        order_of_C_B_inv_mod_p2 17164 17161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17161 17164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_17161_17164
def row_17354_17357 :
    HasPrimeWithExpOne (S_val 17354 17357) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17354 17357 ∧ ¬ p ∣ (17357 - 17354) ∧
      ∃ (hNotC : ¬ p ∣ 17357) (hNotB : ¬ p ∣ 17354),
        order_of_C_B_inv_mod_p2 17357 17354 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17354 17357 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_17354_17357
def row_17551_17554 :
    HasPrimeWithExpOne (S_val 17551 17554) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17551 17554 ∧ ¬ p ∣ (17554 - 17551) ∧
      ∃ (hNotC : ¬ p ∣ 17554) (hNotB : ¬ p ∣ 17551),
        order_of_C_B_inv_mod_p2 17554 17551 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17551 17554 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_17551_17554
def row_17746_17749 :
    HasPrimeWithExpOne (S_val 17746 17749) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17746 17749 ∧ ¬ p ∣ (17749 - 17746) ∧
      ∃ (hNotC : ¬ p ∣ 17749) (hNotB : ¬ p ∣ 17746),
        order_of_C_B_inv_mod_p2 17749 17746 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17746 17749 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_17746_17749
def row_17938_17941 :
    HasPrimeWithExpOne (S_val 17938 17941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 17938 17941 ∧ ¬ p ∣ (17941 - 17938) ∧
      ∃ (hNotC : ¬ p ∣ 17941) (hNotB : ¬ p ∣ 17938),
        order_of_C_B_inv_mod_p2 17941 17938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 17938 17941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_17938_17941
def row_18136_18139 :
    HasPrimeWithExpOne (S_val 18136 18139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18136 18139 ∧ ¬ p ∣ (18139 - 18136) ∧
      ∃ (hNotC : ¬ p ∣ 18139) (hNotB : ¬ p ∣ 18136),
        order_of_C_B_inv_mod_p2 18139 18136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18136 18139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_18136_18139
def row_18331_18334 :
    HasPrimeWithExpOne (S_val 18331 18334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18331 18334 ∧ ¬ p ∣ (18334 - 18331) ∧
      ∃ (hNotC : ¬ p ∣ 18334) (hNotB : ¬ p ∣ 18331),
        order_of_C_B_inv_mod_p2 18334 18331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18331 18334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_18331_18334
def row_18526_18529 :
    HasPrimeWithExpOne (S_val 18526 18529) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18526 18529 ∧ ¬ p ∣ (18529 - 18526) ∧
      ∃ (hNotC : ¬ p ∣ 18529) (hNotB : ¬ p ∣ 18526),
        order_of_C_B_inv_mod_p2 18529 18526 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18526 18529 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_18526_18529
def row_18721_18724 :
    HasPrimeWithExpOne (S_val 18721 18724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 18721 18724 ∧ ¬ p ∣ (18724 - 18721) ∧
      ∃ (hNotC : ¬ p ∣ 18724) (hNotB : ¬ p ∣ 18721),
        order_of_C_B_inv_mod_p2 18724 18721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 18721 18724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_18721_18724
def row_19310_19313 :
    HasPrimeWithExpOne (S_val 19310 19313) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19310 19313 ∧ ¬ p ∣ (19313 - 19310) ∧
      ∃ (hNotC : ¬ p ∣ 19313) (hNotB : ¬ p ∣ 19310),
        order_of_C_B_inv_mod_p2 19313 19310 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19310 19313 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_19310_19313
def row_19501_19504 :
    HasPrimeWithExpOne (S_val 19501 19504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19501 19504 ∧ ¬ p ∣ (19504 - 19501) ∧
      ∃ (hNotC : ¬ p ∣ 19504) (hNotB : ¬ p ∣ 19501),
        order_of_C_B_inv_mod_p2 19504 19501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19501 19504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_19501_19504
def row_19694_19697 :
    HasPrimeWithExpOne (S_val 19694 19697) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19694 19697 ∧ ¬ p ∣ (19697 - 19694) ∧
      ∃ (hNotC : ¬ p ∣ 19697) (hNotB : ¬ p ∣ 19694),
        order_of_C_B_inv_mod_p2 19697 19694 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19694 19697 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_19694_19697
def row_19891_19894 :
    HasPrimeWithExpOne (S_val 19891 19894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 19891 19894 ∧ ¬ p ∣ (19894 - 19891) ∧
      ∃ (hNotC : ¬ p ∣ 19894) (hNotB : ¬ p ∣ 19891),
        order_of_C_B_inv_mod_p2 19894 19891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 19891 19894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_19891_19894
def row_20086_20089 :
    HasPrimeWithExpOne (S_val 20086 20089) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20086 20089 ∧ ¬ p ∣ (20089 - 20086) ∧
      ∃ (hNotC : ¬ p ∣ 20089) (hNotB : ¬ p ∣ 20086),
        order_of_C_B_inv_mod_p2 20089 20086 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20086 20089 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_20086_20089
def row_20281_20284 :
    HasPrimeWithExpOne (S_val 20281 20284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20281 20284 ∧ ¬ p ∣ (20284 - 20281) ∧
      ∃ (hNotC : ¬ p ∣ 20284) (hNotB : ¬ p ∣ 20281),
        order_of_C_B_inv_mod_p2 20284 20281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20281 20284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_20281_20284
def row_20476_20479 :
    HasPrimeWithExpOne (S_val 20476 20479) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20476 20479 ∧ ¬ p ∣ (20479 - 20476) ∧
      ∃ (hNotC : ¬ p ∣ 20479) (hNotB : ¬ p ∣ 20476),
        order_of_C_B_inv_mod_p2 20479 20476 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20476 20479 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_20476_20479
def row_20671_20674 :
    HasPrimeWithExpOne (S_val 20671 20674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20671 20674 ∧ ¬ p ∣ (20674 - 20671) ∧
      ∃ (hNotC : ¬ p ∣ 20674) (hNotB : ¬ p ∣ 20671),
        order_of_C_B_inv_mod_p2 20674 20671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20671 20674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_20671_20674
def row_20866_20869 :
    HasPrimeWithExpOne (S_val 20866 20869) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 20866 20869 ∧ ¬ p ∣ (20869 - 20866) ∧
      ∃ (hNotC : ¬ p ∣ 20869) (hNotB : ¬ p ∣ 20866),
        order_of_C_B_inv_mod_p2 20869 20866 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 20866 20869 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_20866_20869
def row_21061_21064 :
    HasPrimeWithExpOne (S_val 21061 21064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21061 21064 ∧ ¬ p ∣ (21064 - 21061) ∧
      ∃ (hNotC : ¬ p ∣ 21064) (hNotB : ¬ p ∣ 21061),
        order_of_C_B_inv_mod_p2 21064 21061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21061 21064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_21061_21064
def row_21256_21259 :
    HasPrimeWithExpOne (S_val 21256 21259) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21256 21259 ∧ ¬ p ∣ (21259 - 21256) ∧
      ∃ (hNotC : ¬ p ∣ 21259) (hNotB : ¬ p ∣ 21256),
        order_of_C_B_inv_mod_p2 21259 21256 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21256 21259 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_21256_21259
def row_21451_21454 :
    HasPrimeWithExpOne (S_val 21451 21454) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21451 21454 ∧ ¬ p ∣ (21454 - 21451) ∧
      ∃ (hNotC : ¬ p ∣ 21454) (hNotB : ¬ p ∣ 21451),
        order_of_C_B_inv_mod_p2 21454 21451 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21451 21454 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_21451_21454
def row_21841_21844 :
    HasPrimeWithExpOne (S_val 21841 21844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 21841 21844 ∧ ¬ p ∣ (21844 - 21841) ∧
      ∃ (hNotC : ¬ p ∣ 21844) (hNotB : ¬ p ∣ 21841),
        order_of_C_B_inv_mod_p2 21844 21841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 21841 21844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_21841_21844
def row_22229_22232 :
    HasPrimeWithExpOne (S_val 22229 22232) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22229 22232 ∧ ¬ p ∣ (22232 - 22229) ∧
      ∃ (hNotC : ¬ p ∣ 22232) (hNotB : ¬ p ∣ 22229),
        order_of_C_B_inv_mod_p2 22232 22229 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22229 22232 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_22229_22232
def row_22621_22624 :
    HasPrimeWithExpOne (S_val 22621 22624) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22621 22624 ∧ ¬ p ∣ (22624 - 22621) ∧
      ∃ (hNotC : ¬ p ∣ 22624) (hNotB : ¬ p ∣ 22621),
        order_of_C_B_inv_mod_p2 22624 22621 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22621 22624 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_22621_22624
def row_22814_22817 :
    HasPrimeWithExpOne (S_val 22814 22817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 22814 22817 ∧ ¬ p ∣ (22817 - 22814) ∧
      ∃ (hNotC : ¬ p ∣ 22817) (hNotB : ¬ p ∣ 22814),
        order_of_C_B_inv_mod_p2 22817 22814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 22814 22817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_22814_22817
def row_23206_23209 :
    HasPrimeWithExpOne (S_val 23206 23209) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23206 23209 ∧ ¬ p ∣ (23209 - 23206) ∧
      ∃ (hNotC : ¬ p ∣ 23209) (hNotB : ¬ p ∣ 23206),
        order_of_C_B_inv_mod_p2 23209 23206 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23206 23209 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_23206_23209
def row_23791_23794 :
    HasPrimeWithExpOne (S_val 23791 23794) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 23791 23794 ∧ ¬ p ∣ (23794 - 23791) ∧
      ∃ (hNotC : ¬ p ∣ 23794) (hNotB : ¬ p ∣ 23791),
        order_of_C_B_inv_mod_p2 23794 23791 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 23791 23794 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_23791_23794
def row_24181_24184 :
    HasPrimeWithExpOne (S_val 24181 24184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24181 24184 ∧ ¬ p ∣ (24184 - 24181) ∧
      ∃ (hNotC : ¬ p ∣ 24184) (hNotB : ¬ p ∣ 24181),
        order_of_C_B_inv_mod_p2 24184 24181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24181 24184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_24181_24184
def row_24374_24377 :
    HasPrimeWithExpOne (S_val 24374 24377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24374 24377 ∧ ¬ p ∣ (24377 - 24374) ∧
      ∃ (hNotC : ¬ p ∣ 24377) (hNotB : ¬ p ∣ 24374),
        order_of_C_B_inv_mod_p2 24377 24374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24374 24377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_24374_24377
def row_24571_24574 :
    HasPrimeWithExpOne (S_val 24571 24574) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24571 24574 ∧ ¬ p ∣ (24574 - 24571) ∧
      ∃ (hNotC : ¬ p ∣ 24574) (hNotB : ¬ p ∣ 24571),
        order_of_C_B_inv_mod_p2 24574 24571 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24571 24574 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_24571_24574
def row_24764_24767 :
    HasPrimeWithExpOne (S_val 24764 24767) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 24764 24767 ∧ ¬ p ∣ (24767 - 24764) ∧
      ∃ (hNotC : ¬ p ∣ 24767) (hNotB : ¬ p ∣ 24764),
        order_of_C_B_inv_mod_p2 24767 24764 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 24764 24767 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_24764_24767
def row_25156_25159 :
    HasPrimeWithExpOne (S_val 25156 25159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25156 25159 ∧ ¬ p ∣ (25159 - 25156) ∧
      ∃ (hNotC : ¬ p ∣ 25159) (hNotB : ¬ p ∣ 25156),
        order_of_C_B_inv_mod_p2 25159 25156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25156 25159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_25156_25159
def row_25351_25354 :
    HasPrimeWithExpOne (S_val 25351 25354) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 25351 25354 ∧ ¬ p ∣ (25354 - 25351) ∧
      ∃ (hNotC : ¬ p ∣ 25354) (hNotB : ¬ p ∣ 25351),
        order_of_C_B_inv_mod_p2 25354 25351 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 25351 25354 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_25351_25354
def row_26132_26135 :
    HasPrimeWithExpOne (S_val 26132 26135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26132 26135 ∧ ¬ p ∣ (26135 - 26132) ∧
      ∃ (hNotC : ¬ p ∣ 26135) (hNotB : ¬ p ∣ 26132),
        order_of_C_B_inv_mod_p2 26135 26132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26132 26135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_26132_26135
def row_26326_26329 :
    HasPrimeWithExpOne (S_val 26326 26329) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26326 26329 ∧ ¬ p ∣ (26329 - 26326) ∧
      ∃ (hNotC : ¬ p ∣ 26329) (hNotB : ¬ p ∣ 26326),
        order_of_C_B_inv_mod_p2 26329 26326 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26326 26329 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_26326_26329
def row_26716_26719 :
    HasPrimeWithExpOne (S_val 26716 26719) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26716 26719 ∧ ¬ p ∣ (26719 - 26716) ∧
      ∃ (hNotC : ¬ p ∣ 26719) (hNotB : ¬ p ∣ 26716),
        order_of_C_B_inv_mod_p2 26719 26716 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26716 26719 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_26716_26719
def row_26911_26914 :
    HasPrimeWithExpOne (S_val 26911 26914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 26911 26914 ∧ ¬ p ∣ (26914 - 26911) ∧
      ∃ (hNotC : ¬ p ∣ 26914) (hNotB : ¬ p ∣ 26911),
        order_of_C_B_inv_mod_p2 26914 26911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 26911 26914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_26911_26914
def row_27301_27304 :
    HasPrimeWithExpOne (S_val 27301 27304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27301 27304 ∧ ¬ p ∣ (27304 - 27301) ∧
      ∃ (hNotC : ¬ p ∣ 27304) (hNotB : ¬ p ∣ 27301),
        order_of_C_B_inv_mod_p2 27304 27301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27301 27304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_27301_27304
def row_27496_27499 :
    HasPrimeWithExpOne (S_val 27496 27499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27496 27499 ∧ ¬ p ∣ (27499 - 27496) ∧
      ∃ (hNotC : ¬ p ∣ 27499) (hNotB : ¬ p ∣ 27496),
        order_of_C_B_inv_mod_p2 27499 27496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27496 27499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_27496_27499
def row_27692_27695 :
    HasPrimeWithExpOne (S_val 27692 27695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 27692 27695 ∧ ¬ p ∣ (27695 - 27692) ∧
      ∃ (hNotC : ¬ p ∣ 27695) (hNotB : ¬ p ∣ 27692),
        order_of_C_B_inv_mod_p2 27695 27692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 27692 27695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_27692_27695
def row_28081_28084 :
    HasPrimeWithExpOne (S_val 28081 28084) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28081 28084 ∧ ¬ p ∣ (28084 - 28081) ∧
      ∃ (hNotC : ¬ p ∣ 28084) (hNotB : ¬ p ∣ 28081),
        order_of_C_B_inv_mod_p2 28084 28081 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28081 28084 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_28081_28084
def row_28280_28283 :
    HasPrimeWithExpOne (S_val 28280 28283) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28280 28283 ∧ ¬ p ∣ (28283 - 28280) ∧
      ∃ (hNotC : ¬ p ∣ 28283) (hNotB : ¬ p ∣ 28280),
        order_of_C_B_inv_mod_p2 28283 28280 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28280 28283 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_28280_28283
def row_28471_28474 :
    HasPrimeWithExpOne (S_val 28471 28474) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28471 28474 ∧ ¬ p ∣ (28474 - 28471) ∧
      ∃ (hNotC : ¬ p ∣ 28474) (hNotB : ¬ p ∣ 28471),
        order_of_C_B_inv_mod_p2 28474 28471 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28471 28474 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_28471_28474
def row_28666_28669 :
    HasPrimeWithExpOne (S_val 28666 28669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 28666 28669 ∧ ¬ p ∣ (28669 - 28666) ∧
      ∃ (hNotC : ¬ p ∣ 28669) (hNotB : ¬ p ∣ 28666),
        order_of_C_B_inv_mod_p2 28669 28666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 28666 28669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_28666_28669
def row_29056_29059 :
    HasPrimeWithExpOne (S_val 29056 29059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29056 29059 ∧ ¬ p ∣ (29059 - 29056) ∧
      ∃ (hNotC : ¬ p ∣ 29059) (hNotB : ¬ p ∣ 29056),
        order_of_C_B_inv_mod_p2 29059 29056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29056 29059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_29056_29059
def row_29251_29254 :
    HasPrimeWithExpOne (S_val 29251 29254) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29251 29254 ∧ ¬ p ∣ (29254 - 29251) ∧
      ∃ (hNotC : ¬ p ∣ 29254) (hNotB : ¬ p ∣ 29251),
        order_of_C_B_inv_mod_p2 29254 29251 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29251 29254 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_29251_29254
def row_29446_29449 :
    HasPrimeWithExpOne (S_val 29446 29449) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29446 29449 ∧ ¬ p ∣ (29449 - 29446) ∧
      ∃ (hNotC : ¬ p ∣ 29449) (hNotB : ¬ p ∣ 29446),
        order_of_C_B_inv_mod_p2 29449 29446 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29446 29449 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_29446_29449
def row_29641_29644 :
    HasPrimeWithExpOne (S_val 29641 29644) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29641 29644 ∧ ¬ p ∣ (29644 - 29641) ∧
      ∃ (hNotC : ¬ p ∣ 29644) (hNotB : ¬ p ∣ 29641),
        order_of_C_B_inv_mod_p2 29644 29641 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29641 29644 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_29641_29644
def row_29836_29839 :
    HasPrimeWithExpOne (S_val 29836 29839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 29836 29839 ∧ ¬ p ∣ (29839 - 29836) ∧
      ∃ (hNotC : ¬ p ∣ 29839) (hNotB : ¬ p ∣ 29836),
        order_of_C_B_inv_mod_p2 29839 29836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 29836 29839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_29836_29839
def row_30031_30034 :
    HasPrimeWithExpOne (S_val 30031 30034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30031 30034 ∧ ¬ p ∣ (30034 - 30031) ∧
      ∃ (hNotC : ¬ p ∣ 30034) (hNotB : ¬ p ∣ 30031),
        order_of_C_B_inv_mod_p2 30034 30031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30031 30034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_30031_30034
def row_30223_30226 :
    HasPrimeWithExpOne (S_val 30223 30226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30223 30226 ∧ ¬ p ∣ (30226 - 30223) ∧
      ∃ (hNotC : ¬ p ∣ 30226) (hNotB : ¬ p ∣ 30223),
        order_of_C_B_inv_mod_p2 30226 30223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30223 30226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_30223_30226
def row_30421_30424 :
    HasPrimeWithExpOne (S_val 30421 30424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30421 30424 ∧ ¬ p ∣ (30424 - 30421) ∧
      ∃ (hNotC : ¬ p ∣ 30424) (hNotB : ¬ p ∣ 30421),
        order_of_C_B_inv_mod_p2 30424 30421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30421 30424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_30421_30424
def row_30617_30620 :
    HasPrimeWithExpOne (S_val 30617 30620) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30617 30620 ∧ ¬ p ∣ (30620 - 30617) ∧
      ∃ (hNotC : ¬ p ∣ 30620) (hNotB : ¬ p ∣ 30617),
        order_of_C_B_inv_mod_p2 30620 30617 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30617 30620 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_30617_30620
def row_30811_30814 :
    HasPrimeWithExpOne (S_val 30811 30814) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 30811 30814 ∧ ¬ p ∣ (30814 - 30811) ∧
      ∃ (hNotC : ¬ p ∣ 30814) (hNotB : ¬ p ∣ 30811),
        order_of_C_B_inv_mod_p2 30814 30811 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 30811 30814 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_30811_30814
def row_31006_31009 :
    HasPrimeWithExpOne (S_val 31006 31009) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31006 31009 ∧ ¬ p ∣ (31009 - 31006) ∧
      ∃ (hNotC : ¬ p ∣ 31009) (hNotB : ¬ p ∣ 31006),
        order_of_C_B_inv_mod_p2 31009 31006 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31006 31009 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_31006_31009
def row_31201_31204 :
    HasPrimeWithExpOne (S_val 31201 31204) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31201 31204 ∧ ¬ p ∣ (31204 - 31201) ∧
      ∃ (hNotC : ¬ p ∣ 31204) (hNotB : ¬ p ∣ 31201),
        order_of_C_B_inv_mod_p2 31204 31201 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31201 31204 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_31201_31204
def row_31591_31594 :
    HasPrimeWithExpOne (S_val 31591 31594) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31591 31594 ∧ ¬ p ∣ (31594 - 31591) ∧
      ∃ (hNotC : ¬ p ∣ 31594) (hNotB : ¬ p ∣ 31591),
        order_of_C_B_inv_mod_p2 31594 31591 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31591 31594 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_31591_31594
def row_31979_31982 :
    HasPrimeWithExpOne (S_val 31979 31982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 31979 31982 ∧ ¬ p ∣ (31982 - 31979) ∧
      ∃ (hNotC : ¬ p ∣ 31982) (hNotB : ¬ p ∣ 31979),
        order_of_C_B_inv_mod_p2 31982 31979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 31979 31982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_31979_31982
def row_32176_32179 :
    HasPrimeWithExpOne (S_val 32176 32179) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32176 32179 ∧ ¬ p ∣ (32179 - 32176) ∧
      ∃ (hNotC : ¬ p ∣ 32179) (hNotB : ¬ p ∣ 32176),
        order_of_C_B_inv_mod_p2 32179 32176 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32176 32179 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_32176_32179
def row_32371_32374 :
    HasPrimeWithExpOne (S_val 32371 32374) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32371 32374 ∧ ¬ p ∣ (32374 - 32371) ∧
      ∃ (hNotC : ¬ p ∣ 32374) (hNotB : ¬ p ∣ 32371),
        order_of_C_B_inv_mod_p2 32374 32371 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32371 32374 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_32371_32374
def row_32566_32569 :
    HasPrimeWithExpOne (S_val 32566 32569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32566 32569 ∧ ¬ p ∣ (32569 - 32566) ∧
      ∃ (hNotC : ¬ p ∣ 32569) (hNotB : ¬ p ∣ 32566),
        order_of_C_B_inv_mod_p2 32569 32566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32566 32569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_32566_32569
def row_32956_32959 :
    HasPrimeWithExpOne (S_val 32956 32959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 32956 32959 ∧ ¬ p ∣ (32959 - 32956) ∧
      ∃ (hNotC : ¬ p ∣ 32959) (hNotB : ¬ p ∣ 32956),
        order_of_C_B_inv_mod_p2 32959 32956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 32956 32959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_32956_32959
def row_33152_33155 :
    HasPrimeWithExpOne (S_val 33152 33155) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33152 33155 ∧ ¬ p ∣ (33155 - 33152) ∧
      ∃ (hNotC : ¬ p ∣ 33155) (hNotB : ¬ p ∣ 33152),
        order_of_C_B_inv_mod_p2 33155 33152 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33152 33155 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_33152_33155
def row_33541_33544 :
    HasPrimeWithExpOne (S_val 33541 33544) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33541 33544 ∧ ¬ p ∣ (33544 - 33541) ∧
      ∃ (hNotC : ¬ p ∣ 33544) (hNotB : ¬ p ∣ 33541),
        order_of_C_B_inv_mod_p2 33544 33541 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33541 33544 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_33541_33544
def row_33736_33739 :
    HasPrimeWithExpOne (S_val 33736 33739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 33736 33739 ∧ ¬ p ∣ (33739 - 33736) ∧
      ∃ (hNotC : ¬ p ∣ 33739) (hNotB : ¬ p ∣ 33736),
        order_of_C_B_inv_mod_p2 33739 33736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 33736 33739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_33736_33739
def row_34124_34127 :
    HasPrimeWithExpOne (S_val 34124 34127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34124 34127 ∧ ¬ p ∣ (34127 - 34124) ∧
      ∃ (hNotC : ¬ p ∣ 34127) (hNotB : ¬ p ∣ 34124),
        order_of_C_B_inv_mod_p2 34127 34124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34124 34127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_34124_34127
def row_34516_34519 :
    HasPrimeWithExpOne (S_val 34516 34519) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34516 34519 ∧ ¬ p ∣ (34519 - 34516) ∧
      ∃ (hNotC : ¬ p ∣ 34519) (hNotB : ¬ p ∣ 34516),
        order_of_C_B_inv_mod_p2 34519 34516 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34516 34519 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_34516_34519
def row_34708_34711 :
    HasPrimeWithExpOne (S_val 34708 34711) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34708 34711 ∧ ¬ p ∣ (34711 - 34708) ∧
      ∃ (hNotC : ¬ p ∣ 34711) (hNotB : ¬ p ∣ 34708),
        order_of_C_B_inv_mod_p2 34711 34708 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34708 34711 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_34708_34711
def row_34906_34909 :
    HasPrimeWithExpOne (S_val 34906 34909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 34906 34909 ∧ ¬ p ∣ (34909 - 34906) ∧
      ∃ (hNotC : ¬ p ∣ 34909) (hNotB : ¬ p ∣ 34906),
        order_of_C_B_inv_mod_p2 34909 34906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 34906 34909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_34906_34909
def row_35296_35299 :
    HasPrimeWithExpOne (S_val 35296 35299) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35296 35299 ∧ ¬ p ∣ (35299 - 35296) ∧
      ∃ (hNotC : ¬ p ∣ 35299) (hNotB : ¬ p ∣ 35296),
        order_of_C_B_inv_mod_p2 35299 35296 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35296 35299 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_35296_35299
def row_35489_35492 :
    HasPrimeWithExpOne (S_val 35489 35492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35489 35492 ∧ ¬ p ∣ (35492 - 35489) ∧
      ∃ (hNotC : ¬ p ∣ 35492) (hNotB : ¬ p ∣ 35489),
        order_of_C_B_inv_mod_p2 35492 35489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35489 35492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_35489_35492
def row_35686_35689 :
    HasPrimeWithExpOne (S_val 35686 35689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 35686 35689 ∧ ¬ p ∣ (35689 - 35686) ∧
      ∃ (hNotC : ¬ p ∣ 35689) (hNotB : ¬ p ∣ 35686),
        order_of_C_B_inv_mod_p2 35689 35686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 35686 35689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_35686_35689
def row_36077_36080 :
    HasPrimeWithExpOne (S_val 36077 36080) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36077 36080 ∧ ¬ p ∣ (36080 - 36077) ∧
      ∃ (hNotC : ¬ p ∣ 36080) (hNotB : ¬ p ∣ 36077),
        order_of_C_B_inv_mod_p2 36080 36077 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36077 36080 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_36077_36080
def row_36272_36275 :
    HasPrimeWithExpOne (S_val 36272 36275) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36272 36275 ∧ ¬ p ∣ (36275 - 36272) ∧
      ∃ (hNotC : ¬ p ∣ 36275) (hNotB : ¬ p ∣ 36272),
        order_of_C_B_inv_mod_p2 36275 36272 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36272 36275 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_36272_36275
def row_36856_36859 :
    HasPrimeWithExpOne (S_val 36856 36859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 36856 36859 ∧ ¬ p ∣ (36859 - 36856) ∧
      ∃ (hNotC : ¬ p ∣ 36859) (hNotB : ¬ p ∣ 36856),
        order_of_C_B_inv_mod_p2 36859 36856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 36856 36859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_36856_36859
def row_37051_37054 :
    HasPrimeWithExpOne (S_val 37051 37054) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37051 37054 ∧ ¬ p ∣ (37054 - 37051) ∧
      ∃ (hNotC : ¬ p ∣ 37054) (hNotB : ¬ p ∣ 37051),
        order_of_C_B_inv_mod_p2 37054 37051 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37051 37054 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_37051_37054
def row_37246_37249 :
    HasPrimeWithExpOne (S_val 37246 37249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37246 37249 ∧ ¬ p ∣ (37249 - 37246) ∧
      ∃ (hNotC : ¬ p ∣ 37249) (hNotB : ¬ p ∣ 37246),
        order_of_C_B_inv_mod_p2 37249 37246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37246 37249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_37246_37249
def row_37441_37444 :
    HasPrimeWithExpOne (S_val 37441 37444) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37441 37444 ∧ ¬ p ∣ (37444 - 37441) ∧
      ∃ (hNotC : ¬ p ∣ 37444) (hNotB : ¬ p ∣ 37441),
        order_of_C_B_inv_mod_p2 37444 37441 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37441 37444 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_37441_37444
def row_37636_37639 :
    HasPrimeWithExpOne (S_val 37636 37639) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 37636 37639 ∧ ¬ p ∣ (37639 - 37636) ∧
      ∃ (hNotC : ¬ p ∣ 37639) (hNotB : ¬ p ∣ 37636),
        order_of_C_B_inv_mod_p2 37639 37636 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 37636 37639 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_37636_37639
def row_38027_38030 :
    HasPrimeWithExpOne (S_val 38027 38030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38027 38030 ∧ ¬ p ∣ (38030 - 38027) ∧
      ∃ (hNotC : ¬ p ∣ 38030) (hNotB : ¬ p ∣ 38027),
        order_of_C_B_inv_mod_p2 38030 38027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38027 38030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_38027_38030
def row_38221_38224 :
    HasPrimeWithExpOne (S_val 38221 38224) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38221 38224 ∧ ¬ p ∣ (38224 - 38221) ∧
      ∃ (hNotC : ¬ p ∣ 38224) (hNotB : ¬ p ∣ 38221),
        order_of_C_B_inv_mod_p2 38224 38221 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38221 38224 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_38221_38224
def row_38416_38419 :
    HasPrimeWithExpOne (S_val 38416 38419) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38416 38419 ∧ ¬ p ∣ (38419 - 38416) ∧
      ∃ (hNotC : ¬ p ∣ 38419) (hNotB : ¬ p ∣ 38416),
        order_of_C_B_inv_mod_p2 38419 38416 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38416 38419 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_38416_38419
def row_38611_38614 :
    HasPrimeWithExpOne (S_val 38611 38614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38611 38614 ∧ ¬ p ∣ (38614 - 38611) ∧
      ∃ (hNotC : ¬ p ∣ 38614) (hNotB : ¬ p ∣ 38611),
        order_of_C_B_inv_mod_p2 38614 38611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38611 38614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_38611_38614
def row_38806_38809 :
    HasPrimeWithExpOne (S_val 38806 38809) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 38806 38809 ∧ ¬ p ∣ (38809 - 38806) ∧
      ∃ (hNotC : ¬ p ∣ 38809) (hNotB : ¬ p ∣ 38806),
        order_of_C_B_inv_mod_p2 38809 38806 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 38806 38809 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_38806_38809
def row_39001_39004 :
    HasPrimeWithExpOne (S_val 39001 39004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39001 39004 ∧ ¬ p ∣ (39004 - 39001) ∧
      ∃ (hNotC : ¬ p ∣ 39004) (hNotB : ¬ p ∣ 39001),
        order_of_C_B_inv_mod_p2 39004 39001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39001 39004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_39001_39004
def row_39196_39199 :
    HasPrimeWithExpOne (S_val 39196 39199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39196 39199 ∧ ¬ p ∣ (39199 - 39196) ∧
      ∃ (hNotC : ¬ p ∣ 39199) (hNotB : ¬ p ∣ 39196),
        order_of_C_B_inv_mod_p2 39199 39196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39196 39199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_39196_39199
def row_39584_39587 :
    HasPrimeWithExpOne (S_val 39584 39587) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39584 39587 ∧ ¬ p ∣ (39587 - 39584) ∧
      ∃ (hNotC : ¬ p ∣ 39587) (hNotB : ¬ p ∣ 39584),
        order_of_C_B_inv_mod_p2 39587 39584 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39584 39587 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_39584_39587
def row_39782_39785 :
    HasPrimeWithExpOne (S_val 39782 39785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 39782 39785 ∧ ¬ p ∣ (39785 - 39782) ∧
      ∃ (hNotC : ¬ p ∣ 39785) (hNotB : ¬ p ∣ 39782),
        order_of_C_B_inv_mod_p2 39785 39782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 39782 39785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_39782_39785
def row_40171_40174 :
    HasPrimeWithExpOne (S_val 40171 40174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40171 40174 ∧ ¬ p ∣ (40174 - 40171) ∧
      ∃ (hNotC : ¬ p ∣ 40174) (hNotB : ¬ p ∣ 40171),
        order_of_C_B_inv_mod_p2 40174 40171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40171 40174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_40171_40174
def row_40561_40564 :
    HasPrimeWithExpOne (S_val 40561 40564) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40561 40564 ∧ ¬ p ∣ (40564 - 40561) ∧
      ∃ (hNotC : ¬ p ∣ 40564) (hNotB : ¬ p ∣ 40561),
        order_of_C_B_inv_mod_p2 40564 40561 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40561 40564 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_40561_40564
def row_40949_40952 :
    HasPrimeWithExpOne (S_val 40949 40952) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 40949 40952 ∧ ¬ p ∣ (40952 - 40949) ∧
      ∃ (hNotC : ¬ p ∣ 40952) (hNotB : ¬ p ∣ 40949),
        order_of_C_B_inv_mod_p2 40952 40949 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 40949 40952 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_40949_40952
def row_41146_41149 :
    HasPrimeWithExpOne (S_val 41146 41149) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41146 41149 ∧ ¬ p ∣ (41149 - 41146) ∧
      ∃ (hNotC : ¬ p ∣ 41149) (hNotB : ¬ p ∣ 41146),
        order_of_C_B_inv_mod_p2 41149 41146 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41146 41149 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_41146_41149
def row_41341_41344 :
    HasPrimeWithExpOne (S_val 41341 41344) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41341 41344 ∧ ¬ p ∣ (41344 - 41341) ∧
      ∃ (hNotC : ¬ p ∣ 41344) (hNotB : ¬ p ∣ 41341),
        order_of_C_B_inv_mod_p2 41344 41341 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41341 41344 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_41341_41344
def row_41536_41539 :
    HasPrimeWithExpOne (S_val 41536 41539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41536 41539 ∧ ¬ p ∣ (41539 - 41536) ∧
      ∃ (hNotC : ¬ p ∣ 41539) (hNotB : ¬ p ∣ 41536),
        order_of_C_B_inv_mod_p2 41539 41536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41536 41539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_41536_41539
def row_41731_41734 :
    HasPrimeWithExpOne (S_val 41731 41734) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41731 41734 ∧ ¬ p ∣ (41734 - 41731) ∧
      ∃ (hNotC : ¬ p ∣ 41734) (hNotB : ¬ p ∣ 41731),
        order_of_C_B_inv_mod_p2 41734 41731 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41731 41734 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_41731_41734
def row_41926_41929 :
    HasPrimeWithExpOne (S_val 41926 41929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 41926 41929 ∧ ¬ p ∣ (41929 - 41926) ∧
      ∃ (hNotC : ¬ p ∣ 41929) (hNotB : ¬ p ∣ 41926),
        order_of_C_B_inv_mod_p2 41929 41926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 41926 41929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_41926_41929
def row_42121_42124 :
    HasPrimeWithExpOne (S_val 42121 42124) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42121 42124 ∧ ¬ p ∣ (42124 - 42121) ∧
      ∃ (hNotC : ¬ p ∣ 42124) (hNotB : ¬ p ∣ 42121),
        order_of_C_B_inv_mod_p2 42124 42121 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42121 42124 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_42121_42124
def row_42511_42514 :
    HasPrimeWithExpOne (S_val 42511 42514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42511 42514 ∧ ¬ p ∣ (42514 - 42511) ∧
      ∃ (hNotC : ¬ p ∣ 42514) (hNotB : ¬ p ∣ 42511),
        order_of_C_B_inv_mod_p2 42514 42511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42511 42514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_42511_42514
def row_42706_42709 :
    HasPrimeWithExpOne (S_val 42706 42709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42706 42709 ∧ ¬ p ∣ (42709 - 42706) ∧
      ∃ (hNotC : ¬ p ∣ 42709) (hNotB : ¬ p ∣ 42706),
        order_of_C_B_inv_mod_p2 42709 42706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42706 42709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_42706_42709
def row_42899_42902 :
    HasPrimeWithExpOne (S_val 42899 42902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 42899 42902 ∧ ¬ p ∣ (42902 - 42899) ∧
      ∃ (hNotC : ¬ p ∣ 42902) (hNotB : ¬ p ∣ 42899),
        order_of_C_B_inv_mod_p2 42902 42899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 42899 42902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_42899_42902
def row_43097_43100 :
    HasPrimeWithExpOne (S_val 43097 43100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43097 43100 ∧ ¬ p ∣ (43100 - 43097) ∧
      ∃ (hNotC : ¬ p ∣ 43100) (hNotB : ¬ p ∣ 43097),
        order_of_C_B_inv_mod_p2 43100 43097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43097 43100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_43097_43100
def row_43876_43879 :
    HasPrimeWithExpOne (S_val 43876 43879) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 43876 43879 ∧ ¬ p ∣ (43879 - 43876) ∧
      ∃ (hNotC : ¬ p ∣ 43879) (hNotB : ¬ p ∣ 43876),
        order_of_C_B_inv_mod_p2 43879 43876 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 43876 43879 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_43876_43879
def row_44071_44074 :
    HasPrimeWithExpOne (S_val 44071 44074) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44071 44074 ∧ ¬ p ∣ (44074 - 44071) ∧
      ∃ (hNotC : ¬ p ∣ 44074) (hNotB : ¬ p ∣ 44071),
        order_of_C_B_inv_mod_p2 44074 44071 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44071 44074 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_44071_44074
def row_44266_44269 :
    HasPrimeWithExpOne (S_val 44266 44269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44266 44269 ∧ ¬ p ∣ (44269 - 44266) ∧
      ∃ (hNotC : ¬ p ∣ 44269) (hNotB : ¬ p ∣ 44266),
        order_of_C_B_inv_mod_p2 44269 44266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44266 44269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_44266_44269
def row_44461_44464 :
    HasPrimeWithExpOne (S_val 44461 44464) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44461 44464 ∧ ¬ p ∣ (44464 - 44461) ∧
      ∃ (hNotC : ¬ p ∣ 44464) (hNotB : ¬ p ∣ 44461),
        order_of_C_B_inv_mod_p2 44464 44461 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44461 44464 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_44461_44464
def row_44656_44659 :
    HasPrimeWithExpOne (S_val 44656 44659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44656 44659 ∧ ¬ p ∣ (44659 - 44656) ∧
      ∃ (hNotC : ¬ p ∣ 44659) (hNotB : ¬ p ∣ 44656),
        order_of_C_B_inv_mod_p2 44659 44656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44656 44659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_44656_44659
def row_44851_44854 :
    HasPrimeWithExpOne (S_val 44851 44854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 44851 44854 ∧ ¬ p ∣ (44854 - 44851) ∧
      ∃ (hNotC : ¬ p ∣ 44854) (hNotB : ¬ p ∣ 44851),
        order_of_C_B_inv_mod_p2 44854 44851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 44851 44854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_44851_44854
def row_45046_45049 :
    HasPrimeWithExpOne (S_val 45046 45049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45046 45049 ∧ ¬ p ∣ (45049 - 45046) ∧
      ∃ (hNotC : ¬ p ∣ 45049) (hNotB : ¬ p ∣ 45046),
        order_of_C_B_inv_mod_p2 45049 45046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45046 45049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_45046_45049
def row_45241_45244 :
    HasPrimeWithExpOne (S_val 45241 45244) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45241 45244 ∧ ¬ p ∣ (45244 - 45241) ∧
      ∃ (hNotC : ¬ p ∣ 45244) (hNotB : ¬ p ∣ 45241),
        order_of_C_B_inv_mod_p2 45244 45241 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45241 45244 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_45241_45244
def row_45436_45439 :
    HasPrimeWithExpOne (S_val 45436 45439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45436 45439 ∧ ¬ p ∣ (45439 - 45436) ∧
      ∃ (hNotC : ¬ p ∣ 45439) (hNotB : ¬ p ∣ 45436),
        order_of_C_B_inv_mod_p2 45439 45436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45436 45439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_45436_45439
def row_45631_45634 :
    HasPrimeWithExpOne (S_val 45631 45634) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 45631 45634 ∧ ¬ p ∣ (45634 - 45631) ∧
      ∃ (hNotC : ¬ p ∣ 45634) (hNotB : ¬ p ∣ 45631),
        order_of_C_B_inv_mod_p2 45634 45631 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 45631 45634 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_45631_45634
def row_46021_46024 :
    HasPrimeWithExpOne (S_val 46021 46024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46021 46024 ∧ ¬ p ∣ (46024 - 46021) ∧
      ∃ (hNotC : ¬ p ∣ 46024) (hNotB : ¬ p ∣ 46021),
        order_of_C_B_inv_mod_p2 46024 46021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46021 46024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_46021_46024
def row_46412_46415 :
    HasPrimeWithExpOne (S_val 46412 46415) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46412 46415 ∧ ¬ p ∣ (46415 - 46412) ∧
      ∃ (hNotC : ¬ p ∣ 46415) (hNotB : ¬ p ∣ 46412),
        order_of_C_B_inv_mod_p2 46415 46412 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46412 46415 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_46412_46415
def row_46609_46612 :
    HasPrimeWithExpOne (S_val 46609 46612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46609 46612 ∧ ¬ p ∣ (46612 - 46609) ∧
      ∃ (hNotC : ¬ p ∣ 46612) (hNotB : ¬ p ∣ 46609),
        order_of_C_B_inv_mod_p2 46612 46609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46609 46612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_46609_46612
def row_46801_46804 :
    HasPrimeWithExpOne (S_val 46801 46804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46801 46804 ∧ ¬ p ∣ (46804 - 46801) ∧
      ∃ (hNotC : ¬ p ∣ 46804) (hNotB : ¬ p ∣ 46801),
        order_of_C_B_inv_mod_p2 46804 46801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46801 46804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_46801_46804
def row_46996_46999 :
    HasPrimeWithExpOne (S_val 46996 46999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 46996 46999 ∧ ¬ p ∣ (46999 - 46996) ∧
      ∃ (hNotC : ¬ p ∣ 46999) (hNotB : ¬ p ∣ 46996),
        order_of_C_B_inv_mod_p2 46999 46996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 46996 46999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_46996_46999
def row_47191_47194 :
    HasPrimeWithExpOne (S_val 47191 47194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47191 47194 ∧ ¬ p ∣ (47194 - 47191) ∧
      ∃ (hNotC : ¬ p ∣ 47194) (hNotB : ¬ p ∣ 47191),
        order_of_C_B_inv_mod_p2 47194 47191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47191 47194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_47191_47194
def row_47386_47389 :
    HasPrimeWithExpOne (S_val 47386 47389) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47386 47389 ∧ ¬ p ∣ (47389 - 47386) ∧
      ∃ (hNotC : ¬ p ∣ 47389) (hNotB : ¬ p ∣ 47386),
        order_of_C_B_inv_mod_p2 47389 47386 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47386 47389 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_47386_47389
def row_47581_47584 :
    HasPrimeWithExpOne (S_val 47581 47584) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47581 47584 ∧ ¬ p ∣ (47584 - 47581) ∧
      ∃ (hNotC : ¬ p ∣ 47584) (hNotB : ¬ p ∣ 47581),
        order_of_C_B_inv_mod_p2 47584 47581 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47581 47584 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_47581_47584
def row_47971_47974 :
    HasPrimeWithExpOne (S_val 47971 47974) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 47971 47974 ∧ ¬ p ∣ (47974 - 47971) ∧
      ∃ (hNotC : ¬ p ∣ 47974) (hNotB : ¬ p ∣ 47971),
        order_of_C_B_inv_mod_p2 47974 47971 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 47971 47974 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_47971_47974
def row_48166_48169 :
    HasPrimeWithExpOne (S_val 48166 48169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48166 48169 ∧ ¬ p ∣ (48169 - 48166) ∧
      ∃ (hNotC : ¬ p ∣ 48169) (hNotB : ¬ p ∣ 48166),
        order_of_C_B_inv_mod_p2 48169 48166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48166 48169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_48166_48169
def row_48361_48364 :
    HasPrimeWithExpOne (S_val 48361 48364) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48361 48364 ∧ ¬ p ∣ (48364 - 48361) ∧
      ∃ (hNotC : ¬ p ∣ 48364) (hNotB : ¬ p ∣ 48361),
        order_of_C_B_inv_mod_p2 48364 48361 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48361 48364 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_48361_48364
def row_48554_48557 :
    HasPrimeWithExpOne (S_val 48554 48557) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48554 48557 ∧ ¬ p ∣ (48557 - 48554) ∧
      ∃ (hNotC : ¬ p ∣ 48557) (hNotB : ¬ p ∣ 48554),
        order_of_C_B_inv_mod_p2 48557 48554 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48554 48557 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_48554_48557
def row_48751_48754 :
    HasPrimeWithExpOne (S_val 48751 48754) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 48751 48754 ∧ ¬ p ∣ (48754 - 48751) ∧
      ∃ (hNotC : ¬ p ∣ 48754) (hNotB : ¬ p ∣ 48751),
        order_of_C_B_inv_mod_p2 48754 48751 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 48751 48754 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_48751_48754
def row_49141_49144 :
    HasPrimeWithExpOne (S_val 49141 49144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49141 49144 ∧ ¬ p ∣ (49144 - 49141) ∧
      ∃ (hNotC : ¬ p ∣ 49144) (hNotB : ¬ p ∣ 49141),
        order_of_C_B_inv_mod_p2 49144 49141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49141 49144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_49141_49144
def row_49336_49339 :
    HasPrimeWithExpOne (S_val 49336 49339) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49336 49339 ∧ ¬ p ∣ (49339 - 49336) ∧
      ∃ (hNotC : ¬ p ∣ 49339) (hNotB : ¬ p ∣ 49336),
        order_of_C_B_inv_mod_p2 49339 49336 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49336 49339 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_49336_49339
def row_49531_49534 :
    HasPrimeWithExpOne (S_val 49531 49534) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 49531 49534 ∧ ¬ p ∣ (49534 - 49531) ∧
      ∃ (hNotC : ¬ p ∣ 49534) (hNotB : ¬ p ∣ 49531),
        order_of_C_B_inv_mod_p2 49534 49531 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 49531 49534 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_49531_49534
def row_50000_50003 :
    HasPrimeWithExpOne (S_val 50000 50003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50000 50003 ∧ ¬ p ∣ (50003 - 50000) ∧
      ∃ (hNotC : ¬ p ∣ 50003) (hNotB : ¬ p ∣ 50000),
        order_of_C_B_inv_mod_p2 50003 50000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50000 50003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_50000_50003
def row_50001_50004 :
    HasPrimeWithExpOne (S_val 50001 50004) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50001 50004 ∧ ¬ p ∣ (50004 - 50001) ∧
      ∃ (hNotC : ¬ p ∣ 50004) (hNotB : ¬ p ∣ 50001),
        order_of_C_B_inv_mod_p2 50004 50001 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50001 50004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_50001_50004
def row_50389_50392 :
    HasPrimeWithExpOne (S_val 50389 50392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50389 50392 ∧ ¬ p ∣ (50392 - 50389) ∧
      ∃ (hNotC : ¬ p ∣ 50392) (hNotB : ¬ p ∣ 50389),
        order_of_C_B_inv_mod_p2 50392 50389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50389 50392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_50389_50392
def row_50779_50782 :
    HasPrimeWithExpOne (S_val 50779 50782) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 50779 50782 ∧ ¬ p ∣ (50782 - 50779) ∧
      ∃ (hNotC : ¬ p ∣ 50782) (hNotB : ¬ p ∣ 50779),
        order_of_C_B_inv_mod_p2 50782 50779 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 50779 50782 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_50779_50782
def row_51191_51194 :
    HasPrimeWithExpOne (S_val 51191 51194) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51191 51194 ∧ ¬ p ∣ (51194 - 51191) ∧
      ∃ (hNotC : ¬ p ∣ 51194) (hNotB : ¬ p ∣ 51191),
        order_of_C_B_inv_mod_p2 51194 51191 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51191 51194 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_51191_51194
def row_51574_51577 :
    HasPrimeWithExpOne (S_val 51574 51577) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51574 51577 ∧ ¬ p ∣ (51577 - 51574) ∧
      ∃ (hNotC : ¬ p ∣ 51577) (hNotB : ¬ p ∣ 51574),
        order_of_C_B_inv_mod_p2 51577 51574 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51574 51577 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_51574_51577
def row_51965_51968 :
    HasPrimeWithExpOne (S_val 51965 51968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 51965 51968 ∧ ¬ p ∣ (51968 - 51965) ∧
      ∃ (hNotC : ¬ p ∣ 51968) (hNotB : ¬ p ∣ 51965),
        order_of_C_B_inv_mod_p2 51968 51965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 51965 51968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_51965_51968
def row_52362_52365 :
    HasPrimeWithExpOne (S_val 52362 52365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52362 52365 ∧ ¬ p ∣ (52365 - 52362) ∧
      ∃ (hNotC : ¬ p ∣ 52365) (hNotB : ¬ p ∣ 52362),
        order_of_C_B_inv_mod_p2 52365 52362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52362 52365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_52362_52365
def row_52739_52742 :
    HasPrimeWithExpOne (S_val 52739 52742) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 52739 52742 ∧ ¬ p ∣ (52742 - 52739) ∧
      ∃ (hNotC : ¬ p ∣ 52742) (hNotB : ¬ p ∣ 52739),
        order_of_C_B_inv_mod_p2 52742 52739 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 52739 52742 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_52739_52742
def row_53136_53139 :
    HasPrimeWithExpOne (S_val 53136 53139) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53136 53139 ∧ ¬ p ∣ (53139 - 53136) ∧
      ∃ (hNotC : ¬ p ∣ 53139) (hNotB : ¬ p ∣ 53136),
        order_of_C_B_inv_mod_p2 53139 53136 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53136 53139 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_53136_53139
def row_53525_53528 :
    HasPrimeWithExpOne (S_val 53525 53528) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53525 53528 ∧ ¬ p ∣ (53528 - 53525) ∧
      ∃ (hNotC : ¬ p ∣ 53528) (hNotB : ¬ p ∣ 53525),
        order_of_C_B_inv_mod_p2 53528 53525 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53525 53528 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_53525_53528
def row_53915_53918 :
    HasPrimeWithExpOne (S_val 53915 53918) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 53915 53918 ∧ ¬ p ∣ (53918 - 53915) ∧
      ∃ (hNotC : ¬ p ∣ 53918) (hNotB : ¬ p ∣ 53915),
        order_of_C_B_inv_mod_p2 53918 53915 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 53915 53918 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_53915_53918
def row_54302_54305 :
    HasPrimeWithExpOne (S_val 54302 54305) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54302 54305 ∧ ¬ p ∣ (54305 - 54302) ∧
      ∃ (hNotC : ¬ p ∣ 54305) (hNotB : ¬ p ∣ 54302),
        order_of_C_B_inv_mod_p2 54305 54302 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54302 54305 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_54302_54305
def row_54701_54704 :
    HasPrimeWithExpOne (S_val 54701 54704) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 54701 54704 ∧ ¬ p ∣ (54704 - 54701) ∧
      ∃ (hNotC : ¬ p ∣ 54704) (hNotB : ¬ p ∣ 54701),
        order_of_C_B_inv_mod_p2 54704 54701 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 54701 54704 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_54701_54704
def row_55091_55094 :
    HasPrimeWithExpOne (S_val 55091 55094) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55091 55094 ∧ ¬ p ∣ (55094 - 55091) ∧
      ∃ (hNotC : ¬ p ∣ 55094) (hNotB : ¬ p ∣ 55091),
        order_of_C_B_inv_mod_p2 55094 55091 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55091 55094 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_55091_55094
def row_55496_55499 :
    HasPrimeWithExpOne (S_val 55496 55499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55496 55499 ∧ ¬ p ∣ (55499 - 55496) ∧
      ∃ (hNotC : ¬ p ∣ 55499) (hNotB : ¬ p ∣ 55496),
        order_of_C_B_inv_mod_p2 55499 55496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55496 55499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_55496_55499
def row_55894_55897 :
    HasPrimeWithExpOne (S_val 55894 55897) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 55894 55897 ∧ ¬ p ∣ (55897 - 55894) ∧
      ∃ (hNotC : ¬ p ∣ 55897) (hNotB : ¬ p ∣ 55894),
        order_of_C_B_inv_mod_p2 55897 55894 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 55894 55897 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_55894_55897
def row_56278_56281 :
    HasPrimeWithExpOne (S_val 56278 56281) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56278 56281 ∧ ¬ p ∣ (56281 - 56278) ∧
      ∃ (hNotC : ¬ p ∣ 56281) (hNotB : ¬ p ∣ 56278),
        order_of_C_B_inv_mod_p2 56281 56278 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56278 56281 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_56278_56281
def row_56667_56670 :
    HasPrimeWithExpOne (S_val 56667 56670) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 56667 56670 ∧ ¬ p ∣ (56670 - 56667) ∧
      ∃ (hNotC : ¬ p ∣ 56670) (hNotB : ¬ p ∣ 56667),
        order_of_C_B_inv_mod_p2 56670 56667 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 56667 56670 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_56667_56670
def row_57036_57039 :
    HasPrimeWithExpOne (S_val 57036 57039) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57036 57039 ∧ ¬ p ∣ (57039 - 57036) ∧
      ∃ (hNotC : ¬ p ∣ 57039) (hNotB : ¬ p ∣ 57036),
        order_of_C_B_inv_mod_p2 57039 57036 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57036 57039 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_57036_57039
def row_57417_57420 :
    HasPrimeWithExpOne (S_val 57417 57420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57417 57420 ∧ ¬ p ∣ (57420 - 57417) ∧
      ∃ (hNotC : ¬ p ∣ 57420) (hNotB : ¬ p ∣ 57417),
        order_of_C_B_inv_mod_p2 57420 57417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57417 57420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_57417_57420
def row_57825_57828 :
    HasPrimeWithExpOne (S_val 57825 57828) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 57825 57828 ∧ ¬ p ∣ (57828 - 57825) ∧
      ∃ (hNotC : ¬ p ∣ 57828) (hNotB : ¬ p ∣ 57825),
        order_of_C_B_inv_mod_p2 57828 57825 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 57825 57828 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_57825_57828
def row_58198_58201 :
    HasPrimeWithExpOne (S_val 58198 58201) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58198 58201 ∧ ¬ p ∣ (58201 - 58198) ∧
      ∃ (hNotC : ¬ p ∣ 58201) (hNotB : ¬ p ∣ 58198),
        order_of_C_B_inv_mod_p2 58201 58198 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58198 58201 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_58198_58201
def row_58587_58590 :
    HasPrimeWithExpOne (S_val 58587 58590) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58587 58590 ∧ ¬ p ∣ (58590 - 58587) ∧
      ∃ (hNotC : ¬ p ∣ 58590) (hNotB : ¬ p ∣ 58587),
        order_of_C_B_inv_mod_p2 58590 58587 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58587 58590 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_58587_58590
def row_58995_58998 :
    HasPrimeWithExpOne (S_val 58995 58998) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 58995 58998 ∧ ¬ p ∣ (58998 - 58995) ∧
      ∃ (hNotC : ¬ p ∣ 58998) (hNotB : ¬ p ∣ 58995),
        order_of_C_B_inv_mod_p2 58998 58995 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 58995 58998 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_58995_58998
def row_59373_59376 :
    HasPrimeWithExpOne (S_val 59373 59376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59373 59376 ∧ ¬ p ∣ (59376 - 59373) ∧
      ∃ (hNotC : ¬ p ∣ 59376) (hNotB : ¬ p ∣ 59373),
        order_of_C_B_inv_mod_p2 59376 59373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59373 59376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_59373_59376
def row_59767_59770 :
    HasPrimeWithExpOne (S_val 59767 59770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 59767 59770 ∧ ¬ p ∣ (59770 - 59767) ∧
      ∃ (hNotC : ¬ p ∣ 59770) (hNotB : ¬ p ∣ 59767),
        order_of_C_B_inv_mod_p2 59770 59767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 59767 59770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_59767_59770
def row_60159_60162 :
    HasPrimeWithExpOne (S_val 60159 60162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60159 60162 ∧ ¬ p ∣ (60162 - 60159) ∧
      ∃ (hNotC : ¬ p ∣ 60162) (hNotB : ¬ p ∣ 60159),
        order_of_C_B_inv_mod_p2 60162 60159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60159 60162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_60159_60162
def row_60530_60533 :
    HasPrimeWithExpOne (S_val 60530 60533) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60530 60533 ∧ ¬ p ∣ (60533 - 60530) ∧
      ∃ (hNotC : ¬ p ∣ 60533) (hNotB : ¬ p ∣ 60530),
        order_of_C_B_inv_mod_p2 60533 60530 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60530 60533 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_60530_60533
def row_60922_60925 :
    HasPrimeWithExpOne (S_val 60922 60925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 60922 60925 ∧ ¬ p ∣ (60925 - 60922) ∧
      ∃ (hNotC : ¬ p ∣ 60925) (hNotB : ¬ p ∣ 60922),
        order_of_C_B_inv_mod_p2 60925 60922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 60922 60925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_60922_60925
def row_61286_61289 :
    HasPrimeWithExpOne (S_val 61286 61289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61286 61289 ∧ ¬ p ∣ (61289 - 61286) ∧
      ∃ (hNotC : ¬ p ∣ 61289) (hNotB : ¬ p ∣ 61286),
        order_of_C_B_inv_mod_p2 61289 61286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61286 61289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_61286_61289
def row_61684_61687 :
    HasPrimeWithExpOne (S_val 61684 61687) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 61684 61687 ∧ ¬ p ∣ (61687 - 61684) ∧
      ∃ (hNotC : ¬ p ∣ 61687) (hNotB : ¬ p ∣ 61684),
        order_of_C_B_inv_mod_p2 61687 61684 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 61684 61687 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_61684_61687
def row_62056_62059 :
    HasPrimeWithExpOne (S_val 62056 62059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62056 62059 ∧ ¬ p ∣ (62059 - 62056) ∧
      ∃ (hNotC : ¬ p ∣ 62059) (hNotB : ¬ p ∣ 62056),
        order_of_C_B_inv_mod_p2 62059 62056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62056 62059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_62056_62059
def row_62452_62455 :
    HasPrimeWithExpOne (S_val 62452 62455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62452 62455 ∧ ¬ p ∣ (62455 - 62452) ∧
      ∃ (hNotC : ¬ p ∣ 62455) (hNotB : ¬ p ∣ 62452),
        order_of_C_B_inv_mod_p2 62455 62452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62452 62455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_62452_62455
def row_62849_62852 :
    HasPrimeWithExpOne (S_val 62849 62852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 62849 62852 ∧ ¬ p ∣ (62852 - 62849) ∧
      ∃ (hNotC : ¬ p ∣ 62852) (hNotB : ¬ p ∣ 62849),
        order_of_C_B_inv_mod_p2 62852 62849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 62849 62852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_62849_62852
def row_63234_63237 :
    HasPrimeWithExpOne (S_val 63234 63237) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63234 63237 ∧ ¬ p ∣ (63237 - 63234) ∧
      ∃ (hNotC : ¬ p ∣ 63237) (hNotB : ¬ p ∣ 63234),
        order_of_C_B_inv_mod_p2 63237 63234 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63234 63237 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_63234_63237
def row_63609_63612 :
    HasPrimeWithExpOne (S_val 63609 63612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63609 63612 ∧ ¬ p ∣ (63612 - 63609) ∧
      ∃ (hNotC : ¬ p ∣ 63612) (hNotB : ¬ p ∣ 63609),
        order_of_C_B_inv_mod_p2 63612 63609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63609 63612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_63609_63612
def row_63982_63985 :
    HasPrimeWithExpOne (S_val 63982 63985) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 63982 63985 ∧ ¬ p ∣ (63985 - 63982) ∧
      ∃ (hNotC : ¬ p ∣ 63985) (hNotB : ¬ p ∣ 63982),
        order_of_C_B_inv_mod_p2 63985 63982 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 63982 63985 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_63982_63985
def row_64381_64384 :
    HasPrimeWithExpOne (S_val 64381 64384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64381 64384 ∧ ¬ p ∣ (64384 - 64381) ∧
      ∃ (hNotC : ¬ p ∣ 64384) (hNotB : ¬ p ∣ 64381),
        order_of_C_B_inv_mod_p2 64384 64381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64381 64384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_64381_64384
def row_64755_64758 :
    HasPrimeWithExpOne (S_val 64755 64758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 64755 64758 ∧ ¬ p ∣ (64758 - 64755) ∧
      ∃ (hNotC : ¬ p ∣ 64758) (hNotB : ¬ p ∣ 64755),
        order_of_C_B_inv_mod_p2 64758 64755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 64755 64758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_64755_64758
def row_65129_65132 :
    HasPrimeWithExpOne (S_val 65129 65132) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65129 65132 ∧ ¬ p ∣ (65132 - 65129) ∧
      ∃ (hNotC : ¬ p ∣ 65132) (hNotB : ¬ p ∣ 65129),
        order_of_C_B_inv_mod_p2 65132 65129 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65129 65132 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_65129_65132
def row_65501_65504 :
    HasPrimeWithExpOne (S_val 65501 65504) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65501 65504 ∧ ¬ p ∣ (65504 - 65501) ∧
      ∃ (hNotC : ¬ p ∣ 65504) (hNotB : ¬ p ∣ 65501),
        order_of_C_B_inv_mod_p2 65504 65501 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65501 65504 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_65501_65504
def row_65883_65886 :
    HasPrimeWithExpOne (S_val 65883 65886) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 65883 65886 ∧ ¬ p ∣ (65886 - 65883) ∧
      ∃ (hNotC : ¬ p ∣ 65886) (hNotB : ¬ p ∣ 65883),
        order_of_C_B_inv_mod_p2 65886 65883 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 65883 65886 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_65883_65886
def row_66287_66290 :
    HasPrimeWithExpOne (S_val 66287 66290) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66287 66290 ∧ ¬ p ∣ (66290 - 66287) ∧
      ∃ (hNotC : ¬ p ∣ 66290) (hNotB : ¬ p ∣ 66287),
        order_of_C_B_inv_mod_p2 66290 66287 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66287 66290 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_66287_66290
def row_66655_66658 :
    HasPrimeWithExpOne (S_val 66655 66658) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 66655 66658 ∧ ¬ p ∣ (66658 - 66655) ∧
      ∃ (hNotC : ¬ p ∣ 66658) (hNotB : ¬ p ∣ 66655),
        order_of_C_B_inv_mod_p2 66658 66655 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 66655 66658 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_66655_66658
def row_67038_67041 :
    HasPrimeWithExpOne (S_val 67038 67041) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67038 67041 ∧ ¬ p ∣ (67041 - 67038) ∧
      ∃ (hNotC : ¬ p ∣ 67041) (hNotB : ¬ p ∣ 67038),
        order_of_C_B_inv_mod_p2 67041 67038 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67038 67041 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_67038_67041
def row_67426_67429 :
    HasPrimeWithExpOne (S_val 67426 67429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67426 67429 ∧ ¬ p ∣ (67429 - 67426) ∧
      ∃ (hNotC : ¬ p ∣ 67429) (hNotB : ¬ p ∣ 67426),
        order_of_C_B_inv_mod_p2 67429 67426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67426 67429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_67426_67429
def row_67819_67822 :
    HasPrimeWithExpOne (S_val 67819 67822) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 67819 67822 ∧ ¬ p ∣ (67822 - 67819) ∧
      ∃ (hNotC : ¬ p ∣ 67822) (hNotB : ¬ p ∣ 67819),
        order_of_C_B_inv_mod_p2 67822 67819 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 67819 67822 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_67819_67822
def row_68203_68206 :
    HasPrimeWithExpOne (S_val 68203 68206) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68203 68206 ∧ ¬ p ∣ (68206 - 68203) ∧
      ∃ (hNotC : ¬ p ∣ 68206) (hNotB : ¬ p ∣ 68203),
        order_of_C_B_inv_mod_p2 68206 68203 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68203 68206 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_68203_68206
def row_68595_68598 :
    HasPrimeWithExpOne (S_val 68595 68598) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68595 68598 ∧ ¬ p ∣ (68598 - 68595) ∧
      ∃ (hNotC : ¬ p ∣ 68598) (hNotB : ¬ p ∣ 68595),
        order_of_C_B_inv_mod_p2 68598 68595 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68595 68598 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_68595_68598
def row_68980_68983 :
    HasPrimeWithExpOne (S_val 68980 68983) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 68980 68983 ∧ ¬ p ∣ (68983 - 68980) ∧
      ∃ (hNotC : ¬ p ∣ 68983) (hNotB : ¬ p ∣ 68980),
        order_of_C_B_inv_mod_p2 68983 68980 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 68980 68983 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_68980_68983
def row_69387_69390 :
    HasPrimeWithExpOne (S_val 69387 69390) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69387 69390 ∧ ¬ p ∣ (69390 - 69387) ∧
      ∃ (hNotC : ¬ p ∣ 69390) (hNotB : ¬ p ∣ 69387),
        order_of_C_B_inv_mod_p2 69390 69387 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69387 69390 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_69387_69390
def row_69770_69773 :
    HasPrimeWithExpOne (S_val 69770 69773) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 69770 69773 ∧ ¬ p ∣ (69773 - 69770) ∧
      ∃ (hNotC : ¬ p ∣ 69773) (hNotB : ¬ p ∣ 69770),
        order_of_C_B_inv_mod_p2 69773 69770 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 69770 69773 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_69770_69773
def row_70145_70148 :
    HasPrimeWithExpOne (S_val 70145 70148) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70145 70148 ∧ ¬ p ∣ (70148 - 70145) ∧
      ∃ (hNotC : ¬ p ∣ 70148) (hNotB : ¬ p ∣ 70145),
        order_of_C_B_inv_mod_p2 70148 70145 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70145 70148 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_70145_70148
def row_70549_70552 :
    HasPrimeWithExpOne (S_val 70549 70552) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70549 70552 ∧ ¬ p ∣ (70552 - 70549) ∧
      ∃ (hNotC : ¬ p ∣ 70552) (hNotB : ¬ p ∣ 70549),
        order_of_C_B_inv_mod_p2 70552 70549 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70549 70552 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_70549_70552
def row_70931_70934 :
    HasPrimeWithExpOne (S_val 70931 70934) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 70931 70934 ∧ ¬ p ∣ (70934 - 70931) ∧
      ∃ (hNotC : ¬ p ∣ 70934) (hNotB : ¬ p ∣ 70931),
        order_of_C_B_inv_mod_p2 70934 70931 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 70931 70934 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_70931_70934
def row_71321_71324 :
    HasPrimeWithExpOne (S_val 71321 71324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71321 71324 ∧ ¬ p ∣ (71324 - 71321) ∧
      ∃ (hNotC : ¬ p ∣ 71324) (hNotB : ¬ p ∣ 71321),
        order_of_C_B_inv_mod_p2 71324 71321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71321 71324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_71321_71324
def row_71710_71713 :
    HasPrimeWithExpOne (S_val 71710 71713) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 71710 71713 ∧ ¬ p ∣ (71713 - 71710) ∧
      ∃ (hNotC : ¬ p ∣ 71713) (hNotB : ¬ p ∣ 71710),
        order_of_C_B_inv_mod_p2 71713 71710 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 71710 71713 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_71710_71713
def row_72104_72107 :
    HasPrimeWithExpOne (S_val 72104 72107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72104 72107 ∧ ¬ p ∣ (72107 - 72104) ∧
      ∃ (hNotC : ¬ p ∣ 72107) (hNotB : ¬ p ∣ 72104),
        order_of_C_B_inv_mod_p2 72107 72104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72104 72107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_72104_72107
def row_72497_72500 :
    HasPrimeWithExpOne (S_val 72497 72500) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72497 72500 ∧ ¬ p ∣ (72500 - 72497) ∧
      ∃ (hNotC : ¬ p ∣ 72500) (hNotB : ¬ p ∣ 72497),
        order_of_C_B_inv_mod_p2 72500 72497 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72497 72500 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_72497_72500
def row_72899_72902 :
    HasPrimeWithExpOne (S_val 72899 72902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 72899 72902 ∧ ¬ p ∣ (72902 - 72899) ∧
      ∃ (hNotC : ¬ p ∣ 72902) (hNotB : ¬ p ∣ 72899),
        order_of_C_B_inv_mod_p2 72902 72899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 72899 72902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_72899_72902
def row_73286_73289 :
    HasPrimeWithExpOne (S_val 73286 73289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73286 73289 ∧ ¬ p ∣ (73289 - 73286) ∧
      ∃ (hNotC : ¬ p ∣ 73289) (hNotB : ¬ p ∣ 73286),
        order_of_C_B_inv_mod_p2 73289 73286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73286 73289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_73286_73289
def row_73675_73678 :
    HasPrimeWithExpOne (S_val 73675 73678) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 73675 73678 ∧ ¬ p ∣ (73678 - 73675) ∧
      ∃ (hNotC : ¬ p ∣ 73678) (hNotB : ¬ p ∣ 73675),
        order_of_C_B_inv_mod_p2 73678 73675 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 73675 73678 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_73675_73678
def row_74041_74044 :
    HasPrimeWithExpOne (S_val 74041 74044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74041 74044 ∧ ¬ p ∣ (74044 - 74041) ∧
      ∃ (hNotC : ¬ p ∣ 74044) (hNotB : ¬ p ∣ 74041),
        order_of_C_B_inv_mod_p2 74044 74041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74041 74044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_74041_74044
def row_74436_74439 :
    HasPrimeWithExpOne (S_val 74436 74439) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74436 74439 ∧ ¬ p ∣ (74439 - 74436) ∧
      ∃ (hNotC : ¬ p ∣ 74439) (hNotB : ¬ p ∣ 74436),
        order_of_C_B_inv_mod_p2 74439 74436 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74436 74439 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_74436_74439
def row_74820_74823 :
    HasPrimeWithExpOne (S_val 74820 74823) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 74820 74823 ∧ ¬ p ∣ (74823 - 74820) ∧
      ∃ (hNotC : ¬ p ∣ 74823) (hNotB : ¬ p ∣ 74820),
        order_of_C_B_inv_mod_p2 74823 74820 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 74820 74823 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_74820_74823
def row_75171_75174 :
    HasPrimeWithExpOne (S_val 75171 75174) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75171 75174 ∧ ¬ p ∣ (75174 - 75171) ∧
      ∃ (hNotC : ¬ p ∣ 75174) (hNotB : ¬ p ∣ 75171),
        order_of_C_B_inv_mod_p2 75174 75171 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75171 75174 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_75171_75174
def row_75575_75578 :
    HasPrimeWithExpOne (S_val 75575 75578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75575 75578 ∧ ¬ p ∣ (75578 - 75575) ∧
      ∃ (hNotC : ¬ p ∣ 75578) (hNotB : ¬ p ∣ 75575),
        order_of_C_B_inv_mod_p2 75578 75575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75575 75578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_75575_75578
def row_75953_75956 :
    HasPrimeWithExpOne (S_val 75953 75956) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 75953 75956 ∧ ¬ p ∣ (75956 - 75953) ∧
      ∃ (hNotC : ¬ p ∣ 75956) (hNotB : ¬ p ∣ 75953),
        order_of_C_B_inv_mod_p2 75956 75953 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 75953 75956 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_75953_75956
def row_76337_76340 :
    HasPrimeWithExpOne (S_val 76337 76340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76337 76340 ∧ ¬ p ∣ (76340 - 76337) ∧
      ∃ (hNotC : ¬ p ∣ 76340) (hNotB : ¬ p ∣ 76337),
        order_of_C_B_inv_mod_p2 76340 76337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76337 76340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_76337_76340
def row_76728_76731 :
    HasPrimeWithExpOne (S_val 76728 76731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 76728 76731 ∧ ¬ p ∣ (76731 - 76728) ∧
      ∃ (hNotC : ¬ p ∣ 76731) (hNotB : ¬ p ∣ 76728),
        order_of_C_B_inv_mod_p2 76731 76728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 76728 76731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_76728_76731
def row_77118_77121 :
    HasPrimeWithExpOne (S_val 77118 77121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77118 77121 ∧ ¬ p ∣ (77121 - 77118) ∧
      ∃ (hNotC : ¬ p ∣ 77121) (hNotB : ¬ p ∣ 77118),
        order_of_C_B_inv_mod_p2 77121 77118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77118 77121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_77118_77121
def row_77512_77515 :
    HasPrimeWithExpOne (S_val 77512 77515) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77512 77515 ∧ ¬ p ∣ (77515 - 77512) ∧
      ∃ (hNotC : ¬ p ∣ 77515) (hNotB : ¬ p ∣ 77512),
        order_of_C_B_inv_mod_p2 77515 77512 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77512 77515 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_77512_77515
def row_77902_77905 :
    HasPrimeWithExpOne (S_val 77902 77905) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 77902 77905 ∧ ¬ p ∣ (77905 - 77902) ∧
      ∃ (hNotC : ¬ p ∣ 77905) (hNotB : ¬ p ∣ 77902),
        order_of_C_B_inv_mod_p2 77905 77902 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 77902 77905 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_77902_77905
def row_78291_78294 :
    HasPrimeWithExpOne (S_val 78291 78294) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78291 78294 ∧ ¬ p ∣ (78294 - 78291) ∧
      ∃ (hNotC : ¬ p ∣ 78294) (hNotB : ¬ p ∣ 78291),
        order_of_C_B_inv_mod_p2 78294 78291 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78291 78294 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_78291_78294
def row_78678_78681 :
    HasPrimeWithExpOne (S_val 78678 78681) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 78678 78681 ∧ ¬ p ∣ (78681 - 78678) ∧
      ∃ (hNotC : ¬ p ∣ 78681) (hNotB : ¬ p ∣ 78678),
        order_of_C_B_inv_mod_p2 78681 78678 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 78678 78681 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_78678_78681
def row_79069_79072 :
    HasPrimeWithExpOne (S_val 79069 79072) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79069 79072 ∧ ¬ p ∣ (79072 - 79069) ∧
      ∃ (hNotC : ¬ p ∣ 79072) (hNotB : ¬ p ∣ 79069),
        order_of_C_B_inv_mod_p2 79072 79069 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79069 79072 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_79069_79072
def row_79454_79457 :
    HasPrimeWithExpOne (S_val 79454 79457) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79454 79457 ∧ ¬ p ∣ (79457 - 79454) ∧
      ∃ (hNotC : ¬ p ∣ 79457) (hNotB : ¬ p ∣ 79454),
        order_of_C_B_inv_mod_p2 79457 79454 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79454 79457 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_79454_79457
def row_79843_79846 :
    HasPrimeWithExpOne (S_val 79843 79846) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 79843 79846 ∧ ¬ p ∣ (79846 - 79843) ∧
      ∃ (hNotC : ¬ p ∣ 79846) (hNotB : ¬ p ∣ 79843),
        order_of_C_B_inv_mod_p2 79846 79843 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 79843 79846 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_79843_79846
def row_80233_80236 :
    HasPrimeWithExpOne (S_val 80233 80236) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80233 80236 ∧ ¬ p ∣ (80236 - 80233) ∧
      ∃ (hNotC : ¬ p ∣ 80236) (hNotB : ¬ p ∣ 80233),
        order_of_C_B_inv_mod_p2 80236 80233 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80233 80236 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_80233_80236
def row_80625_80628 :
    HasPrimeWithExpOne (S_val 80625 80628) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 80625 80628 ∧ ¬ p ∣ (80628 - 80625) ∧
      ∃ (hNotC : ¬ p ∣ 80628) (hNotB : ¬ p ∣ 80625),
        order_of_C_B_inv_mod_p2 80628 80625 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 80625 80628 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_80625_80628
def row_81029_81032 :
    HasPrimeWithExpOne (S_val 81029 81032) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81029 81032 ∧ ¬ p ∣ (81032 - 81029) ∧
      ∃ (hNotC : ¬ p ∣ 81032) (hNotB : ¬ p ∣ 81029),
        order_of_C_B_inv_mod_p2 81032 81029 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81029 81032 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_81029_81032
def row_81411_81414 :
    HasPrimeWithExpOne (S_val 81411 81414) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81411 81414 ∧ ¬ p ∣ (81414 - 81411) ∧
      ∃ (hNotC : ¬ p ∣ 81414) (hNotB : ¬ p ∣ 81411),
        order_of_C_B_inv_mod_p2 81414 81411 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81411 81414 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_81411_81414
def row_81782_81785 :
    HasPrimeWithExpOne (S_val 81782 81785) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 81782 81785 ∧ ¬ p ∣ (81785 - 81782) ∧
      ∃ (hNotC : ¬ p ∣ 81785) (hNotB : ¬ p ∣ 81782),
        order_of_C_B_inv_mod_p2 81785 81782 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 81782 81785 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_81782_81785
def row_82156_82159 :
    HasPrimeWithExpOne (S_val 82156 82159) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82156 82159 ∧ ¬ p ∣ (82159 - 82156) ∧
      ∃ (hNotC : ¬ p ∣ 82159) (hNotB : ¬ p ∣ 82156),
        order_of_C_B_inv_mod_p2 82159 82156 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82156 82159 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_82156_82159
def row_82540_82543 :
    HasPrimeWithExpOne (S_val 82540 82543) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82540 82543 ∧ ¬ p ∣ (82543 - 82540) ∧
      ∃ (hNotC : ¬ p ∣ 82543) (hNotB : ¬ p ∣ 82540),
        order_of_C_B_inv_mod_p2 82543 82540 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82540 82543 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_82540_82543
def row_82938_82941 :
    HasPrimeWithExpOne (S_val 82938 82941) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 82938 82941 ∧ ¬ p ∣ (82941 - 82938) ∧
      ∃ (hNotC : ¬ p ∣ 82941) (hNotB : ¬ p ∣ 82938),
        order_of_C_B_inv_mod_p2 82941 82938 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 82938 82941 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_82938_82941
def row_83321_83324 :
    HasPrimeWithExpOne (S_val 83321 83324) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83321 83324 ∧ ¬ p ∣ (83324 - 83321) ∧
      ∃ (hNotC : ¬ p ∣ 83324) (hNotB : ¬ p ∣ 83321),
        order_of_C_B_inv_mod_p2 83324 83321 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83321 83324 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_83321_83324
def row_83714_83717 :
    HasPrimeWithExpOne (S_val 83714 83717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 83714 83717 ∧ ¬ p ∣ (83717 - 83714) ∧
      ∃ (hNotC : ¬ p ∣ 83717) (hNotB : ¬ p ∣ 83714),
        order_of_C_B_inv_mod_p2 83717 83714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 83714 83717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_83714_83717
def row_84116_84119 :
    HasPrimeWithExpOne (S_val 84116 84119) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84116 84119 ∧ ¬ p ∣ (84119 - 84116) ∧
      ∃ (hNotC : ¬ p ∣ 84119) (hNotB : ¬ p ∣ 84116),
        order_of_C_B_inv_mod_p2 84119 84116 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84116 84119 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_84116_84119
def row_84499_84502 :
    HasPrimeWithExpOne (S_val 84499 84502) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84499 84502 ∧ ¬ p ∣ (84502 - 84499) ∧
      ∃ (hNotC : ¬ p ∣ 84502) (hNotB : ¬ p ∣ 84499),
        order_of_C_B_inv_mod_p2 84502 84499 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84499 84502 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_84499_84502
def row_84888_84891 :
    HasPrimeWithExpOne (S_val 84888 84891) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 84888 84891 ∧ ¬ p ∣ (84891 - 84888) ∧
      ∃ (hNotC : ¬ p ∣ 84891) (hNotB : ¬ p ∣ 84888),
        order_of_C_B_inv_mod_p2 84891 84888 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 84888 84891 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_84888_84891
def row_85269_85272 :
    HasPrimeWithExpOne (S_val 85269 85272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85269 85272 ∧ ¬ p ∣ (85272 - 85269) ∧
      ∃ (hNotC : ¬ p ∣ 85272) (hNotB : ¬ p ∣ 85269),
        order_of_C_B_inv_mod_p2 85272 85269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85269 85272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_85269_85272
def row_85662_85665 :
    HasPrimeWithExpOne (S_val 85662 85665) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 85662 85665 ∧ ¬ p ∣ (85665 - 85662) ∧
      ∃ (hNotC : ¬ p ∣ 85665) (hNotB : ¬ p ∣ 85662),
        order_of_C_B_inv_mod_p2 85665 85662 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 85662 85665 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_85662_85665
def row_86026_86029 :
    HasPrimeWithExpOne (S_val 86026 86029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86026 86029 ∧ ¬ p ∣ (86029 - 86026) ∧
      ∃ (hNotC : ¬ p ∣ 86029) (hNotB : ¬ p ∣ 86026),
        order_of_C_B_inv_mod_p2 86029 86026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86026 86029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_86026_86029
def row_86409_86412 :
    HasPrimeWithExpOne (S_val 86409 86412) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86409 86412 ∧ ¬ p ∣ (86412 - 86409) ∧
      ∃ (hNotC : ¬ p ∣ 86412) (hNotB : ¬ p ∣ 86409),
        order_of_C_B_inv_mod_p2 86412 86409 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86409 86412 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_86409_86412
def row_86798_86801 :
    HasPrimeWithExpOne (S_val 86798 86801) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 86798 86801 ∧ ¬ p ∣ (86801 - 86798) ∧
      ∃ (hNotC : ¬ p ∣ 86801) (hNotB : ¬ p ∣ 86798),
        order_of_C_B_inv_mod_p2 86801 86798 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 86798 86801 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_86798_86801
def row_87199_87202 :
    HasPrimeWithExpOne (S_val 87199 87202) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87199 87202 ∧ ¬ p ∣ (87202 - 87199) ∧
      ∃ (hNotC : ¬ p ∣ 87202) (hNotB : ¬ p ∣ 87199),
        order_of_C_B_inv_mod_p2 87202 87199 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87199 87202 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_87199_87202
def row_87582_87585 :
    HasPrimeWithExpOne (S_val 87582 87585) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87582 87585 ∧ ¬ p ∣ (87585 - 87582) ∧
      ∃ (hNotC : ¬ p ∣ 87585) (hNotB : ¬ p ∣ 87582),
        order_of_C_B_inv_mod_p2 87585 87582 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87582 87585 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_87582_87585
def row_87972_87975 :
    HasPrimeWithExpOne (S_val 87972 87975) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 87972 87975 ∧ ¬ p ∣ (87975 - 87972) ∧
      ∃ (hNotC : ¬ p ∣ 87975) (hNotB : ¬ p ∣ 87972),
        order_of_C_B_inv_mod_p2 87975 87972 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 87972 87975 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_87972_87975
def row_88355_88358 :
    HasPrimeWithExpOne (S_val 88355 88358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88355 88358 ∧ ¬ p ∣ (88358 - 88355) ∧
      ∃ (hNotC : ¬ p ∣ 88358) (hNotB : ¬ p ∣ 88355),
        order_of_C_B_inv_mod_p2 88358 88355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88355 88358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_88355_88358
def row_88772_88775 :
    HasPrimeWithExpOne (S_val 88772 88775) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 88772 88775 ∧ ¬ p ∣ (88775 - 88772) ∧
      ∃ (hNotC : ¬ p ∣ 88775) (hNotB : ¬ p ∣ 88772),
        order_of_C_B_inv_mod_p2 88775 88772 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 88772 88775 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_88772_88775
def row_89151_89154 :
    HasPrimeWithExpOne (S_val 89151 89154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89151 89154 ∧ ¬ p ∣ (89154 - 89151) ∧
      ∃ (hNotC : ¬ p ∣ 89154) (hNotB : ¬ p ∣ 89151),
        order_of_C_B_inv_mod_p2 89154 89151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89151 89154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_89151_89154
def row_89560_89563 :
    HasPrimeWithExpOne (S_val 89560 89563) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89560 89563 ∧ ¬ p ∣ (89563 - 89560) ∧
      ∃ (hNotC : ¬ p ∣ 89563) (hNotB : ¬ p ∣ 89560),
        order_of_C_B_inv_mod_p2 89563 89560 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89560 89563 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_89560_89563
def row_89934_89937 :
    HasPrimeWithExpOne (S_val 89934 89937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 89934 89937 ∧ ¬ p ∣ (89937 - 89934) ∧
      ∃ (hNotC : ¬ p ∣ 89937) (hNotB : ¬ p ∣ 89934),
        order_of_C_B_inv_mod_p2 89937 89934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 89934 89937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_89934_89937
def row_90331_90334 :
    HasPrimeWithExpOne (S_val 90331 90334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90331 90334 ∧ ¬ p ∣ (90334 - 90331) ∧
      ∃ (hNotC : ¬ p ∣ 90334) (hNotB : ¬ p ∣ 90331),
        order_of_C_B_inv_mod_p2 90334 90331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90331 90334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_90331_90334
def row_90707_90710 :
    HasPrimeWithExpOne (S_val 90707 90710) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 90707 90710 ∧ ¬ p ∣ (90710 - 90707) ∧
      ∃ (hNotC : ¬ p ∣ 90710) (hNotB : ¬ p ∣ 90707),
        order_of_C_B_inv_mod_p2 90710 90707 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 90707 90710 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_90707_90710
def row_91097_91100 :
    HasPrimeWithExpOne (S_val 91097 91100) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91097 91100 ∧ ¬ p ∣ (91100 - 91097) ∧
      ∃ (hNotC : ¬ p ∣ 91100) (hNotB : ¬ p ∣ 91097),
        order_of_C_B_inv_mod_p2 91100 91097 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91097 91100 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_91097_91100
def row_91473_91476 :
    HasPrimeWithExpOne (S_val 91473 91476) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91473 91476 ∧ ¬ p ∣ (91476 - 91473) ∧
      ∃ (hNotC : ¬ p ∣ 91476) (hNotB : ¬ p ∣ 91473),
        order_of_C_B_inv_mod_p2 91476 91473 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91473 91476 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_91473_91476
def row_91853_91856 :
    HasPrimeWithExpOne (S_val 91853 91856) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 91853 91856 ∧ ¬ p ∣ (91856 - 91853) ∧
      ∃ (hNotC : ¬ p ∣ 91856) (hNotB : ¬ p ∣ 91853),
        order_of_C_B_inv_mod_p2 91856 91853 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 91853 91856 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_91853_91856
def row_92255_92258 :
    HasPrimeWithExpOne (S_val 92255 92258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92255 92258 ∧ ¬ p ∣ (92258 - 92255) ∧
      ∃ (hNotC : ¬ p ∣ 92258) (hNotB : ¬ p ∣ 92255),
        order_of_C_B_inv_mod_p2 92258 92255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92255 92258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_92255_92258
def row_92611_92614 :
    HasPrimeWithExpOne (S_val 92611 92614) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 92611 92614 ∧ ¬ p ∣ (92614 - 92611) ∧
      ∃ (hNotC : ¬ p ∣ 92614) (hNotB : ¬ p ∣ 92611),
        order_of_C_B_inv_mod_p2 92614 92611 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 92611 92614 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_92611_92614
def row_93019_93022 :
    HasPrimeWithExpOne (S_val 93019 93022) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93019 93022 ∧ ¬ p ∣ (93022 - 93019) ∧
      ∃ (hNotC : ¬ p ∣ 93022) (hNotB : ¬ p ∣ 93019),
        order_of_C_B_inv_mod_p2 93022 93019 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93019 93022 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_93019_93022
def row_93426_93429 :
    HasPrimeWithExpOne (S_val 93426 93429) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93426 93429 ∧ ¬ p ∣ (93429 - 93426) ∧
      ∃ (hNotC : ¬ p ∣ 93429) (hNotB : ¬ p ∣ 93426),
        order_of_C_B_inv_mod_p2 93429 93426 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93426 93429 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_93426_93429
def row_93802_93805 :
    HasPrimeWithExpOne (S_val 93802 93805) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 93802 93805 ∧ ¬ p ∣ (93805 - 93802) ∧
      ∃ (hNotC : ¬ p ∣ 93805) (hNotB : ¬ p ∣ 93802),
        order_of_C_B_inv_mod_p2 93805 93802 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 93802 93805 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_93802_93805
def row_94186_94189 :
    HasPrimeWithExpOne (S_val 94186 94189) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94186 94189 ∧ ¬ p ∣ (94189 - 94186) ∧
      ∃ (hNotC : ¬ p ∣ 94189) (hNotB : ¬ p ∣ 94186),
        order_of_C_B_inv_mod_p2 94189 94186 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94186 94189 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_94186_94189
def row_94570_94573 :
    HasPrimeWithExpOne (S_val 94570 94573) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94570 94573 ∧ ¬ p ∣ (94573 - 94570) ∧
      ∃ (hNotC : ¬ p ∣ 94573) (hNotB : ¬ p ∣ 94570),
        order_of_C_B_inv_mod_p2 94573 94570 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94570 94573 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_94570_94573
def row_94968_94971 :
    HasPrimeWithExpOne (S_val 94968 94971) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 94968 94971 ∧ ¬ p ∣ (94971 - 94968) ∧
      ∃ (hNotC : ¬ p ∣ 94971) (hNotB : ¬ p ∣ 94968),
        order_of_C_B_inv_mod_p2 94971 94968 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 94968 94971 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_94968_94971
def row_95360_95363 :
    HasPrimeWithExpOne (S_val 95360 95363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95360 95363 ∧ ¬ p ∣ (95363 - 95360) ∧
      ∃ (hNotC : ¬ p ∣ 95363) (hNotB : ¬ p ∣ 95360),
        order_of_C_B_inv_mod_p2 95363 95360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95360 95363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_95360_95363
def row_95736_95739 :
    HasPrimeWithExpOne (S_val 95736 95739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 95736 95739 ∧ ¬ p ∣ (95739 - 95736) ∧
      ∃ (hNotC : ¬ p ∣ 95739) (hNotB : ¬ p ∣ 95736),
        order_of_C_B_inv_mod_p2 95739 95736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 95736 95739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_95736_95739
def row_96128_96131 :
    HasPrimeWithExpOne (S_val 96128 96131) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96128 96131 ∧ ¬ p ∣ (96131 - 96128) ∧
      ∃ (hNotC : ¬ p ∣ 96131) (hNotB : ¬ p ∣ 96128),
        order_of_C_B_inv_mod_p2 96131 96128 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96128 96131 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_96128_96131
def row_96522_96525 :
    HasPrimeWithExpOne (S_val 96522 96525) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96522 96525 ∧ ¬ p ∣ (96525 - 96522) ∧
      ∃ (hNotC : ¬ p ∣ 96525) (hNotB : ¬ p ∣ 96522),
        order_of_C_B_inv_mod_p2 96525 96522 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96522 96525 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_96522_96525
def row_96930_96933 :
    HasPrimeWithExpOne (S_val 96930 96933) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 96930 96933 ∧ ¬ p ∣ (96933 - 96930) ∧
      ∃ (hNotC : ¬ p ∣ 96933) (hNotB : ¬ p ∣ 96930),
        order_of_C_B_inv_mod_p2 96933 96930 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 96930 96933 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_96930_96933
def row_97319_97322 :
    HasPrimeWithExpOne (S_val 97319 97322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97319 97322 ∧ ¬ p ∣ (97322 - 97319) ∧
      ∃ (hNotC : ¬ p ∣ 97322) (hNotB : ¬ p ∣ 97319),
        order_of_C_B_inv_mod_p2 97322 97319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97319 97322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_97319_97322
def row_97723_97726 :
    HasPrimeWithExpOne (S_val 97723 97726) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 97723 97726 ∧ ¬ p ∣ (97726 - 97723) ∧
      ∃ (hNotC : ¬ p ∣ 97726) (hNotB : ¬ p ∣ 97723),
        order_of_C_B_inv_mod_p2 97726 97723 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 97723 97726 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_97723_97726
def row_98109_98112 :
    HasPrimeWithExpOne (S_val 98109 98112) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98109 98112 ∧ ¬ p ∣ (98112 - 98109) ∧
      ∃ (hNotC : ¬ p ∣ 98112) (hNotB : ¬ p ∣ 98109),
        order_of_C_B_inv_mod_p2 98112 98109 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98109 98112 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_98109_98112
def row_98489_98492 :
    HasPrimeWithExpOne (S_val 98489 98492) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98489 98492 ∧ ¬ p ∣ (98492 - 98489) ∧
      ∃ (hNotC : ¬ p ∣ 98492) (hNotB : ¬ p ∣ 98489),
        order_of_C_B_inv_mod_p2 98492 98489 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98489 98492 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_98489_98492
def row_98851_98854 :
    HasPrimeWithExpOne (S_val 98851 98854) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 98851 98854 ∧ ¬ p ∣ (98854 - 98851) ∧
      ∃ (hNotC : ¬ p ∣ 98854) (hNotB : ¬ p ∣ 98851),
        order_of_C_B_inv_mod_p2 98854 98851 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 98851 98854 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_98851_98854
def row_99235_99238 :
    HasPrimeWithExpOne (S_val 99235 99238) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99235 99238 ∧ ¬ p ∣ (99238 - 99235) ∧
      ∃ (hNotC : ¬ p ∣ 99238) (hNotB : ¬ p ∣ 99235),
        order_of_C_B_inv_mod_p2 99238 99235 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99235 99238 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_99235_99238
def row_99615_99618 :
    HasPrimeWithExpOne (S_val 99615 99618) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 99615 99618 ∧ ¬ p ∣ (99618 - 99615) ∧
      ∃ (hNotC : ¬ p ∣ 99618) (hNotB : ¬ p ∣ 99615),
        order_of_C_B_inv_mod_p2 99618 99615 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 99615 99618 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_99615_99618
def row_100000_100003 :
    HasPrimeWithExpOne (S_val 100000 100003) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100000 100003 ∧ ¬ p ∣ (100003 - 100000) ∧
      ∃ (hNotC : ¬ p ∣ 100003) (hNotB : ¬ p ∣ 100000),
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100000 100003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_100000_100003
def row_100355_100358 :
    HasPrimeWithExpOne (S_val 100355 100358) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100355 100358 ∧ ¬ p ∣ (100358 - 100355) ∧
      ∃ (hNotC : ¬ p ∣ 100358) (hNotB : ¬ p ∣ 100355),
        order_of_C_B_inv_mod_p2 100358 100355 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100355 100358 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_100355_100358
def row_100709_100712 :
    HasPrimeWithExpOne (S_val 100709 100712) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100709 100712 ∧ ¬ p ∣ (100712 - 100709) ∧
      ∃ (hNotC : ¬ p ∣ 100712) (hNotB : ¬ p ∣ 100709),
        order_of_C_B_inv_mod_p2 100712 100709 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 100709 100712 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_100709_100712
def row_101063_101066 :
    HasPrimeWithExpOne (S_val 101063 101066) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101063 101066 ∧ ¬ p ∣ (101066 - 101063) ∧
      ∃ (hNotC : ¬ p ∣ 101066) (hNotB : ¬ p ∣ 101063),
        order_of_C_B_inv_mod_p2 101066 101063 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101063 101066 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_101063_101066
def row_101419_101422 :
    HasPrimeWithExpOne (S_val 101419 101422) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101419 101422 ∧ ¬ p ∣ (101422 - 101419) ∧
      ∃ (hNotC : ¬ p ∣ 101422) (hNotB : ¬ p ∣ 101419),
        order_of_C_B_inv_mod_p2 101422 101419 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101419 101422 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_101419_101422
def row_101773_101776 :
    HasPrimeWithExpOne (S_val 101773 101776) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101773 101776 ∧ ¬ p ∣ (101776 - 101773) ∧
      ∃ (hNotC : ¬ p ∣ 101776) (hNotB : ¬ p ∣ 101773),
        order_of_C_B_inv_mod_p2 101776 101773 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 101773 101776 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_101773_101776
def row_102126_102129 :
    HasPrimeWithExpOne (S_val 102126 102129) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102126 102129 ∧ ¬ p ∣ (102129 - 102126) ∧
      ∃ (hNotC : ¬ p ∣ 102129) (hNotB : ¬ p ∣ 102126),
        order_of_C_B_inv_mod_p2 102129 102126 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102126 102129 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_102126_102129
def row_102483_102486 :
    HasPrimeWithExpOne (S_val 102483 102486) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102483 102486 ∧ ¬ p ∣ (102486 - 102483) ∧
      ∃ (hNotC : ¬ p ∣ 102486) (hNotB : ¬ p ∣ 102483),
        order_of_C_B_inv_mod_p2 102486 102483 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102483 102486 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_102483_102486
def row_102836_102839 :
    HasPrimeWithExpOne (S_val 102836 102839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102836 102839 ∧ ¬ p ∣ (102839 - 102836) ∧
      ∃ (hNotC : ¬ p ∣ 102839) (hNotB : ¬ p ∣ 102836),
        order_of_C_B_inv_mod_p2 102839 102836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 102836 102839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_102836_102839
def row_103192_103195 :
    HasPrimeWithExpOne (S_val 103192 103195) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103192 103195 ∧ ¬ p ∣ (103195 - 103192) ∧
      ∃ (hNotC : ¬ p ∣ 103195) (hNotB : ¬ p ∣ 103192),
        order_of_C_B_inv_mod_p2 103195 103192 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103192 103195 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_103192_103195
def row_103545_103548 :
    HasPrimeWithExpOne (S_val 103545 103548) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103545 103548 ∧ ¬ p ∣ (103548 - 103545) ∧
      ∃ (hNotC : ¬ p ∣ 103548) (hNotB : ¬ p ∣ 103545),
        order_of_C_B_inv_mod_p2 103548 103545 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103545 103548 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_103545_103548
def row_103900_103903 :
    HasPrimeWithExpOne (S_val 103900 103903) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103900 103903 ∧ ¬ p ∣ (103903 - 103900) ∧
      ∃ (hNotC : ¬ p ∣ 103903) (hNotB : ¬ p ∣ 103900),
        order_of_C_B_inv_mod_p2 103903 103900 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 103900 103903 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_103900_103903
def row_104255_104258 :
    HasPrimeWithExpOne (S_val 104255 104258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104255 104258 ∧ ¬ p ∣ (104258 - 104255) ∧
      ∃ (hNotC : ¬ p ∣ 104258) (hNotB : ¬ p ∣ 104255),
        order_of_C_B_inv_mod_p2 104258 104255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104255 104258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_104255_104258
def row_104609_104612 :
    HasPrimeWithExpOne (S_val 104609 104612) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104609 104612 ∧ ¬ p ∣ (104612 - 104609) ∧
      ∃ (hNotC : ¬ p ∣ 104612) (hNotB : ¬ p ∣ 104609),
        order_of_C_B_inv_mod_p2 104612 104609 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104609 104612 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_104609_104612
def row_104965_104968 :
    HasPrimeWithExpOne (S_val 104965 104968) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104965 104968 ∧ ¬ p ∣ (104968 - 104965) ∧
      ∃ (hNotC : ¬ p ∣ 104968) (hNotB : ¬ p ∣ 104965),
        order_of_C_B_inv_mod_p2 104968 104965 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 104965 104968 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_104965_104968
def row_105319_105322 :
    HasPrimeWithExpOne (S_val 105319 105322) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105319 105322 ∧ ¬ p ∣ (105322 - 105319) ∧
      ∃ (hNotC : ¬ p ∣ 105322) (hNotB : ¬ p ∣ 105319),
        order_of_C_B_inv_mod_p2 105322 105319 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105319 105322 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_105319_105322
def row_105673_105676 :
    HasPrimeWithExpOne (S_val 105673 105676) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105673 105676 ∧ ¬ p ∣ (105676 - 105673) ∧
      ∃ (hNotC : ¬ p ∣ 105676) (hNotB : ¬ p ∣ 105673),
        order_of_C_B_inv_mod_p2 105676 105673 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 105673 105676 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_105673_105676
def row_106027_106030 :
    HasPrimeWithExpOne (S_val 106027 106030) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106027 106030 ∧ ¬ p ∣ (106030 - 106027) ∧
      ∃ (hNotC : ¬ p ∣ 106030) (hNotB : ¬ p ∣ 106027),
        order_of_C_B_inv_mod_p2 106030 106027 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106027 106030 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_106027_106030
def row_106381_106384 :
    HasPrimeWithExpOne (S_val 106381 106384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106381 106384 ∧ ¬ p ∣ (106384 - 106381) ∧
      ∃ (hNotC : ¬ p ∣ 106384) (hNotB : ¬ p ∣ 106381),
        order_of_C_B_inv_mod_p2 106384 106381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106381 106384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_106381_106384
def row_106738_106741 :
    HasPrimeWithExpOne (S_val 106738 106741) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106738 106741 ∧ ¬ p ∣ (106741 - 106738) ∧
      ∃ (hNotC : ¬ p ∣ 106741) (hNotB : ¬ p ∣ 106738),
        order_of_C_B_inv_mod_p2 106741 106738 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 106738 106741 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_106738_106741
def row_107092_107095 :
    HasPrimeWithExpOne (S_val 107092 107095) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107092 107095 ∧ ¬ p ∣ (107095 - 107092) ∧
      ∃ (hNotC : ¬ p ∣ 107095) (hNotB : ¬ p ∣ 107092),
        order_of_C_B_inv_mod_p2 107095 107092 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107092 107095 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_107092_107095
def row_107444_107447 :
    HasPrimeWithExpOne (S_val 107444 107447) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107444 107447 ∧ ¬ p ∣ (107447 - 107444) ∧
      ∃ (hNotC : ¬ p ∣ 107447) (hNotB : ¬ p ∣ 107444),
        order_of_C_B_inv_mod_p2 107447 107444 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107444 107447 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_107444_107447
def row_107801_107804 :
    HasPrimeWithExpOne (S_val 107801 107804) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107801 107804 ∧ ¬ p ∣ (107804 - 107801) ∧
      ∃ (hNotC : ¬ p ∣ 107804) (hNotB : ¬ p ∣ 107801),
        order_of_C_B_inv_mod_p2 107804 107801 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 107801 107804 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_107801_107804
def row_108155_108158 :
    HasPrimeWithExpOne (S_val 108155 108158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108155 108158 ∧ ¬ p ∣ (108158 - 108155) ∧
      ∃ (hNotC : ¬ p ∣ 108158) (hNotB : ¬ p ∣ 108155),
        order_of_C_B_inv_mod_p2 108158 108155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108155 108158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_108155_108158
def row_108511_108514 :
    HasPrimeWithExpOne (S_val 108511 108514) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108511 108514 ∧ ¬ p ∣ (108514 - 108511) ∧
      ∃ (hNotC : ¬ p ∣ 108514) (hNotB : ¬ p ∣ 108511),
        order_of_C_B_inv_mod_p2 108514 108511 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108511 108514 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_108511_108514
def row_108864_108867 :
    HasPrimeWithExpOne (S_val 108864 108867) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108864 108867 ∧ ¬ p ∣ (108867 - 108864) ∧
      ∃ (hNotC : ¬ p ∣ 108867) (hNotB : ¬ p ∣ 108864),
        order_of_C_B_inv_mod_p2 108867 108864 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 108864 108867 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_108864_108867
def row_109219_109222 :
    HasPrimeWithExpOne (S_val 109219 109222) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109219 109222 ∧ ¬ p ∣ (109222 - 109219) ∧
      ∃ (hNotC : ¬ p ∣ 109222) (hNotB : ¬ p ∣ 109219),
        order_of_C_B_inv_mod_p2 109222 109219 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109219 109222 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_109219_109222
def row_109575_109578 :
    HasPrimeWithExpOne (S_val 109575 109578) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109575 109578 ∧ ¬ p ∣ (109578 - 109575) ∧
      ∃ (hNotC : ¬ p ∣ 109578) (hNotB : ¬ p ∣ 109575),
        order_of_C_B_inv_mod_p2 109578 109575 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109575 109578 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_109575_109578
def row_109928_109931 :
    HasPrimeWithExpOne (S_val 109928 109931) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109928 109931 ∧ ¬ p ∣ (109931 - 109928) ∧
      ∃ (hNotC : ¬ p ∣ 109931) (hNotB : ¬ p ∣ 109928),
        order_of_C_B_inv_mod_p2 109931 109928 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 109928 109931 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_109928_109931
def row_110284_110287 :
    HasPrimeWithExpOne (S_val 110284 110287) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110284 110287 ∧ ¬ p ∣ (110287 - 110284) ∧
      ∃ (hNotC : ¬ p ∣ 110287) (hNotB : ¬ p ∣ 110284),
        order_of_C_B_inv_mod_p2 110287 110284 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110284 110287 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_110284_110287
def row_110637_110640 :
    HasPrimeWithExpOne (S_val 110637 110640) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110637 110640 ∧ ¬ p ∣ (110640 - 110637) ∧
      ∃ (hNotC : ¬ p ∣ 110640) (hNotB : ¬ p ∣ 110637),
        order_of_C_B_inv_mod_p2 110640 110637 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110637 110640 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_110637_110640
def row_110992_110995 :
    HasPrimeWithExpOne (S_val 110992 110995) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110992 110995 ∧ ¬ p ∣ (110995 - 110992) ∧
      ∃ (hNotC : ¬ p ∣ 110995) (hNotB : ¬ p ∣ 110992),
        order_of_C_B_inv_mod_p2 110995 110992 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 110992 110995 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_110992_110995
def row_111347_111350 :
    HasPrimeWithExpOne (S_val 111347 111350) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111347 111350 ∧ ¬ p ∣ (111350 - 111347) ∧
      ∃ (hNotC : ¬ p ∣ 111350) (hNotB : ¬ p ∣ 111347),
        order_of_C_B_inv_mod_p2 111350 111347 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111347 111350 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_111347_111350
def row_111702_111705 :
    HasPrimeWithExpOne (S_val 111702 111705) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111702 111705 ∧ ¬ p ∣ (111705 - 111702) ∧
      ∃ (hNotC : ¬ p ∣ 111705) (hNotB : ¬ p ∣ 111702),
        order_of_C_B_inv_mod_p2 111705 111702 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 111702 111705 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_111702_111705
def row_112056_112059 :
    HasPrimeWithExpOne (S_val 112056 112059) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112056 112059 ∧ ¬ p ∣ (112059 - 112056) ∧
      ∃ (hNotC : ¬ p ∣ 112059) (hNotB : ¬ p ∣ 112056),
        order_of_C_B_inv_mod_p2 112059 112056 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112056 112059 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_112056_112059
def row_112410_112413 :
    HasPrimeWithExpOne (S_val 112410 112413) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112410 112413 ∧ ¬ p ∣ (112413 - 112410) ∧
      ∃ (hNotC : ¬ p ∣ 112413) (hNotB : ¬ p ∣ 112410),
        order_of_C_B_inv_mod_p2 112413 112410 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112410 112413 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_112410_112413
def row_112767_112770 :
    HasPrimeWithExpOne (S_val 112767 112770) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112767 112770 ∧ ¬ p ∣ (112770 - 112767) ∧
      ∃ (hNotC : ¬ p ∣ 112770) (hNotB : ¬ p ∣ 112767),
        order_of_C_B_inv_mod_p2 112770 112767 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 112767 112770 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_112767_112770
def row_113120_113123 :
    HasPrimeWithExpOne (S_val 113120 113123) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113120 113123 ∧ ¬ p ∣ (113123 - 113120) ∧
      ∃ (hNotC : ¬ p ∣ 113123) (hNotB : ¬ p ∣ 113120),
        order_of_C_B_inv_mod_p2 113123 113120 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113120 113123 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_113120_113123
def row_113475_113478 :
    HasPrimeWithExpOne (S_val 113475 113478) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113475 113478 ∧ ¬ p ∣ (113478 - 113475) ∧
      ∃ (hNotC : ¬ p ∣ 113478) (hNotB : ¬ p ∣ 113475),
        order_of_C_B_inv_mod_p2 113478 113475 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113475 113478 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_113475_113478
def row_113828_113831 :
    HasPrimeWithExpOne (S_val 113828 113831) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113828 113831 ∧ ¬ p ∣ (113831 - 113828) ∧
      ∃ (hNotC : ¬ p ∣ 113831) (hNotB : ¬ p ∣ 113828),
        order_of_C_B_inv_mod_p2 113831 113828 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 113828 113831 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_113828_113831
def row_114182_114185 :
    HasPrimeWithExpOne (S_val 114182 114185) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114182 114185 ∧ ¬ p ∣ (114185 - 114182) ∧
      ∃ (hNotC : ¬ p ∣ 114185) (hNotB : ¬ p ∣ 114182),
        order_of_C_B_inv_mod_p2 114185 114182 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114182 114185 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_114182_114185
def row_114538_114541 :
    HasPrimeWithExpOne (S_val 114538 114541) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114538 114541 ∧ ¬ p ∣ (114541 - 114538) ∧
      ∃ (hNotC : ¬ p ∣ 114541) (hNotB : ¬ p ∣ 114538),
        order_of_C_B_inv_mod_p2 114541 114538 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114538 114541 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_114538_114541
def row_114892_114895 :
    HasPrimeWithExpOne (S_val 114892 114895) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114892 114895 ∧ ¬ p ∣ (114895 - 114892) ∧
      ∃ (hNotC : ¬ p ∣ 114895) (hNotB : ¬ p ∣ 114892),
        order_of_C_B_inv_mod_p2 114895 114892 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 114892 114895 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_114892_114895
def row_115246_115249 :
    HasPrimeWithExpOne (S_val 115246 115249) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115246 115249 ∧ ¬ p ∣ (115249 - 115246) ∧
      ∃ (hNotC : ¬ p ∣ 115249) (hNotB : ¬ p ∣ 115246),
        order_of_C_B_inv_mod_p2 115249 115246 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115246 115249 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_115246_115249
def row_115602_115605 :
    HasPrimeWithExpOne (S_val 115602 115605) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115602 115605 ∧ ¬ p ∣ (115605 - 115602) ∧
      ∃ (hNotC : ¬ p ∣ 115605) (hNotB : ¬ p ∣ 115602),
        order_of_C_B_inv_mod_p2 115605 115602 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115602 115605 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_115602_115605
def row_115956_115959 :
    HasPrimeWithExpOne (S_val 115956 115959) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115956 115959 ∧ ¬ p ∣ (115959 - 115956) ∧
      ∃ (hNotC : ¬ p ∣ 115959) (hNotB : ¬ p ∣ 115956),
        order_of_C_B_inv_mod_p2 115959 115956 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 115956 115959 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_115956_115959
def row_116311_116314 :
    HasPrimeWithExpOne (S_val 116311 116314) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116311 116314 ∧ ¬ p ∣ (116314 - 116311) ∧
      ∃ (hNotC : ¬ p ∣ 116314) (hNotB : ¬ p ∣ 116311),
        order_of_C_B_inv_mod_p2 116314 116311 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116311 116314 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_116311_116314
def row_116666_116669 :
    HasPrimeWithExpOne (S_val 116666 116669) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116666 116669 ∧ ¬ p ∣ (116669 - 116666) ∧
      ∃ (hNotC : ¬ p ∣ 116669) (hNotB : ¬ p ∣ 116666),
        order_of_C_B_inv_mod_p2 116669 116666 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 116666 116669 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_116666_116669
def row_117021_117024 :
    HasPrimeWithExpOne (S_val 117021 117024) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117021 117024 ∧ ¬ p ∣ (117024 - 117021) ∧
      ∃ (hNotC : ¬ p ∣ 117024) (hNotB : ¬ p ∣ 117021),
        order_of_C_B_inv_mod_p2 117024 117021 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117021 117024 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_117021_117024
def row_117374_117377 :
    HasPrimeWithExpOne (S_val 117374 117377) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117374 117377 ∧ ¬ p ∣ (117377 - 117374) ∧
      ∃ (hNotC : ¬ p ∣ 117377) (hNotB : ¬ p ∣ 117374),
        order_of_C_B_inv_mod_p2 117377 117374 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117374 117377 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_117374_117377
def row_117728_117731 :
    HasPrimeWithExpOne (S_val 117728 117731) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117728 117731 ∧ ¬ p ∣ (117731 - 117728) ∧
      ∃ (hNotC : ¬ p ∣ 117731) (hNotB : ¬ p ∣ 117728),
        order_of_C_B_inv_mod_p2 117731 117728 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 117728 117731 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_117728_117731
def row_118084_118087 :
    HasPrimeWithExpOne (S_val 118084 118087) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118084 118087 ∧ ¬ p ∣ (118087 - 118084) ∧
      ∃ (hNotC : ¬ p ∣ 118087) (hNotB : ¬ p ∣ 118084),
        order_of_C_B_inv_mod_p2 118087 118084 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118084 118087 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_118084_118087
def row_118439_118442 :
    HasPrimeWithExpOne (S_val 118439 118442) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118439 118442 ∧ ¬ p ∣ (118442 - 118439) ∧
      ∃ (hNotC : ¬ p ∣ 118442) (hNotB : ¬ p ∣ 118439),
        order_of_C_B_inv_mod_p2 118442 118439 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118439 118442 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_118439_118442
def row_118795_118798 :
    HasPrimeWithExpOne (S_val 118795 118798) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118795 118798 ∧ ¬ p ∣ (118798 - 118795) ∧
      ∃ (hNotC : ¬ p ∣ 118798) (hNotB : ¬ p ∣ 118795),
        order_of_C_B_inv_mod_p2 118798 118795 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 118795 118798 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_118795_118798
def row_119148_119151 :
    HasPrimeWithExpOne (S_val 119148 119151) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119148 119151 ∧ ¬ p ∣ (119151 - 119148) ∧
      ∃ (hNotC : ¬ p ∣ 119151) (hNotB : ¬ p ∣ 119148),
        order_of_C_B_inv_mod_p2 119151 119148 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119148 119151 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_119148_119151
def row_119502_119505 :
    HasPrimeWithExpOne (S_val 119502 119505) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119502 119505 ∧ ¬ p ∣ (119505 - 119502) ∧
      ∃ (hNotC : ¬ p ∣ 119505) (hNotB : ¬ p ∣ 119502),
        order_of_C_B_inv_mod_p2 119505 119502 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119502 119505 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_119502_119505
def row_119857_119860 :
    HasPrimeWithExpOne (S_val 119857 119860) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119857 119860 ∧ ¬ p ∣ (119860 - 119857) ∧
      ∃ (hNotC : ¬ p ∣ 119860) (hNotB : ¬ p ∣ 119857),
        order_of_C_B_inv_mod_p2 119860 119857 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 119857 119860 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_119857_119860
def row_120212_120215 :
    HasPrimeWithExpOne (S_val 120212 120215) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120212 120215 ∧ ¬ p ∣ (120215 - 120212) ∧
      ∃ (hNotC : ¬ p ∣ 120215) (hNotB : ¬ p ∣ 120212),
        order_of_C_B_inv_mod_p2 120215 120212 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120212 120215 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_120212_120215
def row_120566_120569 :
    HasPrimeWithExpOne (S_val 120566 120569) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120566 120569 ∧ ¬ p ∣ (120569 - 120566) ∧
      ∃ (hNotC : ¬ p ∣ 120569) (hNotB : ¬ p ∣ 120566),
        order_of_C_B_inv_mod_p2 120569 120566 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120566 120569 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_120566_120569
def row_120922_120925 :
    HasPrimeWithExpOne (S_val 120922 120925) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120922 120925 ∧ ¬ p ∣ (120925 - 120922) ∧
      ∃ (hNotC : ¬ p ∣ 120925) (hNotB : ¬ p ∣ 120922),
        order_of_C_B_inv_mod_p2 120925 120922 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 120922 120925 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_120922_120925
def row_121274_121277 :
    HasPrimeWithExpOne (S_val 121274 121277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121274 121277 ∧ ¬ p ∣ (121277 - 121274) ∧
      ∃ (hNotC : ¬ p ∣ 121277) (hNotB : ¬ p ∣ 121274),
        order_of_C_B_inv_mod_p2 121277 121274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121274 121277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_121274_121277
def row_121628_121631 :
    HasPrimeWithExpOne (S_val 121628 121631) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121628 121631 ∧ ¬ p ∣ (121631 - 121628) ∧
      ∃ (hNotC : ¬ p ∣ 121631) (hNotB : ¬ p ∣ 121628),
        order_of_C_B_inv_mod_p2 121631 121628 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121628 121631 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_121628_121631
def row_121985_121988 :
    HasPrimeWithExpOne (S_val 121985 121988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121985 121988 ∧ ¬ p ∣ (121988 - 121985) ∧
      ∃ (hNotC : ¬ p ∣ 121988) (hNotB : ¬ p ∣ 121985),
        order_of_C_B_inv_mod_p2 121988 121985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 121985 121988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_121985_121988
def row_122337_122340 :
    HasPrimeWithExpOne (S_val 122337 122340) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122337 122340 ∧ ¬ p ∣ (122340 - 122337) ∧
      ∃ (hNotC : ¬ p ∣ 122340) (hNotB : ¬ p ∣ 122337),
        order_of_C_B_inv_mod_p2 122340 122337 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122337 122340 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_122337_122340
def row_122690_122693 :
    HasPrimeWithExpOne (S_val 122690 122693) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122690 122693 ∧ ¬ p ∣ (122693 - 122690) ∧
      ∃ (hNotC : ¬ p ∣ 122693) (hNotB : ¬ p ∣ 122690),
        order_of_C_B_inv_mod_p2 122693 122690 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 122690 122693 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_122690_122693
def row_123047_123050 :
    HasPrimeWithExpOne (S_val 123047 123050) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123047 123050 ∧ ¬ p ∣ (123050 - 123047) ∧
      ∃ (hNotC : ¬ p ∣ 123050) (hNotB : ¬ p ∣ 123047),
        order_of_C_B_inv_mod_p2 123050 123047 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123047 123050 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_123047_123050
def row_123402_123405 :
    HasPrimeWithExpOne (S_val 123402 123405) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123402 123405 ∧ ¬ p ∣ (123405 - 123402) ∧
      ∃ (hNotC : ¬ p ∣ 123405) (hNotB : ¬ p ∣ 123402),
        order_of_C_B_inv_mod_p2 123405 123402 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123402 123405 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_123402_123405
def row_123756_123759 :
    HasPrimeWithExpOne (S_val 123756 123759) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123756 123759 ∧ ¬ p ∣ (123759 - 123756) ∧
      ∃ (hNotC : ¬ p ∣ 123759) (hNotB : ¬ p ∣ 123756),
        order_of_C_B_inv_mod_p2 123759 123756 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 123756 123759 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_123756_123759
def row_124112_124115 :
    HasPrimeWithExpOne (S_val 124112 124115) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124112 124115 ∧ ¬ p ∣ (124115 - 124112) ∧
      ∃ (hNotC : ¬ p ∣ 124115) (hNotB : ¬ p ∣ 124112),
        order_of_C_B_inv_mod_p2 124115 124112 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124112 124115 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_124112_124115
def row_124467_124470 :
    HasPrimeWithExpOne (S_val 124467 124470) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124467 124470 ∧ ¬ p ∣ (124470 - 124467) ∧
      ∃ (hNotC : ¬ p ∣ 124470) (hNotB : ¬ p ∣ 124467),
        order_of_C_B_inv_mod_p2 124470 124467 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124467 124470 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_124467_124470
def row_124821_124824 :
    HasPrimeWithExpOne (S_val 124821 124824) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124821 124824 ∧ ¬ p ∣ (124824 - 124821) ∧
      ∃ (hNotC : ¬ p ∣ 124824) (hNotB : ¬ p ∣ 124821),
        order_of_C_B_inv_mod_p2 124824 124821 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 124821 124824 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_124821_124824
def row_125177_125180 :
    HasPrimeWithExpOne (S_val 125177 125180) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125177 125180 ∧ ¬ p ∣ (125180 - 125177) ∧
      ∃ (hNotC : ¬ p ∣ 125180) (hNotB : ¬ p ∣ 125177),
        order_of_C_B_inv_mod_p2 125180 125177 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125177 125180 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_125177_125180
def row_125527_125530 :
    HasPrimeWithExpOne (S_val 125527 125530) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125527 125530 ∧ ¬ p ∣ (125530 - 125527) ∧
      ∃ (hNotC : ¬ p ∣ 125530) (hNotB : ¬ p ∣ 125527),
        order_of_C_B_inv_mod_p2 125530 125527 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125527 125530 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_125527_125530
def row_125885_125888 :
    HasPrimeWithExpOne (S_val 125885 125888) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125885 125888 ∧ ¬ p ∣ (125888 - 125885) ∧
      ∃ (hNotC : ¬ p ∣ 125888) (hNotB : ¬ p ∣ 125885),
        order_of_C_B_inv_mod_p2 125888 125885 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 125885 125888 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_125885_125888
def row_126239_126242 :
    HasPrimeWithExpOne (S_val 126239 126242) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126239 126242 ∧ ¬ p ∣ (126242 - 126239) ∧
      ∃ (hNotC : ¬ p ∣ 126242) (hNotB : ¬ p ∣ 126239),
        order_of_C_B_inv_mod_p2 126242 126239 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126239 126242 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_126239_126242
def row_126596_126599 :
    HasPrimeWithExpOne (S_val 126596 126599) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126596 126599 ∧ ¬ p ∣ (126599 - 126596) ∧
      ∃ (hNotC : ¬ p ∣ 126599) (hNotB : ¬ p ∣ 126596),
        order_of_C_B_inv_mod_p2 126599 126596 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126596 126599 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_126596_126599
def row_126948_126951 :
    HasPrimeWithExpOne (S_val 126948 126951) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126948 126951 ∧ ¬ p ∣ (126951 - 126948) ∧
      ∃ (hNotC : ¬ p ∣ 126951) (hNotB : ¬ p ∣ 126948),
        order_of_C_B_inv_mod_p2 126951 126948 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 126948 126951 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_126948_126951
def row_127303_127306 :
    HasPrimeWithExpOne (S_val 127303 127306) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127303 127306 ∧ ¬ p ∣ (127306 - 127303) ∧
      ∃ (hNotC : ¬ p ∣ 127306) (hNotB : ¬ p ∣ 127303),
        order_of_C_B_inv_mod_p2 127306 127303 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127303 127306 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_127303_127306
def row_127658_127661 :
    HasPrimeWithExpOne (S_val 127658 127661) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127658 127661 ∧ ¬ p ∣ (127661 - 127658) ∧
      ∃ (hNotC : ¬ p ∣ 127661) (hNotB : ¬ p ∣ 127658),
        order_of_C_B_inv_mod_p2 127661 127658 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 127658 127661 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_127658_127661
def row_128013_128016 :
    HasPrimeWithExpOne (S_val 128013 128016) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128013 128016 ∧ ¬ p ∣ (128016 - 128013) ∧
      ∃ (hNotC : ¬ p ∣ 128016) (hNotB : ¬ p ∣ 128013),
        order_of_C_B_inv_mod_p2 128016 128013 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128013 128016 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_128013_128016
def row_128368_128371 :
    HasPrimeWithExpOne (S_val 128368 128371) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128368 128371 ∧ ¬ p ∣ (128371 - 128368) ∧
      ∃ (hNotC : ¬ p ∣ 128371) (hNotB : ¬ p ∣ 128368),
        order_of_C_B_inv_mod_p2 128371 128368 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128368 128371 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_128368_128371
def row_128721_128724 :
    HasPrimeWithExpOne (S_val 128721 128724) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128721 128724 ∧ ¬ p ∣ (128724 - 128721) ∧
      ∃ (hNotC : ¬ p ∣ 128724) (hNotB : ¬ p ∣ 128721),
        order_of_C_B_inv_mod_p2 128724 128721 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 128721 128724 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_128721_128724
def row_129075_129078 :
    HasPrimeWithExpOne (S_val 129075 129078) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129075 129078 ∧ ¬ p ∣ (129078 - 129075) ∧
      ∃ (hNotC : ¬ p ∣ 129078) (hNotB : ¬ p ∣ 129075),
        order_of_C_B_inv_mod_p2 129078 129075 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129075 129078 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_129075_129078
def row_129431_129434 :
    HasPrimeWithExpOne (S_val 129431 129434) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129431 129434 ∧ ¬ p ∣ (129434 - 129431) ∧
      ∃ (hNotC : ¬ p ∣ 129434) (hNotB : ¬ p ∣ 129431),
        order_of_C_B_inv_mod_p2 129434 129431 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129431 129434 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_129431_129434
def row_129786_129789 :
    HasPrimeWithExpOne (S_val 129786 129789) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129786 129789 ∧ ¬ p ∣ (129789 - 129786) ∧
      ∃ (hNotC : ¬ p ∣ 129789) (hNotB : ¬ p ∣ 129786),
        order_of_C_B_inv_mod_p2 129789 129786 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 129786 129789 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_129786_129789
def row_130141_130144 :
    HasPrimeWithExpOne (S_val 130141 130144) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130141 130144 ∧ ¬ p ∣ (130144 - 130141) ∧
      ∃ (hNotC : ¬ p ∣ 130144) (hNotB : ¬ p ∣ 130141),
        order_of_C_B_inv_mod_p2 130144 130141 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130141 130144 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_130141_130144
def row_130496_130499 :
    HasPrimeWithExpOne (S_val 130496 130499) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130496 130499 ∧ ¬ p ∣ (130499 - 130496) ∧
      ∃ (hNotC : ¬ p ∣ 130499) (hNotB : ¬ p ∣ 130496),
        order_of_C_B_inv_mod_p2 130499 130496 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130496 130499 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_130496_130499
def row_130849_130852 :
    HasPrimeWithExpOne (S_val 130849 130852) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130849 130852 ∧ ¬ p ∣ (130852 - 130849) ∧
      ∃ (hNotC : ¬ p ∣ 130852) (hNotB : ¬ p ∣ 130849),
        order_of_C_B_inv_mod_p2 130852 130849 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 130849 130852 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_130849_130852
def row_131204_131207 :
    HasPrimeWithExpOne (S_val 131204 131207) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131204 131207 ∧ ¬ p ∣ (131207 - 131204) ∧
      ∃ (hNotC : ¬ p ∣ 131207) (hNotB : ¬ p ∣ 131204),
        order_of_C_B_inv_mod_p2 131207 131204 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131204 131207 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_131204_131207
def row_131559_131562 :
    HasPrimeWithExpOne (S_val 131559 131562) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131559 131562 ∧ ¬ p ∣ (131562 - 131559) ∧
      ∃ (hNotC : ¬ p ∣ 131562) (hNotB : ¬ p ∣ 131559),
        order_of_C_B_inv_mod_p2 131562 131559 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131559 131562 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_131559_131562
def row_131913_131916 :
    HasPrimeWithExpOne (S_val 131913 131916) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131913 131916 ∧ ¬ p ∣ (131916 - 131913) ∧
      ∃ (hNotC : ¬ p ∣ 131916) (hNotB : ¬ p ∣ 131913),
        order_of_C_B_inv_mod_p2 131916 131913 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 131913 131916 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_131913_131916
def row_132269_132272 :
    HasPrimeWithExpOne (S_val 132269 132272) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132269 132272 ∧ ¬ p ∣ (132272 - 132269) ∧
      ∃ (hNotC : ¬ p ∣ 132272) (hNotB : ¬ p ∣ 132269),
        order_of_C_B_inv_mod_p2 132272 132269 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132269 132272 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_132269_132272
def row_132624_132627 :
    HasPrimeWithExpOne (S_val 132624 132627) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132624 132627 ∧ ¬ p ∣ (132627 - 132624) ∧
      ∃ (hNotC : ¬ p ∣ 132627) (hNotB : ¬ p ∣ 132624),
        order_of_C_B_inv_mod_p2 132627 132624 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132624 132627 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_132624_132627
def row_132979_132982 :
    HasPrimeWithExpOne (S_val 132979 132982) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132979 132982 ∧ ¬ p ∣ (132982 - 132979) ∧
      ∃ (hNotC : ¬ p ∣ 132982) (hNotB : ¬ p ∣ 132979),
        order_of_C_B_inv_mod_p2 132982 132979 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 132979 132982 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_132979_132982
def row_133332_133335 :
    HasPrimeWithExpOne (S_val 133332 133335) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133332 133335 ∧ ¬ p ∣ (133335 - 133332) ∧
      ∃ (hNotC : ¬ p ∣ 133335) (hNotB : ¬ p ∣ 133332),
        order_of_C_B_inv_mod_p2 133335 133332 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133332 133335 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_133332_133335
def row_133686_133689 :
    HasPrimeWithExpOne (S_val 133686 133689) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133686 133689 ∧ ¬ p ∣ (133689 - 133686) ∧
      ∃ (hNotC : ¬ p ∣ 133689) (hNotB : ¬ p ∣ 133686),
        order_of_C_B_inv_mod_p2 133689 133686 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 133686 133689 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_133686_133689
def row_134041_134044 :
    HasPrimeWithExpOne (S_val 134041 134044) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134041 134044 ∧ ¬ p ∣ (134044 - 134041) ∧
      ∃ (hNotC : ¬ p ∣ 134044) (hNotB : ¬ p ∣ 134041),
        order_of_C_B_inv_mod_p2 134044 134041 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134041 134044 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_134041_134044
def row_134395_134398 :
    HasPrimeWithExpOne (S_val 134395 134398) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134395 134398 ∧ ¬ p ∣ (134398 - 134395) ∧
      ∃ (hNotC : ¬ p ∣ 134398) (hNotB : ¬ p ∣ 134395),
        order_of_C_B_inv_mod_p2 134398 134395 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134395 134398 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_134395_134398
def row_134748_134751 :
    HasPrimeWithExpOne (S_val 134748 134751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134748 134751 ∧ ¬ p ∣ (134751 - 134748) ∧
      ∃ (hNotC : ¬ p ∣ 134751) (hNotB : ¬ p ∣ 134748),
        order_of_C_B_inv_mod_p2 134751 134748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 134748 134751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_134748_134751
def row_135104_135107 :
    HasPrimeWithExpOne (S_val 135104 135107) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135104 135107 ∧ ¬ p ∣ (135107 - 135104) ∧
      ∃ (hNotC : ¬ p ∣ 135107) (hNotB : ¬ p ∣ 135104),
        order_of_C_B_inv_mod_p2 135107 135104 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135104 135107 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_135104_135107
def row_135459_135462 :
    HasPrimeWithExpOne (S_val 135459 135462) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135459 135462 ∧ ¬ p ∣ (135462 - 135459) ∧
      ∃ (hNotC : ¬ p ∣ 135462) (hNotB : ¬ p ∣ 135459),
        order_of_C_B_inv_mod_p2 135462 135459 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135459 135462 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_135459_135462
def row_135814_135817 :
    HasPrimeWithExpOne (S_val 135814 135817) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135814 135817 ∧ ¬ p ∣ (135817 - 135814) ∧
      ∃ (hNotC : ¬ p ∣ 135817) (hNotB : ¬ p ∣ 135814),
        order_of_C_B_inv_mod_p2 135817 135814 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 135814 135817 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_135814_135817
def row_136169_136172 :
    HasPrimeWithExpOne (S_val 136169 136172) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136169 136172 ∧ ¬ p ∣ (136172 - 136169) ∧
      ∃ (hNotC : ¬ p ∣ 136172) (hNotB : ¬ p ∣ 136169),
        order_of_C_B_inv_mod_p2 136172 136169 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136169 136172 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_136169_136172
def row_136524_136527 :
    HasPrimeWithExpOne (S_val 136524 136527) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136524 136527 ∧ ¬ p ∣ (136527 - 136524) ∧
      ∃ (hNotC : ¬ p ∣ 136527) (hNotB : ¬ p ∣ 136524),
        order_of_C_B_inv_mod_p2 136527 136524 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136524 136527 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_136524_136527
def row_136878_136881 :
    HasPrimeWithExpOne (S_val 136878 136881) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136878 136881 ∧ ¬ p ∣ (136881 - 136878) ∧
      ∃ (hNotC : ¬ p ∣ 136881) (hNotB : ¬ p ∣ 136878),
        order_of_C_B_inv_mod_p2 136881 136878 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 136878 136881 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_136878_136881
def row_137232_137235 :
    HasPrimeWithExpOne (S_val 137232 137235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137232 137235 ∧ ¬ p ∣ (137235 - 137232) ∧
      ∃ (hNotC : ¬ p ∣ 137235) (hNotB : ¬ p ∣ 137232),
        order_of_C_B_inv_mod_p2 137235 137232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137232 137235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_137232_137235
def row_137588_137591 :
    HasPrimeWithExpOne (S_val 137588 137591) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137588 137591 ∧ ¬ p ∣ (137591 - 137588) ∧
      ∃ (hNotC : ¬ p ∣ 137591) (hNotB : ¬ p ∣ 137588),
        order_of_C_B_inv_mod_p2 137591 137588 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137588 137591 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_137588_137591
def row_137942_137945 :
    HasPrimeWithExpOne (S_val 137942 137945) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137942 137945 ∧ ¬ p ∣ (137945 - 137942) ∧
      ∃ (hNotC : ¬ p ∣ 137945) (hNotB : ¬ p ∣ 137942),
        order_of_C_B_inv_mod_p2 137945 137942 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 137942 137945 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_137942_137945
def row_138295_138298 :
    HasPrimeWithExpOne (S_val 138295 138298) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138295 138298 ∧ ¬ p ∣ (138298 - 138295) ∧
      ∃ (hNotC : ¬ p ∣ 138298) (hNotB : ¬ p ∣ 138295),
        order_of_C_B_inv_mod_p2 138298 138295 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138295 138298 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_138295_138298
def row_138651_138654 :
    HasPrimeWithExpOne (S_val 138651 138654) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138651 138654 ∧ ¬ p ∣ (138654 - 138651) ∧
      ∃ (hNotC : ¬ p ∣ 138654) (hNotB : ¬ p ∣ 138651),
        order_of_C_B_inv_mod_p2 138654 138651 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 138651 138654 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_138651_138654
def row_139005_139008 :
    HasPrimeWithExpOne (S_val 139005 139008) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139005 139008 ∧ ¬ p ∣ (139008 - 139005) ∧
      ∃ (hNotC : ¬ p ∣ 139008) (hNotB : ¬ p ∣ 139005),
        order_of_C_B_inv_mod_p2 139008 139005 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139005 139008 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_139005_139008
def row_139362_139365 :
    HasPrimeWithExpOne (S_val 139362 139365) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139362 139365 ∧ ¬ p ∣ (139365 - 139362) ∧
      ∃ (hNotC : ¬ p ∣ 139365) (hNotB : ¬ p ∣ 139362),
        order_of_C_B_inv_mod_p2 139365 139362 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139362 139365 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_139362_139365
def row_139714_139717 :
    HasPrimeWithExpOne (S_val 139714 139717) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139714 139717 ∧ ¬ p ∣ (139717 - 139714) ∧
      ∃ (hNotC : ¬ p ∣ 139717) (hNotB : ¬ p ∣ 139714),
        order_of_C_B_inv_mod_p2 139717 139714 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 139714 139717 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_139714_139717
def row_140070_140073 :
    HasPrimeWithExpOne (S_val 140070 140073) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140070 140073 ∧ ¬ p ∣ (140073 - 140070) ∧
      ∃ (hNotC : ¬ p ∣ 140073) (hNotB : ¬ p ∣ 140070),
        order_of_C_B_inv_mod_p2 140073 140070 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140070 140073 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_140070_140073
def row_140423_140426 :
    HasPrimeWithExpOne (S_val 140423 140426) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140423 140426 ∧ ¬ p ∣ (140426 - 140423) ∧
      ∃ (hNotC : ¬ p ∣ 140426) (hNotB : ¬ p ∣ 140423),
        order_of_C_B_inv_mod_p2 140426 140423 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140423 140426 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_140423_140426
def row_140778_140781 :
    HasPrimeWithExpOne (S_val 140778 140781) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140778 140781 ∧ ¬ p ∣ (140781 - 140778) ∧
      ∃ (hNotC : ¬ p ∣ 140781) (hNotB : ¬ p ∣ 140778),
        order_of_C_B_inv_mod_p2 140781 140778 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 140778 140781 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_140778_140781
def row_141132_141135 :
    HasPrimeWithExpOne (S_val 141132 141135) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141132 141135 ∧ ¬ p ∣ (141135 - 141132) ∧
      ∃ (hNotC : ¬ p ∣ 141135) (hNotB : ¬ p ∣ 141132),
        order_of_C_B_inv_mod_p2 141135 141132 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141132 141135 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_141132_141135
def row_141488_141491 :
    HasPrimeWithExpOne (S_val 141488 141491) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141488 141491 ∧ ¬ p ∣ (141491 - 141488) ∧
      ∃ (hNotC : ¬ p ∣ 141491) (hNotB : ¬ p ∣ 141488),
        order_of_C_B_inv_mod_p2 141491 141488 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141488 141491 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_141488_141491
def row_141841_141844 :
    HasPrimeWithExpOne (S_val 141841 141844) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141841 141844 ∧ ¬ p ∣ (141844 - 141841) ∧
      ∃ (hNotC : ¬ p ∣ 141844) (hNotB : ¬ p ∣ 141841),
        order_of_C_B_inv_mod_p2 141844 141841 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 141841 141844 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_141841_141844
def row_142195_142198 :
    HasPrimeWithExpOne (S_val 142195 142198) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142195 142198 ∧ ¬ p ∣ (142198 - 142195) ∧
      ∃ (hNotC : ¬ p ∣ 142198) (hNotB : ¬ p ∣ 142195),
        order_of_C_B_inv_mod_p2 142198 142195 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142195 142198 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_142195_142198
def row_142550_142553 :
    HasPrimeWithExpOne (S_val 142550 142553) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142550 142553 ∧ ¬ p ∣ (142553 - 142550) ∧
      ∃ (hNotC : ¬ p ∣ 142553) (hNotB : ¬ p ∣ 142550),
        order_of_C_B_inv_mod_p2 142553 142550 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142550 142553 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_142550_142553
def row_142906_142909 :
    HasPrimeWithExpOne (S_val 142906 142909) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142906 142909 ∧ ¬ p ∣ (142909 - 142906) ∧
      ∃ (hNotC : ¬ p ∣ 142909) (hNotB : ¬ p ∣ 142906),
        order_of_C_B_inv_mod_p2 142909 142906 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 142906 142909 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_142906_142909
def row_143261_143264 :
    HasPrimeWithExpOne (S_val 143261 143264) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143261 143264 ∧ ¬ p ∣ (143264 - 143261) ∧
      ∃ (hNotC : ¬ p ∣ 143264) (hNotB : ¬ p ∣ 143261),
        order_of_C_B_inv_mod_p2 143264 143261 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143261 143264 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_143261_143264
def row_143614_143617 :
    HasPrimeWithExpOne (S_val 143614 143617) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143614 143617 ∧ ¬ p ∣ (143617 - 143614) ∧
      ∃ (hNotC : ¬ p ∣ 143617) (hNotB : ¬ p ∣ 143614),
        order_of_C_B_inv_mod_p2 143617 143614 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143614 143617 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_143614_143617
def row_143967_143970 :
    HasPrimeWithExpOne (S_val 143967 143970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143967 143970 ∧ ¬ p ∣ (143970 - 143967) ∧
      ∃ (hNotC : ¬ p ∣ 143970) (hNotB : ¬ p ∣ 143967),
        order_of_C_B_inv_mod_p2 143970 143967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 143967 143970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_143967_143970
def row_144324_144327 :
    HasPrimeWithExpOne (S_val 144324 144327) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144324 144327 ∧ ¬ p ∣ (144327 - 144324) ∧
      ∃ (hNotC : ¬ p ∣ 144327) (hNotB : ¬ p ∣ 144324),
        order_of_C_B_inv_mod_p2 144327 144324 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144324 144327 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_144324_144327
def row_144679_144682 :
    HasPrimeWithExpOne (S_val 144679 144682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144679 144682 ∧ ¬ p ∣ (144682 - 144679) ∧
      ∃ (hNotC : ¬ p ∣ 144682) (hNotB : ¬ p ∣ 144679),
        order_of_C_B_inv_mod_p2 144682 144679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 144679 144682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_144679_144682
def row_145032_145035 :
    HasPrimeWithExpOne (S_val 145032 145035) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145032 145035 ∧ ¬ p ∣ (145035 - 145032) ∧
      ∃ (hNotC : ¬ p ∣ 145035) (hNotB : ¬ p ∣ 145032),
        order_of_C_B_inv_mod_p2 145035 145032 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145032 145035 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_145032_145035
def row_145389_145392 :
    HasPrimeWithExpOne (S_val 145389 145392) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145389 145392 ∧ ¬ p ∣ (145392 - 145389) ∧
      ∃ (hNotC : ¬ p ∣ 145392) (hNotB : ¬ p ∣ 145389),
        order_of_C_B_inv_mod_p2 145392 145389 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145389 145392 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_145389_145392
def row_145742_145745 :
    HasPrimeWithExpOne (S_val 145742 145745) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145742 145745 ∧ ¬ p ∣ (145745 - 145742) ∧
      ∃ (hNotC : ¬ p ∣ 145745) (hNotB : ¬ p ∣ 145742),
        order_of_C_B_inv_mod_p2 145745 145742 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 145742 145745 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_145742_145745
def row_146100_146103 :
    HasPrimeWithExpOne (S_val 146100 146103) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146100 146103 ∧ ¬ p ∣ (146103 - 146100) ∧
      ∃ (hNotC : ¬ p ∣ 146103) (hNotB : ¬ p ∣ 146100),
        order_of_C_B_inv_mod_p2 146103 146100 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146100 146103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_146100_146103
def row_146452_146455 :
    HasPrimeWithExpOne (S_val 146452 146455) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146452 146455 ∧ ¬ p ∣ (146455 - 146452) ∧
      ∃ (hNotC : ¬ p ∣ 146455) (hNotB : ¬ p ∣ 146452),
        order_of_C_B_inv_mod_p2 146455 146452 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146452 146455 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_146452_146455
def row_146805_146808 :
    HasPrimeWithExpOne (S_val 146805 146808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146805 146808 ∧ ¬ p ∣ (146808 - 146805) ∧
      ∃ (hNotC : ¬ p ∣ 146808) (hNotB : ¬ p ∣ 146805),
        order_of_C_B_inv_mod_p2 146808 146805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 146805 146808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_146805_146808
def row_147161_147164 :
    HasPrimeWithExpOne (S_val 147161 147164) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147161 147164 ∧ ¬ p ∣ (147164 - 147161) ∧
      ∃ (hNotC : ¬ p ∣ 147164) (hNotB : ¬ p ∣ 147161),
        order_of_C_B_inv_mod_p2 147164 147161 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147161 147164 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_147161_147164
def row_147515_147518 :
    HasPrimeWithExpOne (S_val 147515 147518) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147515 147518 ∧ ¬ p ∣ (147518 - 147515) ∧
      ∃ (hNotC : ¬ p ∣ 147518) (hNotB : ¬ p ∣ 147515),
        order_of_C_B_inv_mod_p2 147518 147515 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147515 147518 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_147515_147518
def row_147870_147873 :
    HasPrimeWithExpOne (S_val 147870 147873) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147870 147873 ∧ ¬ p ∣ (147873 - 147870) ∧
      ∃ (hNotC : ¬ p ∣ 147873) (hNotB : ¬ p ∣ 147870),
        order_of_C_B_inv_mod_p2 147873 147870 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 147870 147873 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_147870_147873
def row_148225_148228 :
    HasPrimeWithExpOne (S_val 148225 148228) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148225 148228 ∧ ¬ p ∣ (148228 - 148225) ∧
      ∃ (hNotC : ¬ p ∣ 148228) (hNotB : ¬ p ∣ 148225),
        order_of_C_B_inv_mod_p2 148228 148225 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148225 148228 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_148225_148228
def row_148578_148581 :
    HasPrimeWithExpOne (S_val 148578 148581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148578 148581 ∧ ¬ p ∣ (148581 - 148578) ∧
      ∃ (hNotC : ¬ p ∣ 148581) (hNotB : ¬ p ∣ 148578),
        order_of_C_B_inv_mod_p2 148581 148578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148578 148581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_148578_148581
def row_148934_148937 :
    HasPrimeWithExpOne (S_val 148934 148937) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148934 148937 ∧ ¬ p ∣ (148937 - 148934) ∧
      ∃ (hNotC : ¬ p ∣ 148937) (hNotB : ¬ p ∣ 148934),
        order_of_C_B_inv_mod_p2 148937 148934 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 148934 148937 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_148934_148937
def row_149288_149291 :
    HasPrimeWithExpOne (S_val 149288 149291) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149288 149291 ∧ ¬ p ∣ (149291 - 149288) ∧
      ∃ (hNotC : ¬ p ∣ 149291) (hNotB : ¬ p ∣ 149288),
        order_of_C_B_inv_mod_p2 149291 149288 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149288 149291 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_149288_149291
def row_149644_149647 :
    HasPrimeWithExpOne (S_val 149644 149647) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149644 149647 ∧ ¬ p ∣ (149647 - 149644) ∧
      ∃ (hNotC : ¬ p ∣ 149647) (hNotB : ¬ p ∣ 149644),
        order_of_C_B_inv_mod_p2 149647 149644 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149644 149647 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_149644_149647
def row_149998_150001 :
    HasPrimeWithExpOne (S_val 149998 150001) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149998 150001 ∧ ¬ p ∣ (150001 - 149998) ∧
      ∃ (hNotC : ¬ p ∣ 150001) (hNotB : ¬ p ∣ 149998),
        order_of_C_B_inv_mod_p2 150001 149998 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 149998 150001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_149998_150001
def row_150352_150355 :
    HasPrimeWithExpOne (S_val 150352 150355) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150352 150355 ∧ ¬ p ∣ (150355 - 150352) ∧
      ∃ (hNotC : ¬ p ∣ 150355) (hNotB : ¬ p ∣ 150352),
        order_of_C_B_inv_mod_p2 150355 150352 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150352 150355 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_150352_150355
def row_150706_150709 :
    HasPrimeWithExpOne (S_val 150706 150709) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150706 150709 ∧ ¬ p ∣ (150709 - 150706) ∧
      ∃ (hNotC : ¬ p ∣ 150709) (hNotB : ¬ p ∣ 150706),
        order_of_C_B_inv_mod_p2 150709 150706 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 150706 150709 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_150706_150709
def row_151061_151064 :
    HasPrimeWithExpOne (S_val 151061 151064) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151061 151064 ∧ ¬ p ∣ (151064 - 151061) ∧
      ∃ (hNotC : ¬ p ∣ 151064) (hNotB : ¬ p ∣ 151061),
        order_of_C_B_inv_mod_p2 151064 151061 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151061 151064 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_151061_151064
def row_151417_151420 :
    HasPrimeWithExpOne (S_val 151417 151420) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151417 151420 ∧ ¬ p ∣ (151420 - 151417) ∧
      ∃ (hNotC : ¬ p ∣ 151420) (hNotB : ¬ p ∣ 151417),
        order_of_C_B_inv_mod_p2 151420 151417 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151417 151420 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_151417_151420
def row_151771_151774 :
    HasPrimeWithExpOne (S_val 151771 151774) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151771 151774 ∧ ¬ p ∣ (151774 - 151771) ∧
      ∃ (hNotC : ¬ p ∣ 151774) (hNotB : ¬ p ∣ 151771),
        order_of_C_B_inv_mod_p2 151774 151771 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 151771 151774 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_151771_151774
def row_152124_152127 :
    HasPrimeWithExpOne (S_val 152124 152127) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152124 152127 ∧ ¬ p ∣ (152127 - 152124) ∧
      ∃ (hNotC : ¬ p ∣ 152127) (hNotB : ¬ p ∣ 152124),
        order_of_C_B_inv_mod_p2 152127 152124 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152124 152127 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_152124_152127
def row_152480_152483 :
    HasPrimeWithExpOne (S_val 152480 152483) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152480 152483 ∧ ¬ p ∣ (152483 - 152480) ∧
      ∃ (hNotC : ¬ p ∣ 152483) (hNotB : ¬ p ∣ 152480),
        order_of_C_B_inv_mod_p2 152483 152480 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152480 152483 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_152480_152483
def row_152836_152839 :
    HasPrimeWithExpOne (S_val 152836 152839) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152836 152839 ∧ ¬ p ∣ (152839 - 152836) ∧
      ∃ (hNotC : ¬ p ∣ 152839) (hNotB : ¬ p ∣ 152836),
        order_of_C_B_inv_mod_p2 152839 152836 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 152836 152839 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_152836_152839
def row_153188_153191 :
    HasPrimeWithExpOne (S_val 153188 153191) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153188 153191 ∧ ¬ p ∣ (153191 - 153188) ∧
      ∃ (hNotC : ¬ p ∣ 153191) (hNotB : ¬ p ∣ 153188),
        order_of_C_B_inv_mod_p2 153191 153188 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153188 153191 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_153188_153191
def row_153542_153545 :
    HasPrimeWithExpOne (S_val 153542 153545) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153542 153545 ∧ ¬ p ∣ (153545 - 153542) ∧
      ∃ (hNotC : ¬ p ∣ 153545) (hNotB : ¬ p ∣ 153542),
        order_of_C_B_inv_mod_p2 153545 153542 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153542 153545 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_153542_153545
def row_153899_153902 :
    HasPrimeWithExpOne (S_val 153899 153902) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153899 153902 ∧ ¬ p ∣ (153902 - 153899) ∧
      ∃ (hNotC : ¬ p ∣ 153902) (hNotB : ¬ p ∣ 153899),
        order_of_C_B_inv_mod_p2 153902 153899 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 153899 153902 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_153899_153902
def row_154255_154258 :
    HasPrimeWithExpOne (S_val 154255 154258) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154255 154258 ∧ ¬ p ∣ (154258 - 154255) ∧
      ∃ (hNotC : ¬ p ∣ 154258) (hNotB : ¬ p ∣ 154255),
        order_of_C_B_inv_mod_p2 154258 154255 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154255 154258 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_154255_154258
def row_154607_154610 :
    HasPrimeWithExpOne (S_val 154607 154610) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154607 154610 ∧ ¬ p ∣ (154610 - 154607) ∧
      ∃ (hNotC : ¬ p ∣ 154610) (hNotB : ¬ p ∣ 154607),
        order_of_C_B_inv_mod_p2 154610 154607 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154607 154610 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_154607_154610
def row_154963_154966 :
    HasPrimeWithExpOne (S_val 154963 154966) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154963 154966 ∧ ¬ p ∣ (154966 - 154963) ∧
      ∃ (hNotC : ¬ p ∣ 154966) (hNotB : ¬ p ∣ 154963),
        order_of_C_B_inv_mod_p2 154966 154963 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 154963 154966 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_154963_154966
def row_155320_155323 :
    HasPrimeWithExpOne (S_val 155320 155323) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155320 155323 ∧ ¬ p ∣ (155323 - 155320) ∧
      ∃ (hNotC : ¬ p ∣ 155323) (hNotB : ¬ p ∣ 155320),
        order_of_C_B_inv_mod_p2 155323 155320 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155320 155323 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_155320_155323
def row_155671_155674 :
    HasPrimeWithExpOne (S_val 155671 155674) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155671 155674 ∧ ¬ p ∣ (155674 - 155671) ∧
      ∃ (hNotC : ¬ p ∣ 155674) (hNotB : ¬ p ∣ 155671),
        order_of_C_B_inv_mod_p2 155674 155671 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 155671 155674 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_155671_155674
def row_156026_156029 :
    HasPrimeWithExpOne (S_val 156026 156029) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156026 156029 ∧ ¬ p ∣ (156029 - 156026) ∧
      ∃ (hNotC : ¬ p ∣ 156029) (hNotB : ¬ p ∣ 156026),
        order_of_C_B_inv_mod_p2 156029 156026 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156026 156029 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_156026_156029
def row_156381_156384 :
    HasPrimeWithExpOne (S_val 156381 156384) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156381 156384 ∧ ¬ p ∣ (156384 - 156381) ∧
      ∃ (hNotC : ¬ p ∣ 156384) (hNotB : ¬ p ∣ 156381),
        order_of_C_B_inv_mod_p2 156384 156381 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156381 156384 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_156381_156384
def row_156736_156739 :
    HasPrimeWithExpOne (S_val 156736 156739) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156736 156739 ∧ ¬ p ∣ (156739 - 156736) ∧
      ∃ (hNotC : ¬ p ∣ 156739) (hNotB : ¬ p ∣ 156736),
        order_of_C_B_inv_mod_p2 156739 156736 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 156736 156739 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_156736_156739
def row_157090_157093 :
    HasPrimeWithExpOne (S_val 157090 157093) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157090 157093 ∧ ¬ p ∣ (157093 - 157090) ∧
      ∃ (hNotC : ¬ p ∣ 157093) (hNotB : ¬ p ∣ 157090),
        order_of_C_B_inv_mod_p2 157093 157090 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157090 157093 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_157090_157093
def row_157442_157445 :
    HasPrimeWithExpOne (S_val 157442 157445) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157442 157445 ∧ ¬ p ∣ (157445 - 157442) ∧
      ∃ (hNotC : ¬ p ∣ 157445) (hNotB : ¬ p ∣ 157442),
        order_of_C_B_inv_mod_p2 157445 157442 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157442 157445 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_157442_157445
def row_157799_157802 :
    HasPrimeWithExpOne (S_val 157799 157802) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157799 157802 ∧ ¬ p ∣ (157802 - 157799) ∧
      ∃ (hNotC : ¬ p ∣ 157802) (hNotB : ¬ p ∣ 157799),
        order_of_C_B_inv_mod_p2 157802 157799 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 157799 157802 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_157799_157802
def row_158155_158158 :
    HasPrimeWithExpOne (S_val 158155 158158) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158155 158158 ∧ ¬ p ∣ (158158 - 158155) ∧
      ∃ (hNotC : ¬ p ∣ 158158) (hNotB : ¬ p ∣ 158155),
        order_of_C_B_inv_mod_p2 158158 158155 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158155 158158 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_158155_158158
def row_158508_158511 :
    HasPrimeWithExpOne (S_val 158508 158511) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158508 158511 ∧ ¬ p ∣ (158511 - 158508) ∧
      ∃ (hNotC : ¬ p ∣ 158511) (hNotB : ¬ p ∣ 158508),
        order_of_C_B_inv_mod_p2 158511 158508 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158508 158511 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_158508_158511
def row_158862_158865 :
    HasPrimeWithExpOne (S_val 158862 158865) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158862 158865 ∧ ¬ p ∣ (158865 - 158862) ∧
      ∃ (hNotC : ¬ p ∣ 158865) (hNotB : ¬ p ∣ 158862),
        order_of_C_B_inv_mod_p2 158865 158862 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 158862 158865 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_158862_158865
def row_159217_159220 :
    HasPrimeWithExpOne (S_val 159217 159220) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159217 159220 ∧ ¬ p ∣ (159220 - 159217) ∧
      ∃ (hNotC : ¬ p ∣ 159220) (hNotB : ¬ p ∣ 159217),
        order_of_C_B_inv_mod_p2 159220 159217 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159217 159220 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_159217_159220
def row_159573_159576 :
    HasPrimeWithExpOne (S_val 159573 159576) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159573 159576 ∧ ¬ p ∣ (159576 - 159573) ∧
      ∃ (hNotC : ¬ p ∣ 159576) (hNotB : ¬ p ∣ 159573),
        order_of_C_B_inv_mod_p2 159576 159573 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159573 159576 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_159573_159576
def row_159926_159929 :
    HasPrimeWithExpOne (S_val 159926 159929) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159926 159929 ∧ ¬ p ∣ (159929 - 159926) ∧
      ∃ (hNotC : ¬ p ∣ 159929) (hNotB : ¬ p ∣ 159926),
        order_of_C_B_inv_mod_p2 159929 159926 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 159926 159929 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_159926_159929
def row_160281_160284 :
    HasPrimeWithExpOne (S_val 160281 160284) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160281 160284 ∧ ¬ p ∣ (160284 - 160281) ∧
      ∃ (hNotC : ¬ p ∣ 160284) (hNotB : ¬ p ∣ 160281),
        order_of_C_B_inv_mod_p2 160284 160281 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160281 160284 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_160281_160284
def row_160635_160638 :
    HasPrimeWithExpOne (S_val 160635 160638) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160635 160638 ∧ ¬ p ∣ (160638 - 160635) ∧
      ∃ (hNotC : ¬ p ∣ 160638) (hNotB : ¬ p ∣ 160635),
        order_of_C_B_inv_mod_p2 160638 160635 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160635 160638 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_160635_160638
def row_160988_160991 :
    HasPrimeWithExpOne (S_val 160988 160991) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160988 160991 ∧ ¬ p ∣ (160991 - 160988) ∧
      ∃ (hNotC : ¬ p ∣ 160991) (hNotB : ¬ p ∣ 160988),
        order_of_C_B_inv_mod_p2 160991 160988 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 160988 160991 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_160988_160991
def row_161345_161348 :
    HasPrimeWithExpOne (S_val 161345 161348) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161345 161348 ∧ ¬ p ∣ (161348 - 161345) ∧
      ∃ (hNotC : ¬ p ∣ 161348) (hNotB : ¬ p ∣ 161345),
        order_of_C_B_inv_mod_p2 161348 161345 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161345 161348 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_161345_161348
def row_161700_161703 :
    HasPrimeWithExpOne (S_val 161700 161703) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161700 161703 ∧ ¬ p ∣ (161703 - 161700) ∧
      ∃ (hNotC : ¬ p ∣ 161703) (hNotB : ¬ p ∣ 161700),
        order_of_C_B_inv_mod_p2 161703 161700 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 161700 161703 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_161700_161703
def row_162054_162057 :
    HasPrimeWithExpOne (S_val 162054 162057) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162054 162057 ∧ ¬ p ∣ (162057 - 162054) ∧
      ∃ (hNotC : ¬ p ∣ 162057) (hNotB : ¬ p ∣ 162054),
        order_of_C_B_inv_mod_p2 162057 162054 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162054 162057 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_162054_162057
def row_162408_162411 :
    HasPrimeWithExpOne (S_val 162408 162411) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162408 162411 ∧ ¬ p ∣ (162411 - 162408) ∧
      ∃ (hNotC : ¬ p ∣ 162411) (hNotB : ¬ p ∣ 162408),
        order_of_C_B_inv_mod_p2 162411 162408 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162408 162411 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_162408_162411
def row_162763_162766 :
    HasPrimeWithExpOne (S_val 162763 162766) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162763 162766 ∧ ¬ p ∣ (162766 - 162763) ∧
      ∃ (hNotC : ¬ p ∣ 162766) (hNotB : ¬ p ∣ 162763),
        order_of_C_B_inv_mod_p2 162766 162763 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 162763 162766 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_162763_162766
def row_163118_163121 :
    HasPrimeWithExpOne (S_val 163118 163121) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163118 163121 ∧ ¬ p ∣ (163121 - 163118) ∧
      ∃ (hNotC : ¬ p ∣ 163121) (hNotB : ¬ p ∣ 163118),
        order_of_C_B_inv_mod_p2 163121 163118 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163118 163121 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_163118_163121
def row_163472_163475 :
    HasPrimeWithExpOne (S_val 163472 163475) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163472 163475 ∧ ¬ p ∣ (163475 - 163472) ∧
      ∃ (hNotC : ¬ p ∣ 163475) (hNotB : ¬ p ∣ 163472),
        order_of_C_B_inv_mod_p2 163475 163472 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163472 163475 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_163472_163475
def row_163827_163830 :
    HasPrimeWithExpOne (S_val 163827 163830) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163827 163830 ∧ ¬ p ∣ (163830 - 163827) ∧
      ∃ (hNotC : ¬ p ∣ 163830) (hNotB : ¬ p ∣ 163827),
        order_of_C_B_inv_mod_p2 163830 163827 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 163827 163830 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_163827_163830
def row_164181_164184 :
    HasPrimeWithExpOne (S_val 164181 164184) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164181 164184 ∧ ¬ p ∣ (164184 - 164181) ∧
      ∃ (hNotC : ¬ p ∣ 164184) (hNotB : ¬ p ∣ 164181),
        order_of_C_B_inv_mod_p2 164184 164181 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164181 164184 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_164181_164184
def row_164536_164539 :
    HasPrimeWithExpOne (S_val 164536 164539) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164536 164539 ∧ ¬ p ∣ (164539 - 164536) ∧
      ∃ (hNotC : ¬ p ∣ 164539) (hNotB : ¬ p ∣ 164536),
        order_of_C_B_inv_mod_p2 164539 164536 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164536 164539 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_164536_164539
def row_164891_164894 :
    HasPrimeWithExpOne (S_val 164891 164894) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164891 164894 ∧ ¬ p ∣ (164894 - 164891) ∧
      ∃ (hNotC : ¬ p ∣ 164894) (hNotB : ¬ p ∣ 164891),
        order_of_C_B_inv_mod_p2 164894 164891 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 164891 164894 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_164891_164894
def row_165245_165248 :
    HasPrimeWithExpOne (S_val 165245 165248) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165245 165248 ∧ ¬ p ∣ (165248 - 165245) ∧
      ∃ (hNotC : ¬ p ∣ 165248) (hNotB : ¬ p ∣ 165245),
        order_of_C_B_inv_mod_p2 165248 165245 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165245 165248 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_165245_165248
def row_165599_165602 :
    HasPrimeWithExpOne (S_val 165599 165602) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165599 165602 ∧ ¬ p ∣ (165602 - 165599) ∧
      ∃ (hNotC : ¬ p ∣ 165602) (hNotB : ¬ p ∣ 165599),
        order_of_C_B_inv_mod_p2 165602 165599 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165599 165602 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_165599_165602
def row_165954_165957 :
    HasPrimeWithExpOne (S_val 165954 165957) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165954 165957 ∧ ¬ p ∣ (165957 - 165954) ∧
      ∃ (hNotC : ¬ p ∣ 165957) (hNotB : ¬ p ∣ 165954),
        order_of_C_B_inv_mod_p2 165957 165954 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 165954 165957 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_165954_165957
def row_166309_166312 :
    HasPrimeWithExpOne (S_val 166309 166312) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166309 166312 ∧ ¬ p ∣ (166312 - 166309) ∧
      ∃ (hNotC : ¬ p ∣ 166312) (hNotB : ¬ p ∣ 166309),
        order_of_C_B_inv_mod_p2 166312 166309 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166309 166312 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_166309_166312
def row_166664_166667 :
    HasPrimeWithExpOne (S_val 166664 166667) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166664 166667 ∧ ¬ p ∣ (166667 - 166664) ∧
      ∃ (hNotC : ¬ p ∣ 166667) (hNotB : ¬ p ∣ 166664),
        order_of_C_B_inv_mod_p2 166667 166664 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 166664 166667 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_166664_166667
def row_167018_167021 :
    HasPrimeWithExpOne (S_val 167018 167021) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167018 167021 ∧ ¬ p ∣ (167021 - 167018) ∧
      ∃ (hNotC : ¬ p ∣ 167021) (hNotB : ¬ p ∣ 167018),
        order_of_C_B_inv_mod_p2 167021 167018 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167018 167021 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_167018_167021
def row_167373_167376 :
    HasPrimeWithExpOne (S_val 167373 167376) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167373 167376 ∧ ¬ p ∣ (167376 - 167373) ∧
      ∃ (hNotC : ¬ p ∣ 167376) (hNotB : ¬ p ∣ 167373),
        order_of_C_B_inv_mod_p2 167376 167373 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167373 167376 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_167373_167376
def row_167726_167729 :
    HasPrimeWithExpOne (S_val 167726 167729) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167726 167729 ∧ ¬ p ∣ (167729 - 167726) ∧
      ∃ (hNotC : ¬ p ∣ 167729) (hNotB : ¬ p ∣ 167726),
        order_of_C_B_inv_mod_p2 167729 167726 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 167726 167729 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_167726_167729
def row_168082_168085 :
    HasPrimeWithExpOne (S_val 168082 168085) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168082 168085 ∧ ¬ p ∣ (168085 - 168082) ∧
      ∃ (hNotC : ¬ p ∣ 168085) (hNotB : ¬ p ∣ 168082),
        order_of_C_B_inv_mod_p2 168085 168082 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168082 168085 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_168082_168085
def row_168437_168440 :
    HasPrimeWithExpOne (S_val 168437 168440) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168437 168440 ∧ ¬ p ∣ (168440 - 168437) ∧
      ∃ (hNotC : ¬ p ∣ 168440) (hNotB : ¬ p ∣ 168437),
        order_of_C_B_inv_mod_p2 168440 168437 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168437 168440 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_168437_168440
def row_168792_168795 :
    HasPrimeWithExpOne (S_val 168792 168795) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168792 168795 ∧ ¬ p ∣ (168795 - 168792) ∧
      ∃ (hNotC : ¬ p ∣ 168795) (hNotB : ¬ p ∣ 168792),
        order_of_C_B_inv_mod_p2 168795 168792 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 168792 168795 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_168792_168795
def row_169151_169154 :
    HasPrimeWithExpOne (S_val 169151 169154) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169151 169154 ∧ ¬ p ∣ (169154 - 169151) ∧
      ∃ (hNotC : ¬ p ∣ 169154) (hNotB : ¬ p ∣ 169151),
        order_of_C_B_inv_mod_p2 169154 169151 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169151 169154 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_169151_169154
def row_169500_169503 :
    HasPrimeWithExpOne (S_val 169500 169503) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169500 169503 ∧ ¬ p ∣ (169503 - 169500) ∧
      ∃ (hNotC : ¬ p ∣ 169503) (hNotB : ¬ p ∣ 169500),
        order_of_C_B_inv_mod_p2 169503 169500 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169500 169503 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_169500_169503
def row_169856_169859 :
    HasPrimeWithExpOne (S_val 169856 169859) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169856 169859 ∧ ¬ p ∣ (169859 - 169856) ∧
      ∃ (hNotC : ¬ p ∣ 169859) (hNotB : ¬ p ∣ 169856),
        order_of_C_B_inv_mod_p2 169859 169856 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 169856 169859 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_169856_169859
def row_170209_170212 :
    HasPrimeWithExpOne (S_val 170209 170212) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170209 170212 ∧ ¬ p ∣ (170212 - 170209) ∧
      ∃ (hNotC : ¬ p ∣ 170212) (hNotB : ¬ p ∣ 170209),
        order_of_C_B_inv_mod_p2 170212 170209 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170209 170212 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_170209_170212
def row_170564_170567 :
    HasPrimeWithExpOne (S_val 170564 170567) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170564 170567 ∧ ¬ p ∣ (170567 - 170564) ∧
      ∃ (hNotC : ¬ p ∣ 170567) (hNotB : ¬ p ∣ 170564),
        order_of_C_B_inv_mod_p2 170567 170564 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170564 170567 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_170564_170567
def row_170919_170922 :
    HasPrimeWithExpOne (S_val 170919 170922) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170919 170922 ∧ ¬ p ∣ (170922 - 170919) ∧
      ∃ (hNotC : ¬ p ∣ 170922) (hNotB : ¬ p ∣ 170919),
        order_of_C_B_inv_mod_p2 170922 170919 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 170919 170922 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_170919_170922
def row_171274_171277 :
    HasPrimeWithExpOne (S_val 171274 171277) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171274 171277 ∧ ¬ p ∣ (171277 - 171274) ∧
      ∃ (hNotC : ¬ p ∣ 171277) (hNotB : ¬ p ∣ 171274),
        order_of_C_B_inv_mod_p2 171277 171274 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171274 171277 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_171274_171277
def row_171627_171630 :
    HasPrimeWithExpOne (S_val 171627 171630) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171627 171630 ∧ ¬ p ∣ (171630 - 171627) ∧
      ∃ (hNotC : ¬ p ∣ 171630) (hNotB : ¬ p ∣ 171627),
        order_of_C_B_inv_mod_p2 171630 171627 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171627 171630 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_171627_171630
def row_171985_171988 :
    HasPrimeWithExpOne (S_val 171985 171988) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171985 171988 ∧ ¬ p ∣ (171988 - 171985) ∧
      ∃ (hNotC : ¬ p ∣ 171988) (hNotB : ¬ p ∣ 171985),
        order_of_C_B_inv_mod_p2 171988 171985 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 171985 171988 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_171985_171988
def row_172338_172341 :
    HasPrimeWithExpOne (S_val 172338 172341) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172338 172341 ∧ ¬ p ∣ (172341 - 172338) ∧
      ∃ (hNotC : ¬ p ∣ 172341) (hNotB : ¬ p ∣ 172338),
        order_of_C_B_inv_mod_p2 172341 172338 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172338 172341 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_172338_172341
def row_172692_172695 :
    HasPrimeWithExpOne (S_val 172692 172695) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172692 172695 ∧ ¬ p ∣ (172695 - 172692) ∧
      ∃ (hNotC : ¬ p ∣ 172695) (hNotB : ¬ p ∣ 172692),
        order_of_C_B_inv_mod_p2 172695 172692 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 172692 172695 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_172692_172695
def row_173046_173049 :
    HasPrimeWithExpOne (S_val 173046 173049) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173046 173049 ∧ ¬ p ∣ (173049 - 173046) ∧
      ∃ (hNotC : ¬ p ∣ 173049) (hNotB : ¬ p ∣ 173046),
        order_of_C_B_inv_mod_p2 173049 173046 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173046 173049 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_173046_173049
def row_173400_173403 :
    HasPrimeWithExpOne (S_val 173400 173403) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173400 173403 ∧ ¬ p ∣ (173403 - 173400) ∧
      ∃ (hNotC : ¬ p ∣ 173403) (hNotB : ¬ p ∣ 173400),
        order_of_C_B_inv_mod_p2 173403 173400 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173400 173403 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_173400_173403
def row_173755_173758 :
    HasPrimeWithExpOne (S_val 173755 173758) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173755 173758 ∧ ¬ p ∣ (173758 - 173755) ∧
      ∃ (hNotC : ¬ p ∣ 173758) (hNotB : ¬ p ∣ 173755),
        order_of_C_B_inv_mod_p2 173758 173755 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 173755 173758 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_173755_173758
def row_174110_174113 :
    HasPrimeWithExpOne (S_val 174110 174113) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174110 174113 ∧ ¬ p ∣ (174113 - 174110) ∧
      ∃ (hNotC : ¬ p ∣ 174113) (hNotB : ¬ p ∣ 174110),
        order_of_C_B_inv_mod_p2 174113 174110 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174110 174113 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_174110_174113
def row_174466_174469 :
    HasPrimeWithExpOne (S_val 174466 174469) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174466 174469 ∧ ¬ p ∣ (174469 - 174466) ∧
      ∃ (hNotC : ¬ p ∣ 174469) (hNotB : ¬ p ∣ 174466),
        order_of_C_B_inv_mod_p2 174469 174466 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174466 174469 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_174466_174469
def row_174822_174825 :
    HasPrimeWithExpOne (S_val 174822 174825) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174822 174825 ∧ ¬ p ∣ (174825 - 174822) ∧
      ∃ (hNotC : ¬ p ∣ 174825) (hNotB : ¬ p ∣ 174822),
        order_of_C_B_inv_mod_p2 174825 174822 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 174822 174825 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_174822_174825
def row_175175_175178 :
    HasPrimeWithExpOne (S_val 175175 175178) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175175 175178 ∧ ¬ p ∣ (175178 - 175175) ∧
      ∃ (hNotC : ¬ p ∣ 175178) (hNotB : ¬ p ∣ 175175),
        order_of_C_B_inv_mod_p2 175178 175175 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175175 175178 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_175175_175178
def row_175528_175531 :
    HasPrimeWithExpOne (S_val 175528 175531) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175528 175531 ∧ ¬ p ∣ (175531 - 175528) ∧
      ∃ (hNotC : ¬ p ∣ 175531) (hNotB : ¬ p ∣ 175528),
        order_of_C_B_inv_mod_p2 175531 175528 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175528 175531 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_175528_175531
def row_175886_175889 :
    HasPrimeWithExpOne (S_val 175886 175889) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175886 175889 ∧ ¬ p ∣ (175889 - 175886) ∧
      ∃ (hNotC : ¬ p ∣ 175889) (hNotB : ¬ p ∣ 175886),
        order_of_C_B_inv_mod_p2 175889 175886 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 175886 175889 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_175886_175889
def row_176238_176241 :
    HasPrimeWithExpOne (S_val 176238 176241) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176238 176241 ∧ ¬ p ∣ (176241 - 176238) ∧
      ∃ (hNotC : ¬ p ∣ 176241) (hNotB : ¬ p ∣ 176238),
        order_of_C_B_inv_mod_p2 176241 176238 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176238 176241 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_176238_176241
def row_176592_176595 :
    HasPrimeWithExpOne (S_val 176592 176595) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176592 176595 ∧ ¬ p ∣ (176595 - 176592) ∧
      ∃ (hNotC : ¬ p ∣ 176595) (hNotB : ¬ p ∣ 176592),
        order_of_C_B_inv_mod_p2 176595 176592 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176592 176595 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_176592_176595
def row_176946_176949 :
    HasPrimeWithExpOne (S_val 176946 176949) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176946 176949 ∧ ¬ p ∣ (176949 - 176946) ∧
      ∃ (hNotC : ¬ p ∣ 176949) (hNotB : ¬ p ∣ 176946),
        order_of_C_B_inv_mod_p2 176949 176946 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 176946 176949 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_176946_176949
def row_177301_177304 :
    HasPrimeWithExpOne (S_val 177301 177304) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177301 177304 ∧ ¬ p ∣ (177304 - 177301) ∧
      ∃ (hNotC : ¬ p ∣ 177304) (hNotB : ¬ p ∣ 177301),
        order_of_C_B_inv_mod_p2 177304 177301 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177301 177304 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_177301_177304
def row_177656_177659 :
    HasPrimeWithExpOne (S_val 177656 177659) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177656 177659 ∧ ¬ p ∣ (177659 - 177656) ∧
      ∃ (hNotC : ¬ p ∣ 177659) (hNotB : ¬ p ∣ 177656),
        order_of_C_B_inv_mod_p2 177659 177656 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 177656 177659 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_177656_177659
def row_178011_178014 :
    HasPrimeWithExpOne (S_val 178011 178014) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178011 178014 ∧ ¬ p ∣ (178014 - 178011) ∧
      ∃ (hNotC : ¬ p ∣ 178014) (hNotB : ¬ p ∣ 178011),
        order_of_C_B_inv_mod_p2 178014 178011 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178011 178014 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_178011_178014
def row_178365_178368 :
    HasPrimeWithExpOne (S_val 178365 178368) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178365 178368 ∧ ¬ p ∣ (178368 - 178365) ∧
      ∃ (hNotC : ¬ p ∣ 178368) (hNotB : ¬ p ∣ 178365),
        order_of_C_B_inv_mod_p2 178368 178365 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178365 178368 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_178365_178368
def row_178720_178723 :
    HasPrimeWithExpOne (S_val 178720 178723) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178720 178723 ∧ ¬ p ∣ (178723 - 178720) ∧
      ∃ (hNotC : ¬ p ∣ 178723) (hNotB : ¬ p ∣ 178720),
        order_of_C_B_inv_mod_p2 178723 178720 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 178720 178723 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_178720_178723
def row_179074_179077 :
    HasPrimeWithExpOne (S_val 179074 179077) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179074 179077 ∧ ¬ p ∣ (179077 - 179074) ∧
      ∃ (hNotC : ¬ p ∣ 179077) (hNotB : ¬ p ∣ 179074),
        order_of_C_B_inv_mod_p2 179077 179074 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179074 179077 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_179074_179077
def row_179429_179432 :
    HasPrimeWithExpOne (S_val 179429 179432) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179429 179432 ∧ ¬ p ∣ (179432 - 179429) ∧
      ∃ (hNotC : ¬ p ∣ 179432) (hNotB : ¬ p ∣ 179429),
        order_of_C_B_inv_mod_p2 179432 179429 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179429 179432 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_179429_179432
def row_179783_179786 :
    HasPrimeWithExpOne (S_val 179783 179786) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179783 179786 ∧ ¬ p ∣ (179786 - 179783) ∧
      ∃ (hNotC : ¬ p ∣ 179786) (hNotB : ¬ p ∣ 179783),
        order_of_C_B_inv_mod_p2 179786 179783 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 179783 179786 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_179783_179786
def row_180138_180141 :
    HasPrimeWithExpOne (S_val 180138 180141) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180138 180141 ∧ ¬ p ∣ (180141 - 180138) ∧
      ∃ (hNotC : ¬ p ∣ 180141) (hNotB : ¬ p ∣ 180138),
        order_of_C_B_inv_mod_p2 180141 180138 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180138 180141 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_180138_180141
def row_180494_180497 :
    HasPrimeWithExpOne (S_val 180494 180497) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180494 180497 ∧ ¬ p ∣ (180497 - 180494) ∧
      ∃ (hNotC : ¬ p ∣ 180497) (hNotB : ¬ p ∣ 180494),
        order_of_C_B_inv_mod_p2 180497 180494 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180494 180497 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_180494_180497
def row_180848_180851 :
    HasPrimeWithExpOne (S_val 180848 180851) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180848 180851 ∧ ¬ p ∣ (180851 - 180848) ∧
      ∃ (hNotC : ¬ p ∣ 180851) (hNotB : ¬ p ∣ 180848),
        order_of_C_B_inv_mod_p2 180851 180848 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 180848 180851 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_180848_180851
def row_181200_181203 :
    HasPrimeWithExpOne (S_val 181200 181203) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181200 181203 ∧ ¬ p ∣ (181203 - 181200) ∧
      ∃ (hNotC : ¬ p ∣ 181203) (hNotB : ¬ p ∣ 181200),
        order_of_C_B_inv_mod_p2 181203 181200 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181200 181203 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_181200_181203
def row_181557_181560 :
    HasPrimeWithExpOne (S_val 181557 181560) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181557 181560 ∧ ¬ p ∣ (181560 - 181557) ∧
      ∃ (hNotC : ¬ p ∣ 181560) (hNotB : ¬ p ∣ 181557),
        order_of_C_B_inv_mod_p2 181560 181557 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181557 181560 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_181557_181560
def row_181911_181914 :
    HasPrimeWithExpOne (S_val 181911 181914) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181911 181914 ∧ ¬ p ∣ (181914 - 181911) ∧
      ∃ (hNotC : ¬ p ∣ 181914) (hNotB : ¬ p ∣ 181911),
        order_of_C_B_inv_mod_p2 181914 181911 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 181911 181914 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_181911_181914
def row_182266_182269 :
    HasPrimeWithExpOne (S_val 182266 182269) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182266 182269 ∧ ¬ p ∣ (182269 - 182266) ∧
      ∃ (hNotC : ¬ p ∣ 182269) (hNotB : ¬ p ∣ 182266),
        order_of_C_B_inv_mod_p2 182269 182266 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182266 182269 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_182266_182269
def row_182620_182623 :
    HasPrimeWithExpOne (S_val 182620 182623) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182620 182623 ∧ ¬ p ∣ (182623 - 182620) ∧
      ∃ (hNotC : ¬ p ∣ 182623) (hNotB : ¬ p ∣ 182620),
        order_of_C_B_inv_mod_p2 182623 182620 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182620 182623 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_182620_182623
def row_182975_182978 :
    HasPrimeWithExpOne (S_val 182975 182978) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182975 182978 ∧ ¬ p ∣ (182978 - 182975) ∧
      ∃ (hNotC : ¬ p ∣ 182978) (hNotB : ¬ p ∣ 182975),
        order_of_C_B_inv_mod_p2 182978 182975 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 182975 182978 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_182975_182978
def row_183331_183334 :
    HasPrimeWithExpOne (S_val 183331 183334) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183331 183334 ∧ ¬ p ∣ (183334 - 183331) ∧
      ∃ (hNotC : ¬ p ∣ 183334) (hNotB : ¬ p ∣ 183331),
        order_of_C_B_inv_mod_p2 183334 183331 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183331 183334 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_183331_183334
def row_183685_183688 :
    HasPrimeWithExpOne (S_val 183685 183688) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183685 183688 ∧ ¬ p ∣ (183688 - 183685) ∧
      ∃ (hNotC : ¬ p ∣ 183688) (hNotB : ¬ p ∣ 183685),
        order_of_C_B_inv_mod_p2 183688 183685 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 183685 183688 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_183685_183688
def row_184037_184040 :
    HasPrimeWithExpOne (S_val 184037 184040) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184037 184040 ∧ ¬ p ∣ (184040 - 184037) ∧
      ∃ (hNotC : ¬ p ∣ 184040) (hNotB : ¬ p ∣ 184037),
        order_of_C_B_inv_mod_p2 184040 184037 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184037 184040 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_184037_184040
def row_184393_184396 :
    HasPrimeWithExpOne (S_val 184393 184396) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184393 184396 ∧ ¬ p ∣ (184396 - 184393) ∧
      ∃ (hNotC : ¬ p ∣ 184396) (hNotB : ¬ p ∣ 184393),
        order_of_C_B_inv_mod_p2 184396 184393 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184393 184396 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_184393_184396
def row_184748_184751 :
    HasPrimeWithExpOne (S_val 184748 184751) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184748 184751 ∧ ¬ p ∣ (184751 - 184748) ∧
      ∃ (hNotC : ¬ p ∣ 184751) (hNotB : ¬ p ∣ 184748),
        order_of_C_B_inv_mod_p2 184751 184748 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 184748 184751 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_184748_184751
def row_185102_185105 :
    HasPrimeWithExpOne (S_val 185102 185105) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185102 185105 ∧ ¬ p ∣ (185105 - 185102) ∧
      ∃ (hNotC : ¬ p ∣ 185105) (hNotB : ¬ p ∣ 185102),
        order_of_C_B_inv_mod_p2 185105 185102 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185102 185105 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_185102_185105
def row_185457_185460 :
    HasPrimeWithExpOne (S_val 185457 185460) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185457 185460 ∧ ¬ p ∣ (185460 - 185457) ∧
      ∃ (hNotC : ¬ p ∣ 185460) (hNotB : ¬ p ∣ 185457),
        order_of_C_B_inv_mod_p2 185460 185457 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185457 185460 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_185457_185460
def row_185812_185815 :
    HasPrimeWithExpOne (S_val 185812 185815) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185812 185815 ∧ ¬ p ∣ (185815 - 185812) ∧
      ∃ (hNotC : ¬ p ∣ 185815) (hNotB : ¬ p ∣ 185812),
        order_of_C_B_inv_mod_p2 185815 185812 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 185812 185815 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_185812_185815
def row_186166_186169 :
    HasPrimeWithExpOne (S_val 186166 186169) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186166 186169 ∧ ¬ p ∣ (186169 - 186166) ∧
      ∃ (hNotC : ¬ p ∣ 186169) (hNotB : ¬ p ∣ 186166),
        order_of_C_B_inv_mod_p2 186169 186166 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186166 186169 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_186166_186169
def row_186520_186523 :
    HasPrimeWithExpOne (S_val 186520 186523) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186520 186523 ∧ ¬ p ∣ (186523 - 186520) ∧
      ∃ (hNotC : ¬ p ∣ 186523) (hNotB : ¬ p ∣ 186520),
        order_of_C_B_inv_mod_p2 186523 186520 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186520 186523 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_186520_186523
def row_186875_186878 :
    HasPrimeWithExpOne (S_val 186875 186878) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186875 186878 ∧ ¬ p ∣ (186878 - 186875) ∧
      ∃ (hNotC : ¬ p ∣ 186878) (hNotB : ¬ p ∣ 186875),
        order_of_C_B_inv_mod_p2 186878 186875 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 186875 186878 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_186875_186878
def row_187232_187235 :
    HasPrimeWithExpOne (S_val 187232 187235) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187232 187235 ∧ ¬ p ∣ (187235 - 187232) ∧
      ∃ (hNotC : ¬ p ∣ 187235) (hNotB : ¬ p ∣ 187232),
        order_of_C_B_inv_mod_p2 187235 187232 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187232 187235 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_187232_187235
def row_187585_187588 :
    HasPrimeWithExpOne (S_val 187585 187588) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187585 187588 ∧ ¬ p ∣ (187588 - 187585) ∧
      ∃ (hNotC : ¬ p ∣ 187588) (hNotB : ¬ p ∣ 187585),
        order_of_C_B_inv_mod_p2 187588 187585 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187585 187588 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_187585_187588
def row_187939_187942 :
    HasPrimeWithExpOne (S_val 187939 187942) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187939 187942 ∧ ¬ p ∣ (187942 - 187939) ∧
      ∃ (hNotC : ¬ p ∣ 187942) (hNotB : ¬ p ∣ 187939),
        order_of_C_B_inv_mod_p2 187942 187939 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 187939 187942 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_187939_187942
def row_188293_188296 :
    HasPrimeWithExpOne (S_val 188293 188296) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188293 188296 ∧ ¬ p ∣ (188296 - 188293) ∧
      ∃ (hNotC : ¬ p ∣ 188296) (hNotB : ¬ p ∣ 188293),
        order_of_C_B_inv_mod_p2 188296 188293 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188293 188296 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_188293_188296
def row_188648_188651 :
    HasPrimeWithExpOne (S_val 188648 188651) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188648 188651 ∧ ¬ p ∣ (188651 - 188648) ∧
      ∃ (hNotC : ¬ p ∣ 188651) (hNotB : ¬ p ∣ 188648),
        order_of_C_B_inv_mod_p2 188651 188648 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 188648 188651 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_188648_188651
def row_189003_189006 :
    HasPrimeWithExpOne (S_val 189003 189006) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189003 189006 ∧ ¬ p ∣ (189006 - 189003) ∧
      ∃ (hNotC : ¬ p ∣ 189006) (hNotB : ¬ p ∣ 189003),
        order_of_C_B_inv_mod_p2 189006 189003 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189003 189006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_189003_189006
def row_189360_189363 :
    HasPrimeWithExpOne (S_val 189360 189363) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189360 189363 ∧ ¬ p ∣ (189363 - 189360) ∧
      ∃ (hNotC : ¬ p ∣ 189363) (hNotB : ¬ p ∣ 189360),
        order_of_C_B_inv_mod_p2 189363 189360 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189360 189363 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_189360_189363
def row_189713_189716 :
    HasPrimeWithExpOne (S_val 189713 189716) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189713 189716 ∧ ¬ p ∣ (189716 - 189713) ∧
      ∃ (hNotC : ¬ p ∣ 189716) (hNotB : ¬ p ∣ 189713),
        order_of_C_B_inv_mod_p2 189716 189713 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 189713 189716 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_189713_189716
def row_190068_190071 :
    HasPrimeWithExpOne (S_val 190068 190071) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190068 190071 ∧ ¬ p ∣ (190071 - 190068) ∧
      ∃ (hNotC : ¬ p ∣ 190071) (hNotB : ¬ p ∣ 190068),
        order_of_C_B_inv_mod_p2 190071 190068 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190068 190071 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_190068_190071
def row_190421_190424 :
    HasPrimeWithExpOne (S_val 190421 190424) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190421 190424 ∧ ¬ p ∣ (190424 - 190421) ∧
      ∃ (hNotC : ¬ p ∣ 190424) (hNotB : ¬ p ∣ 190421),
        order_of_C_B_inv_mod_p2 190424 190421 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190421 190424 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_190421_190424
def row_190776_190779 :
    HasPrimeWithExpOne (S_val 190776 190779) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190776 190779 ∧ ¬ p ∣ (190779 - 190776) ∧
      ∃ (hNotC : ¬ p ∣ 190779) (hNotB : ¬ p ∣ 190776),
        order_of_C_B_inv_mod_p2 190779 190776 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 190776 190779 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_190776_190779
def row_191131_191134 :
    HasPrimeWithExpOne (S_val 191131 191134) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191131 191134 ∧ ¬ p ∣ (191134 - 191131) ∧
      ∃ (hNotC : ¬ p ∣ 191134) (hNotB : ¬ p ∣ 191131),
        order_of_C_B_inv_mod_p2 191134 191131 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191131 191134 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_191131_191134
def row_191485_191488 :
    HasPrimeWithExpOne (S_val 191485 191488) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191485 191488 ∧ ¬ p ∣ (191488 - 191485) ∧
      ∃ (hNotC : ¬ p ∣ 191488) (hNotB : ¬ p ∣ 191485),
        order_of_C_B_inv_mod_p2 191488 191485 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191485 191488 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_191485_191488
def row_191839_191842 :
    HasPrimeWithExpOne (S_val 191839 191842) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191839 191842 ∧ ¬ p ∣ (191842 - 191839) ∧
      ∃ (hNotC : ¬ p ∣ 191842) (hNotB : ¬ p ∣ 191839),
        order_of_C_B_inv_mod_p2 191842 191839 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 191839 191842 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_191839_191842
def row_192196_192199 :
    HasPrimeWithExpOne (S_val 192196 192199) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192196 192199 ∧ ¬ p ∣ (192199 - 192196) ∧
      ∃ (hNotC : ¬ p ∣ 192199) (hNotB : ¬ p ∣ 192196),
        order_of_C_B_inv_mod_p2 192199 192196 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192196 192199 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_192196_192199
def row_192548_192551 :
    HasPrimeWithExpOne (S_val 192548 192551) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192548 192551 ∧ ¬ p ∣ (192551 - 192548) ∧
      ∃ (hNotC : ¬ p ∣ 192551) (hNotB : ¬ p ∣ 192548),
        order_of_C_B_inv_mod_p2 192551 192548 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192548 192551 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_192548_192551
def row_192904_192907 :
    HasPrimeWithExpOne (S_val 192904 192907) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192904 192907 ∧ ¬ p ∣ (192907 - 192904) ∧
      ∃ (hNotC : ¬ p ∣ 192907) (hNotB : ¬ p ∣ 192904),
        order_of_C_B_inv_mod_p2 192907 192904 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 192904 192907 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_192904_192907
def row_193259_193262 :
    HasPrimeWithExpOne (S_val 193259 193262) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193259 193262 ∧ ¬ p ∣ (193262 - 193259) ∧
      ∃ (hNotC : ¬ p ∣ 193262) (hNotB : ¬ p ∣ 193259),
        order_of_C_B_inv_mod_p2 193262 193259 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193259 193262 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_193259_193262
def row_193613_193616 :
    HasPrimeWithExpOne (S_val 193613 193616) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193613 193616 ∧ ¬ p ∣ (193616 - 193613) ∧
      ∃ (hNotC : ¬ p ∣ 193616) (hNotB : ¬ p ∣ 193613),
        order_of_C_B_inv_mod_p2 193616 193613 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193613 193616 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_193613_193616
def row_193967_193970 :
    HasPrimeWithExpOne (S_val 193967 193970) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193967 193970 ∧ ¬ p ∣ (193970 - 193967) ∧
      ∃ (hNotC : ¬ p ∣ 193970) (hNotB : ¬ p ∣ 193967),
        order_of_C_B_inv_mod_p2 193970 193967 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 193967 193970 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_193967_193970
def row_194323_194326 :
    HasPrimeWithExpOne (S_val 194323 194326) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194323 194326 ∧ ¬ p ∣ (194326 - 194323) ∧
      ∃ (hNotC : ¬ p ∣ 194326) (hNotB : ¬ p ∣ 194323),
        order_of_C_B_inv_mod_p2 194326 194323 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194323 194326 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_194323_194326
def row_194679_194682 :
    HasPrimeWithExpOne (S_val 194679 194682) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194679 194682 ∧ ¬ p ∣ (194682 - 194679) ∧
      ∃ (hNotC : ¬ p ∣ 194682) (hNotB : ¬ p ∣ 194679),
        order_of_C_B_inv_mod_p2 194682 194679 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 194679 194682 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_194679_194682
def row_195031_195034 :
    HasPrimeWithExpOne (S_val 195031 195034) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195031 195034 ∧ ¬ p ∣ (195034 - 195031) ∧
      ∃ (hNotC : ¬ p ∣ 195034) (hNotB : ¬ p ∣ 195031),
        order_of_C_B_inv_mod_p2 195034 195031 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195031 195034 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_195031_195034
def row_195385_195388 :
    HasPrimeWithExpOne (S_val 195385 195388) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195385 195388 ∧ ¬ p ∣ (195388 - 195385) ∧
      ∃ (hNotC : ¬ p ∣ 195388) (hNotB : ¬ p ∣ 195385),
        order_of_C_B_inv_mod_p2 195388 195385 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195385 195388 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_195385_195388
def row_195741_195744 :
    HasPrimeWithExpOne (S_val 195741 195744) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195741 195744 ∧ ¬ p ∣ (195744 - 195741) ∧
      ∃ (hNotC : ¬ p ∣ 195744) (hNotB : ¬ p ∣ 195741),
        order_of_C_B_inv_mod_p2 195744 195741 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 195741 195744 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_195741_195744
def row_196095_196098 :
    HasPrimeWithExpOne (S_val 196095 196098) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196095 196098 ∧ ¬ p ∣ (196098 - 196095) ∧
      ∃ (hNotC : ¬ p ∣ 196098) (hNotB : ¬ p ∣ 196095),
        order_of_C_B_inv_mod_p2 196098 196095 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196095 196098 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_196095_196098
def row_196450_196453 :
    HasPrimeWithExpOne (S_val 196450 196453) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196450 196453 ∧ ¬ p ∣ (196453 - 196450) ∧
      ∃ (hNotC : ¬ p ∣ 196453) (hNotB : ¬ p ∣ 196450),
        order_of_C_B_inv_mod_p2 196453 196450 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196450 196453 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_196450_196453
def row_196805_196808 :
    HasPrimeWithExpOne (S_val 196805 196808) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196805 196808 ∧ ¬ p ∣ (196808 - 196805) ∧
      ∃ (hNotC : ¬ p ∣ 196808) (hNotB : ¬ p ∣ 196805),
        order_of_C_B_inv_mod_p2 196808 196805 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 196805 196808 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_196805_196808
def row_197159_197162 :
    HasPrimeWithExpOne (S_val 197159 197162) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197159 197162 ∧ ¬ p ∣ (197162 - 197159) ∧
      ∃ (hNotC : ¬ p ∣ 197162) (hNotB : ¬ p ∣ 197159),
        order_of_C_B_inv_mod_p2 197162 197159 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197159 197162 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_197159_197162
def row_197513_197516 :
    HasPrimeWithExpOne (S_val 197513 197516) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197513 197516 ∧ ¬ p ∣ (197516 - 197513) ∧
      ∃ (hNotC : ¬ p ∣ 197516) (hNotB : ¬ p ∣ 197513),
        order_of_C_B_inv_mod_p2 197516 197513 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197513 197516 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_197513_197516
def row_197869_197872 :
    HasPrimeWithExpOne (S_val 197869 197872) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197869 197872 ∧ ¬ p ∣ (197872 - 197869) ∧
      ∃ (hNotC : ¬ p ∣ 197872) (hNotB : ¬ p ∣ 197869),
        order_of_C_B_inv_mod_p2 197872 197869 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 197869 197872 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_197869_197872
def row_198223_198226 :
    HasPrimeWithExpOne (S_val 198223 198226) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198223 198226 ∧ ¬ p ∣ (198226 - 198223) ∧
      ∃ (hNotC : ¬ p ∣ 198226) (hNotB : ¬ p ∣ 198223),
        order_of_C_B_inv_mod_p2 198226 198223 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198223 198226 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_198223_198226
def row_198578_198581 :
    HasPrimeWithExpOne (S_val 198578 198581) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198578 198581 ∧ ¬ p ∣ (198581 - 198578) ∧
      ∃ (hNotC : ¬ p ∣ 198581) (hNotB : ¬ p ∣ 198578),
        order_of_C_B_inv_mod_p2 198581 198578 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198578 198581 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_198578_198581
def row_198932_198935 :
    HasPrimeWithExpOne (S_val 198932 198935) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198932 198935 ∧ ¬ p ∣ (198935 - 198932) ∧
      ∃ (hNotC : ¬ p ∣ 198935) (hNotB : ¬ p ∣ 198932),
        order_of_C_B_inv_mod_p2 198935 198932 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 198932 198935 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_198932_198935
def row_199286_199289 :
    HasPrimeWithExpOne (S_val 199286 199289) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199286 199289 ∧ ¬ p ∣ (199289 - 199286) ∧
      ∃ (hNotC : ¬ p ∣ 199289) (hNotB : ¬ p ∣ 199286),
        order_of_C_B_inv_mod_p2 199289 199286 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199286 199289 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_199286_199289
def row_199642_199645 :
    HasPrimeWithExpOne (S_val 199642 199645) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199642 199645 ∧ ¬ p ∣ (199645 - 199642) ∧
      ∃ (hNotC : ¬ p ∣ 199645) (hNotB : ¬ p ∣ 199642),
        order_of_C_B_inv_mod_p2 199645 199642 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199642 199645 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_199642_199645
def row_199996_199999 :
    HasPrimeWithExpOne (S_val 199996 199999) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199996 199999 ∧ ¬ p ∣ (199999 - 199996) ∧
      ∃ (hNotC : ¬ p ∣ 199999) (hNotB : ¬ p ∣ 199996),
        order_of_C_B_inv_mod_p2 199999 199996 p hp hNotC hNotB ≠ 13) ∧
    S_not_fourth 199996 199999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_199996_199999
/-! ## Packed 601 named rows (600 inherited + outlier; not a `∀`) -/
theorem S_has_prime_with_exp_one_B_le_200000_table_rows :
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
    HasPrimeWithExpOne (S_val 100000 100003) ∧
    HasPrimeWithExpOne (S_val 100355 100358) ∧
    HasPrimeWithExpOne (S_val 100709 100712) ∧
    HasPrimeWithExpOne (S_val 101063 101066) ∧
    HasPrimeWithExpOne (S_val 101419 101422) ∧
    HasPrimeWithExpOne (S_val 101773 101776) ∧
    HasPrimeWithExpOne (S_val 102126 102129) ∧
    HasPrimeWithExpOne (S_val 102483 102486) ∧
    HasPrimeWithExpOne (S_val 102836 102839) ∧
    HasPrimeWithExpOne (S_val 103192 103195) ∧
    HasPrimeWithExpOne (S_val 103545 103548) ∧
    HasPrimeWithExpOne (S_val 103900 103903) ∧
    HasPrimeWithExpOne (S_val 104255 104258) ∧
    HasPrimeWithExpOne (S_val 104609 104612) ∧
    HasPrimeWithExpOne (S_val 104965 104968) ∧
    HasPrimeWithExpOne (S_val 105319 105322) ∧
    HasPrimeWithExpOne (S_val 105673 105676) ∧
    HasPrimeWithExpOne (S_val 106027 106030) ∧
    HasPrimeWithExpOne (S_val 106381 106384) ∧
    HasPrimeWithExpOne (S_val 106738 106741) ∧
    HasPrimeWithExpOne (S_val 107092 107095) ∧
    HasPrimeWithExpOne (S_val 107444 107447) ∧
    HasPrimeWithExpOne (S_val 107801 107804) ∧
    HasPrimeWithExpOne (S_val 108155 108158) ∧
    HasPrimeWithExpOne (S_val 108511 108514) ∧
    HasPrimeWithExpOne (S_val 108864 108867) ∧
    HasPrimeWithExpOne (S_val 109219 109222) ∧
    HasPrimeWithExpOne (S_val 109575 109578) ∧
    HasPrimeWithExpOne (S_val 109928 109931) ∧
    HasPrimeWithExpOne (S_val 110284 110287) ∧
    HasPrimeWithExpOne (S_val 110637 110640) ∧
    HasPrimeWithExpOne (S_val 110992 110995) ∧
    HasPrimeWithExpOne (S_val 111347 111350) ∧
    HasPrimeWithExpOne (S_val 111702 111705) ∧
    HasPrimeWithExpOne (S_val 112056 112059) ∧
    HasPrimeWithExpOne (S_val 112410 112413) ∧
    HasPrimeWithExpOne (S_val 112767 112770) ∧
    HasPrimeWithExpOne (S_val 113120 113123) ∧
    HasPrimeWithExpOne (S_val 113475 113478) ∧
    HasPrimeWithExpOne (S_val 113828 113831) ∧
    HasPrimeWithExpOne (S_val 114182 114185) ∧
    HasPrimeWithExpOne (S_val 114538 114541) ∧
    HasPrimeWithExpOne (S_val 114892 114895) ∧
    HasPrimeWithExpOne (S_val 115246 115249) ∧
    HasPrimeWithExpOne (S_val 115602 115605) ∧
    HasPrimeWithExpOne (S_val 115956 115959) ∧
    HasPrimeWithExpOne (S_val 116311 116314) ∧
    HasPrimeWithExpOne (S_val 116666 116669) ∧
    HasPrimeWithExpOne (S_val 117021 117024) ∧
    HasPrimeWithExpOne (S_val 117374 117377) ∧
    HasPrimeWithExpOne (S_val 117728 117731) ∧
    HasPrimeWithExpOne (S_val 118084 118087) ∧
    HasPrimeWithExpOne (S_val 118439 118442) ∧
    HasPrimeWithExpOne (S_val 118795 118798) ∧
    HasPrimeWithExpOne (S_val 119148 119151) ∧
    HasPrimeWithExpOne (S_val 119502 119505) ∧
    HasPrimeWithExpOne (S_val 119857 119860) ∧
    HasPrimeWithExpOne (S_val 120212 120215) ∧
    HasPrimeWithExpOne (S_val 120566 120569) ∧
    HasPrimeWithExpOne (S_val 120922 120925) ∧
    HasPrimeWithExpOne (S_val 121274 121277) ∧
    HasPrimeWithExpOne (S_val 121628 121631) ∧
    HasPrimeWithExpOne (S_val 121985 121988) ∧
    HasPrimeWithExpOne (S_val 122337 122340) ∧
    HasPrimeWithExpOne (S_val 122690 122693) ∧
    HasPrimeWithExpOne (S_val 123047 123050) ∧
    HasPrimeWithExpOne (S_val 123402 123405) ∧
    HasPrimeWithExpOne (S_val 123756 123759) ∧
    HasPrimeWithExpOne (S_val 124112 124115) ∧
    HasPrimeWithExpOne (S_val 124467 124470) ∧
    HasPrimeWithExpOne (S_val 124821 124824) ∧
    HasPrimeWithExpOne (S_val 125177 125180) ∧
    HasPrimeWithExpOne (S_val 125527 125530) ∧
    HasPrimeWithExpOne (S_val 125885 125888) ∧
    HasPrimeWithExpOne (S_val 126239 126242) ∧
    HasPrimeWithExpOne (S_val 126596 126599) ∧
    HasPrimeWithExpOne (S_val 126948 126951) ∧
    HasPrimeWithExpOne (S_val 127303 127306) ∧
    HasPrimeWithExpOne (S_val 127658 127661) ∧
    HasPrimeWithExpOne (S_val 128013 128016) ∧
    HasPrimeWithExpOne (S_val 128368 128371) ∧
    HasPrimeWithExpOne (S_val 128721 128724) ∧
    HasPrimeWithExpOne (S_val 129075 129078) ∧
    HasPrimeWithExpOne (S_val 129431 129434) ∧
    HasPrimeWithExpOne (S_val 129786 129789) ∧
    HasPrimeWithExpOne (S_val 130141 130144) ∧
    HasPrimeWithExpOne (S_val 130496 130499) ∧
    HasPrimeWithExpOne (S_val 130849 130852) ∧
    HasPrimeWithExpOne (S_val 131204 131207) ∧
    HasPrimeWithExpOne (S_val 131559 131562) ∧
    HasPrimeWithExpOne (S_val 131913 131916) ∧
    HasPrimeWithExpOne (S_val 132269 132272) ∧
    HasPrimeWithExpOne (S_val 132624 132627) ∧
    HasPrimeWithExpOne (S_val 132979 132982) ∧
    HasPrimeWithExpOne (S_val 133332 133335) ∧
    HasPrimeWithExpOne (S_val 133686 133689) ∧
    HasPrimeWithExpOne (S_val 134041 134044) ∧
    HasPrimeWithExpOne (S_val 134395 134398) ∧
    HasPrimeWithExpOne (S_val 134748 134751) ∧
    HasPrimeWithExpOne (S_val 135104 135107) ∧
    HasPrimeWithExpOne (S_val 135459 135462) ∧
    HasPrimeWithExpOne (S_val 135814 135817) ∧
    HasPrimeWithExpOne (S_val 136169 136172) ∧
    HasPrimeWithExpOne (S_val 136524 136527) ∧
    HasPrimeWithExpOne (S_val 136878 136881) ∧
    HasPrimeWithExpOne (S_val 137232 137235) ∧
    HasPrimeWithExpOne (S_val 137588 137591) ∧
    HasPrimeWithExpOne (S_val 137942 137945) ∧
    HasPrimeWithExpOne (S_val 138295 138298) ∧
    HasPrimeWithExpOne (S_val 138651 138654) ∧
    HasPrimeWithExpOne (S_val 139005 139008) ∧
    HasPrimeWithExpOne (S_val 139362 139365) ∧
    HasPrimeWithExpOne (S_val 139714 139717) ∧
    HasPrimeWithExpOne (S_val 140070 140073) ∧
    HasPrimeWithExpOne (S_val 140423 140426) ∧
    HasPrimeWithExpOne (S_val 140778 140781) ∧
    HasPrimeWithExpOne (S_val 141132 141135) ∧
    HasPrimeWithExpOne (S_val 141488 141491) ∧
    HasPrimeWithExpOne (S_val 141841 141844) ∧
    HasPrimeWithExpOne (S_val 142195 142198) ∧
    HasPrimeWithExpOne (S_val 142550 142553) ∧
    HasPrimeWithExpOne (S_val 142906 142909) ∧
    HasPrimeWithExpOne (S_val 143261 143264) ∧
    HasPrimeWithExpOne (S_val 143614 143617) ∧
    HasPrimeWithExpOne (S_val 143967 143970) ∧
    HasPrimeWithExpOne (S_val 144324 144327) ∧
    HasPrimeWithExpOne (S_val 144679 144682) ∧
    HasPrimeWithExpOne (S_val 145032 145035) ∧
    HasPrimeWithExpOne (S_val 145389 145392) ∧
    HasPrimeWithExpOne (S_val 145742 145745) ∧
    HasPrimeWithExpOne (S_val 146100 146103) ∧
    HasPrimeWithExpOne (S_val 146452 146455) ∧
    HasPrimeWithExpOne (S_val 146805 146808) ∧
    HasPrimeWithExpOne (S_val 147161 147164) ∧
    HasPrimeWithExpOne (S_val 147515 147518) ∧
    HasPrimeWithExpOne (S_val 147870 147873) ∧
    HasPrimeWithExpOne (S_val 148225 148228) ∧
    HasPrimeWithExpOne (S_val 148578 148581) ∧
    HasPrimeWithExpOne (S_val 148934 148937) ∧
    HasPrimeWithExpOne (S_val 149288 149291) ∧
    HasPrimeWithExpOne (S_val 149644 149647) ∧
    HasPrimeWithExpOne (S_val 149998 150001) ∧
    HasPrimeWithExpOne (S_val 150352 150355) ∧
    HasPrimeWithExpOne (S_val 150706 150709) ∧
    HasPrimeWithExpOne (S_val 151061 151064) ∧
    HasPrimeWithExpOne (S_val 151417 151420) ∧
    HasPrimeWithExpOne (S_val 151771 151774) ∧
    HasPrimeWithExpOne (S_val 152124 152127) ∧
    HasPrimeWithExpOne (S_val 152480 152483) ∧
    HasPrimeWithExpOne (S_val 152836 152839) ∧
    HasPrimeWithExpOne (S_val 153188 153191) ∧
    HasPrimeWithExpOne (S_val 153542 153545) ∧
    HasPrimeWithExpOne (S_val 153899 153902) ∧
    HasPrimeWithExpOne (S_val 154255 154258) ∧
    HasPrimeWithExpOne (S_val 154607 154610) ∧
    HasPrimeWithExpOne (S_val 154963 154966) ∧
    HasPrimeWithExpOne (S_val 155320 155323) ∧
    HasPrimeWithExpOne (S_val 155671 155674) ∧
    HasPrimeWithExpOne (S_val 156026 156029) ∧
    HasPrimeWithExpOne (S_val 156381 156384) ∧
    HasPrimeWithExpOne (S_val 156736 156739) ∧
    HasPrimeWithExpOne (S_val 157090 157093) ∧
    HasPrimeWithExpOne (S_val 157442 157445) ∧
    HasPrimeWithExpOne (S_val 157799 157802) ∧
    HasPrimeWithExpOne (S_val 158155 158158) ∧
    HasPrimeWithExpOne (S_val 158508 158511) ∧
    HasPrimeWithExpOne (S_val 158862 158865) ∧
    HasPrimeWithExpOne (S_val 159217 159220) ∧
    HasPrimeWithExpOne (S_val 159573 159576) ∧
    HasPrimeWithExpOne (S_val 159926 159929) ∧
    HasPrimeWithExpOne (S_val 160281 160284) ∧
    HasPrimeWithExpOne (S_val 160635 160638) ∧
    HasPrimeWithExpOne (S_val 160988 160991) ∧
    HasPrimeWithExpOne (S_val 161345 161348) ∧
    HasPrimeWithExpOne (S_val 161700 161703) ∧
    HasPrimeWithExpOne (S_val 162054 162057) ∧
    HasPrimeWithExpOne (S_val 162408 162411) ∧
    HasPrimeWithExpOne (S_val 162763 162766) ∧
    HasPrimeWithExpOne (S_val 163118 163121) ∧
    HasPrimeWithExpOne (S_val 163472 163475) ∧
    HasPrimeWithExpOne (S_val 163827 163830) ∧
    HasPrimeWithExpOne (S_val 164181 164184) ∧
    HasPrimeWithExpOne (S_val 164536 164539) ∧
    HasPrimeWithExpOne (S_val 164891 164894) ∧
    HasPrimeWithExpOne (S_val 165245 165248) ∧
    HasPrimeWithExpOne (S_val 165599 165602) ∧
    HasPrimeWithExpOne (S_val 165954 165957) ∧
    HasPrimeWithExpOne (S_val 166309 166312) ∧
    HasPrimeWithExpOne (S_val 166664 166667) ∧
    HasPrimeWithExpOne (S_val 167018 167021) ∧
    HasPrimeWithExpOne (S_val 167373 167376) ∧
    HasPrimeWithExpOne (S_val 167726 167729) ∧
    HasPrimeWithExpOne (S_val 168082 168085) ∧
    HasPrimeWithExpOne (S_val 168437 168440) ∧
    HasPrimeWithExpOne (S_val 168792 168795) ∧
    HasPrimeWithExpOne (S_val 169151 169154) ∧
    HasPrimeWithExpOne (S_val 169500 169503) ∧
    HasPrimeWithExpOne (S_val 169856 169859) ∧
    HasPrimeWithExpOne (S_val 170209 170212) ∧
    HasPrimeWithExpOne (S_val 170564 170567) ∧
    HasPrimeWithExpOne (S_val 170919 170922) ∧
    HasPrimeWithExpOne (S_val 171274 171277) ∧
    HasPrimeWithExpOne (S_val 171627 171630) ∧
    HasPrimeWithExpOne (S_val 171985 171988) ∧
    HasPrimeWithExpOne (S_val 172338 172341) ∧
    HasPrimeWithExpOne (S_val 172692 172695) ∧
    HasPrimeWithExpOne (S_val 173046 173049) ∧
    HasPrimeWithExpOne (S_val 173400 173403) ∧
    HasPrimeWithExpOne (S_val 173755 173758) ∧
    HasPrimeWithExpOne (S_val 174110 174113) ∧
    HasPrimeWithExpOne (S_val 174466 174469) ∧
    HasPrimeWithExpOne (S_val 174822 174825) ∧
    HasPrimeWithExpOne (S_val 175175 175178) ∧
    HasPrimeWithExpOne (S_val 175528 175531) ∧
    HasPrimeWithExpOne (S_val 175886 175889) ∧
    HasPrimeWithExpOne (S_val 176238 176241) ∧
    HasPrimeWithExpOne (S_val 176592 176595) ∧
    HasPrimeWithExpOne (S_val 176946 176949) ∧
    HasPrimeWithExpOne (S_val 177301 177304) ∧
    HasPrimeWithExpOne (S_val 177656 177659) ∧
    HasPrimeWithExpOne (S_val 178011 178014) ∧
    HasPrimeWithExpOne (S_val 178365 178368) ∧
    HasPrimeWithExpOne (S_val 178720 178723) ∧
    HasPrimeWithExpOne (S_val 179074 179077) ∧
    HasPrimeWithExpOne (S_val 179429 179432) ∧
    HasPrimeWithExpOne (S_val 179783 179786) ∧
    HasPrimeWithExpOne (S_val 180138 180141) ∧
    HasPrimeWithExpOne (S_val 180494 180497) ∧
    HasPrimeWithExpOne (S_val 180848 180851) ∧
    HasPrimeWithExpOne (S_val 181200 181203) ∧
    HasPrimeWithExpOne (S_val 181557 181560) ∧
    HasPrimeWithExpOne (S_val 181911 181914) ∧
    HasPrimeWithExpOne (S_val 182266 182269) ∧
    HasPrimeWithExpOne (S_val 182620 182623) ∧
    HasPrimeWithExpOne (S_val 182975 182978) ∧
    HasPrimeWithExpOne (S_val 183331 183334) ∧
    HasPrimeWithExpOne (S_val 183685 183688) ∧
    HasPrimeWithExpOne (S_val 184037 184040) ∧
    HasPrimeWithExpOne (S_val 184393 184396) ∧
    HasPrimeWithExpOne (S_val 184748 184751) ∧
    HasPrimeWithExpOne (S_val 185102 185105) ∧
    HasPrimeWithExpOne (S_val 185457 185460) ∧
    HasPrimeWithExpOne (S_val 185812 185815) ∧
    HasPrimeWithExpOne (S_val 186166 186169) ∧
    HasPrimeWithExpOne (S_val 186520 186523) ∧
    HasPrimeWithExpOne (S_val 186875 186878) ∧
    HasPrimeWithExpOne (S_val 187232 187235) ∧
    HasPrimeWithExpOne (S_val 187585 187588) ∧
    HasPrimeWithExpOne (S_val 187939 187942) ∧
    HasPrimeWithExpOne (S_val 188293 188296) ∧
    HasPrimeWithExpOne (S_val 188648 188651) ∧
    HasPrimeWithExpOne (S_val 189003 189006) ∧
    HasPrimeWithExpOne (S_val 189360 189363) ∧
    HasPrimeWithExpOne (S_val 189713 189716) ∧
    HasPrimeWithExpOne (S_val 190068 190071) ∧
    HasPrimeWithExpOne (S_val 190421 190424) ∧
    HasPrimeWithExpOne (S_val 190776 190779) ∧
    HasPrimeWithExpOne (S_val 191131 191134) ∧
    HasPrimeWithExpOne (S_val 191485 191488) ∧
    HasPrimeWithExpOne (S_val 191839 191842) ∧
    HasPrimeWithExpOne (S_val 192196 192199) ∧
    HasPrimeWithExpOne (S_val 192548 192551) ∧
    HasPrimeWithExpOne (S_val 192904 192907) ∧
    HasPrimeWithExpOne (S_val 193259 193262) ∧
    HasPrimeWithExpOne (S_val 193613 193616) ∧
    HasPrimeWithExpOne (S_val 193967 193970) ∧
    HasPrimeWithExpOne (S_val 194323 194326) ∧
    HasPrimeWithExpOne (S_val 194679 194682) ∧
    HasPrimeWithExpOne (S_val 195031 195034) ∧
    HasPrimeWithExpOne (S_val 195385 195388) ∧
    HasPrimeWithExpOne (S_val 195741 195744) ∧
    HasPrimeWithExpOne (S_val 196095 196098) ∧
    HasPrimeWithExpOne (S_val 196450 196453) ∧
    HasPrimeWithExpOne (S_val 196805 196808) ∧
    HasPrimeWithExpOne (S_val 197159 197162) ∧
    HasPrimeWithExpOne (S_val 197513 197516) ∧
    HasPrimeWithExpOne (S_val 197869 197872) ∧
    HasPrimeWithExpOne (S_val 198223 198226) ∧
    HasPrimeWithExpOne (S_val 198578 198581) ∧
    HasPrimeWithExpOne (S_val 198932 198935) ∧
    HasPrimeWithExpOne (S_val 199286 199289) ∧
    HasPrimeWithExpOne (S_val 199642 199645) ∧
    HasPrimeWithExpOne (S_val 199996 199999) ∧
    HasPrimeWithExpOne (S_val 200000 200003) :=
  ⟨row_1_4.1, row_196_199.1, row_386_389.1, row_587_590.1, row_1171_1174.1, row_1366_1369.1, row_1559_1562.1, row_1756_1759.1, row_2146_2149.1, row_2536_2539.1, row_2731_2734.1, row_3313_3316.1, row_3511_3514.1, row_3706_3709.1, row_3901_3904.1, row_4682_4685.1, row_4876_4879.1, row_5071_5074.1, row_5461_5464.1, row_5849_5852.1, row_6046_6049.1, row_6241_6244.1, row_6631_6634.1, row_7411_7414.1, row_7606_7609.1, row_7801_7804.1, row_7997_8000.1, row_8194_8197.1, row_8582_8585.1, row_9163_9166.1, row_9361_9364.1, row_9751_9754.1, row_10000_10003.1, row_10141_10144.1, row_10531_10534.1, row_10726_10729.1, row_11311_11314.1, row_11506_11509.1, row_11896_11899.1, row_12091_12094.1, row_12871_12874.1, row_13066_13069.1, row_13258_13261.1, row_13457_13460.1, row_13651_13654.1, row_13846_13849.1, row_14041_14044.1, row_14236_14239.1, row_14431_14434.1, row_14626_14629.1, row_14821_14824.1, row_15016_15019.1, row_15211_15214.1, row_15406_15409.1, row_15991_15994.1, row_16186_16189.1, row_16381_16384.1, row_16576_16579.1, row_16771_16774.1, row_16966_16969.1, row_17161_17164.1, row_17354_17357.1, row_17551_17554.1, row_17746_17749.1, row_17938_17941.1, row_18136_18139.1, row_18331_18334.1, row_18526_18529.1, row_18721_18724.1, row_19310_19313.1, row_19501_19504.1, row_19694_19697.1, row_19891_19894.1, row_20086_20089.1, row_20281_20284.1, row_20476_20479.1, row_20671_20674.1, row_20866_20869.1, row_21061_21064.1, row_21256_21259.1, row_21451_21454.1, row_21841_21844.1, row_22229_22232.1, row_22621_22624.1, row_22814_22817.1, row_23206_23209.1, row_23791_23794.1, row_24181_24184.1, row_24374_24377.1, row_24571_24574.1, row_24764_24767.1, row_25156_25159.1, row_25351_25354.1, row_26132_26135.1, row_26326_26329.1, row_26716_26719.1, row_26911_26914.1, row_27301_27304.1, row_27496_27499.1, row_27692_27695.1, row_28081_28084.1, row_28280_28283.1, row_28471_28474.1, row_28666_28669.1, row_29056_29059.1, row_29251_29254.1, row_29446_29449.1, row_29641_29644.1, row_29836_29839.1, row_30031_30034.1, row_30223_30226.1, row_30421_30424.1, row_30617_30620.1, row_30811_30814.1, row_31006_31009.1, row_31201_31204.1, row_31591_31594.1, row_31979_31982.1, row_32176_32179.1, row_32371_32374.1, row_32566_32569.1, row_32956_32959.1, row_33152_33155.1, row_33541_33544.1, row_33736_33739.1, row_34124_34127.1, row_34516_34519.1, row_34708_34711.1, row_34906_34909.1, row_35296_35299.1, row_35489_35492.1, row_35686_35689.1, row_36077_36080.1, row_36272_36275.1, row_36856_36859.1, row_37051_37054.1, row_37246_37249.1, row_37441_37444.1, row_37636_37639.1, row_38027_38030.1, row_38221_38224.1, row_38416_38419.1, row_38611_38614.1, row_38806_38809.1, row_39001_39004.1, row_39196_39199.1, row_39584_39587.1, row_39782_39785.1, row_40171_40174.1, row_40561_40564.1, row_40949_40952.1, row_41146_41149.1, row_41341_41344.1, row_41536_41539.1, row_41731_41734.1, row_41926_41929.1, row_42121_42124.1, row_42511_42514.1, row_42706_42709.1, row_42899_42902.1, row_43097_43100.1, row_43876_43879.1, row_44071_44074.1, row_44266_44269.1, row_44461_44464.1, row_44656_44659.1, row_44851_44854.1, row_45046_45049.1, row_45241_45244.1, row_45436_45439.1, row_45631_45634.1, row_46021_46024.1, row_46412_46415.1, row_46609_46612.1, row_46801_46804.1, row_46996_46999.1, row_47191_47194.1, row_47386_47389.1, row_47581_47584.1, row_47971_47974.1, row_48166_48169.1, row_48361_48364.1, row_48554_48557.1, row_48751_48754.1, row_49141_49144.1, row_49336_49339.1, row_49531_49534.1, row_50000_50003.1, row_50001_50004.1, row_50389_50392.1, row_50779_50782.1, row_51191_51194.1, row_51574_51577.1, row_51965_51968.1, row_52362_52365.1, row_52739_52742.1, row_53136_53139.1, row_53525_53528.1, row_53915_53918.1, row_54302_54305.1, row_54701_54704.1, row_55091_55094.1, row_55496_55499.1, row_55894_55897.1, row_56278_56281.1, row_56667_56670.1, row_57036_57039.1, row_57417_57420.1, row_57825_57828.1, row_58198_58201.1, row_58587_58590.1, row_58995_58998.1, row_59373_59376.1, row_59767_59770.1, row_60159_60162.1, row_60530_60533.1, row_60922_60925.1, row_61286_61289.1, row_61684_61687.1, row_62056_62059.1, row_62452_62455.1, row_62849_62852.1, row_63234_63237.1, row_63609_63612.1, row_63982_63985.1, row_64381_64384.1, row_64755_64758.1, row_65129_65132.1, row_65501_65504.1, row_65883_65886.1, row_66287_66290.1, row_66655_66658.1, row_67038_67041.1, row_67426_67429.1, row_67819_67822.1, row_68203_68206.1, row_68595_68598.1, row_68980_68983.1, row_69387_69390.1, row_69770_69773.1, row_70145_70148.1, row_70549_70552.1, row_70931_70934.1, row_71321_71324.1, row_71710_71713.1, row_72104_72107.1, row_72497_72500.1, row_72899_72902.1, row_73286_73289.1, row_73675_73678.1, row_74041_74044.1, row_74436_74439.1, row_74820_74823.1, row_75171_75174.1, row_75575_75578.1, row_75953_75956.1, row_76337_76340.1, row_76728_76731.1, row_77118_77121.1, row_77512_77515.1, row_77902_77905.1, row_78291_78294.1, row_78678_78681.1, row_79069_79072.1, row_79454_79457.1, row_79843_79846.1, row_80233_80236.1, row_80625_80628.1, row_81029_81032.1, row_81411_81414.1, row_81782_81785.1, row_82156_82159.1, row_82540_82543.1, row_82938_82941.1, row_83321_83324.1, row_83714_83717.1, row_84116_84119.1, row_84499_84502.1, row_84888_84891.1, row_85269_85272.1, row_85662_85665.1, row_86026_86029.1, row_86409_86412.1, row_86798_86801.1, row_87199_87202.1, row_87582_87585.1, row_87972_87975.1, row_88355_88358.1, row_88772_88775.1, row_89151_89154.1, row_89560_89563.1, row_89934_89937.1, row_90331_90334.1, row_90707_90710.1, row_91097_91100.1, row_91473_91476.1, row_91853_91856.1, row_92255_92258.1, row_92611_92614.1, row_93019_93022.1, row_93426_93429.1, row_93802_93805.1, row_94186_94189.1, row_94570_94573.1, row_94968_94971.1, row_95360_95363.1, row_95736_95739.1, row_96128_96131.1, row_96522_96525.1, row_96930_96933.1, row_97319_97322.1, row_97723_97726.1, row_98109_98112.1, row_98489_98492.1, row_98851_98854.1, row_99235_99238.1, row_99615_99618.1, row_100000_100003.1, row_100355_100358.1, row_100709_100712.1, row_101063_101066.1, row_101419_101422.1, row_101773_101776.1, row_102126_102129.1, row_102483_102486.1, row_102836_102839.1, row_103192_103195.1, row_103545_103548.1, row_103900_103903.1, row_104255_104258.1, row_104609_104612.1, row_104965_104968.1, row_105319_105322.1, row_105673_105676.1, row_106027_106030.1, row_106381_106384.1, row_106738_106741.1, row_107092_107095.1, row_107444_107447.1, row_107801_107804.1, row_108155_108158.1, row_108511_108514.1, row_108864_108867.1, row_109219_109222.1, row_109575_109578.1, row_109928_109931.1, row_110284_110287.1, row_110637_110640.1, row_110992_110995.1, row_111347_111350.1, row_111702_111705.1, row_112056_112059.1, row_112410_112413.1, row_112767_112770.1, row_113120_113123.1, row_113475_113478.1, row_113828_113831.1, row_114182_114185.1, row_114538_114541.1, row_114892_114895.1, row_115246_115249.1, row_115602_115605.1, row_115956_115959.1, row_116311_116314.1, row_116666_116669.1, row_117021_117024.1, row_117374_117377.1, row_117728_117731.1, row_118084_118087.1, row_118439_118442.1, row_118795_118798.1, row_119148_119151.1, row_119502_119505.1, row_119857_119860.1, row_120212_120215.1, row_120566_120569.1, row_120922_120925.1, row_121274_121277.1, row_121628_121631.1, row_121985_121988.1, row_122337_122340.1, row_122690_122693.1, row_123047_123050.1, row_123402_123405.1, row_123756_123759.1, row_124112_124115.1, row_124467_124470.1, row_124821_124824.1, row_125177_125180.1, row_125527_125530.1, row_125885_125888.1, row_126239_126242.1, row_126596_126599.1, row_126948_126951.1, row_127303_127306.1, row_127658_127661.1, row_128013_128016.1, row_128368_128371.1, row_128721_128724.1, row_129075_129078.1, row_129431_129434.1, row_129786_129789.1, row_130141_130144.1, row_130496_130499.1, row_130849_130852.1, row_131204_131207.1, row_131559_131562.1, row_131913_131916.1, row_132269_132272.1, row_132624_132627.1, row_132979_132982.1, row_133332_133335.1, row_133686_133689.1, row_134041_134044.1, row_134395_134398.1, row_134748_134751.1, row_135104_135107.1, row_135459_135462.1, row_135814_135817.1, row_136169_136172.1, row_136524_136527.1, row_136878_136881.1, row_137232_137235.1, row_137588_137591.1, row_137942_137945.1, row_138295_138298.1, row_138651_138654.1, row_139005_139008.1, row_139362_139365.1, row_139714_139717.1, row_140070_140073.1, row_140423_140426.1, row_140778_140781.1, row_141132_141135.1, row_141488_141491.1, row_141841_141844.1, row_142195_142198.1, row_142550_142553.1, row_142906_142909.1, row_143261_143264.1, row_143614_143617.1, row_143967_143970.1, row_144324_144327.1, row_144679_144682.1, row_145032_145035.1, row_145389_145392.1, row_145742_145745.1, row_146100_146103.1, row_146452_146455.1, row_146805_146808.1, row_147161_147164.1, row_147515_147518.1, row_147870_147873.1, row_148225_148228.1, row_148578_148581.1, row_148934_148937.1, row_149288_149291.1, row_149644_149647.1, row_149998_150001.1, row_150352_150355.1, row_150706_150709.1, row_151061_151064.1, row_151417_151420.1, row_151771_151774.1, row_152124_152127.1, row_152480_152483.1, row_152836_152839.1, row_153188_153191.1, row_153542_153545.1, row_153899_153902.1, row_154255_154258.1, row_154607_154610.1, row_154963_154966.1, row_155320_155323.1, row_155671_155674.1, row_156026_156029.1, row_156381_156384.1, row_156736_156739.1, row_157090_157093.1, row_157442_157445.1, row_157799_157802.1, row_158155_158158.1, row_158508_158511.1, row_158862_158865.1, row_159217_159220.1, row_159573_159576.1, row_159926_159929.1, row_160281_160284.1, row_160635_160638.1, row_160988_160991.1, row_161345_161348.1, row_161700_161703.1, row_162054_162057.1, row_162408_162411.1, row_162763_162766.1, row_163118_163121.1, row_163472_163475.1, row_163827_163830.1, row_164181_164184.1, row_164536_164539.1, row_164891_164894.1, row_165245_165248.1, row_165599_165602.1, row_165954_165957.1, row_166309_166312.1, row_166664_166667.1, row_167018_167021.1, row_167373_167376.1, row_167726_167729.1, row_168082_168085.1, row_168437_168440.1, row_168792_168795.1, row_169151_169154.1, row_169500_169503.1, row_169856_169859.1, row_170209_170212.1, row_170564_170567.1, row_170919_170922.1, row_171274_171277.1, row_171627_171630.1, row_171985_171988.1, row_172338_172341.1, row_172692_172695.1, row_173046_173049.1, row_173400_173403.1, row_173755_173758.1, row_174110_174113.1, row_174466_174469.1, row_174822_174825.1, row_175175_175178.1, row_175528_175531.1, row_175886_175889.1, row_176238_176241.1, row_176592_176595.1, row_176946_176949.1, row_177301_177304.1, row_177656_177659.1, row_178011_178014.1, row_178365_178368.1, row_178720_178723.1, row_179074_179077.1, row_179429_179432.1, row_179783_179786.1, row_180138_180141.1, row_180494_180497.1, row_180848_180851.1, row_181200_181203.1, row_181557_181560.1, row_181911_181914.1, row_182266_182269.1, row_182620_182623.1, row_182975_182978.1, row_183331_183334.1, row_183685_183688.1, row_184037_184040.1, row_184393_184396.1, row_184748_184751.1, row_185102_185105.1, row_185457_185460.1, row_185812_185815.1, row_186166_186169.1, row_186520_186523.1, row_186875_186878.1, row_187232_187235.1, row_187585_187588.1, row_187939_187942.1, row_188293_188296.1, row_188648_188651.1, row_189003_189006.1, row_189360_189363.1, row_189713_189716.1, row_190068_190071.1, row_190421_190424.1, row_190776_190779.1, row_191131_191134.1, row_191485_191488.1, row_191839_191842.1, row_192196_192199.1, row_192548_192551.1, row_192904_192907.1, row_193259_193262.1, row_193613_193616.1, row_193967_193970.1, row_194323_194326.1, row_194679_194682.1, row_195031_195034.1, row_195385_195388.1, row_195741_195744.1, row_196095_196098.1, row_196450_196453.1, row_196805_196808.1, row_197159_197162.1, row_197513_197516.1, row_197869_197872.1, row_198223_198226.1, row_198578_198581.1, row_198932_198935.1, row_199286_199289.1, row_199642_199645.1, row_199996_199999.1, row_200000_200003.1⟩

theorem exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows :
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
        order_of_C_B_inv_mod_p2 100003 100000 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100355 100358 ∧ ¬ p ∣ (100358 - 100355) ∧
      ∃ (hNotC : ¬ p ∣ 100358) (hNotB : ¬ p ∣ 100355),
        order_of_C_B_inv_mod_p2 100358 100355 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 100709 100712 ∧ ¬ p ∣ (100712 - 100709) ∧
      ∃ (hNotC : ¬ p ∣ 100712) (hNotB : ¬ p ∣ 100709),
        order_of_C_B_inv_mod_p2 100712 100709 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101063 101066 ∧ ¬ p ∣ (101066 - 101063) ∧
      ∃ (hNotC : ¬ p ∣ 101066) (hNotB : ¬ p ∣ 101063),
        order_of_C_B_inv_mod_p2 101066 101063 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101419 101422 ∧ ¬ p ∣ (101422 - 101419) ∧
      ∃ (hNotC : ¬ p ∣ 101422) (hNotB : ¬ p ∣ 101419),
        order_of_C_B_inv_mod_p2 101422 101419 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 101773 101776 ∧ ¬ p ∣ (101776 - 101773) ∧
      ∃ (hNotC : ¬ p ∣ 101776) (hNotB : ¬ p ∣ 101773),
        order_of_C_B_inv_mod_p2 101776 101773 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102126 102129 ∧ ¬ p ∣ (102129 - 102126) ∧
      ∃ (hNotC : ¬ p ∣ 102129) (hNotB : ¬ p ∣ 102126),
        order_of_C_B_inv_mod_p2 102129 102126 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102483 102486 ∧ ¬ p ∣ (102486 - 102483) ∧
      ∃ (hNotC : ¬ p ∣ 102486) (hNotB : ¬ p ∣ 102483),
        order_of_C_B_inv_mod_p2 102486 102483 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 102836 102839 ∧ ¬ p ∣ (102839 - 102836) ∧
      ∃ (hNotC : ¬ p ∣ 102839) (hNotB : ¬ p ∣ 102836),
        order_of_C_B_inv_mod_p2 102839 102836 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103192 103195 ∧ ¬ p ∣ (103195 - 103192) ∧
      ∃ (hNotC : ¬ p ∣ 103195) (hNotB : ¬ p ∣ 103192),
        order_of_C_B_inv_mod_p2 103195 103192 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103545 103548 ∧ ¬ p ∣ (103548 - 103545) ∧
      ∃ (hNotC : ¬ p ∣ 103548) (hNotB : ¬ p ∣ 103545),
        order_of_C_B_inv_mod_p2 103548 103545 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 103900 103903 ∧ ¬ p ∣ (103903 - 103900) ∧
      ∃ (hNotC : ¬ p ∣ 103903) (hNotB : ¬ p ∣ 103900),
        order_of_C_B_inv_mod_p2 103903 103900 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104255 104258 ∧ ¬ p ∣ (104258 - 104255) ∧
      ∃ (hNotC : ¬ p ∣ 104258) (hNotB : ¬ p ∣ 104255),
        order_of_C_B_inv_mod_p2 104258 104255 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104609 104612 ∧ ¬ p ∣ (104612 - 104609) ∧
      ∃ (hNotC : ¬ p ∣ 104612) (hNotB : ¬ p ∣ 104609),
        order_of_C_B_inv_mod_p2 104612 104609 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 104965 104968 ∧ ¬ p ∣ (104968 - 104965) ∧
      ∃ (hNotC : ¬ p ∣ 104968) (hNotB : ¬ p ∣ 104965),
        order_of_C_B_inv_mod_p2 104968 104965 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105319 105322 ∧ ¬ p ∣ (105322 - 105319) ∧
      ∃ (hNotC : ¬ p ∣ 105322) (hNotB : ¬ p ∣ 105319),
        order_of_C_B_inv_mod_p2 105322 105319 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 105673 105676 ∧ ¬ p ∣ (105676 - 105673) ∧
      ∃ (hNotC : ¬ p ∣ 105676) (hNotB : ¬ p ∣ 105673),
        order_of_C_B_inv_mod_p2 105676 105673 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106027 106030 ∧ ¬ p ∣ (106030 - 106027) ∧
      ∃ (hNotC : ¬ p ∣ 106030) (hNotB : ¬ p ∣ 106027),
        order_of_C_B_inv_mod_p2 106030 106027 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106381 106384 ∧ ¬ p ∣ (106384 - 106381) ∧
      ∃ (hNotC : ¬ p ∣ 106384) (hNotB : ¬ p ∣ 106381),
        order_of_C_B_inv_mod_p2 106384 106381 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 106738 106741 ∧ ¬ p ∣ (106741 - 106738) ∧
      ∃ (hNotC : ¬ p ∣ 106741) (hNotB : ¬ p ∣ 106738),
        order_of_C_B_inv_mod_p2 106741 106738 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107092 107095 ∧ ¬ p ∣ (107095 - 107092) ∧
      ∃ (hNotC : ¬ p ∣ 107095) (hNotB : ¬ p ∣ 107092),
        order_of_C_B_inv_mod_p2 107095 107092 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107444 107447 ∧ ¬ p ∣ (107447 - 107444) ∧
      ∃ (hNotC : ¬ p ∣ 107447) (hNotB : ¬ p ∣ 107444),
        order_of_C_B_inv_mod_p2 107447 107444 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 107801 107804 ∧ ¬ p ∣ (107804 - 107801) ∧
      ∃ (hNotC : ¬ p ∣ 107804) (hNotB : ¬ p ∣ 107801),
        order_of_C_B_inv_mod_p2 107804 107801 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108155 108158 ∧ ¬ p ∣ (108158 - 108155) ∧
      ∃ (hNotC : ¬ p ∣ 108158) (hNotB : ¬ p ∣ 108155),
        order_of_C_B_inv_mod_p2 108158 108155 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108511 108514 ∧ ¬ p ∣ (108514 - 108511) ∧
      ∃ (hNotC : ¬ p ∣ 108514) (hNotB : ¬ p ∣ 108511),
        order_of_C_B_inv_mod_p2 108514 108511 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 108864 108867 ∧ ¬ p ∣ (108867 - 108864) ∧
      ∃ (hNotC : ¬ p ∣ 108867) (hNotB : ¬ p ∣ 108864),
        order_of_C_B_inv_mod_p2 108867 108864 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109219 109222 ∧ ¬ p ∣ (109222 - 109219) ∧
      ∃ (hNotC : ¬ p ∣ 109222) (hNotB : ¬ p ∣ 109219),
        order_of_C_B_inv_mod_p2 109222 109219 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109575 109578 ∧ ¬ p ∣ (109578 - 109575) ∧
      ∃ (hNotC : ¬ p ∣ 109578) (hNotB : ¬ p ∣ 109575),
        order_of_C_B_inv_mod_p2 109578 109575 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 109928 109931 ∧ ¬ p ∣ (109931 - 109928) ∧
      ∃ (hNotC : ¬ p ∣ 109931) (hNotB : ¬ p ∣ 109928),
        order_of_C_B_inv_mod_p2 109931 109928 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110284 110287 ∧ ¬ p ∣ (110287 - 110284) ∧
      ∃ (hNotC : ¬ p ∣ 110287) (hNotB : ¬ p ∣ 110284),
        order_of_C_B_inv_mod_p2 110287 110284 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110637 110640 ∧ ¬ p ∣ (110640 - 110637) ∧
      ∃ (hNotC : ¬ p ∣ 110640) (hNotB : ¬ p ∣ 110637),
        order_of_C_B_inv_mod_p2 110640 110637 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 110992 110995 ∧ ¬ p ∣ (110995 - 110992) ∧
      ∃ (hNotC : ¬ p ∣ 110995) (hNotB : ¬ p ∣ 110992),
        order_of_C_B_inv_mod_p2 110995 110992 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111347 111350 ∧ ¬ p ∣ (111350 - 111347) ∧
      ∃ (hNotC : ¬ p ∣ 111350) (hNotB : ¬ p ∣ 111347),
        order_of_C_B_inv_mod_p2 111350 111347 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 111702 111705 ∧ ¬ p ∣ (111705 - 111702) ∧
      ∃ (hNotC : ¬ p ∣ 111705) (hNotB : ¬ p ∣ 111702),
        order_of_C_B_inv_mod_p2 111705 111702 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112056 112059 ∧ ¬ p ∣ (112059 - 112056) ∧
      ∃ (hNotC : ¬ p ∣ 112059) (hNotB : ¬ p ∣ 112056),
        order_of_C_B_inv_mod_p2 112059 112056 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112410 112413 ∧ ¬ p ∣ (112413 - 112410) ∧
      ∃ (hNotC : ¬ p ∣ 112413) (hNotB : ¬ p ∣ 112410),
        order_of_C_B_inv_mod_p2 112413 112410 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 112767 112770 ∧ ¬ p ∣ (112770 - 112767) ∧
      ∃ (hNotC : ¬ p ∣ 112770) (hNotB : ¬ p ∣ 112767),
        order_of_C_B_inv_mod_p2 112770 112767 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113120 113123 ∧ ¬ p ∣ (113123 - 113120) ∧
      ∃ (hNotC : ¬ p ∣ 113123) (hNotB : ¬ p ∣ 113120),
        order_of_C_B_inv_mod_p2 113123 113120 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113475 113478 ∧ ¬ p ∣ (113478 - 113475) ∧
      ∃ (hNotC : ¬ p ∣ 113478) (hNotB : ¬ p ∣ 113475),
        order_of_C_B_inv_mod_p2 113478 113475 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 113828 113831 ∧ ¬ p ∣ (113831 - 113828) ∧
      ∃ (hNotC : ¬ p ∣ 113831) (hNotB : ¬ p ∣ 113828),
        order_of_C_B_inv_mod_p2 113831 113828 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114182 114185 ∧ ¬ p ∣ (114185 - 114182) ∧
      ∃ (hNotC : ¬ p ∣ 114185) (hNotB : ¬ p ∣ 114182),
        order_of_C_B_inv_mod_p2 114185 114182 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114538 114541 ∧ ¬ p ∣ (114541 - 114538) ∧
      ∃ (hNotC : ¬ p ∣ 114541) (hNotB : ¬ p ∣ 114538),
        order_of_C_B_inv_mod_p2 114541 114538 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 114892 114895 ∧ ¬ p ∣ (114895 - 114892) ∧
      ∃ (hNotC : ¬ p ∣ 114895) (hNotB : ¬ p ∣ 114892),
        order_of_C_B_inv_mod_p2 114895 114892 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115246 115249 ∧ ¬ p ∣ (115249 - 115246) ∧
      ∃ (hNotC : ¬ p ∣ 115249) (hNotB : ¬ p ∣ 115246),
        order_of_C_B_inv_mod_p2 115249 115246 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115602 115605 ∧ ¬ p ∣ (115605 - 115602) ∧
      ∃ (hNotC : ¬ p ∣ 115605) (hNotB : ¬ p ∣ 115602),
        order_of_C_B_inv_mod_p2 115605 115602 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 115956 115959 ∧ ¬ p ∣ (115959 - 115956) ∧
      ∃ (hNotC : ¬ p ∣ 115959) (hNotB : ¬ p ∣ 115956),
        order_of_C_B_inv_mod_p2 115959 115956 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116311 116314 ∧ ¬ p ∣ (116314 - 116311) ∧
      ∃ (hNotC : ¬ p ∣ 116314) (hNotB : ¬ p ∣ 116311),
        order_of_C_B_inv_mod_p2 116314 116311 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 116666 116669 ∧ ¬ p ∣ (116669 - 116666) ∧
      ∃ (hNotC : ¬ p ∣ 116669) (hNotB : ¬ p ∣ 116666),
        order_of_C_B_inv_mod_p2 116669 116666 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117021 117024 ∧ ¬ p ∣ (117024 - 117021) ∧
      ∃ (hNotC : ¬ p ∣ 117024) (hNotB : ¬ p ∣ 117021),
        order_of_C_B_inv_mod_p2 117024 117021 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117374 117377 ∧ ¬ p ∣ (117377 - 117374) ∧
      ∃ (hNotC : ¬ p ∣ 117377) (hNotB : ¬ p ∣ 117374),
        order_of_C_B_inv_mod_p2 117377 117374 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 117728 117731 ∧ ¬ p ∣ (117731 - 117728) ∧
      ∃ (hNotC : ¬ p ∣ 117731) (hNotB : ¬ p ∣ 117728),
        order_of_C_B_inv_mod_p2 117731 117728 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118084 118087 ∧ ¬ p ∣ (118087 - 118084) ∧
      ∃ (hNotC : ¬ p ∣ 118087) (hNotB : ¬ p ∣ 118084),
        order_of_C_B_inv_mod_p2 118087 118084 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118439 118442 ∧ ¬ p ∣ (118442 - 118439) ∧
      ∃ (hNotC : ¬ p ∣ 118442) (hNotB : ¬ p ∣ 118439),
        order_of_C_B_inv_mod_p2 118442 118439 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 118795 118798 ∧ ¬ p ∣ (118798 - 118795) ∧
      ∃ (hNotC : ¬ p ∣ 118798) (hNotB : ¬ p ∣ 118795),
        order_of_C_B_inv_mod_p2 118798 118795 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119148 119151 ∧ ¬ p ∣ (119151 - 119148) ∧
      ∃ (hNotC : ¬ p ∣ 119151) (hNotB : ¬ p ∣ 119148),
        order_of_C_B_inv_mod_p2 119151 119148 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119502 119505 ∧ ¬ p ∣ (119505 - 119502) ∧
      ∃ (hNotC : ¬ p ∣ 119505) (hNotB : ¬ p ∣ 119502),
        order_of_C_B_inv_mod_p2 119505 119502 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 119857 119860 ∧ ¬ p ∣ (119860 - 119857) ∧
      ∃ (hNotC : ¬ p ∣ 119860) (hNotB : ¬ p ∣ 119857),
        order_of_C_B_inv_mod_p2 119860 119857 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120212 120215 ∧ ¬ p ∣ (120215 - 120212) ∧
      ∃ (hNotC : ¬ p ∣ 120215) (hNotB : ¬ p ∣ 120212),
        order_of_C_B_inv_mod_p2 120215 120212 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120566 120569 ∧ ¬ p ∣ (120569 - 120566) ∧
      ∃ (hNotC : ¬ p ∣ 120569) (hNotB : ¬ p ∣ 120566),
        order_of_C_B_inv_mod_p2 120569 120566 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 120922 120925 ∧ ¬ p ∣ (120925 - 120922) ∧
      ∃ (hNotC : ¬ p ∣ 120925) (hNotB : ¬ p ∣ 120922),
        order_of_C_B_inv_mod_p2 120925 120922 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121274 121277 ∧ ¬ p ∣ (121277 - 121274) ∧
      ∃ (hNotC : ¬ p ∣ 121277) (hNotB : ¬ p ∣ 121274),
        order_of_C_B_inv_mod_p2 121277 121274 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121628 121631 ∧ ¬ p ∣ (121631 - 121628) ∧
      ∃ (hNotC : ¬ p ∣ 121631) (hNotB : ¬ p ∣ 121628),
        order_of_C_B_inv_mod_p2 121631 121628 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 121985 121988 ∧ ¬ p ∣ (121988 - 121985) ∧
      ∃ (hNotC : ¬ p ∣ 121988) (hNotB : ¬ p ∣ 121985),
        order_of_C_B_inv_mod_p2 121988 121985 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122337 122340 ∧ ¬ p ∣ (122340 - 122337) ∧
      ∃ (hNotC : ¬ p ∣ 122340) (hNotB : ¬ p ∣ 122337),
        order_of_C_B_inv_mod_p2 122340 122337 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 122690 122693 ∧ ¬ p ∣ (122693 - 122690) ∧
      ∃ (hNotC : ¬ p ∣ 122693) (hNotB : ¬ p ∣ 122690),
        order_of_C_B_inv_mod_p2 122693 122690 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123047 123050 ∧ ¬ p ∣ (123050 - 123047) ∧
      ∃ (hNotC : ¬ p ∣ 123050) (hNotB : ¬ p ∣ 123047),
        order_of_C_B_inv_mod_p2 123050 123047 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123402 123405 ∧ ¬ p ∣ (123405 - 123402) ∧
      ∃ (hNotC : ¬ p ∣ 123405) (hNotB : ¬ p ∣ 123402),
        order_of_C_B_inv_mod_p2 123405 123402 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 123756 123759 ∧ ¬ p ∣ (123759 - 123756) ∧
      ∃ (hNotC : ¬ p ∣ 123759) (hNotB : ¬ p ∣ 123756),
        order_of_C_B_inv_mod_p2 123759 123756 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124112 124115 ∧ ¬ p ∣ (124115 - 124112) ∧
      ∃ (hNotC : ¬ p ∣ 124115) (hNotB : ¬ p ∣ 124112),
        order_of_C_B_inv_mod_p2 124115 124112 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124467 124470 ∧ ¬ p ∣ (124470 - 124467) ∧
      ∃ (hNotC : ¬ p ∣ 124470) (hNotB : ¬ p ∣ 124467),
        order_of_C_B_inv_mod_p2 124470 124467 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 124821 124824 ∧ ¬ p ∣ (124824 - 124821) ∧
      ∃ (hNotC : ¬ p ∣ 124824) (hNotB : ¬ p ∣ 124821),
        order_of_C_B_inv_mod_p2 124824 124821 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125177 125180 ∧ ¬ p ∣ (125180 - 125177) ∧
      ∃ (hNotC : ¬ p ∣ 125180) (hNotB : ¬ p ∣ 125177),
        order_of_C_B_inv_mod_p2 125180 125177 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125527 125530 ∧ ¬ p ∣ (125530 - 125527) ∧
      ∃ (hNotC : ¬ p ∣ 125530) (hNotB : ¬ p ∣ 125527),
        order_of_C_B_inv_mod_p2 125530 125527 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 125885 125888 ∧ ¬ p ∣ (125888 - 125885) ∧
      ∃ (hNotC : ¬ p ∣ 125888) (hNotB : ¬ p ∣ 125885),
        order_of_C_B_inv_mod_p2 125888 125885 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126239 126242 ∧ ¬ p ∣ (126242 - 126239) ∧
      ∃ (hNotC : ¬ p ∣ 126242) (hNotB : ¬ p ∣ 126239),
        order_of_C_B_inv_mod_p2 126242 126239 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126596 126599 ∧ ¬ p ∣ (126599 - 126596) ∧
      ∃ (hNotC : ¬ p ∣ 126599) (hNotB : ¬ p ∣ 126596),
        order_of_C_B_inv_mod_p2 126599 126596 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 126948 126951 ∧ ¬ p ∣ (126951 - 126948) ∧
      ∃ (hNotC : ¬ p ∣ 126951) (hNotB : ¬ p ∣ 126948),
        order_of_C_B_inv_mod_p2 126951 126948 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127303 127306 ∧ ¬ p ∣ (127306 - 127303) ∧
      ∃ (hNotC : ¬ p ∣ 127306) (hNotB : ¬ p ∣ 127303),
        order_of_C_B_inv_mod_p2 127306 127303 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 127658 127661 ∧ ¬ p ∣ (127661 - 127658) ∧
      ∃ (hNotC : ¬ p ∣ 127661) (hNotB : ¬ p ∣ 127658),
        order_of_C_B_inv_mod_p2 127661 127658 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128013 128016 ∧ ¬ p ∣ (128016 - 128013) ∧
      ∃ (hNotC : ¬ p ∣ 128016) (hNotB : ¬ p ∣ 128013),
        order_of_C_B_inv_mod_p2 128016 128013 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128368 128371 ∧ ¬ p ∣ (128371 - 128368) ∧
      ∃ (hNotC : ¬ p ∣ 128371) (hNotB : ¬ p ∣ 128368),
        order_of_C_B_inv_mod_p2 128371 128368 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 128721 128724 ∧ ¬ p ∣ (128724 - 128721) ∧
      ∃ (hNotC : ¬ p ∣ 128724) (hNotB : ¬ p ∣ 128721),
        order_of_C_B_inv_mod_p2 128724 128721 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129075 129078 ∧ ¬ p ∣ (129078 - 129075) ∧
      ∃ (hNotC : ¬ p ∣ 129078) (hNotB : ¬ p ∣ 129075),
        order_of_C_B_inv_mod_p2 129078 129075 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129431 129434 ∧ ¬ p ∣ (129434 - 129431) ∧
      ∃ (hNotC : ¬ p ∣ 129434) (hNotB : ¬ p ∣ 129431),
        order_of_C_B_inv_mod_p2 129434 129431 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 129786 129789 ∧ ¬ p ∣ (129789 - 129786) ∧
      ∃ (hNotC : ¬ p ∣ 129789) (hNotB : ¬ p ∣ 129786),
        order_of_C_B_inv_mod_p2 129789 129786 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130141 130144 ∧ ¬ p ∣ (130144 - 130141) ∧
      ∃ (hNotC : ¬ p ∣ 130144) (hNotB : ¬ p ∣ 130141),
        order_of_C_B_inv_mod_p2 130144 130141 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130496 130499 ∧ ¬ p ∣ (130499 - 130496) ∧
      ∃ (hNotC : ¬ p ∣ 130499) (hNotB : ¬ p ∣ 130496),
        order_of_C_B_inv_mod_p2 130499 130496 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 130849 130852 ∧ ¬ p ∣ (130852 - 130849) ∧
      ∃ (hNotC : ¬ p ∣ 130852) (hNotB : ¬ p ∣ 130849),
        order_of_C_B_inv_mod_p2 130852 130849 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131204 131207 ∧ ¬ p ∣ (131207 - 131204) ∧
      ∃ (hNotC : ¬ p ∣ 131207) (hNotB : ¬ p ∣ 131204),
        order_of_C_B_inv_mod_p2 131207 131204 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131559 131562 ∧ ¬ p ∣ (131562 - 131559) ∧
      ∃ (hNotC : ¬ p ∣ 131562) (hNotB : ¬ p ∣ 131559),
        order_of_C_B_inv_mod_p2 131562 131559 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 131913 131916 ∧ ¬ p ∣ (131916 - 131913) ∧
      ∃ (hNotC : ¬ p ∣ 131916) (hNotB : ¬ p ∣ 131913),
        order_of_C_B_inv_mod_p2 131916 131913 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132269 132272 ∧ ¬ p ∣ (132272 - 132269) ∧
      ∃ (hNotC : ¬ p ∣ 132272) (hNotB : ¬ p ∣ 132269),
        order_of_C_B_inv_mod_p2 132272 132269 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132624 132627 ∧ ¬ p ∣ (132627 - 132624) ∧
      ∃ (hNotC : ¬ p ∣ 132627) (hNotB : ¬ p ∣ 132624),
        order_of_C_B_inv_mod_p2 132627 132624 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 132979 132982 ∧ ¬ p ∣ (132982 - 132979) ∧
      ∃ (hNotC : ¬ p ∣ 132982) (hNotB : ¬ p ∣ 132979),
        order_of_C_B_inv_mod_p2 132982 132979 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133332 133335 ∧ ¬ p ∣ (133335 - 133332) ∧
      ∃ (hNotC : ¬ p ∣ 133335) (hNotB : ¬ p ∣ 133332),
        order_of_C_B_inv_mod_p2 133335 133332 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 133686 133689 ∧ ¬ p ∣ (133689 - 133686) ∧
      ∃ (hNotC : ¬ p ∣ 133689) (hNotB : ¬ p ∣ 133686),
        order_of_C_B_inv_mod_p2 133689 133686 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134041 134044 ∧ ¬ p ∣ (134044 - 134041) ∧
      ∃ (hNotC : ¬ p ∣ 134044) (hNotB : ¬ p ∣ 134041),
        order_of_C_B_inv_mod_p2 134044 134041 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134395 134398 ∧ ¬ p ∣ (134398 - 134395) ∧
      ∃ (hNotC : ¬ p ∣ 134398) (hNotB : ¬ p ∣ 134395),
        order_of_C_B_inv_mod_p2 134398 134395 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 134748 134751 ∧ ¬ p ∣ (134751 - 134748) ∧
      ∃ (hNotC : ¬ p ∣ 134751) (hNotB : ¬ p ∣ 134748),
        order_of_C_B_inv_mod_p2 134751 134748 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135104 135107 ∧ ¬ p ∣ (135107 - 135104) ∧
      ∃ (hNotC : ¬ p ∣ 135107) (hNotB : ¬ p ∣ 135104),
        order_of_C_B_inv_mod_p2 135107 135104 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135459 135462 ∧ ¬ p ∣ (135462 - 135459) ∧
      ∃ (hNotC : ¬ p ∣ 135462) (hNotB : ¬ p ∣ 135459),
        order_of_C_B_inv_mod_p2 135462 135459 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 135814 135817 ∧ ¬ p ∣ (135817 - 135814) ∧
      ∃ (hNotC : ¬ p ∣ 135817) (hNotB : ¬ p ∣ 135814),
        order_of_C_B_inv_mod_p2 135817 135814 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136169 136172 ∧ ¬ p ∣ (136172 - 136169) ∧
      ∃ (hNotC : ¬ p ∣ 136172) (hNotB : ¬ p ∣ 136169),
        order_of_C_B_inv_mod_p2 136172 136169 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136524 136527 ∧ ¬ p ∣ (136527 - 136524) ∧
      ∃ (hNotC : ¬ p ∣ 136527) (hNotB : ¬ p ∣ 136524),
        order_of_C_B_inv_mod_p2 136527 136524 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 136878 136881 ∧ ¬ p ∣ (136881 - 136878) ∧
      ∃ (hNotC : ¬ p ∣ 136881) (hNotB : ¬ p ∣ 136878),
        order_of_C_B_inv_mod_p2 136881 136878 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137232 137235 ∧ ¬ p ∣ (137235 - 137232) ∧
      ∃ (hNotC : ¬ p ∣ 137235) (hNotB : ¬ p ∣ 137232),
        order_of_C_B_inv_mod_p2 137235 137232 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137588 137591 ∧ ¬ p ∣ (137591 - 137588) ∧
      ∃ (hNotC : ¬ p ∣ 137591) (hNotB : ¬ p ∣ 137588),
        order_of_C_B_inv_mod_p2 137591 137588 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 137942 137945 ∧ ¬ p ∣ (137945 - 137942) ∧
      ∃ (hNotC : ¬ p ∣ 137945) (hNotB : ¬ p ∣ 137942),
        order_of_C_B_inv_mod_p2 137945 137942 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138295 138298 ∧ ¬ p ∣ (138298 - 138295) ∧
      ∃ (hNotC : ¬ p ∣ 138298) (hNotB : ¬ p ∣ 138295),
        order_of_C_B_inv_mod_p2 138298 138295 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 138651 138654 ∧ ¬ p ∣ (138654 - 138651) ∧
      ∃ (hNotC : ¬ p ∣ 138654) (hNotB : ¬ p ∣ 138651),
        order_of_C_B_inv_mod_p2 138654 138651 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139005 139008 ∧ ¬ p ∣ (139008 - 139005) ∧
      ∃ (hNotC : ¬ p ∣ 139008) (hNotB : ¬ p ∣ 139005),
        order_of_C_B_inv_mod_p2 139008 139005 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139362 139365 ∧ ¬ p ∣ (139365 - 139362) ∧
      ∃ (hNotC : ¬ p ∣ 139365) (hNotB : ¬ p ∣ 139362),
        order_of_C_B_inv_mod_p2 139365 139362 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 139714 139717 ∧ ¬ p ∣ (139717 - 139714) ∧
      ∃ (hNotC : ¬ p ∣ 139717) (hNotB : ¬ p ∣ 139714),
        order_of_C_B_inv_mod_p2 139717 139714 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140070 140073 ∧ ¬ p ∣ (140073 - 140070) ∧
      ∃ (hNotC : ¬ p ∣ 140073) (hNotB : ¬ p ∣ 140070),
        order_of_C_B_inv_mod_p2 140073 140070 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140423 140426 ∧ ¬ p ∣ (140426 - 140423) ∧
      ∃ (hNotC : ¬ p ∣ 140426) (hNotB : ¬ p ∣ 140423),
        order_of_C_B_inv_mod_p2 140426 140423 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 140778 140781 ∧ ¬ p ∣ (140781 - 140778) ∧
      ∃ (hNotC : ¬ p ∣ 140781) (hNotB : ¬ p ∣ 140778),
        order_of_C_B_inv_mod_p2 140781 140778 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141132 141135 ∧ ¬ p ∣ (141135 - 141132) ∧
      ∃ (hNotC : ¬ p ∣ 141135) (hNotB : ¬ p ∣ 141132),
        order_of_C_B_inv_mod_p2 141135 141132 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141488 141491 ∧ ¬ p ∣ (141491 - 141488) ∧
      ∃ (hNotC : ¬ p ∣ 141491) (hNotB : ¬ p ∣ 141488),
        order_of_C_B_inv_mod_p2 141491 141488 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 141841 141844 ∧ ¬ p ∣ (141844 - 141841) ∧
      ∃ (hNotC : ¬ p ∣ 141844) (hNotB : ¬ p ∣ 141841),
        order_of_C_B_inv_mod_p2 141844 141841 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142195 142198 ∧ ¬ p ∣ (142198 - 142195) ∧
      ∃ (hNotC : ¬ p ∣ 142198) (hNotB : ¬ p ∣ 142195),
        order_of_C_B_inv_mod_p2 142198 142195 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142550 142553 ∧ ¬ p ∣ (142553 - 142550) ∧
      ∃ (hNotC : ¬ p ∣ 142553) (hNotB : ¬ p ∣ 142550),
        order_of_C_B_inv_mod_p2 142553 142550 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 142906 142909 ∧ ¬ p ∣ (142909 - 142906) ∧
      ∃ (hNotC : ¬ p ∣ 142909) (hNotB : ¬ p ∣ 142906),
        order_of_C_B_inv_mod_p2 142909 142906 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143261 143264 ∧ ¬ p ∣ (143264 - 143261) ∧
      ∃ (hNotC : ¬ p ∣ 143264) (hNotB : ¬ p ∣ 143261),
        order_of_C_B_inv_mod_p2 143264 143261 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143614 143617 ∧ ¬ p ∣ (143617 - 143614) ∧
      ∃ (hNotC : ¬ p ∣ 143617) (hNotB : ¬ p ∣ 143614),
        order_of_C_B_inv_mod_p2 143617 143614 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 143967 143970 ∧ ¬ p ∣ (143970 - 143967) ∧
      ∃ (hNotC : ¬ p ∣ 143970) (hNotB : ¬ p ∣ 143967),
        order_of_C_B_inv_mod_p2 143970 143967 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144324 144327 ∧ ¬ p ∣ (144327 - 144324) ∧
      ∃ (hNotC : ¬ p ∣ 144327) (hNotB : ¬ p ∣ 144324),
        order_of_C_B_inv_mod_p2 144327 144324 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 144679 144682 ∧ ¬ p ∣ (144682 - 144679) ∧
      ∃ (hNotC : ¬ p ∣ 144682) (hNotB : ¬ p ∣ 144679),
        order_of_C_B_inv_mod_p2 144682 144679 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145032 145035 ∧ ¬ p ∣ (145035 - 145032) ∧
      ∃ (hNotC : ¬ p ∣ 145035) (hNotB : ¬ p ∣ 145032),
        order_of_C_B_inv_mod_p2 145035 145032 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145389 145392 ∧ ¬ p ∣ (145392 - 145389) ∧
      ∃ (hNotC : ¬ p ∣ 145392) (hNotB : ¬ p ∣ 145389),
        order_of_C_B_inv_mod_p2 145392 145389 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 145742 145745 ∧ ¬ p ∣ (145745 - 145742) ∧
      ∃ (hNotC : ¬ p ∣ 145745) (hNotB : ¬ p ∣ 145742),
        order_of_C_B_inv_mod_p2 145745 145742 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146100 146103 ∧ ¬ p ∣ (146103 - 146100) ∧
      ∃ (hNotC : ¬ p ∣ 146103) (hNotB : ¬ p ∣ 146100),
        order_of_C_B_inv_mod_p2 146103 146100 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146452 146455 ∧ ¬ p ∣ (146455 - 146452) ∧
      ∃ (hNotC : ¬ p ∣ 146455) (hNotB : ¬ p ∣ 146452),
        order_of_C_B_inv_mod_p2 146455 146452 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 146805 146808 ∧ ¬ p ∣ (146808 - 146805) ∧
      ∃ (hNotC : ¬ p ∣ 146808) (hNotB : ¬ p ∣ 146805),
        order_of_C_B_inv_mod_p2 146808 146805 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147161 147164 ∧ ¬ p ∣ (147164 - 147161) ∧
      ∃ (hNotC : ¬ p ∣ 147164) (hNotB : ¬ p ∣ 147161),
        order_of_C_B_inv_mod_p2 147164 147161 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147515 147518 ∧ ¬ p ∣ (147518 - 147515) ∧
      ∃ (hNotC : ¬ p ∣ 147518) (hNotB : ¬ p ∣ 147515),
        order_of_C_B_inv_mod_p2 147518 147515 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 147870 147873 ∧ ¬ p ∣ (147873 - 147870) ∧
      ∃ (hNotC : ¬ p ∣ 147873) (hNotB : ¬ p ∣ 147870),
        order_of_C_B_inv_mod_p2 147873 147870 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148225 148228 ∧ ¬ p ∣ (148228 - 148225) ∧
      ∃ (hNotC : ¬ p ∣ 148228) (hNotB : ¬ p ∣ 148225),
        order_of_C_B_inv_mod_p2 148228 148225 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148578 148581 ∧ ¬ p ∣ (148581 - 148578) ∧
      ∃ (hNotC : ¬ p ∣ 148581) (hNotB : ¬ p ∣ 148578),
        order_of_C_B_inv_mod_p2 148581 148578 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 148934 148937 ∧ ¬ p ∣ (148937 - 148934) ∧
      ∃ (hNotC : ¬ p ∣ 148937) (hNotB : ¬ p ∣ 148934),
        order_of_C_B_inv_mod_p2 148937 148934 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149288 149291 ∧ ¬ p ∣ (149291 - 149288) ∧
      ∃ (hNotC : ¬ p ∣ 149291) (hNotB : ¬ p ∣ 149288),
        order_of_C_B_inv_mod_p2 149291 149288 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149644 149647 ∧ ¬ p ∣ (149647 - 149644) ∧
      ∃ (hNotC : ¬ p ∣ 149647) (hNotB : ¬ p ∣ 149644),
        order_of_C_B_inv_mod_p2 149647 149644 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 149998 150001 ∧ ¬ p ∣ (150001 - 149998) ∧
      ∃ (hNotC : ¬ p ∣ 150001) (hNotB : ¬ p ∣ 149998),
        order_of_C_B_inv_mod_p2 150001 149998 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150352 150355 ∧ ¬ p ∣ (150355 - 150352) ∧
      ∃ (hNotC : ¬ p ∣ 150355) (hNotB : ¬ p ∣ 150352),
        order_of_C_B_inv_mod_p2 150355 150352 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 150706 150709 ∧ ¬ p ∣ (150709 - 150706) ∧
      ∃ (hNotC : ¬ p ∣ 150709) (hNotB : ¬ p ∣ 150706),
        order_of_C_B_inv_mod_p2 150709 150706 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151061 151064 ∧ ¬ p ∣ (151064 - 151061) ∧
      ∃ (hNotC : ¬ p ∣ 151064) (hNotB : ¬ p ∣ 151061),
        order_of_C_B_inv_mod_p2 151064 151061 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151417 151420 ∧ ¬ p ∣ (151420 - 151417) ∧
      ∃ (hNotC : ¬ p ∣ 151420) (hNotB : ¬ p ∣ 151417),
        order_of_C_B_inv_mod_p2 151420 151417 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 151771 151774 ∧ ¬ p ∣ (151774 - 151771) ∧
      ∃ (hNotC : ¬ p ∣ 151774) (hNotB : ¬ p ∣ 151771),
        order_of_C_B_inv_mod_p2 151774 151771 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152124 152127 ∧ ¬ p ∣ (152127 - 152124) ∧
      ∃ (hNotC : ¬ p ∣ 152127) (hNotB : ¬ p ∣ 152124),
        order_of_C_B_inv_mod_p2 152127 152124 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152480 152483 ∧ ¬ p ∣ (152483 - 152480) ∧
      ∃ (hNotC : ¬ p ∣ 152483) (hNotB : ¬ p ∣ 152480),
        order_of_C_B_inv_mod_p2 152483 152480 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 152836 152839 ∧ ¬ p ∣ (152839 - 152836) ∧
      ∃ (hNotC : ¬ p ∣ 152839) (hNotB : ¬ p ∣ 152836),
        order_of_C_B_inv_mod_p2 152839 152836 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153188 153191 ∧ ¬ p ∣ (153191 - 153188) ∧
      ∃ (hNotC : ¬ p ∣ 153191) (hNotB : ¬ p ∣ 153188),
        order_of_C_B_inv_mod_p2 153191 153188 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153542 153545 ∧ ¬ p ∣ (153545 - 153542) ∧
      ∃ (hNotC : ¬ p ∣ 153545) (hNotB : ¬ p ∣ 153542),
        order_of_C_B_inv_mod_p2 153545 153542 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 153899 153902 ∧ ¬ p ∣ (153902 - 153899) ∧
      ∃ (hNotC : ¬ p ∣ 153902) (hNotB : ¬ p ∣ 153899),
        order_of_C_B_inv_mod_p2 153902 153899 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154255 154258 ∧ ¬ p ∣ (154258 - 154255) ∧
      ∃ (hNotC : ¬ p ∣ 154258) (hNotB : ¬ p ∣ 154255),
        order_of_C_B_inv_mod_p2 154258 154255 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154607 154610 ∧ ¬ p ∣ (154610 - 154607) ∧
      ∃ (hNotC : ¬ p ∣ 154610) (hNotB : ¬ p ∣ 154607),
        order_of_C_B_inv_mod_p2 154610 154607 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 154963 154966 ∧ ¬ p ∣ (154966 - 154963) ∧
      ∃ (hNotC : ¬ p ∣ 154966) (hNotB : ¬ p ∣ 154963),
        order_of_C_B_inv_mod_p2 154966 154963 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155320 155323 ∧ ¬ p ∣ (155323 - 155320) ∧
      ∃ (hNotC : ¬ p ∣ 155323) (hNotB : ¬ p ∣ 155320),
        order_of_C_B_inv_mod_p2 155323 155320 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 155671 155674 ∧ ¬ p ∣ (155674 - 155671) ∧
      ∃ (hNotC : ¬ p ∣ 155674) (hNotB : ¬ p ∣ 155671),
        order_of_C_B_inv_mod_p2 155674 155671 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156026 156029 ∧ ¬ p ∣ (156029 - 156026) ∧
      ∃ (hNotC : ¬ p ∣ 156029) (hNotB : ¬ p ∣ 156026),
        order_of_C_B_inv_mod_p2 156029 156026 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156381 156384 ∧ ¬ p ∣ (156384 - 156381) ∧
      ∃ (hNotC : ¬ p ∣ 156384) (hNotB : ¬ p ∣ 156381),
        order_of_C_B_inv_mod_p2 156384 156381 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 156736 156739 ∧ ¬ p ∣ (156739 - 156736) ∧
      ∃ (hNotC : ¬ p ∣ 156739) (hNotB : ¬ p ∣ 156736),
        order_of_C_B_inv_mod_p2 156739 156736 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157090 157093 ∧ ¬ p ∣ (157093 - 157090) ∧
      ∃ (hNotC : ¬ p ∣ 157093) (hNotB : ¬ p ∣ 157090),
        order_of_C_B_inv_mod_p2 157093 157090 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157442 157445 ∧ ¬ p ∣ (157445 - 157442) ∧
      ∃ (hNotC : ¬ p ∣ 157445) (hNotB : ¬ p ∣ 157442),
        order_of_C_B_inv_mod_p2 157445 157442 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 157799 157802 ∧ ¬ p ∣ (157802 - 157799) ∧
      ∃ (hNotC : ¬ p ∣ 157802) (hNotB : ¬ p ∣ 157799),
        order_of_C_B_inv_mod_p2 157802 157799 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158155 158158 ∧ ¬ p ∣ (158158 - 158155) ∧
      ∃ (hNotC : ¬ p ∣ 158158) (hNotB : ¬ p ∣ 158155),
        order_of_C_B_inv_mod_p2 158158 158155 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158508 158511 ∧ ¬ p ∣ (158511 - 158508) ∧
      ∃ (hNotC : ¬ p ∣ 158511) (hNotB : ¬ p ∣ 158508),
        order_of_C_B_inv_mod_p2 158511 158508 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 158862 158865 ∧ ¬ p ∣ (158865 - 158862) ∧
      ∃ (hNotC : ¬ p ∣ 158865) (hNotB : ¬ p ∣ 158862),
        order_of_C_B_inv_mod_p2 158865 158862 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159217 159220 ∧ ¬ p ∣ (159220 - 159217) ∧
      ∃ (hNotC : ¬ p ∣ 159220) (hNotB : ¬ p ∣ 159217),
        order_of_C_B_inv_mod_p2 159220 159217 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159573 159576 ∧ ¬ p ∣ (159576 - 159573) ∧
      ∃ (hNotC : ¬ p ∣ 159576) (hNotB : ¬ p ∣ 159573),
        order_of_C_B_inv_mod_p2 159576 159573 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 159926 159929 ∧ ¬ p ∣ (159929 - 159926) ∧
      ∃ (hNotC : ¬ p ∣ 159929) (hNotB : ¬ p ∣ 159926),
        order_of_C_B_inv_mod_p2 159929 159926 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160281 160284 ∧ ¬ p ∣ (160284 - 160281) ∧
      ∃ (hNotC : ¬ p ∣ 160284) (hNotB : ¬ p ∣ 160281),
        order_of_C_B_inv_mod_p2 160284 160281 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160635 160638 ∧ ¬ p ∣ (160638 - 160635) ∧
      ∃ (hNotC : ¬ p ∣ 160638) (hNotB : ¬ p ∣ 160635),
        order_of_C_B_inv_mod_p2 160638 160635 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 160988 160991 ∧ ¬ p ∣ (160991 - 160988) ∧
      ∃ (hNotC : ¬ p ∣ 160991) (hNotB : ¬ p ∣ 160988),
        order_of_C_B_inv_mod_p2 160991 160988 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161345 161348 ∧ ¬ p ∣ (161348 - 161345) ∧
      ∃ (hNotC : ¬ p ∣ 161348) (hNotB : ¬ p ∣ 161345),
        order_of_C_B_inv_mod_p2 161348 161345 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 161700 161703 ∧ ¬ p ∣ (161703 - 161700) ∧
      ∃ (hNotC : ¬ p ∣ 161703) (hNotB : ¬ p ∣ 161700),
        order_of_C_B_inv_mod_p2 161703 161700 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162054 162057 ∧ ¬ p ∣ (162057 - 162054) ∧
      ∃ (hNotC : ¬ p ∣ 162057) (hNotB : ¬ p ∣ 162054),
        order_of_C_B_inv_mod_p2 162057 162054 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162408 162411 ∧ ¬ p ∣ (162411 - 162408) ∧
      ∃ (hNotC : ¬ p ∣ 162411) (hNotB : ¬ p ∣ 162408),
        order_of_C_B_inv_mod_p2 162411 162408 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 162763 162766 ∧ ¬ p ∣ (162766 - 162763) ∧
      ∃ (hNotC : ¬ p ∣ 162766) (hNotB : ¬ p ∣ 162763),
        order_of_C_B_inv_mod_p2 162766 162763 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163118 163121 ∧ ¬ p ∣ (163121 - 163118) ∧
      ∃ (hNotC : ¬ p ∣ 163121) (hNotB : ¬ p ∣ 163118),
        order_of_C_B_inv_mod_p2 163121 163118 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163472 163475 ∧ ¬ p ∣ (163475 - 163472) ∧
      ∃ (hNotC : ¬ p ∣ 163475) (hNotB : ¬ p ∣ 163472),
        order_of_C_B_inv_mod_p2 163475 163472 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 163827 163830 ∧ ¬ p ∣ (163830 - 163827) ∧
      ∃ (hNotC : ¬ p ∣ 163830) (hNotB : ¬ p ∣ 163827),
        order_of_C_B_inv_mod_p2 163830 163827 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164181 164184 ∧ ¬ p ∣ (164184 - 164181) ∧
      ∃ (hNotC : ¬ p ∣ 164184) (hNotB : ¬ p ∣ 164181),
        order_of_C_B_inv_mod_p2 164184 164181 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164536 164539 ∧ ¬ p ∣ (164539 - 164536) ∧
      ∃ (hNotC : ¬ p ∣ 164539) (hNotB : ¬ p ∣ 164536),
        order_of_C_B_inv_mod_p2 164539 164536 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 164891 164894 ∧ ¬ p ∣ (164894 - 164891) ∧
      ∃ (hNotC : ¬ p ∣ 164894) (hNotB : ¬ p ∣ 164891),
        order_of_C_B_inv_mod_p2 164894 164891 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165245 165248 ∧ ¬ p ∣ (165248 - 165245) ∧
      ∃ (hNotC : ¬ p ∣ 165248) (hNotB : ¬ p ∣ 165245),
        order_of_C_B_inv_mod_p2 165248 165245 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165599 165602 ∧ ¬ p ∣ (165602 - 165599) ∧
      ∃ (hNotC : ¬ p ∣ 165602) (hNotB : ¬ p ∣ 165599),
        order_of_C_B_inv_mod_p2 165602 165599 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 165954 165957 ∧ ¬ p ∣ (165957 - 165954) ∧
      ∃ (hNotC : ¬ p ∣ 165957) (hNotB : ¬ p ∣ 165954),
        order_of_C_B_inv_mod_p2 165957 165954 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166309 166312 ∧ ¬ p ∣ (166312 - 166309) ∧
      ∃ (hNotC : ¬ p ∣ 166312) (hNotB : ¬ p ∣ 166309),
        order_of_C_B_inv_mod_p2 166312 166309 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 166664 166667 ∧ ¬ p ∣ (166667 - 166664) ∧
      ∃ (hNotC : ¬ p ∣ 166667) (hNotB : ¬ p ∣ 166664),
        order_of_C_B_inv_mod_p2 166667 166664 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167018 167021 ∧ ¬ p ∣ (167021 - 167018) ∧
      ∃ (hNotC : ¬ p ∣ 167021) (hNotB : ¬ p ∣ 167018),
        order_of_C_B_inv_mod_p2 167021 167018 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167373 167376 ∧ ¬ p ∣ (167376 - 167373) ∧
      ∃ (hNotC : ¬ p ∣ 167376) (hNotB : ¬ p ∣ 167373),
        order_of_C_B_inv_mod_p2 167376 167373 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 167726 167729 ∧ ¬ p ∣ (167729 - 167726) ∧
      ∃ (hNotC : ¬ p ∣ 167729) (hNotB : ¬ p ∣ 167726),
        order_of_C_B_inv_mod_p2 167729 167726 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168082 168085 ∧ ¬ p ∣ (168085 - 168082) ∧
      ∃ (hNotC : ¬ p ∣ 168085) (hNotB : ¬ p ∣ 168082),
        order_of_C_B_inv_mod_p2 168085 168082 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168437 168440 ∧ ¬ p ∣ (168440 - 168437) ∧
      ∃ (hNotC : ¬ p ∣ 168440) (hNotB : ¬ p ∣ 168437),
        order_of_C_B_inv_mod_p2 168440 168437 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 168792 168795 ∧ ¬ p ∣ (168795 - 168792) ∧
      ∃ (hNotC : ¬ p ∣ 168795) (hNotB : ¬ p ∣ 168792),
        order_of_C_B_inv_mod_p2 168795 168792 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169151 169154 ∧ ¬ p ∣ (169154 - 169151) ∧
      ∃ (hNotC : ¬ p ∣ 169154) (hNotB : ¬ p ∣ 169151),
        order_of_C_B_inv_mod_p2 169154 169151 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169500 169503 ∧ ¬ p ∣ (169503 - 169500) ∧
      ∃ (hNotC : ¬ p ∣ 169503) (hNotB : ¬ p ∣ 169500),
        order_of_C_B_inv_mod_p2 169503 169500 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 169856 169859 ∧ ¬ p ∣ (169859 - 169856) ∧
      ∃ (hNotC : ¬ p ∣ 169859) (hNotB : ¬ p ∣ 169856),
        order_of_C_B_inv_mod_p2 169859 169856 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170209 170212 ∧ ¬ p ∣ (170212 - 170209) ∧
      ∃ (hNotC : ¬ p ∣ 170212) (hNotB : ¬ p ∣ 170209),
        order_of_C_B_inv_mod_p2 170212 170209 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170564 170567 ∧ ¬ p ∣ (170567 - 170564) ∧
      ∃ (hNotC : ¬ p ∣ 170567) (hNotB : ¬ p ∣ 170564),
        order_of_C_B_inv_mod_p2 170567 170564 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 170919 170922 ∧ ¬ p ∣ (170922 - 170919) ∧
      ∃ (hNotC : ¬ p ∣ 170922) (hNotB : ¬ p ∣ 170919),
        order_of_C_B_inv_mod_p2 170922 170919 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171274 171277 ∧ ¬ p ∣ (171277 - 171274) ∧
      ∃ (hNotC : ¬ p ∣ 171277) (hNotB : ¬ p ∣ 171274),
        order_of_C_B_inv_mod_p2 171277 171274 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171627 171630 ∧ ¬ p ∣ (171630 - 171627) ∧
      ∃ (hNotC : ¬ p ∣ 171630) (hNotB : ¬ p ∣ 171627),
        order_of_C_B_inv_mod_p2 171630 171627 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 171985 171988 ∧ ¬ p ∣ (171988 - 171985) ∧
      ∃ (hNotC : ¬ p ∣ 171988) (hNotB : ¬ p ∣ 171985),
        order_of_C_B_inv_mod_p2 171988 171985 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172338 172341 ∧ ¬ p ∣ (172341 - 172338) ∧
      ∃ (hNotC : ¬ p ∣ 172341) (hNotB : ¬ p ∣ 172338),
        order_of_C_B_inv_mod_p2 172341 172338 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 172692 172695 ∧ ¬ p ∣ (172695 - 172692) ∧
      ∃ (hNotC : ¬ p ∣ 172695) (hNotB : ¬ p ∣ 172692),
        order_of_C_B_inv_mod_p2 172695 172692 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173046 173049 ∧ ¬ p ∣ (173049 - 173046) ∧
      ∃ (hNotC : ¬ p ∣ 173049) (hNotB : ¬ p ∣ 173046),
        order_of_C_B_inv_mod_p2 173049 173046 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173400 173403 ∧ ¬ p ∣ (173403 - 173400) ∧
      ∃ (hNotC : ¬ p ∣ 173403) (hNotB : ¬ p ∣ 173400),
        order_of_C_B_inv_mod_p2 173403 173400 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 173755 173758 ∧ ¬ p ∣ (173758 - 173755) ∧
      ∃ (hNotC : ¬ p ∣ 173758) (hNotB : ¬ p ∣ 173755),
        order_of_C_B_inv_mod_p2 173758 173755 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174110 174113 ∧ ¬ p ∣ (174113 - 174110) ∧
      ∃ (hNotC : ¬ p ∣ 174113) (hNotB : ¬ p ∣ 174110),
        order_of_C_B_inv_mod_p2 174113 174110 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174466 174469 ∧ ¬ p ∣ (174469 - 174466) ∧
      ∃ (hNotC : ¬ p ∣ 174469) (hNotB : ¬ p ∣ 174466),
        order_of_C_B_inv_mod_p2 174469 174466 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 174822 174825 ∧ ¬ p ∣ (174825 - 174822) ∧
      ∃ (hNotC : ¬ p ∣ 174825) (hNotB : ¬ p ∣ 174822),
        order_of_C_B_inv_mod_p2 174825 174822 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175175 175178 ∧ ¬ p ∣ (175178 - 175175) ∧
      ∃ (hNotC : ¬ p ∣ 175178) (hNotB : ¬ p ∣ 175175),
        order_of_C_B_inv_mod_p2 175178 175175 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175528 175531 ∧ ¬ p ∣ (175531 - 175528) ∧
      ∃ (hNotC : ¬ p ∣ 175531) (hNotB : ¬ p ∣ 175528),
        order_of_C_B_inv_mod_p2 175531 175528 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 175886 175889 ∧ ¬ p ∣ (175889 - 175886) ∧
      ∃ (hNotC : ¬ p ∣ 175889) (hNotB : ¬ p ∣ 175886),
        order_of_C_B_inv_mod_p2 175889 175886 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176238 176241 ∧ ¬ p ∣ (176241 - 176238) ∧
      ∃ (hNotC : ¬ p ∣ 176241) (hNotB : ¬ p ∣ 176238),
        order_of_C_B_inv_mod_p2 176241 176238 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176592 176595 ∧ ¬ p ∣ (176595 - 176592) ∧
      ∃ (hNotC : ¬ p ∣ 176595) (hNotB : ¬ p ∣ 176592),
        order_of_C_B_inv_mod_p2 176595 176592 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 176946 176949 ∧ ¬ p ∣ (176949 - 176946) ∧
      ∃ (hNotC : ¬ p ∣ 176949) (hNotB : ¬ p ∣ 176946),
        order_of_C_B_inv_mod_p2 176949 176946 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177301 177304 ∧ ¬ p ∣ (177304 - 177301) ∧
      ∃ (hNotC : ¬ p ∣ 177304) (hNotB : ¬ p ∣ 177301),
        order_of_C_B_inv_mod_p2 177304 177301 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 177656 177659 ∧ ¬ p ∣ (177659 - 177656) ∧
      ∃ (hNotC : ¬ p ∣ 177659) (hNotB : ¬ p ∣ 177656),
        order_of_C_B_inv_mod_p2 177659 177656 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178011 178014 ∧ ¬ p ∣ (178014 - 178011) ∧
      ∃ (hNotC : ¬ p ∣ 178014) (hNotB : ¬ p ∣ 178011),
        order_of_C_B_inv_mod_p2 178014 178011 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178365 178368 ∧ ¬ p ∣ (178368 - 178365) ∧
      ∃ (hNotC : ¬ p ∣ 178368) (hNotB : ¬ p ∣ 178365),
        order_of_C_B_inv_mod_p2 178368 178365 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 178720 178723 ∧ ¬ p ∣ (178723 - 178720) ∧
      ∃ (hNotC : ¬ p ∣ 178723) (hNotB : ¬ p ∣ 178720),
        order_of_C_B_inv_mod_p2 178723 178720 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179074 179077 ∧ ¬ p ∣ (179077 - 179074) ∧
      ∃ (hNotC : ¬ p ∣ 179077) (hNotB : ¬ p ∣ 179074),
        order_of_C_B_inv_mod_p2 179077 179074 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179429 179432 ∧ ¬ p ∣ (179432 - 179429) ∧
      ∃ (hNotC : ¬ p ∣ 179432) (hNotB : ¬ p ∣ 179429),
        order_of_C_B_inv_mod_p2 179432 179429 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 179783 179786 ∧ ¬ p ∣ (179786 - 179783) ∧
      ∃ (hNotC : ¬ p ∣ 179786) (hNotB : ¬ p ∣ 179783),
        order_of_C_B_inv_mod_p2 179786 179783 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180138 180141 ∧ ¬ p ∣ (180141 - 180138) ∧
      ∃ (hNotC : ¬ p ∣ 180141) (hNotB : ¬ p ∣ 180138),
        order_of_C_B_inv_mod_p2 180141 180138 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180494 180497 ∧ ¬ p ∣ (180497 - 180494) ∧
      ∃ (hNotC : ¬ p ∣ 180497) (hNotB : ¬ p ∣ 180494),
        order_of_C_B_inv_mod_p2 180497 180494 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 180848 180851 ∧ ¬ p ∣ (180851 - 180848) ∧
      ∃ (hNotC : ¬ p ∣ 180851) (hNotB : ¬ p ∣ 180848),
        order_of_C_B_inv_mod_p2 180851 180848 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181200 181203 ∧ ¬ p ∣ (181203 - 181200) ∧
      ∃ (hNotC : ¬ p ∣ 181203) (hNotB : ¬ p ∣ 181200),
        order_of_C_B_inv_mod_p2 181203 181200 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181557 181560 ∧ ¬ p ∣ (181560 - 181557) ∧
      ∃ (hNotC : ¬ p ∣ 181560) (hNotB : ¬ p ∣ 181557),
        order_of_C_B_inv_mod_p2 181560 181557 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 181911 181914 ∧ ¬ p ∣ (181914 - 181911) ∧
      ∃ (hNotC : ¬ p ∣ 181914) (hNotB : ¬ p ∣ 181911),
        order_of_C_B_inv_mod_p2 181914 181911 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182266 182269 ∧ ¬ p ∣ (182269 - 182266) ∧
      ∃ (hNotC : ¬ p ∣ 182269) (hNotB : ¬ p ∣ 182266),
        order_of_C_B_inv_mod_p2 182269 182266 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182620 182623 ∧ ¬ p ∣ (182623 - 182620) ∧
      ∃ (hNotC : ¬ p ∣ 182623) (hNotB : ¬ p ∣ 182620),
        order_of_C_B_inv_mod_p2 182623 182620 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 182975 182978 ∧ ¬ p ∣ (182978 - 182975) ∧
      ∃ (hNotC : ¬ p ∣ 182978) (hNotB : ¬ p ∣ 182975),
        order_of_C_B_inv_mod_p2 182978 182975 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183331 183334 ∧ ¬ p ∣ (183334 - 183331) ∧
      ∃ (hNotC : ¬ p ∣ 183334) (hNotB : ¬ p ∣ 183331),
        order_of_C_B_inv_mod_p2 183334 183331 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 183685 183688 ∧ ¬ p ∣ (183688 - 183685) ∧
      ∃ (hNotC : ¬ p ∣ 183688) (hNotB : ¬ p ∣ 183685),
        order_of_C_B_inv_mod_p2 183688 183685 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184037 184040 ∧ ¬ p ∣ (184040 - 184037) ∧
      ∃ (hNotC : ¬ p ∣ 184040) (hNotB : ¬ p ∣ 184037),
        order_of_C_B_inv_mod_p2 184040 184037 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184393 184396 ∧ ¬ p ∣ (184396 - 184393) ∧
      ∃ (hNotC : ¬ p ∣ 184396) (hNotB : ¬ p ∣ 184393),
        order_of_C_B_inv_mod_p2 184396 184393 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 184748 184751 ∧ ¬ p ∣ (184751 - 184748) ∧
      ∃ (hNotC : ¬ p ∣ 184751) (hNotB : ¬ p ∣ 184748),
        order_of_C_B_inv_mod_p2 184751 184748 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185102 185105 ∧ ¬ p ∣ (185105 - 185102) ∧
      ∃ (hNotC : ¬ p ∣ 185105) (hNotB : ¬ p ∣ 185102),
        order_of_C_B_inv_mod_p2 185105 185102 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185457 185460 ∧ ¬ p ∣ (185460 - 185457) ∧
      ∃ (hNotC : ¬ p ∣ 185460) (hNotB : ¬ p ∣ 185457),
        order_of_C_B_inv_mod_p2 185460 185457 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 185812 185815 ∧ ¬ p ∣ (185815 - 185812) ∧
      ∃ (hNotC : ¬ p ∣ 185815) (hNotB : ¬ p ∣ 185812),
        order_of_C_B_inv_mod_p2 185815 185812 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186166 186169 ∧ ¬ p ∣ (186169 - 186166) ∧
      ∃ (hNotC : ¬ p ∣ 186169) (hNotB : ¬ p ∣ 186166),
        order_of_C_B_inv_mod_p2 186169 186166 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186520 186523 ∧ ¬ p ∣ (186523 - 186520) ∧
      ∃ (hNotC : ¬ p ∣ 186523) (hNotB : ¬ p ∣ 186520),
        order_of_C_B_inv_mod_p2 186523 186520 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 186875 186878 ∧ ¬ p ∣ (186878 - 186875) ∧
      ∃ (hNotC : ¬ p ∣ 186878) (hNotB : ¬ p ∣ 186875),
        order_of_C_B_inv_mod_p2 186878 186875 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187232 187235 ∧ ¬ p ∣ (187235 - 187232) ∧
      ∃ (hNotC : ¬ p ∣ 187235) (hNotB : ¬ p ∣ 187232),
        order_of_C_B_inv_mod_p2 187235 187232 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187585 187588 ∧ ¬ p ∣ (187588 - 187585) ∧
      ∃ (hNotC : ¬ p ∣ 187588) (hNotB : ¬ p ∣ 187585),
        order_of_C_B_inv_mod_p2 187588 187585 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 187939 187942 ∧ ¬ p ∣ (187942 - 187939) ∧
      ∃ (hNotC : ¬ p ∣ 187942) (hNotB : ¬ p ∣ 187939),
        order_of_C_B_inv_mod_p2 187942 187939 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188293 188296 ∧ ¬ p ∣ (188296 - 188293) ∧
      ∃ (hNotC : ¬ p ∣ 188296) (hNotB : ¬ p ∣ 188293),
        order_of_C_B_inv_mod_p2 188296 188293 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 188648 188651 ∧ ¬ p ∣ (188651 - 188648) ∧
      ∃ (hNotC : ¬ p ∣ 188651) (hNotB : ¬ p ∣ 188648),
        order_of_C_B_inv_mod_p2 188651 188648 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189003 189006 ∧ ¬ p ∣ (189006 - 189003) ∧
      ∃ (hNotC : ¬ p ∣ 189006) (hNotB : ¬ p ∣ 189003),
        order_of_C_B_inv_mod_p2 189006 189003 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189360 189363 ∧ ¬ p ∣ (189363 - 189360) ∧
      ∃ (hNotC : ¬ p ∣ 189363) (hNotB : ¬ p ∣ 189360),
        order_of_C_B_inv_mod_p2 189363 189360 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 189713 189716 ∧ ¬ p ∣ (189716 - 189713) ∧
      ∃ (hNotC : ¬ p ∣ 189716) (hNotB : ¬ p ∣ 189713),
        order_of_C_B_inv_mod_p2 189716 189713 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190068 190071 ∧ ¬ p ∣ (190071 - 190068) ∧
      ∃ (hNotC : ¬ p ∣ 190071) (hNotB : ¬ p ∣ 190068),
        order_of_C_B_inv_mod_p2 190071 190068 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190421 190424 ∧ ¬ p ∣ (190424 - 190421) ∧
      ∃ (hNotC : ¬ p ∣ 190424) (hNotB : ¬ p ∣ 190421),
        order_of_C_B_inv_mod_p2 190424 190421 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 190776 190779 ∧ ¬ p ∣ (190779 - 190776) ∧
      ∃ (hNotC : ¬ p ∣ 190779) (hNotB : ¬ p ∣ 190776),
        order_of_C_B_inv_mod_p2 190779 190776 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191131 191134 ∧ ¬ p ∣ (191134 - 191131) ∧
      ∃ (hNotC : ¬ p ∣ 191134) (hNotB : ¬ p ∣ 191131),
        order_of_C_B_inv_mod_p2 191134 191131 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191485 191488 ∧ ¬ p ∣ (191488 - 191485) ∧
      ∃ (hNotC : ¬ p ∣ 191488) (hNotB : ¬ p ∣ 191485),
        order_of_C_B_inv_mod_p2 191488 191485 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 191839 191842 ∧ ¬ p ∣ (191842 - 191839) ∧
      ∃ (hNotC : ¬ p ∣ 191842) (hNotB : ¬ p ∣ 191839),
        order_of_C_B_inv_mod_p2 191842 191839 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192196 192199 ∧ ¬ p ∣ (192199 - 192196) ∧
      ∃ (hNotC : ¬ p ∣ 192199) (hNotB : ¬ p ∣ 192196),
        order_of_C_B_inv_mod_p2 192199 192196 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192548 192551 ∧ ¬ p ∣ (192551 - 192548) ∧
      ∃ (hNotC : ¬ p ∣ 192551) (hNotB : ¬ p ∣ 192548),
        order_of_C_B_inv_mod_p2 192551 192548 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 192904 192907 ∧ ¬ p ∣ (192907 - 192904) ∧
      ∃ (hNotC : ¬ p ∣ 192907) (hNotB : ¬ p ∣ 192904),
        order_of_C_B_inv_mod_p2 192907 192904 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193259 193262 ∧ ¬ p ∣ (193262 - 193259) ∧
      ∃ (hNotC : ¬ p ∣ 193262) (hNotB : ¬ p ∣ 193259),
        order_of_C_B_inv_mod_p2 193262 193259 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193613 193616 ∧ ¬ p ∣ (193616 - 193613) ∧
      ∃ (hNotC : ¬ p ∣ 193616) (hNotB : ¬ p ∣ 193613),
        order_of_C_B_inv_mod_p2 193616 193613 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 193967 193970 ∧ ¬ p ∣ (193970 - 193967) ∧
      ∃ (hNotC : ¬ p ∣ 193970) (hNotB : ¬ p ∣ 193967),
        order_of_C_B_inv_mod_p2 193970 193967 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194323 194326 ∧ ¬ p ∣ (194326 - 194323) ∧
      ∃ (hNotC : ¬ p ∣ 194326) (hNotB : ¬ p ∣ 194323),
        order_of_C_B_inv_mod_p2 194326 194323 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 194679 194682 ∧ ¬ p ∣ (194682 - 194679) ∧
      ∃ (hNotC : ¬ p ∣ 194682) (hNotB : ¬ p ∣ 194679),
        order_of_C_B_inv_mod_p2 194682 194679 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195031 195034 ∧ ¬ p ∣ (195034 - 195031) ∧
      ∃ (hNotC : ¬ p ∣ 195034) (hNotB : ¬ p ∣ 195031),
        order_of_C_B_inv_mod_p2 195034 195031 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195385 195388 ∧ ¬ p ∣ (195388 - 195385) ∧
      ∃ (hNotC : ¬ p ∣ 195388) (hNotB : ¬ p ∣ 195385),
        order_of_C_B_inv_mod_p2 195388 195385 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 195741 195744 ∧ ¬ p ∣ (195744 - 195741) ∧
      ∃ (hNotC : ¬ p ∣ 195744) (hNotB : ¬ p ∣ 195741),
        order_of_C_B_inv_mod_p2 195744 195741 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196095 196098 ∧ ¬ p ∣ (196098 - 196095) ∧
      ∃ (hNotC : ¬ p ∣ 196098) (hNotB : ¬ p ∣ 196095),
        order_of_C_B_inv_mod_p2 196098 196095 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196450 196453 ∧ ¬ p ∣ (196453 - 196450) ∧
      ∃ (hNotC : ¬ p ∣ 196453) (hNotB : ¬ p ∣ 196450),
        order_of_C_B_inv_mod_p2 196453 196450 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 196805 196808 ∧ ¬ p ∣ (196808 - 196805) ∧
      ∃ (hNotC : ¬ p ∣ 196808) (hNotB : ¬ p ∣ 196805),
        order_of_C_B_inv_mod_p2 196808 196805 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197159 197162 ∧ ¬ p ∣ (197162 - 197159) ∧
      ∃ (hNotC : ¬ p ∣ 197162) (hNotB : ¬ p ∣ 197159),
        order_of_C_B_inv_mod_p2 197162 197159 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197513 197516 ∧ ¬ p ∣ (197516 - 197513) ∧
      ∃ (hNotC : ¬ p ∣ 197516) (hNotB : ¬ p ∣ 197513),
        order_of_C_B_inv_mod_p2 197516 197513 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 197869 197872 ∧ ¬ p ∣ (197872 - 197869) ∧
      ∃ (hNotC : ¬ p ∣ 197872) (hNotB : ¬ p ∣ 197869),
        order_of_C_B_inv_mod_p2 197872 197869 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198223 198226 ∧ ¬ p ∣ (198226 - 198223) ∧
      ∃ (hNotC : ¬ p ∣ 198226) (hNotB : ¬ p ∣ 198223),
        order_of_C_B_inv_mod_p2 198226 198223 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198578 198581 ∧ ¬ p ∣ (198581 - 198578) ∧
      ∃ (hNotC : ¬ p ∣ 198581) (hNotB : ¬ p ∣ 198578),
        order_of_C_B_inv_mod_p2 198581 198578 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 198932 198935 ∧ ¬ p ∣ (198935 - 198932) ∧
      ∃ (hNotC : ¬ p ∣ 198935) (hNotB : ¬ p ∣ 198932),
        order_of_C_B_inv_mod_p2 198935 198932 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199286 199289 ∧ ¬ p ∣ (199289 - 199286) ∧
      ∃ (hNotC : ¬ p ∣ 199289) (hNotB : ¬ p ∣ 199286),
        order_of_C_B_inv_mod_p2 199289 199286 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199642 199645 ∧ ¬ p ∣ (199645 - 199642) ∧
      ∃ (hNotC : ¬ p ∣ 199645) (hNotB : ¬ p ∣ 199642),
        order_of_C_B_inv_mod_p2 199645 199642 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 199996 199999 ∧ ¬ p ∣ (199999 - 199996) ∧
      ∃ (hNotC : ¬ p ∣ 199999) (hNotB : ¬ p ∣ 199996),
        order_of_C_B_inv_mod_p2 199999 199996 p hp hNotC hNotB ≠ 13) ∧
    (∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val 200000 200003 ∧ ¬ p ∣ (200003 - 200000) ∧
      ∃ (hNotC : ¬ p ∣ 200003) (hNotB : ¬ p ∣ 200000),
        order_of_C_B_inv_mod_p2 200003 200000 p hp hNotC hNotB ≠ 13) :=
  ⟨row_1_4.2.1, row_196_199.2.1, row_386_389.2.1, row_587_590.2.1, row_1171_1174.2.1, row_1366_1369.2.1, row_1559_1562.2.1, row_1756_1759.2.1, row_2146_2149.2.1, row_2536_2539.2.1, row_2731_2734.2.1, row_3313_3316.2.1, row_3511_3514.2.1, row_3706_3709.2.1, row_3901_3904.2.1, row_4682_4685.2.1, row_4876_4879.2.1, row_5071_5074.2.1, row_5461_5464.2.1, row_5849_5852.2.1, row_6046_6049.2.1, row_6241_6244.2.1, row_6631_6634.2.1, row_7411_7414.2.1, row_7606_7609.2.1, row_7801_7804.2.1, row_7997_8000.2.1, row_8194_8197.2.1, row_8582_8585.2.1, row_9163_9166.2.1, row_9361_9364.2.1, row_9751_9754.2.1, row_10000_10003.2.1, row_10141_10144.2.1, row_10531_10534.2.1, row_10726_10729.2.1, row_11311_11314.2.1, row_11506_11509.2.1, row_11896_11899.2.1, row_12091_12094.2.1, row_12871_12874.2.1, row_13066_13069.2.1, row_13258_13261.2.1, row_13457_13460.2.1, row_13651_13654.2.1, row_13846_13849.2.1, row_14041_14044.2.1, row_14236_14239.2.1, row_14431_14434.2.1, row_14626_14629.2.1, row_14821_14824.2.1, row_15016_15019.2.1, row_15211_15214.2.1, row_15406_15409.2.1, row_15991_15994.2.1, row_16186_16189.2.1, row_16381_16384.2.1, row_16576_16579.2.1, row_16771_16774.2.1, row_16966_16969.2.1, row_17161_17164.2.1, row_17354_17357.2.1, row_17551_17554.2.1, row_17746_17749.2.1, row_17938_17941.2.1, row_18136_18139.2.1, row_18331_18334.2.1, row_18526_18529.2.1, row_18721_18724.2.1, row_19310_19313.2.1, row_19501_19504.2.1, row_19694_19697.2.1, row_19891_19894.2.1, row_20086_20089.2.1, row_20281_20284.2.1, row_20476_20479.2.1, row_20671_20674.2.1, row_20866_20869.2.1, row_21061_21064.2.1, row_21256_21259.2.1, row_21451_21454.2.1, row_21841_21844.2.1, row_22229_22232.2.1, row_22621_22624.2.1, row_22814_22817.2.1, row_23206_23209.2.1, row_23791_23794.2.1, row_24181_24184.2.1, row_24374_24377.2.1, row_24571_24574.2.1, row_24764_24767.2.1, row_25156_25159.2.1, row_25351_25354.2.1, row_26132_26135.2.1, row_26326_26329.2.1, row_26716_26719.2.1, row_26911_26914.2.1, row_27301_27304.2.1, row_27496_27499.2.1, row_27692_27695.2.1, row_28081_28084.2.1, row_28280_28283.2.1, row_28471_28474.2.1, row_28666_28669.2.1, row_29056_29059.2.1, row_29251_29254.2.1, row_29446_29449.2.1, row_29641_29644.2.1, row_29836_29839.2.1, row_30031_30034.2.1, row_30223_30226.2.1, row_30421_30424.2.1, row_30617_30620.2.1, row_30811_30814.2.1, row_31006_31009.2.1, row_31201_31204.2.1, row_31591_31594.2.1, row_31979_31982.2.1, row_32176_32179.2.1, row_32371_32374.2.1, row_32566_32569.2.1, row_32956_32959.2.1, row_33152_33155.2.1, row_33541_33544.2.1, row_33736_33739.2.1, row_34124_34127.2.1, row_34516_34519.2.1, row_34708_34711.2.1, row_34906_34909.2.1, row_35296_35299.2.1, row_35489_35492.2.1, row_35686_35689.2.1, row_36077_36080.2.1, row_36272_36275.2.1, row_36856_36859.2.1, row_37051_37054.2.1, row_37246_37249.2.1, row_37441_37444.2.1, row_37636_37639.2.1, row_38027_38030.2.1, row_38221_38224.2.1, row_38416_38419.2.1, row_38611_38614.2.1, row_38806_38809.2.1, row_39001_39004.2.1, row_39196_39199.2.1, row_39584_39587.2.1, row_39782_39785.2.1, row_40171_40174.2.1, row_40561_40564.2.1, row_40949_40952.2.1, row_41146_41149.2.1, row_41341_41344.2.1, row_41536_41539.2.1, row_41731_41734.2.1, row_41926_41929.2.1, row_42121_42124.2.1, row_42511_42514.2.1, row_42706_42709.2.1, row_42899_42902.2.1, row_43097_43100.2.1, row_43876_43879.2.1, row_44071_44074.2.1, row_44266_44269.2.1, row_44461_44464.2.1, row_44656_44659.2.1, row_44851_44854.2.1, row_45046_45049.2.1, row_45241_45244.2.1, row_45436_45439.2.1, row_45631_45634.2.1, row_46021_46024.2.1, row_46412_46415.2.1, row_46609_46612.2.1, row_46801_46804.2.1, row_46996_46999.2.1, row_47191_47194.2.1, row_47386_47389.2.1, row_47581_47584.2.1, row_47971_47974.2.1, row_48166_48169.2.1, row_48361_48364.2.1, row_48554_48557.2.1, row_48751_48754.2.1, row_49141_49144.2.1, row_49336_49339.2.1, row_49531_49534.2.1, row_50000_50003.2.1, row_50001_50004.2.1, row_50389_50392.2.1, row_50779_50782.2.1, row_51191_51194.2.1, row_51574_51577.2.1, row_51965_51968.2.1, row_52362_52365.2.1, row_52739_52742.2.1, row_53136_53139.2.1, row_53525_53528.2.1, row_53915_53918.2.1, row_54302_54305.2.1, row_54701_54704.2.1, row_55091_55094.2.1, row_55496_55499.2.1, row_55894_55897.2.1, row_56278_56281.2.1, row_56667_56670.2.1, row_57036_57039.2.1, row_57417_57420.2.1, row_57825_57828.2.1, row_58198_58201.2.1, row_58587_58590.2.1, row_58995_58998.2.1, row_59373_59376.2.1, row_59767_59770.2.1, row_60159_60162.2.1, row_60530_60533.2.1, row_60922_60925.2.1, row_61286_61289.2.1, row_61684_61687.2.1, row_62056_62059.2.1, row_62452_62455.2.1, row_62849_62852.2.1, row_63234_63237.2.1, row_63609_63612.2.1, row_63982_63985.2.1, row_64381_64384.2.1, row_64755_64758.2.1, row_65129_65132.2.1, row_65501_65504.2.1, row_65883_65886.2.1, row_66287_66290.2.1, row_66655_66658.2.1, row_67038_67041.2.1, row_67426_67429.2.1, row_67819_67822.2.1, row_68203_68206.2.1, row_68595_68598.2.1, row_68980_68983.2.1, row_69387_69390.2.1, row_69770_69773.2.1, row_70145_70148.2.1, row_70549_70552.2.1, row_70931_70934.2.1, row_71321_71324.2.1, row_71710_71713.2.1, row_72104_72107.2.1, row_72497_72500.2.1, row_72899_72902.2.1, row_73286_73289.2.1, row_73675_73678.2.1, row_74041_74044.2.1, row_74436_74439.2.1, row_74820_74823.2.1, row_75171_75174.2.1, row_75575_75578.2.1, row_75953_75956.2.1, row_76337_76340.2.1, row_76728_76731.2.1, row_77118_77121.2.1, row_77512_77515.2.1, row_77902_77905.2.1, row_78291_78294.2.1, row_78678_78681.2.1, row_79069_79072.2.1, row_79454_79457.2.1, row_79843_79846.2.1, row_80233_80236.2.1, row_80625_80628.2.1, row_81029_81032.2.1, row_81411_81414.2.1, row_81782_81785.2.1, row_82156_82159.2.1, row_82540_82543.2.1, row_82938_82941.2.1, row_83321_83324.2.1, row_83714_83717.2.1, row_84116_84119.2.1, row_84499_84502.2.1, row_84888_84891.2.1, row_85269_85272.2.1, row_85662_85665.2.1, row_86026_86029.2.1, row_86409_86412.2.1, row_86798_86801.2.1, row_87199_87202.2.1, row_87582_87585.2.1, row_87972_87975.2.1, row_88355_88358.2.1, row_88772_88775.2.1, row_89151_89154.2.1, row_89560_89563.2.1, row_89934_89937.2.1, row_90331_90334.2.1, row_90707_90710.2.1, row_91097_91100.2.1, row_91473_91476.2.1, row_91853_91856.2.1, row_92255_92258.2.1, row_92611_92614.2.1, row_93019_93022.2.1, row_93426_93429.2.1, row_93802_93805.2.1, row_94186_94189.2.1, row_94570_94573.2.1, row_94968_94971.2.1, row_95360_95363.2.1, row_95736_95739.2.1, row_96128_96131.2.1, row_96522_96525.2.1, row_96930_96933.2.1, row_97319_97322.2.1, row_97723_97726.2.1, row_98109_98112.2.1, row_98489_98492.2.1, row_98851_98854.2.1, row_99235_99238.2.1, row_99615_99618.2.1, row_100000_100003.2.1, row_100355_100358.2.1, row_100709_100712.2.1, row_101063_101066.2.1, row_101419_101422.2.1, row_101773_101776.2.1, row_102126_102129.2.1, row_102483_102486.2.1, row_102836_102839.2.1, row_103192_103195.2.1, row_103545_103548.2.1, row_103900_103903.2.1, row_104255_104258.2.1, row_104609_104612.2.1, row_104965_104968.2.1, row_105319_105322.2.1, row_105673_105676.2.1, row_106027_106030.2.1, row_106381_106384.2.1, row_106738_106741.2.1, row_107092_107095.2.1, row_107444_107447.2.1, row_107801_107804.2.1, row_108155_108158.2.1, row_108511_108514.2.1, row_108864_108867.2.1, row_109219_109222.2.1, row_109575_109578.2.1, row_109928_109931.2.1, row_110284_110287.2.1, row_110637_110640.2.1, row_110992_110995.2.1, row_111347_111350.2.1, row_111702_111705.2.1, row_112056_112059.2.1, row_112410_112413.2.1, row_112767_112770.2.1, row_113120_113123.2.1, row_113475_113478.2.1, row_113828_113831.2.1, row_114182_114185.2.1, row_114538_114541.2.1, row_114892_114895.2.1, row_115246_115249.2.1, row_115602_115605.2.1, row_115956_115959.2.1, row_116311_116314.2.1, row_116666_116669.2.1, row_117021_117024.2.1, row_117374_117377.2.1, row_117728_117731.2.1, row_118084_118087.2.1, row_118439_118442.2.1, row_118795_118798.2.1, row_119148_119151.2.1, row_119502_119505.2.1, row_119857_119860.2.1, row_120212_120215.2.1, row_120566_120569.2.1, row_120922_120925.2.1, row_121274_121277.2.1, row_121628_121631.2.1, row_121985_121988.2.1, row_122337_122340.2.1, row_122690_122693.2.1, row_123047_123050.2.1, row_123402_123405.2.1, row_123756_123759.2.1, row_124112_124115.2.1, row_124467_124470.2.1, row_124821_124824.2.1, row_125177_125180.2.1, row_125527_125530.2.1, row_125885_125888.2.1, row_126239_126242.2.1, row_126596_126599.2.1, row_126948_126951.2.1, row_127303_127306.2.1, row_127658_127661.2.1, row_128013_128016.2.1, row_128368_128371.2.1, row_128721_128724.2.1, row_129075_129078.2.1, row_129431_129434.2.1, row_129786_129789.2.1, row_130141_130144.2.1, row_130496_130499.2.1, row_130849_130852.2.1, row_131204_131207.2.1, row_131559_131562.2.1, row_131913_131916.2.1, row_132269_132272.2.1, row_132624_132627.2.1, row_132979_132982.2.1, row_133332_133335.2.1, row_133686_133689.2.1, row_134041_134044.2.1, row_134395_134398.2.1, row_134748_134751.2.1, row_135104_135107.2.1, row_135459_135462.2.1, row_135814_135817.2.1, row_136169_136172.2.1, row_136524_136527.2.1, row_136878_136881.2.1, row_137232_137235.2.1, row_137588_137591.2.1, row_137942_137945.2.1, row_138295_138298.2.1, row_138651_138654.2.1, row_139005_139008.2.1, row_139362_139365.2.1, row_139714_139717.2.1, row_140070_140073.2.1, row_140423_140426.2.1, row_140778_140781.2.1, row_141132_141135.2.1, row_141488_141491.2.1, row_141841_141844.2.1, row_142195_142198.2.1, row_142550_142553.2.1, row_142906_142909.2.1, row_143261_143264.2.1, row_143614_143617.2.1, row_143967_143970.2.1, row_144324_144327.2.1, row_144679_144682.2.1, row_145032_145035.2.1, row_145389_145392.2.1, row_145742_145745.2.1, row_146100_146103.2.1, row_146452_146455.2.1, row_146805_146808.2.1, row_147161_147164.2.1, row_147515_147518.2.1, row_147870_147873.2.1, row_148225_148228.2.1, row_148578_148581.2.1, row_148934_148937.2.1, row_149288_149291.2.1, row_149644_149647.2.1, row_149998_150001.2.1, row_150352_150355.2.1, row_150706_150709.2.1, row_151061_151064.2.1, row_151417_151420.2.1, row_151771_151774.2.1, row_152124_152127.2.1, row_152480_152483.2.1, row_152836_152839.2.1, row_153188_153191.2.1, row_153542_153545.2.1, row_153899_153902.2.1, row_154255_154258.2.1, row_154607_154610.2.1, row_154963_154966.2.1, row_155320_155323.2.1, row_155671_155674.2.1, row_156026_156029.2.1, row_156381_156384.2.1, row_156736_156739.2.1, row_157090_157093.2.1, row_157442_157445.2.1, row_157799_157802.2.1, row_158155_158158.2.1, row_158508_158511.2.1, row_158862_158865.2.1, row_159217_159220.2.1, row_159573_159576.2.1, row_159926_159929.2.1, row_160281_160284.2.1, row_160635_160638.2.1, row_160988_160991.2.1, row_161345_161348.2.1, row_161700_161703.2.1, row_162054_162057.2.1, row_162408_162411.2.1, row_162763_162766.2.1, row_163118_163121.2.1, row_163472_163475.2.1, row_163827_163830.2.1, row_164181_164184.2.1, row_164536_164539.2.1, row_164891_164894.2.1, row_165245_165248.2.1, row_165599_165602.2.1, row_165954_165957.2.1, row_166309_166312.2.1, row_166664_166667.2.1, row_167018_167021.2.1, row_167373_167376.2.1, row_167726_167729.2.1, row_168082_168085.2.1, row_168437_168440.2.1, row_168792_168795.2.1, row_169151_169154.2.1, row_169500_169503.2.1, row_169856_169859.2.1, row_170209_170212.2.1, row_170564_170567.2.1, row_170919_170922.2.1, row_171274_171277.2.1, row_171627_171630.2.1, row_171985_171988.2.1, row_172338_172341.2.1, row_172692_172695.2.1, row_173046_173049.2.1, row_173400_173403.2.1, row_173755_173758.2.1, row_174110_174113.2.1, row_174466_174469.2.1, row_174822_174825.2.1, row_175175_175178.2.1, row_175528_175531.2.1, row_175886_175889.2.1, row_176238_176241.2.1, row_176592_176595.2.1, row_176946_176949.2.1, row_177301_177304.2.1, row_177656_177659.2.1, row_178011_178014.2.1, row_178365_178368.2.1, row_178720_178723.2.1, row_179074_179077.2.1, row_179429_179432.2.1, row_179783_179786.2.1, row_180138_180141.2.1, row_180494_180497.2.1, row_180848_180851.2.1, row_181200_181203.2.1, row_181557_181560.2.1, row_181911_181914.2.1, row_182266_182269.2.1, row_182620_182623.2.1, row_182975_182978.2.1, row_183331_183334.2.1, row_183685_183688.2.1, row_184037_184040.2.1, row_184393_184396.2.1, row_184748_184751.2.1, row_185102_185105.2.1, row_185457_185460.2.1, row_185812_185815.2.1, row_186166_186169.2.1, row_186520_186523.2.1, row_186875_186878.2.1, row_187232_187235.2.1, row_187585_187588.2.1, row_187939_187942.2.1, row_188293_188296.2.1, row_188648_188651.2.1, row_189003_189006.2.1, row_189360_189363.2.1, row_189713_189716.2.1, row_190068_190071.2.1, row_190421_190424.2.1, row_190776_190779.2.1, row_191131_191134.2.1, row_191485_191488.2.1, row_191839_191842.2.1, row_192196_192199.2.1, row_192548_192551.2.1, row_192904_192907.2.1, row_193259_193262.2.1, row_193613_193616.2.1, row_193967_193970.2.1, row_194323_194326.2.1, row_194679_194682.2.1, row_195031_195034.2.1, row_195385_195388.2.1, row_195741_195744.2.1, row_196095_196098.2.1, row_196450_196453.2.1, row_196805_196808.2.1, row_197159_197162.2.1, row_197513_197516.2.1, row_197869_197872.2.1, row_198223_198226.2.1, row_198578_198581.2.1, row_198932_198935.2.1, row_199286_199289.2.1, row_199642_199645.2.1, row_199996_199999.2.1, row_200000_200003.2.1⟩

theorem S_not_fourth_B_le_200000_from_exp_one_table_rows :
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
    S_not_fourth 100000 100003 ∧
    S_not_fourth 100355 100358 ∧
    S_not_fourth 100709 100712 ∧
    S_not_fourth 101063 101066 ∧
    S_not_fourth 101419 101422 ∧
    S_not_fourth 101773 101776 ∧
    S_not_fourth 102126 102129 ∧
    S_not_fourth 102483 102486 ∧
    S_not_fourth 102836 102839 ∧
    S_not_fourth 103192 103195 ∧
    S_not_fourth 103545 103548 ∧
    S_not_fourth 103900 103903 ∧
    S_not_fourth 104255 104258 ∧
    S_not_fourth 104609 104612 ∧
    S_not_fourth 104965 104968 ∧
    S_not_fourth 105319 105322 ∧
    S_not_fourth 105673 105676 ∧
    S_not_fourth 106027 106030 ∧
    S_not_fourth 106381 106384 ∧
    S_not_fourth 106738 106741 ∧
    S_not_fourth 107092 107095 ∧
    S_not_fourth 107444 107447 ∧
    S_not_fourth 107801 107804 ∧
    S_not_fourth 108155 108158 ∧
    S_not_fourth 108511 108514 ∧
    S_not_fourth 108864 108867 ∧
    S_not_fourth 109219 109222 ∧
    S_not_fourth 109575 109578 ∧
    S_not_fourth 109928 109931 ∧
    S_not_fourth 110284 110287 ∧
    S_not_fourth 110637 110640 ∧
    S_not_fourth 110992 110995 ∧
    S_not_fourth 111347 111350 ∧
    S_not_fourth 111702 111705 ∧
    S_not_fourth 112056 112059 ∧
    S_not_fourth 112410 112413 ∧
    S_not_fourth 112767 112770 ∧
    S_not_fourth 113120 113123 ∧
    S_not_fourth 113475 113478 ∧
    S_not_fourth 113828 113831 ∧
    S_not_fourth 114182 114185 ∧
    S_not_fourth 114538 114541 ∧
    S_not_fourth 114892 114895 ∧
    S_not_fourth 115246 115249 ∧
    S_not_fourth 115602 115605 ∧
    S_not_fourth 115956 115959 ∧
    S_not_fourth 116311 116314 ∧
    S_not_fourth 116666 116669 ∧
    S_not_fourth 117021 117024 ∧
    S_not_fourth 117374 117377 ∧
    S_not_fourth 117728 117731 ∧
    S_not_fourth 118084 118087 ∧
    S_not_fourth 118439 118442 ∧
    S_not_fourth 118795 118798 ∧
    S_not_fourth 119148 119151 ∧
    S_not_fourth 119502 119505 ∧
    S_not_fourth 119857 119860 ∧
    S_not_fourth 120212 120215 ∧
    S_not_fourth 120566 120569 ∧
    S_not_fourth 120922 120925 ∧
    S_not_fourth 121274 121277 ∧
    S_not_fourth 121628 121631 ∧
    S_not_fourth 121985 121988 ∧
    S_not_fourth 122337 122340 ∧
    S_not_fourth 122690 122693 ∧
    S_not_fourth 123047 123050 ∧
    S_not_fourth 123402 123405 ∧
    S_not_fourth 123756 123759 ∧
    S_not_fourth 124112 124115 ∧
    S_not_fourth 124467 124470 ∧
    S_not_fourth 124821 124824 ∧
    S_not_fourth 125177 125180 ∧
    S_not_fourth 125527 125530 ∧
    S_not_fourth 125885 125888 ∧
    S_not_fourth 126239 126242 ∧
    S_not_fourth 126596 126599 ∧
    S_not_fourth 126948 126951 ∧
    S_not_fourth 127303 127306 ∧
    S_not_fourth 127658 127661 ∧
    S_not_fourth 128013 128016 ∧
    S_not_fourth 128368 128371 ∧
    S_not_fourth 128721 128724 ∧
    S_not_fourth 129075 129078 ∧
    S_not_fourth 129431 129434 ∧
    S_not_fourth 129786 129789 ∧
    S_not_fourth 130141 130144 ∧
    S_not_fourth 130496 130499 ∧
    S_not_fourth 130849 130852 ∧
    S_not_fourth 131204 131207 ∧
    S_not_fourth 131559 131562 ∧
    S_not_fourth 131913 131916 ∧
    S_not_fourth 132269 132272 ∧
    S_not_fourth 132624 132627 ∧
    S_not_fourth 132979 132982 ∧
    S_not_fourth 133332 133335 ∧
    S_not_fourth 133686 133689 ∧
    S_not_fourth 134041 134044 ∧
    S_not_fourth 134395 134398 ∧
    S_not_fourth 134748 134751 ∧
    S_not_fourth 135104 135107 ∧
    S_not_fourth 135459 135462 ∧
    S_not_fourth 135814 135817 ∧
    S_not_fourth 136169 136172 ∧
    S_not_fourth 136524 136527 ∧
    S_not_fourth 136878 136881 ∧
    S_not_fourth 137232 137235 ∧
    S_not_fourth 137588 137591 ∧
    S_not_fourth 137942 137945 ∧
    S_not_fourth 138295 138298 ∧
    S_not_fourth 138651 138654 ∧
    S_not_fourth 139005 139008 ∧
    S_not_fourth 139362 139365 ∧
    S_not_fourth 139714 139717 ∧
    S_not_fourth 140070 140073 ∧
    S_not_fourth 140423 140426 ∧
    S_not_fourth 140778 140781 ∧
    S_not_fourth 141132 141135 ∧
    S_not_fourth 141488 141491 ∧
    S_not_fourth 141841 141844 ∧
    S_not_fourth 142195 142198 ∧
    S_not_fourth 142550 142553 ∧
    S_not_fourth 142906 142909 ∧
    S_not_fourth 143261 143264 ∧
    S_not_fourth 143614 143617 ∧
    S_not_fourth 143967 143970 ∧
    S_not_fourth 144324 144327 ∧
    S_not_fourth 144679 144682 ∧
    S_not_fourth 145032 145035 ∧
    S_not_fourth 145389 145392 ∧
    S_not_fourth 145742 145745 ∧
    S_not_fourth 146100 146103 ∧
    S_not_fourth 146452 146455 ∧
    S_not_fourth 146805 146808 ∧
    S_not_fourth 147161 147164 ∧
    S_not_fourth 147515 147518 ∧
    S_not_fourth 147870 147873 ∧
    S_not_fourth 148225 148228 ∧
    S_not_fourth 148578 148581 ∧
    S_not_fourth 148934 148937 ∧
    S_not_fourth 149288 149291 ∧
    S_not_fourth 149644 149647 ∧
    S_not_fourth 149998 150001 ∧
    S_not_fourth 150352 150355 ∧
    S_not_fourth 150706 150709 ∧
    S_not_fourth 151061 151064 ∧
    S_not_fourth 151417 151420 ∧
    S_not_fourth 151771 151774 ∧
    S_not_fourth 152124 152127 ∧
    S_not_fourth 152480 152483 ∧
    S_not_fourth 152836 152839 ∧
    S_not_fourth 153188 153191 ∧
    S_not_fourth 153542 153545 ∧
    S_not_fourth 153899 153902 ∧
    S_not_fourth 154255 154258 ∧
    S_not_fourth 154607 154610 ∧
    S_not_fourth 154963 154966 ∧
    S_not_fourth 155320 155323 ∧
    S_not_fourth 155671 155674 ∧
    S_not_fourth 156026 156029 ∧
    S_not_fourth 156381 156384 ∧
    S_not_fourth 156736 156739 ∧
    S_not_fourth 157090 157093 ∧
    S_not_fourth 157442 157445 ∧
    S_not_fourth 157799 157802 ∧
    S_not_fourth 158155 158158 ∧
    S_not_fourth 158508 158511 ∧
    S_not_fourth 158862 158865 ∧
    S_not_fourth 159217 159220 ∧
    S_not_fourth 159573 159576 ∧
    S_not_fourth 159926 159929 ∧
    S_not_fourth 160281 160284 ∧
    S_not_fourth 160635 160638 ∧
    S_not_fourth 160988 160991 ∧
    S_not_fourth 161345 161348 ∧
    S_not_fourth 161700 161703 ∧
    S_not_fourth 162054 162057 ∧
    S_not_fourth 162408 162411 ∧
    S_not_fourth 162763 162766 ∧
    S_not_fourth 163118 163121 ∧
    S_not_fourth 163472 163475 ∧
    S_not_fourth 163827 163830 ∧
    S_not_fourth 164181 164184 ∧
    S_not_fourth 164536 164539 ∧
    S_not_fourth 164891 164894 ∧
    S_not_fourth 165245 165248 ∧
    S_not_fourth 165599 165602 ∧
    S_not_fourth 165954 165957 ∧
    S_not_fourth 166309 166312 ∧
    S_not_fourth 166664 166667 ∧
    S_not_fourth 167018 167021 ∧
    S_not_fourth 167373 167376 ∧
    S_not_fourth 167726 167729 ∧
    S_not_fourth 168082 168085 ∧
    S_not_fourth 168437 168440 ∧
    S_not_fourth 168792 168795 ∧
    S_not_fourth 169151 169154 ∧
    S_not_fourth 169500 169503 ∧
    S_not_fourth 169856 169859 ∧
    S_not_fourth 170209 170212 ∧
    S_not_fourth 170564 170567 ∧
    S_not_fourth 170919 170922 ∧
    S_not_fourth 171274 171277 ∧
    S_not_fourth 171627 171630 ∧
    S_not_fourth 171985 171988 ∧
    S_not_fourth 172338 172341 ∧
    S_not_fourth 172692 172695 ∧
    S_not_fourth 173046 173049 ∧
    S_not_fourth 173400 173403 ∧
    S_not_fourth 173755 173758 ∧
    S_not_fourth 174110 174113 ∧
    S_not_fourth 174466 174469 ∧
    S_not_fourth 174822 174825 ∧
    S_not_fourth 175175 175178 ∧
    S_not_fourth 175528 175531 ∧
    S_not_fourth 175886 175889 ∧
    S_not_fourth 176238 176241 ∧
    S_not_fourth 176592 176595 ∧
    S_not_fourth 176946 176949 ∧
    S_not_fourth 177301 177304 ∧
    S_not_fourth 177656 177659 ∧
    S_not_fourth 178011 178014 ∧
    S_not_fourth 178365 178368 ∧
    S_not_fourth 178720 178723 ∧
    S_not_fourth 179074 179077 ∧
    S_not_fourth 179429 179432 ∧
    S_not_fourth 179783 179786 ∧
    S_not_fourth 180138 180141 ∧
    S_not_fourth 180494 180497 ∧
    S_not_fourth 180848 180851 ∧
    S_not_fourth 181200 181203 ∧
    S_not_fourth 181557 181560 ∧
    S_not_fourth 181911 181914 ∧
    S_not_fourth 182266 182269 ∧
    S_not_fourth 182620 182623 ∧
    S_not_fourth 182975 182978 ∧
    S_not_fourth 183331 183334 ∧
    S_not_fourth 183685 183688 ∧
    S_not_fourth 184037 184040 ∧
    S_not_fourth 184393 184396 ∧
    S_not_fourth 184748 184751 ∧
    S_not_fourth 185102 185105 ∧
    S_not_fourth 185457 185460 ∧
    S_not_fourth 185812 185815 ∧
    S_not_fourth 186166 186169 ∧
    S_not_fourth 186520 186523 ∧
    S_not_fourth 186875 186878 ∧
    S_not_fourth 187232 187235 ∧
    S_not_fourth 187585 187588 ∧
    S_not_fourth 187939 187942 ∧
    S_not_fourth 188293 188296 ∧
    S_not_fourth 188648 188651 ∧
    S_not_fourth 189003 189006 ∧
    S_not_fourth 189360 189363 ∧
    S_not_fourth 189713 189716 ∧
    S_not_fourth 190068 190071 ∧
    S_not_fourth 190421 190424 ∧
    S_not_fourth 190776 190779 ∧
    S_not_fourth 191131 191134 ∧
    S_not_fourth 191485 191488 ∧
    S_not_fourth 191839 191842 ∧
    S_not_fourth 192196 192199 ∧
    S_not_fourth 192548 192551 ∧
    S_not_fourth 192904 192907 ∧
    S_not_fourth 193259 193262 ∧
    S_not_fourth 193613 193616 ∧
    S_not_fourth 193967 193970 ∧
    S_not_fourth 194323 194326 ∧
    S_not_fourth 194679 194682 ∧
    S_not_fourth 195031 195034 ∧
    S_not_fourth 195385 195388 ∧
    S_not_fourth 195741 195744 ∧
    S_not_fourth 196095 196098 ∧
    S_not_fourth 196450 196453 ∧
    S_not_fourth 196805 196808 ∧
    S_not_fourth 197159 197162 ∧
    S_not_fourth 197513 197516 ∧
    S_not_fourth 197869 197872 ∧
    S_not_fourth 198223 198226 ∧
    S_not_fourth 198578 198581 ∧
    S_not_fourth 198932 198935 ∧
    S_not_fourth 199286 199289 ∧
    S_not_fourth 199642 199645 ∧
    S_not_fourth 199996 199999 ∧
    S_not_fourth 200000 200003 :=
  ⟨row_1_4.2.2, row_196_199.2.2, row_386_389.2.2, row_587_590.2.2, row_1171_1174.2.2, row_1366_1369.2.2, row_1559_1562.2.2, row_1756_1759.2.2, row_2146_2149.2.2, row_2536_2539.2.2, row_2731_2734.2.2, row_3313_3316.2.2, row_3511_3514.2.2, row_3706_3709.2.2, row_3901_3904.2.2, row_4682_4685.2.2, row_4876_4879.2.2, row_5071_5074.2.2, row_5461_5464.2.2, row_5849_5852.2.2, row_6046_6049.2.2, row_6241_6244.2.2, row_6631_6634.2.2, row_7411_7414.2.2, row_7606_7609.2.2, row_7801_7804.2.2, row_7997_8000.2.2, row_8194_8197.2.2, row_8582_8585.2.2, row_9163_9166.2.2, row_9361_9364.2.2, row_9751_9754.2.2, row_10000_10003.2.2, row_10141_10144.2.2, row_10531_10534.2.2, row_10726_10729.2.2, row_11311_11314.2.2, row_11506_11509.2.2, row_11896_11899.2.2, row_12091_12094.2.2, row_12871_12874.2.2, row_13066_13069.2.2, row_13258_13261.2.2, row_13457_13460.2.2, row_13651_13654.2.2, row_13846_13849.2.2, row_14041_14044.2.2, row_14236_14239.2.2, row_14431_14434.2.2, row_14626_14629.2.2, row_14821_14824.2.2, row_15016_15019.2.2, row_15211_15214.2.2, row_15406_15409.2.2, row_15991_15994.2.2, row_16186_16189.2.2, row_16381_16384.2.2, row_16576_16579.2.2, row_16771_16774.2.2, row_16966_16969.2.2, row_17161_17164.2.2, row_17354_17357.2.2, row_17551_17554.2.2, row_17746_17749.2.2, row_17938_17941.2.2, row_18136_18139.2.2, row_18331_18334.2.2, row_18526_18529.2.2, row_18721_18724.2.2, row_19310_19313.2.2, row_19501_19504.2.2, row_19694_19697.2.2, row_19891_19894.2.2, row_20086_20089.2.2, row_20281_20284.2.2, row_20476_20479.2.2, row_20671_20674.2.2, row_20866_20869.2.2, row_21061_21064.2.2, row_21256_21259.2.2, row_21451_21454.2.2, row_21841_21844.2.2, row_22229_22232.2.2, row_22621_22624.2.2, row_22814_22817.2.2, row_23206_23209.2.2, row_23791_23794.2.2, row_24181_24184.2.2, row_24374_24377.2.2, row_24571_24574.2.2, row_24764_24767.2.2, row_25156_25159.2.2, row_25351_25354.2.2, row_26132_26135.2.2, row_26326_26329.2.2, row_26716_26719.2.2, row_26911_26914.2.2, row_27301_27304.2.2, row_27496_27499.2.2, row_27692_27695.2.2, row_28081_28084.2.2, row_28280_28283.2.2, row_28471_28474.2.2, row_28666_28669.2.2, row_29056_29059.2.2, row_29251_29254.2.2, row_29446_29449.2.2, row_29641_29644.2.2, row_29836_29839.2.2, row_30031_30034.2.2, row_30223_30226.2.2, row_30421_30424.2.2, row_30617_30620.2.2, row_30811_30814.2.2, row_31006_31009.2.2, row_31201_31204.2.2, row_31591_31594.2.2, row_31979_31982.2.2, row_32176_32179.2.2, row_32371_32374.2.2, row_32566_32569.2.2, row_32956_32959.2.2, row_33152_33155.2.2, row_33541_33544.2.2, row_33736_33739.2.2, row_34124_34127.2.2, row_34516_34519.2.2, row_34708_34711.2.2, row_34906_34909.2.2, row_35296_35299.2.2, row_35489_35492.2.2, row_35686_35689.2.2, row_36077_36080.2.2, row_36272_36275.2.2, row_36856_36859.2.2, row_37051_37054.2.2, row_37246_37249.2.2, row_37441_37444.2.2, row_37636_37639.2.2, row_38027_38030.2.2, row_38221_38224.2.2, row_38416_38419.2.2, row_38611_38614.2.2, row_38806_38809.2.2, row_39001_39004.2.2, row_39196_39199.2.2, row_39584_39587.2.2, row_39782_39785.2.2, row_40171_40174.2.2, row_40561_40564.2.2, row_40949_40952.2.2, row_41146_41149.2.2, row_41341_41344.2.2, row_41536_41539.2.2, row_41731_41734.2.2, row_41926_41929.2.2, row_42121_42124.2.2, row_42511_42514.2.2, row_42706_42709.2.2, row_42899_42902.2.2, row_43097_43100.2.2, row_43876_43879.2.2, row_44071_44074.2.2, row_44266_44269.2.2, row_44461_44464.2.2, row_44656_44659.2.2, row_44851_44854.2.2, row_45046_45049.2.2, row_45241_45244.2.2, row_45436_45439.2.2, row_45631_45634.2.2, row_46021_46024.2.2, row_46412_46415.2.2, row_46609_46612.2.2, row_46801_46804.2.2, row_46996_46999.2.2, row_47191_47194.2.2, row_47386_47389.2.2, row_47581_47584.2.2, row_47971_47974.2.2, row_48166_48169.2.2, row_48361_48364.2.2, row_48554_48557.2.2, row_48751_48754.2.2, row_49141_49144.2.2, row_49336_49339.2.2, row_49531_49534.2.2, row_50000_50003.2.2, row_50001_50004.2.2, row_50389_50392.2.2, row_50779_50782.2.2, row_51191_51194.2.2, row_51574_51577.2.2, row_51965_51968.2.2, row_52362_52365.2.2, row_52739_52742.2.2, row_53136_53139.2.2, row_53525_53528.2.2, row_53915_53918.2.2, row_54302_54305.2.2, row_54701_54704.2.2, row_55091_55094.2.2, row_55496_55499.2.2, row_55894_55897.2.2, row_56278_56281.2.2, row_56667_56670.2.2, row_57036_57039.2.2, row_57417_57420.2.2, row_57825_57828.2.2, row_58198_58201.2.2, row_58587_58590.2.2, row_58995_58998.2.2, row_59373_59376.2.2, row_59767_59770.2.2, row_60159_60162.2.2, row_60530_60533.2.2, row_60922_60925.2.2, row_61286_61289.2.2, row_61684_61687.2.2, row_62056_62059.2.2, row_62452_62455.2.2, row_62849_62852.2.2, row_63234_63237.2.2, row_63609_63612.2.2, row_63982_63985.2.2, row_64381_64384.2.2, row_64755_64758.2.2, row_65129_65132.2.2, row_65501_65504.2.2, row_65883_65886.2.2, row_66287_66290.2.2, row_66655_66658.2.2, row_67038_67041.2.2, row_67426_67429.2.2, row_67819_67822.2.2, row_68203_68206.2.2, row_68595_68598.2.2, row_68980_68983.2.2, row_69387_69390.2.2, row_69770_69773.2.2, row_70145_70148.2.2, row_70549_70552.2.2, row_70931_70934.2.2, row_71321_71324.2.2, row_71710_71713.2.2, row_72104_72107.2.2, row_72497_72500.2.2, row_72899_72902.2.2, row_73286_73289.2.2, row_73675_73678.2.2, row_74041_74044.2.2, row_74436_74439.2.2, row_74820_74823.2.2, row_75171_75174.2.2, row_75575_75578.2.2, row_75953_75956.2.2, row_76337_76340.2.2, row_76728_76731.2.2, row_77118_77121.2.2, row_77512_77515.2.2, row_77902_77905.2.2, row_78291_78294.2.2, row_78678_78681.2.2, row_79069_79072.2.2, row_79454_79457.2.2, row_79843_79846.2.2, row_80233_80236.2.2, row_80625_80628.2.2, row_81029_81032.2.2, row_81411_81414.2.2, row_81782_81785.2.2, row_82156_82159.2.2, row_82540_82543.2.2, row_82938_82941.2.2, row_83321_83324.2.2, row_83714_83717.2.2, row_84116_84119.2.2, row_84499_84502.2.2, row_84888_84891.2.2, row_85269_85272.2.2, row_85662_85665.2.2, row_86026_86029.2.2, row_86409_86412.2.2, row_86798_86801.2.2, row_87199_87202.2.2, row_87582_87585.2.2, row_87972_87975.2.2, row_88355_88358.2.2, row_88772_88775.2.2, row_89151_89154.2.2, row_89560_89563.2.2, row_89934_89937.2.2, row_90331_90334.2.2, row_90707_90710.2.2, row_91097_91100.2.2, row_91473_91476.2.2, row_91853_91856.2.2, row_92255_92258.2.2, row_92611_92614.2.2, row_93019_93022.2.2, row_93426_93429.2.2, row_93802_93805.2.2, row_94186_94189.2.2, row_94570_94573.2.2, row_94968_94971.2.2, row_95360_95363.2.2, row_95736_95739.2.2, row_96128_96131.2.2, row_96522_96525.2.2, row_96930_96933.2.2, row_97319_97322.2.2, row_97723_97726.2.2, row_98109_98112.2.2, row_98489_98492.2.2, row_98851_98854.2.2, row_99235_99238.2.2, row_99615_99618.2.2, row_100000_100003.2.2, row_100355_100358.2.2, row_100709_100712.2.2, row_101063_101066.2.2, row_101419_101422.2.2, row_101773_101776.2.2, row_102126_102129.2.2, row_102483_102486.2.2, row_102836_102839.2.2, row_103192_103195.2.2, row_103545_103548.2.2, row_103900_103903.2.2, row_104255_104258.2.2, row_104609_104612.2.2, row_104965_104968.2.2, row_105319_105322.2.2, row_105673_105676.2.2, row_106027_106030.2.2, row_106381_106384.2.2, row_106738_106741.2.2, row_107092_107095.2.2, row_107444_107447.2.2, row_107801_107804.2.2, row_108155_108158.2.2, row_108511_108514.2.2, row_108864_108867.2.2, row_109219_109222.2.2, row_109575_109578.2.2, row_109928_109931.2.2, row_110284_110287.2.2, row_110637_110640.2.2, row_110992_110995.2.2, row_111347_111350.2.2, row_111702_111705.2.2, row_112056_112059.2.2, row_112410_112413.2.2, row_112767_112770.2.2, row_113120_113123.2.2, row_113475_113478.2.2, row_113828_113831.2.2, row_114182_114185.2.2, row_114538_114541.2.2, row_114892_114895.2.2, row_115246_115249.2.2, row_115602_115605.2.2, row_115956_115959.2.2, row_116311_116314.2.2, row_116666_116669.2.2, row_117021_117024.2.2, row_117374_117377.2.2, row_117728_117731.2.2, row_118084_118087.2.2, row_118439_118442.2.2, row_118795_118798.2.2, row_119148_119151.2.2, row_119502_119505.2.2, row_119857_119860.2.2, row_120212_120215.2.2, row_120566_120569.2.2, row_120922_120925.2.2, row_121274_121277.2.2, row_121628_121631.2.2, row_121985_121988.2.2, row_122337_122340.2.2, row_122690_122693.2.2, row_123047_123050.2.2, row_123402_123405.2.2, row_123756_123759.2.2, row_124112_124115.2.2, row_124467_124470.2.2, row_124821_124824.2.2, row_125177_125180.2.2, row_125527_125530.2.2, row_125885_125888.2.2, row_126239_126242.2.2, row_126596_126599.2.2, row_126948_126951.2.2, row_127303_127306.2.2, row_127658_127661.2.2, row_128013_128016.2.2, row_128368_128371.2.2, row_128721_128724.2.2, row_129075_129078.2.2, row_129431_129434.2.2, row_129786_129789.2.2, row_130141_130144.2.2, row_130496_130499.2.2, row_130849_130852.2.2, row_131204_131207.2.2, row_131559_131562.2.2, row_131913_131916.2.2, row_132269_132272.2.2, row_132624_132627.2.2, row_132979_132982.2.2, row_133332_133335.2.2, row_133686_133689.2.2, row_134041_134044.2.2, row_134395_134398.2.2, row_134748_134751.2.2, row_135104_135107.2.2, row_135459_135462.2.2, row_135814_135817.2.2, row_136169_136172.2.2, row_136524_136527.2.2, row_136878_136881.2.2, row_137232_137235.2.2, row_137588_137591.2.2, row_137942_137945.2.2, row_138295_138298.2.2, row_138651_138654.2.2, row_139005_139008.2.2, row_139362_139365.2.2, row_139714_139717.2.2, row_140070_140073.2.2, row_140423_140426.2.2, row_140778_140781.2.2, row_141132_141135.2.2, row_141488_141491.2.2, row_141841_141844.2.2, row_142195_142198.2.2, row_142550_142553.2.2, row_142906_142909.2.2, row_143261_143264.2.2, row_143614_143617.2.2, row_143967_143970.2.2, row_144324_144327.2.2, row_144679_144682.2.2, row_145032_145035.2.2, row_145389_145392.2.2, row_145742_145745.2.2, row_146100_146103.2.2, row_146452_146455.2.2, row_146805_146808.2.2, row_147161_147164.2.2, row_147515_147518.2.2, row_147870_147873.2.2, row_148225_148228.2.2, row_148578_148581.2.2, row_148934_148937.2.2, row_149288_149291.2.2, row_149644_149647.2.2, row_149998_150001.2.2, row_150352_150355.2.2, row_150706_150709.2.2, row_151061_151064.2.2, row_151417_151420.2.2, row_151771_151774.2.2, row_152124_152127.2.2, row_152480_152483.2.2, row_152836_152839.2.2, row_153188_153191.2.2, row_153542_153545.2.2, row_153899_153902.2.2, row_154255_154258.2.2, row_154607_154610.2.2, row_154963_154966.2.2, row_155320_155323.2.2, row_155671_155674.2.2, row_156026_156029.2.2, row_156381_156384.2.2, row_156736_156739.2.2, row_157090_157093.2.2, row_157442_157445.2.2, row_157799_157802.2.2, row_158155_158158.2.2, row_158508_158511.2.2, row_158862_158865.2.2, row_159217_159220.2.2, row_159573_159576.2.2, row_159926_159929.2.2, row_160281_160284.2.2, row_160635_160638.2.2, row_160988_160991.2.2, row_161345_161348.2.2, row_161700_161703.2.2, row_162054_162057.2.2, row_162408_162411.2.2, row_162763_162766.2.2, row_163118_163121.2.2, row_163472_163475.2.2, row_163827_163830.2.2, row_164181_164184.2.2, row_164536_164539.2.2, row_164891_164894.2.2, row_165245_165248.2.2, row_165599_165602.2.2, row_165954_165957.2.2, row_166309_166312.2.2, row_166664_166667.2.2, row_167018_167021.2.2, row_167373_167376.2.2, row_167726_167729.2.2, row_168082_168085.2.2, row_168437_168440.2.2, row_168792_168795.2.2, row_169151_169154.2.2, row_169500_169503.2.2, row_169856_169859.2.2, row_170209_170212.2.2, row_170564_170567.2.2, row_170919_170922.2.2, row_171274_171277.2.2, row_171627_171630.2.2, row_171985_171988.2.2, row_172338_172341.2.2, row_172692_172695.2.2, row_173046_173049.2.2, row_173400_173403.2.2, row_173755_173758.2.2, row_174110_174113.2.2, row_174466_174469.2.2, row_174822_174825.2.2, row_175175_175178.2.2, row_175528_175531.2.2, row_175886_175889.2.2, row_176238_176241.2.2, row_176592_176595.2.2, row_176946_176949.2.2, row_177301_177304.2.2, row_177656_177659.2.2, row_178011_178014.2.2, row_178365_178368.2.2, row_178720_178723.2.2, row_179074_179077.2.2, row_179429_179432.2.2, row_179783_179786.2.2, row_180138_180141.2.2, row_180494_180497.2.2, row_180848_180851.2.2, row_181200_181203.2.2, row_181557_181560.2.2, row_181911_181914.2.2, row_182266_182269.2.2, row_182620_182623.2.2, row_182975_182978.2.2, row_183331_183334.2.2, row_183685_183688.2.2, row_184037_184040.2.2, row_184393_184396.2.2, row_184748_184751.2.2, row_185102_185105.2.2, row_185457_185460.2.2, row_185812_185815.2.2, row_186166_186169.2.2, row_186520_186523.2.2, row_186875_186878.2.2, row_187232_187235.2.2, row_187585_187588.2.2, row_187939_187942.2.2, row_188293_188296.2.2, row_188648_188651.2.2, row_189003_189006.2.2, row_189360_189363.2.2, row_189713_189716.2.2, row_190068_190071.2.2, row_190421_190424.2.2, row_190776_190779.2.2, row_191131_191134.2.2, row_191485_191488.2.2, row_191839_191842.2.2, row_192196_192199.2.2, row_192548_192551.2.2, row_192904_192907.2.2, row_193259_193262.2.2, row_193613_193616.2.2, row_193967_193970.2.2, row_194323_194326.2.2, row_194679_194682.2.2, row_195031_195034.2.2, row_195385_195388.2.2, row_195741_195744.2.2, row_196095_196098.2.2, row_196450_196453.2.2, row_196805_196808.2.2, row_197159_197162.2.2, row_197513_197516.2.2, row_197869_197872.2.2, row_198223_198226.2.2, row_198578_198581.2.2, row_198932_198935.2.2, row_199286_199289.2.2, row_199642_199645.2.2, row_199996_199999.2.2, row_200000_200003.2.2⟩

/-! ## Honesty lock -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Inhabited.  Displayed coefficient misses plus
displayed `S₂(Γ₀(2))` dimension `0`.  Not Ribet. -/
def level_lowering_26_to_2_from_no_match :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.level_lowering_26_to_2_from_no_match

/-- Inhabited.  Coefficient check, not residual iso. -/
def s2_26_displayed_newforms_miss_frey_traces :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.s2_26_displayed_newforms_miss_frey_traces

/-- Uninhabited.  Ljunggren-type; named rows are not a `∀`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  Named rows are not every `B ≤ 200000`.
`B > 200000` needs Bugeaud–Corvaja–Zannier. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on gap-3 pairs with `B > 200000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.bugeaud_P_phi13_gt_C_when_B_gt_200000

/-- Uninhabited.  Squarefull + `B > 200000` would need `rad(S) > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000

/-- Uninhabited.  Kraus matching at `q = 13`, level 26.
Even-`A` `13 ∣ A` close.  Coefficient misses plus
displayed `S₂(Γ₀(2)) = 0` are not that theorem. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.kraus_elimination_q_13_level_26

/-- Uninhabited.  Missing Mathlib Ribet arrow `26 → 2`. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.ribet_26_to_2_from_displayed_miss

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

#check S_val
#check S_bounds
#check HasPrimeWithExpOne
#check S_not_fourth
#check prime_12186951011
#check row_200000_200003
#check S_has_prime_with_exp_one_B_le_200000_table_rows
#check exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
#check S_not_fourth_B_le_200000_from_exp_one_table_rows
#check kraus_elimination_q_13_level_26
#check bugeaud_P_phi13_gt_C_when_B_gt_200000
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check ExistsNewformLevel2_eq_zero_ne_zero
#check level_lowering_26_to_2_from_no_match
#check s2_26_displayed_newforms_miss_frey_traces
#print axioms prime_12186951011
#print axioms row_200000_200003
#print axioms S_has_prime_with_exp_one_B_le_200000_table_rows
#print axioms exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
#print axioms S_not_fourth_B_le_200000_from_exp_one_table_rows
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011
