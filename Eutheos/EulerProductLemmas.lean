/-
  Eutheos/EulerProductLemmas.lean
  Proved Euler-product lemmas (sorry footprint: see per-lemma notes).

  Sources (all 0 sorry in the original uploaded files):
    Batch104EulerProductCremonaClose.lean — real_euler_poly_pos_of_hasse
    Gate2_EulerBound.lean                — euler_denom_bound, euler_factor_pos
    EulerProductClosure.lean             — euler_factor_nonzero_from_deligne
    EulerProductClosure_v2_GENUINE.lean  — deligne_alpha_factorization_genuine

  Porting status:
    real_euler_poly_pos_of_hasse    — proof body ported; 0 sorry
    euler_factor_pos_at_11/13       — 0 sorry (norm_num)
    euler_factor_pos                — 0 sorry (linarith)
    euler_denom_bound               — sorry (rpow arithmetic, Mathlib v4.15 API TBD)
    deligne_alpha_factorization_genuine — sorry (Complex.normSq API, Mathlib v4.15)
    euler_factor_nonzero_from_deligne   — sorry (pending alpha_factorization)
    CpowNorm_of_prime               — sorry (Complex.abs_cpow_of_pos API TBD)
    alpha_norm_bound                — sorry (pending CpowNorm_of_prime)
    one_minus_ne_zero_of_norm_lt_one — 0 sorry (sub_ne_zero/norm_one)

  EulerProduct_GlobalNonZero_OPEN  — named open surface, 0 sorry.
-/

import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real

namespace Eutheos.EulerProductLemmas

open Real Complex

/-! ## §1. Real Euler polynomial positivity (complete-the-square) -/

/-- **real_euler_poly_pos_of_hasse** (PROVED, 0 sorry):
    For a : ℝ, p : ℕ with a² ≤ 4p (Hasse bound), u > 0, p·u² < 1:
    0 < 1 − a·u + p·u².

    Proof: complete the square.
    4p(1 − au + pu²) = (2pu − a)² + (4p − a²) ≥ 0.
    Equality forces pu² = 1, contradicting hypothesis. -/
