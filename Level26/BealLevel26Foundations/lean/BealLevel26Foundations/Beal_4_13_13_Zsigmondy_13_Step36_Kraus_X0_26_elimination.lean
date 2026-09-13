/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.41.0 — Kraus / X₀(26) elimination
infrastructure for `q = 13` (not a ∀ close).

Inhabited:
`level_26_eq_2_mul_13`,
`fourCuspsList_eq`,
`X0_26_Q_displayed_points` (four cusps plus
`26a1` / `26b1`),
`E_26a1_ainv` / `E_26b1_ainv`,
`E_26a1_disc` / `E_26b1_disc`,
`S2_level_26_dim_two`,
`two_sqrt_sq_le_four_p` (Nat envelope),
`coeffAt`,
`ap_bound_level_26` (Hasse `a_p² ≤ 4p` on
the ledger at primes `3 ≤ p ≤ 97`, `p ≠ 13`).

Kraus elimination at `q = 13`, level 26
stays a Prop: there **are** newforms at
level 26; matching the Frey residual is
the missing lock.  Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so the
gap-3 exp-one ∀ stays a Prop.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal ∀.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.CoefficientLedger_26
import Beal.Foundations.J0_26_Decomp
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Chain.X0_26_Point
open BealLevel26Foundations.CoefficientLedger26
open Beal.Foundations.J0_26_Decomp
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
  (X0_26_no_matching_newform)

/-! ## Level 26 = 2·13 and displayed X₀(26)(ℚ) points -/

theorem level_26_eq_2_mul_13 : (26 : Nat) = 2 * 13 :=
  rfl

theorem fourCuspsList_eq : fourCuspsList = [1, 2, 13, 26] :=
  rfl

/-- Honest reference for real `X₀(26)(ℚ)`: four
displayed cusps plus the two LMFDB / PARI
non-cuspidal points.  A `List String`, not a
Mathlib point type and not Mazur. -/
def X0_26_Q_displayed_points : List String :=
  ["cusp_1", "cusp_2", "cusp_13", "cusp_26",
    "26a1 Δ -17576", "26b1 Δ -1664"]

theorem X0_26_Q_displayed_points_eq :
    X0_26_Q_displayed_points =
      ["cusp_1", "cusp_2", "cusp_13", "cusp_26",
        "26a1 Δ -17576", "26b1 Δ -1664"] :=
  rfl

theorem X0_26_Q_displayed_points_length :
    X0_26_Q_displayed_points.length = 6 :=
  rfl

theorem mem_cusp_1_displayed_points :
    "cusp_1" ∈ X0_26_Q_displayed_points :=
  List.mem_cons_self _ _

theorem mem_26a1_displayed_points :
    "26a1 Δ -17576" ∈ X0_26_Q_displayed_points := by
  simp [X0_26_Q_displayed_points]

theorem mem_26b1_displayed_points :
    "26b1 Δ -1664" ∈ X0_26_Q_displayed_points := by
  simp [X0_26_Q_displayed_points]

theorem E_26a1_ainv :
    factor26a1.a1 = 1 ∧ factor26a1.a2 = 0 ∧ factor26a1.a3 = 1 ∧
      factor26a1.a4 = -5 ∧ factor26a1.a6 = -8 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem E_26b1_ainv :
    factor26b1.a1 = 1 ∧ factor26b1.a2 = -1 ∧ factor26b1.a3 = 1 ∧
      factor26b1.a4 = -3 ∧ factor26b1.a6 = 3 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem E_26a1_disc : factor26a1.discriminant = -17576 :=
  rfl

theorem E_26b1_disc : factor26b1.discriminant = -1664 :=
  rfl

/-- Displayed `S₂(Γ₀(26))` dimension `1+1 = 2`.
Not a Mathlib modular-forms computation. -/
theorem S2_level_26_dim_two :
    certifiedDecompositionDimension = 2 :=
  certifiedDecompositionDimension_eq_two

/-! ## Hasse envelope `a_p² ≤ 4p` at level 26 -/

