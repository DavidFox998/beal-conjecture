import Beal.MathlibMissing.ChartTrueEquiv

/-!
v39 wrapper around the v38 chart engine. The `BealEven` library
(`Beal.«Beal.Even».FullReduction`) does not import this module.

`chartOfModelTrue` is injective. A kernel class of
`chartOfModelTrueY_fixed` carries the `Eᵢ` constraint, and `Y³`
stays outside the cusp ideal, so the constraint does not set
`Eᵢ = 0`. `X + V²` stays outside the cusp ideal with nonzero image.
`centreNormalPoly (X³ − 1) 0` lies outside `I²` because
`centreAlphaBound 2 0 = 1`. This is not the general Beal statement.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

/-- The v38 chart engine from the even-branch wrapper.
`Function.Injective chartOfModelTrue` is the true-chart injectivity.
The remaining conjuncts are the non-vanishing invariants from
`chartTrueEquiv_inj_from_Ei_constraint`: `Y³ ≠ 0`, `Y³` outside the
cusp ideal, `centreNormalPoly (X³ − 1) 0` outside `I²`, and
`X + V²` outside the cusp ideal with nonzero image.
`ann(1 + Y·S³) ≠ ann(X²)` is cited before the conjunction. -/
theorem bealEven_from_chartTrueEquiv
    (N : modelYtChart_fixed)
    (hN : chartOfModelTrueY_fixed N = 0) :
    Function.Injective chartOfModelTrue ∧
      chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0 ∧
      (MvPolynomial.X (0 : Fin 2)) ^ 3 ∉ chartYtCuspIdeal ∧
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly (Polynomial.X ^ 3 - 1) 0) ∉ vI ^ 2) ∧
      (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2 ∉
          chartNormalIdeal ∧
        chartOfModelTrueX_fixed
            (Ideal.Quotient.mk chartTrueIdeal
              (normalPolyToModel
                (MvPolynomial.X (0 : Fin 2) +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2))) ≠ 0) ∧
      overlapX * (overlapX + overlapV ^ 2) ≠ 0 := by
  have h_factor_vs_power := chartTrueEquiv_factor_ne_power
  have h_ei := chartTrueEquiv_inj_from_Ei_constraint N hN
  rcases h_ei with ⟨hInner, hNot, hOv⟩
  rcases hInner with ⟨_, _, hB, hCentre, hY⟩
  exact (fun _ => ⟨chartOfModelTrue_injective, hY, hNot, hCentre, hB, hOv⟩)
    h_factor_vs_power

#print axioms Beal.MathlibMissing.bealEven_from_chartTrueEquiv

end Beal.MathlibMissing
