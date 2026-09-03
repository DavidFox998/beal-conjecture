import Mathlib.Algebra.Module.Torsion
import Mathlib.Algebra.Module.ZMod
import Mathlib.AlgebraicGeometry.EllipticCurve.Group
import Mathlib.FieldTheory.AbsoluteGaloisGroup
import Mathlib.RepresentationTheory.GroupCohomology.LowDegree

namespace Beal17Mazur.Cohomology

open Field Representation WeierstrassCurve
open scoped WeierstrassCurve

noncomputable section

/-!
# The absolute-Galois representation on geometric elliptic 2-torsion

This module constructs the coefficient representation needed for a genuine
2-Selmer group.  Its carrier is the actual 2-torsion subgroup of the affine
elliptic-curve group after base change to `AlgebraicClosure ℚ`; the absolute
Galois action is induced coordinatewise by Mathlib's point-map homomorphism.
-/

/-- Geometric points of a rational Weierstrass curve. -/
abbrev GeometricPoints (E : WeierstrassCurve ℚ) :=
  Affine.Point ((E.baseChange (AlgebraicClosure ℚ)).toAffine)

/-- The actual geometric 2-torsion subgroup `E[2](ℚ̄)`. -/
abbrev GeometricTwoTorsion (E : WeierstrassCurve ℚ) :=
  AddSubgroup.torsionBy (GeometricPoints E) 2

local instance geometricTwoTorsionModule
    (E : WeierstrassCurve ℚ) :
    Module (ZMod 2) (GeometricTwoTorsion E) :=
  AddSubgroup.torsionBy.zmodModule

/-- An absolute Galois automorphism acts on geometric points by applying the
automorphism to their affine coordinates. -/
def galoisPointMap (E : WeierstrassCurve ℚ)
    (σ : absoluteGaloisGroup ℚ) :
    GeometricPoints E →+ GeometricPoints E :=
  Affine.Point.map E.toAffine σ.toAlgHom

/-- The coordinate action preserves the 2-torsion subgroup. -/
def galoisTwoTorsionMap (E : WeierstrassCurve ℚ)
    (σ : absoluteGaloisGroup ℚ) :
    GeometricTwoTorsion E →+ GeometricTwoTorsion E where
  toFun P :=
    ⟨galoisPointMap E σ P.1, by
      change 2 • galoisPointMap E σ P.1 = 0
      rw [← map_nsmul]
      have hP : 2 • P.1 = 0 :=
        AddSubgroup.torsionBy.nsmul_iff.mp P.property
      rw [hP, map_zero]⟩
  map_zero' := by
    apply Subtype.ext
    exact map_zero (galoisPointMap E σ)
  map_add' P Q := by
    apply Subtype.ext
    exact map_add (galoisPointMap E σ) P.1 Q.1

/-- The `ZMod 2`-linear form of the Galois action. -/
def galoisTwoTorsionLinearMap (E : WeierstrassCurve ℚ)
    (σ : absoluteGaloisGroup ℚ) :
    GeometricTwoTorsion E →ₗ[ZMod 2] GeometricTwoTorsion E :=
  (galoisTwoTorsionMap E σ).toZModLinearMap 2

/-- The genuine absolute-Galois representation on `E[2](ℚ̄)`. -/
def geometricTwoTorsionRepresentation (E : WeierstrassCurve ℚ) :
    Representation (ZMod 2) (absoluteGaloisGroup ℚ)
      (GeometricTwoTorsion E) where
  toFun := galoisTwoTorsionLinearMap E
  map_one' := by
    apply LinearMap.ext
    intro P
    apply Subtype.ext
    change galoisPointMap E 1 P.1 = P.1
    simpa [galoisPointMap] using Affine.Point.map_id E.toAffine P.1
  map_mul' σ τ := by
    apply LinearMap.ext
    intro P
    apply Subtype.ext
    change galoisPointMap E (σ * τ) P.1 =
      galoisPointMap E σ (galoisPointMap E τ P.1)
    rw [galoisPointMap, galoisPointMap, galoisPointMap,
      Affine.Point.map_map]
    rfl

/-- The algebraic first cohomology group containing the global 2-Selmer
subgroup before continuity and local conditions are imposed. -/
abbrev EllipticH1 (E : WeierstrassCurve ℚ) :=
  groupCohomology.H1 (Rep.of (geometricTwoTorsionRepresentation E))

theorem geometricTwoTorsion_exponent_two
    (E : WeierstrassCurve ℚ)
    (P : GeometricTwoTorsion E) :
    2 • P = 0 :=
  AddSubgroup.torsionBy.nsmul P

#print axioms galoisTwoTorsionMap
#print axioms geometricTwoTorsionRepresentation
#print axioms geometricTwoTorsion_exponent_two

end

end Beal17Mazur.Cohomology