/-- Nat envelope of `|a| ≤ 2√p`: `(2 √n)² ≤ 4n`.
This can be strictly weaker than Hasse
(`Nat.sqrt` floors); the ledger check uses
`a² ≤ 4p`. -/
theorem two_sqrt_sq_le_four_p (n : Nat) :
    (2 * n.sqrt) ^ 2 ≤ 4 * n := by
  have hsq : n.sqrt * n.sqrt ≤ n := Nat.sqrt_le n
  have hpow : (2 * n.sqrt) ^ 2 = 4 * (n.sqrt * n.sqrt) := by
    rw [pow_two, Nat.mul_mul_mul_comm]
  rw [hpow]
  exact Nat.mul_le_mul_left 4 hsq

/-- Fourier coefficient `a_n` from a q-expansion
prefix.  Out of range is `0`. -/
def coeffAt (a : List Int) (n : Nat) : Int :=
  a.getD n 0

/-- Good primes for a residual Kraus check at
level 26: odd primes `≤ 97` other than `13`. -/
def kraus_primes_level_26 : List Nat :=
  [3, 5, 7, 11, 17, 19, 23, 29, 31, 37, 41, 43, 47,
    53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

/-- Inhabited.  Ledger Hasse check `a_p² ≤ 4p` for
`26a1` and `26b1` at the displayed Kraus primes.
Not a theorem for every prime, and not a matching
lock against a Frey residual. -/
theorem ap_bound_level_26 :
    ∀ p ∈ kraus_primes_level_26,
      (coeffAt qExp_26a1 p).natAbs ^ 2 ≤ 4 * p ∧
        (coeffAt qExp_26b1 p).natAbs ^ 2 ≤ 4 * p := by
  decide

theorem ap_26a1_3 : coeffAt qExp_26a1 3 = 1 := by
  decide

theorem ap_26b1_3 : coeffAt qExp_26b1 3 = -3 := by
  decide

theorem ap_26a1_5 : coeffAt qExp_26a1 5 = -3 := by
  decide

theorem ap_26b1_5 : coeffAt qExp_26b1 5 = -1 := by
  decide

/-! ## Honesty: Kraus elimination at q=13 stays a Prop -/

/-- Uninhabited.  Kraus residual-match at level 26
for signature `(4,13,13)` when `13 ∣ A`.  There
**are** newforms `26a1` / `26b1`; the lock is that
neither matches the Frey residual. -/
def kraus_elimination_q_13_level_26 : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Even A → 13 ∣ A →
    False

/-- Uninhabited wrap.  Same matching lock as Step14. -/
def X0_26_no_matching_newform_wrap : Prop :=
  X0_26_no_matching_newform

/-- Uninhabited.  Kraus / Darmon–Merel at `2q` for
`q ≠ 13`. -/
def kraus_criterion_q_ne_13 : Prop :=
  ∀ q : Nat, Nat.Prime q → q ≠ 13 →
    ∀ A B C : Nat,
      A ^ 4 + B ^ 13 = C ^ 13 →
      Even A →
      False

/-- Uninhabited.  Bugeaud–Corvaja–Zannier:
`P(Φ₁₃(C,B)) > C` on gap-3 coprime pairs
with `B > 50000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_50000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.bugeaud_P_phi13_gt_C_when_B_gt_50000

/-- Uninhabited.  Need `rad(S) > √(13 C¹²)` for a
squarefull contradiction. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000

/-- Uninhabited.  Ljunggren-type. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  `B > 50000` still needs
`rad > √13 C⁶` (or a direct exp-one prime). -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.exists_p_with_order_ne_13_mod_p_sq_inhabited

def beal_odd_A_closed_via_zsig_hensel_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.beal_odd_A_closed_via_zsig_hensel_inhabited

def beal_odd_A_closed_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.beal_odd_A_closed_v8_24_0_inhabited

def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

#check level_26_eq_2_mul_13
#check fourCuspsList_eq
#check X0_26_Q_displayed_points
#check E_26a1_ainv
#check E_26a1_disc
#check S2_level_26_dim_two
#check two_sqrt_sq_le_four_p
#check ap_bound_level_26
#check kraus_elimination_q_13_level_26
#check bugeaud_P_phi13_gt_C_when_B_gt_50000
#check S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check ExistsNewformLevel2_eq_zero_ne_zero
#print axioms level_26_eq_2_mul_13
#print axioms fourCuspsList_eq
#print axioms ap_bound_level_26
#print axioms two_sqrt_sq_le_four_p
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination
