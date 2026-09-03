import Beal.Mazur.Gates.FormalImmersion_26_Cert
import Beal.Mazur.Gates.J0_26_Decomp_Cert
import Beal.Mazur.Gates.J0_26_Decomp
import Beal.Mazur.Gates.FormalImmersion_J0_26_NoSorry
import Beal.Modular.Level26_GeometryBridge

namespace Beal17Mazur.Gates.FormalImmersion26

/-!
# Focused formal-immersion boundary at `3`

The finite matrix and rank computations are checked in
`FormalImmersion_26_Cert`.  Mathlib 4.12 does not construct the modular curve,
its Jacobian, or the Abel--Jacobi differential, so the interpretation of that
matrix and Mazur's formal-immersion criterion remain one visible
proposition-valued theorem argument below.

The v9.3.0 `J0DecompositionSoundness_26` and
`MwrankCertificateSoundness_26` premises are imported unchanged.  No premise
is declared as a global Lean axiom.
-/

open Beal17Mazur.Gates.FormalImmersion26Cert
open Beal17Mazur.Gates.J0_26_Decomp_Cert
open Beal17Mazur.Gates.J0_26_Decomp
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Jacobian.J0_26_Decomp
open Beal.Modular.Level26_GeometryBridge

/-- The abstract cotangent map whose geometric construction is not yet
available in Mathlib. -/
structure CotangentMapAt3_26 where
  Cot_0_J0_26 : Type
  Cot_infinity_X0_26 : Type
  pullback : Cot_0_J0_26 → Cot_infinity_X0_26
  matrixAtInfinity : Matrix (Fin 2) (Fin 2) (ZMod 3)

def CotangentMapSurjectiveAt3_26
    (cotangent : CotangentMapAt3_26) : Prop :=
  Function.Surjective cotangent.pullback

/-- Explicit geometric soundness premise for v9.4.0.

The first implication interprets the checked mod-3 nonzero determinant as
surjectivity of the actual cotangent map.  The second is the exact Mazur
criterion used here: rank zero plus that surjectivity isolates the four
certified cusps.  Both implications remain visible data supplied by future
scheme-level geometry. -/
def FormalImmersionSoundness_26
    (J0_26 : Type*) [AddCommGroup J0_26]
    (cotangent : CotangentMapAt3_26) : Prop :=
  QExpansionCotangentCompatibilityAtInfinity26 cotangent.matrixAtInfinity ∧
    (Matrix.det cotangent.matrixAtInfinity ≠ 0 →
      CotangentMapSurjectiveAt3_26 cotangent) ∧
    ((∃ transport : JacobianTransport_26 J0_26,
        transport.rank_J0 = 0) →
      CotangentMapSurjectiveAt3_26 cotangent →
      X0_26_Q = (four_cusps : Set X0_26_RationalPoint))

theorem formalImmersionSoundness_requires_qExpansionCompatibility
    {J0_26 : Type*} [AddCommGroup J0_26]
    {cotangent : CotangentMapAt3_26}
    (formalSoundness : FormalImmersionSoundness_26 J0_26 cotangent) :
    QExpansionCotangentCompatibilityAtInfinity26
      cotangent.matrixAtInfinity :=
  formalSoundness.1

theorem M3_rows_cols_and_rank :
    Matrix.det M3 ≠ 0 ∧
      J0_26_dimension = 2 :=
  ⟨M3_det_nonzero, J0_26_dimension_eq_two⟩

/-- The checked rank-two matrix yields surjectivity only through the explicit
geometric soundness premise. -/
theorem cotangent_map_surjective_at_3
    {J0_26 : Type*} [AddCommGroup J0_26]
    {cotangent : CotangentMapAt3_26}
    (formalSoundness :
      FormalImmersionSoundness_26 J0_26 cotangent) :
    CotangentMapSurjectiveAt3_26 cotangent := by
  have hdet : Matrix.det cotangent.matrixAtInfinity ≠ 0 := by
    rw [formalSoundness.1]
    exact M3_det_nonzero
  exact formalSoundness.2.1 hdet

/-- The three visible v9.2--v9.4 premises combine to give rank zero and
Mazur's cusp-only conclusion. -/
theorem X0_26_Q_eq_four_cusps_of_certificates
    {J0_26 : Type*} [AddCommGroup J0_26]
    {cotangent : CotangentMapAt3_26}
    (decompositionSoundness : J0DecompositionSoundness_26 J0_26)
    (mwrankSoundness : MwrankCertificateSoundness_26)
    (formalSoundness :
      FormalImmersionSoundness_26 J0_26 cotangent) :
    X0_26_Q = (four_cusps : Set X0_26_RationalPoint) := by
  have rankZero :
      ∃ transport : JacobianTransport_26 J0_26,
        transport.rank_J0 = 0 :=
    J0_26_rank_zero decompositionSoundness mwrankSoundness
  exact formalSoundness.2.2 rankZero
    (cotangent_map_surjective_at_3 formalSoundness)

theorem X0_26_Q_finite_of_certificates
    {J0_26 : Type*} [AddCommGroup J0_26]
    {cotangent : CotangentMapAt3_26}
    (decompositionSoundness : J0DecompositionSoundness_26 J0_26)
    (mwrankSoundness : MwrankCertificateSoundness_26)
    (formalSoundness :
      FormalImmersionSoundness_26 J0_26 cotangent) :
    X0_26_Q.Finite := by
  rw [X0_26_Q_eq_four_cusps_of_certificates
    decompositionSoundness mwrankSoundness formalSoundness]
  exact four_cusps.finite_toSet

#print axioms M3_rows_cols_and_rank
#print axioms formalImmersionSoundness_requires_qExpansionCompatibility
#print axioms cotangent_map_surjective_at_3
#print axioms X0_26_Q_eq_four_cusps_of_certificates
#print axioms X0_26_Q_finite_of_certificates

end Beal17Mazur.Gates.FormalImmersion26