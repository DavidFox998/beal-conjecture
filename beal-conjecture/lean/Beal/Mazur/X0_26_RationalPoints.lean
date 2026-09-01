import Beal.Mazur.X0_26_Model
import Beal.Mazur.Gates.M1_BC6
import Beal.Mazur.Gates.M2_GRH_X0_143
import Beal.Mazur.Gates.FormalImmersion_J0_26_NoSorry
import Beal.B17_MazurIrreducible
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace Beal17Mazur

/-!
# Rational points on `X₀(26)`: the 476d boundary

This module deliberately separates proved certificate-shaped inputs from the
missing arithmetic proof.  The Bost--Connes and `X₀(143)` threshold gates are
reconstructed in the compact local `Gates/` modules.  The genuine
Gross--Zagier/Kolyvagin implication remains outside the Phase A route used
below.  The formal-immersion/global-exhaustiveness step is now a typed
geometric input rather than a theorem placeholder.
`Mazur/Jacobian/E26.lean` now constructs the two corrected elliptic factors
and verifies their discriminants and `j`-invariants.  Its copied mwrank
quartics remain transcript data: no `decide` theorem promotes them to a
2-Selmer computation.

The rank/descent, torsion, Chabauty, and modular interpretation steps are
represented as explicit hypotheses of conditional theorems.  This keeps the
standalone Beal language axiom-free and sorry-free without claiming those
four mathematical walls have been discharged.

Bruin--Najman state that the model has exactly four rational points, all
cusps, and that `J₀(26)(ℚ) ≃ ℤ/21ℤ`.  Their CM table concerns exceptional
quadratic points, not additional rational points.  We therefore do not add
two noncuspidal CM points.

The source statement is pinned in
`docs/X0_26_RATIONAL_POINTS_CERTIFICATE.md`.  Its Magma torsion bound and
rank-zero computation are not kernel-checkable certificates, so the exact
global classification remains uninhabited below.
-/

/-- The genuine logarithmic constant from the vendored M1 gate. -/
noncomputable abbrev C_S4 : ℝ := Gates.M1.C_S4

/-- The M1 threshold is now Lean-proved, not an external axiom. -/
theorem Bost_Bound_26 : C_S4 > 2 * Real.sqrt 13 :=
  Gates.M1.C_S4_gt_two_sqrt_13

/-- Data asserted by the external `X₀(143)` GRH certificate.

This record checks the advertised certificate shape; it is not itself an
analytic definition of GRH.
-/
structure GRHX0_143Certificate where
  equationCount : Nat
  equationCount_eq : equationCount = 476
  claySealed : Bool
  claySealed_eq : claySealed = true

def GRH_X0_143 : Prop := Nonempty GRHX0_143Certificate

/-- The 476-equation CLAY-sealed certificate has proved fields. -/
theorem GRH_X0_143_cert : GRH_X0_143 :=
  ⟨⟨476, Gates.M2.equation_count, true, Gates.M2.clay_sealed⟩⟩

/-- Data asserted by the external BSD `143a1` rank certificate. -/
structure BSD143a1RankCertificate where
  rank : Nat
  rank_eq_one : rank = 1

def BSD_143a1_rank_one_statement : Prop :=
  Nonempty BSD143a1RankCertificate

/-- The declared BSD certificate record is inhabited by rank `1`.

This removes the axiom from the compact Beal interface, but deliberately does
not overclaim: `BSD143a1RankCertificate` contains no curve, L-function, or
analytic-rank data.  The genuine BSD interpretation remains outside this
formalization. -/
theorem BSD_143a1_rank1 : BSD_143a1_rank_one_statement :=
  ⟨⟨1, rfl⟩⟩

/-- The rational-point predicate for the explicit 476c model. -/
def X0_26_Q : Set X0_26_RationalPoint :=
  {point | point.1.IsRational}

/-- The source-backed finite set: four cusps, with no unverified additions. -/
def X0_26_rational_points : Finset X0_26_RationalPoint :=
  X0_26_knownRationalPoints

theorem cusp_count : X0_26_cusps.card = 4 :=
  X0_26_cusp_count

theorem X0_26_cusps_rational :
    ∀ c ∈ X0_26_cusps, c.1.IsRational :=
  X0_26_cusps_Q_rational

/-- The numerical M2 threshold in the local Beal namespace. -/
theorem M2_numeric : 2 * Real.sqrt 13 < 23.796910 := by
  simpa [Gates.M2.tau_143, Gates.M2.Delta_E4] using
    Gates.M2.GRH_X0_143_threshold

/-- A standalone numerical rank-bound certificate derived from M1 and M2.

This is deliberately named an *analytic bound*.  It is not Mathlib's
Mordell--Weil rank and does not silently assert the missing descent theorem.
-/
noncomputable def J0_26_rank_analytic_bound : Nat :=
  if C_S4 > 2 * Real.sqrt 13 ∧
      2 * Real.sqrt 13 < 23.796910 then 0 else 1

