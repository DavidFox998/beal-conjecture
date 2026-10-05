import Beal.MathlibMissing.ChartYtTorsionBound
import Mathlib.RingTheory.Ideal.Operations
import Mathlib.RingTheory.Localization.Away.Basic

/-!
Overlap of the `D₊(Yt)` and `D₊(Xt)` cusps.

`S = Xt/Yt` on `D₊(Yt)`, and `V = Yt/Xt` is the inverse ratio. The overlap
inverts the Rees denominator `S`. It does not invert the degree-zero
coordinate `Y`: `Y·T = 0` with `T = 2t/Yt ≠ 0` on `D₊(Yt)`, so `1/Y` is
not an element of that chart. The same holds for `X` on `D₊(Xt)`.

In any commutative ring that does supply the inverse, the displayed
rewrites hold:
`Y²·(1 + Y·S³) = Y³·(S³ + Y⁻¹)` and `X²·(X + V²) = X³·(1 + V²·X⁻¹)`.

On `D₊(Yt)[S⁻¹]`, set `V = S⁻¹`. The chart relation `X = Y·S` becomes
`Y = X·V` without cancelling `Y`. Then `X + V² = V²·(1 + Y·S³)`, so the
two factors generate the same principal ideal and the same annihilator.
The cusps agree, and both are zero:
`Y²·(1 + Y·S³) = X²·(X + V²) = 0`.
The nilpotent read off the `Xt` shape is `X·(X + V²) = V·T`. `V` is a
unit, so this product vanishes if and only if the image of `T` does.
No power of `S` kills `T` in `D₊(Yt)`: `S^n·T = 0` would put `Y^m X^n`
in `I^{m+n+1}`. The lowest term of that class is `(-2)^q` at `X`-degree
`n`, and the centre bound asks for one more factor of `2`. The image of
`T` stays nonzero, and so does `X·(X + V²)`. The overlap torsion persists.
A unit `Y` on this overlap would still kill `T`. This file does not
identify the overlap with a localization of `D₊(Xt)`.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

section ExplicitInverse

variable {R : Type*} [CommRing R]

/-- If `Y` has an inverse, `Y²·(1 + Y·S³) = Y³·(S³ + Y⁻¹)`. -/
theorem chartOverlap_Y_cusp_inv (Y S yInv : R) (hY : Y * yInv = 1) :
    Y ^ 2 * (1 + Y * S ^ 3) = Y ^ 3 * (S ^ 3 + yInv) := by
  have hpow : Y ^ 2 = Y ^ 3 * yInv := by
    calc
      Y ^ 2 = Y ^ 2 * 1 := by ring
      _ = Y ^ 2 * (Y * yInv) := by rw [hY]
      _ = Y ^ 3 * yInv := by ring
  have hy : yInv * Y = 1 := by
    calc
      yInv * Y = Y * yInv := by ring
      _ = 1 := hY
  calc
    Y ^ 2 * (1 + Y * S ^ 3) = (Y ^ 3 * yInv) * (1 + Y * S ^ 3) := by rw [hpow]
    _ = Y ^ 3 * yInv + Y ^ 3 * (yInv * Y) * S ^ 3 := by ring
    _ = Y ^ 3 * yInv + Y ^ 3 * 1 * S ^ 3 := by rw [hy]
    _ = Y ^ 3 * (S ^ 3 + yInv) := by ring

/-- If `X` has an inverse, `X²·(X + V²) = X³·(1 + V²·X⁻¹)`. -/
theorem chartOverlap_X_cusp_inv (X V xInv : R) (hX : X * xInv = 1) :
    X ^ 2 * (X + V ^ 2) = X ^ 3 * (1 + V ^ 2 * xInv) := by
  have hpow : X ^ 2 = X ^ 3 * xInv := by
    calc
      X ^ 2 = X ^ 2 * 1 := by ring
      _ = X ^ 2 * (X * xInv) := by rw [hX]
      _ = X ^ 3 * xInv := by ring
  have hx : xInv * X = 1 := by
    calc
      xInv * X = X * xInv := by ring
      _ = 1 := hX
  calc
    X ^ 2 * (X + V ^ 2) = (X ^ 3 * xInv) * (X + V ^ 2) := by rw [hpow]
    _ = X ^ 3 * (xInv * X) + X ^ 3 * (V ^ 2 * xInv) := by ring
    _ = X ^ 3 * 1 + X ^ 3 * (V ^ 2 * xInv) := by rw [hx]
    _ = X ^ 3 * (1 + V ^ 2 * xInv) := by ring

