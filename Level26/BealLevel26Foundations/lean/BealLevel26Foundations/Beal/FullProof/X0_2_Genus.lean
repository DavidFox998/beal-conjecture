/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.0 — Rational genus of `X₀(2)`.
Classical counts `μ=3`, `ν₂=1`, `ν₃=0`, `ν∞=2`
give `1 + 3/12 − 1/4 − 0 − 1 = 0` over `ℚ`.
That is **not** a Mathlib `ModularForm` space
and does **not** change `ExistsNewformLevel2`,
which stays `s2_gamma0_2_dim ≠ 0` i.e. `0 ≠ 0`.
`ℕ` division would send `3/12` and `1/4` to `0`
and is not this formula.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
-/

import BealLevel26Foundations.Chain.Level2
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.X0_2_Genus

open BealLevel26Foundations.Chain.Level2

/-- Classical index `[SL₂(ℤ) : Γ₀(2)]`. -/
def Gamma0_index_2 : Nat := 3

theorem Gamma0_index_2_eq : Gamma0_index_2 = 3 := rfl

/-- Elliptic points of order 2 on `X₀(2)`. -/
def nu2_Gamma0_2 : Nat := 1

theorem nu2_Gamma0_2_eq : nu2_Gamma0_2 = 1 := rfl

/-- Elliptic points of order 3 on `X₀(2)`. -/
def nu3_Gamma0_2 : Nat := 0

theorem nu3_Gamma0_2_eq : nu3_Gamma0_2 = 0 := rfl

/-- Cusps of `X₀(2)` (`0` and `∞`). -/
def nu_infty_Gamma0_2 : Nat := 2

theorem nu_infty_Gamma0_2_eq : nu_infty_Gamma0_2 = 2 := rfl

/-- Rational genus `1 + μ/12 − ν₂/4 − ν₃/3 − ν∞/2`
at `N = 2`.  Not a Mathlib curve computation. -/
def genus_X0_2_rat : ℚ :=
  1 + (3 : ℚ) / 12 - (1 : ℚ) / 4 - (0 : ℚ) / 3 - (2 : ℚ) / 2

theorem genus_X0_2_rat_eq_zero : genus_X0_2_rat = 0 := by
  norm_num [genus_X0_2_rat]

/-- Recorded `S₂(Γ₀(2))` dimension and the rational
genus identity.  The dimension is still the `Nat`
literal `0` (`rfl`); the genus does not rewrite it. -/
theorem s2_gamma0_2_dim_and_genus :
    s2_gamma0_2_dim = 0 ∧ genus_X0_2_rat = 0 :=
  ⟨s2_gamma0_2_dim_eq, genus_X0_2_rat_eq_zero⟩

/-- Honesty lock: the displayed newform label stays
`0 ≠ 0`.  `¬ ExistsNewformLevel2` is already
`notExistsNewformLevel2`. -/
theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  rfl

theorem not_ExistsNewformLevel2 : ¬ ExistsNewformLevel2 :=
  notExistsNewformLevel2

end BealLevel26Foundations.Beal.FullProof.X0_2_Genus
