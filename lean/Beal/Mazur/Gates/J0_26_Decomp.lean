import Beal.Mazur.Gates.J0_26_Decomp_Cert
import Beal.Mazur.Gates.Descent_26_RankProof
import Beal.Mazur.Jacobian.J0_26_Decomp

namespace Beal17Mazur.Gates.J0_26_Decomp

/-!
# Reproducible `J₀(26)` decomposition boundary

The finite v9.3.0 data are kernel-checked in `J0_26_Decomp_Cert`.  Mathlib
4.12 still has no genus-two Jacobian or abelian-variety isogeny API, so the
mathematical meanings of the Sage decomposition and mwrank report remain two
named proposition-valued premises below.  They are ordinary theorem
arguments—not global axioms and not conclusions extracted from JSON text.
-/

open Beal17Mazur.Gates.Descent26RankProof
open Beal17Mazur.Gates.J0_26_Decomp_Cert
open Beal17Mazur.Jacobian.J0_26_Decomp

/-- Explicit soundness premise for interpreting the Sage decomposition as the
existing proof-relevant rational-point isogeny/rank transport certificate. -/
def J0DecompositionSoundness_26
    (J0_26 : Type*) [AddCommGroup J0_26] : Prop :=
  Nonempty (JacobianTransport_26 J0_26)

/-- Explicit soundness premise for interpreting the archived v9.2.0
second-descent/mwrank certificate.  It includes the separately reported odd
torsion data required by the existing rank bridge. -/
def MwrankCertificateSoundness_26 : Prop :=
  SecondDescentHypothesis_26 ∧ TorsionOdd_26

/-- The named v9.2.0 bridge, exposed without adding a Lean axiom.

The premise is precisely the external mwrank soundness boundary; this theorem
does not infer Selmer completeness or rank soundness from finite JSON data. -/
theorem SecondDescent_Singleton_26_Reproducible
    (soundness : MwrankCertificateSoundness_26) :
    SecondDescentHypothesis_26 ∧ TorsionOdd_26 :=
  soundness

/-- The certificate's finite dimension equation, checked by the kernel. -/
theorem J0_26_dimension_decomposes :
    J0_26_dimension = 2 ∧ 2 = 1 + 1 :=
  J0_26_dimension_two_eq_one_add_one

/-- The reported decomposition yields the existing isogeny shadow only after
the explicit Sage decomposition soundness premise is supplied. -/
theorem J0_26_isogenous_to_E26a1_x_E26b1
    {J0_26 : Type*} [AddCommGroup J0_26]
    (soundness : J0DecompositionSoundness_26 J0_26) :
    Beal17Mazur.Jacobian.J0_26_Decomp.J0_26_isogenous_to_E26a1_x_E26b1
      J0_26 := by
  obtain ⟨transport⟩ := soundness
  exact transport.decomposition

/-- The v9.3.0 rank-zero conclusion in the repository's semantic rank model.

Both external boundaries are visible arguments.  The result packages the
actual `JacobianTransport_26` witness together with its rank-zero equation. -/
theorem J0_26_rank_zero
    {J0_26 : Type*} [AddCommGroup J0_26]
    (decompositionSoundness : J0DecompositionSoundness_26 J0_26)
    (mwrankSoundness : MwrankCertificateSoundness_26) :
    ∃ transport : JacobianTransport_26 J0_26, transport.rank_J0 = 0 := by
  obtain ⟨transport⟩ := decompositionSoundness
  refine ⟨transport, ?_⟩
  exact rank_J0_zero_of_PhaseA transport
    (SecondDescent_Singleton_26_Reproducible mwrankSoundness)

#print axioms J0_26_dimension_decomposes
#print axioms J0_26_isogenous_to_E26a1_x_E26b1
#print axioms SecondDescent_Singleton_26_Reproducible
#print axioms J0_26_rank_zero

end Beal17Mazur.Gates.J0_26_Decomp