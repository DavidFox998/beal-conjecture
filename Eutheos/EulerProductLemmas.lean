/-
  Eutheos/EulerProductLemmas.lean
  Proved Euler-product lemmas.  SORRY: 0.

  Proofs sourced from:
    arakelov-rh-descent/lean/Closure/EulerProductClosure.lean        (0 sorry)
    arakelov-rh-descent/lean/Closure/RamanujanFactorizationClosed.lean (0 sorry)

  All theorem statements are self-contained; imports only Mathlib.
  Axiom footprint: {propext, Classical.choice, Quot.sound}.
-/

import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal
import Mathlib.Analysis.SpecialFunctions.Complex.Circle

namespace Eutheos.EulerProductLemmas

open Real Complex

/-! ## §1. Real Euler polynomial positivity (complete-the-square) -/

/-- **real_euler_poly_pos_of_hasse** (PROVED, 0 sorry):
    For a : ℝ, p : ℕ with a² ≤ 4p (Hasse bound), u > 0, p·u² < 1:
    0 < 1 − a·u + p·u².  Proof: complete the square. -/
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

/-- **euler_denom_bound** (PROVED, 0 sorry):
    For p ≥ 2 (real): 2 · √p · p^{−3/2} = 2/p.
    Source: Gate2_EulerBound.lean (uploaded). -/
theorem euler_denom_bound {p : ℝ} (hp : 2 ≤ p) :
    2 * Real.sqrt p * p ^ (-(3/2 : ℝ)) = 2 / p := by
  have hp0 : 0 < p := by linarith
  rw [Real.sqrt_eq_rpow, ← Real.rpow_add hp0]
  have hexp : (1 : ℝ) / 2 + -(3 / 2) = -1 := by norm_num
  rw [hexp, show (-1 : ℝ) = -(1 : ℝ) from rfl,
      Real.rpow_neg (le_of_lt hp0), Real.rpow_one]
  field_simp

/-- **euler_factor_pos** (PROVED, 0 sorry):
    For p ≥ 3 (real): 0 < 1 − 2/p − 1/p². -/
theorem euler_factor_pos {p : ℝ} (hp : 3 ≤ p) :
    0 < 1 - 2 / p - 1 / p ^ 2 := by
  have hp0 : 0 < p := by linarith
  have h1 : 2 / p ≤ 2 / 3 :=
    div_le_div_of_nonneg_left (by norm_num) hp0 hp
  have h2 : 1 / p ^ 2 ≤ 1 / 9 :=
    div_le_div_of_nonneg_left (by norm_num) (by positivity) (by nlinarith)
  linarith

theorem euler_factor_pos_at_11 : (0 : ℝ) < 1 - 2/11 - 1/(11:ℝ)^2 := by norm_num
theorem euler_factor_pos_at_13 : (0 : ℝ) < 1 - 2/13 - 1/(13:ℝ)^2 := by norm_num

/-! ## §3. Deligne alpha factorization (PROVED, 0 sorry) -/

/-- **deligne_alpha_factorization_genuine** (PROVED, 0 sorry):
    For p : ℕ, p > 0, a : ℝ with a² ≤ 4p:
    ∃ α β : ℂ with |α| = |β| = √p, α+β = a, αβ = p.
    Proof: α = ⟨a/2, √(4p−a²)/2⟩, β = ⟨a/2, −√(4p−a²)/2⟩.
    Source: arakelov-rh-descent/lean/Closure/RamanujanFactorizationClosed.lean (0 sorry). -/
theorem deligne_alpha_factorization_genuine (p : ℕ) (hp : 0 < p) (a : ℝ)
    (ha : a ^ 2 ≤ 4 * (p : ℝ)) :
    ∃ alpha beta : ℂ,
      Complex.abs alpha = Real.sqrt p ∧
      Complex.abs beta  = Real.sqrt p ∧
      alpha + beta = (a : ℂ) ∧
      alpha * beta = (p : ℂ) := by
  have hd : (0 : ℝ) ≤ 4 * (p : ℝ) - a ^ 2 := by linarith
  have hp_nn : (0 : ℝ) ≤ (p : ℝ) := Nat.cast_nonneg p
  set sqd := Real.sqrt (4 * (p : ℝ) - a ^ 2) with hsqd_def
  have hsqd_sq : sqd ^ 2 = 4 * (p : ℝ) - a ^ 2 := Real.sq_sqrt hd
  refine ⟨(⟨a / 2, sqd / 2⟩ : ℂ), (⟨a / 2, -(sqd / 2)⟩ : ℂ), ?_, ?_, ?_, ?_⟩
  -- Condition 1: |alpha| = √p
  · have h1 : ‖(⟨a / 2, sqd / 2⟩ : ℂ)‖ ^ 2 = (p : ℝ) := by
      rw [Complex.norm_eq_abs, Complex.sq_abs, Complex.normSq_mk]
      nlinarith [hsqd_sq]
    rw [Complex.norm_eq_abs] at h1
    rw [← Real.sqrt_sq (Complex.abs.nonneg _), h1]
  -- Condition 2: |beta| = √p
  · have h2 : ‖(⟨a / 2, -(sqd / 2)⟩ : ℂ)‖ ^ 2 = (p : ℝ) := by
      rw [Complex.norm_eq_abs, Complex.sq_abs, Complex.normSq_mk]
      simp only [neg_mul, mul_neg, neg_neg]
      nlinarith [hsqd_sq]
    rw [Complex.norm_eq_abs] at h2
    rw [← Real.sqrt_sq (Complex.abs.nonneg _), h2]
  -- Condition 3: alpha + beta = a
  · apply Complex.ext
    · simp [Complex.add_re]; ring
    · simp [Complex.add_im]; ring
  -- Condition 4: alpha * beta = p
  · apply Complex.ext
    · simp only [Complex.mul_re, Complex.re, Complex.im]
      push_cast; nlinarith [hsqd_sq]
    · simp only [Complex.mul_im, Complex.re, Complex.im]; ring

