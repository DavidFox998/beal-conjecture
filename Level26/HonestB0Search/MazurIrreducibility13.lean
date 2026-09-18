/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/MazurIrreducibility13.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Mazur/Ribet axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import Level928Table
import Ribet29C_Lowering
import LLLTargetB8_C1_lower_bound

/-!
# Mazur `j`-valuation and the Darmon–Merel 4413 barrier

`953a174` showed a single-prime trace sieve cannot kill the
whole `(1,6) (mod 7)` class (Chebotarev: CRT lifts inherit
matching `a_l`). Closing `B ≥ B0` needs Mazur irreducibility
of `ρ_{E,13}`, Ribet at primes with `13 ∣ v_ℓ(Δ)`, modularity,
and an image comparison with CM of `32a1`. None of those is in
Mathlib 4.12. This file inhabits the **`j`-valuation** that
Mazur would take as input, and keeps Mazur / Ribet / image as
`def Prop`.

Displayed `c₄ = 16(A⁸+B⁸+A⁴B⁴)` from `DarmonMerelFrey4413`
(not a stub with `(B+3)²⁶`). `Δ = 16 A⁸ B⁸ (A⁴+B⁴)²`, on a
solution `16 A⁸ B⁸ C²⁶`. If `29 ∣ C` and `29 ∤ AB` then
`29 ∤ c₄` and `v₂₉(Δ) ≥ 26`, so `v₂₉(j) ≤ −26` and
`29 ∣ j.den`. That is **not** Mazur irreducibility, not Ribet
inertia at `I₂₉`, and not Serre open image.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.MazurIrreducibility13

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Ribet29CLowering
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Displayed `j = c₄³ / Δ` -/

def c4_form (A B : ℕ) : ℕ :=
  A ^ 8 + B ^ 8 + A ^ 4 * B ^ 4

theorem frey_c4_eq_sixteen_mul_form (A B : ℕ) :
    frey_c4 A B = 16 * (c4_form A B : ℤ) := by
  simp [frey_c4, frey_A4, frey_B4, c4_form]
  have hA : ((A : ℤ) ^ 4) ^ 2 = (A : ℤ) ^ 8 := by rw [← pow_mul]
  have hB : ((B : ℤ) ^ 4) ^ 2 = (B : ℤ) ^ 8 := by rw [← pow_mul]
  rw [hA, hB]

/-- Geometric `j`-invariant of the displayed model. Requires
    `Δ ≠ 0`, i.e. `A,B > 0`. -/
def frey_j (A B : ℕ) : ℚ :=
  (frey_c4 A B : ℚ) ^ 3 / (freyDiscNat A B : ℚ)

/-! ## `29 ∤ c₄` when `29 ∤ AB` -/

theorem c4_form_ne_zero_mod29 :
    ∀ (A B : Fin 29),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 8 + B.val ^ 8 + A.val ^ 4 * B.val ^ 4) % 29 ≠ 0 := by
  native_decide

theorem c4_form_mod (A B : ℕ) :
    c4_form A B % 29 = c4_form (A % 29) (B % 29) % 29 := by
  simp [c4_form, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]

