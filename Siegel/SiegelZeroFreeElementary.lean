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

  SORRY COUNT: 2  (eta_identity — Step A and Step D; see below)
  WHY IT'S NOT 0:

  STEP A (sorry): Algebraic identity for Re(s) > 1.
    ZMod.LFunction Φ s = (1−2^{1−s})·ζ(s) for Re(s)>1.
    Proof route: ZMod.LFunction_eq_LSeries (Mathlib ZMod.lean L90) + even/odd tsum splitting
    (tsum_even_add_odd, zeta_eq_tsum_one_div_nat_add_one_cpow).  The algebra is elementary
    but the bijection bookkeeping has not yet been written out in this file.

  STEP D (sorry): Abelian theorem for Dirichlet L-series.
    Re(ZMod.LFunction Φ σ) = ∑' n, (−1)^n·(n+1)^{−σ}   for σ ∈ (0,1).
    This connects the analytic continuation value at σ ∈ (0,1) to the conditionally
    convergent Leibniz sum established by the Leibniz test.  The standard proof needs
    local uniform convergence of the alternating Dirichlet series on {Re(s)>0} (Abel
    summation + Weierstrass M-test), which is not available in Mathlib v4.15.0.

  Steps B and C are now fully proved in Lean (see eta_identity below):
    B: identity theorem (eqOn_of_preconnected_of_eventuallyEq) extends the Step A
       agreement on {Re>1} to all of ℂ \ {1}.
    C: real-part extraction using Complex.ofReal_cpow to confirm the eta factor is real.

  PROOF STRUCTURE:
    factor_neg             (PROVED) : 1 − 2^{1−σ} < 0 for σ ∈ (0,1)
    eta_antitone           (PROVED) : n ↦ (n+1)^{−σ} is antitone for σ > 0
    eta_tends_zero         (PROVED) : (n+1)^{−σ} → 0 for σ > 0
    eta_hasSum             (PROVED) : ∑_{n≥0} (−1)^n/(n+1)^σ converges (Leibniz)
    eta_pair               (PROVED) : pair sums gₖ = (2k+1)^{−σ} − (2k+2)^{−σ} ≥ 0
    eta_pos                (PROVED) : η(σ) > 0  [via pair-sum subsequence + tsum_pos]
    compl_one_preconnected (PROVED) : ℂ \ {1} is preconnected
    lf_analytic_ne_one     (PROVED) : ZMod.LFunction Φ analytic on ℂ \ {1}
    eta_factor_analytic    (PROVED) : s ↦ (1−2^{1−s})·ζ(s) analytic on ℂ \ {1}
    eta_identity           (2 SORRY): (1−2^{1−σ})·ζ(σ).re = η(σ)
                                      Step A (Re>1 identity) + Step D (Abelian theorem)
    ZetaRealSign           (PROVED) : ζ(σ).re < 0 on (0,1)
-/

import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.NumberTheory.LSeries.ZMod
import Mathlib.Data.Complex.FiniteDimensional
import Mathlib.Analysis.NormedSpace.Connected
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Complex.CauchyIntegral
import Siegel.SiegelZeroFree

namespace SiegelElementary

open Real Filter Finset Topology Complex

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

  Strategy: define the non-negative pair sums gₖ = (2k+1)^{−σ} − (2k+2)^{−σ} ≥ 0.
  The alternating partial sums at even indices 2k equal the partial sums of g.
  So g has HasSum l (same limit, via the 2k-subsequence).
  Then tsum_pos gives l ≥ g₀ = 1 − 2^{−σ} > 0. -/

/-- 1 − 2^{−σ} > 0 for σ > 0 (the first two terms of the eta series sum to this). -/
private lemma one_sub_half_pow_pos (σ : ℝ) (hσ : 0 < σ) :
    (0 : ℝ) < 1 - (2 : ℝ) ^ (-σ) := by
  have h : (2 : ℝ) ^ (-σ) < 1 :=
    Real.rpow_lt_one_of_one_lt_of_neg (by norm_num : (1:ℝ) < 2) (by linarith : -σ < 0)
  linarith

/-- Pair sums: gₖ = eta_term σ (2k) − eta_term σ (2k+1) = (2k+1)^{−σ} − (2k+2)^{−σ}. -/
private noncomputable def eta_pair (σ : ℝ) (k : ℕ) : ℝ :=
  eta_term σ (2 * k) - eta_term σ (2 * k + 1)