/-! ## §4. Local Euler factor non-vanishing (PROVED, 0 sorry) -/

/-- **one_minus_ne_zero_of_norm_lt_one** (PROVED, 0 sorry):
    ‖z‖ < 1 → 1 − z ≠ 0.
    Source: arakelov-rh-descent/lean/Closure/EulerProductClosure.lean. -/
theorem one_minus_ne_zero_of_norm_lt_one (z : ℂ) (h : ‖z‖ < 1) : 1 - z ≠ 0 := by
  intro heq
  have hz : z = 1 := (sub_eq_zero.mp heq).symm
  rw [hz, norm_one] at h
  linarith

/-- **CpowNorm_of_prime** (PROVED, 0 sorry):
    ‖(p : ℂ)^(−s)‖ = (p : ℝ)^(−s.re).
    Source: Complex.abs_cpow_of_pos (Mathlib). -/
theorem CpowNorm_of_prime (p : ℕ) (hp : p.Prime) (s : ℂ) :
    ‖(p : ℂ) ^ (-s)‖ = (p : ℝ) ^ (-s.re) := by
  have hp_pos : (0 : ℝ) < (p : ℝ) := Nat.cast_pos.mpr hp.pos
  rw [norm_eq_abs, Complex.abs_cpow_of_pos hp_pos, Complex.neg_re]

/-- **alpha_norm_bound** (PROVED, 0 sorry):
    ‖α‖ = √p and ‖(p:ℂ)^(−s)‖ = p^(−Re s), Re(s) > 3/2 → ‖α·(p:ℂ)^(−s)‖ < 1.
    Source: arakelov-rh-descent/lean/Closure/EulerProductClosure.lean. -/
theorem alpha_norm_bound
    (α : ℂ) (p : ℕ) (hp : p.Prime) (s : ℂ)
    (hα : ‖α‖ = Real.sqrt p)
    (h_cpow : ‖(p : ℂ) ^ (-s)‖ = (p : ℝ) ^ (-s.re))
    (hs : (3 : ℝ) / 2 < s.re) :
    ‖α * (p : ℂ) ^ (-s)‖ < 1 := by
  have hp_pos : (0 : ℝ) < (p : ℝ) := Nat.cast_pos.mpr hp.pos
  have hp_one : (1 : ℝ) < (p : ℝ) := by exact_mod_cast hp.one_lt
  rw [norm_mul, hα, h_cpow, Real.sqrt_eq_rpow, ← Real.rpow_add hp_pos]
  have hexp : (1 : ℝ) / 2 + -s.re < 0 := by linarith
  calc (p : ℝ) ^ ((1 : ℝ) / 2 + -s.re)
      < (p : ℝ) ^ (0 : ℝ) := Real.rpow_lt_rpow_of_exponent_lt hp_one hexp
    _ = 1               := Real.rpow_zero _

/-- **euler_factor_nonzero_from_deligne** (PROVED, 0 sorry):
    Given Deligne factorization ∀ p prime, the local Euler factor L_loc p s ≠ 0 for Re(s) > 3/2.
    Source: arakelov-rh-descent/lean/Closure/EulerProductClosure.lean. -/
theorem euler_factor_nonzero_from_deligne
    (L_loc : ℕ → ℂ → ℂ)
    (h_del : ∀ p : ℕ, p.Prime →
      ∃ (α β : ℂ), ‖α‖ = Real.sqrt p ∧ ‖β‖ = Real.sqrt p ∧
      ∀ s : ℂ, L_loc p s = (1 - α * (p : ℂ) ^ (-s)) * (1 - β * (p : ℂ) ^ (-s)))
    (p : ℕ) (hp : p.Prime) (s : ℂ) (hs : (3 : ℝ) / 2 < s.re) :
    L_loc p s ≠ 0 := by
  obtain ⟨α, β, hα, hβ, h_factor⟩ := h_del p hp
  rw [h_factor]
  apply mul_ne_zero
  · apply one_minus_ne_zero_of_norm_lt_one
    exact alpha_norm_bound α p hp s hα (CpowNorm_of_prime p hp s) hs
  · apply one_minus_ne_zero_of_norm_lt_one
    exact alpha_norm_bound β p hp s hβ (CpowNorm_of_prime p hp s) hs

/-! ## §5. Named open surface: global non-vanishing -/

/-- **EulerProduct_GlobalNonZero_OPEN** (~10pp, Mathlib v4.17+ target):
    Given every local factor ≠ 0, the global L-function ≠ 0. OPEN. -/
def EulerProduct_GlobalNonZero_OPEN
    (L : ℂ → ℂ) (L_loc : ℕ → ℂ → ℂ) : Prop :=
  (∀ (p : ℕ), p.Prime → ∀ s : ℂ, (3:ℝ)/2 < s.re → L_loc p s ≠ 0) →
  ∀ s : ℂ, (3:ℝ)/2 < s.re → L s ≠ 0

end Eutheos.EulerProductLemmas