theorem not_twenty_nine_dvd_c4_form {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    ¬ 29 ∣ c4_form A B := by
  intro hd
  have hz : c4_form A B % 29 = 0 := mod_eq_zero_of_dvd hd
  have hA0 : A % 29 ≠ 0 := fun h0 => hA (dvd_of_mod_eq_zero h0)
  have hB0 : B % 29 ≠ 0 := fun h0 => hB (dvd_of_mod_eq_zero h0)
  have hp : (0 : ℕ) < 29 := by decide
  exact c4_form_ne_zero_mod29 ⟨A % 29, mod_lt A hp⟩ ⟨B % 29, mod_lt B hp⟩
    hA0 hB0 (by
      have hmod := c4_form_mod A B
      rw [hmod] at hz
      simpa [c4_form] using hz)

theorem not_twenty_nine_dvd_c4 {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    ¬ (29 : ℤ) ∣ frey_c4 A B := by
  intro hd
  rw [frey_c4_eq_sixteen_mul_form] at hd
  have h29 : Prime (29 : ℤ) := Nat.prime_iff_prime_int.mp twenty_nine_prime
  have h16 : ¬ (29 : ℤ) ∣ (16 : ℤ) := by decide
  have hform : (29 : ℤ) ∣ (c4_form A B : ℤ) :=
    (h29.dvd_mul.mp hd).resolve_left h16
  have : 29 ∣ c4_form A B := by
    exact_mod_cast hform
  exact not_twenty_nine_dvd_c4_form hA hB this

/-! ## `v₂₉(j) ≤ −26` when `29 ∣ C` and `29 ∤ AB` -/

theorem freyDiscNat_pos {A B : ℕ} (hA : A ≠ 0) (hB : B ≠ 0) :
    0 < freyDiscNat A B := by
  unfold freyDiscNat
  exact Nat.mul_pos (Nat.mul_pos (Nat.mul_pos (by decide)
    (pow_pos (Nat.pos_of_ne_zero hA) 8))
    (pow_pos (Nat.pos_of_ne_zero hB) 8))
    (pow_pos (Nat.add_pos_left (pow_pos (Nat.pos_of_ne_zero hA) 4) _) 2)

theorem frey_c4_ne_zero {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    frey_c4 A B ≠ 0 := by
  intro h0
  exact not_twenty_nine_dvd_c4 hA hB (h0 ▸ dvd_zero _)

theorem padicValRat_frey_j_eq {A B : ℕ}
    (hApos : A ≠ 0) (hBpos : B ≠ 0)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValRat 29 (frey_j A B) =
      - (padicValNat 29 (freyDiscNat A B) : ℤ) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hΔpos := freyDiscNat_pos hApos hBpos
  have hΔ : (freyDiscNat A B : ℚ) ≠ 0 :=
    Nat.cast_ne_zero.mpr hΔpos.ne'
  have hc4 : (frey_c4 A B : ℚ) ≠ 0 :=
    Int.cast_ne_zero.mpr (frey_c4_ne_zero hA hB)
  have hc43 : (frey_c4 A B : ℚ) ^ 3 ≠ 0 := pow_ne_zero 3 hc4
  unfold frey_j
  rw [padicValRat.div hc43 hΔ, padicValRat.pow hc4 (k := 3),
    padicValRat.of_int, padicValRat.of_nat]
  have hvalc : padicValInt 29 (frey_c4 A B) = 0 :=
    padicValInt.eq_zero_of_not_dvd (not_twenty_nine_dvd_c4 hA hB)
  simp [hvalc]

theorem padicValRat_frey_j_le_neg_twenty_six {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    padicValRat 29 (frey_j A B) ≤ -26 := by
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hval := padicValRat_frey_j_eq hApos hBne hA hB
  have hge := (thirteen_dvd_v29_Delta_of_only_C hsol hBpos hA hB hC).2
  have : (26 : ℤ) ≤ padicValNat 29 (freyDiscNat A B) :=
    Int.ofNat_le.mpr hge
  rw [hval]
  linarith

/-- `29` divides the reduced denominator of `j`. This is the
    Mazur input “`j` is not integral”; it is **not** Mazur’s
    irreducibility theorem. -/
theorem twenty_nine_dvd_frey_j_den {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    29 ∣ (frey_j A B).den := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hj := padicValRat_frey_j_eq hApos hBne hA hB
  have hge := (thirteen_dvd_v29_Delta_of_only_C hsol hBpos hA hB hC).2
  have hneg : padicValRat 29 (frey_j A B) < 0 := by
    have : (26 : ℤ) ≤ padicValNat 29 (freyDiscNat A B) :=
      Int.ofNat_le.mpr hge
    rw [hj]
    linarith
  unfold padicValRat at hneg
  have hden : (0 : ℤ) < padicValNat 29 (frey_j A B).den := by
    -- `padicValInt` is a `ℕ`, so the numerator valuation is ≥ 0.
    linarith
  have hdenN : padicValNat 29 (frey_j A B).den ≠ 0 :=
    Int.natCast_ne_zero.mp hden.ne'
  have hdenpos : (frey_j A B).den ≠ 0 :=
    (frey_j A B).den_nz
  exact (dvd_iff_padicValNat_ne_zero hdenpos).mpr hdenN

theorem frey_j_not_int_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    (frey_j A B).den ≠ 1 := by
  intro h1
  have hdvd := twenty_nine_dvd_frey_j_den hsol hBpos hA hB hC
  rw [h1] at hdvd
  exact (by decide : ¬ 29 ∣ (1 : ℕ)) hdvd

/-- Global `B ≥ B0` non-integrality. Uninhabited: `C` could be a
    power of `3` (`3 ∣ B` is already impossible by 3-adic
    descent, but this file does not rerun it). -/
def frey_j_not_integral_of_B_ge_B0 : Prop :=
  ∀ B A : ℕ, B0_nat ≤ B → A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    (frey_j A B).den ≠ 1

/-! ## Mazur / Ribet / image stay `def Prop` (no new axiom) -/

/-- Mazur: `ρ_{E,13}` irreducible on a non-integral-`j` Frey
    curve without CM. Alias of the displayed Prop in
    `DarmonMerelFrey4413`. Not an axiom. -/
def rho_Frey_mod13_irreducible : Prop :=
  mazur_rho_E_13_irreducible

/-- Serre open image of Frey vs CM/dihedral image of `32a1`
    after a putative Ribet lowering. Not in Mathlib 4.12.
    Single-prime traces cannot inhabit this (`953a174`). -/
def serre_open_image_vs_32a1_CM : Prop :=
  rho_Frey_mod13_irreducible →
    ribet_lowers_Frey_to_level_32 →
      DarmonMerelFrey4413.level_32_no_newform

/-- Local packaging of Mazur ∧ Ribet. **Not**
    `BealTrueV25.darmon_merel_4413_axiom`. -/
def mazur_and_ribet_hyp : Prop :=
  rho_Frey_mod13_irreducible ∧ ribet_29C_lowers_to_32

/-- If Mazur+Ribet forced an empty level-32 table, there would
    be no `B ≥ B0` solution. Does **not** inhabit the
    hypotheses. Reuses the displayed implication from
    `DarmonMerelFrey4413`. -/
theorem no_sol_ge_B0_of_mazur_ribet_table
    (h_ribet : ribet_lowers_Frey_to_level_32)
    (h_empty : DarmonMerelFrey4413.level_32_no_newform)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_ge_B0_of_ribet_and_level_32_table h_ribet h_empty hB hsol

/-- Good reduction at `29` still mismatches `a₂₉ = −10`
    (`9a9caa0`). Does **not** close `29 ∣ C`. -/
theorem no_match_32a1_of_good_red_29_reexport
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : ¬ 29 ∣ B + 3) :
    frey_ap 29 (A % 29) (B % 29) ≠ (-10 : ℤ) :=
  no_match_32a1_of_good_red_29 hsol hA hB hC

/-- Combined “image argument closes `B ≥ B0`”. Uninhabited:
    needs `I₂₉` inertia and Serre open image, not `a₇,a₁₁,a₂₃`
    slices. -/
def no_sol_ge_B0_of_darmon_merel_4413 : Prop :=
  mazur_and_ribet_hyp →
    ∀ B A : ℕ, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13

/-- LLL nogo and Darmon–Merel are separate. The `e5a95f5` iff
    is inhabited; the Mazur/Ribet close stays `def Prop`. -/
theorem LLL_nogo_persists_after_Mazur :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

theorem LLL_and_DarmonMerel_separate :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_Mazur

#check frey_j
#check not_twenty_nine_dvd_c4
#check twenty_nine_dvd_frey_j_den
#check frey_j_not_int_of_29_dvd_C
#check rho_Frey_mod13_irreducible
#check mazur_and_ribet_hyp
#check no_sol_ge_B0_of_darmon_merel_4413
#check LLL_nogo_persists_after_Mazur
#print axioms twenty_nine_dvd_frey_j_den
#print axioms frey_j_not_int_of_29_dvd_C
#print axioms LLL_nogo_persists_after_Mazur

end BealMatveevBeal.MazurIrreducibility13
