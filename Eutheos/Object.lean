-- Eutheos/Object.lean
-- The Object: theta(T) modelled by pi/10; gate; route; certified chain
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Data.Real.Irrational

namespace Eutheos

open Complex

/-! ## 0. The Object -/

/-- Model theta: argζ(1/2+iT)/2π ≈ π/10 -/
noncomputable def theta0 : ℝ := Real.pi / 10

noncomputable def frac (x : ℝ) : ℝ := x - ⌈x⌉
noncomputable def dist (x : ℝ) : ℝ := min (frac x) (1 - frac x)
noncomputable def V (p : Nat) (a : ℝ) : ℝ := dist (p * a) - 1 / p

noncomputable def alpha0 : ℝ := theta0

-- Known exceptional primes for alpha0
def S : List Nat := [2, 3, 19, 191]

/-! ## 1. Irrationality -/

-- Direct: if pi/10 = q ∈ ℚ then pi = 10q ∈ ℚ, contradicting Real.pi_irrational
theorem object_irrational : Irrational alpha0 := by
  unfold alpha0 theta0 Irrational
  intro ⟨q, hq⟩
  apply Real.pi_irrational
  exact ⟨q * 10, by push_cast at hq ⊢; linarith⟩

-- dist(n·alpha0) > 0 for every n ≠ 0
theorem object_dist_pos (n : Nat) (hn : n ≠ 0) : dist (↑n * alpha0) > 0 := by
  have hirr : Irrational alpha0 := object_irrational
  have hnn : 0 ≤ frac (↑n * alpha0) := by
    unfold frac; linarith [Int.floor_le ((↑n : ℝ) * alpha0)]
  have hlt : frac (↑n * alpha0) < 1 := by
    unfold frac; linarith [Int.lt_floor_add_one ((↑n : ℝ) * alpha0)]
  have hne0 : frac (↑n * alpha0) ≠ 0 := by
    unfold frac
    intro h
    have heq : (↑n : ℝ) * alpha0 = ⌈(↑n : ℝ) * alpha0⌉ := by linarith
    apply hirr
    refine ⟨(⌈(↑n : ℝ) * alpha0⌉ : ℚ) / n, ?_⟩
    push_cast
    rw [div_eq_iff (Nat.cast_ne_zero.mpr hn)]
    linarith
  unfold dist
  exact lt_min (lt_of_le_of_ne hnn (Ne.symm hne0)) (by linarith)

/-! ## 2. Brothers — 35 desert slots -/

def brothers : List Nat := [1419,1841,1907,2113,2411,2777,3251,3467,3671,4091,4273,4639,
  5059,5347,5639,5779,6197,6427,6823,7043,7583,8321,8999,9413,9859,10259,11311,12433,
  13513,14929,17183,19193,23281,44041,52481]

theorem brothers_Nodup  : brothers.Nodup                    := by native_decide
theorem brothers_ge_193 : brothers.all (· ≥ 193) = true    := by native_decide
-- mod-211 residue: native_decide is the arbiter (fails cleanly if list does not satisfy it)
theorem brothers_mod_211 : brothers.all (fun b => b % 211 == 153) = true := by native_decide

/-! ## 3. Unitary gate -/

noncomputable def gate (p t : Nat) (a : ℝ) : ℂ :=
  Complex.exp (Complex.I * ((p : ℝ) + t) * a)

theorem gate_norm (p t : Nat) (a : ℝ) : ‖gate p t a‖ = 1 := by
  unfold gate
  have h : (Complex.I * ((↑p : ℝ) + ↑t) * ↑a).re = 0 := by
    simp [Complex.mul_re, Complex.I_re, Complex.I_im]
  rw [Complex.norm_exp, h, Real.exp_zero]

/-! ## 4. Route (norm-preserving sequence of gates) -/

noncomputable def route (z : ℂ) (path : List Nat) (t : Nat) (a : ℝ) : ℂ :=
  path.foldl (fun acc p => acc * gate p t a) z

theorem route_unitary (z : ℂ) (path : List Nat) (t : Nat) (a : ℝ) :
    ‖route z path t a‖ = ‖z‖ := by
  induction path generalizing z with
  | nil => simp [route]
  | cons p ps ih =>
    simp only [route, List.foldl]
    have hfold : ps.foldl (fun acc q => acc * gate q t a) (z * gate p t a) =
                 route (z * gate p t a) ps t a := rfl
    rw [hfold, ih, Complex.norm_mul, gate_norm, mul_one]

/-! ## 5. OBJECT CERTIFIED -/
theorem object_clean :
    Irrational alpha0 ∧
    brothers.Nodup ∧
    brothers.length = 35 ∧
    (∀ z path t, ‖route z path t alpha0‖ = ‖z‖) :=
  ⟨object_irrational, brothers_Nodup, by native_decide,
   fun z p t => route_unitary z p t alpha0⟩

end Eutheos
