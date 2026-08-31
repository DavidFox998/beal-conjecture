import Beal.Mazur.FreyTorsion

namespace Beal17Mazur

/-- The Frey-specific arithmetic theorem still to be constructed.

It asks only for the mixed level structure arising in the Beal argument and
only in residual prime degree at least eleven.  Proving this proposition
requires the rational-point classification for the corresponding mixed-level
modular curve, or an equivalent semistable isogeny-character argument.

This is a theorem type, not an axiom and not `True`.
-/
def FreyPIsogenyExclusion : Prop :=
  ∀ (context : FreyMazurContext),
    11 ≤ context.p →
    FreyMixedLevelStructure context →
    False

/-- The exact residual irreducibility statement needed after the
Frey-specific rational-isogeny exclusion has been proved. -/
def FreyResidualIrreducibleAtLeastEleven : Prop :=
  ∀ (context : FreyMazurContext),
    11 ≤ context.p →
    ¬ FreyResidualRepresentationReducible context

/-- A proof of the Frey-specific no-isogeny theorem gives residual
irreducibility.  The proof uses no rational-generator or `2p`-torsion
shortcut. -/
theorem freyResidualIrreducibleAtLeastEleven_of_isogenyExclusion
    (hExclusion : FreyPIsogenyExclusion) :
    FreyResidualIrreducibleAtLeastEleven := by
  intro context hp hReducible
  rcases hReducible with ⟨kernel⟩
  exact hExclusion context hp (mixedLevelStructureOfKernel context kernel)

#print axioms FreyPIsogenyExclusion
#print axioms FreyResidualIrreducibleAtLeastEleven
#print axioms freyResidualIrreducibleAtLeastEleven_of_isogenyExclusion

end Beal17Mazur