/-
  Patching/REqualsT — semiring-level R=T from explicit comparison data

  The Taylor–Wiles tower, depth calculation, deformation/Hecke map, and
  localized rank-one argument are already packaged by
  `TaylorWilesPatchingData`.  This file adds the missing reverse map and its
  two inverse laws as an explicit mathematical boundary, then constructs the
  resulting semiring equivalence without an axiom, `sorry`, or choice.

  The Shimura q-expansion supplier remains a separate geometric boundary.  The
  assembled theorem below records exactly what follows when both suppliers are
  present; it does not claim that the current project constructs either one.
-/
import Beal.Patching.RankOne
import Beal.Galois.«07l_ShimuraQExpansionSupplier»

namespace Beal.Patching

open Beal.FreyTate
open Beal.Galois

/-- Explicit inverse data for the deformation-to-Hecke comparison.

    The map `toDeformation` is the genuine T-to-R direction.  Its inverse laws
    are the unformalized R=T mathematical input; keeping them in Type-valued
    data prevents an existence theorem from being silently asserted. -/
structure REqualsTComparisonData
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    [_H : LocalizedHeckeData M ℓ 𝔪]
    {attachment : FreyHeckeAttachment R 𝔪.1}
    {D : FreyDeformationRingData R}
    (comparison : FreyDeformationHeckeComparison 𝔪 attachment D) where
  toDeformation : LocalizedHeckeAlgebra M ℓ 𝔪 →+* D.Carrier
  left_inverse :
    Function.LeftInverse toDeformation comparison.toHecke
  right_inverse :
    Function.RightInverse toDeformation comparison.toHecke

/-- The semiring-level R=T equivalence constructed from the explicit maps and
    inverse laws.

    Both carriers in the current project interfaces are semirings. This does
    not assert the complete-local, Noetherian, or commutative ring structure
    present in the classical Taylor–Wiles theorem. -/
def REqualsTComparisonData.toRingEquiv
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    [_H : LocalizedHeckeData M ℓ 𝔪]
    {attachment : FreyHeckeAttachment R 𝔪.1}
    {D : FreyDeformationRingData R}
    {comparison : FreyDeformationHeckeComparison 𝔪 attachment D}
    (rt : REqualsTComparisonData comparison) :
    D.Carrier ≃+* LocalizedHeckeAlgebra M ℓ 𝔪 where
  toFun := comparison.toHecke
  invFun := rt.toDeformation
  left_inv := rt.left_inverse
  right_inv := rt.right_inverse
  map_mul' := comparison.toHecke.map_mul
  map_add' := comparison.toHecke.map_add

/-- The exact theorem-level output of the available Taylor–Wiles and Shimura
    interfaces: a semiring-level R=T comparison, the restricted Ihara kernel
    result, and localized rank one. -/
def TaylorWilesREqualsTResult
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (M p ℓ : ℕ)
    (R : FreyResidualRepresentation model ℓ)
    (𝔪 : MaximalIdeal M ℓ)
    (attachment : FreyHeckeAttachment R 𝔪.1)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    [_H : LocalizedHeckeData M ℓ 𝔪]
    (geometry : EutheosGeometryInterface M p ℓ V)
    (P : TaylorWilesPatchingData M p ℓ R 𝔪 attachment V geometry) : Prop :=
  Nonempty
      (P.deformation.Carrier ≃+* LocalizedHeckeAlgebra M ℓ 𝔪) ∧
    IharaKernelZeroOnV M p ℓ V ∧
    LocalizedRankOne M ℓ 𝔪 V

/-- Assemble the exported semiring-level R=T result from the explicit patching,
    inverse-map, genuine-submodule, and Shimura q-expansion suppliers. -/
theorem taylor_wiles_r_equals_t
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {M p ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    {attachment : FreyHeckeAttachment R 𝔪.1}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    [_H : LocalizedHeckeData M ℓ 𝔪]
    {geometry : EutheosGeometryInterface M p ℓ V}
    (P : TaylorWilesPatchingData M p ℓ R 𝔪 attachment V geometry)
    (rt : REqualsTComparisonData P.heckeComparison)
    (hV : IsGenuineFormSubmoduleAtLevel M ℓ V)
    (shimura : ShimuraQExpansionData M p ℓ V) :
    TaylorWilesREqualsTResult M p ℓ R 𝔪 attachment V geometry P :=
  ⟨⟨rt.toRingEquiv⟩,
    IharaKernelZeroOnV_FromShimura M p ℓ V hV shimura,
    LocalizedRankOne_from_Patching geometry P⟩

#print axioms REqualsTComparisonData
#print axioms REqualsTComparisonData.toRingEquiv
#print axioms TaylorWilesREqualsTResult
#print axioms taylor_wiles_r_equals_t
-- Expected foundational dependencies: [propext, Quot.sound] at most.

end Beal.Patching