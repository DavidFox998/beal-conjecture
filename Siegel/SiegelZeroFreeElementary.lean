/-
  Siegel/SiegelZeroFreeElementary.lean
  ELEMENTARY SIEGEL ZERO REPULSION — ζ has no real zeros in (0,1).

  WHY THIS FILE EXISTS:
  SiegelZeroFree.lean requires Deuring-Heilbronn (~50pp).
  This file gives an elementary proof of the same conclusion for ζ on ℝ,
  using only:
    · the Leibniz alternating series test (Mathlib: SpecificLimits/Normed.lean)
    · the eta identity (1−2^{1−σ})·ζ(σ) = ∑' k, eta_pair σ k
    · the sign of each factor

  SORRY COUNT: 0  (all steps proved)

  PROOF STRUCTURE:
    factor_neg             (PROVED) : 1 − 2^{1−σ} < 0 for σ ∈ (0,1)
    eta_antitone           (PROVED) : n ↦ (n+1)^{−σ} is antitone for σ > 0
    eta_tends_zero         (PROVED) : (n+1)^{−σ} → 0 for σ > 0
    eta_hasSum             (PROVED) : alternating series converges (Leibniz)
    eta_pair               (PROVED) : pair sums gₖ = (2k+1)^{−σ} − (2k+2)^{−σ} ≥ 0
    eta_pos                (PROVED) : ∑' k, eta_pair σ k > 0
    Step A                 (PROVED) : LFunction altChar = (1−2^{1−s})·ζ for Re(s)>1
    Step B                 (PROVED) : identity theorem extends to ℂ \ {1}
    Step C                 (PROVED) : real-part extraction at σ ∈ ℝ
    Step D                 (PROVED) : Abelian theorem via complex pair series + identity thm
    eta_identity           (PROVED) : (1−2^{1−σ})·ζ(σ).re = ∑' k, eta_pair σ k
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
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Convex.Topology

namespace SiegelElementary

open Real Filter Finset Topology Complex Set

/-! ## § 1. The factor 1 − 2^{1−σ} is negative on (0,1) — PROVED -/

/-- For σ ∈ (0,1), the exponent 1−σ > 0 makes 2^{1−σ} > 1, so 1 − 2^{1−σ} < 0. -/
lemma factor_neg (σ : ℝ) (_hσ0 : 0 < σ) (hσ1 : σ < 1) :
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
  apply Real.rpow_le_rpow_of_exponent_nonpos (by positivity)
  · exact_mod_cast Nat.add_le_add_right hmn 1
  · linarith

/-- eta_term tends to 0. -/
lemma eta_tends_zero (σ : ℝ) (hσ : 0 < σ) :
    Tendsto (eta_term σ) atTop (𝓝 0) := by
  exact (tendsto_rpow_neg_atTop hσ).comp
    (tendsto_atTop_add_const_right atTop 1 tendsto_natCast_atTop_atTop)

/-- The Leibniz alternating series test: the alternating series converges sequentially. -/
lemma eta_hasSum (σ : ℝ) (hσ : 0 < σ) :
    ∃ l : ℝ, Tendsto (fun N : ℕ => ∑ i ∈ Finset.range N, (-1 : ℝ) ^ i * eta_term σ i)
        atTop (𝓝 l) :=
  (eta_antitone σ hσ).tendsto_alternating_series_of_tendsto_zero (eta_tends_zero σ hσ)

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

/-- The eta pair sum at σ > 0 is strictly positive.
    Proof: ∑ gₖ ≥ g₀ = 1 − 2^{−σ} > 0. -/
theorem eta_pos (σ : ℝ) (hσ : 0 < σ) : 0 < ∑' k : ℕ, eta_pair σ k := by
  obtain ⟨l, hl⟩ := eta_hasSum σ hσ
  have hg_nn : ∀ k, 0 ≤ eta_pair σ k := eta_pair_nonneg σ hσ
  -- HasSum (eta_pair σ) l via the 2k-subsequence of the alternating series
  have hg_hs : HasSum (eta_pair σ) l := by
    refine (hasSum_iff_tendsto_nat_of_nonneg hg_nn l).mpr ?_
    simp_rw [eta_pair_partial σ]
    exact hl.comp (tendsto_atTop_atTop.mpr fun n => ⟨n, fun k hk => by linarith⟩)
  exact tsum_pos hg_hs.summable hg_nn 0 (eta_pair_zero_pos σ hσ)

/-! ## § 4. The eta identity (1−2^{1−σ})·ζ(σ) = ∑' k, eta_pair σ k — 0 SORRYS

  Strategy (Steps A–D):
  A: ZMod.LFunction altChar = (1−2^{1−s})·ζ for Re(s)>1, proved via even/odd splitting.
  B: Identity theorem (eqOn_of_preconnected_of_eventuallyEq) extends to ℂ \ {1}.
  C: Real-part extraction: since σ ∈ ℝ, the factor (1−2^{1−σ:ℂ}) is real.
  D: Abelian theorem: define G(s) = ∑'_k pair_k(s) (complex), analytic on {Re>0}
     (by tsum differentiability via MVT bound + Weierstrass theorem), agrees with
     LFunction on {Re>1}, hence equals LFunction on {Re>0} by identity theorem.
     At real σ: G(σ).re = ∑' k, eta_pair σ k. -/

/-! ### Infrastructure lemmas for Steps A–B -/

/-- The alternating character Φ on ZMod 2. -/
private noncomputable def altChar : ZMod 2 → ℂ := ![(-1 : ℂ), 1]

/-- Sum of altChar vanishes: −1 + 1 = 0. -/
private lemma altChar_sum_zero : ∑ j : ZMod 2, altChar j = 0 := by
  have heq : (Finset.univ : Finset (ZMod 2)) = {(0 : ZMod 2), 1} := by
    ext x; fin_cases x <;> simp
  rw [heq, Finset.sum_pair (by decide : (0 : ZMod 2) ≠ 1)]
  simp [altChar, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]

/-! ### Step A infrastructure: evaluating altChar at shifted nat cast -/

private lemma altChar_zero_eq : altChar (0 : ZMod 2) = -1 := by
  simp [altChar, Matrix.cons_val_zero]

private lemma altChar_one_eq : altChar (1 : ZMod 2) = 1 := by
  simp [altChar, Matrix.cons_val_one, Matrix.head_cons]

/-- For all n : ℕ, altChar (↑(n + 1) : ZMod 2) = (-1 : ℂ) ^ n.
    Proof: split on n even/odd; in both cases the ZMod 2 cast is 0 or 1,
    and (-1)^(2k) = 1, (-1)^(2k+1) = -1. -/
