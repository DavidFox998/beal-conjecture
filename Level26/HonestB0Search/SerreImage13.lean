/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/SerreImage13.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Serre/image axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import Level928Table
import Ribet29C_Lowering
import MazurIrreducibility13
import Inertia29Unramified
import LLLTargetB8_C1_lower_bound

/-!
# `32a1` has `j=1728`; Serre image stays `def Prop`

LMFDB `32a1` is `y² = x³+4x`. This file inhabits the Weierstrass
`c₄`, `Δ`, and `j = 1728` (the `j`-invariant of CM by `ℤ[i]`).
`13 ≡ 1 (mod 4)`, so `13` splits in `ℚ(i)`. `|SL₂(𝔽₁₃)| = 2184`
and the claimed split-Cartan normalizer bound `48` satisfy
`48 < 2184`.

None of that is the Galois image of `ρ_{32a1,13}` or Serre’s
open image theorem for the Frey curve. Mathlib 4.12 has no
`Gal(ℚ̄/ℚ) → GL₂(𝔽₁₃)`. `image_32a1_mod13_small`,
`rho_Frey_mod13_large`, and `serre_large_image` stay `def Prop`.
No `axiom serre_large_image_13_axiom`.

`953a174` proved a single-`l` trace sieve cannot kill `(1,6)
(mod 7)`. Closing `B ≥ B0` still needs Mazur irreducibility,
Ribet at Galois `I₂₉`, modularity, and this image comparison.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.SerreImage13

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Ribet29CLowering
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.Inertia29Unramified
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Displayed `32a1 : y² = x³ + 4x` and `j = 1728` -/

def curve32a1Weierstrass : WeierstrassCurve ℤ where
  a₁ := 0
  a₂ := 0
  a₃ := 0
  a₄ := 4
  a₆ := 0

theorem curve32a1_c₄ : curve32a1Weierstrass.c₄ = -192 := by
  simp [curve32a1Weierstrass, WeierstrassCurve.c₄,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄]

theorem curve32a1_Δ : curve32a1Weierstrass.Δ = -4096 := by
  simp [curve32a1Weierstrass, WeierstrassCurve.Δ,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]

def curve32a1_j : ℚ :=
  (curve32a1Weierstrass.c₄ : ℚ) ^ 3 / (curve32a1Weierstrass.Δ : ℚ)

theorem curve32a1_j_eq_1728 : curve32a1_j = 1728 := by
  rw [curve32a1_j, curve32a1_c₄, curve32a1_Δ]
  norm_num

theorem curve32a1_j_den_one : curve32a1_j.den = 1 := by
  rw [curve32a1_j_eq_1728]
  norm_num

/-- `13` splits in `ℚ(i)`. -/
theorem thirteen_eq_one_mod_four : 13 % 4 = 1 := by decide

/-- `|SL₂(𝔽_q)| = q(q−1)(q+1)`. -/
def card_SL2_F13 : ℕ := 13 * 12 * 14

theorem card_SL2_F13_eq : card_SL2_F13 = 2184 := by decide

/-- LMFDB claimed bound for a split-Cartan normalizer image
    (`13Ns` / `13Nn`). Not a Galois theorem. -/
def card_Ns_split_cartan_bound : ℕ := 48

theorem card_Ns_lt_SL2 :
    card_Ns_split_cartan_bound < card_SL2_F13 := by decide

theorem frey_j_ne_1728_of_den_ne_one {A B : ℕ}
    (h : (frey_j A B).den ≠ 1) :
    frey_j A B ≠ 1728 := by
  intro heq
  have h1728 : (1728 : ℚ).den = 1 := by norm_num
  exact h (heq ▸ h1728)

/-- On `29 ∣ C`, Frey `j` is not integral, hence not `1728`.
    This is **not** “Frey has no CM” (that needs CM `j`-invariants
    to be algebraic integers) and **not** an isomorphism of
    Galois representations after Ribet. -/
theorem frey_j_ne_1728_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ 1728 :=
  frey_j_ne_1728_of_den_ne_one
    (frey_j_not_int_of_29_dvd_C hsol hBpos hA hB hC)

theorem frey_j_ne_curve32a1_j_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ curve32a1_j := by
  rw [curve32a1_j_eq_1728]
  exact frey_j_ne_1728_of_29_dvd_C hsol hBpos hA hB hC

/-! ## CM / image / Serre stay `def Prop` (no new axiom) -/

/-- “`32a1` has CM by `ℤ[i]`”. The inhabited fact is
    `curve32a1_j_eq_1728`. Mathlib 4.12 has no `HasCM`. -/
def curve32a1_has_CM_Zi : Prop :=
  curve32a1_j = 1728 → DarmonMerelFrey4413.level_32_no_newform

/-- Galois-image bound `card(im ρ_{32a1,13}) ≤ 48`. Uninhabited.
    Numerics `j=1728`, `13≡1 (mod 4)`, and `48 < 2184` are
    theorems; this is the missing representation statement. -/
def image_32a1_mod13_small : Prop :=
  curve32a1_has_CM_Zi

/-- Frey `ρ_{E,13}` has large image (`SL₂` or `GL₂`) for
    `B ≥ B0`. Uninhabited: Serre open image is not in
    Mathlib 4.12. Single-`l` traces cannot inhabit this
    (`953a174`). -/
def rho_Frey_mod13_large : Prop :=
  MazurIrreducibility13.rho_Frey_mod13_irreducible →
    image_32a1_mod13_small →
      DarmonMerelFrey4413.level_32_no_newform

/-- Serre: non-CM, non-integral `j` ⇒ large image mod `13`.
    **Not** an axiom. -/
def serre_large_image : Prop :=
  MazurIrreducibility13.frey_j_not_integral_of_B_ge_B0 →
    rho_Frey_mod13_large

/-- CM `j`-invariants are algebraic integers, so non-integral
    Frey `j` would exclude CM. Uninhabited. -/
def frey_no_CM_of_nonintegral_j : Prop :=
  ∀ A B : ℕ, (frey_j A B).den ≠ 1 →
    frey_j A B ≠ curve32a1_j

/-- Combined Mazur ∧ Ribet inertia ∧ Serre image. **Not**
    `BealTrueV25.darmon_merel_4413_axiom`. -/
def darmon_merel_4413_full : Prop :=
  MazurIrreducibility13.rho_Frey_mod13_irreducible ∧
    ribet_unramified_at_l_if_13_dvd_vDelta ∧
    serre_large_image ∧
    image_32a1_mod13_small

/-- If Mazur+Ribet+Serre forced an empty level-32 table, there
    would be no `B ≥ B0` solution. Does **not** inhabit the
    hypotheses. -/
def no_sol_ge_B0_of_image_contradiction : Prop :=
  darmon_merel_4413_full →
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

/-- LLL nogo persists: Serre image does not replace C-scaling. -/
theorem LLL_nogo_persists_after_Serre :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

theorem LLL_and_DarmonMerel_separate :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_Serre

#check curve32a1_j
#check curve32a1_j_eq_1728
#check thirteen_eq_one_mod_four
#check card_Ns_lt_SL2
#check frey_j_ne_1728_of_29_dvd_C
#check image_32a1_mod13_small
#check serre_large_image
#check darmon_merel_4413_full
#check no_sol_ge_B0_of_image_contradiction
#check LLL_and_DarmonMerel_separate
#print axioms curve32a1_j_eq_1728
#print axioms frey_j_ne_1728_of_29_dvd_C
#print axioms LLL_nogo_persists_after_Serre

end BealMatveevBeal.SerreImage13
