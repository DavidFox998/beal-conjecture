import Beal.Mazur.Gates.SecondDescent_Singleton_26_Reproducible
import Beal.Mazur.Gates.J0_26_Decomp
import Beal.Mazur.Gates.FormalImmersion_26
import Beal.Mazur.Frey.LevelLowering_26

namespace Beal.Final

open Beal17Mazur
open Beal17Mazur.Frey.LevelLowering26
open Beal17Mazur.Gates
open Beal17Mazur.Gates.FormalImmersion26
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Gates.J0_26_Decomp

noncomputable section

/-!
# v10.0.0 conditional Beal assembly

This file joins the reproducible v9.2--v9.4 level-26 chain to the existing
Frey/modularity/level-lowering boundary. Every unconstructed mathematical
input is an ordinary theorem argument. No premise is declared as a global
Lean axiom.

The finite certificates prove what they can:

* v9.2 records the second-descent and rank-zero boundary;
* v9.3 checks `dim J₀(26) = 2 = 1 + 1` and records the isogeny boundary;
* the finite certificate checks that the displayed `M₃` has nonzero
  determinant, hence rank two, over `ZMod 3`.

The interpretation of `M₃` as the actual cotangent map, Mazur's cusp
criterion, Frey construction, modularity, and Ribet level lowering remain
visible proof-relevant premises.
-/

/-- Existing proof-relevant supplier for constructing the level-26 Frey model. -/
abbrev FreyCurveExists : Prop :=
  FreyCurveConstruction_26

/-- The modularity and Ribet data needed after a Frey construction is supplied.

The modularity field is deliberately separated from `FreyCurveExists`, so the
final theorem's two Phase-D inputs have distinct meanings. -/
structure LevelLoweringData_26 where
  modularity :
    ∀ (counterexample : BealCounterexampleData)
      (frey : FreyCurveConstructionData counterexample),
      Nonempty (ModularityCertificateData counterexample frey)
  levelLowering : LevelLoweringCertificate_26

/-- Explicit Phase-D modularity and level-lowering premise. -/
def LevelLowering_26 : Prop :=
  Nonempty LevelLoweringData_26

/-- Conditional Beal theorem assembled from the five visible boundary inputs.

The first three arguments are the v9.2--v9.4 soundness premises. The final two
are the Frey construction and modularity/level-lowering suppliers. The proof
constructs a noncuspidal rational point from a hypothetical primitive Beal
solution and contradicts the four-cusp equality supplied by the rank-zero
formal-immersion chain. -/
theorem ConditionalBealTheorem
    {J0_26 : Type*} [AddCommGroup J0_26]
    {cotangent : CotangentMapAt3_26}
    (h_decomp : J0DecompositionSoundness_26 J0_26)
    (h_mwrank : MwrankCertificateSoundness_26)
    (h_immersion : FormalImmersionSoundness_26 J0_26 cotangent)
    (h_frey : FreyCurveExists)
    (h_frey_level_lowering : LevelLowering_26) :
    BealConjecture := by
  intro A B C x y z hSolution
  rcases hSolution with
    ⟨hA, hB, hC, hx, hy, hz, hEquation, hPrimitive⟩
  let counterexample : BealCounterexampleData :=
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
  obtain ⟨phaseD⟩ := h_frey_level_lowering
  have hModularity : ModularityCertificate_Beal :=
    ⟨h_frey, phaseD.modularity⟩
  obtain ⟨point, hPointRational, hPointNonCusp⟩ :=
    frey_to_X0_26_point
      ⟨hCounterexample, hModularity, phaseD.levelLowering⟩
  have hFourCusps :
      X0_26_Q = (four_cusps : Set X0_26_RationalPoint) :=
    X0_26_Q_eq_four_cusps_of_certificates
      h_decomp h_mwrank h_immersion
  apply hPointNonCusp
  rw [← hFourCusps]
  exact hPointRational

#print axioms ConditionalBealTheorem

end

end Beal.Final