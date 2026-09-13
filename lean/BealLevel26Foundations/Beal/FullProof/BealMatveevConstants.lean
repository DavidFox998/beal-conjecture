/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v19.0.0 -- Matveev constants formalization.
Moves C = 143186215390 from a PARI list entry
to an explicit Nat plus kernel theorems.

Integer pieces of Matveev 2000 Thm 1.4 /
BMS Table 1 for n = 3 logs, D = 1:
  C1 = 1.4 * 30^{n+3} * n^{4.5} * D^2
  C1_floor = 143186215390  (v17 PARI)
  30^{n+3} = 729000000
  B0_raw = C1_floor * 30^{n+3}

Tate height material is the displayed
c4 scale 16 from BealFreyTateConductor
(c4 = 16 * (A^8 + A^4 B^4 + B^8)).
Milli-heights 44900 / 13815 / 13815 are
the v15 PARI floor(1000 * log) integers.

This is NOT a Mathlib Matveev theorem.
baker_bound_gap3 stays a def Prop
(uninhabited).  Does not inhabit an
unconditional gap-3 forall.
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.
Does not use sorry.
-/

import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound
import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor
import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealMatveevConstants

open BealLevel26Foundations.BealGap3BakerUpperBound
open BealLevel26Foundations.BealFreyTateConductor
open BealLevel26Foundations.BealFreyConductorGeneral

/-- Number of logarithms. -/
def matveev_n : Nat := 3

/-- Field degree D = 1. -/
def matveev_D : Nat := 1

/-- Linear-form coefficients 4, 9, -13. -/
def matveev_b1 : Int := 4
def matveev_b2 : Int := 9
def matveev_b3 : Int := -13

/-- Coefficient bound B in Matveev 1.4. -/
def matveev_Bcoeff : Nat := 13

/-- Numerator / denominator of 1.4. -/
def matveev_C1_num : Nat := 14
def matveev_C1_den : Nat := 10

def matveev_thirty : Nat := 30

/-- 30^{n+3} = 30^6. -/
def matveev_thirty_pow : Nat := 729000000

/-- v17 PARI C1_floor. -/
def matveev_C1_floor : Nat := 143186215390

/-- Unreduced height integer B0_raw = C * 30^{n+3}. -/
def matveev_height_B0 : Nat := 104382751019310000000

/-- Displayed census cutoff. -/
def matveev_B0 : Nat := 1000000

/-- Tate c4 scale: c4 = 16 * c4Paren. -/
def matveev_c4_scale : Nat := 16

/-- v15 PARI milli-heights at B0. -/
def matveev_A1_milli : Nat := 44900
def matveev_A2_milli : Nat := 13815
def matveev_A3_milli : Nat := 13815

theorem matveev_n_eq : matveev_n = 3 :=
  rfl

theorem matveev_D_eq : matveev_D = 1 :=
  rfl

theorem matveev_B0_eq_baker : matveev_B0 = baker_B0 :=
  rfl

theorem matveev_thirty_pow_eq :
    matveev_thirty_pow = Nat.pow matveev_thirty (matveev_n + 3) := by
  decide

theorem matveev_C1_pos : matveev_C1_floor > 0 := by
  decide

theorem matveev_height_B0_eq :
    matveev_height_B0 = matveev_C1_floor * matveev_thirty_pow := by
  decide

theorem matveev_c4_scale_pos : matveev_c4_scale > 0 := by
  decide

/-- Tate Weierstrass c4 is 16 * c4Paren.
    This is the height material imported from
    BealFreyTateConductor. -/
theorem matveev_c4_height (A B : Nat) :
    (bealFreyWeierstrass A B).c₄ =
      ((matveev_c4_scale * c4Paren A B : Nat) : Int) :=
  beal_frey_c4_nat A B

/-- Explicit integer trace: n, D, b1, b2, b3,
    Bcoeff, B0, c4-scale, 14, 10, 30, n+3,
    30^{n+3}, C1_floor, B0_raw, milli-heights. -/
def matveev_explicit_gap3_constants : List Int :=
  [3, 1, 4, 9, -13, 13, 1000000, 16,
    14, 10, 30, 6, 729000000, 143186215390,
    104382751019310000000, 44900, 13815, 13815]

/-- Kernel check: the constants list is
    nonempty.  C and the Tate c4 scale are
    recorded at fixed indices (rfl).
    Not a Matveev existence proof. -/
theorem matveev_explicit_gap3_constants_hold :
    matveev_explicit_gap3_constants ≠ [] := by
  decide

theorem matveev_constants_C1_eq :
    (matveev_explicit_gap3_constants.drop 13).head? =
      some (Int.ofNat matveev_C1_floor) :=
  rfl

theorem matveev_constants_c4_scale_eq :
    (matveev_explicit_gap3_constants.drop 7).head? =
      some (Int.ofNat matveev_c4_scale) :=
  rfl

theorem matveev_constants_B0_eq :
    (matveev_explicit_gap3_constants.drop 6).head? =
      some (Int.ofNat matveev_B0) :=
  rfl

theorem matveev_constants_height_eq :
    (matveev_explicit_gap3_constants.drop 14).head? =
      some (Int.ofNat matveev_height_B0) :=
  rfl

/-- Named implication.  The constants list
    does not inhabit baker_bound_gap3. -/
def baker_bound_gap3_of_matveev_constants : Prop :=
  matveev_explicit_gap3_constants ≠ [] → baker_bound_gap3

#check matveev_n
#check matveev_D
#check matveev_C1_floor
#check matveev_C1_pos
#check matveev_height_B0
#check matveev_height_B0_eq
#check matveev_thirty_pow_eq
#check matveev_B0_eq_baker
#check matveev_c4_scale
#check matveev_c4_height
#check matveev_explicit_gap3_constants
#check matveev_explicit_gap3_constants_hold
#check matveev_constants_C1_eq
#check matveev_constants_c4_scale_eq
#check baker_bound_gap3_of_matveev_constants
#print axioms matveev_C1_pos
#print axioms matveev_thirty_pow_eq
#print axioms matveev_height_B0_eq
#print axioms matveev_explicit_gap3_constants_hold
#print axioms matveev_constants_C1_eq
#print axioms matveev_constants_c4_scale_eq
#print axioms matveev_constants_B0_eq
#print axioms matveev_constants_height_eq

end BealLevel26Foundations.BealMatveevConstants