private lemma altChar_succ_cast (n : ℕ) :
    altChar (↑(n + 1) : ZMod 2) = (-1 : ℂ) ^ n := by
  rcases Nat.even_or_odd n with ⟨k, rfl⟩ | ⟨k, rfl⟩
  · -- n = 2k: ↑(2k + 1) ≡ 1 mod 2; (-1)^(2k) = 1
    have hcast : (↑(k + k + 1) : ZMod 2) = 1 := by
      push_cast
      rw [← two_mul, show (2 : ZMod 2) = 0 by decide]
      simp
    have hdouble : k + k = 2 * k := by omega
    rw [hcast, altChar_one_eq, hdouble, pow_mul, neg_one_sq, one_pow]
  · -- n = 2k+1: ↑(2k + 2) ≡ 0 mod 2; (-1)^(2k+1) = -1
    have hcast : (↑(2 * k + 1 + 1) : ZMod 2) = 0 := by
      push_cast
      rw [show (2 : ZMod 2) = 0 by decide]
      simp only [zero_mul, zero_add]
      exact show (1 : ZMod 2) + 1 = 0 by decide
    rw [hcast, altChar_zero_eq, pow_add, pow_mul, neg_one_sq, one_pow, one_mul, pow_one]

/-! ### Step A: ZMod.LFunction altChar s = (1 − 2^{1−s}) · ζ(s) for Re(s) > 1 — PROVED -/

set_option maxHeartbeats 800000

/-- **Step A** (proved): For Re(s) > 1, ZMod.LFunction altChar s = (1 − 2^{1−s}) · ζ(s).

    Proof outline:
    1. Convert LFunction to LSeries via ZMod.LFunction_eq_LSeries.
    2. The term at n=0 is 0; shift the index by 1.
    3. Each shifted term n+1 satisfies altChar(↑(n+1)) = (−1)^n, giving the alternating series.
    4. Split even/odd via tsum_even_add_odd.
    5. Even part: (−1)^(2k) = 1, denominator (2k+1)^s.
    6. Odd part: (−1)^(2k+1) = −1, denominator (2k+2)^s = 2^s·(k+1)^s (mul_cpow_ofReal_nonneg).
    7. ζ(s) = ∑ k, 1/(k+1)^s; even-odd split gives ∑ k, 1/(2k+1)^s = ζ − 2^{−s}·ζ.
     8. Combine: (1−2^{−s})·ζ − 2^{−s}·ζ = (1−2·2^{−s})·ζ = (1−2^{1−s})·ζ. -/
