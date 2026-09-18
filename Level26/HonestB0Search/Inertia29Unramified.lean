/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Inertia29Unramified.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Ribet/inertia axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import Level928Table
import Ribet29C_Lowering
import MazurIrreducibility13
import LLLTargetB8_C1_lower_bound

/-!
# Tate numerics at `29 ∣ C` and the missing `I₂₉` inertia

`MazurIrreducibility13` already has `29 ∤ c₄` when `29 ∤ AB`
(`c4_form_ne_zero_mod29` over `𝔽₂₉`, not a stub
`x⁸+14x⁴+1`). This file records the Tate **input**

* `v₂₉(c₄) = 0`
* `v₂₉(Δ) = 26 v₂₉(C) ≥ 26` and `13 ∣ v₂₉(Δ)`

and keeps Tate’s Kodaira symbol `I_{26k}` and Ribet’s
“`13 ∣ v_ℓ(Δ)` + multiplicative reduction ⇒ `ρ_{E,13}`
unramified at `ℓ`” as `def Prop`. Mathlib 4.12 has no Galois
inertia group and no Tate curve.

`953a174` showed a single-prime trace cannot kill `(1,6)
(mod 7)`. Inertia at `I₂₉` is the next missing half of a
Ribet lowering; Serre image is the other half
(`SerreImage13`).

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Inertia29Unramified

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Ribet29CLowering
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Displayed Tate numerics (`v(c₄)=0`, `v(Δ)=26k`) -/

/-- Silverman-style numerical input for a model that is already
    minimal at `29` (`v(c₄)=0` blocks a `u`-scaling). Not
    Tate’s algorithm. -/
def displayed_minimal_at_29 (A B : ℕ) : Prop :=
  Nat.Prime 29 ∧ ¬ 29 ∣ A ∧ ¬ 29 ∣ B ∧ 29 ∣ B + 3 ∧
    ¬ (29 : ℤ) ∣ frey_c4 A B ∧ 29 ∣ freyDiscNat A B

