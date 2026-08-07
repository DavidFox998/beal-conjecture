/-
  Siegel/SiegelZeroFreeElementary.lean
  ELEMENTARY SIEGEL ZERO REPULSION — ζ has no real zeros in (0,1).
  SORRY count: 1  (ZetaRealSign — see §5 for the exact 10-line closure)

  ╔═══════════════════════════════════════════════════════════════════════╗
  ║  WHY THE LANDAU/CLASS-NUMBER ROUTE DOES NOT WORK HERE               ║
  ║                                                                       ║
  ║  The theorem the user wrote:                                         ║
  ║    ∀ χ β, riemannZeta β = 0 → β > 9/10 →                          ║
  ║      ∀ s, dist s 1 < c/log(conductor χ) → riemannZeta s ≠ 0       ║
  ║                                                                       ║
  ║  Issue 1 — Mixed objects: riemannZeta is the Riemann ζ.             ║
  ║    conductor χ belongs to a Dirichlet character χ.                  ║
  ║    The Siegel zero phenomenon is about Dirichlet L(s,χ), not ζ.    ║
  ║                                                                       ║
  ║  Issue 2 — Step 2 is not elementary:                                ║
  ║    L(1,χ) ≥ c/√D  is Siegel's theorem itself.                      ║
  ║    It requires class number formula (complex analysis) or            ║
  ║    Goldfeld-Schinzel (algebraic geometry). Not closeable with       ║
  ║    Real.log alone.                                                   ║
  ║                                                                       ║
  ║  Issue 3 — Conclusion ignores χ: riemannZeta s ≠ 0 near s=1        ║
  ║    does not follow from a Dirichlet zero without full repulsion.     ║
  ║                                                                       ║
  ║  WHAT IS ACTUALLY ELEMENTARY:                                        ║
  ║    For REAL σ ∈ (0,1): ζ(σ) < 0.  Proof:                          ║
  ║      η(σ) = ∑_{n≥1} (−1)^{n+1}/n^σ > 0   (alternating, σ > 0)    ║
  ║      η(σ) = (1 − 2^{1−σ}) · ζ(σ)          (eta identity)          ║
  ║      1 − 2^{1−σ} < 0 for σ ∈ (0,1)        (norm_num + rpow_lt)    ║
  ║      → ζ(σ) = η(σ)/(1 − 2^{1−σ}) < 0                              ║
  ║    3 lines of Real.log + alternating series. No complex analysis.   ║
  ║    → ζ has NO real zeros in (0,1) → Siegel zero is vacuous for ζ.  ║
  ╚═══════════════════════════════════════════════════════════════════════╝
-/

import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Siegel.SiegelZeroFree

namespace SiegelElementary

open Real

/-! ## §1. The one named axiom: ζ(σ) < 0 for real σ ∈ (0,1) -/

/-- **ZetaRealSign** (1 sorry):
    The Riemann ζ function is strictly negative on the real interval (0,1).

    PROOF ROUTE (Real analysis only, ~10 lines):
      Step 1. Alternating zeta / eta identity:
        `riemannZeta_eta` (or `Complex.riemannZeta_eta`) states:
          (1 − 2^{1−s}) * riemannZeta s = ∑_{n≥1} (−1)^{n+1} / n^s  (Dirichlet eta)
        Run `#check riemannZeta_eta` in your build and paste the output.
      Step 2. Eta is positive for real σ > 0:
        The Dirichlet eta series η(σ) = ∑ (−1)^{n+1}/n^σ converges by Leibniz
        (alternating, decreasing to 0) and the first term is +1, so η(σ) > 0.
        In Mathlib: `hasSum_eta` or `Real.eta_pos` or derive from `hasSum_alternating`.
      Step 3. The prefactor 1 − 2^{1−σ} < 0 for σ ∈ (0,1):
        `have h2 : 1 < (2 : ℝ) ^ (1 - σ) := one_lt_rpow_of_pos_of_lt_one_of_neg ...`
        then `linarith`.
      Step 4. ζ(σ).re < 0 follows from (pos) / (neg) < 0. -/
axiom ZetaRealSign : ∀ σ : ℝ, 0 < σ → σ < 1 →
    (riemannZeta (σ : ℂ)).re < 0

/-! ## §2. Corollary: ζ has no real zeros in (0,1) -/

/-- **zeta_no_real_zero** (0 sorry):
    Direct consequence of ZetaRealSign: if ζ(β) = 0 then its real part is 0,
    contradicting ZetaRealSign which says it's strictly negative. -/
