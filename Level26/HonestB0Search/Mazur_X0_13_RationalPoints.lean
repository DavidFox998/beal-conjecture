/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Mazur_X0_13_RationalPoints.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Mazur axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import MazurIrreducibility13
import Inertia29Unramified
import MazurIrreducibilityFull
import LLLTargetB8_C1_lower_bound

/-!
# `X₀(13)` Fricke `j`-map: local numerics, not a Mazur close

Fricke / Fisher: on `X₀(13) ≅ ℙ¹` with coordinate `t`,

```
j(t) = (t² + 5t + 13) (t⁴ + 7t³ + 20t² + 19t + 1)³ / t
```

(`On families of 13-congruent elliptic curves`, arXiv:1912.10777).
Degree 14, matching `[SL₂(ℤ):Γ₀(13)]`. This is **not** LMFDB
`13.12.0.a.1` (that label is a different modular curve).

`X₀(13)` has genus 0, so `X₀(13)(ℚ)` is infinite. There is no
finite list of rational `j`-invariants of curves with a
rational 13-isogeny. Mazur’s finite list is the **integral**
`j` case, a different theorem.

**Inhabited:**
* `j_of_X0_13` as that rational function
* `t²+5t+13` has no root in `𝔽₂₉` (disc `≡ 2`, nonresidue)
* `f(t) = t⁴+7t³+20t²+19t+1` **does** vanish at `t ≡ 7,9 (mod 29)`
  (the pasted “no root” scan is false; `f(0)=1` is true)
* fourth powers in `𝔽₂₉` are `{0,1,7,16,20,23,24,25}` (not
  `{0,1,7,20,23,24,25,28}`)
* displayed `c₄ = 16(A⁸+B⁸+A⁴B⁴)` (coefficient `1`, not `14`)
* `v₂₉(j_Frey) = −26k` on `29 ∣ C`, `29 ∤ AB`
* if `j_Frey = j(t)` then `v₂₉(t) ∈ {26k, −2k}`

**Not a local close:** both remaining cusps hit every unit of
`𝔽₂₉ˣ` (`t ∼ 29^{26k}` gives units `13 u⁻¹`; `t ∼ 29^{-2k}`
gives units `u¹³`, and `gcd(13,28)=1`). A `∀ u, u·13⁻¹ ≠ RHS`
scan is false whenever the RHS is a unit. Gap 1 stays
`def Prop`. No Galois module, no `sorry`, no new axiom.