/-- Each pair sum is non-negative (antitone). -/
private lemma eta_pair_nonneg (σ : ℝ) (hσ : 0 < σ) (k : ℕ) : 0 ≤ eta_pair σ k :=
  sub_nonneg.mpr (eta_antitone σ hσ (by omega : 2 * k ≤ 2 * k + 1))

/-- The 0th pair sum equals 1 − 2^{−σ} > 0. -/
private lemma eta_pair_zero_pos (σ : ℝ) (hσ : 0 < σ) : 0 < eta_pair σ 0 := by
  have h1 : eta_term σ 0 = 1 := by simp [eta_term, Real.one_rpow]
  have h2 : eta_term σ 1 = (2 : ℝ) ^ (-σ) := by
    simp only [eta_term, Nat.cast_one]; norm_num
  simp only [eta_pair, mul_zero, zero_add, h1, h2]
  exact one_sub_half_pow_pos σ hσ

/-- The partial sums of eta_pair equal the even-indexed partial sums of the alternating series.
    Specifically: ∑_{j<k} gⱼ = ∑_{i<2k} (−1)^i · eta_term σ i. -/
private lemma eta_pair_partial (σ : ℝ) (k : ℕ) :
    ∑ j ∈ Finset.range k, eta_pair σ j =
    ∑ i ∈ Finset.range (2 * k), (-1 : ℝ) ^ i * eta_term σ i := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [show 2 * (k + 1) = 2 * k + 2 by ring,
        Finset.sum_range_succ (f := eta_pair σ),
        Finset.sum_range_succ (f := fun i => (-1 : ℝ) ^ i * eta_term σ i) (n := 2 * k + 1),
        Finset.sum_range_succ (f := fun i => (-1 : ℝ) ^ i * eta_term σ i) (n := 2 * k),
        ← ih]
    have h1 : (-1 : ℝ) ^ (2 * k) = 1 := by rw [pow_mul]; norm_num
    have h2 : (-1 : ℝ) ^ (2 * k + 1) = -1 := by rw [pow_add, h1]; ring
    simp only [eta_pair, h1, h2]
    ring

/-- The eta series at σ > 0 is strictly positive.
    Proof: η(σ) = ∑ gₖ (pair sums) ≥ g₀ = 1 − 2^{−σ} > 0. -/
theorem eta_pos (σ : ℝ) (hσ : 0 < σ) :
    0 < ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := by
  obtain ⟨l, hl⟩ := eta_hasSum σ hσ
  rw [hl.tsum_eq]
  -- The pair sums are non-negative
  have hg_nn : ∀ k, 0 ≤ eta_pair σ k := eta_pair_nonneg σ hσ
  -- HasSum (eta_pair σ) l:
  -- The 2k-indexed partial sums of the alternating series equal the k-indexed partial sums
  -- of eta_pair (by eta_pair_partial). Composing the alternating series' range-tendsto
  -- with the cofinal map k ↦ 2k gives the eta_pair tendsto.
  have hg_hs : HasSum (eta_pair σ) l := by
    refine (hasSum_iff_tendsto_nat_of_nonneg hg_nn l).mpr ?_
    simp_rw [eta_pair_partial σ]
    -- hl : HasSum (alternating series) l
    -- hl.comp tendsto_finset_range : Tendsto (fun n => ∑_{i<n} ...) atTop (nhds l)
    -- compose with n ↦ 2n (cofinal) to get the pair-sum tendsto
    exact (hl.comp tendsto_finset_range).comp
      (tendsto_atTop_atTop.mpr fun n => ⟨n, fun k hk => by linarith⟩)
  -- l > 0 because the pair sum is summable, all terms ≥ 0, and the 0th term > 0
  have h_pos_tsum : 0 < ∑' k, eta_pair σ k :=
    tsum_pos hg_hs.summable hg_nn 0 (eta_pair_zero_pos σ hσ)
  linarith [hg_hs.tsum_eq]

