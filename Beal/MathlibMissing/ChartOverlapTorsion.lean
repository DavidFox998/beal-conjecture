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
The nilpotent read off the `Xt` shape is `X·(X + V²) = V·T`, the image of
the `Yt` nilpotent times the unit `V`. That principal ideal is the ideal
of the image of `T`. No new nilpotent is introduced.

`T` is not claimed to stay nonzero after inverting `S`. A unit `Y` on
this overlap would kill `T`. This file does not identify the overlap with
a localization of `D₊(Xt)`.
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

end Beal.MathlibMissing
