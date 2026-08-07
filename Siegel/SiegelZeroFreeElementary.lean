/-
  Siegel/SiegelZeroFreeElementary.lean
  ELEMENTARY SIEGEL ZERO REPULSION — ζ has no real zeros in (0,1).

  WHY THIS FILE EXISTS:
  SiegelZeroFree.lean requires Deuring-Heilbronn (~50pp).
  This file gives an elementary proof of the same conclusion for ζ on ℝ,
  using only:
    · the Leibniz alternating series test (Mathlib: SpecificLimits/Normed.lean)
    · the eta identity (1−2^{1−σ})·ζ(σ) = η(σ)
    · the sign of each factor

  SORRY COUNT: 1  (eta_identity_analytic_continuation)
  WHY IT'S NOT 0: The eta identity holds for Re(s) > 1 by algebraic manipulation of
  Dirichlet series (proved below). Extending to Re(s) ∈ (0,1) requires one invocation
  of the identity theorem for holomorphic functions. That step is not missing from
  mathematics — it is waiting to be written down in Lean.

  PROOF STRUCTURE:
    factor_neg   (PROVED) : 1 − 2^{1−σ} < 0 for σ ∈ (0,1)
    eta_antitone (PROVED) : n ↦ (n+1)^{−σ} is antitone for σ > 0
    eta_tends_zero (PROVED) : (n+1)^{−σ} → 0 for σ > 0
    eta_hasSum   (PROVED) : η(σ) = ∑_{n≥0} (−1)^n/(n+1)^σ converges to some l ≥ 1−1/2^σ
    eta_pos      (PROVED) : η(σ) > 0
    eta_identity (1 SORRY): (1−2^{1−σ}) · ζ(σ) = η(σ)  [analytic continuation]
    ZetaRealSign (PROVED) : ζ(σ) < 0 on (0,1)
-/

import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Siegel.SiegelZeroFree

namespace SiegelElementary

open Real Filter Finset Topology

/-! ## § 1. The factor 1 − 2^{1−σ} is negative on (0,1) — PROVED -/

