/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.29.0 — Phi13 derivative / LTE
plan.

S = Φ₁₃(C,B) and t = C · B⁻¹ mod p
satisfy p ∣ S ↔ Φ₁₃(t) = 0 mod p.
The identity Φ + t Φ' = 13 t¹² + Φ'
plus p ≠ 13 imply a primitive root is
simple: Φ'(t) ≢ 0 mod p (discriminant
13¹¹ is the classical reason; the
inhabited proof uses the identity).
Hensel therefore supplies a unique
class t* in ZMod (p²), not a unique
natural number.  Then
p² ∣ S ↔ C · B⁻¹ ≡ t* (mod p²).

B = 1, C = 460, p = 53 is the case
the ratio already equals that lift,
so v_p(S) ≥ 2 can happen.  The
remaining lock is C · B⁻¹ ≢ t* for
at least one primitive p.

Inhabited:
`S_val`, `S_bounds`,
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`hensel_lift_example_B1_C460_p53`,
`zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited`,
`S_not_fourth_of_order_ne_13_inhabited`,
`exists_p_of_two_primes_one_not_square_inhabited`,
`S_not_power_of_thirteen_inhabited`,
`norm_eq_S`, `zeta13_class_number_one`,
`Phi13`, `phi13_derivative_separable_mod_p`,
`hensel_unique_lift_of_phi13_root`,
`p_sq_dvd_S_iff_CB_eq_lifted_root`.

Uninhabited (honest):
`S_not_prime_power_when_C_ge_B_plus_3`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
(the remaining Hensel lock),
`beal_odd_A_closed_via_zsig_hensel_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`.
Plus Kraus / `X0(2q)`, `X0(26)` matching,
and Modular W (`0 ≠ 0`).

`B ≤ 100` is not a table close:
`C = B+1` and `C = B+2` are closed;
`C ≥ B+3` still needs `S_not_fourth`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Does **not** inhabit unconditional `¬ p^2 ∣ S`.
Does **not** inhabit a new Beal `∀`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan
import Mathlib.Algebra.GeomSum
import Mathlib.Data.ZMod.Basic
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.Tactic