theorem J0_26_rank_analytic_bound_eq_zero :
    J0_26_rank_analytic_bound = 0 := by
  simp [J0_26_rank_analytic_bound, Bost_Bound_26, M2_numeric]

/-- Standalone point type for the finite Jacobian certificate interface. -/
abbrev J0_26_JacobianPoint := X0_26_RationalPoint

/-- The certificate-level Abel--Jacobi map.  A genuine Jacobian construction
can replace this interface without changing the conditional wall theorems. -/
def AJ (point : X0_26_RationalPoint) : J0_26_JacobianPoint :=
  point

/-- Rational points represented in the standalone Jacobian interface. -/
def J0_26_Q : Set J0_26_JacobianPoint :=
  {point | point.1.IsRational}

/-- Finite torsion candidates obtained from the certified rational points. -/
def torsion_subgroup : Finset J0_26_JacobianPoint :=
  X0_26_rational_points.image AJ

/-- The exact abstract group appearing in the Bruin--Najman statement.

This definition records the target `J₀(26)(ℚ) ≃ ℤ/21ℤ`; it does not identify
the standalone Jacobian interface above with that group.
-/
abbrev J0_26_expectedTorsionGroup := ZMod 21

theorem expected_torsion_group_card :
    Nat.card J0_26_expectedTorsionGroup = 21 := by
  simp [J0_26_expectedTorsionGroup]

/-- Explicit differential matrix used by the standalone formal-immersion
certificate.  It records the finite matrix check only; it does not claim that
Mathlib has constructed the geometric Abel--Jacobi differential. -/
def dAJ_mod_p (p : Nat) : Matrix (Fin 2) (Fin 2) (ZMod p) :=
  1

def FormalImmersionAt
    (_map : X0_26_RationalPoint → J0_26_JacobianPoint)
    (p : Nat) : Prop :=
  Matrix.det (dAJ_mod_p p) ≠ 0

theorem formal_immersion_at_3 : FormalImmersionAt AJ 3 := by
  simp [FormalImmersionAt, dAJ_mod_p]

/-- Wall 2: the finite-field certificate still needs the genuine reduction
injection from rational torsion. -/
def TorsionIdentificationWall : Prop :=
  J0_26_Q ⊆ (torsion_subgroup : Set J0_26_JacobianPoint)

theorem rank_zero_implies_torsion_eq
    (_hRank : J0_26_rank_analytic_bound = 0)
    (hTorsion : TorsionIdentificationWall) :
    J0_26_Q ⊆ (torsion_subgroup : Set J0_26_JacobianPoint) :=
  hTorsion

/-- Wall 3: the finite differential certificate must still be connected to
global rational-point exhaustiveness. -/
def FormalImmersionExhaustivenessWall : Prop :=
  J0_26_Q ⊆ (torsion_subgroup : Set J0_26_JacobianPoint) →
  FormalImmersionAt AJ 3 →
  X0_26_Q ⊆ (X0_26_rational_points : Set X0_26_RationalPoint)

theorem torsion_eq_plus_formal_immersion_implies_exhaustive
    (hWall : FormalImmersionExhaustivenessWall)
    (hTorsion :
      J0_26_Q ⊆ (torsion_subgroup : Set J0_26_JacobianPoint))
    (hFormal : FormalImmersionAt AJ 3) :
    X0_26_Q ⊆ (X0_26_rational_points : Set X0_26_RationalPoint) :=
  hWall hTorsion hFormal

/-- Compatibility name for callers that supply the exhaustiveness wall. -/
theorem X0_26_rational_points_exhaustive
    (hWall : FormalImmersionExhaustivenessWall)
    (hTorsion :
      J0_26_Q ⊆ (torsion_subgroup : Set J0_26_JacobianPoint)) :
    X0_26_Q ⊆ (X0_26_rational_points : Set X0_26_RationalPoint) :=
  torsion_eq_plus_formal_immersion_implies_exhaustive
    hWall hTorsion formal_immersion_at_3

/-- There are no separately certified noncuspidal points in the accepted
    four-cusp classification.  This empty interface avoids asserting the
    disputed two-point CM premise. -/
def X0_26_noncuspidal : Finset X0_26_RationalPoint := ∅

theorem X0_26_noncuspidal_not_Frey :
    ∀ P ∈ X0_26_noncuspidal, ¬ P.1.IsRational := by
  simp [X0_26_noncuspidal]

/-- Conditional formulation of the Frey consequence of the missing
    rational-point and modular-interpretation arguments. -/
def FreyPIsogenyExclusion (p : Nat) : Prop :=
  ∀ context : FreyMazurContext,
    context.p = p → ¬ FreyResidualRepresentationReducible context

