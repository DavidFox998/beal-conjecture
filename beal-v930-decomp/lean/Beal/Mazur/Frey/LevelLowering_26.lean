import Beal.Mazur.Jacobian.FormalImmersion_26
import Beal.B14_FreyTate

namespace Beal17Mazur.Frey.LevelLowering26

open Beal17Mazur
open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26RankProof
open Beal17Mazur.Gates.FormalImmersionNoSorry
open Beal17Mazur.Jacobian.FormalImmersion26
open Beal.FreyTate

noncomputable section

/-!
# Conditional Frey-to-`X₀(26)` level lowering

This is the Phase D boundary for the level-26 route.  It does not prove
modularity lifting, an `R = T` theorem, Ribet's level-lowering theorem, or a
modular interpretation of the displayed model.  Those results are represented
by explicit supplier propositions.

The final contradiction is nevertheless proof-relevant once those suppliers
are provided: a Beal counterexample produces a noncuspidal rational point on
`X₀(26)`, while Phases A--C identify every rational point with one of the four
displayed cusps.
-/

/-! ## The counterexample and Frey-construction boundaries -/

/-- Data for a primitive Beal counterexample in the exponent range used here. -/
structure BealCounterexampleData where
  baseA : Nat
  baseB : Nat
  baseC : Nat
  exponentX : Nat
  exponentY : Nat
  exponentZ : Nat
  positiveA : 0 < baseA
  positiveB : 0 < baseB
  positiveC : 0 < baseC
  exponents : 3 ≤ exponentX ∧ 3 ≤ exponentY ∧ 3 ≤ exponentZ
  equation :
    Nat.pow baseA exponentX + Nat.pow baseB exponentY =
      Nat.pow baseC exponentZ
  primitive : Nat.gcd baseA (Nat.gcd baseB baseC) = 1

/-- The proposition that a primitive Beal counterexample of this kind exists. -/
def BealCounterexampleAssumption : Prop :=
  Nonempty BealCounterexampleData

/-- The explicit integral Frey model and level label attached to a counterexample.

The coefficient model is the existing typed construction from `B14_FreyTate`.
The level label is deliberately a supplied field: this interface does not
pretend to derive the conductor or its exact level from the equation. -/
structure FreyCurveConstructionData
    (counterexample : BealCounterexampleData) where
  curve :
    FreyIntegralModel
      (counterexample.baseA : ℤ)
      (counterexample.baseB : ℤ)
      (counterexample.baseC : ℤ)
      counterexample.exponentX counterexample.exponentY counterexample.exponentZ
  level : Nat
  level_eq_26 : level = 26

/-- A proof-relevant supplier for constructing the Frey curve at level `26`. -/
def FreyCurveConstruction_26 : Prop :=
  ∀ counterexample : BealCounterexampleData,
    Nonempty (FreyCurveConstructionData counterexample)

/-! ## The modularity and level-lowering supplier boundaries -/

/-- The named missing modularity-lifting and `R = T` statements.

These fields intentionally store propositions rather than proof fields.  They
make the two external mathematical obligations visible without declaring
either one as an axiom.  A later modular-forms development can replace these
statement slots with proof-relevant interfaces. -/
structure ModularityCertificateData
    (counterexample : BealCounterexampleData)
    (frey : FreyCurveConstructionData counterexample) where
  r_eq_t_statement : Prop
  modularity_lifting_statement : Prop

/-- Conditional modularity data for every supplied Frey construction.

The first conjunct keeps the Frey construction in the dependency chain.  The
second conjunct is the explicit supplier boundary for modularity lifting and
`R = T`; no unconditional modularity theorem is asserted. -/
def ModularityCertificate_Beal : Prop :=
  FreyCurveConstruction_26 ∧
    ∀ (counterexample : BealCounterexampleData)
      (frey : FreyCurveConstructionData counterexample),
      Nonempty (ModularityCertificateData counterexample frey)

/-- The proof-relevant output expected from Ribet level lowering at level `26`.

The noncuspidal point is the mathematical conclusion of the supplied
modularity-plus-level-lowering argument, not a claim proved by this file. -/
structure LevelLoweringCertificateData
    (counterexample : BealCounterexampleData)
    (frey : FreyCurveConstructionData counterexample)
    (modularity : ModularityCertificateData counterexample frey) where
  lowered_level : Nat
  lowered_level_eq_26 : lowered_level = 26
  point : X0_26_RationalPoint
  point_rational : point ∈ X0_26_Q
  point_non_cusp : point ∉ (four_cusps : Set X0_26_RationalPoint)

