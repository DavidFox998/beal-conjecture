/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Ribet_Level_Lowering_29_to_32.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Ribet / modularity axiom.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import Level928Table
import Ribet_Level32
import LLLTargetB8_C1_lower_bound

/-!
# Ribet `928 / 29 = 32` for Frey `p = 13` (not full Ribet)

Specialisation of `Ribet_Level32` (`a234427`) to the displayed
`29`-split: residual `32` when `29 ∤ AB`, residual `928` when
`29 ∣ AB`. `928 / 29 = 32` is a numeral, **not** Néron `N_E`
and not a Galois isomorphism `ρ_{E,13} ≅ ρ_{E',13}`.

Abstract Ribet, Wiles modularity of Frey, emptiness of
level-`32` newforms mod `13`, and an explicit `a₂₉` mod `13`
check stay `def Prop`. This file does **not** run a full Ribet
argument and does **not** inhabit `a₂₉`.

No Wiles. No L-function. No new axiom. `main` stays `6247c63`.
-/

namespace BealMatveevBeal.Ribet_Level_Lowering_29_to_32

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Ribet_Level32
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

theorem nine_twenty_eight_div_twenty_nine_reexport : 928 / 29 = 32 :=
  nine_twenty_eight_div_twenty_nine

theorem thirty_two_mul_twenty_nine_reexport : (32 : ℕ) * 29 = 928 :=
  thirty_two_mul_twenty_nine

theorem nine_twenty_eight_ne_thirty_two_reexport : (928 : ℕ) ≠ 32 :=
  nine_twenty_eight_ne_thirty_two

theorem twenty_nine_nmid_thirty_two_reexport : ¬ 29 ∣ 32 :=
  twenty_nine_nmid_thirty_two

theorem conductor_display_32_of_29_nmid_AB {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    level_after_ribet_29 A B = 32 :=
  level_after_ribet_29_eq_32_of_nmid_AB hA hB

theorem conductor_display_928_of_29_dvd_AB {A B : ℕ}
    (h : 29 ∣ A ∨ 29 ∣ B) :
    level_after_ribet_29 A B = 928 :=
  level_after_ribet_29_eq_928_of_dvd_AB h

/-- Packaged inhabited Ribet display. `928/29=32` is a
    numeral, not Néron `N_E` and not a Galois isomorphism. -/
theorem Ribet_Level_Lowering_29_to_32_inhabited :
    928 / 29 = 32 ∧ (32 : ℕ) * 29 = 928 ∧
      (928 : ℕ) ≠ 32 ∧ ¬ 29 ∣ 32 :=
  ⟨nine_twenty_eight_div_twenty_nine_reexport,
    thirty_two_mul_twenty_nine_reexport,
    nine_twenty_eight_ne_thirty_two_reexport,
    twenty_nine_nmid_thirty_two_reexport⟩

/-- Ribet lowering `928 → 32` at `p = 13`, `N = 29`.
    Uninhabited. Alias of `ribet_level_lowering_29_to_32`.
    **Not** an axiom. **Not** full Ribet. -/
def Ribet_928_to_32 : Prop :=
  ribet_level_lowering_29_to_32

/-- No newforms at level `32` matching Frey mod `13`.
    Uninhabited. The dimension numeral `dim S₂(Γ₀(32)) = 1`
    lives on `Level32Table`. -/
def no_newforms_at_32_mod13 : Prop :=
  level_32_no_newform

/-- Explicit `a₂₉` mod `13` check on the displayed residual.
    Uninhabited. This file does not compute `a₂₉`. -/
def explicit_a29_mod13 : Prop :=
  Ribet_level_lowering_abstract

theorem LLL_nogo_persists_after_Ribet_Level_Lowering :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check nine_twenty_eight_div_twenty_nine_reexport
#check conductor_display_32_of_29_nmid_AB
#check conductor_display_928_of_29_dvd_AB
#check Ribet_Level_Lowering_29_to_32_inhabited
#check Ribet_928_to_32
#check no_newforms_at_32_mod13
#check explicit_a29_mod13
#print axioms nine_twenty_eight_div_twenty_nine_reexport
#print axioms Ribet_Level_Lowering_29_to_32_inhabited
#print axioms LLL_nogo_persists_after_Ribet_Level_Lowering

end BealMatveevBeal.Ribet_Level_Lowering_29_to_32
