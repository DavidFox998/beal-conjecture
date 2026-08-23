import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.GCD.Basic

namespace Eutheos

def alpha0_num : Nat := 3141592653
def alpha0_den : Nat := 10000000000

def frac_rat (n : Nat) : Nat := (n * alpha0_num) % alpha0_den
def jitter_rat (p t : Nat) : Nat := frac_rat (p + t) * 2

def jitters_at_time (t : Nat) : List Nat :=
  (List.range 35).map (fun p => jitter_rat (p + 1) t)

def all_jitters_Nodup_upto (M : Nat) : Bool :=
  (List.range (M + 1)).all (fun t => decide (jitters_at_time t).Nodup)

theorem all_jitters_Nodup_1419 : all_jitters_Nodup_upto 1419 = true := by native_decide

theorem emi_reduction_db : (20 : ℝ) * Real.log (1 / 35) / Real.log 10 < -30 := by
  have h1 : Real.log (1 / 35 : ℝ) = -Real.log 35 := by rw [one_div, Real.log_inv]
  have h2 : (0 : ℝ) < Real.log 10 := Real.log_pos (by norm_num)
  have h4 : Real.log (1000 : ℝ) < Real.log (1225 : ℝ) :=
    Real.log_lt_log (by norm_num) (by norm_num)
  have h5 : Real.log (1225 : ℝ) = 2 * Real.log 35 := by
    rw [show (1225 : ℝ) = 35 ^ 2 from by norm_num, Real.log_pow]
    ring
  have h6 : Real.log (1000 : ℝ) = 3 * Real.log 10 := by
    rw [show (1000 : ℝ) = 10 ^ 3 from by norm_num, Real.log_pow]
    ring
  have h7 : 3 * Real.log 10 < 2 * Real.log 35 := by linarith
  rw [h1, div_lt_iff h2]
  linarith

theorem alpha0_irrational : Irrational (299 + Real.pi / 10) :=
  Irrational.add_int 299 (Real.pi_irrational.div_int (by norm_num))

end Eutheos