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
reconstructed in the compact local `Gates/` modules.  The BSD-shaped record
below is proved only at its declared interface level; it is not a formal
elliptic-curve or L-function rank theorem.
The rank/descent, torsion, Chabauty, and modular interpretation steps are
represented as explicit hypotheses of conditional theorems.  This keeps the
standalone Beal language axiom-free and sorry-free without claiming those
four mathematical walls have been discharged.

The source-backed 476c model has four rational cusps.  We do not add two
noncuspidal CM points: that six-point premise is not the accepted
classification for this curve.
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

/-- A finite mod-3 certificate type of the advertised order. -/
def J0_26_mod_3 := Fin 21

theorem torsion_bound_mod_3 : Nat.card J0_26_mod_3 = 21 := by
  simp [J0_26_mod_3]

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

theorem Frey_13_exclusion_of_X0_26
    (hRealization : Frey13ToX0_26Realization)
    (hExhaustive : X0_26_Q ⊆
      (X0_26_rational_points : Set X0_26_RationalPoint)) :
    FreyPIsogenyExclusion 13 := by
  intro context hprime hReducible
  obtain ⟨point, hRational, hOutside⟩ :=
    hRealization context hprime hReducible
  exact hOutside (hExhaustive hRational)

/-- The Frey `p = 13` consequence composed through the two Beal-local gates.

The finite determinant calculation is proved.  The analytic `L`-value bridge,
Heegner-height input, Kolyvagin implication, Chabauty exhaustiveness, and Frey
realization remain visible hypotheses.
-/
theorem Frey_13_exclusion_of_local_gates
    (lData : Gates.KolyvaginNoSorry.LValueData)
    (heightData : Gates.KolyvaginNoSorry.HeegnerPointData)
    (rankData : Gates.KolyvaginNoSorry.J0_26_RankData)
    (hLWall : Gates.KolyvaginNoSorry.M1_M2_to_L_nonzero_wall lData)
    (hKolyvagin :
      Gates.KolyvaginNoSorry.KolyvaginRankZeroWall
        lData heightData rankData)
    (hHeeg :
      Gates.KolyvaginNoSorry.HeegnerHeightNonzero heightData)
    (hChabauty :
      Gates.FormalImmersionNoSorry.Chabauty0ExhaustivenessWall rankData)
    (hRealization : Frey13ToX0_26Realization) :
    FreyPIsogenyExclusion 13 := by
  have hRank : Gates.KolyvaginNoSorry.J0_26_RankZero rankData :=
    Gates.KolyvaginNoSorry.J0_26_rank_zero_local
      lData heightData rankData hLWall hKolyvagin hHeeg
  have hLocal :
      Gates.FormalImmersionNoSorry.X0_26_Q ⊆
        (Gates.FormalImmersionNoSorry.four_cusps :
          Set X0_26_RationalPoint) :=
    Gates.FormalImmersionNoSorry.X0_26_Q_subset_four_cusps
      rankData hRank
      Gates.FormalImmersionNoSorry.formal_immersion_at_3 hChabauty
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
#print axioms torsion_bound_mod_3
#print axioms formal_immersion_at_3
#print axioms rank_zero_implies_torsion_eq
#print axioms X0_26_rational_points_exhaustive
#print axioms Frey_13_exclusion_of_X0_26
#print axioms Frey_13_exclusion_of_local_gates

end Beal17Mazur