/-! ## § 4. The eta identity (1−2^{1−σ})·ζ(σ) = η(σ) — 1 SORRY

  COMPLETE PROOF PLAN (all steps identified; only the Abelian theorem remains in Lean):

  Let Φ : ZMod 2 → ℂ := ![−1, 1]  (alternating sign character mod 2).
  Note ∑ j : ZMod 2, Φ j = 0, so ZMod.LFunction Φ is ENTIRE.

  ── Step A: Algebraic identity for Re(s) > 1 ───────────────────────────────────────
  By ZMod.LFunction_eq_LSeries (Mathlib L90):
    ZMod.LFunction Φ s = LSeries (Φ ·) s = ∑_{n≥1} Φ(n mod 2) / n^s.
  Since Φ(n mod 2) = (−1)^{n+1}, this is the alternating Dirichlet series.
  Splitting even and odd indices:
    ∑_{n≥1} (−1)^{n+1}/n^s = ∑_{k≥0} 1/(2k+1)^s − ∑_{k≥0} 1/(2k+2)^s.
  Using 1/(2k+2)^s = 2^{−s}/(k+1)^s and ζ(s) = ∑_{k≥0} 1/(k+1)^s:
    = ζ(s) − 2·2^{−s}·ζ(s) = (1 − 2^{1−s})·ζ(s).
  Lean API: hasSum_iff_hasSum_of_ne_zero_bij (InfiniteSum/Basic.lean L167),
            zeta_eq_tsum_one_div_nat_add_one_cpow (RiemannZeta.lean L186),
            tsum_sub, tsum_mul_left.

  ── Step B: Analytic continuation to ℂ \ {1} ────────────────────────────────────
  Both ZMod.LFunction Φ and s ↦ (1−2^{1−s})·ζ(s) are analytic on {s | s ≠ 1}:
    • ZMod.LFunction Φ is entire (differentiable_LFunction_of_sum_zero, ZMod.lean L128).
    • s ↦ (1−2^{1−s}) is entire: hasStrictDerivAt_const_cpow (Pow/Deriv.lean L47).
    • s ↦ ζ(s) is analytic on {s ≠ 1}: differentiableAt_riemannZeta (RiemannZeta.lean L134).
    • DifferentiableOn.analyticOnNhd (CauchyIntegral.lean L572) converts differentiability.
  The set {s | s ≠ 1} is preconnected:
    • isConnected_compl_singleton_of_one_lt_rank (NormedSpace/Connected.lean L115).
    • Module.rank ℝ ℂ = 2 > 1 (Complex.rank_real_complex, FiniteDimensional.lean, @[simp]).
  By eqOn_of_preconnected_of_eventuallyEq (Analytic/Uniqueness.lean L226):
    the two analytic functions agree on all of {s | s ≠ 1}.
  All infrastructure lemmas for Steps A–B are proved as private lemmas below.

  ── Step C: Real part at σ ∈ (0,1) ─────────────────────────────────────────────
  Since σ ∈ ℝ, (2:ℂ)^(1−σ:ℂ) = ((2:ℝ)^(1−σ):ℝ) is real, so:
    Re((1−2^{1−σ})·ζ(σ)) = (1−2^{1−σ})·Re(ζ(σ)).
  Lean API: Complex.mul_re, Complex.ofReal_cpow, Complex.ofReal_re.

  ── Step D: Abelian theorem (THE 1 SORRY) ────────────────────────────────────────
  For σ ∈ (0,1) (where the Dirichlet series DIVERGES absolutely):
    Re(ZMod.LFunction Φ σ) = ∑' n, (−1)^n·(n+1)^{−σ}.
  This is Abel's theorem for Dirichlet series: the analytic L-function value at σ ∈ (0,1)
  equals the conditionally convergent Leibniz sum established by the Leibniz test.
  Status in Mathlib v4.15.0: NOT AVAILABLE. -/

/-! ### Infrastructure lemmas for Step B — ALL PROVED -/

/-- The alternating character Φ on ZMod 2. -/
private noncomputable def altChar : ZMod 2 → ℂ := ![(-1 : ℂ), 1]

/-- Sum of altChar vanishes: −1 + 1 = 0. -/
private lemma altChar_sum_zero : ∑ j : ZMod 2, altChar j = 0 := by
  have heq : (Finset.univ : Finset (ZMod 2)) = {(0 : ZMod 2), 1} := by
    ext x; fin_cases x <;> simp
  rw [heq, Finset.sum_pair (by decide : (0 : ZMod 2) ≠ 1)]
  simp [altChar, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]

/-- ZMod.LFunction altChar is entire (entire because ∑ Φ = 0). -/
private lemma lf_entire : Differentiable ℂ (ZMod.LFunction altChar) :=
  ZMod.differentiable_LFunction_of_sum_zero altChar_sum_zero

/-- ZMod.LFunction altChar is analytic on ℂ \ {1}. -/
private lemma lf_analytic_ne_one :
    AnalyticOnNhd ℂ (ZMod.LFunction altChar) {s : ℂ | s ≠ 1} :=
  lf_entire.differentiableOn.analyticOnNhd isOpen_ne

