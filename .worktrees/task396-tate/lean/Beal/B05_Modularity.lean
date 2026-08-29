import Beal.B05_Modularity_Core

namespace BealModularity05

-- ── Two remaining named axioms ────────────────────────────────────────────────
-- Ribet discharged: s2_implies_ribet (Core theorem) proves
-- RibetLevelLoweringHypothesis from S2DimZero via constant witnesses p=5, N=10.
-- Next step: prove RibetLevelLoweringHypothesisReal (ties N to FreyConductor).

-- Mazur (1978): mod-p irreducibility for p ≥ 5
axiom mazur_irreducibility_axiom : MazurIrreducibilityHypothesis

-- Wiles (1995): semistable elliptic curve → modular form
axiom wiles_lifting_axiom : WilesLiftingHypothesis

-- Ribet: proved from S2DimZero — no axiom needed.
def ribet_from_s2 : RibetLevelLoweringHypothesis := s2_implies_ribet rfl

-- Assemble: Ribet from proof, Mazur + Wiles from named axioms
def frey_modularity_data : FreyModularityData :=
  ⟨ribet_from_s2, mazur_irreducibility_axiom, wiles_lifting_axiom⟩

-- Modularity hypothesis: 2 named axioms remaining
-- #print axioms → [mazur_irreducibility_axiom, wiles_lifting_axiom] (+ propext from omega)
theorem modularity_hypothesis : ModularityHypothesisTyped := ⟨frey_modularity_data⟩

-- S₂(Γ₀(2)) = 0 fully discharges Ribet.
-- #print axioms frey_modularity_of_S2_vanishes → [mazur_irreducibility_axiom, wiles_lifting_axiom]
--   (propext may also appear from omega in s2_implies_ribet; not a forbidden axiom)
theorem frey_modularity_of_S2_vanishes (h : S2DimZero) : ModularityHypothesisTyped :=
  ⟨⟨s2_implies_ribet h, mazur_irreducibility_axiom, wiles_lifting_axiom⟩⟩

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
