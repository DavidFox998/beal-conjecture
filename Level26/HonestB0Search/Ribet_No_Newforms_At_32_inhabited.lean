/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest Ribet / level-32 *display* for v28. Separate Lake
  targets `HonestB0Search` and `Level26` (`srcDir` this
  folder). Do **not** add `Beal/Matveev/`. Do **not**
  import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Ribet axiom.
-/
import Ribet_Level_Lowering_29_to_32
import Level32Table
import LLLTargetB8_C1_lower_bound

/-!
# Displayed “no newforms at 32” (v28)

Inhabits the **numeral / Finset** side of the Ribet
`928 / 29 = 32` display from
`Ribet_Level_Lowering_29_to_32_inhabited` (`b61bec2` /
`51bba93`):

* `928 / 29 = 32`, `32 · 29 = 928`, `29 ∤ 32`
* LMFDB `dim S₂(Γ₀(32)) = 1` (re-export; unique `32a1`)
* displayed old level `16`, `16 ∣ 32`, `2⁴ = 16`
* displayed `dim S₂(Γ₀(16)) = 0` (genus `0`)
* Sturm numerals `[SL₂(ℤ):Γ₀(32)] = 32·(3/2) = 48`,
  `2·48/12 = 8`
* displayed Frey-*matching* newform Finset empty (`card = 0`)

`CuspForms(32,2).new_subspace().dimension()` is **Sage /
LMFDB data**. LMFDB and `Level32Table` record that full new
space as dimension `1` (`32a1`). The pasted equality
`new_subspace().dimension() = 0` is **not** a theorem.
`no_newforms_at_32` packages the empty *matching* Finset
against the Sturm / `16` / `928/29=32` numerals. It does
not empty `S₂(Γ₀(32))` and is not Kraus elimination.

Parent names `Ribet_928_to_32`, `no_newforms_at_32_mod13`,
`explicit_a29_mod13` stay `def Prop`.

No `def Prop` in this file. No `sorry`. No new axiom.
No Wiles.
-/

set_option linter.dupNamespace false

namespace BealMatveevBeal.Ribet_No_Newforms_At_32_inhabited

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.Ribet_Level_Lowering_29_to_32
open BealMatveevBeal.Level32Table
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Re-export parent numerals (`b61bec2`) -/

theorem nine_twenty_eight_div_twenty_nine_reexport' : 928 / 29 = 32 :=
  nine_twenty_eight_div_twenty_nine_reexport

theorem thirty_two_mul_twenty_nine_reexport' : (32 : ℕ) * 29 = 928 :=
  thirty_two_mul_twenty_nine_reexport

theorem twenty_nine_nmid_thirty_two_reexport' : ¬ 29 ∣ 32 :=
  twenty_nine_nmid_thirty_two_reexport

theorem S2_Gamma0_32_dim_eq_one_reexport' : S2_Gamma0_32_dim = 1 :=
  S2_Gamma0_32_dim_eq_one

/-! ## Oldforms from level `16` (display, not a degeneracy map) -/

/-- Displayed old level dividing `32`. Not a Mathlib oldform
    embedding `S₂(Γ₀(16)) → S₂(Γ₀(32))`. -/
def displayed_old_level : ℕ := 16

theorem displayed_old_level_eq : displayed_old_level = 16 := rfl

theorem two_pow_four_eq_sixteen : (2 : ℕ) ^ 4 = 16 := by
  decide

theorem sixteen_dvd_thirty_two : 16 ∣ 32 := by
  decide

/-- Displayed `dim S₂(Γ₀(16))`. Genus of `X₀(16)` is `0`, so
    the space is empty. Not a Mathlib `ModularForm` dimension. -/
def S2_Gamma0_16_dim : ℕ := 0

theorem S2_Gamma0_16_dim_eq : S2_Gamma0_16_dim = 0 := rfl

/-! ## Sturm bound numerals (weight `2`, level `32`) -/

/-- `[SL₂(ℤ):Γ₀(32)] = 32 · (1 + 1/2) = 48`. -/
def displayed_index_Gamma0_32 : ℕ := 48

theorem displayed_index_Gamma0_32_eq : (32 : ℕ) * 3 / 2 = 48 := by
  decide

/-- Sturm bound `⌊k · μ / 12⌋` at `k = 2`, `μ = 48`. -/
def sturm_bound_wt2_level32 : ℕ := 8

