/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Serre_Large_vs_CM_Small.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Serre/image axiom.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import SerreImage13
import SerreImageFull
import LLLTargetB8_C1_lower_bound

/-!
# Gap 4: Serre large image vs `32a1` CM small

Inhabited: `32a1` is `y² = x³ + 4x` with `j=1728` (not
`y² = x³ − x`, which is a different integral model of the
same `j`); `|SL₂(𝔽₁₃)| = 13·12·14 = 2184`; `2² + 3² = 13`
so `13` is a sum of two squares (`13 ≡ 1 (mod 4)`);
split-Cartan normalizer count `2(13−1)² = 288`; `288/48 = 6`;
`48 < 2184` and `48 ≠ 2184`.

`card(im ρ_{32a1,13}) ≤ 48`, CM class-field Cartan containment,
LMFDB image label `13.48.0.1` as a Galois Finset, and
`ρ_Frey ≅ ρ_{32a1}` stay `def Prop`. `48 < 2184` is not
`False` by itself: that needs the isomorphism after Ribet
(Gap 3). No `sorry`, no `GaloisRepMod13`, no `CM_disc`
object, no `native_decide` of `Fintype.card SL₂(𝔽₁₃)`
(Mathlib has the group, not a ready-made card instance here;
the formula `q(q²−1)` is the inhabitant).

Does **not** mint v25. 0 sorry. 0 new axioms.
-/

namespace BealMatveevBeal.Serre_Large_vs_CM_Small

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.SerreImage13
open BealMatveevBeal.SerreImageFull
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

theorem card_SL2_F13_eq_2184 : card_SL2_F13 = 2184 :=
  SerreImageFull.card_SL2_F13_eq_2184

theorem forty_eight_lt_2184 : 48 < 2184 :=
  SerreImageFull.forty_eight_lt_2184

theorem E32a1_j_eq_1728 : curve32a1_j = 1728 :=
  SerreImageFull.E32a1_j_eq_1728

/-! ## `ℤ[i]` arithmetic (not `End(32a1) ≅ ℤ[i]`) -/

/-- Discriminant of `ℤ[i]`. Not a Mathlib `HasCM` statement. -/
def disc_Zi : ℤ := -4

theorem disc_Zi_eq : disc_Zi = -4 := rfl

/-- `13 = 2² + 3²`, so `13` splits in `ℚ(i)`. -/
theorem thirteen_splits_in_Zi : ∃ a b : ℤ, a ^ 2 + b ^ 2 = 13 :=
  ⟨2, 3, by decide⟩

theorem two_sq_add_three_sq : (2 : ℤ) ^ 2 + 3 ^ 2 = 13 := by
  decide

theorem thirteen_eq_one_mod_four_reexport : 13 % 4 = 1 :=
  thirteen_eq_one_mod_four

/-- `|N_{GL₂}(C_s)| = 2(p−1)²` at `p = 13`. Numeral, not a
    subgroup of `GL₂(𝔽₁₃)`. -/
theorem card_normalizer_split_Cartan_13 :
    2 * (13 - 1) ^ 2 = 288 := by
  decide

/-- LMFDB claimed image order `48` sits in `288` with index `6`.
    Numeral; not units of `ℚ(i)` acting on Galois image. -/
theorem two_eighty_eight_div_forty_eight : 288 / 48 = 6 := by
  decide

theorem forty_eight_mul_six : 48 * 6 = 288 := by
  decide

theorem forty_eight_lt_288 : 48 < 288 := by
  decide

theorem forty_eight_ne_2184 : (48 : ℕ) ≠ 2184 :=
  Nat.ne_of_lt forty_eight_lt_2184

theorem card_le_48_ne_2184 {n : ℕ} (hn : n ≤ 48) : n ≠ 2184 :=
  Nat.ne_of_lt (hn.trans_lt forty_eight_lt_2184)

