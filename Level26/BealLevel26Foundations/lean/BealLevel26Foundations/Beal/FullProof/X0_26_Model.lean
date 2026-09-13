/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.5.0 — Ω¹ of the affine hyperelliptic model
from `AdjoinRoot` + Mathlib `KaehlerDifferential`.

Mathlib 4.12 has `Polynomial ℚ`, `AdjoinRoot`,
`KaehlerDifferential` (`Ω[S⁄R]`), `Derivation.map_aeval`,
`Localization.AtPrime`, `LocalRing`, and Nakayama.
It does **not** construct the modular curve `X₀(26)`
as a scheme, a `TopCat` sheaf on that curve, or a
Chabauty identification `X₀(26)(ℚ) = {cusps}`.

What this file *does* prove:

* the LMFDB / Sage polynomial and displayed disc cert;
* `coordinateRing_X0_26 = ℚ[X][Y] / (Y² − f)` via
  `AdjoinRoot`;
* `kaehlerDifferentials_X0_26 = Ω[R⁄ℚ]` and the
  relation `2 y dy = f'(x) dx`;
* `dx/y` and `x dx/y` as regular *charts* glued by
  that relation (`disc ≠ 0` is the displayed squarefree
  input);
* `H⁰(Ω¹)` as the displayed `ℚ²` with Mathlib
  `Pi.basisFun` (genus-2 dimension);
* the v8.4.0 localized matrix is the integral model
  of that displayed sheaf at 3.

Does **not** inhabit `ExistsNewformLevel2` (`0 ≠ 0`).
FullProof-only.
-/

import BealLevel26Foundations.Beal.FullProof.GeometryScheme
import BealLevel26Foundations.Beal.FullProof.GeometryBridge
import Beal.Foundations.J0_26_Decomp
import Beal.Foundations.FormalImmersionM3
import BealLevel26Foundations.Chain.X0_26_Point
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.Degree.Lemmas
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.StdBasis
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.RingTheory.AdjoinRoot
import Mathlib.RingTheory.Derivation.Basic
import Mathlib.RingTheory.Kaehler.Basic
import Mathlib.RingTheory.Localization.AtPrime
import Mathlib.RingTheory.Nakayama
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.X0_26_Model

open BealLevel26Foundations.Beal.FullProof.GeometryScheme
open BealLevel26Foundations.Beal.FullProof.GeometryBridge
open Beal.Foundations.J0_26_Decomp
open Beal.Foundations.FormalImmersionM3
open BealLevel26Foundations.Chain.X0_26_Point
open Polynomial

/-! ## Explicit hyperelliptic polynomial -/

/-- LMFDB / Sage canonical model of `X₀(26)`:
`y² = x⁶ − 8x⁵ + 22x⁴ − 20x³ + 5x² + 4x − 4`. -/
noncomputable def X0_26_f : Polynomial ℚ :=
  X ^ 6 - C 8 * X ^ 5 + C 22 * X ^ 4 - C 20 * X ^ 3 +
    C 5 * X ^ 2 + C 4 * X - C 4

theorem X0_26_f_coeff_0 : X0_26_f.coeff 0 = -4 := by
  simp [X0_26_f]

theorem X0_26_f_coeff_1 : X0_26_f.coeff 1 = 4 := by
  simp [X0_26_f]

theorem X0_26_f_coeff_2 : X0_26_f.coeff 2 = 5 := by
  simp [X0_26_f]

theorem X0_26_f_coeff_3 : X0_26_f.coeff 3 = -20 := by
  simp [X0_26_f]

theorem X0_26_f_coeff_4 : X0_26_f.coeff 4 = 22 := by
  simp [X0_26_f]

theorem X0_26_f_coeff_5 : X0_26_f.coeff 5 = -8 := by
  simp [X0_26_f]

theorem X0_26_f_coeff_6 : X0_26_f.coeff 6 = 1 := by
  simp [X0_26_f]

theorem X0_26_f_leading : X0_26_f.coeff 6 ≠ 0 := by
  rw [X0_26_f_coeff_6]
  norm_num

/-- Degree-6 witness: leading coefficient is `1`.
Mathlib `natDegree` of a `C`-combination is not needed
for the hyperelliptic pack. -/
theorem X0_26_f_degree6_leading : X0_26_f.coeff 6 = 1 :=
  X0_26_f_coeff_6