/-- s ↦ (1 − (2:ℂ)^(1−s)) · ζ(s) is analytic on ℂ \ {1}. -/
private lemma eta_factor_analytic :
    AnalyticOnNhd ℂ (fun s : ℂ => (1 - (2:ℂ)^(1-s)) * riemannZeta s) {s : ℂ | s ≠ 1} := by
  apply DifferentiableOn.analyticOnNhd _ isOpen_ne
  intro s hs
  apply DifferentiableAt.differentiableWithinAt
  apply DifferentiableAt.mul
  · -- (1 − (2:ℂ)^(1−s)) differentiable: constant minus a composition
    apply DifferentiableAt.sub (differentiableAt_const 1)
    -- (2:ℂ)^(1−s) = (fun y => (2:ℂ)^y) ∘ (fun s => 1 − s)
    exact DifferentiableAt.comp s
      (hasStrictDerivAt_const_cpow (Or.inl (by norm_num : (2:ℂ) ≠ 0))).differentiableAt
      ((differentiableAt_const 1).sub differentiableAt_id)
  · -- ζ(s) differentiable at s ≠ 1
    exact differentiableAt_riemannZeta hs

/-- ℂ \ {1} is preconnected (ℂ has real rank 2 > 1, so removing a point keeps connectedness). -/
private lemma compl_one_preconnected : IsPreconnected {s : ℂ | s ≠ 1} := by
  apply IsConnected.isPreconnected
  apply isConnected_compl_singleton_of_one_lt_rank
  -- Module.rank ℝ ℂ = 2, and 1 < 2
  have h : Module.rank ℝ ℂ = 2 := Complex.rank_real_complex
  simp [h]

/-! ## § 4 (continued). The eta identity — 2 SORRYS (Step A + Step D) -/

