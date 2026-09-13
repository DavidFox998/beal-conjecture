import BealLevel26Foundations.CoefficientLedger_26
import BealLevel26Foundations.Mazur.Genus_26_Real
import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import Mathlib.Tactic

namespace Beal.Foundations.J0DecompositionCertificate

open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.Mazur.Genus26Real
open WeierstrassCurve

/-!
# v1.3.0 J₀(26) decomposition certificate

This module promotes the SageMath 10.7 output archived in
`sagemath/certs/j0_26_decomposition.json`.  Mathlib 4.12 has no modular-curve
Jacobian, so the following facts are finite typed data and Weierstrass
algebra.  They do not identify `J₀(26)` as a scheme, and
`certifiedMwrank` is not a Mordell--Weil theorem.
-/

structure EllipticFactorCertificate26 where
  cremonaLabel : String
  abelianLabel : String
  dimension : Nat
  a1 : Int
  a2 : Int
  a3 : Int
  a4 : Int
  a6 : Int
  certifiedMwrank : Nat
  conductor : Nat
  c4 : Int
  c6 : Int
  discriminant : Int

def factor26a1 : EllipticFactorCertificate26 where
  cremonaLabel := "26a1"
  abelianLabel := "26a(1,26)"
  dimension := 1
  a1 := 1
  a2 := 0
  a3 := 1
  a4 := -5
  a6 := -8
  certifiedMwrank := 0
  conductor := 26
  c4 := 217
  c6 := 6371
  discriminant := -17576

def factor26b1 : EllipticFactorCertificate26 where
  cremonaLabel := "26b1"
  abelianLabel := "26b(1,26)"
  dimension := 1
  a1 := 1
  a2 := -1
  a3 := 1
  a4 := -3
  a6 := 3
  certifiedMwrank := 0
  conductor := 26
  c4 := 129
  c6 := -2241
  discriminant := -1664

def certifiedJ0Dimension26 : Nat :=
  factor26a1.dimension + factor26b1.dimension

theorem certifiedJ0Dimension26_eq_two :
    certifiedJ0Dimension26 = 2 := by
  decide

theorem certifiedJ0Dimension26_eq_genus_arithmetic :
    certifiedJ0Dimension26 = genusArithmetic26 := by
  decide

theorem factor26a1_label : factor26a1.cremonaLabel = "26a1" := rfl
theorem factor26b1_label : factor26b1.cremonaLabel = "26b1" := rfl

/-- Promoted SageMath `E.rank()` output. Not a Mordell--Weil theorem. -/
theorem factor26a1_certifiedMwrank :
    factor26a1.certifiedMwrank = 0 :=
  rfl

theorem factor26b1_certifiedMwrank :
    factor26b1.certifiedMwrank = 0 :=
  rfl

def curve26a1 : WeierstrassCurve Int where
  a₁ := factor26a1.a1
  a₂ := factor26a1.a2
  a₃ := factor26a1.a3
  a₄ := factor26a1.a4
  a₆ := factor26a1.a6

def curve26b1 : WeierstrassCurve Int where
  a₁ := factor26b1.a1
  a₂ := factor26b1.a2
  a₃ := factor26b1.a3
  a₄ := factor26b1.a4
  a₆ := factor26b1.a6

theorem curve26a1_c4 :
    curve26a1.c₄ = factor26a1.c4 := by
  simp only [curve26a1, factor26a1, WeierstrassCurve.c₄, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄]
  norm_num

theorem curve26a1_c6 :
    curve26a1.c₆ = factor26a1.c6 := by
  simp only [curve26a1, factor26a1, WeierstrassCurve.c₆, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆]
  norm_num

theorem curve26a1_discriminant :
    curve26a1.Δ = factor26a1.discriminant := by
  simp only [curve26a1, factor26a1, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

theorem curve26a1_discriminant_ne_zero :
    curve26a1.Δ ≠ 0 := by
  rw [curve26a1_discriminant]
  decide

theorem curve26b1_c4 :
    curve26b1.c₄ = factor26b1.c4 := by
  simp only [curve26b1, factor26b1, WeierstrassCurve.c₄, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄]
  norm_num

theorem curve26b1_c6 :
    curve26b1.c₆ = factor26b1.c6 := by
  simp only [curve26b1, factor26b1, WeierstrassCurve.c₆, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆]
  norm_num

theorem curve26b1_discriminant :
    curve26b1.Δ = factor26b1.discriminant := by
  simp only [curve26b1, factor26b1, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

theorem curve26b1_discriminant_ne_zero :
    curve26b1.Δ ≠ 0 := by
  rw [curve26b1_discriminant]
  decide

def qexpPrefix26a1 : List Int :=
  [0, 1, -1, 1, 1, -3, -1, -1, -1, -2, 3, 6, 1, 1, 1, -3, 1, -3, 2, 2, -3]

def qexpPrefix26b1 : List Int :=
  [0, 1, 1, -3, 1, -1, -3, 1, 1, 6, -1, -2, -3, -1, 1, 3, 1, -3, 6, 6, -1]

theorem qexpPrefix26a1_matches_ledger :
    qExp_26a1.take 21 = qexpPrefix26a1 := by
  decide

theorem qexpPrefix26b1_matches_ledger :
    qExp_26b1.take 21 = qexpPrefix26b1 := by
  decide

#print axioms certifiedJ0Dimension26_eq_two
#print axioms curve26a1_discriminant_ne_zero
#print axioms curve26b1_discriminant_ne_zero
#print axioms qexpPrefix26a1_matches_ledger
#print axioms qexpPrefix26b1_matches_ledger

end Beal.Foundations.J0DecompositionCertificate
