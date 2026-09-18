/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/LLLTargetB8_C1_lower_bound.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `Beal.Matveev.PAdicLLL`. Do **not** import
  `Beal.Matveev.BealMatveevBealV25B0Search` (LEAN_PATH); the
  search slice is the root module `BealMatveevBealV25B0Search`.
-/
import BealMatveevBealV25B0Search
import LLLTargetB8

/-!
# `C1' ≤ 8` is impossible **on a solution** (not a v25 mint)

On a gap-3 solution with `B ≥ 100` one has `|Λ| ≤ 2/B⁹`
(`abs_Lambda_lt_two_div_B_pow_nine` at `f12ad03`). For `B ≥ 3`
that is strictly below `1/B⁸`, and `C1' ≤ 8` makes
`1/B⁸ ≤ 1/B^{C1'}`. Chaining

`1/B^{C1'} ≤ |Λ| ≤ 2/B⁹ < 1/B⁸ ≤ 1/B^{C1'}`

is `False`. So a claimed LLL lower bound with exponent `≤ 8`
cannot hold on any solution with `B ≥ B0`.

This does **not** inhabit `¬ LLL_reduces_C1_to_lt_nine`.
That negation is `∃` a solution with `B ≥ B0` at which the
lower bound fails. If there is no such solution, the
`∀`-statement is vacuously true. Given `|Λ| ≤ 2/B⁹`, the
hypothesis `LLL_reduces_C1_to_lt_nine` is **equivalent** to
“no gap-3 solution with `B ≥ B0`”: it is not an independent
lattice lemma that could cut the infinite branch.

`LLL_cannot_reach_B8` and `C1_lower_bound_false` stay
`def Prop`. `|Λ| ≥ B⁻⁸` stays uninhabited.
Does **not** mint v25. 0 sorry.
-/

namespace BealMatveevBeal.LLLTargetB8C1LowerBound

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8

theorem three_le_B_of_B0 {B : ℕ} (hB : B0_nat ≤ B) : 3 ≤ B := by
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  exact le_trans (by decide : (3 : ℕ) ≤ 1000000) hB0

/-- `2/B⁹ < 1/B⁸` iff `2 < B`. Holds for every `B ≥ 3`. -/
theorem two_div_pow_nine_lt_one_div_pow_eight {B : ℕ} (hB : 3 ≤ B) :
    (2 : ℝ) / (B : ℝ) ^ 9 < (1 : ℝ) / (B : ℝ) ^ 8 := by
  have hBpos : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (0 : ℕ) < 3) hB)
  have h8 : (0 : ℝ) < (B : ℝ) ^ 8 := pow_pos hBpos 8
  have h9 : (0 : ℝ) < (B : ℝ) ^ 9 := pow_pos hBpos 9
  have h2B : (2 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (2 : ℕ) < 3) hB)
  rw [div_lt_div_iff h9 h8, one_mul]
  have hsucc : (B : ℝ) ^ 9 = (B : ℝ) ^ 8 * B := pow_succ (B : ℝ) 8
  rw [hsucc]
  calc
    (2 : ℝ) * (B : ℝ) ^ 8 < (B : ℝ) * (B : ℝ) ^ 8 :=
      mul_lt_mul_of_pos_right h2B h8
    _ = (B : ℝ) ^ 8 * B := mul_comm _ _

/-- Local chaining: a `C1' ≤ 8` lower bound cannot sit under
    the proved `|Λ| ≤ 2/B⁹` upper bound when `B ≥ 3`. -/
