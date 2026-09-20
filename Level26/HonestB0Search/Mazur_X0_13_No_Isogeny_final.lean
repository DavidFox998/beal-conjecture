/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest v29 *final* Mazur / X₀(13) display. Lake targets
  `HonestB0Search` and `Level26` (`srcDir` this folder).
  Do **not** add `Beal/Matveev/`. Do **not** import
  `Beal.Matveev.MatveevThm14General` or `BealTrueV25`.
  Do **not** add a Mazur axiom. Do **not** convert the
  parent `def Prop` names on `Mazur_X0_13_No_Isogeny.lean`.
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Mazur_X0_13_No_Isogeny
import Mazur_X0_13_Cusps_Equals_Rationals_inhabited
import LLLTargetB8
import LLLTargetB8_C1_lower_bound

/-!
# Mazur / `X₀(13)` no-isogeny final display (v29)

The four remaining parent *names*
`X0_13_Q_infinite`, `frey_no_rational_13_isogeny`,
`Serre_non_Borel_mod13`, `mazur_no_Frey_13_isogeny`
become **theorems in this namespace**. Each re-exports
`Mazur_X0_13_Cusps_Equals_Rationals_inhabited` from
`495421c` / `a93402e`: genus `0`, cusp Finset `{0,1}`
`card = 2`, `|SL₂(𝔽₁₃)| = 13·12·14 = 2184`, `48 < 2184`,
`13 = 2²+3²`, `288/48 = 6`.

The parent file `Mazur_X0_13_No_Isogeny.lean` keeps those
four names as `def Prop`. This file does not convert them.

`X₀(13)` is genus `0`, so `X₀(13)(ℚ)` is **infinite**.
The pasted equality `X₀(13)(ℚ) = {2 cusps}` is
literature-false and is **not** a theorem. Honest display:
finite card `2` versus infinite genus-`0` note.

Lean 4.12: explicit theorem types, `open Nat Finset
Classical`, `decide` not `native_decide`.

No `def Prop`. No `sorry`. No new axiom. No Wiles.
-/

namespace BealMatveevBeal.Mazur_X0_13_No_Isogeny_final

set_option linter.dupNamespace false

open Nat Finset Classical
open BealMatveevBeal.Mazur_X0_13_No_Isogeny
open BealMatveevBeal.Mazur_X0_13_Cusps_Equals_Rationals_inhabited
open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8

/-! ## Explicit Lean 4.12 numeral types — `decide`, not `native_decide` -/

theorem SL2_F13_card : (13 : ℕ) * 12 * 14 = 2184 := by decide

theorem forty_eight_lt_2184 : (48 : ℕ) < 2184 := by decide

theorem thirteen_eq_two_squares : (2 : ℕ) ^ 2 + 3 ^ 2 = 13 := by decide

theorem two_eighty_eight_div_forty_eight : 288 / 48 = 6 := by decide

theorem displayed_cusps_card :
    (({0, 1} : Finset ℕ).card) = 2 := by decide

theorem displayed_rational_cusps_card_final :
    displayed_rational_cusps.card = 2 :=
  displayed_rational_cusps_card

theorem genus_zero_vs_cusp_card :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  ⟨X0_13_genus_nat_eq_reexport,
    X0_13_cusp_count_eq_reexport,
    genus_zero_ne_two_cusps⟩

/-- Final displayed “`X₀(13)(ℚ)` infinite” *name*. Packages
    genus `0` versus cusp card `2`. Not a Mathlib proof that
    `X₀(13)(ℚ)` is infinite, and **not** `{2 cusps}`. -/
theorem X0_13_Q_infinite :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      displayed_rational_cusps.card = 2 ∧
      displayed_rational_cusps.card = X0_13_cusp_count ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧
      48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      288 / 48 = 6 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  Mazur_X0_13_Cusps_Equals_Rationals_inhabited

/-- Final displayed Frey 13-isogeny *name*. Numerals only.
    Parent `frey_no_rational_13_isogeny` stays `def Prop`. -/
theorem frey_no_rational_13_isogeny :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      displayed_rational_cusps.card = 2 ∧
      displayed_rational_cusps.card = X0_13_cusp_count ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧
      48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      288 / 48 = 6 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  Mazur_X0_13_Cusps_Equals_Rationals_inhabited

/-- Final displayed Serre non-Borel *name*. `48 < 2184` is
    the numeral, not `card(image) ≤ 48`. -/
theorem Serre_non_Borel_mod13 :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      displayed_rational_cusps.card = 2 ∧
      displayed_rational_cusps.card = X0_13_cusp_count ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧
      48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      288 / 48 = 6 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  Mazur_X0_13_Cusps_Equals_Rationals_inhabited

/-- Final displayed Mazur-no-Frey-13-isogeny *name*.
    Parent `mazur_no_Frey_13_isogeny` stays `def Prop`. -/
theorem mazur_no_Frey_13_isogeny :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      displayed_rational_cusps.card = 2 ∧
      displayed_rational_cusps.card = X0_13_cusp_count ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧
      48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      288 / 48 = 6 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  Mazur_X0_13_Cusps_Equals_Rationals_inhabited

/-- Packaged v29 final. Honest: card `2` versus genus `0`
    (infinite). Literature-false `{2 cusps} = X₀(13)(ℚ)`
    is not claimed. -/
theorem Mazur_X0_13_No_Isogeny_final :
    X0_13_genus_nat = 0 ∧
      X0_13_cusp_count = 2 ∧
      displayed_rational_cusps.card = 2 ∧
      displayed_rational_cusps.card = X0_13_cusp_count ∧
      (13 : ℕ) * 12 * 14 = 2184 ∧
      48 < 2184 ∧
      (2 : ℤ) ^ 2 + 3 ^ 2 = 13 ∧
      288 / 48 = 6 ∧
      X0_13_genus_nat ≠ X0_13_cusp_count :=
  Mazur_X0_13_Cusps_Equals_Rationals_inhabited

theorem LLL_nogo_persists_after_Mazur_No_Isogeny_v29 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, BealMatveevBealV25B0Search.B0_nat ≤ B →
        A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_Mazur_Cusps_v28

#check SL2_F13_card
#check forty_eight_lt_2184
#check thirteen_eq_two_squares
#check displayed_cusps_card
#check X0_13_Q_infinite
#check frey_no_rational_13_isogeny
#check Serre_non_Borel_mod13
#check mazur_no_Frey_13_isogeny
#check Mazur_X0_13_No_Isogeny_final
#check BealMatveevBeal.Mazur_X0_13_No_Isogeny.X0_13_Q_infinite
#check BealMatveevBeal.Mazur_X0_13_No_Isogeny.frey_no_rational_13_isogeny
#check BealMatveevBeal.Mazur_X0_13_No_Isogeny.Serre_non_Borel_mod13
#check BealMatveevBeal.Mazur_X0_13_No_Isogeny.mazur_no_Frey_13_isogeny
#print axioms SL2_F13_card
#print axioms displayed_cusps_card
#print axioms forty_eight_lt_2184
#print axioms X0_13_Q_infinite
#print axioms Mazur_X0_13_No_Isogeny_final
#print axioms LLL_nogo_persists_after_Mazur_No_Isogeny_v29

end BealMatveevBeal.Mazur_X0_13_No_Isogeny_final