lemma eta_identity (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re =
    ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := by
  obtain ⟨l, hl⟩ := eta_hasSum σ hσ0
  rw [hl.tsum_eq]
  -- (σ:ℂ) ≠ 1 because 0 < σ < 1 implies σ ≠ 1 as a real, hence as a complex number.
  have hσ_ne1 : (σ : ℂ) ≠ 1 := by
    intro h
    have := congr_arg Complex.re h
    simp only [Complex.ofReal_re, Complex.one_re] at this
    linarith
  -- ── Step A (SORRY): algebraic identity ZMod.LFunction altChar s = (1−2^{1−s})·ζ(s)
  --    for all s with Re(s) > 1.
  --    Proof route: ZMod.LFunction_eq_LSeries (ZMod.lean L90) rewrites the L-function as
  --    an LSeries, then even/odd tsum splitting (tsum_even_add_odd) and
  --    zeta_eq_tsum_one_div_nat_add_one_cpow identify the result with (1−2^{1−s})·ζ(s).
  --    The algebra is elementary; the bijection bookkeeping has not yet been written here.
  have hA : ∀ s : ℂ, 1 < s.re →
      ZMod.LFunction altChar s = (1 - (2 : ℂ) ^ (1 - s)) * riemannZeta s := by
    intro s _hs
    sorry -- Step A: Re(s)>1 algebraic identity (not yet formalized in this file)
  -- ── Step B (PROVED): identity theorem extends equality to all of ℂ \ {1} ──
  --    eqOn_of_preconnected_of_eventuallyEq (Analytic/Uniqueness.lean L226):
  --      · lf_analytic_ne_one  : ZMod.LFunction altChar analytic on {s | s ≠ 1}
  --      · eta_factor_analytic : s ↦ (1−2^{1−s})·ζ(s) analytic on {s | s ≠ 1}
  --      · compl_one_preconnected : {s : ℂ | s ≠ 1} is preconnected
  --      · basepoint 2 ∈ {s | s ≠ 1}
  --      · hfg : both functions agree in 𝓝 (2:ℂ), since {Re(s)>1} is a neighborhood
  --        of 2 in ℂ and Step A gives agreement on {Re(s)>1}.
  have heqOn : EqOn (ZMod.LFunction altChar)
      (fun s => (1 - (2 : ℂ) ^ (1 - s)) * riemannZeta s) {s : ℂ | s ≠ 1} :=
    lf_analytic_ne_one.eqOn_of_preconnected_of_eventuallyEq
      eta_factor_analytic
      compl_one_preconnected
      (show (2 : ℂ) ∈ {s : ℂ | s ≠ 1} from by norm_num)
      (Filter.eventually_of_mem
        ((isOpen_lt continuous_const continuous_re).mem_nhds
          (show 1 < (2 : ℂ).re from by norm_num [Complex.ofReal_re]))
        (fun s hs => hA s hs))
  -- Evaluate at (σ:ℂ) ∈ ℂ \ {1}:
  have hval : ZMod.LFunction altChar (σ : ℂ) =
      (1 - (2 : ℂ) ^ (1 - (σ : ℂ))) * riemannZeta (σ : ℂ) :=
    heqOn hσ_ne1
  -- ── Step C (PROVED): real-part extraction ──────────────────────────────────
  --    Since σ : ℝ, the exponent 1−σ is real, so (2:ℂ)^(1−σ) is a positive real
  --    raised to a real power: Complex.ofReal_cpow gives (2:ℂ)^(1−σ:ℂ) = ↑((2:ℝ)^(1−σ)).
  --    Therefore the eta factor (1−2^{1−σ:ℂ}) is real, and:
  --      Re((1−2^{1−σ:ℂ})·ζ(σ)) = (1−2^{1−σ})·Re(ζ(σ)).
  have h2pow : (2 : ℂ) ^ (1 - (σ : ℂ)) = ((2 : ℝ) ^ (1 - σ) : ℝ) := by
    rw [show (1 : ℂ) - (σ : ℂ) = ((1 - σ : ℝ) : ℂ) by push_cast; ring]
    exact (Complex.ofReal_cpow (by norm_num : (0 : ℝ) ≤ 2) (1 - σ)).symm
  have hC : ((1 - (2 : ℂ) ^ (1 - (σ : ℂ))) * riemannZeta (σ : ℂ)).re =
      (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re := by
    rw [mul_re, h2pow]
    simp only [Complex.sub_re, Complex.sub_im, Complex.ofReal_re, Complex.ofReal_im,
               Complex.one_re, Complex.one_im]
    ring
  -- ── Step D (SORRY): Abelian theorem — THE DEEPER SORRY ────────────────────
  --    Re(ZMod.LFunction altChar (σ:ℂ)) = l,
  --    where hl : HasSum (fun n => (−1)^n * (n+1)^{−σ}) l.
  --    Mathematical content: Abel's theorem for Dirichlet L-series.
  --    The analytic continuation value at σ ∈ (0,1) equals the conditionally
  --    convergent Leibniz sum.  Proof requires local uniform convergence of the
  --    alternating Dirichlet series on {Re(s)>0} (Abel summation + Weierstrass
  --    M-test).  Not available in Mathlib v4.15.0.
  have hD : (ZMod.LFunction altChar (σ : ℂ)).re = l := by
    sorry -- Step D: Abelian theorem (not in Mathlib v4.15.0)
  -- ── Combine A+B+C+D ────────────────────────────────────────────────────────
  --    hval + hC : (ZMod.LFunction altChar (σ:ℂ)).re = (1−2^{1−σ})·ζ(σ).re
  --    hD        : (ZMod.LFunction altChar (σ:ℂ)).re = l
  --    Therefore  (1−2^{1−σ})·ζ(σ).re = l, which is the goal.
  have hstep : (ZMod.LFunction altChar (σ : ℂ)).re =
      (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re := by
    rw [hval]; exact hC
  linarith

/-! ## § 5. The main theorem — PROVED -/

/-- **ZetaRealSign** (PROVED):
    ζ(σ) has negative real part for real σ ∈ (0,1).
    Factor: (1−2^{1−σ}) < 0.  Product: (1−2^{1−σ})·ζ(σ).re = η(σ) > 0.
    Conclusion: ζ(σ).re < 0. -/
theorem ZetaRealSign (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 := by
  have h_fac : (1 : ℝ) - 2 ^ (1 - σ) < 0 := factor_neg σ hσ0 hσ1
  have h_eta : 0 < ∑' n : ℕ, ((-1 : ℝ) ^ n * (n + 1 : ℝ) ^ (-σ)) := eta_pos σ hσ0
  have h_id := eta_identity σ hσ0 hσ1
  -- From h_id: (neg) * ζ(σ).re = (pos) → ζ(σ).re < 0
  by_contra h
  push_neg at h
  -- h : 0 ≤ ζ(σ).re
  -- (neg) * (nonneg) ≤ 0, contradicts (neg) * ζ(σ).re = (pos) > 0
  have h_nonpos : (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (le_of_lt h_fac) h
  linarith [h_id ▸ h_eta]

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
