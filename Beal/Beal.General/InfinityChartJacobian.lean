import Beal.«Beal.General».TateI1MinimalRegularModel
import Mathlib.Algebra.MvPolynomial.PDeriv

/-!
The Jacobian calculation on the actual integral `Y = 1` chart.
This is a first-order certificate at the point at infinity, not an
all-stalk regularity theorem for the quotient `Proj`.
-/

namespace Beal.General

/-- The derivative in `V = Z/Y` of the integral infinity-chart
equation is a unit at `(U,V) = (0,0)`. Unlike the translated nodal
special-fibre equation, this calculation is made before reduction
modulo `2`, and needs no discriminant hypothesis. -/
theorem weierstrassInfinityChartEquation_pderiv_V_at_origin
    (W : WeierstrassCurve ℤ_[2]) :
    MvPolynomial.eval (fun _ : Fin 2 => (0 : ℤ_[2]))
      (MvPolynomial.pderiv (1 : Fin 2)
        (weierstrassInfinityChartEquation W)) = 1 := by
  simp [weierstrassInfinityChartEquation, MvPolynomial.pderiv_X,
    MvPolynomial.pderiv_X_self, MvPolynomial.pderiv_X_of_ne]

/-- The same unit derivative persists over any coefficient ring,
in particular over the residue field and its extensions. -/
theorem weierstrassInfinityChartEquation_pderiv_V_baseChange
    (W : WeierstrassCurve ℤ_[2]) {S : Type*} [CommRing S]
    (φ : ℤ_[2] →+* S) :
    MvPolynomial.eval (fun _ : Fin 2 => (0 : S))
      (MvPolynomial.pderiv (1 : Fin 2)
        (MvPolynomial.map φ (weierstrassInfinityChartEquation W))) = 1 := by
  simp [weierstrassInfinityChartEquation, MvPolynomial.pderiv_X,
    MvPolynomial.pderiv_X_self, MvPolynomial.pderiv_X_of_ne]

/-- This Jacobian certificate applies to the dehomogenization of
the actual homogeneous cubic defining the quotient `Proj`. -/
theorem projectiveWeierstrassCubic_YChart_pderiv_V_baseChange
    (W : WeierstrassCurve ℤ_[2]) {S : Type*} [CommRing S]
    (φ : ℤ_[2] →+* S) :
    MvPolynomial.eval (fun _ : Fin 2 => (0 : S))
      (MvPolynomial.pderiv (1 : Fin 2)
        (MvPolynomial.map φ
          ((MvPolynomial.aeval
            ![(MvPolynomial.X 0 : MvPolynomial (Fin 2) ℤ_[2]),
              1, MvPolynomial.X 1])
            (projectiveWeierstrassCubic W)))) = 1 := by
  rw [projectiveWeierstrassCubic_dehomogenize_Y]
  exact weierstrassInfinityChartEquation_pderiv_V_baseChange W φ

end Beal.General