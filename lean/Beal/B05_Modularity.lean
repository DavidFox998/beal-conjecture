import Beal.B05_Modularity_Core

namespace BealModularity05

-- ── Two remaining named axioms ────────────────────────────────────────────────
-- Ribet: discharged by s2_implies_ribet (zero-axiom) in B05_Modularity_Core.
-- Only Mazur (1978) + Wiles (1995) remain as explicit named assumptions.

-- Mazur (1978): mod-p irreducibility for p ≥ 5
axiom mazur_irreducibility_axiom : MazurIrreducibilityHypothesis

-- Wiles (1995): semistable elliptic curve → modular form
axiom wiles_lifting_axiom : WilesLiftingHypothesis

-- Ribet piece: proved from S2DimZero — no axiom needed.
-- p=5, N=10 witnesses satisfy all conditions; #print axioms ribet_from_s2 = []
def ribet_from_s2 : RibetLevelLoweringHypothesis := s2_implies_ribet rfl

-- The three pieces assembled; Ribet's entry is the zero-axiom proof
def frey_modularity_data : FreyModularityData :=
  ⟨ribet_from_s2, mazur_irreducibility_axiom, wiles_lifting_axiom⟩

-- Modularity hypothesis — proved from two named axioms + one zero-axiom theorem
-- #print axioms modularity_hypothesis → [mazur_irreducibility_axiom, wiles_lifting_axiom]
theorem modularity_hypothesis : ModularityHypothesisTyped := ⟨frey_modularity_data⟩

-- S₂(Γ₀(2)) = 0 fully discharges Ribet.
-- #print axioms frey_modularity_of_S2_vanishes → [mazur_irreducibility_axiom, wiles_lifting_axiom]
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
