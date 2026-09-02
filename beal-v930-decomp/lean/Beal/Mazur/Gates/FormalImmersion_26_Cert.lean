import Beal.Mazur.Jacobian.FormalImmersion_26
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace Beal17Mazur.Gates.FormalImmersion26Cert

open Beal17Mazur
open Beal17Mazur.Gates
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Jacobian.FormalImmersion26

noncomputable section

/-!
# A typed cotangent certificate for `X₀(26)`

This file makes the finite Phase-C object graph explicit.  The displayed
hyperelliptic model is the curve carrier, the Jacobian and Abel--Jacobi map
are proof-relevant interfaces, and the cotangent map is an actual finite
linear map rather than an untyped determinant.

This is intentionally not a claim that Mathlib has constructed schemes,
Jacobians, or sheaf differentials.  The `schemeLevelSoundness` field below is
the remaining geometric input: it is exactly the statement that the finite
cotangent witness is the cotangent map used by Mazur's formal-immersion
criterion.
-/

/-! ## The level and curve interfaces -/

/-- The modular-curve metadata used by this certificate. -/
structure Level26ModularCurve where
  point : Type*
  rational : point → Prop
  level : Nat
  genus : Nat
  level_eq_26 : level = 26
  genus_eq_2 : genus = 2

/-- The displayed `X₀(26)` model as a typed curve interface. -/
def x0_26_curve : Level26ModularCurve where
  point := X0_26_RationalPoint
  rational := fun point => point.1.IsRational
  level := 26
  genus := 2
  level_eq_26 := rfl
  genus_eq_2 := rfl

theorem x0_26_curve_level : x0_26_curve.level = 26 :=
  x0_26_curve.level_eq_26

theorem x0_26_curve_genus : x0_26_curve.genus = 2 :=
  x0_26_curve.genus_eq_2

/-- The cusp used as the Abel--Jacobi origin.

The base point is the rational cusp at `x = 0, y = 1` in the completed-square
model.  It is selected from the existing four-cusp certificate, not newly
asserted as a rational point. -/
def cuspBasePoint : X0_26_RationalPoint :=
  X0_26_cuspPoint .divisorOne

theorem cuspBasePoint_mem_four_cusps :
    cuspBasePoint ∈ (four_cusps : Set X0_26_RationalPoint) := by
  simp [cuspBasePoint, four_cusps, X0_26_cusps, X0_26_cuspPoint]

theorem cuspBasePoint_is_rational :
    cuspBasePoint ∈ FormalImmersionNoSorry.X0_26_Q := by
  exact four_cusps_subset_XQ cuspBasePoint_mem_four_cusps

/-! ## The Jacobian and Abel--Jacobi interface -/

/-- The finite cotangent source and target at the residue characteristic `3`.

The two coordinates are indexed by the differential basis
`ω₁ = dx/y`, `ω₂ = x dx/y`. -/
abbrev Cotangent26 := Fin 2 → ZMod 3

/-- A Jacobian carrier together with its rational Abel--Jacobi data.

The additive group is supplied by the chosen Jacobian development.  This
record does not identify the carrier with a scheme-theoretic `J₀(26)`;
`curve` and `basePoint` make the intended source and origin explicit. -/
structure Level26JacobianData (J0_26 : Type*) [AddCommGroup J0_26] where
  curve : Level26ModularCurve
  curve_eq_x0_26 : curve = x0_26_curve
  basePoint : X0_26_RationalPoint
  basePoint_eq_cusp : basePoint = cuspBasePoint
  abelJacobi : AbelJacobiData J0_26
  abelJacobi_basePoint :
    abelJacobi.map basePoint = 0
  cotangentMapAtBasePoint : Cotangent26 →ₗ[ZMod 3] Cotangent26
  rational_torsion_of_transport_rank_zero :
    ∀ (transport : Jacobian.J0_26_Decomp.JacobianTransport_26 J0_26),
      transport.rank_J0 = 0 →
      ∀ point ∈ FormalImmersionNoSorry.X0_26_Q,
        abelJacobi.map point ∈ abelJacobi.actualTorsion

/-- A proof-relevant finite cotangent map. -/
structure CotangentMap26 where
  map : Cotangent26 →ₗ[ZMod 3] Cotangent26
  matrix : Matrix (Fin 2) (Fin 2) (ZMod 3)
  matrix_eq : matrix = formalImmersionMatrixMod3
  nonsingular : Matrix.det matrix ≠ 0

/-! ## Replaying and connecting the archived M3 rows -/

/-- The two rows archived by the v9.4.0 M3 calculation. -/
def archivedM3Rows : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

theorem archivedM3Rows_eq_formalImmersionMatrix :
    archivedM3Rows = formalImmersionMatrixMod3 := by
  rw [formal_immersion_matrix_explicit]
  rfl

theorem archivedM3Rows_det_nonzero :
    Matrix.det archivedM3Rows ≠ 0 := by
  rw [archivedM3Rows_eq_formalImmersionMatrix]
  exact formal_immersion_matrix_rank_two_decided

/-- The archived M3 rows are the existing replay matrix, not a second witness. -/
theorem archivedM3Rows_eq_replay :
    archivedM3Rows =
      Jacobian.J0_26_Decomp.J0_26_dAJ_matrix_mod_3_replay := by
  unfold archivedM3Rows
    Jacobian.J0_26_Decomp.J0_26_dAJ_matrix_mod_3_replay
  rfl

