-- Eutheos/RamanujanFactorization.lean
    -- Ramanujan Factorization: proved, 0 sorry, pure algebra.
    -- Author: David Fox. Opera Numerorum. June 2026.
    --
    -- Given |a| ≤ 2√p (or equivalently a² ≤ 4p):
    --   d := 4p - a² ≥ 0
    --   alpha := ⟨a/2,  √d/2⟩  (complex number)
    --   beta  := ⟨a/2, -√d/2⟩  (complex conjugate)
    -- Then:
    --   |alpha| = |beta| = √p    (norm from normSq = p)
    --   alpha + beta = (a : ℂ)   (definitional + ring)
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
      |alpha| = |beta| = √p,  alpha + beta = a,  alpha * beta = p. -/
    theorem ramanujan_factorization (p : ℕ) (hp : 0 < p) (a : ℝ)
      (ha : a ^ 2 ≤ 4 * (p : ℝ)) :
      ∃ alpha beta : ℂ,
        Complex.abs alpha = Real.sqrt p ∧
        Complex.abs beta  = Real.sqrt p ∧
        alpha + beta = (a : ℂ)       ∧
        alpha * beta = (p : ℂ) := by
    have hd : (0 : ℝ) ≤ 4 * (p : ℝ) - a ^ 2 := by linarith
    set d   := 4 * (p : ℝ) - a ^ 2 with hd_def
    set sqd := Real.sqrt d with hsqd_def
    have hsqd_sq : sqd ^ 2 = d := Real.sq_sqrt hd
    refine ⟨⟨a / 2, sqd / 2⟩, ⟨a / 2, -(sqd / 2)⟩, ?_, ?_, ?_, ?_⟩
    -- |alpha| = √p
    · rw [Complex.abs_apply]
      have h1 : Complex.normSq (⟨a / 2, sqd / 2⟩ : ℂ) = (p : ℝ) := by
        simp only [Complex.normSq_mk]
        nlinarith [hsqd_sq]
      rw [h1]
    -- |beta| = √p
    · rw [Complex.abs_apply]
      have h1 : Complex.normSq (⟨a / 2, -(sqd / 2)⟩ : ℂ) = (p : ℝ) := by
        simp only [Complex.normSq_mk]
        nlinarith [hsqd_sq]
      rw [h1]
    -- alpha + beta = (a : ℂ) : struct ops are definitionally transparent
    · apply Complex.ext
      · show a / 2 + a / 2 = a
        ring
      · show sqd / 2 + -(sqd / 2) = (0 : ℝ)
        ring
    -- alpha * beta = (p : ℂ)
    · apply Complex.ext
      · show a / 2 * (a / 2) - sqd / 2 * -(sqd / 2) = (p : ℝ)
        nlinarith [hsqd_sq]
      · show a / 2 * -(sqd / 2) + sqd / 2 * (a / 2) = (0 : ℝ)
        ring

    /-! ## Consequence for Deligne's bound -/

    /-- **RamanujanFactorizationBound** (0 sorry):
    The Ramanujan-Petersson bound |a_p(f)| ≤ 2√p implies the existence
    of the alpha/beta factorisation for every prime p. -/
    theorem RamanujanFactorizationBound (p : ℕ) (hp : Nat.Prime p) (a : ℝ)
      (hram : |a| ≤ 2 * Real.sqrt p) :
      ∃ alpha beta : ℂ,
        Complex.abs alpha = Real.sqrt p ∧
        Complex.abs beta  = Real.sqrt p ∧
        alpha + beta = (a : ℂ)          ∧
        alpha * beta = (p : ℂ) := by
    apply ramanujan_factorization p hp.pos
    have hp_nn : (0 : ℝ) ≤ p := Nat.cast_nonneg p
    have ⟨h_neg, h_pos⟩ := abs_le.mp hram
    nlinarith [Real.sq_sqrt hp_nn, Real.sqrt_nonneg (p : ℝ)]



    end Eutheos.RamanujanFactorization
    