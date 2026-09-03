import Beal.Mazur.Jacobian.J0_26_Decomp
import Beal.Mazur.Gates.FormalImmersion_26_Cert
import Beal.Mazur.Gates.FormalImmersion_J0_26_NoSorry
import Beal.Modular.Level26_GeometryBridge

namespace Beal17Mazur.Jacobian.FormalImmersion26

open Beal17Mazur
open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26RankProof
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Jacobian.J0_26_Decomp

noncomputable section

/-!
# Conditional formal immersion for `X₀(26)` at `3`

This module is the Jacobian-facing Phase C boundary.  The finite part of the
formal-immersion certificate reuses the already checked degree, discriminant,
and genus-two data for the displayed `X₀(26)` model.  It does not introduce a
new Riemann--Hurwitz statement or pretend that Mathlib constructs the
scheme-level Jacobian.

The remaining geometric content is an explicit supplier proposition.  It
provides an Abel--Jacobi map, reduction at `3`, and the formal-immersion
implication needed to identify a rational point with one of the four displayed
cusps.  Consequently every rational-point conclusion below remains
conditional and no unconditional rank claim is made.
-/

/-! ## Ledger-derived finite matrix evidence at `3` -/

/-- The degree-six polynomial in the completed-square model
`Y² = X0_26_f6(x)`.

This is an alias of the model already certified in `X0_26_Model`; it does not
introduce a second curve equation. -/
def X0_26_f6 (x : ℚ) : ℚ :=
  X0_26_sextic x

/-- The affine hyperelliptic equation used by the finite Phase C replay. -/
def X0_26_HyperellipticModel (x y : ℚ) : Prop :=
  y ^ 2 = X0_26_f6 x

theorem X0_26_hyperellipticModel_eq_existing (x y : ℚ) :
    X0_26_HyperellipticModel x y ↔
      X0_26_OnModel (.affine x y) := by
  rfl

/-- The `2 × 2` mod-`3` matrix derived from the first two coefficients of the
two normalized LMFDB eigenlines, followed by the explicit target-basis change
`(c₁,c₂) ↦ (c₁,c₁+c₂)`.

This is finite q-expansion evidence.  Its identification with the actual
Abel--Jacobi cotangent map at `∞` is the separate compatibility proposition in
`Level26_GeometryBridge`. -/
def formalImmersionMatrixMod3 :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  Beal.Modular.Level26_GeometryBridge.level26CotangentMatrixMod3

theorem formal_immersion_matrix_explicit :
    formalImmersionMatrixMod3 = !![1, 1; 0, 2] := by
  exact
    Beal.Modular.Level26_GeometryBridge.level26_cotangent_matrix_explicit

/-- The matrix computed from the differential/cusp tables is exactly the
canonical mod-`3` certificate matrix at the cusp `∞`. -/
theorem formal_immersion_matrix_eq_certified_M3 :
    formalImmersionMatrixMod3 =
      Beal17Mazur.Gates.FormalImmersion26Cert.M3 := by
  rw [formal_immersion_matrix_explicit]
  rfl

/-- Kernel-decided full-rank certificate for the real Phase C matrix. -/
theorem formal_immersion_matrix_rank_two_decided :
    Matrix.det formalImmersionMatrixMod3 ≠ 0 := by
  rw [formal_immersion_matrix_eq_certified_M3]
  exact Beal17Mazur.Gates.FormalImmersion26Cert.M3_det_nonzero

/-- The finite, theorem-backed Phase C evidence.

The final determinant replays the existing Phase B row so the degree,
discriminant, genus, and mod-`3` evidence remain visibly connected. -/
def FormalImmersionAt3_Real_26 : Prop :=
  X0_26_degree = 6 ∧
    X0_26_discriminant ≠ 0 ∧
    X0_26_certifiedGenus = 2 ∧
    X0_26_HyperellipticModel 0 1 ∧
    X0_26_HyperellipticModel 0 (-1) ∧
    Matrix.det formalImmersionMatrixMod3 ≠ 0 ∧
    Matrix.det J0_26_dAJ_matrix_mod_3_replay ≠ 0

theorem formal_immersion_real_evidence :
    FormalImmersionAt3_Real_26 := by
  unfold FormalImmersionAt3_Real_26
  exact
    ⟨rfl, X0_26_discriminant_ne_zero, X0_26_genus,
      by norm_num [X0_26_HyperellipticModel, X0_26_f6, X0_26_sextic],
      by norm_num [X0_26_HyperellipticModel, X0_26_f6, X0_26_sextic],
      formal_immersion_matrix_rank_two_decided,
      J0_26_mod3_det_replay_decided⟩

/-- The finite Phase B certificate for a chosen Jacobian carrier. -/
def JacobianTransportCertificate_26
    (J0_26 : Type*) [AddCommGroup J0_26] : Prop :=
  Nonempty (JacobianTransport_26 J0_26)

