import Beal.Mazur.RationalIsogenyBound

namespace Beal17Mazur

/-- Data-valued access to a proved Frey-specific rational-isogeny exclusion.

Constructing this structure is the unfinished mathematical heart of Task 476.
The wrapper is intentionally transparent: it cannot be inhabited by a
zero-argument marker or by renaming residual irreducibility.
-/
structure FreyPIsogenyExclusionSupplier where
  exclusion : FreyPIsogenyExclusion

/-- A constructed supplier yields the `p ≥ 11` residual irreducibility theorem. -/
theorem frey_residual_irreducible
    (supplier : FreyPIsogenyExclusionSupplier)
    (context : FreyMazurContext)
    (hp : 11 ≤ context.p) :
    ¬ FreyResidualRepresentationReducible context :=
  freyResidualIrreducibleAtLeastEleven_of_isogenyExclusion
    supplier.exclusion context hp

/-- Supplier-level form of the complete `p ≥ 11` B17 conclusion. -/
theorem frey_residual_irreducible_atLeastEleven
    (supplier : FreyPIsogenyExclusionSupplier) :
    FreyResidualIrreducibleAtLeastEleven :=
  freyResidualIrreducibleAtLeastEleven_of_isogenyExclusion
    supplier.exclusion

#print axioms FreyPIsogenyExclusionSupplier
#print axioms frey_residual_irreducible
#print axioms frey_residual_irreducible_atLeastEleven

end Beal17Mazur