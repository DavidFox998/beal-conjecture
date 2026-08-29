/-
  Patching/PatchedModule — transparent patched-module algebra

  This file defines the data carried by a Taylor–Wiles patched tower.  The
  finite levels, transition maps, diamond operators, inverse-limit candidate,
  projections, and rank-one coordinates are all explicit.  The project does
  not claim to construct these objects from the jitter inequality.
-/
import Beal.Patching.TaylorWilesPrimes
import Mathlib.Algebra.Module.Equiv.Defs

namespace Beal.Patching

universe u v

/-- A module packaged as explicit Type-valued data. -/
structure ModuleModel (R : Type u) [Semiring R] where
  Carrier : Type u
  addCommMonoid : AddCommMonoid Carrier
  module : @Module R Carrier _ addCommMonoid

instance {R : Type u} [Semiring R] (D : ModuleModel R) :
    AddCommMonoid D.Carrier :=
  D.addCommMonoid

instance {R : Type u} [Semiring R] (D : ModuleModel R) :
    Module R D.Carrier :=
  D.module

/-- Constructive coordinates for a free rank-one module.

    This is lower-level data than `Nonempty (N ≃ₗ[R] R)`: it supplies a
    generator, a coordinate function, and the two inverse laws from which Lean
    constructs the linear equivalence. -/
structure RankOneCoordinates
    (R : Type u) (N : Type v)
    [Semiring R] [AddCommMonoid N] [Module R N] where
  generator : N
  coordinate : N → R
  coordinate_add : ∀ x y : N, coordinate (x + y) = coordinate x + coordinate y
  coordinate_smul : ∀ r : R, ∀ x : N, coordinate (r • x) = r * coordinate x
  reconstruct : ∀ x : N, coordinate x • generator = x
  generator_coordinate : coordinate generator = 1

/-- The linear equivalence determined by explicit rank-one coordinates. -/
def RankOneCoordinates.toLinearEquiv
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    (D : RankOneCoordinates R N) :
    N ≃ₗ[R] R where
  toFun := D.coordinate
  invFun := fun r => r • D.generator
  left_inv := D.reconstruct
  right_inv := by
    intro r
    change D.coordinate (r • D.generator) = r
    rw [D.coordinate_smul, D.generator_coordinate, mul_one]
  map_add' := D.coordinate_add
  map_smul' := D.coordinate_smul

/-- A patched tower whose inverse-limit candidate is the supplied module `N`.

    The projection-extensionality field prevents the limit carrier from being
    unrelated junk: its elements are determined by every finite projection.
    A future geometric construction must provide the levels and prove all
    transition and projection compatibilities. -/
structure PatchedModuleData
    (R : Type u) (N : Type v)
    [Semiring R] [AddCommMonoid N] [Module R N] where
  finiteLevel : ℕ → ModuleModel R
  transition :
    ∀ n : ℕ, (finiteLevel (n + 1)).Carrier →ₗ[R] (finiteLevel n).Carrier
  diamondOperator :
    ∀ n : ℕ, ℕ →
      ((finiteLevel n).Carrier →ₗ[R] (finiteLevel n).Carrier)
  diamond_zero :
    ∀ n : ℕ, diamondOperator n 0 = LinearMap.id
  diamond_add :
    ∀ (n a b : ℕ),
      diamondOperator n (a + b) =
        (diamondOperator n a).comp (diamondOperator n b)
  project :
    ∀ n : ℕ, N →ₗ[R] (finiteLevel n).Carrier
  project_compatible :
    ∀ (n : ℕ) (x : N),
      transition n (project (n + 1) x) = project n x
  project_ext :
    ∀ x y : N, (∀ n : ℕ, project n x = project n y) → x = y
  finiteLevelCoordinates :
    ∀ n : ℕ, RankOneCoordinates R (finiteLevel n).Carrier
  transition_generator :
    ∀ n : ℕ,
      transition n (finiteLevelCoordinates (n + 1)).generator =
        (finiteLevelCoordinates n).generator
  transition_coordinate :
    ∀ (n : ℕ) (x : (finiteLevel (n + 1)).Carrier),
      (finiteLevelCoordinates n).coordinate (transition n x) =
        (finiteLevelCoordinates (n + 1)).coordinate x

