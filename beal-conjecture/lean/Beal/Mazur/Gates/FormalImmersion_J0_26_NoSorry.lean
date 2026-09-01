import Beal.Mazur.X0_26_Model
import Beal.Mazur.Jacobian.J0_26_Decomp
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace Beal17Mazur.Gates.FormalImmersionNoSorry

/-!
# Beal-local formal-immersion interface for `X₀(26)`

The determinant below is a finite certificate check.  It is not claimed to be
the geometric Abel--Jacobi differential, because the present Beal repository
does not contain a scheme-level Jacobian or formal-immersion construction.
Likewise, the only verified rational candidates remain the four cusps.
-/

abbrev J0_26_Jacobian := X0_26_RationalPoint

def AJ : X0_26_RationalPoint → J0_26_Jacobian :=
  fun point => point

def dAJ_matrix_mod_3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

def FormalImmersionAt3 : Prop :=
  Matrix.det dAJ_matrix_mod_3 ≠ 0

theorem formal_immersion_at_3 : FormalImmersionAt3 := by
  norm_num [FormalImmersionAt3, dAJ_matrix_mod_3, Matrix.det_fin_two]
  decide

def four_cusps : Finset X0_26_RationalPoint :=
  X0_26_cusps

theorem four_cusps_card : four_cusps.card = 4 :=
  X0_26_cusp_count

def torsion_candidates : Finset J0_26_Jacobian :=
  four_cusps.image AJ

def X0_26_Q : Set X0_26_RationalPoint :=
  {point | point.1.IsRational}

theorem four_cusps_subset_XQ :
    (four_cusps : Set X0_26_RationalPoint) ⊆ X0_26_Q := by
  intro point _hpoint
  exact point.2

/-- A genuine Abel--Jacobi supplier for the level-26 curve.

The repository does not construct the genus-two Jacobian, so the map and the
rational torsion subgroup are supplied by a later geometric development.
Unlike a status flag, these propositions are consumed by the Phase C theorem.
The rank argument is attached to the supplied Jacobian transport, not to an
unrelated natural-number record. -/
structure AbelJacobiData
    (J0_26 : Type*) [AddCommGroup J0_26] where
  map : X0_26_RationalPoint → J0_26
  actualTorsion : Set J0_26
  rational_torsion_of_rank_zero :
    ∀ {rank : Nat}, rank = 0 → ∀ point ∈ X0_26_Q,
      map point ∈ actualTorsion

/-- The specialization map supplied by the good-reduction-at-3 argument.

`specialFiber` is abstract because Mathlib does not provide the smooth
projective model or its Jacobian reduction.  The specialization coverage and
injectivity fields are proof-relevant inputs, not transcript booleans. -/
structure ReductionAt3Data
    {J0_26 : Type*} [AddCommGroup J0_26]
    (abelJacobi : AbelJacobiData J0_26) where
  specialFiber : Type
  reduce : J0_26 → specialFiber
  cusp_classes_torsion :
    ∀ cusp ∈ four_cusps,
      abelJacobi.map cusp ∈ abelJacobi.actualTorsion
  torsion_specializes_to_cusp :
    ∀ point ∈ abelJacobi.actualTorsion,
      ∃ cusp, cusp ∈ four_cusps ∧
        reduce point = reduce (abelJacobi.map cusp)
  injective_on_torsion :
    Set.InjOn reduce abelJacobi.actualTorsion

/-- The formal-immersion implication supplied by the missing curve/Jacobian
geometry.

The finite matrix is checked above.  The final implication remains explicit:
a rational point whose Abel--Jacobi class is torsion and whose specialization
agrees with a cusp specialization is itself one of the four cusps. -/
structure FormalImmersionAt3Data
    {J0_26 : Type*} [AddCommGroup J0_26]
    (abelJacobi : AbelJacobiData J0_26)
    (reduction : ReductionAt3Data abelJacobi) where
  formal_immersion_implication :
    FormalImmersionAt3 →
    ∀ {point cusp : X0_26_RationalPoint},
      point ∈ X0_26_Q →
      cusp ∈ four_cusps →
      reduction.reduce (abelJacobi.map point) =
        reduction.reduce (abelJacobi.map cusp) →
      abelJacobi.map point = abelJacobi.map cusp →
      point = cusp

