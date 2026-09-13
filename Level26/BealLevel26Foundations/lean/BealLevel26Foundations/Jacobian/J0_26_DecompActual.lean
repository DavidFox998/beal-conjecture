import Beal.Foundations.FormalImmersionM3
import BealLevel26Foundations.CoefficientLedger_26
import BealLevel26Foundations.M3_Explicit
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Jacobian.J0_26_DecompActual

open Beal.Foundations.FormalImmersionM3
open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.M3Explicit

/-!
# v4.0.1 Jacobian skeleton for the certified `J₀(26)` product

This module loads the v1.4.0 sources

* `sagemath/level_26_ledger.json`
  (SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`);
* `sagemath/certs/j0_26_decomposition.json`;
* `sagemath/certs/formal_immersion_M3.json`

as the already-promoted Lean data in `CoefficientLedger26` and
`FormalImmersionM3`.  It does not parse JSON and does not add a cert.

The finite cusp-chart model is `s₁ = q₁ + q₂`, `s₂ = -q₁ q₂`.  The
certified product `J₀(26) = 26a × 26b` is the pair of distinct newform
lines distinguished by `a₂ = -1` versus `a₂ = 1`, together with
`M₃ = [[1, 1], [0, 2]]` and `det = 2`.

Mathlib 4.12 has no modular-curve Jacobian.  This file does not construct
`J₀(26)` as a scheme and does not prove a Mordell--Weil theorem.
-/

/-- Finite symmetric-square coordinates at the double cusp. -/
def s1 (q1 q2 : ZMod 3) : ZMod 3 :=
  q1 + q2

def s2 (q1 q2 : ZMod 3) : ZMod 3 :=
  -(q1 * q2)

theorem s1_s2_sum_of_squares (q1 q2 : ZMod 3) :
    q1 ^ 2 + q2 ^ 2 = s1 q1 q2 ^ 2 + 2 * s2 q1 q2 := by
  simp [s1, s2]
  ring

/-- One certified elliptic factor, distinguished by its `a₂`. -/
structure CertifiedJ0Factor26 where
  cremonaLabel : String
  dimension : Nat
  a2 : Int

/-- Sage `26a1` line: `a₂ = -1`. -/
def certified26a : CertifiedJ0Factor26 where
  cremonaLabel := "26a1"
  dimension := 1
  a2 := -1

/-- Sage `26b1` line: `a₂ = 1`. -/
def certified26b : CertifiedJ0Factor26 where
  cremonaLabel := "26b1"
  dimension := 1
  a2 := 1

theorem certified26a_a2 : certified26a.a2 = -1 :=
  rfl

theorem certified26b_a2 : certified26b.a2 = 1 :=
  rfl

theorem certified26a_a2_eq_ledger :
    qExp_26a1[2]? = some certified26a.a2 := by
  decide

theorem certified26b_a2_eq_ledger :
    qExp_26b1[2]? = some certified26b.a2 := by
  decide

/-- Certified product `J₀(26) = 26a × 26b` as the `a₂ = -1` versus `1`
distinction.  This is finite ledger data, not a scheme-theoretic
isogeny decomposition. -/
theorem certifiedJ0_26_eq_26a_times_26b :
    certified26a.cremonaLabel = "26a1" ∧
      certified26b.cremonaLabel = "26b1" ∧
      certified26a.a2 = -1 ∧
      certified26b.a2 = 1 ∧
      certified26a.a2 ≠ certified26b.a2 ∧
      certified26a.dimension + certified26b.dimension = 2 := by
  decide

theorem certifiedM3_eq :
    certifiedM3 = !![1, 1; 0, 2] := by
  decide

theorem certifiedM3_det :
    Matrix.det certifiedM3 = 2 := by
  decide

theorem certifiedM3_eq_ledgerM3 :
    certifiedM3 = ledgerM3 :=
  Beal.Foundations.FormalImmersionM3.certifiedM3_eq_ledgerM3

#print axioms s1_s2_sum_of_squares
#print axioms certifiedJ0_26_eq_26a_times_26b
#print axioms certifiedM3_eq
#print axioms certifiedM3_det
#print axioms certifiedM3_eq_ledgerM3

end BealLevel26Foundations.Jacobian.J0_26_DecompActual
