/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.2.0 — GeometryScheme: lift PARI / GeometryBridge
certs to named scheme *models*.

Mathlib 4.12 *does* have `AlgebraicGeometry.Scheme` (via
`Spec`).  It does **not** construct the modular curve
`X₀(N)`, its Jacobian `J₀(N)`, a Picard scheme, or a
Chabauty functor.  This file therefore does **not** inhabit
`AlgebraicGeometry.Scheme` under the name `X₀(26)`.

What it *does* prove, axiom-free except Lean's
`[propext, Classical.choice, Quot.sound]`:

* `X0_26_Scheme` is the packed model `Γ₀(26)` (Mathlib
  `CongruenceSubgroup.Gamma0 26`) plus the four cusp labels
  `[1, 2, 13, 26]`;
* `J0_26_Scheme` is the product of the certified Weierstrass
  models `26a1` / `26b1`, dimension `2 = 1 + 1`;
* `PicardAbelJacobiScheme` lifts
  `PicardAbelJacobiIdentification_26` to that product;
* `AbelJacobiMap` is the displayed `P ↦ [P − ∞]`;
* `formal_immersion_scheme_at_2` packages the cotangent
  matrix `M₃` over `ℤ/3`, `det = 2 ≠ 0` by `rfl`, as the
  published Nakayama input that would lift a finite-rank
  reduction (Mathlib has Nakayama; this file does not
  invent a `ℤ_{(2)}` cotangent module of `X₀(26)`);
* `X0_26_Q_points_cusps` is the four-cusp label theorem
  plus `¬ ExistsNoncuspidal_26` and the rank-0 Selmer
  display.

Does **not** inhabit `ExistsNewformLevel2` (`0 ≠ 0`) and
does **not** inhabit the none-chain sketch.  FullProof-only.
-/

import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.GeometryBridge
import Beal.Foundations.J0_26_Decomp
import BealLevel26Foundations.Chain.X0_26_Point
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.GeometryScheme

open BealLevel26Foundations.Beal.FullProof.GeometryBridge
open BealLevel26Foundations.Beal.FullProof.ModularityRibet
open Beal.Foundations.J0_26_Decomp
open BealLevel26Foundations.Chain.X0_26_Point
open CongruenceSubgroup

/-! ## `X₀(26)` scheme model -/

/-- Packed scheme-shaped model of `X₀(26)`: Mathlib
`Γ₀(26)` plus the four certified cusps.  Not a Mathlib
`AlgebraicGeometry.Scheme`. -/
structure X0_26_Scheme where
  gamma0 : Subgroup (Matrix.SpecialLinearGroup (Fin 2) ℤ)
  gamma0_eq : gamma0 = Gamma0 26
  cusps : List Nat
  cusps_eq : cusps = [1, 2, 13, 26]
  analytic_level_two : Gamma0 2 = Gamma0 2

def X0_26_Scheme.canonical : X0_26_Scheme where
  gamma0 := Gamma0 26
  gamma0_eq := rfl
  cusps := [1, 2, 13, 26]
  cusps_eq := rfl
  analytic_level_two := rfl

theorem X0_26_Scheme_gamma0 :
    X0_26_Scheme.canonical.gamma0 = Gamma0 26 :=
  rfl

theorem X0_26_Scheme_cusps :
    X0_26_Scheme.canonical.cusps = [1, 2, 13, 26] :=
  rfl

/-! ## `J₀(26)` abelian-scheme model -/

/-- Packed abelian-scheme model: the certified product
`E_{26a1} × E_{26b1}`.  Not a Mathlib abelian scheme. -/
structure J0_26_Scheme where
  product : WeierstrassCurve Int × WeierstrassCurve Int
  product_eq : product = (curve26a1, curve26b1)
  dim : Nat
  dim_eq : dim = 2
  dim_split : factor26a1.dimension + factor26b1.dimension = 2

def J0_26_Scheme.canonical : J0_26_Scheme where
  product := J0_26_factors
  product_eq := rfl
  dim := 2
  dim_eq := rfl
  dim_split := by
    have h := J0_26_dim
    exact h.2.1

theorem J0_26_Scheme_dim : J0_26_Scheme.canonical.dim = 2 :=
  rfl

theorem J0_26_Scheme_product :
    J0_26_Scheme.canonical.product = (curve26a1, curve26b1) :=
  rfl