/-- The remaining specialization boundary connecting the finite patched tower
    to its localized inverse-limit candidate.

    The coordinate is not supplied: it is derived from the level-zero
    projection.  What remains explicit is the geometric specialization fact
    that the coherent finite-level generator reconstructs every localized
    element.  This is the missing R=T/localization input, stated separately
    rather than hidden inside `PatchedModuleData`. -/
structure PatchingSpecializationData
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    (D : PatchedModuleData R N) where
  generator : N
  project_generator :
    ∀ n : ℕ,
      D.project n generator = (D.finiteLevelCoordinates n).generator
  reconstruct_from_level_zero :
    ∀ x : N,
      (D.finiteLevelCoordinates 0).coordinate (D.project 0 x) • generator = x

/-- Rank-one coordinates on the localized limit, derived through the
    level-zero projection and the explicit specialization boundary. -/
def PatchingSpecializationData.toRankOneCoordinates
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    {D : PatchedModuleData R N}
    (S : PatchingSpecializationData D) :
    RankOneCoordinates R N where
  generator := S.generator
  coordinate := fun x =>
    (D.finiteLevelCoordinates 0).coordinate (D.project 0 x)
  coordinate_add := by
    intro x y
    change
      (D.finiteLevelCoordinates 0).coordinate (D.project 0 (x + y)) =
        (D.finiteLevelCoordinates 0).coordinate (D.project 0 x) +
          (D.finiteLevelCoordinates 0).coordinate (D.project 0 y)
    rw [map_add, (D.finiteLevelCoordinates 0).coordinate_add]
  coordinate_smul := by
    intro r x
    change
      (D.finiteLevelCoordinates 0).coordinate (D.project 0 (r • x)) =
        r * (D.finiteLevelCoordinates 0).coordinate (D.project 0 x)
    rw [map_smul, (D.finiteLevelCoordinates 0).coordinate_smul]
  reconstruct := S.reconstruct_from_level_zero
  generator_coordinate := by
    change
      (D.finiteLevelCoordinates 0).coordinate (D.project 0 S.generator) = 1
    rw [S.project_generator 0]
    exact (D.finiteLevelCoordinates 0).generator_coordinate

/-- The inverse-limit candidate carried by the patched tower. -/
abbrev M_infty
    (R : Type u) (N : Type v)
    [Semiring R] [AddCommMonoid N] [Module R N]
    (_D : PatchedModuleData R N) :=
  N

/-- The finite patched levels are free rank one by their explicit coordinate
    data. -/
theorem finite_level_free
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    (D : PatchedModuleData R N) (n : ℕ) :
    Nonempty ((D.finiteLevel n).Carrier ≃ₗ[R] R) :=
  ⟨(D.finiteLevelCoordinates n).toLinearEquiv⟩

/-- The patched inverse-limit candidate is free rank one by transparent
    construction from its generator and coordinate laws. -/
theorem M_infty_free
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    (D : PatchedModuleData R N)
    (S : PatchingSpecializationData D) :
    Nonempty (M_infty R N D ≃ₗ[R] R) :=
  ⟨S.toRankOneCoordinates.toLinearEquiv⟩

#print axioms ModuleModel
#print axioms RankOneCoordinates
#print axioms RankOneCoordinates.toLinearEquiv
#print axioms PatchedModuleData
#print axioms PatchingSpecializationData
#print axioms PatchingSpecializationData.toRankOneCoordinates
#print axioms finite_level_free
#print axioms M_infty_free
-- Expected foundational dependencies: [propext, Quot.sound] at most.

end Beal.Patching