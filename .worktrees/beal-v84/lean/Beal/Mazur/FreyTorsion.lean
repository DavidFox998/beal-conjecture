import Beal.B17_MazurIrreducible

namespace Beal17Mazur

/-- The exact mixed level structure relevant to the Beal specialization of
Mazur's rational-isogeny problem.

The first field is the proved four-point rational `E[2]` classification.  The
second is a Galois-stable cyclic subgroup of order `p` in geometric
`p`-torsion, i.e. the kernel datum of a rational `p`-isogeny.

This structure deliberately does not contain a rational generator of the
`p`-kernel.  A Galois-stable cyclic subgroup need not have a nonzero rational
point, so no rational point of order `2p` is manufactured here.
-/
structure FreyMixedLevelStructure (context : FreyMazurContext) where
  fullE2 : HasFullRationalTwoTorsion context
  pIsogenyKernel : RationalPIsogenyKernel context

/-- A rational `p`-isogeny kernel on a Frey context gives the mixed level
structure because the full rational `E[2]` field is already a theorem. -/
def mixedLevelStructureOfKernel
    (context : FreyMazurContext)
    (kernel : RationalPIsogenyKernel context) :
    FreyMixedLevelStructure context where
  fullE2 := context.hasFullRationalTwoTorsion
  pIsogenyKernel := kernel

/-- Reducibility supplies the mixed level structure, but still not a rational
generator of the order-`p` kernel. -/
theorem mixedLevelStructure_nonempty_of_reducible
    (context : FreyMazurContext)
    (hReducible : FreyResidualRepresentationReducible context) :
    Nonempty (FreyMixedLevelStructure context) := by
  rcases hReducible with ⟨kernel⟩
  exact ⟨mixedLevelStructureOfKernel context kernel⟩

#print axioms FreyMixedLevelStructure
#print axioms mixedLevelStructureOfKernel
#print axioms mixedLevelStructure_nonempty_of_reducible

end Beal17Mazur