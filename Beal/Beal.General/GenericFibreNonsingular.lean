import Beal.«Beal.General».TateI1Classification

/-!
Pointwise generic-fibre nonsingularity for the projective Weierstrass
equation. This is a geometric point statement over fields receiving
an injective map from `ℤ_[2]`, not an all-stalk regularity theorem for
the integral quotient `Proj`.
-/

namespace Beal.General

/-- If `Δ ≠ 0`, every field-valued projective point over an injective
extension of `ℤ_[2]` is nonsingular. The affine case uses Mathlib's
discriminant criterion; the point at infinity is handled separately. -/
theorem projectiveWeierstrass_genericPoint_nonsingular
    (W : WeierstrassCurve ℤ_[2]) (hΔ : W.Δ ≠ 0)
    {K : Type*} [Field K] (φ : ℤ_[2] →+* K)
    (hφ : Function.Injective φ)
    (P : Fin 3 → K) (hP : P ≠ 0)
    (heq : (W.map φ).toProjective.Equation P) :
    (W.map φ).toProjective.Nonsingular P := by
  by_cases hz : P 2 = 0
  · exact weierstrass_projective_infinity_nonsingular (W.map φ) P hP heq hz
  · apply (WeierstrassCurve.Projective.nonsingular_of_Z_ne_zero hz).mpr
    exact (W.map φ).toAffine.nonsingular_of_Δ_ne_zero
      ((WeierstrassCurve.Projective.equation_of_Z_ne_zero hz).mp heq)
      (by rw [WeierstrassCurve.map_Δ]; simpa only [map_zero] using hφ.ne hΔ)

end Beal.General