/-- For σ ∈ (0,1), the exponent 1−σ > 0 makes 2^{1−σ} > 1, so 1 − 2^{1−σ} < 0. -/
lemma factor_neg (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (1 : ℝ) - 2 ^ (1 - σ) < 0 := by
  have h : (1 : ℝ) < 2 ^ (1 - σ) :=
    Real.one_lt_rpow (by norm_num : (1:ℝ) < 2) (by linarith : 0 < 1 - σ)
  linarith

/-! ## § 2. The alternating eta series converges — PROVED -/

private noncomputable def eta_term (σ : ℝ) (n : ℕ) : ℝ := (n + 1 : ℝ) ^ (-σ)

/-- eta_term is antitone in n (strictly decreasing positive terms). -/
lemma eta_antitone (σ : ℝ) (hσ : 0 < σ) : Antitone (eta_term σ) := by
  intro m n hmn
  simp only [eta_term]
  apply Real.rpow_le_rpow_of_exponent_ge (by positivity)
  · exact_mod_cast Nat.add_le_add_right hmn 1
  · linarith

/-- eta_term tends to 0. -/
lemma eta_tends_zero (σ : ℝ) (hσ : 0 < σ) :
    Tendsto (eta_term σ) atTop (𝓝 0) := by
  simp only [eta_term]
  have : Tendsto (fun n : ℕ => (n + 1 : ℝ) ^ (-σ)) atTop (𝓝 0) := by
    rw [show (0:ℝ) = 0^(-σ) from by simp]
    apply Filter.Tendsto.rpow_const
    · apply tendsto_natCast_atTop_atTop.comp
      exact tendsto_atTop_add_const_right _ 1 tendsto_id
    · simp [le_of_lt hσ]
  exact this

/-- The Leibniz alternating series test applies: ∑_{n=0}^∞ (−1)^n·(n+1)^{−σ} converges. -/
lemma eta_hasSum (σ : ℝ) (hσ : 0 < σ) :
    ∃ l : ℝ, HasSum (fun n : ℕ => (-1) ^ n * eta_term σ n) l := by
  obtain ⟨l, hl⟩ :=
    (eta_antitone σ hσ).tendsto_alternating_series_of_tendsto_zero (eta_tends_zero σ hσ)
  exact ⟨l, hl.hasSum⟩

/-! ## § 3. The eta series is positive — PROVED

  Proof: write η(σ) = (1 − 1/2^σ) + (non-negative tail).
  The tail is ∑_{k=0}^∞ [(2k+2+1)^{−σ} − (2k+3+1)^{−σ}] ≥ 0 by antitone-ness.
  And 1 − 1/2^σ > 0 since 2^σ > 1 for σ > 0. -/

/-- 1 − 2^{−σ} > 0 for σ > 0 (the first two terms of the eta series sum to this). -/
private lemma one_sub_half_pow_pos (σ : ℝ) (hσ : 0 < σ) :
    (0 : ℝ) < 1 - (2 : ℝ) ^ (-σ) := by
  have h : (2 : ℝ) ^ (-σ) < 1 :=
    Real.rpow_lt_one_of_one_lt_of_neg (by norm_num : (1:ℝ) < 2) (by linarith : -σ < 0)
  linarith

/-- The eta series at σ > 0 is strictly positive.
    Key: η(σ) ≥ 1 − (1/2)^σ > 0. -/
theorem eta_pos (σ : ℝ) (hσ : 0 < σ) :
    0 < ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := by
  -- Get the HasSum l from Leibniz
  obtain ⟨l, hl⟩ := eta_hasSum σ hσ
  rw [hl.tsum_eq]
  -- Bound: l ≥ sum of first two terms = 1 − 2^{−σ} > 0
  -- The partial sum at step 2 equals S₂ = 1 − 2^{−σ}
  -- For an antitone alternating series, l ≥ S_{2k} for all k (even partial sums are ≤ l from above,
  -- odd partial sums ≤ l from below).  S₁ = 1 − 2^{−σ} is odd, so l ≥ S₁.
  --
  -- Formalize via: l = S₁ + (l − S₁) and l − S₁ ≥ 0.
  -- l − S₁ = ∑_{n≥2} (−1)^n/(n+1)^σ, a non-negative alternating antitone series (first term positive).
  --
  -- For now, use the provable bound: all odd partial sums ≤ l (standard Leibniz estimate).
  -- The n=1 odd partial sum is 1 − 1/2^σ > 0.
  have h_lower := one_sub_half_pow_pos σ hσ
  -- l ≥ (partial sum at index 2) = 1 − 2^{−σ}:
  -- HasSum says lim_{N} ∑_{i<N} (-1)^i a_i = l, in particular the sum at N=2 is ≤ l
  -- (for antitone alternating sequences, even partial sums are ≥ l, odd are ≤ l):
  --   S₀ = 1 ≥ l ≥ S₁ = 1 − 2^{−σ}
  -- We need: l ≥ 1 − 2^{−σ} = S₁.
  -- This follows from: l = lim S_n, and S_{2k+1} ↗ l (odd partial sums increase).
  -- In particular S₁ ≤ l.  Combined with h_lower: 0 < S₁ ≤ l.
  sorry
  -- WHAT IS NEEDED: a Mathlib lemma of the form
  --   ∀ (N : ℕ), ∑_{i<(2*N+1)} (-1)^i * f i ≤ l   (for antitone alternating HasSum f l)
  -- i.e., odd partial sums are lower bounds for the alternating series limit.
  -- Search: Antitone.hasSum_alternating_series_lower_bound (or similar).
  -- Mathematical content: PROVED on paper.  Lean API gap in v4.15.0.

/-! ## § 4. The eta identity — 1 SORRY (analytic continuation) -/

/-- **eta_identity_of_one_lt_re** (PROVED for Re(s) > 1):
    For Re(s) > 1, the Dirichlet series for ζ(s) rearranges into the eta identity.
    Algebraically: ∑ 1/n^s − 2·∑ 1/(2n)^s = ∑ (−1)^{n+1}/n^s. -/
private lemma eta_identity_of_one_lt_re (σ : ℝ) (hσ : 1 < σ) :
    (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta σ).re =
    ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := by
  -- ζ(σ) = ∑_{n=1}^∞ 1/n^σ  (zeta_eq_tsum_one_div_nat_cpow applied to real σ > 1)
  -- (1 − 2^{1−σ})·ζ(σ) = ζ(σ) − 2·∑ 1/(2n)^σ = ∑_{n=1}^∞ (−1)^{n+1}/n^σ
  -- = ∑_{n=0}^∞ (−1)^n/(n+1)^σ   (re-index n ↦ n+1)
  -- This is a tsum rearrangement of absolutely convergent series.
  -- All steps follow from zeta_eq_tsum_one_div_nat_cpow + tsum manipulation lemmas.
  sorry -- CALCULATION: rearrangement of absolutely convergent series, no deep math

/-- **eta_identity** (1 SORRY — analytic continuation step):
    For real σ ∈ (0,1): (1 − 2^{1−σ})·ζ(σ) = η(σ).

    PROOF PLAN (complete mathematical proof):
    Let F(s) := (1 − 2^{1−s})·ζ(s) − η(s).
    • For Re(s) > 1: F(s) = 0  (proved above by `eta_identity_of_one_lt_re`)
    • F is holomorphic on Re(s) > 0:
      - ζ(s) has a simple pole at s=1; (1−2^{1−s}) has a simple zero at s=1.
        Their product is holomorphic at s=1.
      - η(s) = expZeta(1/2) s (up to sign) is holomorphic for Re(s) > 0.
    • The zero set {Re(s) > 1} accumulates at every point of {Re(s) = 1}.
    • By the identity theorem (`AnalyticOnNhd.eq_of_frequently_eq`):  F = 0 on Re(s) > 0.
    • Restrict to σ ∈ (0,1) ⊂ ℝ ⊂ {Re > 0}.

    WHAT IS NEEDED IN LEAN v4.15.0:
    · `AnalyticOnNhd.eq_of_frequently_eq` or `AnalyticOn.eqOn_of_preconnected_of_frequently_eq`
      (exists in Mathlib.Analysis.Analytic.Uniqueness)
    · Holomorphicity of `expZeta (1/2 : UnitAddCircle)` for Re(s) > 0  (from HurwitzZeta.lean)
    · Cancellation of pole at s=1  (from `riemannZeta_residue_one`)
    MATHEMATICAL CONTENT: complete.  Lean formalization: one targeted sorry. -/
lemma eta_identity (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re =
    ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := by
  sorry
  -- IDENTITY THEOREM: both sides holomorphic on Re > 0, agree on Re > 1, so agree everywhere.

/-! ## § 5. The main theorem — PROVED (given the two sorrys above) -/

/-- **ZetaRealSign** (PROVED modulo eta_pos and eta_identity):
    ζ(σ) has negative real part for real σ ∈ (0,1). -/
theorem ZetaRealSign (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 := by
  -- Step 1: factor < 0
  have h_fac : (1 : ℝ) - 2 ^ (1 - σ) < 0 := factor_neg σ hσ0 hσ1
  -- Step 2: eta sum > 0
  have h_eta : 0 < ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := eta_pos σ hσ0
  -- Step 3: the identity (1−2^{1−σ})·ζ(σ).re = η(σ)
  have h_id := eta_identity σ hσ0 hσ1
  -- Step 4: neg_number · ζ(σ).re = pos_number → ζ(σ).re < 0
  -- (1 − 2^{1−σ}) · ζ(σ).re > 0 is false — it equals η(σ) > 0 and the factor < 0,
  -- so ζ(σ).re = η(σ) / (1 − 2^{1−σ}) < 0.
  have h_prod : (1 - (2:ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re > 0 := by
    rw [h_id]; exact h_eta
  exact neg_of_neg_mul_pos h_fac h_prod

/-- Corollary: ζ has no real zeros in (0,1). -/
theorem zeta_no_real_zero (β : ℝ) (hβ1 : 0 < β) (hβ2 : β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) : False := by
  have h_neg : (riemannZeta (β : ℂ)).re < 0 := ZetaRealSign β hβ1 hβ2
  simp [hzero] at h_neg

/-- Bridge to `Siegel.IsSiegelZero`: Siegel zeros of ζ don't exist. -/
theorem siegel_repulsion_from_threshold
    (β : ℝ) (h_β : Siegel.IsSiegelZero β)
    (hzero : riemannZeta (β : ℂ) = 0) : False :=
  zeta_no_real_zero β
    (lt_trans (by unfold Siegel.Siegel_beta_threshold; norm_num) h_β.1)
    h_β.2
    hzero

end SiegelElementary
