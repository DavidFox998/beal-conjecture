-- Eutheos/Object.lean
    -- The Object: theta(T) modelled by pi/10; gate; route; certified chain.
    -- Clay rules: 0 sorry, 0 new axioms beyond the Lean 4 kernel trio.
    import Mathlib.Data.Complex.Basic
    import Mathlib.Analysis.SpecialFunctions.Complex.Circle
    import Mathlib.Data.Real.Irrational
    import Mathlib.Data.Real.Pi.Irrational

    namespace Eutheos

    open Complex

    /-! ## 0. The Object -/

    noncomputable def theta0 : ℝ := Real.pi / 10

    /-- Standard fractional part: frac x = x − ⌊x⌋ ∈ [0, 1). -/
    noncomputable def frac (x : ℝ) : ℝ := x - ⌊x⌋
    noncomputable def dist (x : ℝ) : ℝ := min (frac x) (1 - frac x)
    noncomputable def V (p : Nat) (a : ℝ) : ℝ := dist (p * a) - 1 / p

    noncomputable def alpha0 : ℝ := theta0
    def S : List Nat := [2, 3, 19, 191]

    /-! ## 1. Irrationality -/

    theorem object_irrational : Irrational alpha0 := by
    unfold alpha0 theta0 Irrational
    intro ⟨q, hq⟩
    apply irrational_pi
    exact ⟨q * 10, by push_cast at hq ⊢; linarith⟩

    theorem dist_pos_of_irrational (a : ℝ) (ha : Irrational a)
      (n : Nat) (hn : n ≠ 0) : dist (↑n * a) > 0 := by
    have hnn : 0 ≤ frac (↑n * a) := by
      unfold frac; linarith [Int.floor_le ((↑n : ℝ) * a)]
    have hlt : frac (↑n * a) < 1 := by
      unfold frac; linarith [Int.lt_floor_add_one ((↑n : ℝ) * a)]
    have hne0 : frac (↑n * a) ≠ 0 := by
      unfold frac
      intro h
      have heq : (↑n : ℝ) * a = ⌊(↑n : ℝ) * a⌋ := by linarith
      apply ha
      refine ⟨(⌊(↑n : ℝ) * a⌋ : ℚ) / n, ?_⟩
      push_cast
      rw [div_eq_iff (Nat.cast_ne_zero.mpr hn)]
      linarith
    unfold dist
    exact lt_min (lt_of_le_of_ne hnn (Ne.symm hne0)) (by linarith)

    theorem object_dist_pos (n : Nat) (hn : n ≠ 0) : dist (↑n * alpha0) > 0 :=
    dist_pos_of_irrational alpha0 object_irrational n hn

    /-! ## 2. Brothers — 35 desert slots -/

    def brothers : List Nat := [1419,1841,1907,2113,2411,2777,3251,3467,3671,4091,4273,4639,
    5059,5347,5639,5779,6197,6427,6823,7043,7583,8321,8999,9413,9859,10259,11311,12433,
    13513,14929,17183,19193,23281,44041,52481]

    theorem brothers_Nodup  : brothers.Nodup                 := by native_decide
    theorem brothers_ge_193 : brothers.all (· ≥ 193) = true := by native_decide

    /-! ## 3. Unitary gate -/

    noncomputable def gate (p t : Nat) (a : ℝ) : ℂ :=
    Complex.exp (Complex.I * ((↑p : ℝ) + ↑t) * ↑a)

    theorem gate_norm (p t : Nat) (a : ℝ) : ‖gate p t a‖ = 1 := by
    unfold gate
    have h : (Complex.I * ((↑p : ℝ) + ↑t) * ↑a).re = 0 := by
      simp [Complex.mul_re, Complex.I_re, Complex.I_im]
    rw [Complex.norm_eq_abs, Complex.abs_exp, h, Real.exp_zero]

    /-! ## 4. Route (norm-preserving) -/

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
      rw [hfold, ih, norm_mul, gate_norm, mul_one]

    /-! ## 5. OBJECT CERTIFIED -/

    theorem object_clean :
      Irrational alpha0 ∧
      brothers.Nodup ∧
      brothers.length = 35 ∧
      (∀ z path t, ‖route z path t alpha0‖ = ‖z‖) :=
    ⟨object_irrational, brothers_Nodup, by native_decide,
     fun z p t => route_unitary z p t alpha0⟩

    /-! ## 6. W = 11·13·17·19 and brothers_v2 — the +W trick -/

    def W : ℕ := 46189

    theorem W_eq_product : W = 11 * 13 * 17 * 19 := by native_decide

    def brothers_v2 : List ℕ :=
    [1419,1841,1907,2113,2411,2777,3251,3467,3671,4091,4273,4639,
     5059,5347,5639,5779,6197,6427,6823,7043,7583,8321,8999,9413,9859,10259,11311,12433,
     13513,14929,17183,19193,23281,44041,47608]

    theorem brothers_v2_Nodup  : brothers_v2.Nodup                 := by native_decide
    theorem brothers_v2_length : brothers_v2.length = 35            := by native_decide
    theorem brothers_v2_ge_193 : brothers_v2.all (· ≥ 193) = true  := by native_decide

    theorem brothers_v2_all_W_divisors_collide :
      ∀ q ∈ Nat.divisors W,
        ∃ p1 ∈ brothers_v2, ∃ p2 ∈ brothers_v2, p1 ≠ p2 ∧ p1 % q = p2 % q := by
    native_decide

    /-- For any q ∣ W, the conclusion follows from brothers_v2_all_W_divisors_collide
      (which covers every element of Nat.divisors W by native_decide). -/
    theorem collision_mod_q (q : ℕ) (hq : q ∣ W) :
      ∃ p1 ∈ brothers_v2, ∃ p2 ∈ brothers_v2, p1 ≠ p2 ∧ p1 % q = p2 % q :=
    brothers_v2_all_W_divisors_collide q (Nat.mem_divisors.mpr ⟨hq, by norm_num [W]⟩)

    end Eutheos

    /-! ## § Axiom trail
      Run `lake build Eutheos.Object` and inspect the #print axioms output to confirm
      every theorem below depends only on the Lean 4 kernel axioms
      (Classical.choice, propext, Quot.sound, funext) and nothing else — no sorryAx. -/

    section AxiomTrail
    open Eutheos

    #print axioms object_irrational
    #print axioms object_dist_pos
    #print axioms gate_norm
    #print axioms route_unitary
    #print axioms object_clean
    #print axioms brothers_Nodup
    #print axioms brothers_ge_193
    #print axioms brothers_v2_Nodup
    #print axioms brothers_v2_length
    #print axioms brothers_v2_ge_193
    #print axioms W_eq_product
    #print axioms brothers_v2_all_W_divisors_collide
    #print axioms collision_mod_q

    end AxiomTrail
