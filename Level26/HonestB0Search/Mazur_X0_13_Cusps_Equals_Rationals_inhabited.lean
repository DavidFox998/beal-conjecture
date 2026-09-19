/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest Mazur / X₀(13) *display* for v28. Separate Lake
  targets `HonestB0Search` and `Level26` (`srcDir` this
  folder). Do **not** add `Beal/Matveev/`. Do **not**
  import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Mazur axiom.
-/
import Mazur_X0_13_No_Isogeny
import LLLTargetB8_C1_lower_bound

/-!
# Displayed cusps of `X₀(13)` (v28)

Inhabits the **numeral / Finset** side of the Mazur
`X₀(13)` display from `Mazur_X0_13_No_Isogeny_inhabited`
(`146d463` / `51bba93`):

* genus Nat `0`
* displayed cusp count `2` (`{0, ∞}` labels)
* `|SL₂(𝔽₁₃)| = 13·12·14 = 2184`
* `48 < 2184`
* `13 = 2²+3²`, `288/48 = 6`

`X₀(13)` is genus `0`, so `X₀(13)(ℚ)` is **infinite**.
The pasted equality `X₀(13)(ℚ) = {2 cusps}` is
literature-false and is **not** a theorem. The name
`Mazur_X0_13_Cusps_Equals_Rationals_inhabited` packages
the displayed cusp Finset (cardinality `2`) against the
displayed cusp-count numeral. It does not identify the
rational points of a modular curve.

Parent names `X0_13_Q_infinite`,
`frey_no_rational_13_isogeny`, `Serre_non_Borel_mod13`,
`mazur_no_Frey_13_isogeny` stay `def Prop`.

No `def Prop` in this file. No `sorry`. No new axiom.
No Wiles.
-/

set_option linter.dupNamespace false

namespace BealMatveevBeal.Mazur_X0_13_Cusps_Equals_Rationals_inhabited

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.Mazur_X0_13_No_Isogeny
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Re-export parent numerals (`146d463`) -/

theorem X0_13_genus_nat_eq_reexport : X0_13_genus_nat = 0 :=
  X0_13_genus_nat_eq

theorem X0_13_cusp_count_eq_reexport : X0_13_cusp_count = 2 :=
  X0_13_cusp_count_eq

theorem card_SL2_F13_numeral_reexport : (13 : ℕ) * 12 * 14 = 2184 :=
  card_SL2_F13_numeral

theorem forty_eight_lt_2184_reexport : 48 < 2184 :=
  BealMatveevBeal.Mazur_X0_13_No_Isogeny.forty_eight_lt_2184_reexport

theorem thirteen_is_sum_of_two_squares_reexport :
    (2 : ℤ) ^ 2 + 3 ^ 2 = 13 :=
  thirteen_is_sum_of_two_squares

theorem two_eighty_eight_div_forty_eight_reexport : 288 / 48 = 6 :=
  BealMatveevBeal.Mazur_X0_13_No_Isogeny.two_eighty_eight_div_forty_eight_reexport

/-! ## Displayed rational *cusps* (not `X₀(13)(ℚ)`) -/

/-- Labels `{0, ∞}` of the two displayed cusps of `X₀(13)`.
    `0` and `1` stand for those two labels. Not the set of
    rational points. -/
def displayed_rational_cusps : Finset ℕ :=
  {0, 1}

theorem displayed_rational_cusps_eq :
    displayed_rational_cusps = ({0, 1} : Finset ℕ) :=
  rfl

theorem displayed_rational_cusps_card :
    displayed_rational_cusps.card = 2 := by
  decide

/-- The displayed cusp Finset has the displayed cusp-count
    numeral. This is the inhabited “cusps = rationals”
    *display*: cardinality `2`, not `X₀(13)(ℚ)`. -/
theorem displayed_cusps_card_eq_cusp_count :
    displayed_rational_cusps.card = X0_13_cusp_count := by
  rw [displayed_rational_cusps_card, X0_13_cusp_count_eq]

theorem genus_zero_ne_two_cusps :
    X0_13_genus_nat ≠ X0_13_cusp_count := by
  rw [X0_13_genus_nat_eq, X0_13_cusp_count_eq]
  decide

/-! ## Packaged v28 display -/

/-- Numerals and the 2-element cusp Finset from
    `Mazur_X0_13_No_Isogeny_inhabited`. Does **not** prove
    `X₀(13)(ℚ) = {2 cusps}` (genus 0 ⇒ infinitely many
    rational points; that paste is literature-false). -/
theorem Mazur_X0_13_Cusps_Equals_Rationals_inhabited :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      displayed_rational_cusps.card = 2 ∧
      displayed_rational_cusps.card = X0_13_cusp_count ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧
      48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      288 / 48 = 6 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  ⟨X0_13_genus_nat_eq_reexport,
    X0_13_cusp_count_eq_reexport,
    displayed_rational_cusps_card,
    displayed_cusps_card_eq_cusp_count,
    card_SL2_F13_numeral_reexport,
    forty_eight_lt_2184_reexport,
    thirteen_is_sum_of_two_squares_reexport,
    two_eighty_eight_div_forty_eight_reexport,
    genus_zero_ne_two_cusps⟩

theorem LLL_nogo_persists_after_Mazur_Cusps_v28 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, BealMatveevBealV25B0Search.B0_nat ≤ B →
        A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check displayed_rational_cusps_card
#check displayed_cusps_card_eq_cusp_count
#check Mazur_X0_13_Cusps_Equals_Rationals_inhabited
#print axioms Mazur_X0_13_Cusps_Equals_Rationals_inhabited
#print axioms displayed_rational_cusps_card
#print axioms LLL_nogo_persists_after_Mazur_Cusps_v28

end BealMatveevBeal.Mazur_X0_13_Cusps_Equals_Rationals_inhabited
