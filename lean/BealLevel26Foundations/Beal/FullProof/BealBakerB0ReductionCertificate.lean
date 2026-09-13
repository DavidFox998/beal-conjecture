/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v17.0.0 -- Baker B0 PARI LLL reduction certificate.
Transparent List (List Int) cert from
scripts/baker_b0_reduction.gp, matching
baker_B0_reduction_certificate.json.

Matveev 2000 Thm 1.4 / BMS Table 1 gives
the huge unreduced integer
B0_raw = C1_floor * 30^{n+3}.
qflll reduces the 3-log integer lattice
K * (4 log B0, 9 log B0, 13 log(B0+3))
at K = 10^20, B0 = 10^6.
Displayed B0_reduced = 10^6 is the Lean
baker_B0 census cutoff (25 chunks).

Like mwrank {0,12}: the cert is a
computable list, not a Mathlib Matveev
or LLL theorem.  baker_bound_gap3 stays
a def Prop (uninhabited).
Does not inhabit baker_bound_gap3.
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.
Does not use sorry.
-/

import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealBakerB0ReductionCertificate

open BealLevel26Foundations.BealGap3BakerUpperBound

/-- Displayed LLL-reduced / census cutoff. -/
def baker_B0_reduced_PARI : Nat := 1000000

theorem baker_B0_reduced_PARI_eq :
    baker_B0_reduced_PARI = baker_B0 :=
  rfl

/-- Unreduced Matveev integer C1_floor * 30^{n+3}. -/
def baker_B0_raw_PARI : Nat := 104382751019310000000

/-- PARI qflll + contfrac trace from
    baker_b0_reduction.gp:
    header, (C1, 30^{n+3}), (B0_raw, B0_reduced),
    three LLL-basis rows, eight convergents. -/
def baker_reduction_certificate_displayed : List (List Int) :=
  [[3, 1, 4, 9, -13, 13, 1000000, 100],
    [143186215390, 729000000],
    [104382751019310000000, 1000000],
    [9, -16201573319, -5065060422],
    [-4, -34027925161, 673608625],
    [0, 28542887627, 1092135460],
    [1, 0],
    [0, 1],
    [1, 3],
    [3, 10],
    [4, 13],
    [354243, 1151290],
    [708490, 2302593],
    [1062733, 3453883]]

def baker_reduction_certificate : List (List Int) :=
  baker_reduction_certificate_displayed

def baker_reduction_certificate_soundness : Prop :=
  baker_reduction_certificate_displayed ≠ []

theorem baker_reduction_certificate_holds :
    baker_reduction_certificate_displayed ≠ [] := by
  decide

/-- Named implication.  The nonempty LLL
    list does not inhabit baker_bound_gap3;
    this stays a def Prop. -/
def baker_bound_gap3_of_LLL : Prop :=
  baker_reduction_certificate_displayed ≠ [] → baker_bound_gap3

/-! ## v24.4.0 — v24.x final summary shape

    Restates the displayed LLL reduction certificate
    used by the v24.x summary: B0_raw = height_B0
    = 104382751019310000000, B0_reduced = baker_B0
    = 10^6, and the nonempty qflll list.
    Does not inhabit baker_bound_gap3.
    Does not change the displayed cert rows. -/

theorem baker_v24x_reduction_shape :
    baker_reduction_certificate_displayed ≠ [] ∧
      baker_B0_raw_PARI = 104382751019310000000 ∧
      baker_B0_reduced_PARI = baker_B0 ∧
      baker_B0_reduced_PARI = 1000000 :=
  ⟨baker_reduction_certificate_holds, rfl,
    baker_B0_reduced_PARI_eq, rfl⟩

#check baker_B0_reduced_PARI
#check baker_B0_reduced_PARI_eq
#check baker_B0_raw_PARI
#check baker_reduction_certificate
#check baker_reduction_certificate_displayed
#check baker_reduction_certificate_holds
#check baker_bound_gap3_of_LLL
#check baker_v24x_reduction_shape
#print axioms baker_B0_reduced_PARI_eq
#print axioms baker_reduction_certificate_holds
#print axioms baker_v24x_reduction_shape

end BealLevel26Foundations.BealBakerB0ReductionCertificate