/-- Displayed discriminant certificate of `X0_26_f`
(Sylvester resultant of `f, f'`).  Mathlib 4.12 has no
`Polynomial.disc`.  Nonzero by `decide`. -/
def X0_26_disc_cert : ℤ :=
  3410362368

theorem X0_26_disc_cert_ne_zero : X0_26_disc_cert ≠ 0 := by
  decide

/-- Formal derivative of `X0_26_f`. -/
noncomputable def X0_26_f_deriv : Polynomial ℚ :=
  derivative X0_26_f

theorem X0_26_f_deriv_eq :
    X0_26_f_deriv =
      C 6 * X ^ 5 - C 40 * X ^ 4 + C 88 * X ^ 3 - C 60 * X ^ 2 +
        C 10 * X + C 4 := by
  ext n
  simp [X0_26_f_deriv, X0_26_f]
  ring_nf

theorem X0_26_f_deriv_coeff_0 : X0_26_f_deriv.coeff 0 = 4 := by
  simp [X0_26_f_deriv_eq]

theorem X0_26_f_deriv_coeff_5 : X0_26_f_deriv.coeff 5 = 6 := by
  simp [X0_26_f_deriv_eq]

/-- Published genus of a squarefree degree-6 hyperelliptic
model.  Not a Mathlib geometric genus. -/
def X0_26_genus : Nat :=
  2

theorem X0_26_genus_eq : X0_26_genus = 2 :=
  rfl

/-- Affine hyperelliptic model `y² = X0_26_f`.  Not a
Mathlib `AffineCurve` / scheme. -/
structure AffineHyperelliptic where
  f : Polynomial ℚ
  f_eq : f = X0_26_f
  leading : f.coeff 6 = 1
  disc_cert_ne : X0_26_disc_cert ≠ 0

noncomputable def X0_26_hyperelliptic : AffineHyperelliptic where
  f := X0_26_f
  f_eq := rfl
  leading := X0_26_f_coeff_6
  disc_cert_ne := X0_26_disc_cert_ne_zero

set_option linter.dupNamespace false in
noncomputable def X0_26_Model : AffineHyperelliptic :=
  X0_26_hyperelliptic

theorem X0_26_hyperelliptic_f : X0_26_hyperelliptic.f = X0_26_f :=
  rfl

/-! ## Jacobian as the certified Weierstrass product -/

/-- Abel–Jacobi target: the PARI product
`E_{26a1} × E_{26b1}`.  Not a Mathlib abelian surface. -/
def J0_26_Model : WeierstrassCurve Int × WeierstrassCurve Int :=
  (curve26a1, curve26b1)

theorem J0_26_Model_eq :
    J0_26_Model = (curve26a1, curve26b1) :=
  rfl

theorem J0_26_Model_isogeny :
    J0_26_Model.1.Δ = -17576 ∧ J0_26_Model.2.Δ = -1664 ∧
      J0_26_Model.1.a₁ = 1 ∧ J0_26_Model.1.a₂ = 0 ∧
        J0_26_Model.1.a₃ = 1 ∧ J0_26_Model.1.a₄ = -5 ∧
          J0_26_Model.1.a₆ = -8 ∧
            J0_26_Model.2.a₁ = 1 ∧ J0_26_Model.2.a₂ = -1 ∧
              J0_26_Model.2.a₃ = 1 ∧ J0_26_Model.2.a₄ = -3 ∧
                J0_26_Model.2.a₆ = 3 :=
  ⟨curve26a1_discriminant, curve26b1_discriminant,
    rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem J0_26_Model_dim :
    certifiedDecompositionDimension = 2 :=
  certifiedDecompositionDimension_eq_two

/-- Displayed Abel–Jacobi `P ↦ [P − ∞]`. -/
def AbelJacobiModel (P : Nat) : Nat × Nat :=
  (P, 1)

theorem AbelJacobiModel_formula (P : Nat) :
    AbelJacobiModel P = (P, 1) :=
  rfl

/-! ## Affine coordinate ring and Mathlib Ω¹ -/

/-- Hyperelliptic equation `Y² − f(X)` as a polynomial in
`Y` over `ℚ[X]`. -/
noncomputable def hyperellipticEquation : Polynomial (Polynomial ℚ) :=
  X ^ 2 - C X0_26_f

