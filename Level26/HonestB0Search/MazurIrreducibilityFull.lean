/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/MazurIrreducibilityFull.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Mazur axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import MazurIrreducibility13
import SerreImage13
import LLLTargetB8_C1_lower_bound

/-!
# Gap 1 of 4: Mazur irreducibility of `ρ_{Frey,13}`

Closing `B ≥ B0` is four theorems, not a point-count sieve.
`953a174` proved that `l = 7,11,23` cannot kill the whole
`(1,6) (mod 7)` class.

**Inhabited (`9030063`):** `29 ∣ j.den` when `29 ∣ C` and
`29 ∤ AB`; `j ≠ 0` and `j ≠ 1728` whenever `j.den ≠ 1`.

**Not in Mathlib 4.12 (stay `def Prop`):** `HasCM`, Mazur 1978
(`ρ_{E,p}` irreducible for `p ≥ 11` if no CM and `j` not
integral, finite exceptional `j`-list), Bilu–Parent–Rebolledo
2013 for `p = 13`. No `axiom mazur_irreducible_13_of_nonintegral_j`.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.MazurIrreducibilityFull

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.SerreImage13
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Re-export: non-integral `j` and `j ≠ 0, 1728` -/

theorem twenty_nine_dvd_frey_j_den_reexport {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    29 ∣ (frey_j A B).den :=
  twenty_nine_dvd_frey_j_den hsol hBpos hA hB hC

theorem frey_j_not_int_of_29_dvd_C_reexport {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    (frey_j A B).den ≠ 1 :=
  frey_j_not_int_of_29_dvd_C hsol hBpos hA hB hC

theorem frey_j_ne_zero_of_den_ne_one {A B : ℕ}
    (h : (frey_j A B).den ≠ 1) :
    frey_j A B ≠ 0 := by
  intro heq
  have h0 : (0 : ℚ).den = 1 := by norm_num
  exact h (heq ▸ h0)

theorem frey_j_ne_zero_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ 0 :=
  frey_j_ne_zero_of_den_ne_one
    (frey_j_not_int_of_29_dvd_C hsol hBpos hA hB hC)

theorem frey_j_ne_1728_of_29_dvd_C_reexport {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ 1728 :=
  frey_j_ne_1728_of_29_dvd_C hsol hBpos hA hB hC

/-! ## Gap 1 stays `def Prop` (no Mazur 1978 / no `HasCM`) -/

/-- Global `B ≥ B0` non-integrality of Frey `j`. Uninhabited
    (re-export of the displayed Prop). -/
def frey_j_not_integral_of_B_ge_B0_full : Prop :=
  MazurIrreducibility13.frey_j_not_integral_of_B_ge_B0

/-- `¬ HasCM (Frey A B)` for `B ≥ B0`. Uninhabited: needs CM
    `j`-invariants to be algebraic integers, not just
    `j ≠ 0, 1728`. The inhabited facts are
    `frey_j_ne_zero_of_29_dvd_C` and
    `frey_j_ne_1728_of_29_dvd_C_reexport`. -/
def frey_not_CM_of_B_ge_B0 : Prop :=
  MazurIrreducibility13.frey_j_not_integral_of_B_ge_B0

/-- Mazur 1978 / BPR 2013: no CM and `j` not integral ⇒
    `ρ_{E,13}` irreducible. Not in Mathlib 4.12. **Not** an
    axiom. -/
def mazur_irreducible_13_of_nonintegral_j : Prop :=
  frey_not_CM_of_B_ge_B0 →
    MazurIrreducibility13.rho_Frey_mod13_irreducible

/-- Gap 1 packaged. Alias of displayed Mazur Prop. -/
def rho_Frey_mod13_irreducible_full : Prop :=
  MazurIrreducibility13.rho_Frey_mod13_irreducible

theorem LLL_nogo_persists_after_MazurFull :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check twenty_nine_dvd_frey_j_den_reexport
#check frey_j_ne_zero_of_29_dvd_C
#check frey_j_ne_1728_of_29_dvd_C_reexport
#check frey_not_CM_of_B_ge_B0
#check mazur_irreducible_13_of_nonintegral_j
#check rho_Frey_mod13_irreducible_full
#print axioms frey_j_ne_zero_of_29_dvd_C
#print axioms LLL_nogo_persists_after_MazurFull

end BealMatveevBeal.MazurIrreducibilityFull