theorem c4_not_divisible_by_29_when_29_nmid_AB {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    ¬ (29 : ℤ) ∣ frey_c4 A B :=
  not_twenty_nine_dvd_c4 hA hB

theorem v29_c4_eq_0 {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValInt 29 (frey_c4 A B) = 0 := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  exact padicValInt.eq_zero_of_not_dvd (not_twenty_nine_dvd_c4 hA hB)

theorem tate_numerics_v_c4_zero_v_Delta_pos {A B : ℕ}
    (hApos : A ≠ 0) (hBpos : B ≠ 0)
    (h : displayed_minimal_at_29 A B) :
    padicValInt 29 (frey_c4 A B) = 0 ∧
      0 < padicValNat 29 (freyDiscNat A B) := by
  rcases h with ⟨hp, hA, hB, _, _, hΔ⟩
  haveI : Fact (Nat.Prime 29) := ⟨hp⟩
  refine ⟨v29_c4_eq_0 hA hB, ?_⟩
  have hpos : freyDiscNat A B ≠ 0 := (freyDiscNat_pos hApos hBpos).ne'
  have hval : padicValNat 29 (freyDiscNat A B) ≠ 0 :=
    (dvd_iff_padicValNat_ne_zero hpos).mp hΔ
  exact Nat.pos_of_ne_zero hval

theorem twenty_nine_dvd_Delta_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    29 ∣ freyDiscNat A B := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hge := (thirteen_dvd_v29_Delta_of_only_C hsol hBpos hA hB hC).2
  have hpos : freyDiscNat A B ≠ 0 := (freyDiscNat_pos hApos hBne).ne'
  have hval : padicValNat 29 (freyDiscNat A B) ≠ 0 :=
    Nat.one_le_iff_ne_zero.mp (le_trans (by decide : (1 : ℕ) ≤ 26) hge)
  exact (dvd_iff_padicValNat_ne_zero hpos).mpr hval

theorem displayed_minimal_at_29_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    displayed_minimal_at_29 A B :=
  ⟨twenty_nine_prime, hA, hB, hC,
    not_twenty_nine_dvd_c4 hA hB,
    twenty_nine_dvd_Delta_of_29_dvd_C hsol hBpos hA hB hC⟩

theorem v29_Delta_eq_26_mul_vC {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValNat 29 (freyDiscNat A B) =
      26 * padicValNat 29 (B + 3) := by
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  exact v29_Delta_of_29_dvd_C hsol hApos hBne hA hB

theorem thirteen_dvd_v29_Delta_of_displayed {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    13 ∣ padicValNat 29 (freyDiscNat A B) ∧
      26 ≤ padicValNat 29 (freyDiscNat A B) :=
  thirteen_dvd_v29_Delta_of_29_dvd_C hsol hBpos hA hB hC

/-! ## Tate `I_{26k}` and Ribet inertia stay `def Prop` -/

/-- Kodaira type `I_n` (multiplicative reduction) when `v(c₄)=0`
    and `v(Δ)=n≥1`. Not in Mathlib 4.12. The **numerics**
    `v(c₄)=0`, `v(Δ)=26 v(C)` are theorems above. -/
def tate_Kodaira_I_at_29 : Prop :=
  ∀ A B : ℕ, displayed_minimal_at_29 A B →
    padicValInt 29 (frey_c4 A B) = 0 →
      0 < padicValNat 29 (freyDiscNat A B)

/-- `ρ_{E,13}(I_{29}) = 1` when `13 ∣ v₂₉(Δ)`. Needs the Galois
    representation of a Tate curve, not `padicValNat`. -/
def inertia_at_29_trivial_mod13 : Prop :=
  tate_Kodaira_I_at_29 → ribet_unramified_at_29_of_dvd_C

/-- Ribet’s unramified-at-`ℓ` criterion, specialised to `ℓ=29`.
    Alias of the displayed Prop in `Ribet29C_Lowering`. Not an
    axiom. -/
def ribet_unramified_at_l_if_13_dvd_vDelta : Prop :=
  ribet_unramified_at_29_of_dvd_C

/-- If the Tate/inertia criterion held, Ribet would drop `29`
    from the residual. Uninhabited: other odd primes in `AB`
    need not drop, and `B` even puts `2` in `rad(AB)`. -/
def ribet_29C_lowers_to_32_of_inertia : Prop :=
  inertia_at_29_trivial_mod13 → ribet_29C_lowers_to_32

/-- Combined “inertia close of `29 ∣ C`”. Uninhabited. -/
def no_sol_ge_B0_of_ribet_inertia : Prop :=
  ribet_unramified_at_l_if_13_dvd_vDelta →
    DarmonMerelFrey4413.level_32_no_newform →
      ∀ B A : ℕ, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13

/-- Good reduction at `29` still mismatches `a₂₉ = −10`. -/
theorem no_match_32a1_of_good_red_29_reexport
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : ¬ 29 ∣ B + 3) :
    frey_ap 29 (A % 29) (B % 29) ≠ (-10 : ℤ) :=
  no_match_32a1_of_good_red_29 hsol hA hB hC

/-- LLL nogo persists: inertia does not replace C-scaling. -/
theorem LLL_nogo_persists_after_Inertia :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check displayed_minimal_at_29
#check v29_c4_eq_0
#check twenty_nine_dvd_Delta_of_29_dvd_C
#check displayed_minimal_at_29_of_29_dvd_C
#check tate_numerics_v_c4_zero_v_Delta_pos
#check tate_Kodaira_I_at_29
#check inertia_at_29_trivial_mod13
#check ribet_unramified_at_l_if_13_dvd_vDelta
#check LLL_nogo_persists_after_Inertia
#print axioms v29_c4_eq_0
#print axioms displayed_minimal_at_29_of_29_dvd_C
#print axioms LLL_nogo_persists_after_Inertia

end BealMatveevBeal.Inertia29Unramified