/-- The proposition that the chosen Jacobian carrier has rank zero. -/
def RankJ0_26_zero
    (J0_26 : Type*) [AddCommGroup J0_26] : Prop :=
  ∃ transport : JacobianTransport_26 J0_26, transport.rank_J0 = 0

/-- The explicit Phase C formal-immersion proposition at `p = 3`.

The first four conjuncts are finite, already checked certificates.  The final
conjunct is the typed geometric supplier: for each Phase B transport it
provides the Abel--Jacobi and reduction data consumed by the conditional
four-cusp theorem. -/
def FormalImmersionAt3_26
    (J0_26 : Type*) [AddCommGroup J0_26] : Prop :=
  X0_26_degree = 6 ∧
    X0_26_discriminant ≠ 0 ∧
    X0_26_certifiedGenus = 2 ∧
    FormalImmersionAt3 ∧
    ∃ (abelJacobi : AbelJacobiData J0_26)
      (reduction : ReductionAt3Data abelJacobi),
      Nonempty (FormalImmersionAt3Data abelJacobi reduction)

/-- The finite part of `FormalImmersionAt3_26` is proved by existing
degree/discriminant/genus and mod-3 determinant certificates. -/
theorem finite_formal_immersion_at_3_26 :
    X0_26_degree = 6 ∧
      X0_26_discriminant ≠ 0 ∧
      X0_26_certifiedGenus = 2 ∧
      FormalImmersionAt3 := by
  exact ⟨rfl, X0_26_discriminant_ne_zero, X0_26_genus,
    formal_immersion_at_3⟩

/-- The mod-3 determinant certificate is a kernel-checked finite decision. -/
theorem mod3_det_nonzero :
    Matrix.det dAJ_matrix_mod_3 ≠ 0 := by
  decide

theorem four_cusps_subset_rational_points_26 :
    (four_cusps : Set X0_26_RationalPoint) ⊆ X0_26_Q :=
  four_cusps_subset_XQ

/-- Rank zero together with the Phase B and Phase C suppliers gives exactly
the four displayed rational cusps. -/
theorem rational_points_eq_four_cusps_of_rank_zero
    {J0_26 : Type*} [AddCommGroup J0_26]
    (hRank : RankJ0_26_zero J0_26)
    (hTransport : JacobianTransportCertificate_26 J0_26)
    (hFormal : FormalImmersionAt3_26 J0_26) :
    X0_26_Q = (four_cusps : Set X0_26_RationalPoint) := by
  obtain ⟨transport, hRank⟩ := hRank
  obtain ⟨_transportAvailable⟩ := hTransport
  obtain ⟨_, _, _, hImmersion, abelJacobi, reduction, ⟨immersion⟩⟩ := hFormal
  apply Set.Subset.antisymm
  · intro point hPoint
    have hTorsion :
        abelJacobi.map point ∈ abelJacobi.actualTorsion :=
      abelJacobi.rational_torsion_of_rank_zero hRank point hPoint
    obtain ⟨cusp, hCusp, hReduction⟩ :=
      reduction.torsion_specializes_to_cusp
        (abelJacobi.map point) hTorsion
    have hCuspTorsion :
        abelJacobi.map cusp ∈ abelJacobi.actualTorsion :=
      reduction.cusp_classes_torsion cusp hCusp
    have hMap :
        abelJacobi.map point = abelJacobi.map cusp :=
      reduction.injective_on_torsion hTorsion hCuspTorsion hReduction
    have hPointEq : point = cusp :=
      immersion.formal_immersion_implication hImmersion
        hPoint hCusp hReduction hMap
    rw [hPointEq]
    exact hCusp
  · exact four_cusps_subset_rational_points_26

/-- Phase A, the Phase B Jacobian transport certificate, and the explicit
Phase C formal-immersion proposition isolate the four rational cusps. -/
theorem cusps_only_of_rank_zero
    {J0_26 : Type*} [AddCommGroup J0_26]
    (h :
      SecondDescentHypothesis_26 ∧
        TorsionOdd_26 ∧
        JacobianTransportCertificate_26 J0_26 ∧
        FormalImmersionAt3_26 J0_26) :
    X0_26_Q = (four_cusps : Set X0_26_RationalPoint) := by
  obtain ⟨hSecondDescent, hTorsionOdd, hTransport, hFormal⟩ := h
  obtain ⟨transport⟩ := hTransport
  have hRank : transport.rank_J0 = 0 :=
    rank_J0_zero_of_PhaseA transport ⟨hSecondDescent, hTorsionOdd⟩
  exact rational_points_eq_four_cusps_of_rank_zero
    ⟨transport, hRank⟩ ⟨transport⟩ hFormal

#print axioms mod3_det_nonzero
#print axioms formal_immersion_matrix_rank_two_decided
#print axioms formal_immersion_real_evidence
#print axioms finite_formal_immersion_at_3_26
#print axioms rational_points_eq_four_cusps_of_rank_zero
#print axioms cusps_only_of_rank_zero

end

end Beal17Mazur.Jacobian.FormalImmersion26