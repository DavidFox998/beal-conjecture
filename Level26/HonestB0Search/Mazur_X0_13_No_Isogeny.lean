/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Mazur_X0_13_No_Isogeny.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Mazur / isogeny axiom.
-/
import BealMatveevBealV25B0Search
import Mazur_X0_13_RationalPoints
import Serre_Large_vs_CM_Small
import LLLTargetB8_C1_lower_bound

/-!
# Mazur via `X₀(13)` — genus 0, not `{2 cusps}`

`X₀(13)` is genus `0`, so `X₀(13)(ℚ)` is **infinite** (it is a
`ℙ¹` over `ℚ` once a rational point exists — the cusps). The
pasted claim `X₀(13)(ℚ) = {2 cusps}` is literature-false and
is **not** a theorem here. Displayed cusp count `2` and genus
Nat `0` are numerals, not a modular-curve object.

Mazur’s cyclic-isogeny list **includes** degree `13`, so
“no 13-isogeny exists over `ℚ`” is the wrong statement. The
needed gap is Frey-specific: `ρ_{E,13}` irreducible on the
displayed Frey curve (`mazur_irreducible_13_via_X0_13`,
`1d28dc1`). The Fricke unit scan over units of `ZMod 29`
does not close that gap.

Serre numerics (`e726c51`): `|SL₂(𝔽₁₃)| = 13·12·14 = 2184`,
`13 = 2² + 3²`, split-Cartan `2(12)² = 288`, `288/48 = 6`,
`48 < 2184`. Image `≤ 48` / non-Borel stay `def Prop`.

**Uninhabited (`def Prop`).** `X0_13_Q_infinite`,
`frey_no_rational_13_isogeny`, `Serre_non_Borel_mod13`,
`mazur_no_Frey_13_isogeny`. No unit-group rescan. No rational
cusp analysis beyond `1d28dc1`. No Wiles. No new axiom.
`main` stays `6247c63`.
-/

namespace BealMatveevBeal.Mazur_X0_13_No_Isogeny

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.Mazur_X0_13_RationalPoints
open BealMatveevBeal.Serre_Large_vs_CM_Small
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Displayed genus / cusp numerals (not `X₀(13)(ℚ)`) -/

/-- Displayed genus of `X₀(13)`. Not a modular-curve genus
    theorem. -/
def X0_13_genus_nat : ℕ := 0

theorem X0_13_genus_nat_eq : X0_13_genus_nat = 0 := rfl

/-- Displayed cusp count `{∞, 0}`. Not `X₀(13)(ℚ)`. -/
def X0_13_cusp_count : ℕ := 2

theorem X0_13_cusp_count_eq : X0_13_cusp_count = 2 := rfl

theorem X0_13_genus_zero_and_two_cusps_numerals :
    X0_13_genus_nat = 0 ∧ X0_13_cusp_count = 2 :=
  ⟨rfl, rfl⟩

/-! ## Serre / non-Borel numerals (`e726c51`) -/

theorem card_SL2_F13_numeral : (13 : ℕ) * 12 * 14 = 2184 := by
  decide

theorem thirteen_is_sum_of_two_squares : (2 : ℤ) ^ 2 + 3 ^ 2 = 13 :=
  two_sq_add_three_sq

theorem forty_eight_lt_2184_reexport : 48 < 2184 :=
  forty_eight_lt_2184

theorem two_eighty_eight_div_forty_eight_reexport : 288 / 48 = 6 :=
  two_eighty_eight_div_forty_eight

theorem serre_non_Borel_numerics :
    (13 : ℕ) * 12 * 14 = 2184 ∧ (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      48 < 2184 ∧ 288 / 48 = 6 :=
  ⟨card_SL2_F13_numeral, thirteen_is_sum_of_two_squares,
    forty_eight_lt_2184_reexport, two_eighty_eight_div_forty_eight_reexport⟩

/-- Packaged inhabited Mazur display. Does **not** claim
    `X₀(13)(ℚ) = {2 cusps}` (genus 0 ⇒ infinitely many
    rational points; that paste is literature-false). -/
theorem Mazur_X0_13_No_Isogeny_inhabited :
    X0_13_genus_nat = 0 ∧ X0_13_cusp_count = 2 ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧ 48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧ 288 / 48 = 6 :=
  ⟨X0_13_genus_nat_eq, X0_13_cusp_count_eq, card_SL2_F13_numeral,
    forty_eight_lt_2184_reexport, thirteen_is_sum_of_two_squares,
    two_eighty_eight_div_forty_eight_reexport⟩

/-! ## Galois / Mazur stay `def Prop` -/

/-- `X₀(13)(ℚ)` is infinite because the curve is genus `0`.
    Uninhabited: no modular-curve object in Mathlib 4.12.
    The pasted `{2 cusps}` claim is literature-false and is
    **not** this name. -/
def X0_13_Q_infinite : Prop :=
  no_t_gives_Frey_j_when_29_dvd_C

/-- Frey has no rational cyclic 13-isogeny
    (`ρ_{E,13}` irreducible). Uninhabited. Not “no curve over
    `ℚ` has a 13-isogeny” (Mazur’s list includes `13`). -/
def frey_no_rational_13_isogeny : Prop :=
  mazur_irreducible_13_via_X0_13

/-- Residual image is non-Borel (`card ≤ 48 < 2184`).
    Uninhabited. The numerals `48 < 2184` are theorems. -/
def Serre_non_Borel_mod13 : Prop :=
  card_32a1_le_48

/-- Alias of the existing Mazur-via-`X₀(13)` gap. Uninhabited. -/
def mazur_no_Frey_13_isogeny : Prop :=
  mazur_irreducible_13_theorem

theorem LLL_nogo_persists_after_Mazur_X0_13_No_Isogeny :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check X0_13_genus_nat_eq
#check X0_13_cusp_count_eq
#check serre_non_Borel_numerics
#check Mazur_X0_13_No_Isogeny_inhabited
#check X0_13_Q_infinite
#check frey_no_rational_13_isogeny
#check Serre_non_Borel_mod13
#check mazur_no_Frey_13_isogeny
#print axioms serre_non_Borel_numerics
#print axioms Mazur_X0_13_No_Isogeny_inhabited
#print axioms LLL_nogo_persists_after_Mazur_X0_13_No_Isogeny

end BealMatveevBeal.Mazur_X0_13_No_Isogeny
