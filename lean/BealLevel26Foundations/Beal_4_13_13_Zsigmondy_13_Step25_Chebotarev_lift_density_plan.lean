/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.30.0 — Chebotarev lift
density plan.

p ∣ S ↔ Φ₁₃(t) = 0 mod p for
t = C · B⁻¹.  When p ≠ 13 the root
is simple, so Hensel locks a unique
class t* in ZMod (p²).  Then
p² ∣ S ↔ C · B⁻¹ ≡ t* (mod p²).

That square condition lives in a
fibre of size p over the class
modulo p, so it is p-times thinner
than p ∣ S.  Primes that can divide
a Φ₁₃-value (except 13) lie in the
Dirichlet class p ≡ 1 (mod 13), and
that class is infinite.

The sketch density “p ∣ S has density
1/13 among p ≡ 1 (mod 13), hence some
p with p ∣ S and ¬ p² ∣ S” is a
Chebotarev heuristic for
Q(ζ13, (C/B)^{1/13}), not a proof.
Mathlib 4.12 has no effective
Chebotarev.  For a fixed S the set
{p : p ∣ S} is finite; density does
not produce a prime off t*.

Inhabited:
`S_val`, `S_bounds`,
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`hensel_lift_example_B1_C460_p53`,
`zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited`,
`S_not_fourth_of_order_ne_13_inhabited`,
`exists_p_of_two_primes_one_not_square_inhabited`,
`S_not_power_of_thirteen_inhabited`,
`norm_eq_S`,
`phi13_derivative_separable_mod_p_inhabited`,
`hensel_unique_lift_of_phi13_root_inhabited`,
`p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited`,
`primes_eq1_mod13_infinite`,
`density_p_div_S`,
`thin_set_p_sq_div_S`.