/-- The earlier standalone torsion wall remains available for compatibility.
The Phase C theorem below uses the typed `AbelJacobiData` instead. -/
def TorsionExactWall
    (actualTorsion : Set J0_26_Jacobian) : Prop :=
  actualTorsion = (torsion_candidates : Set J0_26_Jacobian)

theorem torsion_exact
    (actualTorsion : Set J0_26_Jacobian)
    (hWall : TorsionExactWall actualTorsion) :
    actualTorsion = (torsion_candidates : Set J0_26_Jacobian) :=
  hWall

/-- Phase A and the explicit Phase B transport supply the Jacobian rank
boundary consumed by Phase C. -/
theorem rank_zero_of_phase_a_and_transport
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport :
      Beal17Mazur.Jacobian.J0_26_Decomp.JacobianTransport_26 J0_26)
    (hPhaseA :
      Beal17Mazur.Gates.Descent26RankProof.SecondDescentHypothesis_26 ∧
        Beal17Mazur.Gates.Descent26RankProof.TorsionOdd_26) :
    transport.rank_J0 = 0 :=
  Beal17Mazur.Jacobian.J0_26_Decomp.rank_J0_zero_of_PhaseA
    transport hPhaseA

/-- The rank boundary, reduction at `3`, and formal-immersion implication
isolate the four explicitly certified rational cusps. -/
theorem X0_26_Q_subset_four_cusps
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport :
      Beal17Mazur.Jacobian.J0_26_Decomp.JacobianTransport_26 J0_26)
    (hPhaseA :
      Beal17Mazur.Gates.Descent26RankProof.SecondDescentHypothesis_26 ∧
        Beal17Mazur.Gates.Descent26RankProof.TorsionOdd_26)
    (abelJacobi : AbelJacobiData J0_26)
    (reduction : ReductionAt3Data abelJacobi)
    (immersion : FormalImmersionAt3Data abelJacobi reduction) :
    X0_26_Q ⊆ (four_cusps : Set X0_26_RationalPoint) := by
  have hRank : transport.rank_J0 = 0 :=
    rank_zero_of_phase_a_and_transport transport hPhaseA
  intro point hPoint
  have hTorsion : abelJacobi.map point ∈ abelJacobi.actualTorsion :=
    abelJacobi.rational_torsion_of_rank_zero hRank point hPoint
  obtain ⟨cusp, hCusp, hReduction⟩ :=
    reduction.torsion_specializes_to_cusp
      (abelJacobi.map point) hTorsion
  have hCuspTorsion :
      abelJacobi.map cusp ∈ abelJacobi.actualTorsion :=
    reduction.cusp_classes_torsion cusp hCusp
  have hMap : abelJacobi.map point = abelJacobi.map cusp :=
    reduction.injective_on_torsion hTorsion hCuspTorsion hReduction
  have hPointEq : point = cusp :=
    immersion.formal_immersion_implication formal_immersion_at_3
      hPoint hCusp hReduction hMap
  rw [hPointEq]
  exact hCusp

theorem X0_26_Q_eq_four_cusps
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport :
      Beal17Mazur.Jacobian.J0_26_Decomp.JacobianTransport_26 J0_26)
    (hPhaseA :
      Beal17Mazur.Gates.Descent26RankProof.SecondDescentHypothesis_26 ∧
        Beal17Mazur.Gates.Descent26RankProof.TorsionOdd_26)
    (abelJacobi : AbelJacobiData J0_26)
    (reduction : ReductionAt3Data abelJacobi)
    (immersion : FormalImmersionAt3Data abelJacobi reduction) :
    X0_26_Q = (four_cusps : Set X0_26_RationalPoint) := by
  apply Set.Subset.antisymm
  · exact X0_26_Q_subset_four_cusps
      transport hPhaseA abelJacobi reduction immersion
  · exact four_cusps_subset_XQ

#print axioms formal_immersion_at_3
#print axioms four_cusps_card
#print axioms torsion_exact
#print axioms rank_zero_of_phase_a_and_transport
#print axioms X0_26_Q_subset_four_cusps
#print axioms X0_26_Q_eq_four_cusps

end Beal17Mazur.Gates.FormalImmersionNoSorry