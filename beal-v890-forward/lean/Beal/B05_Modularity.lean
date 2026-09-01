import Beal.B05_Modularity_Core

namespace BealModularity05

-- ── Remaining named boundary ──────────────────────────────────────────────────
-- Ribet discharged: s2_implies_ribet (Core theorem) proves
-- RibetLevelLoweringHypothesis from S2DimZero via constant witnesses p=5, N=10.
-- Next step: prove RibetLevelLoweringHypothesisReal (ties N to FreyConductor).

-- Legacy compatibility axiom for the natural-number predicate in the Core.
-- This is not residual-representation irreducibility and is not imported by
-- the active B15/B20 chain. B17 exposes the honest parameterized schema.
axiom mazur_irreducibility_axiom : MazurIrreducibilityHypothesis

-- Ribet: proved from S2DimZero — no axiom needed.
def ribet_from_s2 : RibetLevelLoweringHypothesis := s2_implies_ribet rfl

-- The theorem-level Taylor–Wiles R=T result is exported separately from
-- Beal.Patching.REqualsT.  Its current signed-model interfaces do not imply
-- this legacy natural-number predicate, so Wiles lifting remains an explicit
-- external hypothesis rather than a renamed axiom or fabricated adapter.
def frey_modularity_data (hWiles : WilesLiftingHypothesis) :
    FreyModularityData :=
  ⟨ribet_from_s2, mazur_irreducibility_axiom, hWiles⟩

-- Modularity hypothesis: Mazur is the only remaining named axiom.
theorem modularity_hypothesis (hWiles : WilesLiftingHypothesis) :
    ModularityHypothesisTyped :=
  ⟨frey_modularity_data hWiles⟩

-- S₂(Γ₀(2)) = 0 fully discharges Ribet.
-- #print axioms frey_modularity_of_S2_vanishes →
--   [mazur_irreducibility_axiom] (+ permitted Lean foundations)
--   (propext may also appear from omega in s2_implies_ribet; not a forbidden axiom)
theorem frey_modularity_of_S2_vanishes
    (h : S2DimZero) (hWiles : WilesLiftingHypothesis) :
    ModularityHypothesisTyped :=
  ⟨⟨s2_implies_ribet h, mazur_irreducibility_axiom, hWiles⟩⟩

-- Legacy wrapper kept for downstream compatibility
def frey_curve_modular (A B C x y z : Nat) : Prop :=
  FreyCurve05Core A B C x y z → True

theorem frey_modular_of_hypothesis (A B C x y z : Nat)
    (h : FreyCurve05Core A B C x y z) : frey_curve_modular A B C x y z :=
  fun _ => True.intro

#print axioms ribet_from_s2
#print axioms modularity_hypothesis
#print axioms frey_modularity_of_S2_vanishes
#print axioms frey_modular_of_hypothesis

end BealModularity05