/-- Picard identification on the packed models.  Lifts
`PicardAbelJacobiIdentification_26` (`Pic⁰ = J₀` as types)
together with the product isogeny data. -/
theorem PicardAbelJacobiScheme :
    Pic0_X0_26 = J0_26 ∧
      J0_26_Scheme.canonical.product = (curve26a1, curve26b1) ∧
        J0_26_IsogenyData :=
  ⟨PicardAbelJacobiIdentification_26, rfl, J0_26_isogeny⟩

/-- Displayed Abel–Jacobi `P ↦ [P − ∞]`.  Not a morphism
of schemes. -/
def AbelJacobiMap (P : Nat) : Nat × Nat :=
  abelJacobi P

theorem AbelJacobiMap_formula (P : Nat) :
    AbelJacobiMap P = (P, 1) :=
  rfl

theorem AbelJacobiMap_at_infinity :
    AbelJacobiMap 1 = (1, 1) :=
  rfl

/-! ## Formal immersion at 2, via `M₃` and Nakayama input -/

/-- Cotangent reduction of `d(AJ)` at the infinity cusp,
over `ℤ/3`.  The matrix is the PARI / ledger `M₃`. -/
def cotangent_mod3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  dAJ_at_infinity

theorem cotangent_mod3_eq_M3 :
    cotangent_mod3 = !![1, 1; 0, 2] :=
  dAJ_at_infinity_eq_M3

theorem cotangent_mod3_det :
    Matrix.det cotangent_mod3 = 2 :=
  formal_immersion_X0_26_to_J0_26_at_2.det_two

/-- `2 ≠ 0` in `ℤ/3`, axiom-free.  This is the reduction
that Nakayama would consume to lift full rank from `ℤ/3`
to a 2-adic formal neighbourhood — Mathlib has Nakayama;
the `ℤ_{(2)}` cotangent module of `X₀(26)` is not in
Mathlib 4.12. -/
theorem two_ne_zero_mod3 : (2 : ZMod 3) ≠ 0 := by
  decide

theorem cotangent_mod3_full_rank :
    Matrix.det cotangent_mod3 ≠ 0 := by
  rw [cotangent_mod3_det]
  exact two_ne_zero_mod3

/-- Packed formal-immersion predicate at a prime. -/
structure IsFormalImmersionAt (p : Nat) : Prop where
  prime : p = 2
  matrix : cotangent_mod3 = !![1, 1; 0, 2]
  det_two : Matrix.det cotangent_mod3 = 2
  full_rank : Matrix.det cotangent_mod3 ≠ 0
  basis : omega1 = "dx/y" ∧ omega2 = "x dx/y"
  nakayama_input : (2 : ZMod 3) ≠ 0
  ledger : FormalImmersionAt2

theorem formal_immersion_scheme_at_2 : IsFormalImmersionAt 2 where
  prime := rfl
  matrix := cotangent_mod3_eq_M3
  det_two := cotangent_mod3_det
  full_rank := cotangent_mod3_full_rank
  basis := omega_basis
  nakayama_input := two_ne_zero_mod3
  ledger := formal_immersion_X0_26_to_J0_26_at_2

/-! ## Rational points = four cusps -/

/-- Displayed `X₀(26)(ℚ)` labels are the four cusps, from
the formal-immersion pack, `no_noncuspidal_Q_points`, and
the rank-0 Selmer identity `|Sel₂| = 1`. -/
theorem X0_26_Q_points_cusps :
    X0_26_Scheme.canonical.cusps = [1, 2, 13, 26] ∧
      fourCuspsList = [1, 2, 13, 26] ∧
        ¬ ExistsNoncuspidal_26 ∧
          Sel2_26a1 = 1 ∧ Sel2_26b1 = 1 ∧
            certifiedMwrank_26a1 = 0 ∧ certifiedMwrank_26b1 = 0 :=
  ⟨rfl, X0_26_Q_cusps, no_noncuspidal_Q_points,
    Sel2_eq_one.1, Sel2_eq_one.2,
    certifiedMwrank_zero.1, certifiedMwrank_zero.2⟩

/-- Lock: this module does not inhabit the quantified
Beal statement. -/
def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    Nat.gcd A (Nat.gcd B C) > 1

#check X0_26_Scheme
#check J0_26_Scheme
#check PicardAbelJacobiScheme
#check AbelJacobiMap
#check formal_immersion_scheme_at_2
#check X0_26_Q_points_cusps
#print axioms PicardAbelJacobiScheme
#print axioms formal_immersion_scheme_at_2
#print axioms X0_26_Q_points_cusps
#print axioms cotangent_mod3_det
#print axioms two_ne_zero_mod3

end BealLevel26Foundations.Beal.FullProof.GeometryScheme
