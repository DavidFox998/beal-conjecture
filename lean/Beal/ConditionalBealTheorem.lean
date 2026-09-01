import Beal.Mazur.Jacobian.FormalImmersion_26
import Beal.Mazur.Frey.LevelLowering_26
import Beal.Mazur.Gates.SecondDescent_Real_26

open Beal17Mazur
open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26RankProof
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Jacobian.J0_26_Decomp
open Beal17Mazur.Jacobian.FormalImmersion26
open Beal17Mazur.Frey.LevelLowering26

noncomputable section

/-!
# The conditional Beal aggregator at level `26`

This file is deliberately an aggregator.  It does not replace any of the
Phase A--D interfaces with an axiom and it does not assert an unconditional
proof of Beal's Conjecture.  It packages the existing certificate boundaries
and composes them into the public `BealConjecture` statement.
-/

/-- The complete supplied certificate package for the level-`26` route,
indexed by the Jacobian carrier used by the Phase B and Phase C interfaces. -/
structure BealCertificates_26
    (J0_26 : Type*) [AddCommGroup J0_26] where
  secondDescent : SecondDescentHypothesis_26
  torsionOdd : TorsionOdd_26
  jacobianTransport : JacobianTransportCertificate_26 J0_26
  formalImmersion : FormalImmersionAt3_26 J0_26
  modularity : ModularityCertificate_Beal
  levelLowering : LevelLoweringCertificate_26
  freyCurveConstruction : FreyCurveConstruction_26

/-!
The finite checks below are theorem-backed facts already proved by the
Level-26 modules.  Keeping them in one named result makes the aggregator's
reuse of the degree-six, discriminant, genus-two, mod-`3` determinant,
eight-element S-unit, and ten-row ledger certificates explicit.
-/
theorem finite_level_26_certificates :
    X0_26_degree = 6 ∧
      X0_26_discriminant ≠ 0 ∧
      X0_26_certifiedGenus = 2 ∧
      Matrix.det dAJ_matrix_mod_3 ≠ 0 ∧
      Fintype.card SUnits_26 = 8 ∧
      ledger.length = 10 := by
  exact ⟨rfl, X0_26_discriminant_ne_zero, X0_26_genus,
    mod3_det_nonzero, sUnits_26_card_8_decide, ledger_length⟩

/-- The new finite Phase B layer is theorem-backed evidence for the
decomposition, but does not inhabit the conditional Jacobian isogeny
certificate used by the Beal chain. -/
theorem phase_b_transport_evidence_real :
    JacobianTransportCertificate_Real_26 :=
  j0_26_transport_evidence_real s2_26_decomp_real_decided

/-- The finite Phase C layer is theorem-backed matrix-rank evidence, but does
not inhabit the conditional geometric formal-immersion supplier used by the
four-cusp theorem. -/
theorem phase_c_formal_immersion_evidence_real :
    FormalImmersionAt3_Real_26 :=
  formal_immersion_real_evidence

/-- A noncuspidal rational point on the displayed model. -/
def NoncuspidalLevel26Point : Prop :=
  ∃ point : X0_26_RationalPoint,
    point ∈ X0_26_Q ∧
      point ∉ (four_cusps : Set X0_26_RationalPoint)

/-- The four-cusp conclusion supplied by the Phase A--C certificates. -/
def FourCuspConclusion_26 : Prop :=
  X0_26_Q = (four_cusps : Set X0_26_RationalPoint)

/-!
The contradiction is written as one visible implication chain:

`A` = a primitive Beal counterexample,
`B` = a noncuspidal rational level-`26` point,
`C` = every rational level-`26` point is one of the four cusps,
`D` = `False`.
-/
theorem beal_house_chain :
    BealCounterexampleAssumption →
      NoncuspidalLevel26Point →
        FourCuspConclusion_26 →
          False := by
  intro _counterexample hNoncuspidal hFourCusps
  obtain ⟨point, hPointRational, hPointNonCusp⟩ := hNoncuspidal
  apply hPointNonCusp
  rw [← hFourCusps]
  exact hPointRational

/-- Rebuild the modularity certificate with the aggregator's explicit Frey
construction field, rather than silently relying on the duplicated conjunct
inside `ModularityCertificate_Beal`. -/
private theorem modularity_from_certificates
    {J0_26 : Type*} [AddCommGroup J0_26]
    (certificates : BealCertificates_26 J0_26) :
    ModularityCertificate_Beal := by
  obtain ⟨_freyInModularity, modularityData⟩ := certificates.modularity
  exact ⟨certificates.freyCurveConstruction, modularityData⟩

/-- The conditional level-`26` certificate package implies the public Beal
Conjecture predicate.

The theorem is conditional: its seven fields are explicit supplied
interfaces, including the Frey construction, modularity, and level-lowering
boundaries.  It makes no unconditional Beal claim.
-/
theorem conditional_beal_of_certificates
    {J0_26 : Type*} [AddCommGroup J0_26]
    (certificates : BealCertificates_26 J0_26) :
    BealConjecture := by
  intro A B C x y z hSolution
  rcases hSolution with ⟨hA, hB, hC, hx, hy, hz, hEquation, hPrimitive⟩
  have counterexample : BealCounterexampleData :=
    { baseA := A
      baseB := B
      baseC := C
      exponentX := x
      exponentY := y
      exponentZ := z
      positiveA := hA
      positiveB := hB
      positiveC := hC
      exponents := by omega
      equation := hEquation
      primitive := hPrimitive }
  have hCounterexample : BealCounterexampleAssumption :=
    ⟨counterexample⟩
  have hModularity : ModularityCertificate_Beal :=
    modularity_from_certificates certificates
  have hNoncuspidal : NoncuspidalLevel26Point := by
    exact frey_to_X0_26_point
      ⟨hCounterexample, hModularity, certificates.levelLowering⟩
  have hFourCusps : FourCuspConclusion_26 := by
    exact cusps_only_of_rank_zero
      ⟨certificates.secondDescent, certificates.torsionOdd,
        certificates.jacobianTransport, certificates.formalImmersion⟩
  exact beal_house_chain hCounterexample hNoncuspidal hFourCusps

#print axioms finite_level_26_certificates
#print axioms phase_b_transport_evidence_real
#print axioms phase_c_formal_immersion_evidence_real
#print axioms beal_house_chain
#print axioms conditional_beal_of_certificates

end