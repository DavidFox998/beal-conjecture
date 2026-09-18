/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/SerreImageFull.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add modularity / Ribet / Serre
  axioms: the only Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import MazurIrreducibilityFull
import TateGalois
import SerreImage13
import LLLTargetB8_C1_lower_bound

/-!
# Gaps 3–4 of 4: modularity + Ribet to 32, Serre large vs `32a1`

Closing `B ≥ B0` is four theorems, not a point-count sieve.
`953a174` proved that `l = 7,11,23` cannot kill the whole
`(1,6) (mod 7)` class.

**Inhabited (`9030063`):** `32a1` has `c₄=−192`, `Δ=−4096`,
`j=1728`; `|SL₂(𝔽₁₃)|=2184`; `48 < 2184`; Frey `j ≠ 1728`
when `29 ∣ C`.

**Not in Mathlib 4.12 (stay `def Prop`):** Wiles modularity of
the semistable Frey curve; Ribet lowering `29·32 → 32` after
`I₂₉` is unramified mod `13`; Serre 1972 open image
(`im ρ_{E,13}` is `SL₂` or `GL₂` for large non-CM non-integral
`j`); Galois image of CM `32a1` of order `≤ 48`. No
`axiom modularity_Frey_semistable`, no
`axiom ribet_level_32_of_13_dvd`, no
`axiom serre_large_image_13`. Those names stay on this B0Search
target as `def Prop`, not on default `BealTrueV25`.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.SerreImageFull

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.MazurIrreducibilityFull
open BealMatveevBeal.TateGalois
open BealMatveevBeal.SerreImage13
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Re-export: `32a1` Weierstrass and `48 < 2184` -/

theorem E32a1_c4_eq : curve32a1Weierstrass.c₄ = -192 :=
  SerreImage13.curve32a1_c₄

theorem E32a1_Delta_eq : curve32a1Weierstrass.Δ = -4096 :=
  SerreImage13.curve32a1_Δ

theorem E32a1_j_eq_1728 : curve32a1_j = 1728 :=
  SerreImage13.curve32a1_j_eq_1728

theorem card_SL2_F13_eq_2184 : card_SL2_F13 = 2184 :=
  SerreImage13.card_SL2_F13_eq

theorem forty_eight_lt_2184 : 48 < 2184 := by decide

theorem card_Ns_lt_SL2_reexport :
    card_Ns_split_cartan_bound < card_SL2_F13 :=
  card_Ns_lt_SL2

/-! ## Gap 3: modularity + Ribet to level 32 (`def Prop`) -/

/-- Wiles: Frey is modular (semistable at odd primes). Uninhabited.
    Alias of displayed `modularity_Frey_gap3`. **Not** an axiom
    on `BealTrueV25`. -/
def modularity_Frey_semistable : Prop :=
  modularity_Frey_gap3

/-- Ribet: unramified at `29` mod `13` ⇒ residual level `32`.
    Uninhabited. **Not** an axiom. -/
def ribet_level_32_of_unramified : Prop :=
  ribet_unramified_at_29_full → ribet_lowers_Frey_to_level_32

/-- Gap 3 packaged. -/
def modularity_and_ribet_32 : Prop :=
  modularity_Frey_semistable ∧ ribet_level_32_of_unramified

/-! ## Gap 4: Serre large vs `32a1` small (`def Prop`) -/

/-- `card(im ρ_{32a1,13}) ≤ 48`. Uninhabited. Numerics
    `j=1728` and `48 < 2184` are theorems. -/
def image_32a1_mod13_small_full : Prop :=
  image_32a1_mod13_small

/-- Serre 1972: no CM and `j` not integral ⇒ image `SL₂` or
    `GL₂` mod `13`. Uninhabited. **Not** an axiom. -/
def serre_large_image_13_full : Prop :=
  serre_large_image

/-- Gap 4 packaged: large Frey image contradicts small CM image
    after a putative isomorphism `ρ_Frey ≅ ρ_{32a1}` at level
    `32`. -/
def serre_vs_32a1_CM : Prop :=
  image_32a1_mod13_small_full ∧ serre_large_image_13_full →
    DarmonMerelFrey4413.level_32_no_newform

/-! ## Four gaps together. **Not** `darmon_merel_4413_axiom`. -/

def darmon_merel_4413_four_gaps : Prop :=
  rho_Frey_mod13_irreducible_full ∧
    ribet_unramified_at_29_full ∧
    modularity_and_ribet_32 ∧
    serre_vs_32a1_CM

/-- If the four gaps held and the level-32 table were empty,
    there would be no `B ≥ B0` solution. Does **not** inhabit
    the gaps. Trace slices `a₇=−4`, `a₁₁=−4`, `a₂₃=8` are not
    this close (`953a174`). -/
def no_sol_ge_B0_of_four_gaps : Prop :=
  darmon_merel_4413_four_gaps →
    ∀ B A : ℕ, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13

theorem no_sol_ge_B0_of_ribet_and_empty_table
    (h_ribet : ribet_lowers_Frey_to_level_32)
    (h_empty : DarmonMerelFrey4413.level_32_no_newform)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_ge_B0_of_ribet_and_level_32_table h_ribet h_empty hB hsol

/-- Good reduction at `29` still mismatches `a₂₉ = −10`. -/
theorem no_match_32a1_of_good_red_29_reexport
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : ¬ 29 ∣ B + 3) :
    frey_ap 29 (A % 29) (B % 29) ≠ (-10 : ℤ) :=
  no_match_32a1_of_good_red_29 hsol hA hB hC

theorem LLL_nogo_persists_after_SerreFull :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

theorem LLL_and_DarmonMerel_separate :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_SerreFull

#check E32a1_c4_eq
#check E32a1_j_eq_1728
#check card_SL2_F13_eq_2184
#check forty_eight_lt_2184
#check modularity_Frey_semistable
#check ribet_level_32_of_unramified
#check image_32a1_mod13_small_full
#check serre_large_image_13_full
#check darmon_merel_4413_four_gaps
#check no_sol_ge_B0_of_four_gaps
#check LLL_and_DarmonMerel_separate
#print axioms E32a1_j_eq_1728
#print axioms forty_eight_lt_2184
#print axioms LLL_nogo_persists_after_SerreFull

end BealMatveevBeal.SerreImageFull
