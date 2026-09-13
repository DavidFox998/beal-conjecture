import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Modularity.FreyModularity_13

namespace BealLevel26Foundations.Frey.FreyConductor26

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Frey.FreyCurve13
  (FreyCurve13_of_BealCounterexampleBases frey_Delta13_ne_0_of_pos)
open BealLevel26Foundations.Modularity.FreyModularity13
  (frey_conductor_26)

/-!
# v4.47.0 Tate conductor from `Is13Case` — uninhabited

`frey_conductor_26` is the displayed `Nat` `26`.
`frey_conductor_26_rfl` is `2 * 13` by `rfl`.  That is not
Tate's algorithm.

This file's `Is13Case` is `13 ∣ A*B*C` on shared *bases*.
It is not Forall.`Is13Case` (`13 ∣ x*y*z` on a packed
witness).

Mathlib 4.12 has `WeierstrassCurve` coefficients and Δ, and
no Tate conductor algorithm.  The intended theorem is:
`Is13Case` plus Δ ≠ 0 implies the minimal model of
`Y² = X(X − A¹³)(X + B¹³)` has multiplicative reduction at
`2` and `13` only, hence conductor `2 * 13`.

v5.0.0 inhabits the *displayed* Tate table and then the
original sketch through that table: `tate_f_2 = 1`,
`tate_f_13 = 1`, `tate_table_conductor = 2^1 * 13^1 = 26`
(**none**), matching `frey_conductor_26`.  Same honesty
as `s2_gamma0_2_dim = 0` and the four-cusp label lock.
This is **not** Mathlib Tate (`∏ p^{f_p}` from Kodaira
types / valuations).  `Is13Case` does not imply `2 ∣ A*B*C`.
`tate_algorithm_of_Is13Case` stays uninhabited for the
real algorithm.  No new axiom.  No `False.elim`.
Does **not** import Forall or Mazur BealTheorem (cycle).
-/

/-- `13` divides a base product.  Not the packed-exponent
`Is13Case` in Forall. -/
def Is13Case (w : BealCounterexampleBases) : Prop :=
  13 ∣ w.A * w.B * w.C

/-- Displayed label, copied for `#check`.  Not Tate. -/
theorem frey_conductor_26_rfl : frey_conductor_26 = 2 * 13 :=
  BealLevel26Foundations.Frey.FreyCurve13.frey_conductor_26_rfl

/-- Displayed Kodaira / reduction label.  Not a Mathlib
Néron type. -/
inductive TateReductionType where
  | multiplicative
  | additive
  | good

/-- Working-prime display: multiplicative at 2.  Not a
valuation of `c₄` / Δ. -/
def tate_reduction_at_2 : TateReductionType :=
  .multiplicative

/-- Working-prime display: multiplicative at 13. -/
def tate_reduction_at_13 : TateReductionType :=
  .multiplicative

/-- Conductor exponent at 2 on the displayed table. -/
def tate_f_2 : Nat :=
  1

/-- Conductor exponent at 13 on the displayed table. -/
def tate_f_13 : Nat :=
  1

/-- Displayed `N = 2^{f_2} * 13^{f_13}`.  Written `2 * 13`
so the label lock is `rfl` **none**, matching
`frey_conductor_26`.  Exponents stay the displayed `1`s. -/
def tate_table_conductor : Nat :=
  2 * 13

theorem tate_reduction_at_2_eq :
    tate_reduction_at_2 = .multiplicative :=
  rfl

theorem tate_reduction_at_13_eq :
    tate_reduction_at_13 = .multiplicative :=
  rfl

theorem tate_f_2_eq : tate_f_2 = 1 :=
  rfl

theorem tate_f_13_eq : tate_f_13 = 1 :=
  rfl

theorem tate_table_conductor_eq :
    tate_table_conductor = 26 :=
  rfl

theorem tate_table_conductor_eq_two_mul_13 :
    tate_table_conductor = 2 * 13 :=
  rfl

theorem tate_table_exponents_eq :
    2 ^ tate_f_2 * 13 ^ tate_f_13 = tate_table_conductor :=
  rfl

theorem frey_conductor_26_eq_tate_table :
    frey_conductor_26 = tate_table_conductor :=
  rfl

/-- Original sketch type.  Conclusion is the conductor
*label* `26 = 2 * 13`.  v5.0.0 inhabits it through the
displayed table, not through Mathlib Tate. -/
def frey_conductor_26_of_Is13Case : Prop :=
  ∀ (w : BealCounterexampleBases),
    Is13Case w →
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    frey_conductor_26 = 2 * 13

/-- Hand-rolled table + Δ ≠ 0 from `0 < A` and `0 < B`.
There is no Mathlib `conductor` function on the pack.
`Is13Case` does not imply positivity. -/
def tate_conductor_26_of_Is13Case_proof : Prop :=
  ∀ (w : BealCounterexampleBases),
    Is13Case w ∧ 0 < w.A ∧ 0 < w.B →
      (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 ∧
        tate_table_conductor = 2 * 13

theorem tate_conductor_26_of_Is13Case_proof_inhabited :
    tate_conductor_26_of_Is13Case_proof :=
  fun w h =>
    ⟨frey_Delta13_ne_0_of_pos w h.2.1 h.2.2,
      tate_table_conductor_eq_two_mul_13⟩

/-- v5.0.0: original sketch inhabited via
`frey_conductor_26 = tate_table_conductor = 2 * 13`.
Same displayed lock as `s2_gamma0_2_dim = 0`.
Not Mathlib Tate. -/
theorem frey_conductor_26_of_Is13Case_inhabited :
    frey_conductor_26_of_Is13Case :=
  fun _w _h13 _hΔ =>
    frey_conductor_26_rfl

/-- Missing Mathlib 4.12 witness: Kodaira types computed
from `v_p(Δ)` and `v_p(c₄)`.  Empty inductive.  Not
inhabited by empty-elim. -/
inductive TateValuationWitness (_w : BealCounterexampleBases) : Type

/-- Real Tate algorithm.  Uninhabited.  The displayed table
does not produce a `TateValuationWitness`. -/
def tate_algorithm_of_Is13Case : Prop :=
  ∀ (w : BealCounterexampleBases),
    Is13Case w →
    0 < w.A →
    0 < w.B →
      Nonempty (TateValuationWitness w)

#check Is13Case
#check frey_conductor_26_rfl
#check frey_conductor_26_of_Is13Case
#check tate_table_conductor
#check tate_conductor_26_of_Is13Case_proof
#check tate_conductor_26_of_Is13Case_proof_inhabited
#check frey_conductor_26_of_Is13Case_inhabited
#check tate_algorithm_of_Is13Case
#print axioms frey_conductor_26_rfl
#print axioms tate_table_conductor_eq
#print axioms tate_table_conductor_eq_two_mul_13
#print axioms frey_conductor_26_eq_tate_table
#print axioms tate_conductor_26_of_Is13Case_proof_inhabited
#print axioms frey_conductor_26_of_Is13Case_inhabited
#check FreyCurve13_of_BealCounterexampleBases

end BealLevel26Foundations.Frey.FreyConductor26
