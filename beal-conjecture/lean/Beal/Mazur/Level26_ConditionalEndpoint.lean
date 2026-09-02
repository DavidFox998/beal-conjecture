import Beal.ConditionalBealTheorem
import Beal.B17_MazurPrimeCoverage

namespace Beal17Mazur

open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26RankProof
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Jacobian.FormalImmersion26
open Beal17Mazur.Frey.LevelLowering26

noncomputable section

/-!
# The consolidated conditional level-26 endpoint

This module records the two honest consumers of the level-26 development.

* The B17 consumer derives the `p = 13` Frey-isogeny exclusion, then combines
  it with the seven separately supplied non-13 exclusions.
* The Phase D consumer derives the public `BealConjecture` predicate from the
  same descent, Jacobian, formal-immersion, Frey, and level-lowering
  interfaces, while preserving the existing modularity-label package.

The checked finite data do not inhabit this structure.  In particular, the
genuine Selmer/Kummer/finiteness package, exact torsion, Jacobian transport,
scheme-level formal-immersion interpretation, Frey realization, and level
lowering remain explicit fields.  `ModularityCertificate_Beal` is retained
for compatibility, but its two statement fields are labels rather than proofs;
this module does not describe them as a proved modularity theorem.  No
unconditional conclusion is asserted.
-/

/-- All explicit inputs needed by the conditional level-26 endpoint.

`secondDescent` is the proof-relevant home of the Selmer identification and
Selmer-to-free-rank obligations.  `formalImmersion` contains the checked
finite determinant together with the still-supplied Abel--Jacobi, reduction,
and geometric formal-immersion data.

The `modularity` field has exactly the weaker meaning of the existing Phase D
interface: it carries a Frey construction and names two proposition-valued
statements, but does not contain proofs of those statements.  The genuinely
operative Phase D boundary is `levelLowering`, whose data supplies the indexed
noncuspidal point. -/
structure Level26ConditionalEndpoint
    (J0_26 : Type*) [AddCommGroup J0_26] where
  secondDescent : SecondDescentHypothesis_26
  torsionOdd : TorsionOdd_26
  jacobianTransport : JacobianTransportCertificate_26 J0_26
  formalImmersion : FormalImmersionAt3_26 J0_26
  frey13Realization : Frey13ToX0_26Realization
  freyCurveConstruction : FreyCurveConstruction_26
  modularity : ModularityCertificate_Beal
  levelLowering : LevelLoweringCertificate_26

/-- The Phase A--C fields of the endpoint give exactly the four displayed
rational cusps.  The result remains conditional on the supplied fields. -/
theorem four_cusps_of_level26_endpoint
    {J0_26 : Type*} [AddCommGroup J0_26]
    (endpoint : Level26ConditionalEndpoint J0_26) :
    Gates.FormalImmersionNoSorry.X0_26_Q =
      (Gates.FormalImmersionNoSorry.four_cusps :
        Set X0_26_RationalPoint) :=
  cusps_only_of_rank_zero
    ⟨endpoint.secondDescent, endpoint.torsionOdd,
      endpoint.jacobianTransport, endpoint.formalImmersion⟩

/-- The level-26 endpoint supplies the distinguished `p = 13` branch of the
B17 Mazur boundary.  The modular realization remains an explicit field. -/
theorem p13_exclusion_of_level26_endpoint
    {J0_26 : Type*} [AddCommGroup J0_26]
    (endpoint : Level26ConditionalEndpoint J0_26) :
    FreyPIsogenyExclusion 13 := by
  apply Frey_13_exclusion_of_X0_26 endpoint.frey13Realization
  intro point hpoint
  have hpointLocal :
      point ∈ Gates.FormalImmersionNoSorry.X0_26_Q := by
    simpa [X0_26_Q, Gates.FormalImmersionNoSorry.X0_26_Q] using hpoint
  have hCusp :
      point ∈ (Gates.FormalImmersionNoSorry.four_cusps :
        Set X0_26_RationalPoint) := by
    rw [← four_cusps_of_level26_endpoint endpoint]
    exact hpointLocal
  simpa [X0_26_rational_points, X0_26_knownRationalPoints,
    Gates.FormalImmersionNoSorry.four_cusps] using hCusp

/-- Add the seven separately named non-13 exclusions to obtain the existing
complete B17 Mazur-classification supplier. -/
theorem mazur_classification_of_level26_endpoint
    {J0_26 : Type*} [AddCommGroup J0_26]
    (endpoint : Level26ConditionalEndpoint J0_26)
    (remaining : KenkuMazurExceptionalPrimeInputs) :
    MazurRationalIsogenyClassification :=
  mazur_classification_of_complete_prime_inputs
    (p13_exclusion_of_level26_endpoint endpoint) remaining

/-- Convert the consolidated endpoint to the certificate package consumed by
the existing public conditional Beal aggregator. -/
def Level26ConditionalEndpoint.toBealCertificates
    {J0_26 : Type*} [AddCommGroup J0_26]
    (endpoint : Level26ConditionalEndpoint J0_26) :
    BealCertificates_26 J0_26 :=
  { secondDescent := endpoint.secondDescent
    torsionOdd := endpoint.torsionOdd
    jacobianTransport := endpoint.jacobianTransport
    formalImmersion := endpoint.formalImmersion
    modularity := endpoint.modularity
    levelLowering := endpoint.levelLowering
    freyCurveConstruction := endpoint.freyCurveConstruction }

/-- The same explicit endpoint fields feed the existing public conditional
Beal theorem.

This preserves that theorem's exact existing semantics: the indexed
level-lowering supplier provides the noncuspidal point, while the modularity
record names statements but does not prove them.  This theorem does not
construct an endpoint and therefore does not claim an unconditional proof of
Beal's Conjecture. -/
theorem conditional_beal_of_level26_endpoint
    {J0_26 : Type*} [AddCommGroup J0_26]
    (endpoint : Level26ConditionalEndpoint J0_26) :
    BealConjecture :=
  conditional_beal_of_certificates endpoint.toBealCertificates

#print axioms four_cusps_of_level26_endpoint
#print axioms p13_exclusion_of_level26_endpoint
#print axioms mazur_classification_of_level26_endpoint
#print axioms conditional_beal_of_level26_endpoint

end

end Beal17Mazur