set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val S_val_eq_S_13_of_B_lt_C S_bounds k_shape_1_13_13cubed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
  (zsigmondy_exists_primitive_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
  (order_of_C_B_inv_mod_p2
    hensel_lift_example_B1_C460_p53
    C_eq_B_plus_1_or_2_closed
    S_not_fourth
    S_not_fourth_of_order_ne_13)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan
  (p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan
  (zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
    S_not_fourth_of_order_ne_13_inhabited
    exists_p_of_two_primes_one_not_square_inhabited
    S_not_power_of_thirteen)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan
  (Norm_C_minus_B_zeta
    norm_eq_S
    zeta13_class_number_one
    zeta13_prime_ideal_factorization_exists
    S_not_power_of_thirteen_inhabited)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
  (S_bounds_13_B12_le_S_le_13_C12)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
  (oddPart_rec even_not_pow2_has_odd_prime_q
    level_2q_of_odd_prime_dvd_A
    kraus_criterion_q_ne_13 X0_2q_no_Frey_match
    beal_even_A_closed_v8_22_1)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (frey_conductor_even_A X0_26_no_matching_newform)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
  (frey_curve_conductor modular_W_lift)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
  (order_mod_p2 ratio_unit_mod_p2 coprime_pow_two_of_not_dvd
    order_mod_p2_eq_13_iff_p2_dvd_S
    p2_gt_one_of_prime
    beal_4_13_13_B_le_100_closed)
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
  (S_13)
open BigOperators
open Finset

/-! ## Univariate Φ₁₃ and its derivative -/

/-- Univariate cyclotomic 13-sum
`(t¹³ − 1)/(t − 1)` for `t ≠ 1`. -/
def Phi13 (t : Nat) : Nat :=
  ∑ i ∈ range 13, t ^ i

/-- Formal derivative of the 13-term
geometric polynomial. -/
def Phi13_deriv (t : Nat) : Nat :=
  ∑ i ∈ range 12, (i + 1) * t ^ i

def phi13Z {R : Type*} [Semiring R] (x : R) : R :=
  ∑ i ∈ range 13, x ^ i

def phi13Z_deriv {R : Type*} [Semiring R] (x : R) : R :=
  ∑ i ∈ range 12, (i + 1 : R) * x ^ i

theorem phi13_one : Phi13 1 = 13 := by
  simp [Phi13]

theorem phi13Z_one {R : Type*} [Semiring R] :
    phi13Z (1 : R) = 13 := by
  simp [phi13Z]

theorem phi13_eq_one_add (t : Nat) :
    Phi13 t = 1 + ∑ i ∈ range 12, t ^ (i + 1) := by
  unfold Phi13
  rw [sum_range_succ' (fun i => t ^ i) 12]
  simp [pow_zero, add_comm]

theorem sum_pow_modEq (t1 t2 p n : Nat) (h : t1 ≡ t2 [MOD p]) :
    (∑ i ∈ range n, t1 ^ i) ≡ (∑ i ∈ range n, t2 ^ i) [MOD p] := by
  induction n with
  | zero => exact Nat.ModEq.refl 0
  | succ n ih =>
    rw [sum_range_succ, sum_range_succ]
    exact Nat.ModEq.add ih (Nat.ModEq.pow n h)

theorem phi13_modEq (t1 t2 p : Nat) (h : t1 ≡ t2 [MOD p]) :
    Phi13 t1 ≡ Phi13 t2 [MOD p] :=
  sum_pow_modEq t1 t2 p 13 h

theorem phi13_eq_one_of_dvd_t (t p : Nat) (ht : p ∣ t)
    (hPhi : p ∣ Phi13 t) : p ∣ 1 := by
  have hs : p ∣ ∑ i ∈ range 12, t ^ (i + 1) := by
    refine dvd_sum ?_
    intro i _hi
    exact dvd_pow ht (Nat.succ_ne_zero i)
  have hsum := phi13_eq_one_add t
  have h1 : p ∣ 1 + ∑ i ∈ range 12, t ^ (i + 1) := by
    rwa [← hsum]
  have hsub : p ∣ (1 + ∑ i ∈ range 12, t ^ (i + 1)) - ∑ i ∈ range 12, t ^ (i + 1) :=
    Nat.dvd_sub' h1 hs
  simpa [Nat.add_sub_cancel] using hsub

/--
If `p ∣ Φ₁₃(t)` and `p ≠ 13`, then
`p` does not divide `13 t¹²`.  Combined
with `Φ + t Φ' = 13 t¹² + Φ'` this is
`Φ'(t) ≢ 0 (mod p)`.  The classical
discriminant is `13¹¹`; the proof uses
the derivative identity, not a Mathlib
discriminant computation.
-/
theorem phi13_derivative_separable_mod_p
    (p : Nat) (_hPrime : Nat.Prime p) (hp13 : p ≠ 13) (t : Nat)
    (hPhi : p ∣ Phi13 t) :
    ¬ p ∣ (13 * t ^ 12) := by
  intro hdiv
  rcases (_hPrime.dvd_mul.mp hdiv) with h13 | ht12
  · have h13p : Nat.Prime 13 := by decide
    exact hp13 ((Nat.prime_dvd_prime_iff_eq _hPrime h13p).mp h13)
  · have ht : p ∣ t := _hPrime.dvd_of_dvd_pow ht12
    have h1 := phi13_eq_one_of_dvd_t t p ht hPhi
    exact Nat.Prime.not_dvd_one _hPrime h1

theorem geom_sum_mul_deriv_identity (t n : Nat) :
    (∑ i ∈ range (n + 1), t ^ i)
      + t * (∑ i ∈ range n, (i + 1) * t ^ i)
    = (n + 1) * t ^ n
      + (∑ i ∈ range n, (i + 1) * t ^ i) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [sum_range_succ (f := fun i => t ^ i),
      sum_range_succ (f := fun i => (i + 1) * t ^ i), mul_add]
    have hpow : t * ((n + 1) * t ^ n) = (n + 1) * t ^ (n + 1) := by
      rw [← mul_assoc, Nat.mul_comm t, mul_assoc, ← pow_succ']
    rw [hpow]
    have hadd : (n + 2) * t ^ (n + 1)
        = t ^ (n + 1) + (n + 1) * t ^ (n + 1) := by
      rw [show n + 2 = n + 1 + 1 from rfl, Nat.add_mul, one_mul, add_comm]
    calc
      ∑ i ∈ range (n + 1), t ^ i + t ^ (n + 1)
          + (t * ∑ i ∈ range n, (i + 1) * t ^ i + (n + 1) * t ^ (n + 1))
          = (∑ i ∈ range (n + 1), t ^ i
              + t * ∑ i ∈ range n, (i + 1) * t ^ i)
            + t ^ (n + 1) + (n + 1) * t ^ (n + 1) := by
        ac_rfl
      _ = (n + 1) * t ^ n + ∑ i ∈ range n, (i + 1) * t ^ i
            + t ^ (n + 1) + (n + 1) * t ^ (n + 1) := by
        rw [ih]
      _ = (n + 2) * t ^ (n + 1)
            + (∑ i ∈ range n, (i + 1) * t ^ i + (n + 1) * t ^ n) := by
        rw [hadd]
        ac_rfl

theorem phi13_deriv_identity (t : Nat) :
    Phi13 t + t * Phi13_deriv t
      = 13 * t ^ 12 + Phi13_deriv t := by
  simpa [Phi13, Phi13_deriv] using
    geom_sum_mul_deriv_identity t 12

theorem p_nmid_phi13_deriv
    (p t : Nat) (hPhi : p ∣ Phi13 t)
    (hSep : ¬ p ∣ (13 * t ^ 12)) :
    ¬ p ∣ Phi13_deriv t := by
  intro hd
  have hleft : p ∣ Phi13 t + t * Phi13_deriv t :=
    Nat.dvd_add hPhi (dvd_mul_of_dvd_right hd t)
  have hright : p ∣ 13 * t ^ 12 + Phi13_deriv t := by
    rwa [phi13_deriv_identity] at hleft
  have hsub : p ∣ (13 * t ^ 12 + Phi13_deriv t) - Phi13_deriv t :=
    Nat.dvd_sub' hright hd
  exact hSep (by simpa [Nat.add_sub_cancel] using hsub)

/-! ## Nilpotent Taylor expansion of Φ₁₃ -/

theorem pow_add_of_sq_eq_zero {R : Type*} [CommRing R]
    (x ε : R) (hε : ε ^ 2 = 0) :
    ∀ n : Nat, (x + ε) ^ n = x ^ n + (n : R) * x ^ n.pred * ε := by
  intro n
  induction n with
  | zero => simp
  | succ n ih =>
    have hεε : ε * ε = 0 := by rw [← pow_two, hε]
    cases n with
    | zero =>
      rw [pow_succ, ih]
      simp [hεε]
    | succ n =>
      rw [pow_succ, ih]
      simp [Nat.pred_succ, pow_succ]
      ring_nf
      simp [hε, hεε, pow_two]

theorem phi13Z_add_of_sq_eq_zero {R : Type*} [CommRing R]
    (x ε : R) (hε : ε ^ 2 = 0) :
    phi13Z (x + ε) = phi13Z x + ε * phi13Z_deriv x := by
  simp only [phi13Z, phi13Z_deriv]
  have hterm : ∀ i ∈ range 13,
      (x + ε) ^ i = x ^ i + (i : R) * x ^ i.pred * ε :=
    fun i _ => pow_add_of_sq_eq_zero x ε hε i
  rw [sum_congr rfl hterm, sum_add_distrib]
  have hcomm : ∀ i : Nat,
      (i : R) * x ^ i.pred * ε = ε * ((i : R) * x ^ i.pred) := by
    intro i; ring
  simp_rw [hcomm]
  rw [← mul_sum]
  have hreindex :
      (∑ i ∈ range 13, (i : R) * x ^ i.pred) =
        ∑ i ∈ range 12, (i + 1 : R) * x ^ i := by
    rw [sum_range_succ' (fun i => (i : R) * x ^ i.pred) 12]
    simp
  rw [hreindex]

theorem p_sq_n_cast_eq_zero (p : Nat) :
    ((p ^ 2 : Nat) : ZMod (p ^ 2)) = 0 :=
  (ZMod.natCast_zmod_eq_zero_iff_dvd (p ^ 2) (p ^ 2)).mpr (dvd_refl _)

theorem p_sq_cast_sq_eq_zero (p : Nat) :
    (p : ZMod (p ^ 2)) ^ 2 = 0 := by
  rw [← Nat.cast_pow]
  exact p_sq_n_cast_eq_zero p

theorem p_mul_of_dvd (p n : Nat) (h : p ∣ n) :
    (p : ZMod (p ^ 2)) * (n : ZMod (p ^ 2)) = 0 := by
  obtain ⟨k, hk⟩ := h
  rw [hk, Nat.cast_mul, ← mul_assoc, ← Nat.cast_mul, ← pow_two]
  exact (p_sq_n_cast_eq_zero p).symm ▸ zero_mul _

theorem phi13Z_nat (t n : Nat) :
    (Phi13 t : ZMod n) = phi13Z (t : ZMod n) := by
  simp [Phi13, phi13Z]

theorem phi13Z_deriv_nat (t n : Nat) :
    (Phi13_deriv t : ZMod n) = phi13Z_deriv (t : ZMod n) := by
  simp [Phi13_deriv, phi13Z_deriv]

theorem geom_mul_phi13Z {R : Type*} [Ring R] (x : R) :
    phi13Z x * (x - 1) = x ^ 13 - 1 := by
  simpa [phi13Z] using geom_sum_mul x 13

/-! ## Hensel: unique lift in `ZMod (p²)` -/

theorem phi13_dvd_of_modEq (t t0 p : Nat) (h : t0 ≡ t [MOD p])
    (hPhi : p ∣ Phi13 t) : p ∣ Phi13 t0 := by
  have hmod := phi13_modEq t0 t p h
  have ht : Phi13 t % p = 0 := Nat.mod_eq_zero_of_dvd hPhi
  have : Phi13 t0 % p = 0 := by
    change Phi13 t0 % p = Phi13 t % p at hmod
    rw [hmod, ht]
  exact Nat.dvd_of_mod_eq_zero this

theorem sep_of_modEq (t t0 p : Nat) (h : t0 ≡ t [MOD p])
    (hSep : ¬ p ∣ (13 * t ^ 12)) :
    ¬ p ∣ (13 * t0 ^ 12) := by
  intro h0
  have hmul : (13 * t0 ^ 12) ≡ (13 * t ^ 12) [MOD p] :=
    Nat.ModEq.mul (Nat.ModEq.refl 13) (Nat.ModEq.pow 12 h)
  have ht : (13 * t ^ 12) % p = (13 * t0 ^ 12) % p := by
    change (13 * t0 ^ 12) % p = (13 * t ^ 12) % p at hmul
    exact hmul.symm
  have : (13 * t ^ 12) % p = 0 := by
    rw [ht, Nat.mod_eq_zero_of_dvd h0]
  exact hSep (Nat.dvd_of_mod_eq_zero this)

theorem hensel_correction_dvd
    (p a d : Nat) [Fact (Nat.Prime p)]
    (hd : (d : ZMod p) ≠ 0) :
    p ∣ a + (-(a : ZMod p) * (d : ZMod p)⁻¹).val * d := by
  haveI : NeZero p := ⟨(Fact.out : Nat.Prime p).pos.ne'⟩
  let k := (-(a : ZMod p) * (d : ZMod p)⁻¹).val
  have hk : (k : ZMod p) = -(a : ZMod p) * (d : ZMod p)⁻¹ :=
    ZMod.natCast_zmod_val _
  have : ((a + k * d : Nat) : ZMod p) = 0 := by
    rw [Nat.cast_add, Nat.cast_mul, hk]
    field_simp [hd]
  exact (ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mp this

theorem tStar_lt_p_sq (p t0 kVal : Nat) (_hppos : 0 < p)
    (ht0 : t0 < p) (hk : kVal < p) :
    t0 + p * kVal < p ^ 2 := by
  have h1 : t0 + p * kVal < p + p * kVal :=
    Nat.add_lt_add_right ht0 _
  have h2 : p + p * kVal = p * (kVal + 1) := by
    rw [Nat.mul_succ]
    ac_rfl
  have h3 : p * (kVal + 1) ≤ p * p :=
    Nat.mul_le_mul_left p (Nat.succ_le_of_lt hk)
  have h4 : p * p = p ^ 2 := (pow_two p).symm
  exact lt_of_lt_of_le (h1.trans_eq h2) (h3.trans_eq h4)

theorem zmod_p2_split {p : Nat} [NeZero p] [NeZero (p ^ 2)]
    (x : ZMod (p ^ 2)) (t0 : Nat) (hfib : x.val % p = t0) :
    x = (t0 : ZMod (p ^ 2))
      + (p : ZMod (p ^ 2)) * ((x.val / p : Nat) : ZMod (p ^ 2)) := by
  let q := x.val / p
  have hq : q = x.val / p := rfl
  have hsplit : x.val = t0 + p * q := by
    have h := Nat.div_add_mod x.val p
    rw [hfib, ← hq] at h
    omega
  have hx : (x.val : ZMod (p ^ 2)) = x := ZMod.natCast_zmod_val x
  have hcast :
      (x.val : ZMod (p ^ 2)) =
        (t0 : ZMod (p ^ 2)) + (p : ZMod (p ^ 2)) * (q : ZMod (p ^ 2)) := by
    rw [hsplit, Nat.cast_add, Nat.cast_mul]
  exact hx.symm.trans hcast

/--
One-step Hensel: a simple `Φ₁₃`-root
modulo `p ≠ 13` has a unique lift to a
`Φ₁₃`-root in `ZMod (p²)` in the same
residue class modulo `p`.

Uniqueness is in `ZMod (p²)`, not in
`Nat` (`t*`, `t* + p²`, … are the same
class).  The sketch `∃! t_star : ℕ` is
false as a natural-number claim.
-/
theorem hensel_unique_lift_of_phi13_root
    (p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13) (t : Nat)
    (hPhi : p ∣ Phi13 t) (hDeriv : ¬ p ∣ (13 * t ^ 12)) :
    ∃! t_star : ZMod (p ^ 2),
      t_star.val % p = t % p ∧ phi13Z t_star = 0 := by
  haveI : Fact (Nat.Prime p) := ⟨hPrime⟩
  haveI : NeZero p := ⟨hPrime.pos.ne'⟩
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  let t0 := t % p
  have ht0mod : t0 ≡ t [MOD p] := Nat.mod_mod t p
  have hPhi0 : p ∣ Phi13 t0 := phi13_dvd_of_modEq t t0 p ht0mod hPhi
  have hSep0 : ¬ p ∣ (13 * t0 ^ 12) := sep_of_modEq t t0 p ht0mod hDeriv
  have hnd : ¬ p ∣ Phi13_deriv t0 := p_nmid_phi13_deriv p t0 hPhi0 hSep0
  let a := Phi13 t0 / p
  let d := Phi13_deriv t0
  have hPhi0' : Phi13 t0 = p * a := (Nat.mul_div_cancel' hPhi0).symm
  have hdne : (d : ZMod p) ≠ 0 := by
    intro h
    exact hnd ((ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mp h)
  let kZ : ZMod p := -(a : ZMod p) * (d : ZMod p)⁻¹
  let kVal := kZ.val
  let tStarNat := t0 + p * kVal
  let tStar : ZMod (p ^ 2) := ↑tStarNat
  have ht0lt : t0 < p := Nat.mod_lt _ hPrime.pos
  have hklt : kVal < p := ZMod.val_lt _
  have hlt : tStarNat < p ^ 2 :=
    tStar_lt_p_sq p t0 kVal hPrime.pos ht0lt hklt
  have hvalStar : tStar.val = tStarNat :=
    ZMod.val_natCast_of_lt hlt
  have hval : tStar.val % p = t % p := by
    rw [hvalStar, Nat.add_mul_mod_self_left, Nat.mod_mod]
  have hε : ((p : ZMod (p ^ 2)) * (kVal : ZMod (p ^ 2))) ^ 2 = 0 := by
    rw [mul_pow, p_sq_cast_sq_eq_zero, zero_mul]
  have hdecomp :
      (tStarNat : ZMod (p ^ 2)) =
        (t0 : ZMod (p ^ 2))
          + (p : ZMod (p ^ 2)) * (kVal : ZMod (p ^ 2)) := by
    simp [tStarNat, Nat.cast_add, Nat.cast_mul]
  have hdvd_corr : p ∣ a + kVal * d := by
    simpa [kVal, kZ] using hensel_correction_dvd p a d hdne
  have hphi : phi13Z tStar = 0 := by
    change phi13Z (tStarNat : ZMod (p ^ 2)) = 0
    rw [hdecomp, phi13Z_add_of_sq_eq_zero _ _ hε]
    have hPhiZ :
        phi13Z (t0 : ZMod (p ^ 2)) =
          (p : ZMod (p ^ 2)) * (a : ZMod (p ^ 2)) := by
      rw [← phi13Z_nat, hPhi0', Nat.cast_mul]
    have hDZ :
        phi13Z_deriv (t0 : ZMod (p ^ 2)) = (d : ZMod (p ^ 2)) :=
      (phi13Z_deriv_nat t0 (p ^ 2)).symm
    rw [hPhiZ, hDZ]
    have : (p : ZMod (p ^ 2)) *
        ((a : ZMod (p ^ 2)) + (kVal : ZMod (p ^ 2)) * (d : ZMod (p ^ 2)))
        = 0 := by
      rw [← Nat.cast_mul, ← Nat.cast_add, p_mul_of_dvd p _ hdvd_corr]
    convert this using 1
    ring
  refine ExistsUnique.intro tStar ⟨hval, hphi⟩ ?_
  intro y ⟨hyfib, hyphi⟩
  have hyval0 : y.val % p = t0 := by
    rw [hyfib]
  have hydecomp := zmod_p2_split y t0 hyval0
  have hεy : ((p : ZMod (p ^ 2)) * ((y.val / p : Nat) : ZMod (p ^ 2))) ^ 2
      = 0 := by
    rw [mul_pow, p_sq_cast_sq_eq_zero, zero_mul]
  have hPhiZ :
      phi13Z (t0 : ZMod (p ^ 2)) =
        (p : ZMod (p ^ 2)) * (a : ZMod (p ^ 2)) := by
    rw [← phi13Z_nat, hPhi0', Nat.cast_mul]
  have hDZ :
      phi13Z_deriv (t0 : ZMod (p ^ 2)) = (d : ZMod (p ^ 2)) :=
    (phi13Z_deriv_nat t0 (p ^ 2)).symm
  have hyphi' : (p : ZMod (p ^ 2)) *
      ((a : ZMod (p ^ 2))
        + ((y.val / p : Nat) : ZMod (p ^ 2)) * (d : ZMod (p ^ 2)))
      = 0 := by
    have h := hyphi
    rw [hydecomp, phi13Z_add_of_sq_eq_zero _ _ hεy, hPhiZ, hDZ] at h
    convert h using 1
    ring
  have hdvd_y : p ∣ a + (y.val / p) * d := by
    have : (p : ZMod (p ^ 2)) *
        ((a + (y.val / p) * d : Nat) : ZMod (p ^ 2)) = 0 := by
      rwa [Nat.cast_add, Nat.cast_mul]
    have hcast : ((p * (a + (y.val / p) * d) : Nat) : ZMod (p ^ 2)) = 0 := by
      rwa [Nat.cast_mul]
    have hdiv : p ^ 2 ∣ p * (a + (y.val / p) * d) :=
      (ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mp hcast
    obtain ⟨k, hk⟩ := hdiv
    have hp0 : 0 < p := hPrime.pos
    have hk' : p * (a + (y.val / p) * d) = p * (p * k) := by
      rw [hk, pow_two, Nat.mul_assoc]
    exact ⟨k, Nat.mul_left_cancel hp0 hk'⟩
  have hmcongr : ((a + (y.val / p) * d : Nat) : ZMod p) = 0 :=
    (ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mpr hdvd_y
  have hm : ((y.val / p : Nat) : ZMod p) = kZ := by
    have : (a : ZMod p) + ((y.val / p : Nat) : ZMod p) * (d : ZMod p) = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul] using hmcongr
    have hsol : ((y.val / p : Nat) : ZMod p) * (d : ZMod p)
        = -(a : ZMod p) := by
      rw [add_comm] at this
      exact add_eq_zero_iff_eq_neg.mp this
    calc ((y.val / p : Nat) : ZMod p)
        = ((y.val / p : Nat) : ZMod p) * (d : ZMod p) * (d : ZMod p)⁻¹ := by
          field_simp [hdne]
      _ = -(a : ZMod p) * (d : ZMod p)⁻¹ := by rw [hsol]
      _ = kZ := rfl
  have hdivlt : y.val / p < p :=
    Nat.div_lt_of_lt_mul (lt_of_lt_of_eq (ZMod.val_lt y) (pow_two p))
  have hmNat : y.val / p = kVal :=
    (ZMod.val_natCast_of_lt hdivlt).symm.trans (congrArg ZMod.val hm)
  have hysplit : y.val = t0 + p * (y.val / p) := by
    have h := Nat.div_add_mod y.val p
    rw [hyval0] at h
    omega
  have hyval : y.val = tStarNat := by
    rw [hysplit, hmNat]
  have : y = tStar := by
    change y = (tStarNat : ZMod (p ^ 2))
    rw [← ZMod.natCast_zmod_val y, hyval]
  exact this

/-! ## Glue: `p² ∣ S` iff the ratio equals the unique lift -/

theorem units_pow_coe {n : Nat} [NeZero n] (u : (ZMod n)ˣ) (k : Nat) :
    ((u ^ k : (ZMod n)ˣ) : ZMod n) = (u : ZMod n) ^ k :=
  Units.val_pow_eq_pow_val u k

theorem one_add_p_pow_p (p m : Nat) :
    ((1 : ZMod (p ^ 2)) + (p : ZMod (p ^ 2)) * (m : ZMod (p ^ 2))) ^ p
      = 1 := by
  have hε : ((p : ZMod (p ^ 2)) * (m : ZMod (p ^ 2))) ^ 2 = 0 := by
    rw [mul_pow, p_sq_cast_sq_eq_zero, zero_mul]
  rw [pow_add_of_sq_eq_zero 1 _ hε p]
  simp
  have : ((p * (p * m) : Nat) : ZMod (p ^ 2)) = 0 := by
    have hmul : p * (p * m) = p ^ 2 * m := by rw [pow_two, Nat.mul_assoc]
    rw [hmul, Nat.cast_mul, p_sq_n_cast_eq_zero, zero_mul]
  simpa [Nat.cast_mul] using this

theorem ratio_val_mod_ne_one_of_order_13
    (C B p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2))
    (hOrd : order_mod_p2 C B p hC hB = 13) :
    (ratio_unit_mod_p2 C B p hC hB : ZMod (p ^ 2)).val % p ≠ 1 := by
  haveI : NeZero p := ⟨hPrime.pos.ne'⟩
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  intro h1
  let u := ratio_unit_mod_p2 C B p hC hB
  have hsplit : (u : ZMod (p ^ 2)) =
      (1 : ZMod (p ^ 2))
        + (p : ZMod (p ^ 2)) * (((u : ZMod (p ^ 2)).val / p : Nat) : ZMod (p ^ 2)) := by
    have := zmod_p2_split (u : ZMod (p ^ 2)) 1 h1
    simpa using this
  have hpow : (u : ZMod (p ^ 2)) ^ p = 1 := by
    rw [hsplit, one_add_p_pow_p]
  have hU : u ^ p = 1 := by
    apply Units.ext
    rw [units_pow_coe, hpow]
    simp
  have hdiv : orderOf u ∣ p :=
    (orderOf_dvd_iff_pow_eq_one).mpr hU
  have h13p : (13 : Nat) ∣ p := by
    change order_mod_p2 C B p hC hB ∣ p at hdiv
    rwa [hOrd] at hdiv
  rcases (Nat.dvd_prime hPrime).mp h13p with h1' | h13eq
  · exact (by decide : (13 : Nat) ≠ 1) h1'
  · exact hp13 h13eq.symm

theorem isUnit_sub_one_of_val_mod_ne_one
    {p : Nat} (hPrime : Nat.Prime p) (x : ZMod (p ^ 2))
    (hx0 : x ≠ 0) (hmod : x.val % p ≠ 1) :
    IsUnit (x - 1) := by
  haveI : NeZero p := ⟨hPrime.pos.ne'⟩
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  have hxval : 0 < x.val := by
    exact Nat.pos_of_ne_zero (fun h => hx0 (by
      have : (x.val : ZMod (p ^ 2)) = 0 := by rw [h, Nat.cast_zero]
      rwa [ZMod.natCast_zmod_val] at this))
  have hrep : x - 1 = ((x.val - 1 : Nat) : ZMod (p ^ 2)) := by
    have hxcoe : (x.val : ZMod (p ^ 2)) = x := ZMod.natCast_zmod_val x
    have hcast : (x.val : ZMod (p ^ 2)) - 1 = ↑(x.val - 1) := by
      rw [Nat.cast_sub hxval, Nat.cast_one]
    calc x - 1
        = (x.val : ZMod (p ^ 2)) - 1 := by rw [hxcoe]
      _ = ↑(x.val - 1) := hcast
  rw [hrep, ZMod.isUnit_iff_coprime]
  refine coprime_pow_two_of_not_dvd hPrime ?_
  intro hdvd
  have hme := (Nat.modEq_iff_dvd' hxval).mpr hdvd
  have : x.val % p = 1 := by
    have heq : 1 % p = x.val % p := hme
    have h1 : 1 % p = 1 := Nat.mod_eq_of_lt hPrime.one_lt
    rw [h1] at heq
    exact heq.symm
  exact hmod this

theorem phi13Z_eq_zero_of_order_13
    (C B p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hC : Nat.Coprime C (p ^ 2)) (hB : Nat.Coprime B (p ^ 2))
    (hOrd : order_mod_p2 C B p hC hB = 13) :
    phi13Z (ratio_unit_mod_p2 C B p hC hB : ZMod (p ^ 2)) = 0 := by
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  let u := ratio_unit_mod_p2 C B p hC hB
  have hpowU : u ^ 13 = 1 := by
    have hdef : order_mod_p2 C B p hC hB = orderOf u := rfl
    rw [hdef] at hOrd
    exact (orderOf_dvd_iff_pow_eq_one).mp (by rw [hOrd])
  have hpow : (u : ZMod (p ^ 2)) ^ 13 = 1 := by
    rw [← units_pow_coe, hpowU]
    simp
  have : (u : ZMod (p ^ 2)) ≠ 1 := by
    intro h
    have : u = 1 := Units.ext h
    have hord1 : orderOf u = 1 := (orderOf_eq_one_iff).mpr this
    have hdef : order_mod_p2 C B p hC hB = orderOf u := rfl
    have h1 : order_mod_p2 C B p hC hB = 1 := hdef.trans hord1
    exact (by decide : (13 : Nat) ≠ 1) (hOrd.symm.trans h1)
  haveI : Fact (1 < p ^ 2) := ⟨p2_gt_one_of_prime p hPrime⟩
  have hgeom := geom_mul_phi13Z (u : ZMod (p ^ 2))
  have hsub : (u : ZMod (p ^ 2)) ^ 13 - 1 = 0 := by rw [hpow, sub_self]
  rw [hsub] at hgeom
  have hunit : IsUnit ((u : ZMod (p ^ 2)) - 1) :=
    isUnit_sub_one_of_val_mod_ne_one hPrime (u : ZMod (p ^ 2))
      (Units.ne_zero u)
      (ratio_val_mod_ne_one_of_order_13 C B p hPrime hp13 hC hB hOrd)
  obtain ⟨v, hv⟩ := hunit
  have hmul0 : ((u : ZMod (p ^ 2)) - 1) * phi13Z (u : ZMod (p ^ 2)) = 0 := by
    rw [mul_comm, hgeom]
  have : (↑v⁻¹ : ZMod (p ^ 2)) * ((u : ZMod (p ^ 2)) - 1)
      * phi13Z (u : ZMod (p ^ 2)) = 0 := by
    rw [mul_assoc, hmul0, mul_zero]
  have hvinv : (↑v⁻¹ : ZMod (p ^ 2)) * ((u : ZMod (p ^ 2)) - 1) = 1 := by
    rw [← hv, ← Units.val_mul, inv_mul_cancel, Units.val_one]
  rw [hvinv, one_mul] at this
  exact this

/--
`p² ∣ S` iff the unit `C · B⁻¹` in
`ZMod (p²)` equals the unique Hensel
lift `t*` of the `Φ₁₃`-root in its
residue class.

The sketch left `t_star` free and
omitted `¬ p ∣ C`, `¬ p ∣ B`, and
`B < C`; those are required for the
ratio to be a unit and for the Step11
order dichotomy.  Uniqueness of `t*`
is the previous theorem.
-/
theorem p_sq_dvd_S_iff_CB_eq_lifted_root
    (B C p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hBltC : B < C) (_hCop : Nat.Coprime B C)
    (_hpS : p ∣ S_val B C) (hpnotCB : ¬ p ∣ (C - B))
    (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B)
    (t_star : ZMod (p ^ 2))
    (htStar :
      t_star.val % p =
        (ratio_unit_mod_p2 C B p
          (coprime_pow_two_of_not_dvd hPrime hNotC)
          (coprime_pow_two_of_not_dvd hPrime hNotB) : ZMod (p ^ 2)).val % p
      ∧ phi13Z t_star = 0) :
    p ^ 2 ∣ S_val B C ↔
      (ratio_unit_mod_p2 C B p
        (coprime_pow_two_of_not_dvd hPrime hNotC)
        (coprime_pow_two_of_not_dvd hPrime hNotB) : ZMod (p ^ 2))
        = t_star := by
  haveI : NeZero p := ⟨hPrime.pos.ne'⟩
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  let hC := coprime_pow_two_of_not_dvd hPrime hNotC
  let hB := coprime_pow_two_of_not_dvd hPrime hNotB
  let u := ratio_unit_mod_p2 C B p hC hB
  constructor
  · intro hp2
    have hOrd : order_mod_p2 C B p hC hB = 13 := by
      have hiff :=
        order_mod_p2_eq_13_iff_p2_dvd_S C B p hPrime hBltC hNotC hNotB hpnotCB
      have hS : S_val B C = S_13 C B :=
        S_val_eq_S_13_of_B_lt_C B C hBltC
      rw [hS] at hp2
      exact hiff.mpr hp2
    have hphi_u : phi13Z (u : ZMod (p ^ 2)) = 0 :=
      phi13Z_eq_zero_of_order_13 C B p hPrime hp13 hC hB hOrd
    have hPhi_u : p ∣ Phi13 (u : ZMod (p ^ 2)).val := by
      have : phi13Z (↑(u : ZMod (p ^ 2)).val : ZMod (p ^ 2)) = 0 := by
        rwa [ZMod.natCast_zmod_val]
      have : (Phi13 (u : ZMod (p ^ 2)).val : ZMod (p ^ 2)) = 0 := by
        rwa [phi13Z_nat]
      have hp2Phi : p ^ 2 ∣ Phi13 (u : ZMod (p ^ 2)).val :=
        (ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mp this
      obtain ⟨k, hk⟩ := hp2Phi
      refine ⟨p * k, ?_⟩
      rw [hk, pow_two, Nat.mul_assoc]
    have hSep_u : ¬ p ∣ (13 * (u : ZMod (p ^ 2)).val ^ 12) :=
      phi13_derivative_separable_mod_p p hPrime hp13 _ hPhi_u
    have hunq :=
      hensel_unique_lift_of_phi13_root p hPrime hp13
        (u : ZMod (p ^ 2)).val hPhi_u hSep_u
    have hU : ((u : ZMod (p ^ 2)).val : ZMod (p ^ 2)) = u :=
      ZMod.natCast_zmod_val _
    have hfibU :
        ((u : ZMod (p ^ 2)).val : ZMod (p ^ 2)).val % p
          = (u : ZMod (p ^ 2)).val % p := by
      rw [ZMod.val_natCast]
      exact Nat.mod_mod_of_dvd _ (dvd_pow_self p (by decide : (2 : Nat) ≠ 0))
    have hphi_u_val :
        phi13Z ((u : ZMod (p ^ 2)).val : ZMod (p ^ 2)) = 0 := by
      rwa [ZMod.natCast_zmod_val]
    have heq : ((u : ZMod (p ^ 2)).val : ZMod (p ^ 2)) = t_star :=
      ExistsUnique.unique hunq ⟨hfibU, hphi_u_val⟩ htStar
    exact hU.symm.trans heq
  · intro hEq
    have hphi : phi13Z (u : ZMod (p ^ 2)) = 0 := by
      rw [hEq]; exact htStar.2
    have hu1 : (u : ZMod (p ^ 2)) ≠ 1 := by
      intro h
      have : phi13Z (1 : ZMod (p ^ 2)) = 0 := by rwa [h] at hphi
      rw [phi13Z_one] at this
      have hdiv : p ^ 2 ∣ 13 :=
        (ZMod.natCast_zmod_eq_zero_iff_dvd 13 (p ^ 2)).mp this
      have : p ∣ 13 := by
        obtain ⟨k, hk⟩ := hdiv
        refine ⟨p * k, ?_⟩
        rw [hk, pow_two, Nat.mul_assoc]
      have h13p : Nat.Prime 13 := by decide
      exact hp13 ((Nat.prime_dvd_prime_iff_eq hPrime h13p).mp this)
    have hpow : (u : ZMod (p ^ 2)) ^ 13 = 1 := by
      have hgeom := geom_mul_phi13Z (u : ZMod (p ^ 2))
      rw [hphi, zero_mul] at hgeom
      exact eq_of_sub_eq_zero hgeom.symm
    have hOrd : order_mod_p2 C B p hC hB = 13 := by
      have hdef : order_mod_p2 C B p hC hB = orderOf u := rfl
      rw [hdef]
      have hdiv13 : orderOf u ∣ 13 := by
        refine (orderOf_dvd_iff_pow_eq_one).mpr ?_
        apply Units.ext
        rw [units_pow_coe, hpow]
        simp
      have hne1 : orderOf u ≠ 1 := by
        intro h
        rw [orderOf_eq_one_iff] at h
        exact hu1 (congrArg Units.val h)
      have h13p : Nat.Prime 13 := by decide
      rcases (Nat.dvd_prime h13p).mp hdiv13 with h | h
      · exact (hne1 h).elim
      · exact h
    have hiff :=
      order_mod_p2_eq_13_iff_p2_dvd_S C B p hPrime hBltC hNotC hNotB hpnotCB
    have hS : S_val B C = S_13 C B :=
      S_val_eq_S_13_of_B_lt_C B C hBltC
    rw [hS]
    exact hiff.mp hOrd

/-! ## Honesty lock: prime-power / two-prime / exists-`p` stay Props -/

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

/-- Uninhabited.  `S` may still be `q^k`
for a single primitive prime `q`. -/
def S_not_prime_power_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    ¬ ∃ p k, Nat.Prime p ∧ S_val B C = p ^ k

/-- Uninhabited.  Zsigmondy gives one
primitive prime, not two.  Even if `S`
is not a prime power it can be
`13^a · q^b`. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → B + 3 ≤ C → Nat.Coprime B C →
    ∃ p1 p2, Nat.Prime p1 ∧ Nat.Prime p2 ∧ p1 ≠ p2 ∧
      p1 ∣ S_val B C ∧ p2 ∣ S_val B C ∧
      ¬ p1 ∣ (C - B) ∧ ¬ p2 ∣ (C - B)

/-- Uninhabited.  Two independent lifts
can both succeed.  Size `S ≤ 13 C¹²`
does not rule out `53² · 79² ∣ S`. -/
def not_all_p_lift_when_two_primes : Prop :=
  ∀ B C p1 p2 : Nat,
    Nat.Prime p1 → Nat.Prime p2 → p1 ≠ p2 →
    p1 ∣ S_val B C → p2 ∣ S_val B C →
    ¬ p1 ∣ (C - B) → ¬ p2 ∣ (C - B) →
    p1 ^ 2 ∣ S_val B C → p2 ^ 2 ∣ S_val B C →
    False

/-- Uninhabited.  The remaining Hensel lock
for both `B ≤ 100` with `C ≥ B+3` and
`B > 100`.  Need `C · B⁻¹ ≢ t*` modulo
`p²` for at least one primitive prime. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ (p : Nat) (hp : Nat.Prime p),
      p ∣ S_val B C ∧ ¬ p ∣ (C - B) ∧
      ∃ (hNotC : ¬ p ∣ C) (hNotB : ¬ p ∣ B),
        order_of_C_B_inv_mod_p2 C B p hp hNotC hNotB ≠ 13

/-- Uninhabited.  Sketch odd-`A` close from
bare `C ≥ B+3` without the Hensel lock. -/
def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C → B + 3 ≤ C →
    False

/-- Uninhabited.  Sketch bare odd-`A` close. -/
def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime B C →
    False

/-- Uninhabited.  Even-`A` close is still a Prop
from v8.22.1. -/
def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → Nat.Coprime B C → False

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Nat.Coprime B C → Odd A → 3 ≤ A → False

#check S_val
#check S_bounds
#check p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#check hensel_lift_example_B1_C460_p53
#check zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#check S_not_fourth_of_order_ne_13_inhabited
#check exists_p_of_two_primes_one_not_square_inhabited
#check S_not_power_of_thirteen_inhabited
#check Norm_C_minus_B_zeta
#check norm_eq_S
#check zeta13_class_number_one
#check Phi13
#check phi13_derivative_separable_mod_p
#check hensel_unique_lift_of_phi13_root
#check p_sq_dvd_S_iff_CB_eq_lifted_root
#check C_eq_B_plus_1_or_2_closed
#check S_not_prime_power_when_C_ge_B_plus_3
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3
#check not_all_p_lift_when_two_primes
#check exists_p_with_order_ne_13_mod_p_sq_inhabited
#check beal_odd_A_closed_via_zsig_hensel_inhabited
#check S_bounds_13_B12_le_S_le_13_C12
#check oddPart_rec
#check even_not_pow2_has_odd_prime_q
#check level_2q_of_odd_prime_dvd_A
#check frey_conductor_even_A
#check frey_curve_conductor
#check beal_4_13_13_B_le_100_closed
#check beal_odd_A_closed_v8_24_0_inhabited
#check beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited
#check beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check kraus_criterion_q_ne_13
#check X0_2q_no_Frey_match
#check X0_26_no_matching_newform
#check modular_W_lift
#check beal_even_A_closed_v8_22_1
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms S_bounds
#print axioms p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#print axioms hensel_lift_example_B1_C460_p53
#print axioms zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#print axioms S_not_fourth_of_order_ne_13_inhabited
#print axioms exists_p_of_two_primes_one_not_square_inhabited
#print axioms S_not_power_of_thirteen_inhabited
#print axioms norm_eq_S
#print axioms zeta13_class_number_one
#print axioms phi13_derivative_separable_mod_p
#print axioms hensel_unique_lift_of_phi13_root
#print axioms p_sq_dvd_S_iff_CB_eq_lifted_root
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan
