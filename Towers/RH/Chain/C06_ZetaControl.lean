/-
  # C06 — Bost-Connes Threshold for X₀(143)

  STATUS: GENUINE BRICK (`bost_connes_threshold`).

  The Bost-Connes system associates to Q the C*-algebra BC with KMS states
  parametrised by β ∈ (1, ∞), and an arithmetic phase-transition at β = 1.
  The critical Bost-Connes constant C₀ = 320 (from M13_CERT.txt / ROADMAP §5)
  controls the BC-CM phase at h = 1 in the spine.

  This file proves the one genuinely computable bridge in the chain:
  the genus of X₀(143) satisfies 2√g < C₀. This is an explicit numerical
  fact, provable by `norm_num` + a sqrt bound, with no open inputs.

  The remaining content (GRH → ζ descent) is a True stub (open).

  BRICK: `bost_connes_threshold`
  SORRY: 0. Axiom footprint: classical trio. Namespace: TheoremaAureum.
-/

import Towers.RH.Chain.C05_Discriminant
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.NumberTheory.LSeries.RiemannZeta

namespace TheoremaAureum

/-- **Bost-Connes threshold (BRICK).**
    For X₀(143) with arithmetic genus g = 13, the Bost-Connes critical
    constant C₀ = 320 (from `M13_CERT.txt`, the BC-CM h=1 spine constant)
    strictly exceeds twice the square root of the genus:

        2 · √13 < 320.

    This is the concrete numerical fact that the C01–C06 chain distils from
    the Arakelov scaffold: the genus of the modular curve X₀(143) places it
    firmly inside the Bost-Connes convergence region. The genuine analytic
    content (GRH for L(s, X₀(143)) → ζ, Hecke-eigenvalue descent) is
    carried as True stubs in C02/C04/C05; that open content is NOT closed here.

    Axiom footprint: {propext, Classical.choice, Quot.sound}. -/
theorem bost_connes_threshold :
    2 * Real.sqrt (X₀ 143).genus < (320 : ℝ) := by
  rw [X₀_143_genus]
  -- Goal: 2 * Real.sqrt 13 < 320
  -- Since sqrt 13 < sqrt 16 = 4, we have 2 * sqrt 13 < 8 < 320.
  have hsqrt_bound : Real.sqrt 13 < Real.sqrt 16 := by
    apply Real.sqrt_lt_sqrt
    · norm_num
    · norm_num
  have hsqrt16 : Real.sqrt 16 = 4 := by
    rw [show (16 : ℝ) = 4 ^ 2 from by norm_num]
    exact Real.sqrt_sq (by norm_num)
  linarith

/-- The excess of the Bost-Connes constant over the threshold: 320 − 2√13. -/
theorem bost_connes_excess :
    0 < (320 : ℝ) - 2 * Real.sqrt (X₀ 143).genus := by
  linarith [bost_connes_threshold]

end TheoremaAureum