end ExplicitInverse

/-- `D₊(Yt)` with `S = Xt/Yt` inverted. This is the overlap from the `Yt`
chart. `Y` itself is not inverted. -/
abbrev chartOverlapRing : Type :=
  Localization.Away (chartYt_X_over_Y valuationOneCurve 0 0)

noncomputable def overlapS : chartOverlapRing :=
  algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
    (chartYt_X_over_Y valuationOneCurve 0 0)

noncomputable def overlapV : chartOverlapRing :=
  IsLocalization.Away.invSelf (chartYt_X_over_Y valuationOneCurve 0 0)

noncomputable def overlapY : chartOverlapRing :=
  algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
    (chartYt_Y valuationOneCurve 0 0)

noncomputable def overlapX : chartOverlapRing :=
  algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
    (chartYt_X valuationOneCurve 0 0)

noncomputable def overlapT : chartOverlapRing :=
  algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
    (chartYt_two_over_Y valuationOneCurve 0 0)

/-- `S·V = 1` on the overlap, so `V = 1/S`. -/
theorem chartOverlap_S_mul_V : overlapS * overlapV = 1 := by
  simp [overlapS, overlapV]

private lemma chartOverlap_V_mul_S : overlapV * overlapS = 1 := by
  calc
    overlapV * overlapS = overlapS * overlapV := by ring
    _ = 1 := chartOverlap_S_mul_V

/-- The chart relation survives the localization: `X = Y·S`. -/
theorem chartOverlap_X_eq : overlapX = overlapY * overlapS := by
  unfold overlapX overlapY overlapS
  simpa [map_mul] using
    congrArg (algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing)
      (chartYt_X_eq_Y_mul_X_over_Y _ _ _)

/-- `Y = X·V` on the overlap. This does not cancel `Y`. -/
theorem chartOverlap_Y_eq_X_mul_V : overlapY = overlapX * overlapV := by
  calc
    overlapY = overlapY * 1 := by ring
    _ = overlapY * (overlapS * overlapV) := by rw [chartOverlap_S_mul_V]
    _ = (overlapY * overlapS) * overlapV := by ring
    _ = overlapX * overlapV := by rw [← chartOverlap_X_eq]

/-- `X + V² = V²·(1 + Y·S³)`. The two factors are associates by the unit `V²`. -/
theorem chartOverlap_factors_associate :
    overlapX + overlapV ^ 2 = overlapV ^ 2 * (1 + overlapY * overlapS ^ 3) := by
  have hX : overlapX = overlapV ^ 2 * overlapY * overlapS ^ 3 := by
    calc
      overlapX = overlapX * 1 := by ring
      _ = overlapX * (overlapV * overlapS) ^ 3 := by rw [chartOverlap_V_mul_S, one_pow]
      _ = overlapX * (overlapV ^ 3 * overlapS ^ 3) := by ring
      _ = (overlapX * overlapV) * (overlapV ^ 2 * overlapS ^ 3) := by ring
      _ = overlapY * (overlapV ^ 2 * overlapS ^ 3) := by rw [← chartOverlap_Y_eq_X_mul_V]
      _ = overlapV ^ 2 * overlapY * overlapS ^ 3 := by ring
  calc
    overlapX + overlapV ^ 2 = overlapV ^ 2 * overlapY * overlapS ^ 3 + overlapV ^ 2 := by rw [hX]
    _ = overlapV ^ 2 * (1 + overlapY * overlapS ^ 3) := by ring

/-- `1 + Y·S³ = S²·(X + V²)`. -/
theorem chartOverlap_factor_Y_eq :
    1 + overlapY * overlapS ^ 3 = overlapS ^ 2 * (overlapX + overlapV ^ 2) := by
  have hunit : overlapS ^ 2 * overlapV ^ 2 = 1 := by
    rw [← mul_pow, chartOverlap_S_mul_V, one_pow]
  calc
    1 + overlapY * overlapS ^ 3
        = (overlapS ^ 2 * overlapV ^ 2) * (1 + overlapY * overlapS ^ 3) := by rw [hunit, one_mul]
    _ = overlapS ^ 2 * (overlapV ^ 2 * (1 + overlapY * overlapS ^ 3)) := by ring
    _ = overlapS ^ 2 * (overlapX + overlapV ^ 2) := by rw [← chartOverlap_factors_associate]