theorem real_euler_poly_pos_of_hasse
    {a : ℝ} {p : ℕ} (hp : 0 < p) (hasse : a ^ 2 ≤ 4 * (p : ℝ))
    {u : ℝ} (hu : 0 < u) (hpu2 : (p : ℝ) * u ^ 2 < 1) :
    0 < 1 - a * u + (p : ℝ) * u ^ 2 := by
  have hp' : (0 : ℝ) < (p : ℝ) := Nat.cast_pos.mpr hp
  have hkey : 4 * (p : ℝ) * (1 - a * u + (p : ℝ) * u ^ 2) =
      (2 * (p : ℝ) * u - a) ^ 2 + (4 * (p : ℝ) - a ^ 2) := by ring
  have h_sq   : 0 ≤ (2 * (p : ℝ) * u - a) ^ 2 := sq_nonneg _
  have h_disc : 0 ≤ 4 * (p : ℝ) - a ^ 2 := by linarith
  have h_sum_pos : 0 < (2 * (p : ℝ) * u - a) ^ 2 + (4 * (p : ℝ) - a ^ 2) := by
    by_contra hle
    push_neg at hle
    have heq1 : (2 * (p : ℝ) * u - a) ^ 2 = 0 :=
      le_antisymm (by linarith) h_sq
    have heq2 : 4 * (p : ℝ) - a ^ 2 = 0 := by linarith
    have ha : a = 2 * (p : ℝ) * u := by nlinarith [sq_abs (2 * (p : ℝ) * u - a)]
    have hpu2_eq : (p : ℝ) * u ^ 2 = 1 := by nlinarith [sq_abs u, mul_pos hp' hu]
    linarith
  have h_prod_pos : 0 < 4 * (p : ℝ) * (1 - a * u + (p : ℝ) * u ^ 2) := by
    linarith [hkey]
  rcases (mul_pos_iff.mp h_prod_pos) with ⟨_, hx⟩ | ⟨hn, _⟩
  · exact hx
  · linarith [mul_pos (by linarith : (0:ℝ) < 4) hp']

/-! ## §2. Euler bound arithmetic -/

/-- **euler_denom_bound** (sorry — rpow arithmetic, Mathlib v4.15 API TBD):
    For p ≥ 2 (real): 2 · √p · p^{−3/2} = 2/p. -/
theorem euler_denom_bound {p : ℝ} (hp : 2 ≤ p) :
    2 * Real.sqrt p * p ^ (-(3/2 : ℝ)) = 2 / p := by
  sorry -- rpow_add + rpow_natCast API varies in Mathlib v4.15

/-- **euler_factor_pos** (PROVED, 0 sorry):
    For p ≥ 3 (real): 0 < 1 − 2/p − 1/p².
    Each Euler factor denominator is bounded away from 0. -/
theorem euler_factor_pos {p : ℝ} (hp : 3 ≤ p) :
    0 < 1 - 2 / p - 1 / p ^ 2 := by
  have hp0 : 0 < p := by linarith
  have h1 : 2 / p ≤ 2 / 3 := by
    apply div_le_div_of_nonneg_left (by norm_num) hp0 hp
  have h2 : 1 / p ^ 2 ≤ 1 / 9 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
    nlinarith
  linarith

theorem euler_factor_pos_at_11 : (0 : ℝ) < 1 - 2/11 - 1/(11:ℝ)^2 := by norm_num
theorem euler_factor_pos_at_13 : (0 : ℝ) < 1 - 2/13 - 1/(13:ℝ)^2 := by norm_num

/-! ## §3. Deligne alpha factorization -/

/-- **deligne_alpha_factorization_genuine** (sorry — Complex.normSq API, Mathlib v4.15):
    For p : ℕ, p > 0, a : ℝ with a² ≤ 4p:
    ∃ α β : ℂ with |α| = |β| = √p, α+β = a, αβ = p. -/
theorem deligne_alpha_factorization_genuine (p : ℕ) (hp : 0 < p) (a : ℝ)
    (ha : a ^ 2 ≤ 4 * (p : ℝ)) :
    ∃ alpha beta : ℂ,
      Complex.abs alpha = Real.sqrt p ∧
      Complex.abs beta  = Real.sqrt p ∧
      alpha + beta = (a : ℂ) ∧
      alpha * beta = (p : ℂ) := by
  sorry -- proof uses Complex.normSq_mk, Real.sqrt_sq — API alignment needed

/-! ## §4. Local Euler factor non-vanishing -/

/-- **one_minus_ne_zero_of_norm_lt_one** (PROVED, 0 sorry):
    ‖z‖ < 1 → 1 − z ≠ 0 in ℂ. -/
theorem one_minus_ne_zero_of_norm_lt_one (z : ℂ) (h : ‖z‖ < 1) : 1 - z ≠ 0 := by
  intro heq
  have hz : z = 1 := by linarith [show z = 1 from by linear_combination -heq]
  rw [hz, norm_one] at h
  linarith

/-- **CpowNorm_of_prime** (sorry — Complex.abs_cpow API, Mathlib v4.15):
    ‖(p : ℂ)^(−s)‖ = (p : ℝ)^(−s.re). -/
theorem CpowNorm_of_prime (p : ℕ) (hp : p.Prime) (s : ℂ) :
    ‖(p : ℂ) ^ (-s)‖ = (p : ℝ) ^ (-s.re) := by
  sorry -- Complex.abs_cpow_of_pos API alignment with Mathlib v4.15 needed

/-- **alpha_norm_bound** (sorry — pending CpowNorm_of_prime):
    ‖α · (p:ℂ)^(−s)‖ < 1 when ‖α‖ = √p and Re(s) > 3/2. -/
theorem alpha_norm_bound
    (α : ℂ) (p : ℕ) (hp : p.Prime) (s : ℂ)
    (hα : ‖α‖ = Real.sqrt p)
    (h_cpow : ‖(p : ℂ) ^ (-s)‖ = (p : ℝ) ^ (-s.re))
    (hs : (3 : ℝ) / 2 < s.re) :
    ‖α * (p : ℂ) ^ (-s)‖ < 1 := by
  sorry -- pending CpowNorm + rpow monotonicity in Mathlib v4.15

/-- **euler_factor_nonzero_from_deligne** (sorry — pending alpha_norm_bound):
    All local Euler factors L_loc p s ≠ 0 for Re(s) > 3/2, given Deligne bound. -/
theorem euler_factor_nonzero_from_deligne
    (L_loc : ℕ → ℂ → ℂ)
    (h_del : ∀ p : ℕ, p.Prime →
      ∃ (α β : ℂ), ‖α‖ = Real.sqrt p ∧ ‖β‖ = Real.sqrt p ∧
      ∀ s : ℂ, L_loc p s = (1 - α * (p : ℂ) ^ (-s)) * (1 - β * (p : ℂ) ^ (-s)))
    (p : ℕ) (hp : p.Prime) (s : ℂ) (hs : (3 : ℝ) / 2 < s.re) :
    L_loc p s ≠ 0 := by
  sorry -- pending alpha_norm_bound

/-! ## §5. Named open surface: global non-vanishing -/

/-- **EulerProduct_GlobalNonZero_OPEN** (~10pp, Mathlib v4.17+ target):
    Given every local factor L_loc p s ≠ 0, the global L-function L s ≠ 0.
    Status: OPEN.  Local non-vanishing blocked above. -/
def EulerProduct_GlobalNonZero_OPEN
    (L : ℂ → ℂ) (L_loc : ℕ → ℂ → ℂ) : Prop :=
  (∀ (p : ℕ), p.Prime → ∀ s : ℂ, (3:ℝ)/2 < s.re → L_loc p s ≠ 0) →
  ∀ s : ℂ, (3:ℝ)/2 < s.re → L s ≠ 0

end Eutheos.EulerProductLemmas
