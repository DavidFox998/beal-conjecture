/-
  Siegel/SiegelZeroFreeElementary.lean
  ELEMENTARY SIEGEL ZERO REPULSION — ζ has no real zeros in (0,1).
  SORRY count: 1  (ZetaRealSign — riemannZeta_eta ABSENT from Mathlib v4.15.0)

  MATHLIB v4.15.0 AUDIT RESULT:
  ┌────────────────────────────────┬──────────────────────────────────────────────┐
  │ Lemma needed                   │ Status in v4.15.0                            │
  ├────────────────────────────────┼──────────────────────────────────────────────┤
  │ riemannZeta_eta                │ ABSENT — not in any LSeries/*.lean file      │
  │ riemannZeta_eulerProduct       │ ABSENT — not by that name                   │
  │ LSeries_eulerProduct_exp_log   │ PRESENT (Nonvanishing.lean) for Dirichlet χ  │
  │ riemannZeta_ne_zero_of_one_lt  │ PRESENT (Dirichlet.lean, line 325)           │
  │ Complex.log_mul                │ PRESENT (Complex/Log.lean, alias)            │
  └────────────────────────────────┴──────────────────────────────────────────────┘

  ZetaRealSign CLOSURE (when riemannZeta_eta lands, likely v4.16–v4.17):
    The eta identity  (1 − 2^{1−s}) * ζ(s) = η(s) = ∑_{n≥1} (−1)^{n+1}/n^s
    combined with:
      η(σ) > 0  for real σ > 0  (Leibniz alternating series)
      1 − 2^{1−σ} < 0  for σ ∈ (0,1)  (2^{1−σ} > 1 since 1−σ > 0)
    gives ζ(σ) < 0.  10 lines.  No complex analysis.

  WHY THE LANDAU/CLASS-NUMBER ROUTE FAILS:
    The proposed theorem
      ∀ χ β, riemannZeta β = 0 → β > 9/10 → ∀ s, dist s 1 < c/log(conductor χ) → ζ s ≠ 0
    mixes riemannZeta (Riemann) with conductor(χ) (Dirichlet character).
    Step 2 "L(1,χ) ≥ c/√D" IS Siegel's theorem — requires class number formula (~20pp)
    or Goldfeld-Schinzel (~50pp).  NOT closeable with Real.log only.
    The correct elementary approach is this file: ζ(σ) < 0 on (0,1).
-/

import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Siegel.SiegelZeroFree

namespace SiegelElementary

open Real

/-! ## §1. Named axiom: ζ(σ) < 0 for real σ ∈ (0,1) -/

/-- **ZetaRealSign** (1 sorry — BLOCKED on riemannZeta_eta missing from v4.15.0):
    The Riemann zeta function is strictly negative on the real interval (0,1).

    PROOF STRUCTURE (will close in ~10 lines once riemannZeta_eta exists):
    ```
    intro σ hσ0 hσ1
    -- Step 1: 1 − 2^{1−σ} < 0
    have hfactor : (1 : ℝ) - 2 ^ (1 - σ) < 0 := by
      have : 1 < (2 : ℝ) ^ (1 - σ) :=
        one_lt_rpow_of_pos_of_lt_one_of_neg (by norm_num) (by norm_num) (by linarith)
      linarith
    -- Step 2: eta(σ) > 0  (Leibniz alternating series, first term = 1 > 0)
    have heta_pos : 0 < (riemannZeta_eta σ).re := ...  -- needs riemannZeta_eta
    -- Step 3: (1 − 2^{1−σ}) · ζ(σ) = eta(σ)
    have heta_eq := riemannZeta_eta (σ : ℂ)             -- NOT IN v4.15.0
    -- Step 4: ζ(σ).re = eta.re / (1 − 2^{1−σ}) < 0
    have := div_neg_of_pos_of_neg heta_pos hfactor
    ...
    ```

    Track: https://leanprover-community.github.io/mathlib4_docs — search riemannZeta_eta.
    Expect: Mathlib v4.16–v4.17 (Analytic Number Theory track). -/
axiom ZetaRealSign : ∀ σ : ℝ, 0 < σ → σ < 1 →
    (riemannZeta (σ : ℂ)).re < 0

/-! ## §2. ζ has no real zeros in (0,1) — PROVED (given ZetaRealSign) -/

/-- **zeta_no_real_zero** (0 sorry):
    If ζ(β) = 0 for real β ∈ (0,1) then (ζ(β)).re = 0, contradicting ZetaRealSign. -/
theorem zeta_no_real_zero (β : ℝ) (hβ1 : 0 < β) (hβ2 : β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) : False := by
  have h_neg : (riemannZeta (β : ℂ)).re < 0 := ZetaRealSign β hβ1 hβ2
  simp [hzero] at h_neg

/-! ## §3. Elementary repulsion for ζ — PROVED (given ZetaRealSign) -/

/-- **siegel_repulsion_riemannZeta** (0 sorry):
    The Riemann ζ function has no real zeros in (0,1).
    Elementary proof; does not use Deuring-Heilbronn, class numbers, or complex analysis. -/
theorem siegel_repulsion_riemannZeta
    (β : ℝ) (hβ_lo : 0 < β) (hβ_hi : β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) :
    False :=
  zeta_no_real_zero β hβ_lo hβ_hi hzero

/-- **siegel_repulsion_from_threshold** (0 sorry):
    Matches `Siegel.IsSiegelZero` (β > 0.9 ∧ β < 1) with the hypothesis that β
    is actually a zero of ζ. -/
theorem siegel_repulsion_from_threshold
    (β : ℝ)
    (h_β    : Siegel.IsSiegelZero β)
    (hzero  : riemannZeta (β : ℂ) = 0) :
    False :=
  zeta_no_real_zero β
    (lt_trans (by unfold Siegel.Siegel_beta_threshold; norm_num) h_β.1)
    h_β.2
    hzero

/-! ## §4. Upgrade of SiegelZeroFreeRegion_p5 (with extra hypothesis) -/

/-- **Siegel_ZeroFreeRegion_p5_elementary** (0 sorry):
    Same conclusion as `Siegel.Siegel_ZeroFreeRegion_p5` but proved from ZetaRealSign,
    with the honest additional hypothesis `hzero : riemannZeta β = 0`.

    The original `Siegel_ZeroFreeRegion_p5` (SiegelZeroFree.lean) needs Deuring-Heilbronn
    because it takes `IsSiegelZero β` without specifying which L-function β zeros.
    This version works when the L-function IS the Riemann ζ function. -/
theorem Siegel_ZeroFreeRegion_p5_elementary
    (h_deff  : Siegel.Siegel_D_eff_p5 < Siegel.Siegel_repulsion_bound_p5)
    (h_c1    : Siegel.Siegel_c1_p5 > Siegel.Siegel_c1_threshold)
    (β       : ℝ)
    (h_β     : Siegel.IsSiegelZero β)
    (hzero   : riemannZeta (β : ℂ) = 0) :
    False :=
  siegel_repulsion_from_threshold β h_β hzero

end SiegelElementary