/-- After `Y = X·V`, the two cusp polynomials are equal. -/
theorem chartOverlap_same_cusp :
    overlapY ^ 2 * (1 + overlapY * overlapS ^ 3) =
      overlapX ^ 2 * (overlapX + overlapV ^ 2) := by
  conv_lhs =>
    enter [1]
    rw [chartOverlap_Y_eq_X_mul_V]
  calc
    (overlapX * overlapV) ^ 2 * (1 + overlapY * overlapS ^ 3)
        = overlapX ^ 2 * (overlapV ^ 2 * (1 + overlapY * overlapS ^ 3)) := by ring
    _ = overlapX ^ 2 * (overlapX + overlapV ^ 2) := by rw [← chartOverlap_factors_associate]

/-- The `Yt` cusp stays zero after inverting `S`. -/
theorem chartOverlap_cusp_zero :
    overlapY ^ 2 * (1 + overlapY * overlapS ^ 3) = 0 := by
  unfold overlapY overlapS
  simpa [map_mul, map_pow, map_add, map_one, map_zero] using
    congrArg (algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing)
      chartYt_cusp_torsion_zero

/-- The `Xt` shape `X²·(X + V²)` is the same zero. -/
theorem chartOverlap_Xt_cusp_zero :
    overlapX ^ 2 * (overlapX + overlapV ^ 2) = 0 := by
  rw [← chartOverlap_same_cusp]
  exact chartOverlap_cusp_zero

/-- `(1 + Y·S³)` and `(X + V²)` generate the same principal ideal. -/
theorem chartOverlap_same_factor_ideal :
    Ideal.span ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing) =
      Ideal.span ({overlapX + overlapV ^ 2} : Set chartOverlapRing) := by
  apply le_antisymm
  · rw [Ideal.span_singleton_le_span_singleton]
    refine ⟨overlapS ^ 2, ?_⟩
    rw [chartOverlap_factor_Y_eq]
    ring
  · rw [Ideal.span_singleton_le_span_singleton]
    refine ⟨overlapV ^ 2, ?_⟩
    rw [chartOverlap_factors_associate]
    ring

