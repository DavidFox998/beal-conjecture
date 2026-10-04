import Beal.MathlibMissing.ChartXtPresentation
import Beal.MathlibMissing.ChartYtPresentation

/-!
Glue of the `D₊(Yt)` and `D₊(Xt)` torsion presentations on the overlap.

The overlap is `D₊(Yt)` with the Rees denominator `S = Xt/Yt` inverted.
`V = S⁻¹` is a unit there. There is no ring map from `D₊(Xt)`.

`chartOfCuspY` presents `D₊(Yt)` as the image of
`𝔽₂[a,b][Y,S] / (Y²·(1 − Y·S³))`, and `1 + Y·S³` annihilates every
`Y³·F`. `chartOfCuspX` presents `D₊(Xt)` as the image of
`𝔽₂[a,b][X,V] / (X²·(X + V²))`, and `X²` annihilates every
`(X + V²)·F`. Neither equivalence is restated.

On the overlap the two factor ideals agree, so
`(1 + Y·S³)` and `X + V²` have the same annihilator. The unit `V`
identifies the two powers: `Y² = V²·X²` and `X² = S²·Y²`, so `X²` and
`Y²` generate the same ideal and have the same annihilator. Both
presentation bounds hold for every element of the overlap:
`(1 + Y·S³)·Y³·z = 0` and `X²·(X + V²)·z = 0`. The common nilpotent
`X·(X + V²) = V·T` stays nonzero.

The annihilator of `1 + Y·S³` is not the annihilator of `X²`.
`Y²` kills `1 + Y·S³`, and `Y²·X² = Y⁴·S²` stays nonzero.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

/-- `V` is a unit, and `Y = X·V`, so `X²` and `Y²` generate the same ideal. -/
theorem glue_power_ideal :
    Ideal.span ({overlapX ^ 2} : Set chartOverlapRing) =
      Ideal.span ({overlapY ^ 2} : Set chartOverlapRing) := by
  apply le_antisymm
  · rw [Ideal.span_singleton_le_span_singleton]
    refine ⟨overlapS ^ 2, ?_⟩
    rw [chartOverlap_X_eq]
    ring
  · rw [Ideal.span_singleton_le_span_singleton]
    refine ⟨overlapV ^ 2, ?_⟩
    rw [chartOverlap_Y_eq_X_mul_V]
    ring

/-- The unit `V` identifies the annihilators of `X²` and `Y²`. -/
theorem glue_power_annihilator :
    (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator =
      (Ideal.span ({overlapY ^ 2} : Set chartOverlapRing)).annihilator := by
  rw [glue_power_ideal]

/-- The `Yt` presentation bound survives inverting `S`. -/
theorem glue_Yt_high_piece (F : chartYtCuspPoly) :
    (1 + overlapY * overlapS ^ 3) *
      algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
        (chartOfCuspY
          (Ideal.Quotient.mk chartYtCuspIdeal
            ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F))) = 0 := by
  unfold overlapY overlapS
  simpa [map_mul, map_add, map_one, map_pow, map_zero] using
    congrArg
      (algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing)
      (chartYt_high_piece_annihilator F)

/-- `(1 + Y·S³)` annihilates `Y³·z` for every overlap element. -/
theorem glue_Yt_high_piece_all (z : chartOverlapRing) :
    (1 + overlapY * overlapS ^ 3) * (overlapY ^ 3 * z) = 0 := by
  calc
    (1 + overlapY * overlapS ^ 3) * (overlapY ^ 3 * z) =
        (overlapY ^ 2 * (1 + overlapY * overlapS ^ 3)) * (overlapY * z) := by ring
    _ = 0 * (overlapY * z) := by rw [chartOverlap_cusp_zero]
    _ = 0 := by ring

/-- `X²` annihilates `(X + V²)·z` for every overlap element. This is the
`Xt` presentation bound, read on the overlap. `chartOfCuspX` is not
pushed across a map from `D₊(Xt)`. -/
theorem glue_Xt_high_piece (z : chartOverlapRing) :
    overlapX ^ 2 * ((overlapX + overlapV ^ 2) * z) = 0 := by
  calc
    overlapX ^ 2 * ((overlapX + overlapV ^ 2) * z) =
        (overlapX ^ 2 * (overlapX + overlapV ^ 2)) * z := by ring
    _ = 0 * z := by rw [chartOverlap_Xt_cusp_zero]
    _ = 0 := by ring

