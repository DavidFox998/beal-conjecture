/-
  Patching/RankOne — localized rank one from explicit patching data

  The theorem in this file removes the proposition-valued `hRank` edge input.
  It does not claim that Wiles, Mazur, or the Eutheos inequality alone constructs
  a patched tower.  The remaining mathematical boundary is the Type-valued
  `TaylorWilesPatchingData`, whose fields expose finite levels, transitions,
  diamond operators, depth equalities, and generator/coordinate laws.
-/
import Beal.Patching.Depth
import Beal.Patching.DeformationHecke
import Beal.Galois.«07h_EutheosGeometry»
import Beal.Galois.«07i_MultOneOnV»

namespace Beal.Patching

open Beal.Galois
open Beal.FreyTate

/-- Explicit Taylor–Wiles patching data attached to one B15 descent edge.

    Neither `LocalizedRankOne` nor a linear equivalence is stored as a field.
    The final coordinate and reconstruction law are derived through the
    patched level-zero projection. The deformation-to-Hecke comparison and
    Taylor–Wiles diamond actions are explicit data attached to the same Frey
    residual representation; an R=T isomorphism is not claimed here. -/
structure TaylorWilesPatchingData
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M p ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ)
    (𝔪 : MaximalIdeal M ℓ)
    (hAttach : FreyHeckeAttachment R 𝔪.1)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    [D : LocalizedHeckeData M ℓ 𝔪]
    (geometry : EutheosGeometryInterface M p ℓ V) where
  primes : TaylorWilesPrimeSystem p ℓ geometry.jitter
  patched :
    PatchedModuleData
      (LocalizedHeckeAlgebra M ℓ 𝔪)
      (NewLocalizedAtMaximalIdeal M ℓ 𝔪)
  depth : PatchedDepthData patched
  deformation : FreyDeformationRingData R
  heckeComparison :
    @FreyDeformationHeckeComparison
      A B C x y z model M ℓ R 𝔪 D hAttach deformation
  finiteLevelAction :
    TaylorWilesFiniteLevelAction primes patched
  diamondLift :
    ∀ (n q : ℕ), q ∈ (primes.level n).Q →
      deformation.Carrier
  diamond_specializes :
    ∀ (n q : ℕ) (hq : q ∈ (primes.level n).Q),
      heckeComparison.toHecke (diamondLift n q hq) =
        finiteLevelAction.diamondScalar n q hq
  specialization : PatchingSpecializationData patched

/-- Taylor–Wiles diamond operators on the finite patched levels are the scalar
    actions of the corresponding deformation elements after passage to the
    localized Hecke algebra. -/
theorem TaylorWilesPatchingData.deformation_diamond_action
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {M p ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    {hAttach : FreyHeckeAttachment R 𝔪.1}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    [D : LocalizedHeckeData M ℓ 𝔪]
    {geometry : EutheosGeometryInterface M p ℓ V}
    (P : TaylorWilesPatchingData M p ℓ R 𝔪 hAttach V geometry)
    (n q : ℕ) (hq : q ∈ (P.primes.level n).Q)
    (v : (P.patched.finiteLevel n).Carrier) :
    P.patched.diamondOperator n q v =
      P.heckeComparison.toHecke (P.diamondLift n q hq) • v := by
  rw [P.finiteLevelAction.diamond_action, P.diamond_specializes]

/-- Construct localized rank one from the explicit patched tower.

    The support antecedent remains in `LocalizedRankOne`, but no choice is
    needed: the supplied generator and coordinate laws construct the
    equivalence directly. -/
theorem LocalizedRankOne_from_Patching
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {M p ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    {hAttach : FreyHeckeAttachment R 𝔪.1}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    [D : LocalizedHeckeData M ℓ 𝔪]
    (geometry : EutheosGeometryInterface M p ℓ V)
    (P : TaylorWilesPatchingData M p ℓ R 𝔪 hAttach V geometry) :
    LocalizedRankOne M ℓ 𝔪 V := by
  intro _hLocalized
  exact M_infty_free P.patched P.specialization

#print axioms TaylorWilesPatchingData
#print axioms TaylorWilesPatchingData.deformation_diamond_action
#print axioms LocalizedRankOne_from_Patching
-- Expected foundational dependencies: [propext, Quot.sound] only.
-- The construction of `TaylorWilesPatchingData` remains an explicit boundary.

end Beal.Patching