private lemma lfunction_eq_eta_factor (s : ℂ) (hs : 1 < s.re) :
    ZMod.LFunction altChar s = (1 - (2 : ℂ) ^ (1 - s)) * riemannZeta s := by
  rw [ZMod.LFunction_eq_LSeries altChar hs]
  -- Absolute summability of the LSeries
  have habs := ZMod.LSeriesSummable_of_one_lt_re altChar hs
  -- Shift: term at 0 vanishes, so ∑' n, term f s n = ∑' n, term f s (n + 1)
  let f : ℕ → ℂ := fun n =>
    LSeries.term (fun k : ℕ => altChar (k : ZMod 2)) s n
  have hshift : (∑' n : ℕ, f n) = ∑' n : ℕ, f (n + 1) := by
    simpa only [f, LSeries.term_zero, zero_add] using (tsum_eq_zero_add habs)
  change (∑' n : ℕ, f n) =
    (1 - (2 : ℂ) ^ (1 - s)) * riemannZeta s
  rw [hshift]
  -- Each shifted term: altChar(↑(n+1)) = (−1)^n, giving term = (−1)^n / (n+1:ℂ)^s
  have h_term : ∀ n : ℕ,
      f (n + 1) =
      (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s := fun n => by
    dsimp [f]
    rw [LSeries.term_of_ne_zero (Nat.succ_ne_zero n), altChar_succ_cast n]
    push_cast; ring
  simp_rw [h_term]
  -- Bounding series: ∑ k, 1/(k+1:ℝ)^s.re is summable for Re(s) > 1
  have hg_sum : Summable (fun k : ℕ => (1 : ℝ) / ((k : ℝ) + 1) ^ s.re) :=
    by
      simpa [Nat.cast_add, Nat.cast_one] using
        (summable_nat_add_iff 1).mpr (Real.summable_one_div_nat_rpow.mpr hs)
  -- Summability of even part: (−1)^(2k) / (2k+1:ℂ)^s
  have he_sum : Summable (fun k : ℕ => (fun n : ℕ =>
      (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s) (2 * k)) := by
    apply Summable.of_norm_bounded _ hg_sum; intro k
    simp only [Nat.cast_mul, Nat.cast_ofNat]
    rw [norm_div, norm_pow, norm_neg, norm_one, one_pow, one_div, one_div,
        show (2 : ℂ) * (k : ℂ) + 1 = ((2 * k + 1 : ℕ) : ℂ) from by push_cast; ring,
        Complex.norm_natCast_cpow_of_pos (by omega)]
    exact inv_anti₀ (by positivity) (Real.rpow_le_rpow (by positivity)
      (by exact_mod_cast (show k + 1 ≤ 2 * k + 1 by omega)) (by linarith))
  -- Summability of odd part: (−1)^(2k+1) / (2k+2:ℂ)^s
  have ho_sum : Summable (fun k : ℕ => (fun n : ℕ =>
      (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s) (2 * k + 1)) := by
    apply Summable.of_norm_bounded _ hg_sum; intro k
    simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one]
    rw [norm_div, norm_pow, norm_neg, norm_one, one_pow, one_div, one_div,
        show (2 : ℂ) * (k : ℂ) + 1 + 1 = ((2 * k + 2 : ℕ) : ℂ) from by push_cast; ring,
        Complex.norm_natCast_cpow_of_pos (by omega)]
    exact inv_anti₀ (by positivity) (Real.rpow_le_rpow (by positivity)
      (by exact_mod_cast (show k + 1 ≤ 2 * k + 2 by omega)) (by linarith))
  -- Summability of 1/(k+1:ℂ)^s for Re(s) > 1
  have hζ_sum : Summable (fun k : ℕ => (1 : ℂ) / ((k : ℂ) + 1) ^ s) := by
    have h := (summable_nat_add_iff 1).mpr (Complex.summable_one_div_nat_cpow.mpr hs)
    exact h.congr fun n => by push_cast; ring_nf
  -- Split ∑' n, f n = ∑' k, f(2k) + ∑' k, f(2k+1) via tsum_even_add_odd
  rw [show ∑' n : ℕ, (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s =
      (∑' k : ℕ, (fun n : ℕ => (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s) (2 * k)) +
      (∑' k : ℕ, (fun n : ℕ => (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s) (2 * k + 1)) from
    (tsum_even_add_odd he_sum ho_sum).symm]
  -- Simplify even part: (−1)^(2k) = 1
  have h_even : ∀ k : ℕ,
      (fun n : ℕ => (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s) (2 * k) =
      1 / ((2 * (k : ℂ)) + 1) ^ s := fun k => by
    simp only [pow_mul, neg_one_sq, one_pow, one_mul, Nat.cast_mul, Nat.cast_ofNat]
  -- Simplify odd part: (−1)^(2k+1) = −1
  have h_odd : ∀ k : ℕ,
      (fun n : ℕ => (-1 : ℂ) ^ n / ((n : ℂ) + 1) ^ s) (2 * k + 1) =
      -(1 / ((2 * (k : ℂ)) + 2) ^ s) := fun k => by
    simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one]
    rw [show (2 : ℂ) * k + 1 + 1 = 2 * k + 2 from by ring,
        pow_add, pow_mul, neg_one_sq, one_pow, one_mul, pow_one]
    ring
  simp_rw [h_even, h_odd]
  -- Factor 2^s from the denominator of the odd part:
  -- (2k+2)^s = (2·(k+1))^s = 2^s · (k+1)^s (mul_cpow_ofReal_nonneg)
  -- so 1/(2k+2:ℂ)^s = 2^{−s} · 1/(k+1:ℂ)^s
  have h2_factor : ∀ k : ℕ,
      (1 : ℂ) / ((2 * (k : ℂ)) + 2) ^ s =
      (2 : ℂ) ^ (-s) * (1 / ((k : ℂ) + 1) ^ s) := by
    intro k
    rw [show (2 : ℂ) * (k : ℂ) + 2 = ((2 : ℝ) : ℂ) * (((k + 1 : ℕ) : ℝ) : ℂ) from by
          push_cast; ring,
        mul_cpow_ofReal_nonneg (by norm_num) (Nat.cast_nonneg _),
        show ((2 : ℝ) : ℂ) ^ s = (2 : ℂ) ^ s from by norm_cast,
        show (((k + 1 : ℕ) : ℝ) : ℂ) ^ s = ((k : ℂ) + 1) ^ s from by
          congr 1; push_cast; ring,
        one_div, mul_inv, ← one_div, ← cpow_neg]
    rw [cpow_neg, cpow_neg]
    simp only [one_div]
  simp_rw [h2_factor]
  -- Now: ∑' k, 1/(2k+1)^s + ∑' k, -(2^{-s} · 1/(k+1)^s) = (1 − 2^{1-s}) · ζ
  -- Compute the odd tsum: -(2^{-s} · ζ)
  have ho_tsum : ∑' k : ℕ, -((2 : ℂ) ^ (-s) * (1 / ((k : ℂ) + 1) ^ s)) =
      -((2 : ℂ) ^ (-s) * riemannZeta s) := by
    rw [tsum_neg, tsum_mul_left]
    congr 1
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
  -- Even-odd ζ split: summability of 1/(2k+j:ℂ)^s for the ζ tsum
  have hζ_even : Summable (fun k : ℕ => (1 : ℂ) / ((2 * (k : ℂ)) + 1) ^ s) := by
    apply Summable.of_norm_bounded _ hg_sum; intro k
    rw [norm_div, norm_one, one_div, one_div,
        show (2 : ℂ) * k + 1 = ((2 * k + 1 : ℕ) : ℂ) from by push_cast; ring,
        Complex.norm_natCast_cpow_of_pos (by omega)]
    exact inv_anti₀ (by positivity) (Real.rpow_le_rpow (by positivity)
      (by exact_mod_cast (show k + 1 ≤ 2 * k + 1 by omega)) (by linarith))
  have hζ_odd_sum : Summable (fun k : ℕ => (1 : ℂ) / ((2 * (k : ℂ)) + 2) ^ s) := by
    apply Summable.of_norm_bounded _ hg_sum; intro k
    rw [norm_div, norm_one, one_div, one_div,
        show (2 : ℂ) * k + 2 = ((2 * k + 2 : ℕ) : ℂ) from by push_cast; ring,
        Complex.norm_natCast_cpow_of_pos (by omega)]
    exact inv_anti₀ (by positivity) (Real.rpow_le_rpow (by positivity)
      (by exact_mod_cast (show k + 1 ≤ 2 * k + 2 by omega)) (by linarith))
  -- ζ even-odd split: ∑ 1/(2k+1)^s + ∑ 1/(2k+2)^s = ζ
  -- tsum_even_add_odd rewrites even+odd → full tsum; then align with zeta formula
  have hζ_split : ∑' k : ℕ, (1 : ℂ) / ((2 * (k : ℂ)) + 1) ^ s +
      ∑' k : ℕ, (1 : ℂ) / ((2 * (k : ℂ)) + 2) ^ s = riemannZeta s := by
    let g : ℕ → ℂ := fun n => (1 : ℂ) / ((n : ℂ) + 1) ^ s
    have hζ_even' : Summable (fun k : ℕ => g (2 * k)) := by
      simpa only [g, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_add, Nat.cast_one] using hζ_even
    have hodd : (fun k : ℕ => g (2 * k + 1)) =
        fun k : ℕ => (1 : ℂ) / ((2 * (k : ℂ)) + 2) ^ s := by
      funext k
      dsimp [g]
      push_cast
      ring_nf
    have hζ_odd' : Summable (fun k : ℕ => g (2 * k + 1)) := by
      rw [hodd]
      exact hζ_odd_sum
    have hsplit := tsum_even_add_odd hζ_even' hζ_odd'
    rw [hodd] at hsplit
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
    simpa only [g, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_add, Nat.cast_one] using hsplit
  -- ∑ 1/(2k+2)^s = 2^{-s} · ζ
  have hζ_odd_val : ∑' k : ℕ, (1 : ℂ) / ((2 * (k : ℂ)) + 2) ^ s =
      (2 : ℂ) ^ (-s) * riemannZeta s := by
    simp_rw [h2_factor]
    rw [tsum_mul_left]
    congr 1
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
  -- ∑ 1/(2k+1)^s = ζ − 2^{-s} · ζ
  have hζ_even_val : ∑' k : ℕ, (1 : ℂ) / ((2 * (k : ℂ)) + 1) ^ s =
      riemannZeta s - (2 : ℂ) ^ (-s) * riemannZeta s := by
    linear_combination hζ_split - hζ_odd_val
  -- Power identity: 2^{1−s} = 2 · 2^{−s}
  have h_pow : (2 : ℂ) ^ (1 - s) = 2 * (2 : ℂ) ^ (-s) := by
    rw [show (1 : ℂ) - s = 1 + (-s) from by ring,
        cpow_add (1 : ℂ) (-s) (by norm_num : (2 : ℂ) ≠ 0), cpow_one]
  -- Assemble: (ζ − 2^{−s}ζ) + (−2^{−s}ζ) = (1 − 2^{1−s})ζ
  rw [ho_tsum, hζ_even_val, h_pow]; ring

set_option maxHeartbeats 200000

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
  · apply DifferentiableAt.sub (differentiableAt_const 1)
    exact DifferentiableAt.comp s
      (hasStrictDerivAt_const_cpow (Or.inl (by norm_num : (2:ℂ) ≠ 0))).differentiableAt
      ((differentiableAt_const 1).sub differentiableAt_id)
  · exact differentiableAt_riemannZeta hs

/-- ℂ \ {1} is preconnected (ℂ has real rank 2 > 1, so removing a point keeps connectedness). -/
private lemma compl_one_preconnected : IsPreconnected {s : ℂ | s ≠ 1} := by
  apply IsConnected.isPreconnected
  apply isConnected_compl_singleton_of_one_lt_rank
  have h : Module.rank ℝ ℂ = 2 := Complex.rank_real_complex
  simp [h]

/-! ### Step A: algebraic identity for Re(s) > 1 -/

/-- For Re(s) > 1: ZMod.LFunction altChar s = (1 − 2^{1−s}) · ζ(s). -/
private lemma lfunction_altChar_eq_cpow_mul_zeta (s : ℂ) (hs : 1 < s.re) :
    ZMod.LFunction altChar s = (1 - (2 : ℂ) ^ (1 - s)) * riemannZeta s := by
  rw [ZMod.LFunction_eq_LSeries altChar hs]
  -- [1] ζ(s) as a HasSum
  have hζ : HasSum (fun n : ℕ => (1 : ℂ) / (↑n + 1 : ℂ) ^ s) (riemannZeta s) := by
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
    have hsum : Summable (fun n : ℕ => (1 : ℂ) / (↑n + 1 : ℂ) ^ s) :=
      ((summable_nat_add_iff 1).mpr
        (Complex.summable_one_div_nat_cpow.mpr hs)).congr (fun n => by push_cast; ring)
    exact hsum.hasSum
  -- [2] altChar values
  have hac0 : altChar (0 : ZMod 2) = (-1 : ℂ) := by
    simp [altChar, Matrix.cons_val_zero]
  have hac1 : altChar (1 : ZMod 2) = (1 : ℂ) := by
    simp [altChar, Matrix.cons_val_one, Matrix.head_cons]
  -- [3] ZMod 2 arithmetic
  have h2mod : (2 : ZMod 2) = 0 := by decide
  have hzmod_odd : ∀ k : ℕ, (↑(2 * k + 1) : ZMod 2) = 1 := fun k => by
    push_cast; simp [h2mod]
  have hzmod_even : ∀ k : ℕ, (↑(2 * (k + 1)) : ZMod 2) = 0 := fun k => by
    push_cast; simp [h2mod]
  -- [4] cpow factoring for even denominators
  have cpow_factor : ∀ k : ℕ,
      (2 * (↑k + 1) : ℂ) ^ s = (2 : ℂ) ^ s * (↑k + 1 : ℂ) ^ s := fun k => by
    have h : (2 : ℂ) * (↑k + 1) = (↑(2 : ℕ) : ℂ) * (↑(k + 1 : ℕ) : ℂ) := by push_cast; ring
    rw [h, natCast_mul_natCast_cpow]; push_cast; ring
  -- [5] cpow factoring for odd denominators
  have cpow_odd : ∀ k : ℕ,
      (2 * (↑k : ℂ) + 1) ^ s = ((↑k : ℂ) + (1 / 2 : ℝ)) ^ s * (2 : ℂ) ^ s := fun k => by
    have h : (2 : ℂ) * ↑k + 1 = ((↑k + 1 / 2 : ℝ) : ℂ) * ((2 : ℝ) : ℂ) := by push_cast; ring
    rw [h, mul_cpow_ofReal_nonneg (by positivity) (by norm_num)]; push_cast; ring
  -- [6] Even-denominator HasSum: ∑ 1/(2(k+1))^s = 2^{-s}·ζ(s)
  have heven : HasSum (fun k : ℕ => (1 : ℂ) / (2 * (↑k + 1) : ℂ) ^ s)
      ((2 : ℂ) ^ (-s) * riemannZeta s) :=
    HasSum.congr_fun (hζ.mul_left ((2 : ℂ) ^ (-s))) (fun k => by
      rw [cpow_factor k, cpow_neg]
      have h2 : (2 : ℂ) ^ s ≠ 0 := by norm_num [cpow_eq_zero_iff]
      have hk : (↑k + 1 : ℂ) ^ s ≠ 0 := natCast_add_one_cpow_ne_zero k s
      field_simp)
  -- [7] Hurwitz zeta HasSum: ∑ 1/(m + ½)^s = Hz(½, s)
  have hHz : HasSum (fun m : ℕ => (1 : ℂ) / ((↑m : ℂ) + (1 / 2 : ℝ)) ^ s)
      (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s) :=
    HurwitzZeta.hasSum_hurwitzZeta_of_one_lt_re
      (by norm_num : (1 / 2 : ℝ) ∈ Set.Icc 0 1) hs
  -- [8] Odd-denominator HasSum: ∑ 1/(2k+1)^s = Hz/2^s
  have hodd : HasSum (fun k : ℕ => (1 : ℂ) / (2 * (↑k : ℂ) + 1) ^ s)
      (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s) :=
    HasSum.congr_fun (hHz.div_const ((2 : ℂ) ^ s)) (fun k => by
      rw [cpow_odd k, ← div_div])
  -- [9] Split ζ via even_add_odd
  have hcombine : HasSum (fun n : ℕ => (1 : ℂ) / (↑n + 1 : ℂ) ^ s)
      (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s +
       (2 : ℂ) ^ (-s) * riemannZeta s) := by
    apply HasSum.even_add_odd
    · exact HasSum.congr_fun hodd (fun k => by push_cast; ring_nf)
    · exact HasSum.congr_fun heven (fun k => by push_cast; ring_nf)
  -- [10] Uniqueness gives Hz/2^s = (1 - 2^{-s})·ζ
  have hHz_val : HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s =
      (1 - (2 : ℂ) ^ (-s)) * riemannZeta s := by
    have heq := hζ.unique hcombine; linear_combination -heq
  -- [11] LSeries term values
  have hterm_odd : ∀ k : ℕ,
      LSeries.term (altChar ·) s (2 * k + 1) = (1 : ℂ) / (2 * ↑k + 1 : ℂ) ^ s := fun k => by
    rw [LSeries.term_of_ne_zero (by omega), hzmod_odd k, hac1]; push_cast; ring
  have hterm_even : ∀ k : ℕ,
      LSeries.term (altChar ·) s (2 * (k + 1)) = -(1 : ℂ) / (2 * (↑k + 1) : ℂ) ^ s := fun k => by
    rw [LSeries.term_of_ne_zero (by omega), hzmod_even k, hac0]; push_cast; ring
  -- [12] Even LSeries sub-series HasSum
  have heven_shift : HasSum (fun k : ℕ => LSeries.term (altChar ·) s (2 * (k + 1)))
      (-((2 : ℂ) ^ (-s) * riemannZeta s)) :=
    HasSum.congr_fun heven.neg (fun k => by rw [hterm_even k]; ring)
  have heven_L : HasSum (fun k : ℕ => LSeries.term (altChar ·) s (2 * k))
      (-((2 : ℂ) ^ (-s) * riemannZeta s)) := by
    have h : HasSum (fun k : ℕ => LSeries.term (altChar ·) s (2 * k))
        (LSeries.term (altChar ·) s 0 + (-((2 : ℂ) ^ (-s) * riemannZeta s))) :=
      HasSum.zero_add (f := fun n => LSeries.term (altChar ·) s (2 * n)) heven_shift
    simp only [mul_zero, LSeries.term_zero, zero_add] at h
    exact h
  -- [13] Odd LSeries sub-series HasSum
  have hodd_L : HasSum (fun k : ℕ => LSeries.term (altChar ·) s (2 * k + 1))
      ((1 - (2 : ℂ) ^ (-s)) * riemannZeta s) := by
    have h : HasSum (fun k : ℕ => LSeries.term (altChar ·) s (2 * k + 1))
        (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s) :=
      HasSum.congr_fun hodd (fun k => by exact hterm_odd k)
    rwa [hHz_val] at h
  -- [14] Combine via even_add_odd → total HasSum
  have hTotal := heven_L.even_add_odd hodd_L
  -- [15] Conclude: -(2^{-s}·ζ) + (1-2^{-s})·ζ = (1-2^{1-s})·ζ
  have h2pow : (2 : ℂ) ^ (1 - s) = 2 * (2 : ℂ) ^ (-s) := by
    rw [show (1 : ℂ) - s = 1 + (-s) from by ring,
        cpow_add _ _ (by norm_num : (2 : ℂ) ≠ 0), cpow_one]
  unfold LSeries
  rw [hTotal.tsum_eq, h2pow]; ring

/-! ### Step A': the pair series HasSums to LFunction for Re(s) > 1

  From the even+odd structure in Step A, the pair terms hodd_L + heven_shift
  give HasSum (pair_k) (LFunction). -/

/-- For Re(s) > 1: HasSum (fun k => (2k+1:ℂ)^{-s} - (2k+2:ℂ)^{-s}) (LFunction altChar s). -/
private lemma pair_hasSum_for_gt_one (s : ℂ) (hs : 1 < s.re) :
    HasSum (fun k : ℕ => (2 * (k : ℂ) + 1) ^ (-s) - (2 * (k : ℂ) + 2) ^ (-s))
      (ZMod.LFunction altChar s) := by
  -- Re-prove odd/even sub-HasSums (extracted from lfunction_altChar_eq_cpow_mul_zeta)
  have hζ : HasSum (fun n : ℕ => (1 : ℂ) / (↑n + 1 : ℂ) ^ s) (riemannZeta s) := by
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
    exact (((summable_nat_add_iff 1).mpr
      (Complex.summable_one_div_nat_cpow.mpr hs)).congr
        (fun n => by push_cast; ring)).hasSum
  have hHz : HasSum (fun m : ℕ => (1 : ℂ) / ((↑m : ℂ) + (1 / 2 : ℝ)) ^ s)
      (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s) :=
    HurwitzZeta.hasSum_hurwitzZeta_of_one_lt_re (by norm_num : (1 / 2 : ℝ) ∈ Set.Icc 0 1) hs
  have cpow_odd : ∀ k : ℕ,
      (2 * (↑k : ℂ) + 1) ^ s = ((↑k : ℂ) + (1 / 2 : ℝ)) ^ s * (2 : ℂ) ^ s := fun k => by
    have h : (2 : ℂ) * ↑k + 1 = ((↑k + 1 / 2 : ℝ) : ℂ) * ((2 : ℝ) : ℂ) := by push_cast; ring
    rw [h, mul_cpow_ofReal_nonneg (by positivity) (by norm_num)]; push_cast; ring
  have hodd : HasSum (fun k : ℕ => (1 : ℂ) / (2 * (↑k : ℂ) + 1) ^ s)
      (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s) :=
    HasSum.congr_fun (hHz.div_const ((2 : ℂ) ^ s)) (fun k => by
      rw [cpow_odd k, ← div_div])
  have cpow_factor : ∀ k : ℕ,
      (2 * (↑k + 1) : ℂ) ^ s = (2 : ℂ) ^ s * (↑k + 1 : ℂ) ^ s := fun k => by
    have h : (2 : ℂ) * (↑k + 1) = (↑(2 : ℕ) : ℂ) * (↑(k + 1 : ℕ) : ℂ) := by push_cast; ring
    rw [h, natCast_mul_natCast_cpow]; push_cast; ring
  have heven : HasSum (fun k : ℕ => (1 : ℂ) / (2 * (↑k + 1) : ℂ) ^ s)
      ((2 : ℂ) ^ (-s) * riemannZeta s) :=
    HasSum.congr_fun (hζ.mul_left ((2 : ℂ) ^ (-s))) (fun k => by
      rw [cpow_factor k, cpow_neg]
      have h2 : (2 : ℂ) ^ s ≠ 0 := by norm_num [cpow_eq_zero_iff]
      have hk : (↑k + 1 : ℂ) ^ s ≠ 0 := natCast_add_one_cpow_ne_zero k s
      field_simp)
  have hcombine : HasSum (fun n : ℕ => (1 : ℂ) / (↑n + 1 : ℂ) ^ s)
      (HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s +
       (2 : ℂ) ^ (-s) * riemannZeta s) := by
    apply HasSum.even_add_odd
    · exact HasSum.congr_fun hodd (fun k => by push_cast; ring)
    · exact HasSum.congr_fun heven (fun k => by push_cast; ring_nf)
  have hHz_val : HurwitzZeta.hurwitzZeta ((1 / 2 : ℝ) : UnitAddCircle) s / (2 : ℂ) ^ s =
      (1 - (2 : ℂ) ^ (-s)) * riemannZeta s := by
    linear_combination -(hζ.unique hcombine)
  -- HasSum of pair terms = hodd_val + (-heven_val) via the sub-series
  have hodd_L : HasSum (fun k : ℕ => (1 : ℂ) / (2 * (↑k : ℂ) + 1) ^ s)
      ((1 - (2 : ℂ) ^ (-s)) * riemannZeta s) := by
    rwa [hHz_val] at hodd
  -- Pair HasSum: odd + neg-even
  have hpair : HasSum (fun k : ℕ => (1 : ℂ) / (2 * (↑k : ℂ) + 1) ^ s -
      (1 : ℂ) / (2 * (↑k : ℂ) + 2) ^ s)
      ((1 - (2 : ℂ) ^ (-s)) * riemannZeta s - (2 : ℂ) ^ (-s) * riemannZeta s) :=
    hodd_L.sub (HasSum.congr_fun heven (fun k => by ring_nf))
  have h2pow : (2 : ℂ) ^ (1 - s) = 2 * (2 : ℂ) ^ (-s) := by
    rw [show (1 : ℂ) - s = 1 + (-s) from by ring, cpow_add _ _ (by norm_num : (2:ℂ) ≠ 0), cpow_one]
  -- Simplify the sum value
  have hval : (1 - (2 : ℂ) ^ (-s)) * riemannZeta s - (2 : ℂ) ^ (-s) * riemannZeta s =
      ZMod.LFunction altChar s := by
    rw [lfunction_altChar_eq_cpow_mul_zeta s hs, h2pow]; ring
  exact hval ▸ HasSum.congr_fun hpair (fun k => by simp only [cpow_neg, one_div])

/-! ### Step D: Abelian theorem

  The hard step: connect LFunction altChar (σ:ℂ) to the real pair sum ∑' k, eta_pair σ k.
  We define the complex pair series G(s) = ∑' k, ((2k+1:ℂ)^{-s} - (2k+2:ℂ)^{-s}),
  prove it is analytic on {Re > 0}, prove it equals LFunction for Re > 1,
  then use the identity theorem. -/

/-- ‖(x:ℂ)^s‖ = x^s.re for x > 0.
    Proof: expand via cpow_def_of_ne_zero + norm_exp + log_ofReal. -/
private lemma norm_ofReal_cpow {x : ℝ} (hx : 0 < x) (s : ℂ) :
    ‖(x : ℂ) ^ s‖ = x ^ s.re := by
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast hx.ne'), Complex.norm_eq_abs,
      Complex.abs_exp, mul_re, Complex.log_ofReal_re]
  have him : (Complex.log ((x : ℝ) : ℂ)).im = 0 := by
    rw [← Complex.ofReal_log (le_of_lt hx), Complex.ofReal_im]
  simp [him, Real.rpow_def_of_pos hx, mul_comm]

/-- MVT bound: ‖(2k+1:ℂ)^{-s} - (2k+2:ℂ)^{-s}‖ ≤ ‖s‖ * (2k+1)^{-s.re-1}
    for all k : ℕ, proved by the mean value theorem applied to t ↦ (t:ℂ)^{-s}
    on the real interval [2k+1, 2k+2]. -/
private lemma pair_term_norm_le (s : ℂ) (hs : 0 < s.re) (k : ℕ) :
    ‖(2 * (k : ℂ) + 1) ^ (-s) - (2 * (k : ℂ) + 2) ^ (-s)‖ ≤
    ‖s‖ * (2 * (k : ℝ) + 1) ^ (-s.re - 1) := by
  set a : ℝ := 2 * k + 1 with ha_def
  set b : ℝ := 2 * k + 2 with hb_def
  have ha : (0 : ℝ) < a := by simp [ha_def]; positivity
  have hab : a ≤ b := by simp [ha_def, hb_def]
  -- hasDerivAt of f(t) = (t:ℂ)^{-s}: use hasDerivAt_ofReal_cpow with r = -s-1
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  have hderiv : ∀ t : ℝ, t ∈ Set.Ico a b →
      HasDerivWithinAt (fun t : ℝ => (t : ℂ) ^ (-s))
        ((-s) * (↑t : ℂ) ^ (-s - 1)) (Set.Ici t) t := by
    intro t ht
    have ht_pos : (0 : ℝ) < t := lt_of_lt_of_le ha ht.1
    -- (↑t : ℂ) is in the slit plane since t > 0
    have h0 : (↑t : ℂ) ∈ slitPlane := ofReal_mem_slitPlane.mpr ht_pos
    -- Complex derivative of z ↦ z^(-s) at z = ↑t is (-s) * (↑t)^(-s-1)
    have hd : HasDerivAt (fun z : ℂ => z ^ (-s)) (-s * (↑t : ℂ) ^ (-s - 1) * 1) (↑t : ℂ) :=
      (hasDerivAt_id (↑t : ℂ)).cpow_const h0
    rw [mul_one] at hd
    exact hd.comp_ofReal.hasDerivWithinAt
  -- Continuity of t ↦ (t:ℂ)^{-s} on [a, b]
  have hf_cont : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-s)) (Set.Icc a b) := by
    apply ContinuousOn.cpow_const
    · exact continuous_ofReal.continuousOn
    · intro t ht
      exact ofReal_mem_slitPlane.mpr (lt_of_lt_of_le ha ht.1)
  -- Derivative norm bound: ‖(-s) * (t:ℂ)^{-s-1}‖ ≤ ‖s‖ * a^{-Re(s)-1} for t ≥ a
  have hbound : ∀ t ∈ Set.Ico a b,
      ‖(-s) * (↑t : ℂ) ^ (-s - 1)‖ ≤ ‖s‖ * a ^ (-s.re - 1) := by
    intro t ht
    have ht_pos : (0 : ℝ) < t := lt_of_lt_of_le ha ht.1
    have hta : a ≤ t := ht.1
    rw [norm_mul, norm_neg]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg s)
    -- ‖(t:ℂ)^{-s-1}‖ = t^{-Re(s)-1} by norm_ofReal_cpow, then monotone in t
    rw [norm_ofReal_cpow ht_pos (-s - 1)]
    -- (-s-1).re = -s.re - 1
    have hre : (-s - 1).re = -s.re - 1 := by simp [Complex.sub_re, Complex.neg_re]
    rw [hre]
    -- t^{-Re(s)-1} ≤ a^{-Re(s)-1} because t ≥ a and exponent -Re(s)-1 < 0
    exact Real.rpow_le_rpow_of_exponent_nonpos ha hta (by linarith)
  -- Apply MVT at x = b (the upper endpoint)
  have hba : b - a = 1 := by simp [ha_def, hb_def]; ring
  have hmvt_b := norm_image_sub_le_of_norm_deriv_right_le_segment hf_cont hderiv hbound b
    ⟨hab, le_refl b⟩
  rw [hba, mul_one] at hmvt_b
  simp only [ha_def, hb_def] at hmvt_b ⊢
  push_cast at hmvt_b ⊢
  rw [norm_sub_rev]
  linarith

/-- The {Re > 0} half-plane is preconnected (it's convex). -/
private lemma halfplane_pos_re_preconnected : IsPreconnected {s : ℂ | 0 < s.re} := by
  -- {Re > 0} is convex: Re ⁻¹' Ioi 0 is convex since Ioi 0 is convex
  have hconv : Convex ℝ {s : ℂ | 0 < s.re} := by
    intro x hx y hy a b ha hb hab
    simp only [Set.mem_setOf_eq, Complex.add_re, Complex.smul_re] at *
    have h := add_le_add (mul_le_mul_of_nonneg_left (min_le_left x.re y.re) ha)
                         (mul_le_mul_of_nonneg_left (min_le_right x.re y.re) hb)
    rw [← add_mul, hab, one_mul] at h
    exact lt_of_lt_of_le (lt_min hx hy) h
  -- Nonempty: 1 ∈ {Re > 0}; path-connected implies preconnected
  exact (hconv.isPathConnected ⟨1, by norm_num⟩).isConnected.isPreconnected

/-- The complex pair series G(s) = ∑' k, ((2k+1:ℂ)^{-s} - (2k+2:ℂ)^{-s})
    is analytic on {Re(s) > 0}.

    Proof: on each compact K ⊆ {Re > 0} with r = inf_K Re > 0,
    ‖pair_k(s)‖ ≤ ‖s‖_K * (2k+1)^{-r-1} by MVT (pair_term_norm_le for any s₀ with Re(s₀) ≥ r).
    The bound (2k+1)^{-r-1} is summable (r > 0), so the partial sums converge uniformly on K.
    Uniform limit of analytic functions is analytic (Weierstrass). -/
private lemma pair_sum_analyticOnNhd :
    AnalyticOnNhd ℂ
      (fun s : ℂ => ∑' k : ℕ, ((2 * (k : ℂ) + 1) ^ (-s) - (2 * (k : ℂ) + 2) ^ (-s)))
      {s : ℂ | 0 < s.re} := by
  apply DifferentiableOn.analyticOnNhd _ (isOpen_lt continuous_const continuous_re)
  -- Prove DifferentiableOn by proving DifferentiableAt at each point via a local ball
  intro s₀ hs₀
  -- Choose ε = s₀.re / 2 as local radius
  set ε := s₀.re / 2 with hε_def
  have hε : 0 < ε := half_pos hs₀
  set M := ‖s₀‖ + ε with hM_def
  -- On ball B(s₀, ε): re ≥ ε and ‖·‖ ≤ M
  have hre_lb : ∀ t ∈ Metric.ball s₀ ε, ε ≤ t.re := by
    intro t ht
    have hdist : ‖t - s₀‖ < ε := Metric.mem_ball.mp ht
    have hre_diff : |t.re - s₀.re| ≤ ‖t - s₀‖ := by
      simpa using RCLike.abs_re_le_norm (t - s₀)
    linarith [abs_le.mp (le_of_lt (lt_of_le_of_lt hre_diff hdist))]
  have hnorm_ub : ∀ t ∈ Metric.ball s₀ ε, ‖t‖ ≤ M := by
    intro t ht
    have hdist : ‖t - s₀‖ < ε := Metric.mem_ball.mp ht
    calc ‖t‖ = ‖s₀ + (t - s₀)‖ := by ring_nf
      _ ≤ ‖s₀‖ + ‖t - s₀‖ := norm_add_le _ _
      _ ≤ ‖s₀‖ + ε := by linarith
      _ = M := hM_def
  -- Each summand is differentiable on the ball
  have hf_ball : ∀ k : ℕ, DifferentiableOn ℂ
      (fun s : ℂ => (2 * (k : ℂ) + 1) ^ (-s) - (2 * (k : ℂ) + 2) ^ (-s))
      (Metric.ball s₀ ε) := fun k => by
    apply DifferentiableOn.sub
    · intro t _
      apply DifferentiableAt.differentiableWithinAt
      apply DifferentiableAt.const_cpow differentiableAt_id.neg
      left
      exact_mod_cast (show (0:ℝ) < 2*(k:ℝ)+1 from by positivity).ne'
    · intro t _
      apply DifferentiableAt.differentiableWithinAt
      apply DifferentiableAt.const_cpow differentiableAt_id.neg
      left
      exact_mod_cast (show (0:ℝ) < 2*(k:ℝ)+2 from by positivity).ne'
  -- Summable global bound on the ball: M * (2k+1)^{-ε-1}
  have hbound : Summable (fun k : ℕ => M * (2 * (k : ℝ) + 1) ^ (-ε - 1)) := by
    apply Summable.mul_left
    have hbase : ∀ k : ℕ, 0 < 2 * (k : ℝ) + 1 := fun k => by positivity
    have hbase' : ∀ k : ℕ, 0 < (k : ℝ) + 1 := fun k => by positivity
    have hsum1 : Summable (fun k : ℕ => ((k : ℝ) + 1) ^ (-ε - 1)) := by
      exact ((summable_nat_add_iff 1).mpr
        (Real.summable_nat_rpow.mpr (by linarith : -ε - 1 < -1))).congr
        (fun k => by push_cast; ring_nf)
    apply Summable.of_nonneg_of_le
      (fun k => Real.rpow_nonneg (le_of_lt (hbase k)) _)
      (fun k => Real.rpow_le_rpow_of_exponent_nonpos (hbase' k)
        (by linarith [Nat.zero_le k]) (by linarith))
      hsum1
  -- Apply the Weierstrass theorem on the ball
  have hdiff_ball : DifferentiableOn ℂ
      (fun s => ∑' k : ℕ, ((2 * (k : ℂ) + 1) ^ (-s) - (2 * (k : ℂ) + 2) ^ (-s)))
      (Metric.ball s₀ ε) :=
    differentiableOn_tsum_of_summable_norm hbound hf_ball Metric.isOpen_ball (fun k t ht => by
      calc ‖(2 * (k : ℂ) + 1) ^ (-t) - (2 * (k : ℂ) + 2) ^ (-t)‖
          ≤ ‖t‖ * (2 * (k : ℝ) + 1) ^ (-t.re - 1) :=
            pair_term_norm_le t (lt_of_lt_of_le hε (hre_lb t ht)) k
        _ ≤ M * (2 * (k : ℝ) + 1) ^ (-ε - 1) :=
            mul_le_mul (hnorm_ub t ht)
              (Real.rpow_le_rpow_of_exponent_le (by linarith [Nat.zero_le k])
                (by linarith [hre_lb t ht]))
              (Real.rpow_nonneg (by positivity) _)
              (by linarith [norm_nonneg s₀, le_of_lt hε]))
  -- From DifferentiableOn on the ball (a neighborhood of s₀), get DifferentiableAt
  exact (hdiff_ball.differentiableAt
    (Metric.isOpen_ball.mem_nhds (Metric.mem_ball_self hε))).differentiableWithinAt

/-- The Abelian theorem: (ZMod.LFunction altChar (σ:ℂ)).re = ∑' k, eta_pair σ k for σ > 0. -/
private lemma lfunction_re_eq_pair_tsum (σ : ℝ) (hσ : 0 < σ) :
    (ZMod.LFunction altChar (σ : ℂ)).re = ∑' k : ℕ, eta_pair σ k := by
  -- Define the complex pair function G = ∑' k, ((2k+1)^{-s} - (2k+2)^{-s})
  set G : ℂ → ℂ := fun s => ∑' k : ℕ, ((2 * (k : ℂ) + 1) ^ (-s) - (2 * (k : ℂ) + 2) ^ (-s))
  -- G is analytic on {Re > 0}
  have hG_analytic : AnalyticOnNhd ℂ G {s : ℂ | 0 < s.re} :=
    pair_sum_analyticOnNhd
  -- ZMod.LFunction altChar is analytic on {Re > 0} (it's entire)
  have hLF_analytic : AnalyticOnNhd ℂ (ZMod.LFunction altChar) {s : ℂ | 0 < s.re} :=
    lf_entire.differentiableOn.analyticOnNhd (isOpen_lt continuous_const continuous_re)
  -- G = LFunction altChar for Re(s) > 1
  have hGLF_gt1 : ∀ s : ℂ, 1 < s.re → G s = ZMod.LFunction altChar s := fun s hs =>
    (pair_hasSum_for_gt_one s hs).tsum_eq
  -- {Re > 0} is preconnected
  have hHP : IsPreconnected {s : ℂ | 0 < s.re} :=
    halfplane_pos_re_preconnected
  -- Apply identity theorem: G = LFunction on all of {Re > 0}
  have hEqOn : EqOn G (ZMod.LFunction altChar) {s : ℂ | 0 < s.re} :=
    hG_analytic.eqOn_of_preconnected_of_eventuallyEq hLF_analytic hHP
      (show (2 : ℂ) ∈ {s : ℂ | 0 < s.re} from by norm_num)
      (Filter.eventually_of_mem
        ((isOpen_lt continuous_const continuous_re).mem_nhds
          (show 1 < (2 : ℂ).re from by norm_num [Complex.ofReal_re]))
        (fun s hs => hGLF_gt1 s hs))
  -- Evaluate at (σ:ℂ): G(σ:ℂ) = LFunction altChar (σ:ℂ)
  have hval : G (σ : ℂ) = ZMod.LFunction altChar (σ : ℂ) :=
    hEqOn (by exact_mod_cast hσ)
  -- G(σ:ℂ).re = ∑' k, eta_pair σ k: each pair term at real σ is real
  have hG_re : G (σ : ℂ) = (∑' k : ℕ, eta_pair σ k : ℝ) := by
    simp only [G, eta_pair, eta_term]
    rw [Complex.ofReal_tsum]
    congr 1
    ext k
    rw [show (2 * (k : ℂ) + 1) ^ (-(σ : ℂ)) =
          ((2 * (k : ℝ) + 1) ^ (-σ) : ℝ) from by
      rw [show (2 * (k : ℂ) + 1) = ((2 * (k : ℝ) + 1 : ℝ) : ℂ) from by push_cast; ring]
      rw [show -(σ : ℂ) = ((-σ : ℝ) : ℂ) from by push_cast; ring]
      exact (Complex.ofReal_cpow (by positivity) (-σ)).symm,
      show (2 * (k : ℂ) + 2) ^ (-(σ : ℂ)) =
          ((2 * (k : ℝ) + 2) ^ (-σ) : ℝ) from by
      rw [show (2 * (k : ℂ) + 2) = ((2 * (k : ℝ) + 2 : ℝ) : ℂ) from by push_cast; ring]
      rw [show -(σ : ℂ) = ((-σ : ℝ) : ℂ) from by push_cast; ring]
      exact (Complex.ofReal_cpow (by positivity) (-σ)).symm]
    push_cast; ring_nf
  -- Since G(σ:ℂ) is a real number cast to ℂ, its real part is the real number
  rw [← hval]
  rw [hG_re, Complex.ofReal_re]

/-! ### Steps B and C: identity theorem and real-part extraction -/

/-- The eta identity: (1−2^{1−σ})·ζ(σ).re = ∑' k, eta_pair σ k for σ ∈ (0,1). -/
lemma eta_identity (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re = ∑' k : ℕ, eta_pair σ k := by
  -- (σ:ℂ) ≠ 1
  have hσ_ne1 : (σ : ℂ) ≠ 1 := by
    intro h
    have := congr_arg Complex.re h
    simp only [Complex.ofReal_re, Complex.one_re] at this
    linarith
  -- Step B: identity theorem extends Step A to ℂ \ {1}
  have heqOn : EqOn (ZMod.LFunction altChar)
      (fun s => (1 - (2 : ℂ) ^ (1 - s)) * riemannZeta s) {s : ℂ | s ≠ 1} :=
    lf_analytic_ne_one.eqOn_of_preconnected_of_eventuallyEq
      eta_factor_analytic
      compl_one_preconnected
      (show (2 : ℂ) ∈ {s : ℂ | s ≠ 1} from by norm_num)
      (Filter.eventually_of_mem
        ((isOpen_lt continuous_const continuous_re).mem_nhds
          (show 1 < (2 : ℂ).re from by norm_num [Complex.ofReal_re]))
        (fun s hs => lfunction_altChar_eq_cpow_mul_zeta s hs))
  -- Evaluate at (σ:ℂ) ∈ ℂ \ {1}
  have hval : ZMod.LFunction altChar (σ : ℂ) =
      (1 - (2 : ℂ) ^ (1 - (σ : ℂ))) * riemannZeta (σ : ℂ) :=
    heqOn hσ_ne1
  -- Step C: real-part extraction (2:ℂ)^(1−σ:ℂ) is real
  have h2pow_real : (2 : ℂ) ^ (1 - (σ : ℂ)) = ((2 : ℝ) ^ (1 - σ) : ℝ) := by
    rw [show (1 : ℂ) - (σ : ℂ) = ((1 - σ : ℝ) : ℂ) by push_cast; ring]
    exact (Complex.ofReal_cpow (by norm_num : (0 : ℝ) ≤ 2) (1 - σ)).symm
  have hC : ((1 - (2 : ℂ) ^ (1 - (σ : ℂ))) * riemannZeta (σ : ℂ)).re =
      (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re := by
    rw [mul_re, h2pow_real]
    simp only [Complex.sub_re, Complex.ofReal_re, Complex.one_re,
               Complex.sub_im, Complex.ofReal_im, Complex.one_im]
    ring
  -- Step D: (ZMod.LFunction altChar (σ:ℂ)).re = ∑' k, eta_pair σ k
  have hD : (ZMod.LFunction altChar (σ : ℂ)).re = ∑' k : ℕ, eta_pair σ k :=
    lfunction_re_eq_pair_tsum σ hσ0
  -- Combine: LHS = (LFunction).re = ∑' k, eta_pair σ k
  have hLHS : (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re =
      (ZMod.LFunction altChar (σ : ℂ)).re := by
    rw [hval]; exact hC.symm
  linarith

/-! ## § 5. The main theorem — PROVED -/

/-- **ZetaRealSign** (PROVED):
    ζ(σ) has negative real part for real σ ∈ (0,1).
    Factor: (1−2^{1−σ}) < 0.  Pair sum: ∑' k, eta_pair σ k > 0.
    Conclusion: ζ(σ).re < 0. -/
theorem ZetaRealSign (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 := by
  have h_fac : (1 : ℝ) - 2 ^ (1 - σ) < 0 := factor_neg σ hσ0 hσ1
  have h_eta : 0 < ∑' k : ℕ, eta_pair σ k := eta_pos σ hσ0
  have h_id := eta_identity σ hσ0 hσ1
  by_contra h
  push_neg at h
  have h_nonpos : (1 - (2 : ℝ) ^ (1 - σ)) * (riemannZeta (σ : ℂ)).re ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (le_of_lt h_fac) h
  linarith

/-- Corollary: ζ has no real zeros in (0,1). -/
theorem zeta_no_real_zero (β : ℝ) (hβ1 : 0 < β) (hβ2 : β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) : False := by
  have h_neg : (riemannZeta (β : ℂ)).re < 0 := ZetaRealSign β hβ1 hβ2
  simp [hzero] at h_neg

/-- A zero in the conventional Siegel threshold interval cannot exist. -/
theorem siegel_repulsion_from_threshold
    (β : ℝ) (h_β : (9 / 10 : ℝ) < β ∧ β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) : False :=
  zeta_no_real_zero β
    (by linarith [h_β.1])
    h_β.2
    hzero

end SiegelElementary