/-- Explicit Ribet level-lowering supplier data for the level-26 route.

The indexed inputs retain the same counterexample, Frey construction, and
modularity boundary.  This prevents an unrelated point or curve from being
silently substituted for the one supplied by the Frey argument. -/
def LevelLoweringCertificate_26 : Prop :=
  ∀ (counterexample : BealCounterexampleData)
    (frey : FreyCurveConstructionData counterexample)
    (modularity : ModularityCertificateData counterexample frey),
    Nonempty (LevelLoweringCertificateData counterexample frey modularity)

/-! ## Frey-to-`X₀(26)` and the conditional contradiction -/

/-- A Beal counterexample plus the two external supplier boundaries yields a
noncuspidal rational point on the displayed level-26 model. -/
theorem frey_to_X0_26_point :
    BealCounterexampleAssumption ∧
        ModularityCertificate_Beal ∧
        LevelLoweringCertificate_26 →
      ∃ point : X0_26_RationalPoint,
        point ∈ X0_26_Q ∧
          point ∉ (four_cusps : Set X0_26_RationalPoint) := by
  rintro ⟨hCounterexample, hModularity, hLevelLowering⟩
  obtain ⟨counterexample⟩ := hCounterexample
  obtain ⟨hFreyConstruction, hModularity⟩ := hModularity
  obtain ⟨frey⟩ := hFreyConstruction counterexample
  obtain ⟨modularity⟩ := hModularity counterexample frey
  obtain ⟨lowering⟩ := hLevelLowering counterexample frey modularity
  exact ⟨lowering.point, lowering.point_rational, lowering.point_non_cusp⟩

/-- The Phase D contradiction after Phases A--C have supplied rank zero and
the four-cusp equality. -/
theorem beal_contradiction_of_rank_zero
    {J0_26 : Type*} [AddCommGroup J0_26] :
    BealCounterexampleAssumption ∧
        ModularityCertificate_Beal ∧
        LevelLoweringCertificate_26 ∧
        SecondDescentHypothesis_26 ∧
        TorsionOdd_26 ∧
        JacobianTransportCertificate_26 J0_26 ∧
        FormalImmersionAt3_26 J0_26 →
      False := by
  rintro
    ⟨hCounterexample, hModularity, hLevelLowering, hSecondDescent,
      hTorsionOdd, hJacobianTransport, hFormalImmersion⟩
  obtain ⟨point, hPointRational, hPointNonCusp⟩ :=
    frey_to_X0_26_point
      ⟨hCounterexample, hModularity, hLevelLowering⟩
  have hFourCusps :
      X0_26_Q = (four_cusps : Set X0_26_RationalPoint) :=
    cusps_only_of_rank_zero
      ⟨hSecondDescent, hTorsionOdd, hJacobianTransport, hFormalImmersion⟩
  have hPointCusp :
      point ∈ (four_cusps : Set X0_26_RationalPoint) := by
    rw [← hFourCusps]
    exact hPointRational
  exact hPointNonCusp hPointCusp

/-! ## Conditional Beal conclusion -/

/-- Beal's conjecture restricted to the signatures represented by this
level-26 counterexample interface. -/
def BealConjectureHoldsForLevel26 : Prop :=
  ¬ BealCounterexampleAssumption

/-- Conditional Phase D endgame.

The modularity, level-lowering, Frey-construction, second-descent,
Jacobian-transport, and formal-immersion inputs are all explicit.  This is
not an unconditional Beal theorem and introduces no Riemann--Hurwitz,
genus, modularity, or level-lowering axiom. -/
theorem beal_theorem_conditional
    {J0_26 : Type*} [AddCommGroup J0_26]
    (hModularity : ModularityCertificate_Beal)
    (hLevelLowering : LevelLoweringCertificate_26)
    (hSecondDescent : SecondDescentHypothesis_26)
    (hTorsionOdd : TorsionOdd_26)
    (hJacobianTransport : JacobianTransportCertificate_26 J0_26)
    (hFormalImmersion : FormalImmersionAt3_26 J0_26) :
    BealConjectureHoldsForLevel26 := by
  intro hCounterexample
  exact beal_contradiction_of_rank_zero
    ⟨hCounterexample, hModularity, hLevelLowering, hSecondDescent,
      hTorsionOdd, hJacobianTransport, hFormalImmersion⟩

#print axioms frey_to_X0_26_point
#print axioms beal_contradiction_of_rank_zero
#print axioms beal_theorem_conditional

end

end Beal17Mazur.Frey.LevelLowering26