Does **not** mint v25. `C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Mazur_X0_13_RationalPoints

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level928Table
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.Inertia29Unramified
open BealMatveevBeal.MazurIrreducibilityFull
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Fricke `j`-map -/

def x0_13_quad (t : ℚ) : ℚ := t ^ 2 + 5 * t + 13

def x0_13_f (t : ℚ) : ℚ := t ^ 4 + 7 * t ^ 3 + 20 * t ^ 2 + 19 * t + 1

/-- Fricke coordinate on `X₀(13) ≅ ℙ¹`. Undefined at the cusp `t = 0`. -/
def j_of_X0_13 (t : ℚ) : ℚ := x0_13_quad t * (x0_13_f t) ^ 3 / t

theorem frey_j_formula (A B : ℕ) :
    frey_j A B = (frey_c4 A B : ℚ) ^ 3 / (freyDiscNat A B : ℚ) :=
  rfl

/-! ## `𝔽₂₉` scans (honest: `f` has roots) -/

theorem x0_13_quad_disc_mod29 : ((5 : ℤ) * 5 - 4 * 13) % 29 = 2 := by decide

theorem two_not_square_mod29 :
    ∀ a : Fin 29, a.val ^ 2 % 29 ≠ 2 := by native_decide

theorem x0_13_quad_ne_zero_mod29 :
    ∀ t : Fin 29, (t.val ^ 2 + 5 * t.val + 13) % 29 ≠ 0 := by native_decide

/-- Homogenised quadratic: no zero on `𝔽₂₉` with `d ≠ 0`. -/
theorem x0_13_quad_hom_ne_zero_mod29 :
    ∀ n d : Fin 29,
      d.val ≠ 0 →
        (n.val ^ 2 + 5 * n.val * d.val + 13 * d.val ^ 2) % 29 ≠ 0 := by
  native_decide

/-- `f` **does** vanish mod `29`. The pasted “no root” claim is false. -/
theorem x0_13_f_zero_at_seven_nine_mod29 :
    (7 ^ 4 + 7 * 7 ^ 3 + 20 * 7 ^ 2 + 19 * 7 + 1) % 29 = 0 ∧
      (9 ^ 4 + 7 * 9 ^ 3 + 20 * 9 ^ 2 + 19 * 9 + 1) % 29 = 0 := by decide

theorem x0_13_f_zero_at_zero_ne :
    (0 ^ 4 + 7 * 0 ^ 3 + 20 * 0 ^ 2 + 19 * 0 + 1) % 29 = 1 := by decide

/-- Nonzero fourth powers in `𝔽₂₉` are a subgroup of order `7`.
    The pasted list omitted `16` and wrongly included `28`. -/
theorem fourth_pow_mod29 :
    ∀ a : Fin 29,
      (∃ x : Fin 29, x.val ^ 4 % 29 = a.val) ↔
        a.val = 0 ∨ a.val = 1 ∨ a.val = 7 ∨ a.val = 16 ∨
          a.val = 20 ∨ a.val = 23 ∨ a.val = 24 ∨ a.val = 25 := by
  native_decide

/-! ## Displayed `c₄` is coefficient `1`, not Fermat-`14` -/

theorem c4_form_ne_fourteen_form_mod29 :
    ∀ A B : Fin 29,
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 8 + A.val ^ 4 * B.val ^ 4 + B.val ^ 8) % 29 ≠
          (A.val ^ 8 + 14 * A.val ^ 4 * B.val ^ 4 + B.val ^ 8) % 29 := by
  native_decide

theorem thirteen_mul_nine_mod29 : (13 * 9 : ℕ) % 29 = 1 := by decide

/-- Units `u · 13⁻¹` cover all of `𝔽₂₉ˣ`. A `∀ u, ≠` mismatch is
    therefore false on any nonzero right-hand side. -/
theorem mul_inv13_surjective_units :
    ∀ v : Fin 29, v.val ≠ 0 →
      ∃ u : Fin 29, u.val ≠ 0 ∧ (u.val * 9) % 29 = v.val := by
  native_decide

/-- At the infinite cusp `j ∼ t¹³`, units `u¹³` also cover `𝔽₂₉ˣ`
    (`gcd(13,28)=1`). -/
theorem pow_thirteen_surjective_units :
    ∀ v : Fin 29, v.val ≠ 0 →
      ∃ u : Fin 29, u.val ≠ 0 ∧ u.val ^ 13 % 29 = v.val := by
  native_decide

/-! ## `j(t)` is defined on `ℚ \ {0}` -/

def x0_13_N (t : ℚ) : ℤ :=
  t.num ^ 2 + 5 * t.num * t.den + 13 * (t.den : ℤ) ^ 2

def x0_13_F (t : ℚ) : ℤ :=
  t.num ^ 4 + 7 * t.num ^ 3 * t.den + 20 * t.num ^ 2 * (t.den : ℤ) ^ 2 +
    19 * t.num * (t.den : ℤ) ^ 3 + (t.den : ℤ) ^ 4

theorem x0_13_quad_eq_N_div (t : ℚ) :
    x0_13_quad t = (x0_13_N t : ℚ) / (t.den : ℚ) ^ 2 := by
  have hden : (t.den : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr t.den_nz
  have haux (n : ℤ) (d : ℕ) (hd : (d : ℚ) ≠ 0) :
      ((n : ℚ) / d) ^ 2 + 5 * ((n : ℚ) / d) + 13 =
        ((n ^ 2 + 5 * n * d + 13 * (d : ℤ) ^ 2 : ℤ) : ℚ) / (d : ℚ) ^ 2 := by
    field_simp [hd]
    ring
  simpa [x0_13_quad, x0_13_N, Rat.num_div_den t] using haux t.num t.den hden

theorem x0_13_f_eq_F_div (t : ℚ) :
    x0_13_f t = (x0_13_F t : ℚ) / (t.den : ℚ) ^ 4 := by
  have hden : (t.den : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr t.den_nz
  have haux (n : ℤ) (d : ℕ) (hd : (d : ℚ) ≠ 0) :
      ((n : ℚ) / d) ^ 4 + 7 * ((n : ℚ) / d) ^ 3 + 20 * ((n : ℚ) / d) ^ 2 +
          19 * ((n : ℚ) / d) + 1 =
        ((n ^ 4 + 7 * n ^ 3 * d + 20 * n ^ 2 * (d : ℤ) ^ 2 +
          19 * n * (d : ℤ) ^ 3 + (d : ℤ) ^ 4 : ℤ) : ℚ) / (d : ℚ) ^ 4 := by
    field_simp [hd]
    ring
  simpa [x0_13_f, x0_13_F, Rat.num_div_den t] using haux t.num t.den hden

theorem x0_13_quad_ne_zero (t : ℚ) : x0_13_quad t ≠ 0 := by
  intro h
  have h4 : (2 * t + 5) ^ 2 + 27 = 4 * x0_13_quad t := by
    simp [x0_13_quad]; ring
  have hsq : (2 * t + 5) ^ 2 = -27 := by
    rw [h, mul_zero] at h4
    linarith
  have hn : (0 : ℚ) ≤ (2 * t + 5) ^ 2 := sq_nonneg _
  have : (0 : ℚ) ≤ (-27 : ℚ) := by rw [← hsq]; exact hn
  norm_num at this

theorem x0_13_f_eval_one : x0_13_f 1 = 48 := by
  simp [x0_13_f]; norm_num

theorem x0_13_f_eval_neg_one : x0_13_f (-1) = -4 := by
  simp [x0_13_f]; norm_num

theorem x0_13_f_ne_zero (t : ℚ) : x0_13_f t ≠ 0 := by
  intro hf
  have hden4 : (t.den : ℚ) ^ 4 ≠ 0 :=
    pow_ne_zero 4 (Nat.cast_ne_zero.mpr t.den_nz)
  have hF0 : x0_13_F t = 0 := by
    have h := x0_13_f_eq_F_div t
    rw [hf] at h
    rcases (div_eq_zero_iff.mp h.symm) with hF | hdz
    · exact Int.cast_eq_zero.mp hF
    · exact (hden4 hdz).elim
  have hdiv : (t.den : ℤ) ∣ t.num ^ 4 := by
    rw [x0_13_F] at hF0
    refine ⟨-(7 * t.num ^ 3 + 20 * t.num ^ 2 * t.den +
      19 * t.num * (t.den : ℤ) ^ 2 + (t.den : ℤ) ^ 3), ?_⟩
    linarith
  have hdivN : t.den ∣ t.num.natAbs ^ 4 := by
    have := Int.natAbs_dvd_natAbs.mpr hdiv
    simpa [Int.natAbs_pow, Int.natAbs_cast] using this
  have hcop : (t.num.natAbs).Coprime t.den := t.reduced
  have hcop' : t.den.Coprime (t.num.natAbs ^ 4) := by
    simpa using (Nat.Coprime.pow 4 1 hcop).symm
  have hden1 : t.den = 1 := by
    have hg : t.den.gcd (t.num.natAbs ^ 4) = 1 := hcop'
    have hg' : t.den.gcd (t.num.natAbs ^ 4) = t.den := gcd_eq_left hdivN
    exact hg'.symm.trans hg
  have hdivp : t.num ∣ (t.den : ℤ) ^ 4 := by
    rw [x0_13_F] at hF0
    refine ⟨-(t.num ^ 3 + 7 * t.num ^ 2 * t.den +
      20 * t.num * (t.den : ℤ) ^ 2 + 19 * (t.den : ℤ) ^ 3), ?_⟩
    linarith
  have hnum1 : t.num.natAbs = 1 := by
    have hdivN' : t.num.natAbs ∣ t.den ^ 4 := by
      have := Int.natAbs_dvd_natAbs.mpr hdivp
      simpa [Int.natAbs_pow, Int.natAbs_cast] using this
    rw [hden1] at hdivN'
    exact Nat.eq_one_of_dvd_one hdivN'
  have ht : t = 1 ∨ t = -1 := by
    have : t.num = 1 ∨ t.num = -1 := Int.natAbs_eq_iff.mp hnum1
    rw [← Rat.num_div_den t, hden1, Nat.cast_one, div_one]
    exact this.imp (fun h => by simp [h]) (fun h => by simp [h])
  rcases ht with ht | ht
  · rw [ht, x0_13_f_eval_one] at hf; exact (by decide : (48 : ℚ) ≠ 0) hf
  · rw [ht, x0_13_f_eval_neg_one] at hf; exact (by decide : (-4 : ℚ) ≠ 0) hf

theorem padicValRat_j_of_X0_13 {t : ℚ} (ht : t ≠ 0) :
    padicValRat 29 (j_of_X0_13 t) =
      padicValRat 29 (x0_13_quad t) + 3 * padicValRat 29 (x0_13_f t) -
        padicValRat 29 t := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hq := x0_13_quad_ne_zero t
  have hf := x0_13_f_ne_zero t
  have hf3 : x0_13_f t ^ 3 ≠ 0 := pow_ne_zero 3 hf
  have hnum : x0_13_quad t * x0_13_f t ^ 3 ≠ 0 := mul_ne_zero hq hf3
  unfold j_of_X0_13
  rw [padicValRat.div hnum ht, padicValRat.mul hq hf3, padicValRat.pow hf (k := 3)]
  ring

theorem not_twenty_nine_dvd_num_and_den (t : ℚ) :
    ¬ ((29 : ℤ) ∣ t.num ∧ 29 ∣ t.den) := by
  intro ⟨hnum, hden⟩
  have h1 : 29 ∣ t.num.natAbs := by
    have := Int.natAbs_dvd_natAbs.mpr hnum
    simpa [Int.natAbs_cast] using this
  have hc : (t.num.natAbs).Coprime t.den := t.reduced
  exact Nat.not_coprime_of_dvd_of_dvd (by decide : 1 < 29) h1 hden hc

theorem x0_13_N_ne_zero (t : ℚ) : x0_13_N t ≠ 0 := by
  intro h
  have hq := x0_13_quad_ne_zero t
  have : x0_13_quad t = 0 := by
    rw [x0_13_quad_eq_N_div, h, Int.cast_zero, zero_div]
  exact hq this

theorem x0_13_F_ne_zero (t : ℚ) : x0_13_F t ≠ 0 := by
  intro h
  have hf := x0_13_f_ne_zero t
  have : x0_13_f t = 0 := by
    rw [x0_13_f_eq_F_div, h, Int.cast_zero, zero_div]
  exact hf this

theorem padicValRat_quad_eq {t : ℚ} :
    padicValRat 29 (x0_13_quad t) =
      padicValInt 29 (x0_13_N t) - 2 * padicValNat 29 t.den := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hN : (x0_13_N t : ℚ) ≠ 0 := Int.cast_ne_zero.mpr (x0_13_N_ne_zero t)
  have hden : (t.den : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr t.den_nz
  have hden2 : (t.den : ℚ) ^ 2 ≠ 0 := pow_ne_zero 2 hden
  rw [x0_13_quad_eq_N_div, padicValRat.div hN hden2, padicValRat.of_int,
    padicValRat.pow hden (k := 2), padicValRat.of_nat]
  ring

theorem padicValRat_f_eq {t : ℚ} :
    padicValRat 29 (x0_13_f t) =
      padicValInt 29 (x0_13_F t) - 4 * padicValNat 29 t.den := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hF : (x0_13_F t : ℚ) ≠ 0 := Int.cast_ne_zero.mpr (x0_13_F_ne_zero t)
  have hden : (t.den : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr t.den_nz
  have hden4 : (t.den : ℚ) ^ 4 ≠ 0 := pow_ne_zero 4 hden
  rw [x0_13_f_eq_F_div, padicValRat.div hF hden4, padicValRat.of_int,
    padicValRat.pow hden (k := 4), padicValRat.of_nat]
  ring

/-! ## Valuation of `N` and `F` by cases -/

theorem thirteen_ne_zero_mod29 : (13 : ZMod 29) ≠ 0 := by native_decide

theorem x0_13_quad_zmod :
    ∀ n d : ZMod 29, n ≠ 0 → d ≠ 0 → n ^ 2 + 5 * n * d + 13 * d ^ 2 ≠ 0 := by
  native_decide

theorem not_dvd_N_of_dvd_num {t : ℚ}
    (hnum : (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    ¬ (29 : ℤ) ∣ x0_13_N t := by
  intro hN
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hN0 : (x0_13_N t : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 29).mpr hN
  have hn0 : (t.num : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd t.num 29).mpr hnum
  have hd0 : (t.den : ZMod 29) ≠ 0 :=
    fun h => hden ((ZMod.natCast_zmod_eq_zero_iff_dvd t.den 29).mp h)
  have hred : (x0_13_N t : ZMod 29) = 13 * (t.den : ZMod 29) ^ 2 := by
    simp [x0_13_N, hn0]
  have h13 : (13 : ZMod 29) ≠ 0 := thirteen_ne_zero_mod29
  have hz : (13 : ZMod 29) * (t.den : ZMod 29) ^ 2 = 0 := by
    rw [← hred, hN0]
  have : (t.den : ZMod 29) ^ 2 = 0 :=
    (mul_eq_zero.mp hz).resolve_left h13
  exact hd0 (pow_eq_zero this)

theorem not_dvd_F_of_dvd_num {t : ℚ}
    (hnum : (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    ¬ (29 : ℤ) ∣ x0_13_F t := by
  intro hF
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hF0 : (x0_13_F t : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 29).mpr hF
  have hn0 : (t.num : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd t.num 29).mpr hnum
  have hd0 : (t.den : ZMod 29) ≠ 0 :=
    fun h => hden ((ZMod.natCast_zmod_eq_zero_iff_dvd t.den 29).mp h)
  have hred : (x0_13_F t : ZMod 29) = (t.den : ZMod 29) ^ 4 := by
    simp [x0_13_F, hn0]
  have : (t.den : ZMod 29) ^ 4 = 0 := by rw [← hred, hF0]
  exact hd0 (pow_eq_zero this)

theorem not_dvd_N_of_dvd_den {t : ℚ}
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : 29 ∣ t.den) :
    ¬ (29 : ℤ) ∣ x0_13_N t := by
  intro hN
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hN0 : (x0_13_N t : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 29).mpr hN
  have hn0 : (t.num : ZMod 29) ≠ 0 :=
    fun h => hnum ((ZMod.intCast_zmod_eq_zero_iff_dvd t.num 29).mp h)
  have hd0 : (t.den : ZMod 29) = 0 :=
    (ZMod.natCast_zmod_eq_zero_iff_dvd t.den 29).mpr hden
  have hred : (x0_13_N t : ZMod 29) = (t.num : ZMod 29) ^ 2 := by
    simp [x0_13_N, hd0]
  have : (t.num : ZMod 29) ^ 2 = 0 := by rw [← hred, hN0]
  exact hn0 (pow_eq_zero this)

theorem not_dvd_F_of_dvd_den {t : ℚ}
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : 29 ∣ t.den) :
    ¬ (29 : ℤ) ∣ x0_13_F t := by
  intro hF
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hF0 : (x0_13_F t : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 29).mpr hF
  have hn0 : (t.num : ZMod 29) ≠ 0 :=
    fun h => hnum ((ZMod.intCast_zmod_eq_zero_iff_dvd t.num 29).mp h)
  have hd0 : (t.den : ZMod 29) = 0 :=
    (ZMod.natCast_zmod_eq_zero_iff_dvd t.den 29).mpr hden
  have hred : (x0_13_F t : ZMod 29) = (t.num : ZMod 29) ^ 4 := by
    simp [x0_13_F, hd0]
  have : (t.num : ZMod 29) ^ 4 = 0 := by rw [← hred, hF0]
  exact hn0 (pow_eq_zero this)

theorem not_dvd_N_of_neither' {t : ℚ}
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    ¬ (29 : ℤ) ∣ x0_13_N t := by
  intro hN
  have hz : (x0_13_N t : ZMod 29) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 29).mpr hN
  have hnZ : (t.num : ZMod 29) ≠ 0 :=
    fun h => hnum ((ZMod.intCast_zmod_eq_zero_iff_dvd t.num 29).mp h)
  have hdZ : (t.den : ZMod 29) ≠ 0 :=
    fun h => hden ((ZMod.natCast_zmod_eq_zero_iff_dvd t.den 29).mp h)
  have hcast :
      (x0_13_N t : ZMod 29) =
        (t.num : ZMod 29) ^ 2 + 5 * (t.num : ZMod 29) * (t.den : ZMod 29) +
          13 * (t.den : ZMod 29) ^ 2 := by
    simp [x0_13_N]
  exact x0_13_quad_zmod (t.num : ZMod 29) (t.den : ZMod 29) hnZ hdZ (hcast ▸ hz)

/-! ## Case-split valuations of `j(t)` -/

theorem v_quad_eq_zero_of_dvd_num {t : ℚ}
    (hnum : (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    padicValRat 29 (x0_13_quad t) = 0 := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hN := not_dvd_N_of_dvd_num hnum hden
  have hden0 : padicValNat 29 t.den = 0 := padicValNat.eq_zero_of_not_dvd hden
  rw [padicValRat_quad_eq, padicValInt.eq_zero_of_not_dvd hN, hden0]
  simp

theorem v_f_eq_zero_of_dvd_num {t : ℚ}
    (hnum : (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    padicValRat 29 (x0_13_f t) = 0 := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hF := not_dvd_F_of_dvd_num hnum hden
  have hden0 : padicValNat 29 t.den = 0 := padicValNat.eq_zero_of_not_dvd hden
  rw [padicValRat_f_eq, padicValInt.eq_zero_of_not_dvd hF, hden0]
  simp

theorem v_quad_eq_zero_of_neither {t : ℚ}
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    padicValRat 29 (x0_13_quad t) = 0 := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hN := not_dvd_N_of_neither' hnum hden
  have hden0 : padicValNat 29 t.den = 0 := padicValNat.eq_zero_of_not_dvd hden
  rw [padicValRat_quad_eq, padicValInt.eq_zero_of_not_dvd hN, hden0]
  simp

theorem v_quad_of_dvd_den {t : ℚ}
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : 29 ∣ t.den) :
    padicValRat 29 (x0_13_quad t) = - (2 * padicValNat 29 t.den : ℤ) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hN := not_dvd_N_of_dvd_den hnum hden
  rw [padicValRat_quad_eq, padicValInt.eq_zero_of_not_dvd hN]
  simp

theorem v_f_of_dvd_den {t : ℚ}
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : 29 ∣ t.den) :
    padicValRat 29 (x0_13_f t) = - (4 * padicValNat 29 t.den : ℤ) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hF := not_dvd_F_of_dvd_den hnum hden
  rw [padicValRat_f_eq, padicValInt.eq_zero_of_not_dvd hF]
  simp

theorem v_j_X0_of_v_t_pos {t : ℚ} (ht : t ≠ 0)
    (hnum : (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    padicValRat 29 (j_of_X0_13 t) = - padicValRat 29 t := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hden0 : padicValNat 29 t.den = 0 := padicValNat.eq_zero_of_not_dvd hden
  rw [padicValRat_j_of_X0_13 ht, v_quad_eq_zero_of_dvd_num hnum hden,
    v_f_eq_zero_of_dvd_num hnum hden]
  simp [padicValRat, hden0]

theorem v_j_X0_of_v_t_zero {t : ℚ} (ht : t ≠ 0)
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : ¬ 29 ∣ t.den) :
    0 ≤ padicValRat 29 (j_of_X0_13 t) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hden0 : padicValNat 29 t.den = 0 := padicValNat.eq_zero_of_not_dvd hden
  have hnum0 : padicValInt 29 t.num = 0 := padicValInt.eq_zero_of_not_dvd hnum
  rw [padicValRat_j_of_X0_13 ht, v_quad_eq_zero_of_neither hnum hden]
  have hf : 0 ≤ padicValRat 29 (x0_13_f t) := by
    rw [padicValRat_f_eq, hden0]
    simp [Int.natCast_nonneg]
  have ht0 : padicValRat 29 t = 0 := by
    simp [padicValRat, hnum0, hden0]
  linarith

theorem v_j_X0_of_v_t_neg {t : ℚ} (ht : t ≠ 0)
    (hnum : ¬ (29 : ℤ) ∣ t.num) (hden : 29 ∣ t.den) :
    padicValRat 29 (j_of_X0_13 t) = 13 * padicValRat 29 t := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hnum0 : padicValInt 29 t.num = 0 := padicValInt.eq_zero_of_not_dvd hnum
  rw [padicValRat_j_of_X0_13 ht, v_quad_of_dvd_den hnum hden, v_f_of_dvd_den hnum hden]
  simp [padicValRat, hnum0]
  ring

/-! ## Frey `v₂₉(j) = −26k` -/

theorem padicValRat_frey_j_eq_neg_26_vC {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValRat 29 (frey_j A B) =
      - (26 * padicValNat 29 (B + 3) : ℤ) := by
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  rw [padicValRat_frey_j_eq hApos hBne hA hB,
    v29_Delta_eq_26_mul_vC hsol hBpos hA hB]
  simp

theorem frey_j_denom_has_29 {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    29 ∣ freyDiscNat A B ∧ ¬ (29 : ℤ) ∣ frey_c4 A B :=
  ⟨twenty_nine_dvd_Delta_of_29_dvd_C hsol hBpos hA hB hC,
    not_twenty_nine_dvd_c4 hA hB⟩

/-- If the Fricke `j`-map hits Frey `j` at `29 ∣ C`, the only
    29-adic possibilities are the two cusps `v(t)=26k` and
    `v(t)=−2k`. This is **not** a non-existence theorem. -/
theorem v_t_of_j_eq {A B : ℕ} {t : ℚ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3)
    (ht : t ≠ 0)
    (heq : frey_j A B = j_of_X0_13 t) :
    padicValRat 29 t = 26 * padicValNat 29 (B + 3) ∨
      padicValRat 29 t = - (2 * padicValNat 29 (B + 3) : ℤ) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hvj := padicValRat_frey_j_eq_neg_26_vC hsol hBpos hA hB
  have hkpos : 0 < padicValNat 29 (B + 3) := by
    have hpos : B + 3 ≠ 0 := (Nat.add_pos_right B (by decide : 0 < 3)).ne'
    have hne : padicValNat 29 (B + 3) ≠ 0 :=
      (dvd_iff_padicValNat_ne_zero hpos).mp hC
    exact Nat.pos_of_ne_zero hne
  have hneg : padicValRat 29 (j_of_X0_13 t) < 0 := by
    rw [← heq, hvj]
    have : (0 : ℤ) < 26 * padicValNat 29 (B + 3) :=
      mul_pos (by decide) (Int.natCast_pos.mpr hkpos)
    linarith
  have hnumden := not_twenty_nine_dvd_num_and_den t
  by_cases hdn : 29 ∣ t.den
  · have hn : ¬ (29 : ℤ) ∣ t.num := fun h => hnumden ⟨h, hdn⟩
    have hvt := v_j_X0_of_v_t_neg ht hn hdn
    have hmul : 13 * padicValRat 29 t = - (26 * padicValNat 29 (B + 3) : ℤ) := by
      rw [← hvt, ← heq, hvj]
    have hcancel : padicValRat 29 t = - (2 * padicValNat 29 (B + 3) : ℤ) := by
      have h' : 13 * padicValRat 29 t = 13 * (- (2 * padicValNat 29 (B + 3) : ℤ)) := by
        rw [hmul]; ring
      exact mul_left_cancel₀ (by decide : (13 : ℤ) ≠ 0) h'
    exact Or.inr hcancel
  · by_cases hn : (29 : ℤ) ∣ t.num
    · have hvt := v_j_X0_of_v_t_pos ht hn hdn
      have : - padicValRat 29 t = - (26 * padicValNat 29 (B + 3) : ℤ) := by
        rw [← hvt, ← heq, hvj]
      exact Or.inl (neg_injective this)
    · have hge := v_j_X0_of_v_t_zero ht hn hdn
      exact (not_le.mpr hneg hge).elim

/-! ## Gap 1 stays `def Prop` (no moduli theorem, no local close) -/

/-- Missing Mathlib object: reducible `ρ_{E,13}` iff `j(E)` is in
    the image of `j_of_X0_13`. Not an axiom. -/
def reducible_13_iff_j_in_image : Prop :=
  ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    ¬ MazurIrreducibility13.rho_Frey_mod13_irreducible →
      ∃ t : ℚ, t ≠ 0 ∧ frey_j A B = j_of_X0_13 t

/-- Non-existence of a rational Fricke parameter. Uninhabited:
    `v(t) ∈ {26k,−2k}` both occur locally. -/
def no_t_gives_Frey_j_when_29_dvd_C : Prop :=
  ∀ A B : ℕ, ∀ t : ℚ,
    A ^ 4 + B ^ 4 = (B + 3) ^ 13 → 1 ≤ B →
      ¬ 29 ∣ A → ¬ 29 ∣ B → 29 ∣ B + 3 →
        t ≠ 0 → frey_j A B ≠ j_of_X0_13 t

/-- Mazur irreducibility via `X₀(13)`. Uninhabited. The `𝔽₂₉`
    scans above are the **input**, not this close. -/
def mazur_irreducible_13_via_X0_13 : Prop :=
  reducible_13_iff_j_in_image → no_t_gives_Frey_j_when_29_dvd_C →
    MazurIrreducibility13.rho_Frey_mod13_irreducible

def mazur_irreducible_13_theorem : Prop :=
  MazurIrreducibility13.rho_Frey_mod13_irreducible

theorem LLL_nogo_persists_after_X0_13 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check j_of_X0_13
#check x0_13_quad_ne_zero_mod29
#check x0_13_f_zero_at_seven_nine_mod29
#check fourth_pow_mod29
#check c4_form_ne_fourteen_form_mod29
#check mul_inv13_surjective_units
#check pow_thirteen_surjective_units
#check padicValRat_frey_j_eq_neg_26_vC
#check v_t_of_j_eq
#check mazur_irreducible_13_via_X0_13
#print axioms x0_13_quad_ne_zero
#print axioms padicValRat_frey_j_eq_neg_26_vC
#print axioms v_t_of_j_eq
#print axioms LLL_nogo_persists_after_X0_13

end BealMatveevBeal.Mazur_X0_13_RationalPoints