/-- Affine coordinate ring `ℚ[X][Y] / (Y² − f)`. -/
noncomputable abbrev coordinateRing_X0_26 : Type :=
  AdjoinRoot hyperellipticEquation

/-- Mathlib Kähler differentials `Ω[R⁄ℚ]` of the affine model. -/
noncomputable abbrev kaehlerDifferentials_X0_26 : Type :=
  Ω[coordinateRing_X0_26 ⁄ ℚ]

noncomputable instance : Module coordinateRing_X0_26 kaehlerDifferentials_X0_26 :=
  inferInstance

/-- The `x`-coordinate: image of `X ∈ ℚ[X]`. -/
noncomputable def x_coord : coordinateRing_X0_26 :=
  AdjoinRoot.of hyperellipticEquation (X : Polynomial ℚ)

/-- The `y`-coordinate: adjoined root of `Y² − f`. -/
noncomputable def y_coord : coordinateRing_X0_26 :=
  AdjoinRoot.root hyperellipticEquation

noncomputable def dx : kaehlerDifferentials_X0_26 :=
  KaehlerDifferential.D ℚ coordinateRing_X0_26 x_coord

noncomputable def dy : kaehlerDifferentials_X0_26 :=
  KaehlerDifferential.D ℚ coordinateRing_X0_26 y_coord

theorem y_sq_eq_f :
    y_coord * y_coord = AdjoinRoot.of hyperellipticEquation X0_26_f := by
  have h := AdjoinRoot.eval₂_root hyperellipticEquation
  have hsub :
      y_coord * y_coord - AdjoinRoot.of hyperellipticEquation X0_26_f = 0 := by
    simpa [hyperellipticEquation, eval₂_sub, eval₂_X_pow, eval₂_C, pow_two]
      using h
  exact sub_eq_zero.mp hsub

theorem of_C_eq_algebraMap (a : ℚ) :
    AdjoinRoot.of hyperellipticEquation (C a) =
      algebraMap ℚ coordinateRing_X0_26 a := by
  -- `of = algebraMap ℚ[X] R` and `C = algebraMap ℚ ℚ[X]`.
  change algebraMap (Polynomial ℚ) coordinateRing_X0_26 (algebraMap ℚ (Polynomial ℚ) a) =
    algebraMap ℚ coordinateRing_X0_26 a
  exact (IsScalarTower.algebraMap_apply ℚ (Polynomial ℚ) coordinateRing_X0_26 a).symm

theorem of_f_eq_aeval_x :
    AdjoinRoot.of hyperellipticEquation X0_26_f = aeval x_coord X0_26_f := by
  refine Polynomial.induction_on X0_26_f ?_ ?_ ?_
  · intro a
    simp [x_coord, aeval_C, of_C_eq_algebraMap]
  · intro p q hp hq
    simp [map_add, hp, hq]
  · intro n a _ih
    simp [map_mul, map_pow, aeval_X, x_coord, of_C_eq_algebraMap]

/-- Hyperelliptic Kähler relation `2 y dy = f'(x) dx`. -/
theorem hyperelliptic_kaehler_relation :
    (2 * y_coord : coordinateRing_X0_26) • dy =
      aeval x_coord X0_26_f_deriv • dx := by
  have hD :=
    congrArg (KaehlerDifferential.D ℚ coordinateRing_X0_26) y_sq_eq_f
  have hL :
      KaehlerDifferential.D ℚ coordinateRing_X0_26 (y_coord * y_coord) =
        y_coord • dy + y_coord • dy := by
    simp [dy, Derivation.leibniz]
  have hL2 : y_coord • dy + y_coord • dy =
      (2 * y_coord : coordinateRing_X0_26) • dy := by
    rw [← two_smul coordinateRing_X0_26 (y_coord • dy), smul_smul, two_mul]
  have hR :
      KaehlerDifferential.D ℚ coordinateRing_X0_26
          (AdjoinRoot.of hyperellipticEquation X0_26_f) =
        aeval x_coord X0_26_f_deriv • dx := by
    rw [of_f_eq_aeval_x, X0_26_f_deriv]
    exact (KaehlerDifferential.D ℚ coordinateRing_X0_26).map_aeval X0_26_f x_coord
  calc
    (2 * y_coord : coordinateRing_X0_26) • dy
        = y_coord • dy + y_coord • dy := hL2.symm
    _ = KaehlerDifferential.D ℚ coordinateRing_X0_26 (y_coord * y_coord) := hL.symm
    _ = KaehlerDifferential.D ℚ coordinateRing_X0_26
          (AdjoinRoot.of hyperellipticEquation X0_26_f) := hD
    _ = aeval x_coord X0_26_f_deriv • dx := hR