/-- The two factors have the same annihilator ideal. -/
theorem chartOverlap_same_annihilator :
    (Ideal.span ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator =
      (Ideal.span ({overlapX + overlapV ^ 2} : Set chartOverlapRing)).annihilator := by
  rw [chartOverlap_same_factor_ideal]

/-- An element kills `1 + Y·S³` if and only if it kills `X + V²`. -/
theorem chartOverlap_same_annihilator_element (a : chartOverlapRing) :
    a * (1 + overlapY * overlapS ^ 3) = 0 ↔ a * (overlapX + overlapV ^ 2) = 0 := by
  constructor
  · intro h
    calc
      a * (overlapX + overlapV ^ 2)
          = a * (overlapV ^ 2 * (1 + overlapY * overlapS ^ 3)) := by
            rw [chartOverlap_factors_associate]
      _ = overlapV ^ 2 * (a * (1 + overlapY * overlapS ^ 3)) := by ring
      _ = overlapV ^ 2 * 0 := by rw [h]
      _ = 0 := by ring
  · intro h
    calc
      a * (1 + overlapY * overlapS ^ 3)
          = a * (overlapS ^ 2 * (overlapX + overlapV ^ 2)) := by
            rw [chartOverlap_factor_Y_eq]
      _ = overlapS ^ 2 * (a * (overlapX + overlapV ^ 2)) := by ring
      _ = overlapS ^ 2 * 0 := by rw [h]
      _ = 0 := by ring

private lemma chartOverlap_T_eq :
    overlapT = overlapY * (1 + overlapY * overlapS ^ 3) := by
  unfold overlapT overlapY overlapS
  simpa [map_mul, map_pow, map_add, map_one] using
    congrArg (algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing)
      chartYt_T_eq_Y_mul_one_add_Y_Scube

/-- `X·(X + V²) = V·T`. The `Xt` nilpotent is the image of `T` times the unit `V`. -/
theorem chartOverlap_nilpotent_eq :
    overlapX * (overlapX + overlapV ^ 2) = overlapV * overlapT := by
  rw [chartOverlap_factors_associate, chartOverlap_T_eq, chartOverlap_X_eq]
  calc
    (overlapY * overlapS) * (overlapV ^ 2 * (1 + overlapY * overlapS ^ 3))
        = overlapY * (overlapS * overlapV) * overlapV * (1 + overlapY * overlapS ^ 3) := by ring
    _ = overlapY * 1 * overlapV * (1 + overlapY * overlapS ^ 3) := by rw [chartOverlap_S_mul_V]
    _ = overlapV * (overlapY * (1 + overlapY * overlapS ^ 3)) := by ring

/-- The nilpotent ideals agree, so inverting `S` adds no new nilpotent. -/
theorem chartOverlap_nilpotent_ideal :
    Ideal.span ({overlapX * (overlapX + overlapV ^ 2)} : Set chartOverlapRing) =
      Ideal.span ({overlapT} : Set chartOverlapRing) := by
  apply le_antisymm
  · rw [Ideal.span_singleton_le_span_singleton]
    refine ⟨overlapV, ?_⟩
    rw [chartOverlap_nilpotent_eq]
    ring
  · rw [Ideal.span_singleton_le_span_singleton]
    refine ⟨overlapS, ?_⟩
    calc
      overlapT = 1 * overlapT := by ring
      _ = (overlapS * overlapV) * overlapT := by rw [chartOverlap_S_mul_V]
      _ = overlapS * (overlapV * overlapT) := by ring
      _ = overlapS * (overlapX * (overlapX + overlapV ^ 2)) := by rw [chartOverlap_nilpotent_eq]
      _ = (overlapX * (overlapX + overlapV ^ 2)) * overlapS := by ring

/-- The common nilpotent still squares to zero. -/
theorem chartOverlap_nilpotent_sq_zero :
    (overlapX * (overlapX + overlapV ^ 2)) ^ 2 = 0 := by
  rw [chartOverlap_nilpotent_eq]
  have hT : overlapT ^ 2 = 0 := by
    unfold overlapT
    simpa [map_pow, map_zero] using
      congrArg (algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing)
        chartYt_two_over_Y_sq_zero
  calc
    (overlapV * overlapT) ^ 2 = overlapV ^ 2 * overlapT ^ 2 := by ring
    _ = overlapV ^ 2 * 0 := by rw [hT]
    _ = 0 := by ring

/-- `Y` still kills the image of `T`. -/
theorem chartOverlap_Y_mul_T : overlapY * overlapT = 0 := by
  unfold overlapY overlapT
  simpa [map_mul, map_zero] using
    congrArg (algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing)
      (chartYt_Y_mul_two_over_Y_eq_zero _ _ _)

/-- A unit `Y` on the overlap would kill `T`. That is why `1/Y` is not the
overlap coordinate. -/
theorem chartOverlap_Y_unit_kills_T (h : IsUnit overlapY) : overlapT = 0 := by
  obtain ⟨u, hu⟩ := h
  calc
    overlapT = (1 : chartOverlapRing) * overlapT := by ring
    _ = (↑u⁻¹ * overlapY) * overlapT := by rw [Units.inv_mul_of_eq hu]
    _ = ↑u⁻¹ * (overlapY * overlapT) := by ring
    _ = ↑u⁻¹ * 0 := by rw [chartOverlap_Y_mul_T]
    _ = 0 := by ring

private lemma algebraMap_two :
    algebraMap S (surfaceRing valuationOneCurve) (2 : S) =
      (2 : surfaceRing valuationOneCurve) := by
  rw [show (2 : S) = MvPolynomial.C (2 : ℤ_[2]) from rfl, two_eq_quotient_mk]
  rfl

private lemma surfaceEval_cuspPolyS :
    surfaceEvalHom cuspPolyS = vX ^ 3 - (2 : surfaceRing valuationOneCurve) := by
  rw [cuspPolyS_eq, surfaceEvalHom, Polynomial.coe_eval₂RingHom]
  simp [Polynomial.eval₂_sub, Polynomial.eval₂_pow, Polynomial.eval₂_X, Polynomial.eval₂_C,
    algebraMap_two]

private lemma surfaceEval_X_pow_cusp (n q : ℕ) :
    surfaceEvalHom (Polynomial.X ^ n * cuspPolyS ^ q) =
      vX ^ n * (vX ^ 3 - (2 : surfaceRing valuationOneCurve)) ^ q := by
  have hc := surfaceEval_cuspPolyS
  rw [surfaceEvalHom, Polynomial.coe_eval₂RingHom] at hc
  rw [surfaceEvalHom, Polynomial.coe_eval₂RingHom]
  simp [Polynomial.eval₂_mul, Polynomial.eval₂_pow, Polynomial.eval₂_X, hc]

/-- The coefficient of `X^n` in `X^n·(X³ − 2)^q` is `(-2)^q`. -/
private lemma cuspPow_low_coeff (n q : ℕ) :
    MvPolynomial.coeff (0 : Fin 2 →₀ ℕ)
        ((Polynomial.X ^ n * cuspPolyS ^ q).coeff n) =
      (((-1 : ℤ) ^ q * (2 : ℤ) ^ q : ℤ) : ℤ_[2]) := by
  have hshift :
      (Polynomial.X ^ n * cuspPolyS ^ q).coeff n = (cuspPolyS ^ q).coeff 0 := by
    simpa [Nat.zero_add] using Polynomial.coeff_X_pow_mul (cuspPolyS ^ q) n 0
  have h0 : cuspPolyS.coeff 0 = -(2 : S) := by
    rw [cuspPolyS_eq]
    simp [Polynomial.coeff_sub, Polynomial.coeff_X_pow, Polynomial.coeff_C]
  have hpow : (cuspPolyS ^ q).coeff 0 = (-(2 : S)) ^ q := by
    rw [Polynomial.coeff_zero_eq_eval_zero, Polynomial.eval_pow,
      ← Polynomial.coeff_zero_eq_eval_zero, h0]
  have hbase : (-(2 : S)) = MvPolynomial.C (-(2 : ℤ_[2])) := by
    calc
      (-(2 : S)) = -(MvPolynomial.C (2 : ℤ_[2])) := by rw [map_ofNat]
      _ = MvPolynomial.C (-(2 : ℤ_[2])) := by rw [map_neg]
  have hneg : (-(2 : ℤ_[2])) ^ q = (-1 : ℤ_[2]) ^ q * (2 : ℤ_[2]) ^ q := by
    rw [neg_eq_neg_one_mul, mul_pow]
  rw [hshift, hpow, hbase, ← map_pow, hneg, MvPolynomial.coeff_C, if_pos rfl,
    ← cast_signed q q]

private lemma centreAlphaBound_even (q n : ℕ) :
    centreAlphaBound (2 * q + n + 1) n = q + 1 := by
  have hcomm : 2 * q + n + 1 = 2 * q + 1 + n := by
    calc
      2 * q + n + 1 = 2 * q + (n + 1) := by rw [Nat.add_assoc]
      _ = 2 * q + (1 + n) := by rw [Nat.add_comm n 1]
      _ = 2 * q + 1 + n := by rw [← Nat.add_assoc]
  have hshift := centreAlphaBound_shift (2 * q + 1) n 0
  rw [Nat.zero_add] at hshift
  rw [hcomm, hshift]
  unfold centreAlphaBound
  rw [Nat.sub_zero]
  have htwo : 2 * q + 1 + 1 = 2 * (q + 1) := by
    calc
      2 * q + 1 + 1 = 2 * q + (1 + 1) := by rw [Nat.add_assoc]
      _ = 2 * q + 2 := by rfl
      _ = 2 * q + 2 * 1 := by rw [Nat.mul_one]
      _ = 2 * (q + 1) := by rw [← Nat.mul_add]
  rw [htwo, Nat.mul_div_cancel_left _ (by decide : 0 < 2)]

private lemma centreBetaBound_odd (q n : ℕ) :
    centreBetaBound (2 * q + 1 + n + 1) n = q + 1 := by
  have hcomm : 2 * q + 1 + n + 1 = 2 * q + 2 + n := by
    calc
      2 * q + 1 + n + 1 = 2 * q + 1 + (n + 1) := by rw [Nat.add_assoc]
      _ = 2 * q + (1 + (n + 1)) := by rw [Nat.add_assoc]
      _ = 2 * q + (1 + n + 1) := by rw [Nat.add_assoc]
      _ = 2 * q + (n + 1 + 1) := by rw [Nat.add_comm 1 n]
      _ = 2 * q + (n + (1 + 1)) := by rw [Nat.add_assoc]
      _ = 2 * q + (n + 2) := by rfl
      _ = 2 * q + (2 + n) := by rw [Nat.add_comm n 2]
      _ = 2 * q + 2 + n := by rw [← Nat.add_assoc]
  have hshift := centreBetaBound_shift (2 * q + 2) n 0
  rw [Nat.zero_add] at hshift
  rw [hcomm, hshift]
  unfold centreBetaBound
  rw [Nat.sub_zero]
  have htwo : 2 * q + 2 = 2 * (q + 1) := by
    rw [Nat.mul_add, Nat.mul_one]
  rw [htwo, Nat.mul_div_cancel_left _ (by decide : 0 < 2)]

/-- `Y^m X^n ∉ I^{m+n+1}`. For `m = 2q` the class is `X^n·(X³ − 2)^q`,
and for `m = 2q+1` it is `Y·X^n·(X³ − 2)^q`. The coefficient of `X^n` is
`(-2)^q`, while both centre bounds at that degree are `q + 1`. -/
theorem vY_pow_mul_vX_pow_not_mem (m n : ℕ) :
    vY ^ m * vX ^ n ∉ vI ^ (m + n + 1) := by
  intro hmem
  rcases mod_two_dichotomy m with h0 | h1
  · have hq : m = 2 * (m / 2) :=
      (Nat.div_mul_cancel (Nat.dvd_of_mod_eq_zero h0)).symm.trans
        (Nat.mul_comm (m / 2) 2)
    rw [hq] at hmem
    set q := m / 2
    have hform :
        vY ^ (2 * q) * vX ^ n =
          Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
            (centreNormalPoly (Polynomial.X ^ n * cuspPolyS ^ q) 0) := by
      rw [centre_alpha_eval, surfaceEval_X_pow_cusp, vY_pow_even]
      ring
    rw [hform] at hmem
    have hb := (centreIdeal_power_coeff_bound hmem n).1
    rw [centreAlphaBound_even q n] at hb
    exact not_twoAdicNormBound_signed_coeff _ (0 : Fin 2 →₀ ℕ) q q
      (cuspPow_low_coeff n q) hb
  · have hq : m = 2 * (m / 2) + 1 := by
      have h := (Nat.div_add_mod m 2).symm
      rw [h1] at h
      exact h
    rw [hq] at hmem
    set q := m / 2
    have hform :
        vY ^ (2 * q + 1) * vX ^ n =
          Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
            (centreNormalPoly 0 (Polynomial.X ^ n * cuspPolyS ^ q)) := by
      rw [centre_beta_eval, surfaceEval_X_pow_cusp, vY_pow_odd]
      ring
    rw [hform] at hmem
    have hb := (centreIdeal_power_coeff_bound hmem n).2
    rw [centreBetaBound_odd q n] at hb
    exact not_twoAdicNormBound_signed_coeff _ (0 : Fin 2 →₀ ℕ) q q
      (cuspPow_low_coeff n q) hb

/-- `S^n·T ≠ 0` in `D₊(Yt)`. Vanishing would mean some `(Yt)^m` puts
`(Xt)^n·(2t)` in `(2)`, hence `Y^m X^n ∈ I^{m+n+1}`. -/
theorem chartYt_S_pow_mul_T_ne_zero (n : ℕ) :
    (chartYt_X_over_Y valuationOneCurve 0 0) ^ n *
        chartYt_two_over_Y valuationOneCurve 0 0 ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have _hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J _hJ
  let Q := (reesAlgebra I) ⧸ J
  let f : Q := Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0)
  have hval := congrArg (HomogeneousLocalization.val (x := Submonoid.powers f)) hzero
  erw [HomogeneousLocalization.val_mul, HomogeneousLocalization.val_pow,
    HomogeneousLocalization.val_zero] at hval
  simp only [chartYt_X_over_Y, chartYt_two_over_Y, HomogeneousLocalization.val_mk] at hval
  rw [Localization.mk_pow, Localization.mk_mul] at hval
  rw [← Localization.mk_zero (1 : Submonoid.powers f), Localization.mk_eq_mk_iff] at hval
  obtain ⟨c, hc⟩ := Localization.r_iff_exists.mp hval
  dsimp at hc
  rw [one_mul] at hc
  have hR : (c : Q) *
      ((Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0)) ^ n *
        Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0) * 0) = 0 := by
    ring
  rw [hR] at hc
  obtain ⟨m, hm⟩ := (Submonoid.mem_powers_iff (c : Q) f).mp c.property
  have hkill : f ^ m *
      ((Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)) ^ n *
        Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0)) = 0 := by
    rw [hm]
    exact hc
  have hpre : (numeralReesYT valuationOneCurve 0 0) ^ m *
      ((numeralReesXT valuationOneCurve 0 0) ^ n *
        numeralReesTwo valuationOneCurve 0 0) ∈ J := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow, map_mul, map_pow]
    exact hkill
  have h2mem : (2 : surfaceRing valuationOneCurve) ∈ vI ^ 1 := by
    rw [pow_one]
    exact two_mem_numeralCentreIdeal valuationOneCurve 0 0
  have hN : vX ^ n * (2 : surfaceRing valuationOneCurve) ∈ vI ^ (n + 1) := by
    rw [pow_add]
    exact Ideal.mul_mem_mul (vX_pow_mem n) h2mem
  have htwo : numeralReesTwo valuationOneCurve 0 0 =
      centreReesMonomial vI 1 ⟨(2 : surfaceRing valuationOneCurve), h2mem⟩ := by
    apply Subtype.ext
    rfl
  rw [htwo, xt_mul_num] at hpre
  obtain ⟨z, hz, hzI⟩ := yt_reesProd_two m (n + 1) (vX ^ n * (2 : surfaceRing valuationOneCurve))
    hN hpre
  have hz' : (2 : surfaceRing valuationOneCurve) * (vY ^ m * vX ^ n) =
      (2 : surfaceRing valuationOneCurve) * z := by
    calc
      (2 : surfaceRing valuationOneCurve) * (vY ^ m * vX ^ n)
          = vY ^ m * (vX ^ n * 2) := by ring
      _ = (2 : surfaceRing valuationOneCurve) * z := hz
  have hsub : (2 : surfaceRing valuationOneCurve) * (vY ^ m * vX ^ n - z) = 0 := by
    have hdiff : (2 : surfaceRing valuationOneCurve) * (vY ^ m * vX ^ n) -
        (2 : surfaceRing valuationOneCurve) * z = 0 := by
      rw [hz', sub_self]
    convert hdiff using 1
    ring
  have heq : vY ^ m * vX ^ n = z :=
    sub_eq_zero.mp (valuationOne_two_regular _ hsub)
  have hpow : (n + 1) + m = m + n + 1 := by
    calc
      (n + 1) + m = n + (1 + m) := by rw [Nat.add_assoc]
      _ = n + (m + 1) := by rw [Nat.add_comm 1 m]
      _ = n + m + 1 := by rw [← Nat.add_assoc]
      _ = m + n + 1 := by rw [Nat.add_comm n m]
  have hYm : vY ^ m * vX ^ n ∈ vI ^ (m + n + 1) := by
    rw [heq, ← hpow]
    exact hzI
  exact vY_pow_mul_vX_pow_not_mem m n hYm

/-- The image of `T` stays nonzero after inverting `S`. -/
theorem chartOverlap_T_ne_zero : overlapT ≠ 0 := by
  intro hzero
  have hmap : algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
      (chartYt_two_over_Y valuationOneCurve 0 0) = 0 := by
    simpa [overlapT] using hzero
  have hmap' :
      algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
          (chartYt_two_over_Y valuationOneCurve 0 0) =
        algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing 0 := by
    rw [hmap, map_zero]
  obtain ⟨n, hn⟩ :=
    IsLocalization.Away.exists_of_eq (S := chartOverlapRing)
      (chartYt_X_over_Y valuationOneCurve 0 0) hmap'
  have hkill : (chartYt_X_over_Y valuationOneCurve 0 0) ^ n *
      chartYt_two_over_Y valuationOneCurve 0 0 = 0 := by
    simpa [mul_zero] using hn
  exact chartYt_S_pow_mul_T_ne_zero n hkill

/-- `X·(X + V²)` stays nonzero on the overlap. It is the image of `T`
times the unit `V`. -/
theorem chartOverlap_nilpotent_ne_zero :
    overlapX * (overlapX + overlapV ^ 2) ≠ 0 := by
  intro hzero
  have hT : overlapT = 0 := by
    calc
      overlapT = 1 * overlapT := by ring
      _ = (overlapS * overlapV) * overlapT := by rw [chartOverlap_S_mul_V]
      _ = overlapS * (overlapV * overlapT) := by ring
      _ = overlapS * (overlapX * (overlapX + overlapV ^ 2)) := by
          rw [chartOverlap_nilpotent_eq]
      _ = overlapS * 0 := by rw [hzero]
      _ = 0 := by ring
  exact chartOverlap_T_ne_zero hT

end Beal.MathlibMissing