/-- `X²` lies in the annihilator of `1 + Y·S³`. -/
theorem glue_X_sq_mem_factor_annihilator :
    overlapX ^ 2 ∈
      (Ideal.span
        ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator := by
  rw [Submodule.mem_annihilator]
  intro y hy
  rw [Ideal.mem_span_singleton] at hy
  rcases hy with ⟨c, rfl⟩
  rw [smul_eq_mul]
  have hprod : overlapX ^ 2 * (1 + overlapY * overlapS ^ 3) = 0 := by
    calc
      overlapX ^ 2 * (1 + overlapY * overlapS ^ 3) =
          overlapX ^ 2 * (overlapS ^ 2 * (overlapX + overlapV ^ 2)) := by
            rw [chartOverlap_factor_Y_eq]
      _ = overlapS ^ 2 * (overlapX ^ 2 * (overlapX + overlapV ^ 2)) := by ring
      _ = overlapS ^ 2 * 0 := by rw [chartOverlap_Xt_cusp_zero]
      _ = 0 := by ring
  calc
    overlapX ^ 2 * ((1 + overlapY * overlapS ^ 3) * c) =
        (overlapX ^ 2 * (1 + overlapY * overlapS ^ 3)) * c := by ring
    _ = 0 * c := by rw [hprod]
    _ = 0 := by ring

/-- `Y²·X² = Y⁴·S²` stays nonzero on the overlap, so `Y²` does not kill `X²`. -/
theorem glue_Y_sq_mul_X_sq_ne_zero :
    overlapY ^ 2 * overlapX ^ 2 ≠ 0 := by
  intro hzero
  have hpoly : overlapY ^ 2 * overlapX ^ 2 = overlapY ^ 4 * overlapS ^ 2 := by
    rw [chartOverlap_X_eq]
    ring
  rw [hpoly] at hzero
  have hmap :
      algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
        ((chartYt_Y valuationOneCurve 0 0) ^ 4 *
          (chartYt_X_over_Y valuationOneCurve 0 0) ^ 2) = 0 := by
    simpa [overlapY, overlapS, map_mul, map_pow] using hzero
  have hmap' :
      algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
          ((chartYt_Y valuationOneCurve 0 0) ^ 4 *
            (chartYt_X_over_Y valuationOneCurve 0 0) ^ 2) =
        algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing 0 := by
    rw [hmap, map_zero]
  obtain ⟨n, hn⟩ :=
    IsLocalization.Away.exists_of_eq (S := chartOverlapRing)
      (chartYt_X_over_Y valuationOneCurve 0 0) hmap'
  have hkill :
      (chartYt_X_over_Y valuationOneCurve 0 0) ^ n *
        ((chartYt_Y valuationOneCurve 0 0) ^ 4 *
          (chartYt_X_over_Y valuationOneCurve 0 0) ^ 2) = 0 := by
    simpa [mul_zero] using hn
  have heq :
      (chartYt_X_over_Y valuationOneCurve 0 0) ^ n *
        ((chartYt_Y valuationOneCurve 0 0) ^ 4 *
          (chartYt_X_over_Y valuationOneCurve 0 0) ^ 2) =
        (chartYt_Y valuationOneCurve 0 0) ^ 4 *
          (chartYt_X_over_Y valuationOneCurve 0 0) ^ (n + 2) := by
    rw [pow_add]
    ring
  rw [heq] at hkill
  exact chartYt_monomial_ne_zero 4 (n + 2) hkill

/-- `Y²` kills `1 + Y·S³` and does not kill `X²`, so those annihilators differ. -/
theorem glue_factor_annihilator_ne_power_annihilator :
    (Ideal.span
        ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator ≠
      (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator := by
  intro heq
  have hmem :
      overlapY ^ 2 ∈
        (Ideal.span
          ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator := by
    rw [Submodule.mem_annihilator]
    intro y hy
    rw [Ideal.mem_span_singleton] at hy
    rcases hy with ⟨c, rfl⟩
    rw [smul_eq_mul]
    calc
      overlapY ^ 2 * ((1 + overlapY * overlapS ^ 3) * c) =
          (overlapY ^ 2 * (1 + overlapY * overlapS ^ 3)) * c := by ring
      _ = 0 * c := by rw [chartOverlap_cusp_zero]
      _ = 0 := by ring
  rw [heq] at hmem
  have hx : overlapX ^ 2 ∈ Ideal.span ({overlapX ^ 2} : Set chartOverlapRing) :=
    Ideal.subset_span (Set.mem_singleton _)
  have hsmul := (Submodule.mem_annihilator.mp hmem) _ hx
  rw [smul_eq_mul] at hsmul
  exact glue_Y_sq_mul_X_sq_ne_zero hsmul

/-- On the overlap the factor annihilators agree, and the unit `V` makes
the power annihilators agree. Both presentation bounds hold, and
`X·(X + V²)` stays nonzero. -/
theorem glue_presentations :
    (Ideal.span
        ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator =
      (Ideal.span
        ({overlapX + overlapV ^ 2} : Set chartOverlapRing)).annihilator ∧
    (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator =
      (Ideal.span ({overlapY ^ 2} : Set chartOverlapRing)).annihilator ∧
    (∀ F : chartYtCuspPoly,
      (1 + overlapY * overlapS ^ 3) *
        algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
          (chartOfCuspY
            (Ideal.Quotient.mk chartYtCuspIdeal
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F))) = 0) ∧
    (∀ z : chartOverlapRing,
      overlapX ^ 2 * ((overlapX + overlapV ^ 2) * z) = 0) ∧
    overlapX * (overlapX + overlapV ^ 2) ≠ 0 :=
  ⟨chartOverlap_same_annihilator, glue_power_annihilator,
    glue_Yt_high_piece, glue_Xt_high_piece, chartOverlap_nilpotent_ne_zero⟩

#print axioms Beal.MathlibMissing.glue_power_ideal
#print axioms Beal.MathlibMissing.glue_power_annihilator
#print axioms Beal.MathlibMissing.glue_Yt_high_piece
#print axioms Beal.MathlibMissing.glue_Yt_high_piece_all
#print axioms Beal.MathlibMissing.glue_Xt_high_piece
#print axioms Beal.MathlibMissing.glue_X_sq_mem_factor_annihilator
#print axioms Beal.MathlibMissing.glue_Y_sq_mul_X_sq_ne_zero
#print axioms Beal.MathlibMissing.glue_factor_annihilator_ne_power_annihilator
#print axioms Beal.MathlibMissing.glue_presentations

end Beal.MathlibMissing