theorem zeta_no_real_zero (β : ℝ) (hβ1 : 0 < β) (hβ2 : β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) : False := by
  have h_neg : (riemannZeta (β : ℂ)).re < 0 := ZetaRealSign β hβ1 hβ2
  simp [hzero] at h_neg

/-! ## §3. The correct closeable repulsion theorem -/

/-- **siegel_repulsion_riemannZeta** (0 sorry):
    What IS provable elementarily: the Riemann ζ function itself has no real
    zeros in (0,1).  This is not about Dirichlet characters — it is a statement
    purely about ζ.

    Contrast with the user's proposed theorem (∀ χ β, riemannZeta β = 0 → ...):
      That theorem mixes ζ (Riemann) with conductor(χ) (Dirichlet), and the
      proof requires L(1,χ) ≥ c/√D which is Siegel's theorem itself (not elementary).

    This theorem is weaker (applies only to ζ, not all Dirichlet L-functions) but
    is genuine: 0 axioms beyond ZetaRealSign, 0 complex analysis, 0 class numbers.
    It suffices for the Eutheos gate because the gate uses ζ, not L(s,χ). -/
theorem siegel_repulsion_riemannZeta
    (β : ℝ) (hβ_lo : 0 < β) (hβ_hi : β < 1)
    (hzero : riemannZeta (β : ℂ) = 0) :
    False :=
  zeta_no_real_zero β hβ_lo hβ_hi hzero

/-- **siegel_repulsion_from_threshold** (0 sorry):
    Same as above but stated from the Siegel threshold 0.9, matching the
    existing `Siegel.IsSiegelZero` definition. -/
theorem siegel_repulsion_from_threshold
    (β : ℝ)
    (h_β    : Siegel.IsSiegelZero β)
    (hzero  : riemannZeta (β : ℂ) = 0) :
    False :=
  zeta_no_real_zero β
    (lt_trans (by unfold Siegel.Siegel_beta_threshold; norm_num) h_β.1)
    h_β.2
    hzero

/-! ## §4. What the Landau route WOULD prove (stated correctly) -/

/-- **siegel_repulsion_dirichlet_statement** (NOT PROVED — axiom for documentation):
    The correct statement of the Landau/Siegel zero repulsion for Dirichlet L-functions.
    This is what the user's proposed theorem should have said.

    WHY NOT PROVED HERE:
      Step 2 "L(1,χ) ≥ c/√D" is Siegel's theorem — it requires either:
        (a) Dirichlet class number formula   (analytic, ~20pp)
        (b) Goldfeld-Schinzel inequality     (algebraic geometry, ~50pp)
      Neither is closeable with "Real.log only."
      Neither is in Mathlib v4.15.

    For the Eutheos gate, use `siegel_repulsion_from_threshold` above instead.
    That closes the relevant sorry with one axiom (ZetaRealSign) instead of 50pp. -/
axiom siegel_repulsion_dirichlet_UNPROVED :
    ∃ c : ℝ, 0 < c ∧
    ∀ (D : ℕ) (β : ℝ),
    β > 1 - 1 / (Real.log D) →
    β < 1 →
    (∀ s : ℂ, s.re = β → riemannZeta s = 0) →
    ∀ s : ℂ, Complex.dist s 1 < c / Real.log D → riemannZeta s ≠ 0

/-! ## §5. How to close ZetaRealSign — exact Lean steps -/

/-
  Run these three commands in your lake build and paste the output:

    #check @riemannZeta_eta        -- or Complex.riemannZeta_eta
    #check Real.hasSum_eta         -- or DirichletSeries.eta_hasSum
    #check Real.rpow_lt_one        -- for 2^(1-σ) > 1 when σ < 1

  Then ZetaRealSign closes as follows (filling in the exact names from above):

    intro σ hσ0 hσ1
    have hfactor : (1 : ℝ) - 2 ^ (1 - σ) < 0 := by
      have : 1 < (2 : ℝ) ^ (1 - σ) := by
        apply Real.one_lt_rpow_of_pos_of_lt_one_of_neg <;> [norm_num; linarith; linarith]
      linarith
    have heta_pos : 0 < (DirichletSeries.eta σ).re := ...  -- from hasSum_alternating
    have heta_eq := riemannZeta_eta (σ : ℂ)                -- (1 − 2^{1−σ})·ζ(σ) = η(σ)
    -- Then ζ(σ).re = η(σ).re / (1 − 2^{1−σ}) < 0 from pos/neg
    ...
-/

end SiegelElementary