theorem forty_eight_lt_card_SL2 : 48 < card_SL2_F13 := by
  rw [card_SL2_F13_eq_2184]
  exact forty_eight_lt_2184

/-! ## `y² = x³ − x` has the same `j`, but is not LMFDB `32.a1` -/

/-- Short model `y² = x³ − x` (often Cremona `32a3`). Same `j`
    as `32a1` (`y² = x³ + 4x`), different `Δ`. -/
def curve_x3_minus_x : WeierstrassCurve ℤ where
  a₁ := 0
  a₂ := 0
  a₃ := 0
  a₄ := -1
  a₆ := 0

theorem curve_x3_minus_x_c₄ : curve_x3_minus_x.c₄ = 48 := by
  simp [curve_x3_minus_x, WeierstrassCurve.c₄,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄]

theorem curve_x3_minus_x_Δ : curve_x3_minus_x.Δ = 64 := by
  simp [curve_x3_minus_x, WeierstrassCurve.Δ,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]

theorem curve_x3_minus_x_j_eq_1728 :
    (curve_x3_minus_x.c₄ : ℚ) ^ 3 / (curve_x3_minus_x.Δ : ℚ) = 1728 := by
  rw [curve_x3_minus_x_c₄, curve_x3_minus_x_Δ]
  norm_num

theorem curve_x3_minus_x_j_eq_32a1 :
    (curve_x3_minus_x.c₄ : ℚ) ^ 3 / (curve_x3_minus_x.Δ : ℚ) =
      curve32a1_j := by
  rw [curve_x3_minus_x_j_eq_1728, E32a1_j_eq_1728]

theorem curve_x3_minus_x_Delta_ne_32a1 :
    curve_x3_minus_x.Δ ≠ curve32a1Weierstrass.Δ := by
  rw [curve_x3_minus_x_Δ, curve32a1_Δ]
  decide

/-- `card(im ρ_{32a1,13}) ≤ 48`. Uninhabited. Numerics
    `j=1728` and `48 < 2184` are theorems. -/
def card_32a1_le_48 : Prop :=
  image_32a1_mod13_small_full

/-- Pasted CM-route name. Same uninhabited image bound. -/
def card_image_32a1_le_48_via_CM : Prop :=
  card_32a1_le_48

/-- Serre 1972 open image for Frey. Uninhabited. **Not** an axiom. -/
def serre_large_Frey : Prop :=
  serre_large_image_13_full

/-- Image contradiction after a putative `ρ_Frey ≅ ρ_{32a1}`.
    Uninhabited: `omega` on `48 < 2184` does not produce
    `False` without the Galois isomorphism. -/
def contradiction_48_lt_2184 : Prop :=
  card_32a1_le_48 → serre_large_Frey →
    DarmonMerelFrey4413.level_32_no_newform

/-- Putative `ρ_Frey ≅ ρ_{32a1}` after Wiles+Ribet. Uninhabited.
    There is no `GaloisRepMod13` in Mathlib 4.12. -/
def rho_Frey_iso_rho_32a1_needs_Ribet : Prop :=
  contradiction_48_lt_2184

theorem LLL_and_DarmonMerel_separate :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check card_SL2_F13_eq_2184
#check forty_eight_lt_2184
#check thirteen_splits_in_Zi
#check card_normalizer_split_Cartan_13
#check forty_eight_ne_2184
#check curve_x3_minus_x_j_eq_1728
#check card_32a1_le_48
#check card_image_32a1_le_48_via_CM
#check serre_large_Frey
#check contradiction_48_lt_2184
#check rho_Frey_iso_rho_32a1_needs_Ribet
#print axioms forty_eight_lt_2184
#print axioms thirteen_splits_in_Zi
#print axioms card_normalizer_split_Cartan_13
#print axioms curve_x3_minus_x_j_eq_1728
#print axioms LLL_and_DarmonMerel_separate

end BealMatveevBeal.Serre_Large_vs_CM_Small