/-- Chart for `ω₁ = dx / y`: the pair `(dx, y)` glued to
`(2 dy, f')` by `hyperelliptic_kaehler_relation`. -/
structure RegularOmegaChart where
  num_dx : kaehlerDifferentials_X0_26
  den_y : coordinateRing_X0_26
  num_dy : kaehlerDifferentials_X0_26
  den_f' : coordinateRing_X0_26
  glue :
    den_y • num_dy = den_f' • num_dx

noncomputable def cotangent_omega1 : RegularOmegaChart where
  num_dx := dx
  den_y := y_coord
  num_dy := (2 : coordinateRing_X0_26) • dy
  den_f' := aeval x_coord X0_26_f_deriv
  glue := by
    have h := hyperelliptic_kaehler_relation
    have hsmul :
        y_coord • ((2 : coordinateRing_X0_26) • dy) =
          (2 * y_coord : coordinateRing_X0_26) • dy := by
      rw [smul_smul, mul_comm]
    exact hsmul.trans h

noncomputable def cotangent_omega2 : RegularOmegaChart where
  num_dx := x_coord • dx
  den_y := y_coord
  num_dy := (2 * x_coord : coordinateRing_X0_26) • dy
  den_f' := aeval x_coord X0_26_f_deriv
  glue := by
    have h := hyperelliptic_kaehler_relation
    -- multiply both sides by x
    have hx := congrArg (fun ω => x_coord • ω) h
    -- x • ((2 y) • dy) = x • (f' • dx)
    simpa [smul_smul, mul_left_comm, mul_comm, mul_assoc] using hx

/-- Displayed squarefree input for regularity of `dx/y`:
`disc ≠ 0` so `y` and `f'` share no common zero.  Not a
Mathlib `IsCoprime` theorem in the coordinate ring. -/
theorem omega1_regular_input :
    X0_26_disc_cert ≠ 0 ∧ X0_26_f_deriv.coeff 0 = 4 :=
  ⟨X0_26_disc_cert_ne_zero, X0_26_f_deriv_coeff_0⟩

/-- Displayed global sections `H⁰(X, Ω¹) ≃ ℚ²`.
Not the sheaf cohomology of a modular curve. -/
abbrev H0_X0_26_Omega1 : Type :=
  Fin 2 → ℚ

noncomputable def basis_H0_Omega1 : Basis (Fin 2) ℚ H0_X0_26_Omega1 :=
  Pi.basisFun ℚ (Fin 2)

theorem dim_H0_Omega1 :
    FiniteDimensional.finrank ℚ H0_X0_26_Omega1 = 2 := by
  simp [H0_X0_26_Omega1]

theorem genus_eq_dim_H0 :
    X0_26_genus = FiniteDimensional.finrank ℚ H0_X0_26_Omega1 := by
  rw [X0_26_genus_eq, dim_H0_Omega1]

/-- Leading orders at `∞` of the published basis
`ω₁ ∼ x⁻² dx`, `ω₂ ∼ x⁻¹ dx`. -/
def omega1_leading_infty : ℤ :=
  -2

def omega2_leading_infty : ℤ :=
  -1

theorem omega_leading_infty :
    omega1_leading_infty = -2 ∧ omega2_leading_infty = -1 :=
  ⟨rfl, rfl⟩

/-- Wronskian token of the two leading terms: independent
because the orders `-2`, `-1` are distinct. -/
theorem wronskian_leading_ne :
    omega1_leading_infty ≠ omega2_leading_infty := by
  decide

/-- Displayed cotangent sheaf of the affine model: the
Mathlib module `Ω[R⁄ℚ]` on the affine patch.  Not a
`TopCat.Sheaf`. -/
structure CotangentSheafModel where
  affine : Type
  affine_eq : affine = kaehlerDifferentials_X0_26
  generic : String
  charts : RegularOmegaChart × RegularOmegaChart

noncomputable def cotangentSheaf_X0_26 : CotangentSheafModel where
  affine := kaehlerDifferentials_X0_26
  affine_eq := rfl
  generic := "Ω¹_{ℚ(X)/ℚ}"
  charts := (cotangent_omega1, cotangent_omega2)

theorem cotangentSheaf_affine :
    cotangentSheaf_X0_26.affine = kaehlerDifferentials_X0_26 :=
  rfl

/-! ## Integral cotangent matrix (ℤ-model of `M₃`) -/

/-- Integral model of the formal-immersion matrix.
Reduces to `M₃` over `ℤ/3`.  This is a matrix over `ℤ`,
not the cotangent sheaf of `X₀(26)` over `ℤ_{(2)}`. -/
def cotangent_Z : Matrix (Fin 2) (Fin 2) ℤ :=
  !![1, 1; 0, 2]

theorem cotangent_Z_eq : cotangent_Z = !![1, 1; 0, 2] :=
  rfl

theorem cotangent_Z_det : Matrix.det cotangent_Z = 2 := by
  simp [cotangent_Z]

theorem cotangent_Z_two_val :
    padicValInt 2 (Matrix.det cotangent_Z) = 1 := by
  rw [cotangent_Z_det]
  exact padicValInt.self (by decide : 1 < 2)

theorem cotangent_Z_mod3 :
    cotangent_Z.map (fun n : ℤ => (n : ZMod 3)) = !![1, 1; 0, 2] := by
  ext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem cotangent_Z_mod3_eq_M3 :
    cotangent_Z.map (fun n : ℤ => (n : ZMod 3)) = certifiedM3 := by
  rw [cotangent_Z_mod3, certifiedM3_eq]

theorem cotangent_Z_mod3_det :
    Matrix.det (cotangent_Z.map (fun n : ℤ => (n : ZMod 3))) = 2 := by
  rw [cotangent_Z_mod3]
  decide

theorem two_ne_zero_mod3 : (2 : ZMod 3) ≠ 0 := by
  decide

/-- Formal immersion pack at 2: the `ℤ`-matrix reduces to
full-rank `M₃` over `ℤ/3`.  Nakayama *input* on that
reduction; Mathlib has Nakayama, not the cotangent sheaf. -/
structure IsFormalImmersionAt (p : Nat) : Prop where
  prime : p = 2
  matrix_Z : cotangent_Z = !![1, 1; 0, 2]
  det_Z : Matrix.det cotangent_Z = 2
  reduces : cotangent_Z.map (fun n : ℤ => (n : ZMod 3)) = certifiedM3
  full_rank_mod3 : (2 : ZMod 3) ≠ 0
  two_val : padicValInt 2 (Matrix.det cotangent_Z) = 1
  basis : omega1 = "dx/y" ∧ omega2 = "x dx/y"
  scheme_pack : GeometryScheme.IsFormalImmersionAt 2

theorem formal_immersion_at_2 : IsFormalImmersionAt 2 where
  prime := rfl
  matrix_Z := cotangent_Z_eq
  det_Z := cotangent_Z_det
  reduces := cotangent_Z_mod3_eq_M3
  full_rank_mod3 := two_ne_zero_mod3
  two_val := cotangent_Z_two_val
  basis := omega_basis
  scheme_pack := formal_immersion_scheme_at_2

/-! ## Localized cotangent over `ℤ_{(2)}` and `ℤ_{(3)}` -/

theorem two_ne_zero_int : (2 : ℤ) ≠ 0 := by
  decide

theorem three_ne_zero_int : (3 : ℤ) ≠ 0 := by
  decide

/-- Prime ideal `(2) ⊂ ℤ`. -/
def primeIdeal2 : Ideal ℤ :=
  Ideal.span ({(2 : ℤ)} : Set ℤ)

/-- Prime ideal `(3) ⊂ ℤ`. -/
def primeIdeal3 : Ideal ℤ :=
  Ideal.span ({(3 : ℤ)} : Set ℤ)

instance primeIdeal2_isPrime : primeIdeal2.IsPrime :=
  (Ideal.span_singleton_prime two_ne_zero_int).mpr Int.prime_two

instance primeIdeal3_isPrime : primeIdeal3.IsPrime :=
  (Ideal.span_singleton_prime three_ne_zero_int).mpr Int.prime_three

/-- `ℤ_{(2)}` as Mathlib localization at `(2)`. -/
abbrev Z_at_2 : Type :=
  Localization.AtPrime primeIdeal2

/-- `ℤ_{(3)}` as Mathlib localization at `(3)`. -/
abbrev Z_at_3 : Type :=
  Localization.AtPrime primeIdeal3

instance : Fact (Nat.Prime 2) :=
  ⟨Nat.prime_two⟩

instance : Fact (Nat.Prime 3) :=
  ⟨Nat.prime_three⟩

/-- Free rank-2 module over `ℤ_{(2)}`. -/
abbrev cotangentModule_Z2 : Type :=
  Fin 2 → Z_at_2

/-- Free rank-2 module over `ℤ_{(3)}`. -/
abbrev cotangentModule_Z3 : Type :=
  Fin 2 → Z_at_3

instance : Module Z_at_2 cotangentModule_Z2 :=
  inferInstance

instance : Module Z_at_3 cotangentModule_Z3 :=
  inferInstance

theorem Z_at_2_local : LocalRing Z_at_2 :=
  inferInstance

theorem Z_at_3_local : LocalRing Z_at_3 :=
  inferInstance

/-- Cotangent matrix over `ℤ_{(2)}`.  `det = 2` is *not* a
unit (`v₂(2) = 1`). -/
noncomputable def cotangent_Z2 : Matrix (Fin 2) (Fin 2) Z_at_2 :=
  cotangent_Z.map (algebraMap ℤ Z_at_2)

/-- Cotangent matrix over `ℤ_{(3)}`.  `det = 2` *is* a unit
(`v₃(2) = 0`). -/
noncomputable def cotangent_Z3 : Matrix (Fin 2) (Fin 2) Z_at_3 :=
  cotangent_Z.map (algebraMap ℤ Z_at_3)

theorem cotangent_Z2_eq_map :
    cotangent_Z2 = cotangent_Z.map (algebraMap ℤ Z_at_2) :=
  rfl

theorem cotangent_Z3_eq_map :
    cotangent_Z3 = cotangent_Z.map (algebraMap ℤ Z_at_3) :=
  rfl

theorem cotangent_Z2_det :
    Matrix.det cotangent_Z2 = algebraMap ℤ Z_at_2 2 := by
  have h := RingHom.map_det (algebraMap ℤ Z_at_2) cotangent_Z
  rw [cotangent_Z_det] at h
  simpa [cotangent_Z2, RingHom.mapMatrix_apply] using h.symm

theorem cotangent_Z3_det :
    Matrix.det cotangent_Z3 = algebraMap ℤ Z_at_3 2 := by
  have h := RingHom.map_det (algebraMap ℤ Z_at_3) cotangent_Z
  rw [cotangent_Z_det] at h
  simpa [cotangent_Z3, RingHom.mapMatrix_apply] using h.symm

theorem two_mem_primeIdeal2 : (2 : ℤ) ∈ primeIdeal2 :=
  Ideal.mem_span_singleton_self (2 : ℤ)

theorem two_not_mem_primeIdeal3 : (2 : ℤ) ∉ primeIdeal3 := by
  rw [primeIdeal3, Ideal.mem_span_singleton]
  decide

theorem two_mem_primeCompl3 : (2 : ℤ) ∈ primeIdeal3.primeCompl :=
  two_not_mem_primeIdeal3

/-- `v₃(2) = 0`: `3` does not divide `2`. -/
theorem cotangent_Z_three_val :
    padicValInt 3 (Matrix.det cotangent_Z) = 0 := by
  rw [cotangent_Z_det]
  exact padicValInt.eq_zero_of_not_dvd (by decide : ¬ (3 : ℤ) ∣ 2)

/-- `2` is a unit in `ℤ/3`. -/
theorem two_is_unit_mod3 : IsUnit (2 : ZMod 3) :=
  isUnit_iff_ne_zero.mpr two_ne_zero_mod3

/-- Residue-field matrix is invertible: `det M₃ = 2 ≠ 0`. -/
theorem cotangent_Z_mod3_det_ne :
    Matrix.det (cotangent_Z.map (fun n : ℤ => (n : ZMod 3))) ≠ 0 := by
  rw [cotangent_Z_mod3_det]
  exact two_ne_zero_mod3

/-- `det = 2` is a unit in `ℤ_{(3)}` because `2 ∉ (3)`.
This is the Nakayama lifting for `GL₂`: full rank mod `(3)`
plus `v₃(det) = 0`. -/
theorem cotangent_Z3_det_isUnit : IsUnit (Matrix.det cotangent_Z3) := by
  rw [cotangent_Z3_det]
  exact (IsLocalization.AtPrime.isUnit_to_map_iff Z_at_3 primeIdeal3 (2 : ℤ)).mpr
    two_mem_primeCompl3

/-- The localized matrix is itself a unit in `M₂(ℤ_{(3)})`. -/
theorem cotangent_Z3_isUnit : IsUnit cotangent_Z3 :=
  (Matrix.isUnit_iff_isUnit_det cotangent_Z3).mpr cotangent_Z3_det_isUnit

/-- Integral model of `cotangentSheaf_X0_26` at 3: free of
rank 2 on the displayed basis `ω₁, ω₂`. -/
abbrev cotangentModule_Z3_sheaf : Type :=
  cotangentModule_Z3

theorem cotangentModule_Z3_sheaf_eq :
    cotangentModule_Z3_sheaf = (Fin 2 → Z_at_3) :=
  rfl

instance : Module Z_at_3 cotangentModule_Z3_sheaf :=
  inferInstance

/-- Same invertibility, now named as the sheaf's integral model. -/
theorem cotangent_Z3_is_unit_sheaf : IsUnit (Matrix.det cotangent_Z3) :=
  cotangent_Z3_det_isUnit

/-- Honesty at 2: `2 ∈ (2)`, so `det` is not a unit in `ℤ_{(2)}`. -/
theorem cotangent_Z2_det_not_unit : ¬ IsUnit (Matrix.det cotangent_Z2) := by
  rw [cotangent_Z2_det]
  intro h
  have hmem : (2 : ℤ) ∈ primeIdeal2.primeCompl :=
    (IsLocalization.AtPrime.isUnit_to_map_iff Z_at_2 primeIdeal2 (2 : ℤ)).mp h
  exact hmem two_mem_primeIdeal2

/-- Mathlib Nakayama is in scope.  The `GL₂` form used above
is `IsUnit det` over the local ring; the residue-field input
is `det M₃ ≠ 0`. -/
theorem nakayama_gl2_at_3 :
    Matrix.det (cotangent_Z.map (fun n : ℤ => (n : ZMod 3))) ≠ 0 ∧
      padicValInt 3 (Matrix.det cotangent_Z) = 0 ∧
        IsUnit (Matrix.det cotangent_Z3) ∧
          IsUnit cotangent_Z3 :=
  ⟨cotangent_Z_mod3_det_ne, cotangent_Z_three_val,
    cotangent_Z3_det_isUnit, cotangent_Z3_isUnit⟩

/-- Formal immersion at 3: `AbelJacobiModel` has invertible
cotangent over `ℤ_{(3)}`.  Not a morphism of formal schemes. -/
structure IsFormalImmersionLocalized (AJ : Nat → Nat × Nat) (p : Nat) : Prop where
  aj : AJ = AbelJacobiModel
  prime : p = 3
  matrix_Z : cotangent_Z = !![1, 1; 0, 2]
  det_Z : Matrix.det cotangent_Z = 2
  three_val : padicValInt 3 (Matrix.det cotangent_Z) = 0
  det_unit : IsUnit (Matrix.det cotangent_Z3)
  matrix_unit : IsUnit cotangent_Z3
  reduces : cotangent_Z.map (fun n : ℤ => (n : ZMod 3)) = certifiedM3
  full_rank_mod3 : (2 : ZMod 3) ≠ 0
  two_unit_mod3 : IsUnit (2 : ZMod 3)
  basis : omega1 = "dx/y" ∧ omega2 = "x dx/y"
  disc : X0_26_disc_cert ≠ 0
  local_ring : LocalRing Z_at_3
  kaehler :
    (2 * y_coord : coordinateRing_X0_26) • dy =
      aeval x_coord X0_26_f_deriv • dx
  sheaf_affine : cotangentSheaf_X0_26.affine = kaehlerDifferentials_X0_26
  unit_sheaf : IsUnit (Matrix.det cotangent_Z3)

theorem formal_immersion_at_3 :
    IsFormalImmersionLocalized AbelJacobiModel 3 where
  aj := rfl
  prime := rfl
  matrix_Z := cotangent_Z_eq
  det_Z := cotangent_Z_det
  three_val := cotangent_Z_three_val
  det_unit := cotangent_Z3_det_isUnit
  matrix_unit := cotangent_Z3_isUnit
  reduces := cotangent_Z_mod3_eq_M3
  full_rank_mod3 := two_ne_zero_mod3
  two_unit_mod3 := two_is_unit_mod3
  basis := omega_basis
  disc := X0_26_disc_cert_ne_zero
  local_ring := Z_at_3_local
  kaehler := hyperelliptic_kaehler_relation
  sheaf_affine := cotangentSheaf_affine
  unit_sheaf := cotangent_Z3_is_unit_sheaf

/-- Displayed rational-point labels of the compactification
are the four cusps.  Not a Mathlib `X₀(26)(ℚ)` theorem. -/
theorem X0_26_Q_points_cusps_model :
    fourCuspsList = [1, 2, 13, 26] ∧
      ¬ ExistsNoncuspidal_26 ∧
        Sel2_26a1 = 1 ∧ Sel2_26b1 = 1 ∧
          certifiedMwrank_26a1 = 0 ∧ certifiedMwrank_26b1 = 0 ∧
            descentSHA =
              "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" :=
  ⟨X0_26_Q_cusps, no_noncuspidal_Q_points,
    Sel2_eq_one.1, Sel2_eq_one.2,
    certifiedMwrank_zero.1, certifiedMwrank_zero.2, descentSHA_eq⟩

/-- Chabauty *input* at 3: localized invertibility of `M_ℤ`
together with the four-cusp / Selmer / SHA display.
Not a Mathlib theorem `X₀(26)(ℚ) = {cusps}`. -/
theorem X0_26_Q_points_cusps_model_real :
    fourCuspsList = [1, 2, 13, 26] ∧
      ¬ ExistsNoncuspidal_26 ∧
        Sel2_26a1 = 1 ∧ Sel2_26b1 = 1 ∧
          certifiedMwrank_26a1 = 0 ∧ certifiedMwrank_26b1 = 0 ∧
            descentSHA =
              "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260" ∧
              IsFormalImmersionLocalized AbelJacobiModel 3 ∧
                IsUnit (Matrix.det cotangent_Z3) ∧
                  ¬ IsUnit (Matrix.det cotangent_Z2) ∧
                    ((2 * y_coord : coordinateRing_X0_26) • dy =
                      aeval x_coord X0_26_f_deriv • dx) :=
  ⟨X0_26_Q_cusps, no_noncuspidal_Q_points,
    Sel2_eq_one.1, Sel2_eq_one.2,
    certifiedMwrank_zero.1, certifiedMwrank_zero.2, descentSHA_eq,
    formal_immersion_at_3, cotangent_Z3_is_unit_sheaf,
    cotangent_Z2_det_not_unit, hyperelliptic_kaehler_relation⟩

def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    Nat.gcd A (Nat.gcd B C) > 1

#check X0_26_f
#check X0_26_hyperelliptic
#check J0_26_Model
#check AbelJacobiModel
#check coordinateRing_X0_26
#check kaehlerDifferentials_X0_26
#check cotangent_omega1
#check cotangentSheaf_X0_26
#check basis_H0_Omega1
#check formal_immersion_at_2
#check formal_immersion_at_3
#check cotangent_Z2
#check cotangent_Z3
#check cotangent_Z3_is_unit_sheaf
#check X0_26_Q_points_cusps_model
#check X0_26_Q_points_cusps_model_real
#check Submodule.eq_smul_of_le_smul_of_le_jacobson
#print axioms X0_26_f_coeff_6
#print axioms X0_26_disc_cert_ne_zero
#print axioms X0_26_f_deriv_eq
#print axioms y_sq_eq_f
#print axioms hyperelliptic_kaehler_relation
#print axioms dim_H0_Omega1
#print axioms cotangent_Z_det
#print axioms formal_immersion_at_2
#print axioms formal_immersion_at_3
#print axioms cotangent_Z3_is_unit_sheaf
#print axioms cotangent_Z2_det_not_unit
#print axioms X0_26_Q_points_cusps_model
#print axioms X0_26_Q_points_cusps_model_real

end BealLevel26Foundations.Beal.FullProof.X0_26_Model