Uninhabited (honest):
`S_not_prime_power_when_C_ge_B_plus_3`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3`
(need effective Chebotarev),
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

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan
import Mathlib.Data.Nat.ModEq
import Mathlib.NumberTheory.PrimesCongruentOne
import Mathlib.Tactic

set_option maxHeartbeats 800000

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan

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
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan
  (Phi13 Phi13_deriv phi13Z phi13Z_deriv
    phi13_one phi13Z_one
    phi13_eq_one_of_dvd_t
    phi13_dvd_of_modEq
    phi13Z_nat
    geom_mul_phi13Z
    tStar_lt_p_sq
    zmod_p2_split
    phi13_derivative_separable_mod_p
    hensel_unique_lift_of_phi13_root
    p_sq_dvd_S_iff_CB_eq_lifted_root)
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

/-! ## Step24 wraps (separability discharges the derivative hyp) -/

theorem phi13_derivative_separable_mod_p_inhabited
    (p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13) (t : Nat)
    (hPhi : p ∣ Phi13 t) :
    ¬ p ∣ (13 * t ^ 12) :=
  phi13_derivative_separable_mod_p p hPrime hp13 t hPhi

/--
Unique Hensel class in `ZMod (p²)`.
The sketch `∃! t_star, True` is false
(every class satisfies `True`).
Separability is supplied by the
previous wrap, not assumed extra.
-/
theorem hensel_unique_lift_of_phi13_root_inhabited
    (p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13) (t : Nat)
    (hPhi : p ∣ Phi13 t) :
    ∃! t_star : ZMod (p ^ 2),
      t_star.val % p = t % p ∧ phi13Z t_star = 0 :=
  hensel_unique_lift_of_phi13_root p hPrime hp13 t hPhi
    (phi13_derivative_separable_mod_p p hPrime hp13 t hPhi)

/--
`p² ∣ S` iff the unit ratio equals the
given Hensel class.  The sketch left
`t_star` free; uniqueness is the
previous theorem.  Extra hyps `B < C`,
`¬ p ∣ C`, `¬ p ∣ B` are required for
the Step11 dichotomy.
-/
theorem p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
    (B C p : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hBltC : B < C) (hCop : Nat.Coprime B C)
    (hpS : p ∣ S_val B C) (hpnotCB : ¬ p ∣ (C - B))
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
        = t_star :=
  p_sq_dvd_S_iff_CB_eq_lifted_root B C p hPrime hp13
    hBltC hCop hpS hpnotCB hNotC hNotB t_star htStar

/-! ## Dirichlet class and density support -/

/-- Infinitely many primes `p ≡ 1 [MOD 13]`.
Mathlib cyclotomic argument, not
analytic Dirichlet L-functions. -/
theorem primes_eq1_mod13_infinite :
    Set.Infinite {p : Nat | Nat.Prime p ∧ p ≡ 1 [MOD 13]} :=
  Nat.infinite_setOf_prime_modEq_one (by decide : (13 : Nat) ≠ 0)

/--
Support of the `p ∣ S` density: a prime
dividing a `Φ₁₃`-value, other than 13,
must lie in the class `p ≡ 1 [MOD 13]`.

This is **not** density `1/13` among
that class.  That Chebotarev count in
`Q(ζ13, (C/B)^{1/13})` stays a Prop.
-/
theorem density_p_div_S
    (p t : Nat) (hPrime : Nat.Prime p) (hp13 : p ≠ 13)
    (hPhi : p ∣ Phi13 t) :
    p ≡ 1 [MOD 13] := by
  haveI : Fact (Nat.Prime p) := ⟨hPrime⟩
  have ht0 : (t : ZMod p) ≠ 0 := by
    intro h
    have ht : p ∣ t := (ZMod.natCast_zmod_eq_zero_iff_dvd t p).mp h
    exact Nat.Prime.not_dvd_one hPrime (phi13_eq_one_of_dvd_t t p ht hPhi)
  have hphiZ : phi13Z (t : ZMod p) = 0 := by
    have : (Phi13 t : ZMod p) = 0 :=
      (ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mpr hPhi
    rwa [phi13Z_nat] at this
  have hpow : (t : ZMod p) ^ 13 = 1 := by
    have hgeom := geom_mul_phi13Z (t : ZMod p)
    rw [hphiZ, zero_mul] at hgeom
    exact sub_eq_zero.mp hgeom.symm
  have ht1 : (t : ZMod p) ≠ 1 := by
    intro h
    have : phi13Z (1 : ZMod p) = 0 := by rwa [h] at hphiZ
    rw [phi13Z_one] at this
    have hdiv : p ∣ 13 :=
      (ZMod.natCast_zmod_eq_zero_iff_dvd 13 p).mp this
    have h13p : Nat.Prime 13 := by decide
    exact hp13 ((Nat.prime_dvd_prime_iff_eq hPrime h13p).mp hdiv)
  have hord : orderOf (t : ZMod p) ∣ 13 :=
    orderOf_dvd_of_pow_eq_one hpow
  have h13eq : orderOf (t : ZMod p) = 13 := by
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp hord with h1 | h13
    · exact absurd (orderOf_eq_one_iff.mp h1) ht1
    · exact h13
  have hdiv : orderOf (t : ZMod p) ∣ p - 1 :=
    ZMod.orderOf_dvd_card_sub_one ht0
  have h13p1 : 13 ∣ p - 1 := by rwa [h13eq] at hdiv
  exact ((Nat.modEq_iff_dvd' hPrime.one_le).mpr h13p1).symm

/-! ## Thin fibre over a residue class modulo p -/

theorem fibre_val_mod
    (p t0 k : Nat) (hPrime : Nat.Prime p)
    (ht0 : t0 < p) (hk : k < p) :
    ((t0 + p * k : Nat) : ZMod (p ^ 2)).val % p = t0 := by
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  have hlt : t0 + p * k < p ^ 2 :=
    tStar_lt_p_sq p t0 k hPrime.pos ht0 hk
  have hval : ((t0 + p * k : Nat) : ZMod (p ^ 2)).val = t0 + p * k :=
    ZMod.val_natCast_of_lt hlt
  rw [hval, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt ht0]

/--
The residue-class fibre in `ZMod (p²)`
over a fixed class modulo `p` has
cardinality `p`.  Exactly one point of
that fibre is the Hensel lift `t*`
(Step24 uniqueness).  That is the
honest “p-times rarer” fact.  It does
**not** prove `¬ p² ∣ S`.
-/
theorem thin_set_p_sq_div_S
    (p t : Nat) (hPrime : Nat.Prime p) :
    haveI : NeZero p := ⟨hPrime.pos.ne'⟩
    haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
    (Finset.univ.filter
        (fun x : ZMod (p ^ 2) => x.val % p = t % p)).card = p := by
  haveI : Fact (Nat.Prime p) := ⟨hPrime⟩
  haveI : NeZero p := ⟨hPrime.pos.ne'⟩
  haveI : NeZero (p ^ 2) := ⟨ne_of_gt (Nat.pos_pow_of_pos 2 hPrime.pos)⟩
  let t0 := t % p
  have ht0 : t0 < p := Nat.mod_lt _ hPrime.pos
  let f : Nat → ZMod (p ^ 2) := fun k => ↑(t0 + p * k)
  have him :
      Finset.univ.filter (fun x : ZMod (p ^ 2) => x.val % p = t % p) =
        (Finset.range p).image f := by
    ext x
    constructor
    · intro hx
      have hx0 : x.val % p = t0 := (Finset.mem_filter.mp hx).2
      have hdivlt : x.val / p < p :=
        Nat.div_lt_of_lt_mul
          (lt_of_lt_of_eq (ZMod.val_lt x) (pow_two p))
      refine Finset.mem_image.mpr ⟨x.val / p, Finset.mem_range.mpr hdivlt, ?_⟩
      have hsplit := zmod_p2_split x t0 hx0
      have : (↑(t0 + p * (x.val / p)) : ZMod (p ^ 2)) = x := by
        rw [Nat.cast_add, Nat.cast_mul]
        exact hsplit.symm
      exact this
    · intro hx
      obtain ⟨k, hk, hkx⟩ := Finset.mem_image.mp hx
      have hklt : k < p := Finset.mem_range.mp hk
      refine Finset.mem_filter.mpr ⟨Finset.mem_univ x, ?_⟩
      rw [← hkx]
      exact fibre_val_mod p t0 k hPrime ht0 hklt
  have hinj : Set.InjOn f (Finset.range p) := by
    intro k1 hk1 k2 hk2 heq
    have hk1lt : k1 < p := Finset.mem_range.mp hk1
    have hk2lt : k2 < p := Finset.mem_range.mp hk2
    have hlt1 : t0 + p * k1 < p ^ 2 :=
      tStar_lt_p_sq p t0 k1 hPrime.pos ht0 hk1lt
    have hlt2 : t0 + p * k2 < p ^ 2 :=
      tStar_lt_p_sq p t0 k2 hPrime.pos ht0 hk2lt
    have hv1 : (f k1).val = t0 + p * k1 :=
      ZMod.val_natCast_of_lt hlt1
    have hv2 : (f k2).val = t0 + p * k2 :=
      ZMod.val_natCast_of_lt hlt2
    have heqNat : t0 + p * k1 = t0 + p * k2 := by
      rw [← hv1, ← hv2, heq]
    exact Nat.eq_of_mul_eq_mul_left hPrime.pos (Nat.add_left_cancel heqNat)
  rw [him, Finset.card_image_of_injOn hinj, Finset.card_range]

/-! ## Honesty lock: Chebotarev close and exists-`p` stay Props -/

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

/-- Uninhabited.  Density heuristic, not
a proof.  Need effective Chebotarev for
`Q(ζ13, (C/B)^{1/13})` plus a thin-set
bound that actually produces one prime
off the Hensel class.  For fixed `S`
the set `{p : p ∣ S}` is finite. -/
def chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3 : Prop :=
  ∀ B C : Nat,
    B < C → Nat.Coprime B C → B + 3 ≤ C →
    ∃ p, Nat.Prime p ∧ p ∣ S_val B C ∧
      ¬ p ∣ (C - B) ∧ ¬ p ^ 2 ∣ S_val B C

/-- Uninhabited.  The remaining Hensel lock
for both `B ≤ 100` with `C ≥ B+3` and
`B > 100`.  Need `C · B⁻¹ ≢ t*` modulo
`p²` for at least one primitive prime.
Equivalent to the Chebotarev Prop via
the Step11 order dichotomy. -/
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
#check phi13_derivative_separable_mod_p_inhabited
#check hensel_unique_lift_of_phi13_root_inhabited
#check p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
#check primes_eq1_mod13_infinite
#check density_p_div_S
#check thin_set_p_sq_div_S
#check C_eq_B_plus_1_or_2_closed
#check S_not_prime_power_when_C_ge_B_plus_3
#check S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3
#check not_all_p_lift_when_two_primes
#check chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3
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
#print axioms phi13_derivative_separable_mod_p_inhabited
#print axioms hensel_unique_lift_of_phi13_root_inhabited
#print axioms p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
#print axioms primes_eq1_mod13_infinite
#print axioms density_p_div_S
#print axioms thin_set_p_sq_div_S
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan
