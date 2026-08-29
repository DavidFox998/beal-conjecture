/-
  Patching/RankOne — localized rank one from explicit patching data

  The theorem in this file removes the proposition-valued `hRank` edge input.
  It does not claim that Wiles, Mazur, or the Eutheos inequality alone constructs
  a patched tower.  The remaining mathematical boundary is the Type-valued
  `TaylorWilesPatchingData`, whose fields expose finite levels, transitions,
  diamond operators, depth equalities, and generator/coordinate laws.
-/
import Beal.Patching.Depth
import Beal.Galois.«07h_EutheosGeometry»
import Beal.Galois.«07i_MultOneOnV»

namespace Beal.Patching

open Beal.Galois

/-- Explicit Taylor–Wiles patching data attached to one B15 descent edge.

    Neither `LocalizedRankOne` nor a linear equivalence is stored as a field.
    The final coordinate is derived through the patched level-zero projection.
    The separate specialization field names the still-missing R=T/localization
    reconstruction boundary. -/
structure TaylorWilesPatchingData
    (M p ℓ : ℕ)
    (𝔪 : MaximalIdeal M ℓ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    [D : LocalizedHeckeData M ℓ 𝔪]
    (geometry : EutheosGeometryInterface M p ℓ V) where
  primes : TaylorWilesPrimeSystem p ℓ geometry.jitter
  patched :
    PatchedModuleData
      (LocalizedHeckeAlgebra M ℓ 𝔪)
      (NewLocalizedAtMaximalIdeal M ℓ 𝔪)
  depth : PatchedDepthData patched
  specialization : PatchingSpecializationData patched

/-- Construct localized rank one from the explicit patched tower.

    The support antecedent remains in `LocalizedRankOne`, but no choice is
    needed: the supplied generator and coordinate laws construct the
    equivalence directly. -/
theorem LocalizedRankOne_from_Patching
    {M p ℓ : ℕ}
    {𝔪 : MaximalIdeal M ℓ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    [D : LocalizedHeckeData M ℓ 𝔪]
    (geometry : EutheosGeometryInterface M p ℓ V)
    (P : TaylorWilesPatchingData M p ℓ 𝔪 V geometry) :
    LocalizedRankOne M ℓ 𝔪 V := by
  intro _hLocalized
  exact M_infty_free P.patched P.specialization

#print axioms TaylorWilesPatchingData
#print axioms LocalizedRankOne_from_Patching
-- Expected foundational dependencies: [propext, Quot.sound] only.
-- The construction of `TaylorWilesPatchingData` remains an explicit boundary.

end Beal.Patching