theorem C1_le_8_impossible {A B : ℕ} (hB : 3 ≤ B)
    (h_up :
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| ≤
        2 / (B : ℝ) ^ 9)
    {C1' : ℕ} (hC1 : C1' ≤ 8)
    (h_low :
      (1 : ℝ) / (B : ℝ) ^ C1' ≤
        |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)|) :
    False := by
  have hBpos : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (0 : ℕ) < 3) hB)
  have hB1 : (1 : ℝ) ≤ (B : ℝ) := by
    exact_mod_cast (le_trans (by decide : (1 : ℕ) ≤ 3) hB)
  have hpow : (B : ℝ) ^ C1' ≤ (B : ℝ) ^ 8 :=
    pow_le_pow_right hB1 hC1
  have h_inv : (1 : ℝ) / (B : ℝ) ^ 8 ≤ (1 : ℝ) / (B : ℝ) ^ C1' :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos hBpos C1') hpow
  have hchain : (1 : ℝ) / (B : ℝ) ^ 8 ≤ 2 / (B : ℝ) ^ 9 :=
    (h_inv.trans h_low).trans h_up
  have hlt : (2 : ℝ) / (B : ℝ) ^ 9 < (1 : ℝ) / (B : ℝ) ^ 8 :=
    two_div_pow_nine_lt_one_div_pow_eight hB
  exact (lt_irrefl _ (hchain.trans_lt hlt))

/-- On a gap-3 solution with `B ≥ B0`, no `C1' ≤ 8` is a lower
    bound for `|Λ|`. -/
theorem C1_le_8_impossible_of_sol
    {A B : ℕ} (hB0 : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    {C1' : ℕ} (hC1 : C1' ≤ 8)
    (h_low :
      (1 : ℝ) / (B : ℝ) ^ C1' ≤
        |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)|) :
    False := by
  have h100B0 : 100 ≤ B0_nat := by
    rw [B0_nat_eq]
    decide
  have h100 : 100 ≤ B := h100B0.trans hB0
  have h_up := abs_Lambda_lt_two_div_B_pow_nine h100 hsol
  exact C1_le_8_impossible (three_le_B_of_B0 hB0) h_up hC1 h_low

/-- `¬ ∀ solutions, |Λ| ≥ B^{-C1'}`. Uninhabited: the negation
    needs a witness solution with `B ≥ B0`. -/
def C1_lower_bound_false : Prop :=
  ∀ C1' : ℕ, C1' ≤ 8 →
    ¬ (∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
      (1 : ℝ) / (B : ℝ) ^ C1' ≤
        |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)|)

/-- Same statement as `¬ LLL_reduces_C1_to_lt_nine`. Uninhabited:
    equivalent (below) to existence of a `B ≥ B0` solution. -/
def LLL_cannot_reach_B8 : Prop :=
  ¬ LLL_reduces_C1_to_lt_nine

theorem LLL_cannot_reach_B8_eq :
    LLL_cannot_reach_B8 = ¬ LLL_reduces_C1_to_lt_nine :=
  rfl

/-- Forward direction already in `LLLTargetB8`: an inhabited
    `C1' ≤ 8` lower bound plus `|Λ| ≤ 2/B⁹` kills `B ≥ B0`. -/
theorem no_sol_ge_B0_of_LLL_reduces_C1_to_lt_nine
    (h : LLL_reduces_C1_to_lt_nine) {A B : ℕ} (hB : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_of_LLL_reduces_C1_to_lt_nine h hB hsol

/-- Vacuous converse: if there is no `B ≥ B0` solution, then
    `LLL_reduces_C1_to_lt_nine` holds for `C1' = 8`. So the LLL
    target is not an independent lemma — it is equivalent to
    the large-`B` nogo it was supposed to prove. -/
theorem LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0
    (h : ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13) :
    LLL_reduces_C1_to_lt_nine :=
  ⟨C1_LLL_target, le_rfl, fun hB hsol => (h hB hsol).elim⟩

theorem LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 := by
  constructor
  · intro h A B hB hsol
    exact no_sol_ge_B0_of_LLL_reduces_C1_to_lt_nine h hB hsol
  · exact LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0

#check two_div_pow_nine_lt_one_div_pow_eight
#check C1_le_8_impossible
#check C1_le_8_impossible_of_sol
#check C1_lower_bound_false
#check LLL_cannot_reach_B8
#check LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0
#print axioms C1_le_8_impossible
#print axioms C1_le_8_impossible_of_sol
#print axioms LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

end BealMatveevBeal.LLLTargetB8C1LowerBound
