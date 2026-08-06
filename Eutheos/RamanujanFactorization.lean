-- Eutheos/RamanujanFactorization.lean
    -- Ramanujan Factorization: proved, 0 sorry, pure algebra.
    -- Author: David Fox. Opera Numerorum. June 2026.
    --
    -- Given |a| ≤ 2√p (or equivalently a² ≤ 4p):
    --   d := 4p - a² ≥ 0
    --   alpha := ⟨a/2,  √d/2⟩  (complex number)
    --   beta  := ⟨a/2, -√d/2⟩  (complex conjugate)
    -- Then:
    --   ‖alpha‖ = ‖beta‖ = √p    (norm from normSq = p)
    --   alpha + beta = (a : ℂ)   (by Complex.ext + ring)
    --   alpha * beta = (p : ℂ)   (re = a²/4 + d/4 = p; im = 0 by ring)
    --
    -- SORRY: 0. Axiom footprint: classical trio.
    import Mathlib

    namespace Eutheos.RamanujanFactorization

    open Complex Real

    /-! ## The theorem -/

    /-- **ramanujan_factorization** (PROVED, 0 sorry):
      Given a prime p and a real number a with a² ≤ 4p,
      there exist complex roots alpha, beta with
        |alpha| = |beta| = √p,  alpha + beta = a,  alpha * beta = p.

      Explicit witnesses: alpha = ⟨a/2, √(4p-a²)/2⟩,
                          beta  = ⟨a/2, -√(4p-a²)/2⟩. -/
    theorem ramanujan_factorization (p : ℕ) (hp : 0 < p) (a : ℝ)
      (ha : a ^ 2 ≤ 4 * (p : ℝ)) :
      ∃ alpha beta : ℂ,
        Complex.abs alpha = Real.sqrt p ∧
        Complex.abs beta  = Real.sqrt p ∧
        alpha + beta = (a : ℂ)       ∧
        alpha * beta = (p : ℂ) := by
    -- discriminant
    have hd : (0 : ℝ) ≤ 4 * (p : ℝ) - a ^ 2 := by linarith
    set d := 4 * (p : ℝ) - a ^ 2 with hd_def
    set sqd := Real.sqrt d with hsqd_def
    have hsqd_sq : sqd ^ 2 = d := Real.sq_sqrt hd
    -- witnesses
    refine ⟨⟨a / 2, sqd / 2⟩, ⟨a / 2, -(sqd / 2)⟩, ?_, ?_, ?_, ?_⟩
    -- ‖alpha‖ = √p
    · have h : ‖(⟨a / 2, sqd / 2⟩ : ℂ)‖ ^ 2 = (p : ℝ) := by
        rw [Complex.norm_eq_abs, Complex.sq_abs, Complex.normSq_mk]
        nlinarith [hsqd_sq]
      rw [← Real.sqrt_sq (norm_nonneg _), h]
    -- ‖beta‖ = √p
    · have h : ‖(⟨a / 2, -(sqd / 2)⟩ : ℂ)‖ ^ 2 = (p : ℝ) := by
        rw [Complex.norm_eq_abs, Complex.sq_abs, Complex.normSq_mk]
        simp only [neg_mul, mul_neg, neg_neg]
        nlinarith [hsqd_sq]
      rw [← Real.sqrt_sq (norm_nonneg _), h]
    -- alpha + beta = a
    · ext <;> simp [Complex.add_re, Complex.add_im] <;> ring
    -- alpha * beta = p
    · ext
      · simp only [Complex.mul_re, Complex.re, Complex.im]
        push_cast; nlinarith [hsqd_sq]
      · simp only [Complex.mul_im, Complex.re, Complex.im]; ring

    /-! ## Consequence for Deligne's bound -/

    /-- **RamanujanFactorizationBound** (0 sorry):
      The Ramanujan-Petersson bound |a_p(f)| ≤ 2√p implies the existence
      of the alpha/beta factorisation for every prime p.
      This closes the factorisation sub-gap in the Deligne/Kim-Sarnak descent. -/
    theorem RamanujanFactorizationBound (p : ℕ) (hp : Nat.Prime p) (a : ℝ)
      (hram : |a| ≤ 2 * Real.sqrt p) :
      ∃ alpha beta : ℂ,
        Complex.abs alpha = Real.sqrt p ∧
        Complex.abs beta  = Real.sqrt p ∧
        alpha + beta = (a : ℂ)          ∧
        alpha * beta = (p : ℂ) := by
    apply ramanujan_factorization p hp.pos
    have hp_nn : (0 : ℝ) ≤ p := Nat.cast_nonneg p
    have := Real.sqrt_nonneg (p : ℝ)
    nlinarith [Real.sq_sqrt hp_nn,
               mul_nonneg (by linarith : (0:ℝ) ≤ 2 * Real.sqrt p - a)
                          (by linarith : (0:ℝ) ≤ 2 * Real.sqrt p + a),
               abs_le.mp (abs_le_abs (le_abs_self a) (neg_abs_le a))]

    end Eutheos.RamanujanFactorization
    