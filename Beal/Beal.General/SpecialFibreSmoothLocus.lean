import Beal.«Beal.General».GenericFibreNonsingular

/-!
Geometric smooth-locus statement for the reduced nodal special fibre.
This is a field-valued point statement, not regularity of the integral
total-space stalk above such a point.
-/

namespace Beal.General

/-- On a nodal special fibre, every projective geometric point away
from the unique affine node is nonsingular. In particular the point
at infinity belongs to this smooth locus. No split-tangent or
discriminant assumption is needed for this pointwise assertion. -/
theorem splitNode_specialFibre_nonsingular_away_from_node
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    {K : Type*} [Field K] (φ : ZMod 2 →+* K)
    (P : Fin 3 → K) (hP : P ≠ 0)
    (heq : ((W.map PadicInt.toZMod).map φ).toProjective.Equation P)
    (haway : ¬ (P 2 ≠ 0 ∧
      P 0 / P 2 = φ (PadicInt.toZMod W.a₃) ∧
      P 1 / P 2 = φ (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))) :
    ((W.map PadicInt.toZMod).map φ).toProjective.Nonsingular P := by
  by_contra hsing
  exact haway
    (splitNode_projective_singular_only_at_node W hnode φ P hP heq hsing)

end Beal.General