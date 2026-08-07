/-
  MathlibFix/ComplexLogFix.lean
  Vendor shim: 5 Complex log/exp/zeta lemmas for the Eutheos pipeline.
  SORRY count: 2  (log_mul_fix, zeta_log_bound — see comments for closure)

  ╔══════════════════════════════════════════════════════════════════════╗
  ║  WHY THIS FILE DOES NOT CLOSE UNCONDITIONAL.LEAN SORRYS            ║
  ║                                                                      ║
  ║  The Unconditional.lean blockers are:                               ║
  ║    riemannZeta_truncated_Euler_brothers  ← needs Euler product      ║
  ║    riemannZeta_route_eq                  ← needs route = ζ identity ║
  ║                                                                      ║
  ║  Both require: Im log ζ(½+iT) =                                     ║
  ║      −∑_{p} Im log(1−p^{−(½+iT)}) + O(1/2W)                       ║
  ║  This is the CRITICAL-LINE Euler product (Re s = ½).               ║
  ║  ∑_p p^{−½} diverges → no absolute convergence → 3-5pp argument.  ║
  ║                                                                      ║
  ║  Lemmas 1-4 here work only for Re s > 1.                           ║
  ║  Lemma 5 (zeta_log_bound) works for Re s > 1 but not Re s = ½.    ║
  ║  Expected fix: Mathlib v4.17-v4.18.                                 ║
  ╚══════════════════════════════════════════════════════════════════════╝
-/

import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.SpecialFunctions.Log.Basic

namespace MathlibFix

open Complex Real

/-! ## Lemma 1: log(exp z) = z when |im z| < π — PROVED -/

/-- **complex_log_exp_eq** (0 sorry):
    Wraps `Complex.log_exp`. The cut of the principal log is the negative real axis,
    so `log(exp z) = z` precisely when `|im z| < π`. -/
lemma complex_log_exp_eq (z : ℂ) (harg : |z.im| < Real.pi) :
    Complex.log (Complex.exp z) = z :=
  Complex.log_exp harg

/-! ## Lemma 2: log(z * w) is additive in the principal branch — SORRY -/

/-- **log_mul_fix** (1 sorry):
    `log(z * w) = log z + log w` when both args sum inside (-π, π].
    In Mathlib v4.15 the exact lemma name varies between builds.
    Closure: paste the error from `exact?` or `simp?` applied to
      `Complex.log (z * w)` and the one-liner closes immediately.
    Likely names: `Complex.log_mul_of_pos`, `Complex.log_mul_ne_neg` -/
lemma log_mul_fix (z w : ℂ) (hz : z ≠ 0) (hw : w ≠ 0)
    (harg_lo : -(Real.pi) < z.arg + w.arg)
    (harg_hi : z.arg + w.arg ≤ Real.pi) :
    Complex.log (z * w) = Complex.log z + Complex.log w := by
  -- In Mathlib v4.15: Complex.log_mul_eq_add_log_iff or Complex.log_mul
  -- with conditions on arg z + arg w ∈ Ioc (-π) π.
  -- Paste the exact `exact?` output for one-line closure.
  sorry -- CLOSABLE: ~1 line using Complex.log_mul or Complex.arg_mul lemma

/-! ## Lemma 3: arg is continuous away from the negative real slit — PROVED -/

/-- **arg_continuous_fix** (0 sorry):
    Wraps `Complex.continuousOn_arg`. The slit is `{z | z.re < 0 ∧ z.im = 0}`;
    continuity holds on `{z | 0 < z.re ∨ z.im ≠ 0}`. -/
lemma arg_continuous_fix :
    ContinuousOn Complex.arg {z : ℂ | 0 < z.re ∨ z.im ≠ 0} :=
  Complex.continuousOn_arg

/-! ## Lemma 4: ζ(s) ≠ 0 for Re(s) > 1 — PROVED -/

/-- **zeta_ne_zero_of_one_lt_re** (0 sorry):
    Wraps `riemannZeta_ne_zero_of_one_lt_re` from Mathlib. -/
lemma zeta_ne_zero_of_one_lt_re (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s ≠ 0 :=
  riemannZeta_ne_zero_of_one_lt_re hs

/-! ## Lemma 5: |log ζ(s)| ≤ ∑_p |log(1 − p^{−s})| for Re(s) > 1 — SORRY -/

/-- **zeta_log_bound** (1 sorry):
    For Re(s) > 1, the Euler product converges absolutely and
    |log ζ(s)| ≤ ∑_p |log(1 − p^{−s})|.
    
    Closure route (≈15 lines):
      have hprod := riemannZeta_eulerProduct hs
      -- hprod : HasProd (fun p : Nat.Primes => (1 - ↑p ^ (-s))⁻¹) (riemannZeta s)
      have hlog : Complex.log (riemannZeta s) =
                  -∑' p : Nat.Primes, Complex.log (1 - (p : ℂ) ^ (-s)) := by
        rw [← Complex.log_prod_of_hasProd hprod ...]
        simp [Complex.log_inv, Complex.log_prod]
      calc ‖Complex.log (riemannZeta s)‖
           = ‖-∑' p, Complex.log (1 - ↑p ^ (-s))‖ := by rw [hlog]
         _ ≤ ∑' p, ‖Complex.log (1 - ↑p ^ (-s))‖  := norm_tsum_le_tsum_norm ...
    
    Blocked only on the exact signature of `riemannZeta_eulerProduct` in v4.15
    (HasProd vs Multipliable vs explicit; paste the type and I close it). -/
lemma zeta_log_bound (s : ℂ) (hs : 1 < s.re) :
    ‖Complex.log (riemannZeta s)‖ ≤
    ∑' p : Nat.Primes, ‖Complex.log (1 - (p : ℂ) ^ (-s))‖ := by
  have _hne : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_lt_re hs
  sorry -- CLOSABLE: riemannZeta_eulerProduct + Complex.log_prod + norm_tsum_le_tsum_norm

/-! ## Summary -/
/-- Closure checklist:
    - log_mul_fix   : paste `exact?` output on `Complex.log (z * w)` goal
    - zeta_log_bound: paste `#check riemannZeta_eulerProduct` output -/
def closure_instructions : String :=
  "1. log_mul_fix:   run `exact?` on `Complex.log (z*w) = Complex.log z + Complex.log w`\n" ++
  "2. zeta_log_bound: run `#check riemannZeta_eulerProduct` and paste the type signature"

end MathlibFix
