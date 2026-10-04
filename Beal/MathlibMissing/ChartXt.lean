import Beal.MathlibMissing.ChartXtTorsionBound

/-!
Xt converse of `reesProd_two`, mirroring
`chartVanishingY_normalForm_cofactor_lift`.

If `N ∈ I^D` and `X^m · N = 2 · (α(X) + Y · β(X))` with that cofactor in
`I^{D+m}`, then `(Xt)^m` times the degree-`D` monomial lies in the scalar
ideal `(2)`. The centre is `(2, X, Y)` on both charts. The class is
`centreNormalPoly α β`, that is `α(X) + Y·β(X)` in `S[X,Y]`. It is not a
class `α + X·β`. `X = Y·S` is a chart relation, not a substitution in the
surface ring where the bound lives. The cusp normal form
`A(V) + X·B(V) + X²·C(V)` is not an input, and the argument does not use
`m ≥ 2`.

Clearing `V = Y/X` on `X + V²` gives `X³ + Y² = 2·(X³ − 1)`. That cofactor
is `centreNormalPoly (X³ − 1) 0`: the coefficient `-1` of `X⁰` sits in
`α`, and `β = 0`. `centreAlphaBound 2 0 = 1`, so `X³ − 1 ∉ I²`.
`centreBetaBound 2 0 = 1` is the bound on `β`. It holds for the zero
coefficient and does not see `-1`. The centre bound therefore does not
apply to this class and does not force `B = 0`. Separately, `X + V²`
lies outside `(X²·(X + V²))`.

`chartOfModelTrue_injective` and `chart_Dplus_Xt_true_presentation` are
already proved. They are not restated here.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

/-- If `X^m·N = 2·(α(X) + Y·β(X))` and the cofactor lies in `I^{D+m}`,
then `(Xt)^m` times the degree-`D` monomial lies in the scalar ideal `(2)`.
This is the converse of `reesProd_two`. The cusp normal form is not an
input: a centre numerator `N ∈ I^D` is enough, and the argument does not
use `m ≥ 2`. -/
theorem chartVanishingX_normalForm_cofactor_lift
    (m D : ℕ) (N : surfaceRing valuationOneCurve) (hN : N ∈ vI ^ D)
    (α β : Polynomial S)
    (h2 : vX ^ m * N =
      (2 : surfaceRing valuationOneCurve) *
        Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β))
    (hI : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly α β) ∈ vI ^ (D + m)) :
    (numeralReesXT valuationOneCurve 0 0) ^ m *
      centreReesMonomial vI D ⟨N, hN⟩ ∈
        numeralReesSpecialIdeal valuationOneCurve 0 0 := by
  rw [xt_mul_num]
  refine Ideal.mem_span_singleton'.mpr ⟨
    centreReesMonomial vI (m + D)
      ⟨Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β), by
        rw [Nat.add_comm]
        exact hI⟩, ?_⟩
  apply Subtype.ext
  simp only [centreReesMonomial, LinearMap.coe_mk, AddHom.coe_mk, Subtype.coe_mk,
    Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
  rw [← Polynomial.C_eq_algebraMap, Polynomial.monomial_mul_C]
  refine congrArg (Polynomial.monomial (m + D)) ?_
  have hswap :
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) * (2 : surfaceRing valuationOneCurve) =
        (2 : surfaceRing valuationOneCurve) *
          Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
            (centreNormalPoly α β) := by ring
  rw [hswap]
  exact h2.symm

/-- Clearing `V = Y/X` on `X + V²` gives `X³ + Y² = 2·(X³ − 1)`.
The cofactor is an `α` class: `β = 0`. -/
theorem chartXt_X_add_Vsq_surface :
    vX ^ 3 + vY ^ 2 =
      (2 : surfaceRing valuationOneCurve) *
        Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly (Polynomial.X ^ 3 - 1) 0) := by
  rw [centre_alpha_eval]
  have hpoly : surfaceEvalHom (Polynomial.X ^ 3 - 1) = vX ^ 3 - 1 := by
    simp [surfaceEvalHom, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_sub,
      Polynomial.eval₂_pow, Polynomial.eval₂_X, Polynomial.eval₂_one]
  rw [hpoly]
  calc vX ^ 3 + vY ^ 2
      = vX ^ 3 + (vX ^ 3 - (2 : surfaceRing valuationOneCurve)) := by rw [vY_sq]
    _ = (2 : surfaceRing valuationOneCurve) * (vX ^ 3 - 1) := by ring

/-- `X³ − 1 ∉ I²`. Its coefficient of `X⁰` in `α` is `-1`, and
`centreAlphaBound 2 0 = 1`. -/
theorem chartXt_Xcube_sub_one_not_mem :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (Polynomial.X ^ 3 - 1) 0) ∉ vI ^ 2 := by
  intro h
  have ha := (centreIdeal_power_coeff_bound h 0).1
  have hα : centreAlphaBound 2 0 = 1 := by
    unfold centreAlphaBound
    rfl
  have hc : ((Polynomial.X ^ 3 - 1 : Polynomial S).coeff 0) = -1 := by
    simp [Polynomial.coeff_sub, Polynomial.coeff_X_pow, Polynomial.coeff_one]
  rw [hα, hc] at ha
  exact not_twoAdicNormBound_neg_one ha

/-- `centreBetaBound 2 0 = 1` holds for the zero coefficient of `β`.
`X³ − 1` has `β = 0`, so this bound does not see the coefficient `-1`
of `α` and does not force `B = 0`. -/
theorem chartXt_Xcube_sub_one_beta_bound :
    centreBetaBound 2 0 = 1 ∧
      twoAdicNormBound (centreBetaBound 2 0) ((0 : Polynomial S).coeff 0) := by
  refine ⟨?_, ?_⟩
  · unfold centreBetaBound
    rfl
  · rw [Polynomial.coeff_zero]
    exact twoAdicNormBound_zero _

/-- `X + V²` lies outside `(X²·(X + V²))`. This does not set `B = 0`. -/
theorem chartXt_X_add_Vsq_outside_cusp :
    MvPolynomial.X (0 : Fin 2) + MvPolynomial.X (1 : Fin 2) ^ 2 ∉
      chartNormalIdeal :=
  chartXtCusp_X_add_Vsq_not_mem

#print axioms Beal.MathlibMissing.chartVanishingX_normalForm_cofactor_lift
#print axioms Beal.MathlibMissing.chartXt_X_add_Vsq_surface
#print axioms Beal.MathlibMissing.chartXt_Xcube_sub_one_not_mem
#print axioms Beal.MathlibMissing.chartXt_Xcube_sub_one_beta_bound
#print axioms Beal.MathlibMissing.chartXt_X_add_Vsq_outside_cusp

end Beal.MathlibMissing