/-- A checked linear map reconstructed from the M3 matrix. -/
def m3CotangentMap : Cotangent26 →ₗ[ZMod 3] Cotangent26 :=
  Matrix.toLin' archivedM3Rows

theorem m3CotangentMap_matrix :
    LinearMap.toMatrix' m3CotangentMap = archivedM3Rows := by
  exact LinearMap.toMatrix'_toLin' archivedM3Rows

theorem m3CotangentMap_nonsingular :
    Matrix.det archivedM3Rows ≠ 0 :=
  archivedM3Rows_det_nonzero

/-- The constructed finite cotangent certificate. -/
def level26CotangentMap : CotangentMap26 where
  map := m3CotangentMap
  matrix := archivedM3Rows
  matrix_eq := archivedM3Rows_eq_formalImmersionMatrix
  nonsingular := archivedM3Rows_det_nonzero

theorem level26CotangentMap_matrix :
    level26CotangentMap.matrix = formalImmersionMatrixMod3 :=
  level26CotangentMap.matrix_eq

theorem level26CotangentMap_nonsingular :
    Matrix.det level26CotangentMap.matrix ≠ 0 :=
  level26CotangentMap.nonsingular

/-! ## The remaining geometric boundary and Mazur implication -/

/-- The remaining interpretation of the finite map as a formal immersion.

This is narrower than the former raw matrix premise: it names the actual
curve, Jacobian, origin, reduction data, and finite cotangent map.  Its
content is still proposition-valued because the scheme-level construction is
not available in the pinned Mathlib release. -/
structure FormalImmersionSoundness_26
    {J0_26 : Type*} [AddCommGroup J0_26]
    (jacobian : Level26JacobianData J0_26)
    (reduction : ReductionAt3Data jacobian.abelJacobi) where
  cotangentMap_matches_archive :
    jacobian.cotangentMapAtBasePoint = level26CotangentMap.map
  formal_immersion_implication :
    jacobian.curve = x0_26_curve →
    jacobian.basePoint = cuspBasePoint →
    jacobian.abelJacobi.map jacobian.basePoint = 0 →
    jacobian.cotangentMapAtBasePoint = level26CotangentMap.map →
    Matrix.det level26CotangentMap.matrix ≠ 0 →
    ∀ {point cusp : X0_26_RationalPoint},
      point ∈ FormalImmersionNoSorry.X0_26_Q →
      cusp ∈ (four_cusps : Set X0_26_RationalPoint) →
      reduction.reduce (jacobian.abelJacobi.map point) =
        reduction.reduce (jacobian.abelJacobi.map cusp) →
      jacobian.abelJacobi.map point = jacobian.abelJacobi.map cusp →
      point = cusp

/-- Exact rank-zero/four-cusp consequence of the typed formal-immersion
interface.  The Phase-A rank and Phase-B transport hypotheses are kept
separate from the geometric soundness premise. -/
theorem mazur_rank_zero_four_cusp_implication
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport : Jacobian.J0_26_Decomp.JacobianTransport_26 J0_26)
    (hPhaseA :
      Descent26RankProof.SecondDescentHypothesis_26 ∧
        Descent26RankProof.TorsionOdd_26)
    (jacobian : Level26JacobianData J0_26)
    (reduction : ReductionAt3Data jacobian.abelJacobi)
    (soundness : FormalImmersionSoundness_26 jacobian reduction) :
    FormalImmersionNoSorry.X0_26_Q =
      (four_cusps : Set X0_26_RationalPoint) := by
  have hRank : transport.rank_J0 = 0 :=
    Jacobian.J0_26_Decomp.rank_J0_zero_of_PhaseA transport hPhaseA
  apply Set.Subset.antisymm
  · intro point hPoint
    have hTorsion :
        jacobian.abelJacobi.map point ∈ jacobian.abelJacobi.actualTorsion :=
      jacobian.rational_torsion_of_transport_rank_zero
        transport hRank point hPoint
    obtain ⟨cusp, hCusp, hReduction⟩ :=
      reduction.torsion_specializes_to_cusp
        (jacobian.abelJacobi.map point) hTorsion
    have hCuspTorsion :
        jacobian.abelJacobi.map cusp ∈ jacobian.abelJacobi.actualTorsion :=
      reduction.cusp_classes_torsion cusp hCusp
    have hMap : jacobian.abelJacobi.map point =
        jacobian.abelJacobi.map cusp :=
      reduction.injective_on_torsion hTorsion hCuspTorsion hReduction
    have hPointEq : point = cusp :=
      soundness.formal_immersion_implication
        jacobian.curve_eq_x0_26 jacobian.basePoint_eq_cusp
        jacobian.abelJacobi_basePoint soundness.cotangentMap_matches_archive
        level26CotangentMap_nonsingular hPoint hCusp hReduction hMap
    rw [hPointEq]
    exact hCusp
  · exact four_cusps_subset_XQ

theorem archived_M3_supports_formal_immersion_at_3 :
    FormalImmersionAt3 := by
  exact formal_immersion_at_3

#print axioms archivedM3Rows_eq_formalImmersionMatrix
#print axioms m3CotangentMap_matrix
#print axioms mazur_rank_zero_four_cusp_implication
#print axioms archived_M3_supports_formal_immersion_at_3

end

end Beal17Mazur.Gates.FormalImmersion26Cert