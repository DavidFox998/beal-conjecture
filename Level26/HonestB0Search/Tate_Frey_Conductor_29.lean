/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Tate_Frey_Conductor_29.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Tate / conductor axiom.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level928Table
import Tate_I29_Inertia
import LLLTargetB8_C1_lower_bound

/-!
# Tate at `29` for the displayed Frey conductor (not Néron `N_E`)

Displayed Frey model `y² = x(x − A⁴)(x + B⁴)` is the existing
`freyWeierstrass`. Mathlib `Δ` on that model is the **positive**
identity

```
Δ  =  16 A⁸ B⁸ (A⁴ + B⁴)²
```

(`freyWeierstrass_Δ`). A literature short-model sign
`Δ = −16 A⁸ B⁸ (A⁴ + B⁴)²` is a different integral model, not
this Weierstrass `Δ`. `v₂₉(Δ) = 26 v₂₉(C)` on a solution with
`29 ∤ AB` is `padic_valuation_Delta_eq_26_vC` from
`Tate_I29_Inertia` (`7244f6d`).

Displayed residual after a putative drop of `29` is `32` when
`29 ∤ AB` and `928` when `29 ∣ AB`. That is
`level_after_ribet_29`, **not** Tate’s algorithm and not Néron
`N_E`. Mathlib 4.12 has no Tate algorithm.

**Uninhabited (`def Prop`).** `Tate_algorithm_at_29`,
`Frey_Neron_conductor`, `Frey_conductor_29_is_Neron`. No Wiles.
No L-function. No new axiom. `main` stays `6247c63`.
-/

namespace BealMatveevBeal.Tate_Frey_Conductor_29

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Tate_I29_Inertia
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Displayed `Δ` (positive `16`, not a signed short model) -/

theorem freyWeierstrass_Δ_reexport (A B : ℕ) :
    (freyWeierstrass A B).Δ =
      (16 : ℤ) * (A : ℤ) ^ 8 * (B : ℤ) ^ 8 *
        ((A : ℤ) ^ 4 + (B : ℤ) ^ 4) ^ 2 :=
  freyWeierstrass_Δ A B

theorem freyDiscNat_formula (A B : ℕ) :
    freyDiscNat A B = 16 * A ^ 8 * B ^ 8 * (A ^ 4 + B ^ 4) ^ 2 :=
  rfl

/-- Small instance of the displayed `Δ` identity. Not Tate. -/
theorem freyWeierstrass_Δ_1_1 :
    (freyWeierstrass 1 1).Δ = 64 := by
  rw [freyWeierstrass_Δ]
  native_decide

theorem freyDiscNat_1_1 : freyDiscNat 1 1 = 64 := by
  native_decide

/-! ## `v₂₉(Δ)` on a solution with `29 ∤ AB` -/

theorem v29_Delta_eq_26_vC_reexport {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    Padic.valuation (freyDisc_in_Qp29 A B) =
      26 * (padicValNat 29 (B + 3) : ℤ) :=
  padic_valuation_Delta_eq_26_vC hsol hBpos hA hB

/-! ## Displayed residual `32` / `928` (not Néron) -/

theorem displayed_residual_32_of_nmid_AB {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    level_after_ribet_29 A B = 32 := by
  simp [level_after_ribet_29, hA, hB]

theorem displayed_residual_928_of_dvd_AB {A B : ℕ}
    (h : 29 ∣ A ∨ 29 ∣ B) :
    level_after_ribet_29 A B = 928 := by
  simp [level_after_ribet_29, h]

theorem nine_twenty_eight_div_twenty_nine : 928 / 29 = 32 := by
  decide

theorem thirty_two_mul_twenty_nine_reexport : (32 : ℕ) * 29 = 928 :=
  thirty_two_mul_twenty_nine

/-- On a gap-3 solution with `29 ∤ AB`, `v₂₉(Δ) ≥ 0` because
    it equals `26 v₂₉(C)` and `v₂₉(C)` is a `ℕ`. Not a
    Kodaira bound and not `-8 ≤ v₂₉ ≤ 26` (that interval is
    a conductor-exponent table, uninhabited). -/
theorem v29_Delta_nonneg {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    0 ≤ Padic.valuation (freyDisc_in_Qp29 A B) := by
  rw [v29_Delta_eq_26_vC_reexport hsol hBpos hA hB]
  exact mul_nonneg (by decide : (0 : ℤ) ≤ 26) (Nat.cast_nonneg _)

theorem thirteen_dvd_v29_Delta_reexport {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    (13 : ℤ) ∣ Padic.valuation (freyDisc_in_Qp29 A B) :=
  thirteen_dvd_padic_valuation_Delta hsol hBpos hA hB hC

/-- Packaged inhabited Tate display. Not Tate’s algorithm.
    Not Néron `N_E`. -/
theorem Tate_Frey_Conductor_29_inhabited :
    (freyWeierstrass 1 1).Δ = 64 ∧
      freyDiscNat 1 1 = 64 ∧
      928 / 29 = 32 ∧
      (32 : ℕ) * 29 = 928 :=
  ⟨freyWeierstrass_Δ_1_1, freyDiscNat_1_1,
    nine_twenty_eight_div_twenty_nine, thirty_two_mul_twenty_nine_reexport⟩

/-! ## Tate’s algorithm / Néron `N_E` stay `def Prop` -/

/-- Tate’s algorithm at `29` only. Uninhabited: Mathlib 4.12 has
    `Padic.valuation` of the displayed `Δ`, not the Kodaira
    symbol / conductor exponent table. **Not** an axiom. -/
def Tate_algorithm_at_29 : Prop :=
  Tate_uniformization

/-- Néron conductor of the displayed Frey curve is `32` or
    `928`. Uninhabited. The numerals `32` / `928` are
    `level_after_ribet_29`, not `N_E`. -/
def Frey_Neron_conductor : Prop :=
  Tate_q

/-- The displayed `29`-split equals Néron `N_E`. Uninhabited. -/
def Frey_conductor_29_is_Neron : Prop :=
  inertia_trivial_mod13_when_13_dvd_v

theorem LLL_nogo_persists_after_Tate_Frey_Conductor :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check freyWeierstrass_Δ_reexport
#check freyWeierstrass_Δ_1_1
#check v29_Delta_eq_26_vC_reexport
#check displayed_residual_32_of_nmid_AB
#check displayed_residual_928_of_dvd_AB
#check nine_twenty_eight_div_twenty_nine
#check v29_Delta_nonneg
#check Tate_Frey_Conductor_29_inhabited
#check Tate_algorithm_at_29
#check Frey_Neron_conductor
#check Frey_conductor_29_is_Neron
#print axioms freyWeierstrass_Δ_1_1
#print axioms Tate_Frey_Conductor_29_inhabited
#print axioms LLL_nogo_persists_after_Tate_Frey_Conductor

end BealMatveevBeal.Tate_Frey_Conductor_29
