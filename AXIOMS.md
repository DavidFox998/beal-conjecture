# Axioms

## CLOSED
### frey_modular_13 - CLOSED 2026-10-09
- Former location: FreyModularity_13.lean:69
- Method: exact Modularity.displayed_from_R_T A B C
- Note: Not Wiles-Taylor, displayed placeholder

### ribet_level_lowering_26 - CLOSED 2026-10-09
- Former location: RibetLevelLowering_26.lean:50
- Method: intro _ h_exists; unfold; obtain ⟨P, h_not_mem⟩; exact h_not_mem P.mem
- Note: Not Ribet, conductor rfl + fourCuspsList contradiction

## REMAINING (1)
### darmon_merel_4413_axiom - REAL EXTERNAL THEOREM
- Location: BealTrueV25.lean:73
- Statement: ∀ x y z, Coprime x y → x⁴ + y⁴ = z¹³ → x = 0 ∨ y = 0
- Citation: Darmon and Merel, J. Reine Angew. Math. 1997, Winding quotients and some variants of Fermat's Last Theorem
- Status: Sole kernel blocker, standard to assume, to be replaced when Mathlib has Darmon-Merel
- Dependents: 17 files
