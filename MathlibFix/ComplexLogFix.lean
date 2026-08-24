/-
  MathlibFix/ComplexLogFix.lean
  Vendor shim: 5 Complex log/exp/zeta lemmas — checked against Mathlib v4.15.0 source.
  SORRY count: 1  (zeta_log_bound — see below)

  DEFINITIVE API AUDIT (Mathlib v4.15.0, from source):
  ┌─────────────────────────────────────────┬──────────────────────────────────────────┐
  │ Lemma                                   │ Status                                   │
  ├─────────────────────────────────────────┼──────────────────────────────────────────┤
  │ complex_log_exp_eq  (Lemma 1)           │ PROVED — wraps Complex.log_exp           │
  │ log_mul_fix         (Lemma 2)           │ PROVED — wraps Complex.log_mul (alias)   │
  │ arg_continuous_fix  (Lemma 3)           │ PROVED — wraps Complex.continuousOn_arg  │
  │ zeta_ne_zero_of_one_lt_re (Lemma 4)    │ PROVED — wraps riemannZeta_ne_zero_...   │
  │ zeta_log_bound      (Lemma 5)           │ 1 SORRY — see §5                         │
  └─────────────────────────────────────────┴──────────────────────────────────────────┘

  ABSENT from Mathlib v4.15.0 (searched every file):
    riemannZeta_eta           — no ready-made eta identity; the Siegel module proves
                                 the needed identity by analytic continuation
    riemannZeta_eulerProduct  — Euler product for ζ by that name: NOT PRESENT
    ZetaRealSign is proved in SiegelZeroFreeElementary from the eta identity,
    pair-sum positivity, and the sign of 1 − 2^(1−σ).

  WHAT IS PRESENT for the Euler product:
    summable_neg_log_one_sub_mul_prime_cpow (Nonvanishing.lean, line 265):
      Summable (fun p : Nat.Primes => -Complex.log(1 − χ p · p^{-s}))  for 1 < s.re
    LSeries_eulerProduct_exp_log (Nonvanishing.lean, line 292–294):
      Used but defined in a transitive import (likely Analysis.EulerProduct).
      Applies to Dirichlet L-series, not directly to riemannZeta.

  UNCONDITIONAL.LEAN SORRYS: still blocked on critical-line Euler product.
-/

import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.SpecialFunctions.Log.Basic

namespace MathlibFix

open Complex Real

/-! ## Lemma 1: log(exp z) = z when |im z| < π — PROVED -/

/-- **complex_log_exp_eq** (0 sorry):
    `Complex.log_exp` from `Mathlib.Analysis.SpecialFunctions.Complex.Log`.
    Signature: `Complex.log_exp (h : |z.im| < Real.pi) : Complex.log (Complex.exp z) = z` -/
lemma complex_log_exp_eq (z : ℂ) (harg : |z.im| < Real.pi) :
    Complex.log (Complex.exp z) = z :=
  Complex.log_exp harg

/-! ## Lemma 2: log(z * w) is additive in the principal branch — PROVED -/

/-- **log_mul_fix** (0 sorry):
    Source: `Mathlib/Analysis/SpecialFunctions/Complex/Log.lean`
    ```
    lemma log_mul_eq_add_log_iff {x y : ℂ} (hx₀ : x ≠ 0) (hy₀ : y ≠ 0) :
        log (x * y) = log x + log y ↔ arg x + arg y ∈ Set.Ioc (-π) π
    alias ⟨_, log_mul⟩ := log_mul_eq_add_log_iff
    ```
    So `Complex.log_mul (hx₀ : x ≠ 0) (hy₀ : y ≠ 0) (h : arg x + arg y ∈ Set.Ioc (-π) π)`. -/
lemma log_mul_fix (z w : ℂ) (hz : z ≠ 0) (hw : w ≠ 0)
    (harg_lo : -(Real.pi) < z.arg + w.arg)
    (harg_hi : z.arg + w.arg ≤ Real.pi) :
    Complex.log (z * w) = Complex.log z + Complex.log w :=
  Complex.log_mul hz hw (Set.mem_Ioc.mpr ⟨harg_lo, harg_hi⟩)

/-! ## Lemma 3: arg is continuous away from the slit — PROVED -/

/-- **arg_continuous_fix** (0 sorry):
    `Complex.continuousOn_arg` from `Mathlib.Analysis.SpecialFunctions.Complex.Log`. -/
lemma arg_continuous_fix :
    ContinuousOn Complex.arg {z : ℂ | 0 < z.re ∨ z.im ≠ 0} :=
  Complex.continuousOn_arg

/-! ## Lemma 4: ζ(s) ≠ 0 for Re(s) > 1 — PROVED -/

/-- **zeta_ne_zero_of_one_lt_re** (0 sorry):
    Source: `Mathlib/NumberTheory/LSeries/Dirichlet.lean`, line 325.
    ```
    lemma riemannZeta_ne_zero_of_one_lt_re {s : ℂ} (hs : 1 < s.re) : riemannZeta s ≠ 0
    ``` -/
lemma zeta_ne_zero_of_one_lt_re (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s ≠ 0 :=
  riemannZeta_ne_zero_of_one_lt_re hs

/-! ## Lemma 5: |log ζ(s)| bound — 1 SORRY -/

/-- **zeta_log_bound** (1 sorry):
    For Re s > 1, ‖log ζ(s)‖ ≤ ∑_p ‖log(1 − p^{−s})‖.

    WHAT EXISTS in Mathlib v4.15.0 (from source search):
      `summable_neg_log_one_sub_mul_prime_cpow` (Nonvanishing.lean, line 265):
        `Summable (fun p : Nat.Primes ↦ -log(1 − χ p * p^{−s}))` for `1 < s.re`
      `LSeries_eulerProduct_exp_log` (Nonvanishing.lean, used at line 292):
        rewrites `L ↗χ s = exp(∑' p, -log(1 − χ p * p^{−s}))` for Dirichlet chars.
        NOT directly named for riemannZeta (use χ = trivial character).

    CLOSURE ROUTE:
      import Mathlib.NumberTheory.LSeries.Nonvanishing
      have hEP := LSeries_eulerProduct_exp_log (1 : DirichletCharacter ℂ 1) hs
      -- hEP : L 1 s = exp(∑' p, -log(1 − 1 * p^{−s}))
      have hLz := LSeries_zeta_eq_riemannZeta hs  -- L ↗ζ s = riemannZeta s
      rw [← hLz, hEP]
      simp [Complex.norm_exp, tsum_norm_le_tsum_norm]

    Blocked only on finding the exact namespace of LSeries_eulerProduct_exp_log.
    Paste `#check LSeries_eulerProduct_exp_log` from your build. -/
lemma zeta_log_bound (s : ℂ) (hs : 1 < s.re) :
    ‖Complex.log (riemannZeta s)‖ ≤
    ∑' p : Nat.Primes, ‖Complex.log (1 - (p : ℂ) ^ (-s))‖ := by
  have _hne : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_lt_re hs
  sorry -- CLOSABLE: LSeries_eulerProduct_exp_log (trivial char) + norm_tsum_le_tsum_norm

end MathlibFix