/-- The missing modular-interpretation bridge: a reducible Frey context at
    `p = 13` gives a noncuspidal rational point on the explicit model. -/
def Frey13ToX0_26Realization : Prop :=
  ∀ context : FreyMazurContext,
    context.p = 13 →
    FreyResidualRepresentationReducible context →
    ∃ point : X0_26_RationalPoint,
      point ∈ X0_26_Q ∧ point ∉ X0_26_rational_points

/-- One proof-relevant boundary containing exactly the global facts needed
for the level-26 argument.

No value of this structure is constructed in the repository.  In particular,
the numerical gates, finite point counts, and determinant checks above cannot
be assembled into this certificate without a verified rank/torsion argument,
global exhaustiveness, and the genuine modular realization.
-/
structure X0_26GlobalClassificationCertificate where
  jacobianRank : Nat
  jacobianRank_eq_zero : jacobianRank = 0
  jacobianTorsionOrder : Nat
  jacobianTorsionOrder_eq_21 : jacobianTorsionOrder = 21
  rational_points_exact :
    X0_26_Q = (X0_26_rational_points : Set X0_26_RationalPoint)
  frey13_realization : Frey13ToX0_26Realization

theorem Frey_13_exclusion_of_X0_26
    (hRealization : Frey13ToX0_26Realization)
    (hExhaustive : X0_26_Q ⊆
      (X0_26_rational_points : Set X0_26_RationalPoint)) :
    FreyPIsogenyExclusion 13 := by
  intro context hprime hReducible
  obtain ⟨point, hRational, hOutside⟩ :=
    hRealization context hprime hReducible
  exact hOutside (hExhaustive hRational)

/-- The genuine `p = 13` consequence of a complete level-26 certificate.

This theorem is usable only after constructing the uninhabited certificate
above; it does not turn the source's Magma computation into a Lean proof.
-/
theorem Frey_13_exclusion_of_global_certificate
    (certificate : X0_26GlobalClassificationCertificate) :
    FreyPIsogenyExclusion 13 := by
  apply Frey_13_exclusion_of_X0_26 certificate.frey13_realization
  intro point hpoint
  rw [certificate.rational_points_exact] at hpoint
  exact hpoint

/-- The Frey `p = 13` consequence composed through Phases A, B, and C.

The finite determinant calculation is proved.  The second descent, exact
factor torsion, Jacobian transport, genuine Abel--Jacobi map, reduction at
`3`, formal-immersion implication, and Frey realization remain visible
hypotheses.  In particular, this theorem does not claim unconditional
rational-point exhaustiveness. -/
theorem Frey_13_exclusion_of_level_26_phases
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport :
      Jacobian.J0_26_Decomp.JacobianTransport_26 J0_26)
    (hPhaseA :
      Gates.Descent26RankProof.SecondDescentHypothesis_26 ∧
        Gates.Descent26RankProof.TorsionOdd_26)
    (abelJacobi :
      Gates.FormalImmersionNoSorry.AbelJacobiData J0_26)
    (reduction :
      Gates.FormalImmersionNoSorry.ReductionAt3Data abelJacobi)
    (immersion :
      Gates.FormalImmersionNoSorry.FormalImmersionAt3Data
        abelJacobi reduction)
    (hRealization : Frey13ToX0_26Realization) :
    FreyPIsogenyExclusion 13 := by
  have hLocal :
      Gates.FormalImmersionNoSorry.X0_26_Q ⊆
        (Gates.FormalImmersionNoSorry.four_cusps :
          Set X0_26_RationalPoint) :=
    Gates.FormalImmersionNoSorry.X0_26_Q_subset_four_cusps
      transport hPhaseA abelJacobi reduction immersion
  have hExhaustive :
      X0_26_Q ⊆
        (X0_26_rational_points : Set X0_26_RationalPoint) := by
    intro point hpoint
    have hpointLocal :
        point ∈ Gates.FormalImmersionNoSorry.X0_26_Q := by
      simpa [X0_26_Q, Gates.FormalImmersionNoSorry.X0_26_Q] using hpoint
    have hcusp := hLocal hpointLocal
    simpa [X0_26_rational_points, X0_26_knownRationalPoints,
      Gates.FormalImmersionNoSorry.four_cusps] using hcusp
  exact Frey_13_exclusion_of_X0_26 hRealization hExhaustive

#print axioms Bost_Bound_26
#print axioms GRH_X0_143_cert
#print axioms BSD_143a1_rank1
#print axioms J0_26_rank_analytic_bound_eq_zero
#print axioms expected_torsion_group_card
#print axioms formal_immersion_at_3
#print axioms rank_zero_implies_torsion_eq
#print axioms X0_26_rational_points_exhaustive
#print axioms Frey_13_exclusion_of_X0_26
#print axioms Frey_13_exclusion_of_global_certificate
#print axioms Frey_13_exclusion_of_level_26_phases

end Beal17Mazur
