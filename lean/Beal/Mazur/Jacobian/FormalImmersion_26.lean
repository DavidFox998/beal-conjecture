import Beal.Mazur.Jacobian.J0_26_Decomp
import Beal.Mazur.Gates.FormalImmersion_J0_26_NoSorry

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

#print axioms finite_formal_immersion_at_3_26
#print axioms rational_points_eq_four_cusps_of_rank_zero
#print axioms cusps_only_of_rank_zero

end

end Beal17Mazur.Jacobian.FormalImmersion26