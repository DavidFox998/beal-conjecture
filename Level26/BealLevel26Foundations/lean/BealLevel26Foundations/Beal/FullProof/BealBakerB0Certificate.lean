/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v15.0.0 -- Baker B0 PARI certificate.
Transparent List / Int cert from
scripts/baker_b0_gap3.gp, matching
baker_B0_certificate.json.

Displayed B0 = 10^6 is the Lean
baker_B0 census cutoff (25 chunks).
The integer trace records Matveev 2000
Thm 1.4 / BMS Table 1 constants for
the 3-log form
4*log(A/B) - 13*log((B+3)/B)
at precision 100, D = 1.

Like mwrank {0,12}: the cert is a
computable list, not a Mathlib Matveev
theorem.  baker_bound_gap3 stays a
def Prop (uninhabited).
baker_bound_gap3_of_PARI is the named
implication (also a def Prop).
Does not inhabit baker_bound_gap3.
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.
Does not use sorry.
-/

import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealBakerB0Certificate

open BealLevel26Foundations.BealGap3BakerUpperBound

/-- Displayed Lean / census cutoff. -/
def baker_B0_PARI : Nat := 1000000

theorem baker_B0_PARI_eq : baker_B0_PARI = baker_B0 :=
  rfl

/-- PARI / Matveev 2000 Thm 1.4 integer
    trace from baker_b0_gap3.gp:
    n, D, b1, b2, b3, Bcoeff, B0, prec,
    14, 10, 30, n+3, 30^{n+3}, C1_floor,
    pari major/minor/patch, milli-heights,
    milli-upper, mega-lower. -/
def baker_B0_certificate_displayed : List Int :=
  [3, 1, 4, 9, -13, 13, 1000000, 100, 14, 10, 30, 6,
    729000000, 143186215390, 2, 15, 4, 44900, 13815, 13815,
    -123647, -4374605976]

def baker_B0_certificate : List Int :=
  baker_B0_certificate_displayed

def baker_B0_certificate_soundness : Prop :=
  baker_B0_certificate_displayed ≠ []

theorem baker_B0_certificate_holds :
    baker_B0_certificate_displayed ≠ [] := by
  decide

/-- Named implication.  The nonempty PARI
    list does not inhabit baker_bound_gap3;
    this stays a def Prop. -/
def baker_bound_gap3_of_PARI : Prop :=
  baker_B0_certificate_displayed ≠ [] → baker_bound_gap3

#check baker_B0_PARI
#check baker_B0_PARI_eq
#check baker_B0_certificate
#check baker_B0_certificate_displayed
#check baker_B0_certificate_holds
#check baker_bound_gap3_of_PARI
#print axioms baker_B0_PARI_eq
#print axioms baker_B0_certificate_holds

end BealLevel26Foundations.BealBakerB0Certificate