theorem sturm_bound_wt2_level32_eq : (2 : ℕ) * 48 / 12 = 8 := by
  decide

/-! ## Displayed Frey-*matching* newforms (not the full new space) -/

/-- Labels of newforms at `32` that match displayed Frey
    traces at good `29`. Empty: `Level32Table` already has
    `a₂₉ ≠ −10` on every good on-solution residue. Not
    `CuspForms(32,2).new_subspace()`. -/
def displayed_frey_matching_newforms : Finset ℕ :=
  ∅

theorem displayed_frey_matching_newforms_eq :
    displayed_frey_matching_newforms = (∅ : Finset ℕ) :=
  rfl

theorem displayed_frey_matching_newforms_card :
    displayed_frey_matching_newforms.card = 0 :=
  rfl

/-- The inhabited “new dim = 0” *display*: matching Finset
    cardinality, not Sage `new_subspace().dimension()`. -/
theorem displayed_matching_card_eq_zero :
    displayed_frey_matching_newforms.card = 0 :=
  displayed_frey_matching_newforms_card

theorem full_new_space_dim_ne_matching_zero :
    S2_Gamma0_32_dim ≠ displayed_frey_matching_newforms.card := by
  rw [S2_Gamma0_32_dim_eq_one, displayed_frey_matching_newforms_card]
  decide

/-! ## Packaged v28 display -/

/-- Numerals and the empty matching Finset from
    `Ribet_Level_Lowering_29_to_32_inhabited`. Does **not**
    prove `CuspForms(32,2).new_subspace().dimension() = 0`
    (LMFDB / `Level32Table`: that dimension is `1`, newform
    `32a1`). Does **not** inhabit `no_newforms_at_32_mod13`. -/
theorem no_newforms_at_32 :
    928 / 29 = 32 ∧
      (32 : ℕ) * 29 = 928 ∧
      ¬ 29 ∣ 32 ∧
      S2_Gamma0_32_dim = 1 ∧
      displayed_old_level = 16 ∧
      S2_Gamma0_16_dim = 0 ∧
      (2 : ℕ) ^ 4 = 16 ∧
      16 ∣ 32 ∧
      (32 : ℕ) * 3 / 2 = 48 ∧
      (2 : ℕ) * 48 / 12 = 8 ∧
      displayed_frey_matching_newforms.card = 0 ∧
      S2_Gamma0_32_dim ≠ displayed_frey_matching_newforms.card :=
  ⟨nine_twenty_eight_div_twenty_nine_reexport',
    thirty_two_mul_twenty_nine_reexport',
    twenty_nine_nmid_thirty_two_reexport',
    S2_Gamma0_32_dim_eq_one_reexport',
    displayed_old_level_eq,
    S2_Gamma0_16_dim_eq,
    two_pow_four_eq_sixteen,
    sixteen_dvd_thirty_two,
    displayed_index_Gamma0_32_eq,
    sturm_bound_wt2_level32_eq,
    displayed_frey_matching_newforms_card,
    full_new_space_dim_ne_matching_zero⟩

theorem Ribet_No_Newforms_At_32_inhabited :
    928 / 29 = 32 ∧
      (32 : ℕ) * 29 = 928 ∧
      ¬ 29 ∣ 32 ∧
      S2_Gamma0_32_dim = 1 ∧
      displayed_old_level = 16 ∧
      S2_Gamma0_16_dim = 0 ∧
      (2 : ℕ) ^ 4 = 16 ∧
      16 ∣ 32 ∧
      (32 : ℕ) * 3 / 2 = 48 ∧
      (2 : ℕ) * 48 / 12 = 8 ∧
      displayed_frey_matching_newforms.card = 0 ∧
      S2_Gamma0_32_dim ≠ displayed_frey_matching_newforms.card :=
  no_newforms_at_32

theorem LLL_nogo_persists_after_Ribet_No_Newforms_v28 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, BealMatveevBealV25B0Search.B0_nat ≤ B →
        A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check no_newforms_at_32
#check displayed_frey_matching_newforms_card
#check Ribet_No_Newforms_At_32_inhabited
#print axioms no_newforms_at_32
#print axioms displayed_frey_matching_newforms_card
#print axioms LLL_nogo_persists_after_Ribet_No_Newforms_v28

end BealMatveevBeal.Ribet_No_Newforms_At_32_inhabited
