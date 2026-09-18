/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Tate_I29_Inertia.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Tate/inertia axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level928Table
import MazurIrreducibility13
import Inertia29Unramified
import TateGalois
import LLLTargetB8_C1_lower_bound

/-!
# Gap 2: Tate `I₂₉` inertia stays `def Prop`

Numerics from `9030063` / `TateGalois`: `v₂₉(c₄)=0`,
`v₂₉(Δ)=26k`. Mathlib 4.12 **does** have the field `ℚ_[p]`
(`Padic p`) and `Padic.valuation : ℚ_[p] → ℤ`. This file
inhabits `v₂₉(Δ)` as that field valuation, and the existence
of a unit of the same valuation (`Δ` itself). That is **not**
Tate uniformization `E(ℚ̄_p) ≅ ℚ̄_pˣ / q^ℤ`. No
`InertiaGroup`, no `axiom inertia_via_cyclo`.

The modular `j`-expansion begins

```
j(q) = q⁻¹ + 744 + 196884 q + O(q²)
```

(`q` here is a formal / `p`-adic parameter with `v(q)>0`, not
`exp(−2πiτ)`). Truncation is a theorem about valuations:
`v(q⁻¹+744+196884 q) = −v(q)`. The leading inverse `j⁻¹` of
Frey `j` therefore has `v(j⁻¹)=−v(j)=26k=v(Δ)`. That is **not**
the Tate functor `E ↦ q(E)` and not
`E(ℚ̄_p) ≅ ℚ̄_pˣ/q^ℤ`. No `EllipticCurve ℚ_[29]` object, no
`sorry`, no `axiom Tate_q_series`.

A Mathlib Tate-curve module (Loeffler / Vonk direction) would
unblock this gap and the unramified-at-`29` half of Ribet.
Wiles / BCDT is a separate gap.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Tate_I29_Inertia

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level928Table
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.Inertia29Unramified
open BealMatveevBeal.TateGalois
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

instance : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩

theorem v29_c4_eq_0_thm {A B : ℕ}
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValInt 29 (frey_c4 A B) = 0 :=
  v29_c4_zero_when_29_nmid_AB hA hB

theorem v29_Delta_26k_thm {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    padicValNat 29 (freyDiscNat A B) =
      26 * padicValNat 29 (B + 3) :=
  v29_Delta_eq_26_vC hsol hBpos hA hB

/-! ## `ℚ_[29]` field valuation of the displayed discriminant -/

noncomputable section

/-- Mathlib 4.12 already has this field. It is **not** a Tate
    curve and not `ℚ̄_p`. -/
abbrev Qp (p : ℕ) [Fact p.Prime] := ℚ_[p]

/-- Displayed `Δ` as an element of `ℚ_[29]`. -/
def freyDisc_in_Qp29 (A B : ℕ) : ℚ_[29] :=
  (freyDiscNat A B : ℚ_[29])

theorem freyDisc_in_Qp29_ne_zero {A B : ℕ} (hA : A ≠ 0) (hB : B ≠ 0) :
    freyDisc_in_Qp29 A B ≠ 0 :=
  Nat.cast_ne_zero.mpr (freyDiscNat_pos hA hB).ne'

/-- `Padic.valuation` on a nonzero rational agrees with
    `padicValRat`. -/
theorem valuation_coe_rat {q : ℚ} (hq : q ≠ 0) :
    Padic.valuation (q : ℚ_[29]) = padicValRat 29 q := by
  have hx : (q : ℚ_[29]) ≠ 0 := Rat.cast_ne_zero.mpr hq
  have hp_pos : (0 : ℝ) < 29 := by norm_num
  have hp_ne : (29 : ℝ) ≠ 1 := by norm_num
  have hnorm : ‖(q : ℚ_[29])‖ = (padicNorm 29 q : ℝ) :=
    padicNormE.eq_padicNorm q
  have hpow : padicNorm 29 q = (29 : ℚ) ^ (-padicValRat 29 q) :=
    padicNorm.eq_zpow_of_nonzero hq
  have hcast :
      Rat.cast ((29 : ℚ) ^ (-padicValRat 29 q)) =
        (29 : ℝ) ^ (-padicValRat 29 q) :=
    map_zpow₀ (Rat.castHom ℝ) (29 : ℚ) (-padicValRat 29 q)
  have hL : (29 : ℝ) ^ (-Padic.valuation (q : ℚ_[29])) = ‖(q : ℚ_[29])‖ := by
    have := Padic.norm_eq_pow_val hx
    exact_mod_cast this.symm
  have hR : (29 : ℝ) ^ (-padicValRat 29 q) = ‖(q : ℚ_[29])‖ := by
    rw [hnorm, hpow]
    exact hcast.symm
  exact neg_injective ((zpow_inj hp_pos hp_ne).mp (hL.trans hR.symm))

theorem valuation_natCast_eq_padicValNat {n : ℕ} (hn : n ≠ 0) :
    Padic.valuation (n : ℚ_[29]) = (padicValNat 29 n : ℤ) := by
  have hq : (n : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hn
  have hcast : ((n : ℚ) : ℚ_[29]) = (n : ℚ_[29]) := by
    simp
  have hrat := valuation_coe_rat hq
  rw [hcast] at hrat
  simpa [padicValRat.of_nat] using hrat

theorem padic_valuation_Delta_eq_padicValNat {A B : ℕ}
    (hA : A ≠ 0) (hB : B ≠ 0) :
    Padic.valuation (freyDisc_in_Qp29 A B) =
      (padicValNat 29 (freyDiscNat A B) : ℤ) :=
  valuation_natCast_eq_padicValNat (freyDiscNat_pos hA hB).ne'

/-- On a solution with `29 ∤ AB`, the field valuation of `Δ` is
    `26 v₂₉(C)`. This is still not a Tate parameter. -/
theorem padic_valuation_Delta_eq_26_vC {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    Padic.valuation (freyDisc_in_Qp29 A B) =
      26 * (padicValNat 29 (B + 3) : ℤ) := by
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hval := padic_valuation_Delta_eq_padicValNat hApos hBne
  have hnat := v29_Delta_26k_thm hsol hBpos hA hB
  rw [hval, hnat]
  norm_cast

theorem thirteen_dvd_padic_valuation_Delta {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (_hC : 29 ∣ B + 3) :
    (13 : ℤ) ∣ Padic.valuation (freyDisc_in_Qp29 A B) := by
  rw [padic_valuation_Delta_eq_26_vC hsol hBpos hA hB]
  exact dvd_mul_of_dvd_left (by decide : (13 : ℤ) ∣ 26) _

/-- A unit of `ℚ_[29]` with the same valuation as `Δ`: `Δ`
    itself. This is **not** the Tate parameter `q(E)`. -/
theorem exists_Qp_unit_val_eq_vDelta {A B : ℕ}
    (hA : A ≠ 0) (hB : B ≠ 0) :
    ∃ q : (ℚ_[29])ˣ,
      Padic.valuation (q : ℚ_[29]) =
        Padic.valuation (freyDisc_in_Qp29 A B) :=
  ⟨Units.mk0 _ (freyDisc_in_Qp29_ne_zero hA hB), by simp⟩

/-! ## Truncated `j(q)` expansion (not Tate uniformization) -/

theorem padic_valuation_inv {x : ℚ_[29]} (hx : x ≠ 0) :
    Padic.valuation x⁻¹ = - Padic.valuation x := by
  have hinv : x⁻¹ ≠ 0 := inv_ne_zero hx
  have hone : x⁻¹ * x = 1 := inv_mul_cancel₀ hx
  have hmul := Padic.valuation_map_mul hinv hx
  rw [hone, Padic.valuation_one] at hmul
  linarith

theorem padic_valuation_neg {x : ℚ_[29]} (hx : x ≠ 0) :
    Padic.valuation (-x) = Padic.valuation x := by
  have hneg : -x ≠ 0 := neg_ne_zero.mpr hx
  have hp_pos : (0 : ℝ) < 29 := by norm_num
  have hp_ne : (29 : ℝ) ≠ 1 := by norm_num
  have hnorm : ‖(-x : ℚ_[29])‖ = ‖x‖ := norm_neg x
  have hL : (29 : ℝ) ^ (-Padic.valuation x) = ‖x‖ := by
    exact_mod_cast (Padic.norm_eq_pow_val hx).symm
  have hR : (29 : ℝ) ^ (-Padic.valuation (-x)) = ‖(-x : ℚ_[29])‖ := by
    exact_mod_cast (Padic.norm_eq_pow_val hneg).symm
  have : (29 : ℝ) ^ (-Padic.valuation (-x)) =
      (29 : ℝ) ^ (-Padic.valuation x) := by
    rw [hR, hnorm, hL]
  exact neg_injective ((zpow_inj hp_pos hp_ne).mp this)

/-- Ultrametric equality: the smaller-valuation summand wins. -/
theorem padic_valuation_add_of_lt {x y : ℚ_[29]} (hx : x ≠ 0)
    (hxy : Padic.valuation x < Padic.valuation y) :
    Padic.valuation (x + y) = Padic.valuation x := by
  have hsum : x + y ≠ 0 := by
    intro h0
    have hy : y = -x := eq_neg_of_add_eq_zero_right h0
    have : Padic.valuation y = Padic.valuation x := by
      rw [hy, padic_valuation_neg hx]
    exact hxy.ne this.symm
  have hp_pos : (0 : ℝ) < 29 := by norm_num
  have hp_ne : (29 : ℝ) ≠ 1 := by norm_num
  have hp_one : (1 : ℝ) < 29 := by norm_num
  by_cases hy : y = 0
  · subst hy
    simp
  · have hnx : (29 : ℝ) ^ (-Padic.valuation x) = ‖x‖ := by
      exact_mod_cast (Padic.norm_eq_pow_val hx).symm
    have hny : (29 : ℝ) ^ (-Padic.valuation y) = ‖y‖ := by
      exact_mod_cast (Padic.norm_eq_pow_val hy).symm
    have hlt : ‖y‖ < ‖x‖ := by
      rw [← hnx, ← hny]
      exact (zpow_strictMono hp_one).lt_iff_lt.mpr (neg_lt_neg hxy)
    have hne : ‖x‖ ≠ ‖y‖ := hlt.ne.symm
    have hmax : ‖x + y‖ = max ‖x‖ ‖y‖ := padicNormE.add_eq_max_of_ne hne
    have hnorm_eq : ‖x + y‖ = ‖x‖ := hmax.trans (max_eq_left hlt.le)
    have hns : (29 : ℝ) ^ (-Padic.valuation (x + y)) = ‖x + y‖ := by
      exact_mod_cast (Padic.norm_eq_pow_val hsum).symm
    have heq : (29 : ℝ) ^ (-Padic.valuation (x + y)) =
        (29 : ℝ) ^ (-Padic.valuation x) := by
      rw [hns, hnorm_eq, hnx]
    exact neg_injective ((zpow_inj hp_pos hp_ne).mp heq)

/-- Constant term of the modular `j`-expansion. -/
def j_expansion_c0 : ℕ := 744

/-- Coefficient of `q` in the modular `j`-expansion. -/
def j_expansion_c1 : ℕ := 196884

theorem twenty_nine_not_dvd_j_c0 : ¬ 29 ∣ j_expansion_c0 := by
  native_decide

theorem twenty_nine_not_dvd_j_c1 : ¬ 29 ∣ j_expansion_c1 := by
  native_decide

theorem j_expansion_c0_ne_zero : j_expansion_c0 ≠ 0 := by
  native_decide

theorem j_expansion_c1_ne_zero : j_expansion_c1 ≠ 0 := by
  native_decide

theorem padic_valuation_j_c0 :
    Padic.valuation (j_expansion_c0 : ℚ_[29]) = 0 := by
  rw [valuation_natCast_eq_padicValNat j_expansion_c0_ne_zero]
  simp [padicValNat.eq_zero_of_not_dvd twenty_nine_not_dvd_j_c0]

theorem padic_valuation_j_c1 :
    Padic.valuation (j_expansion_c1 : ℚ_[29]) = 0 := by
  rw [valuation_natCast_eq_padicValNat j_expansion_c1_ne_zero]
  simp [padicValNat.eq_zero_of_not_dvd twenty_nine_not_dvd_j_c1]

/-- Truncated modular expansion `q⁻¹ + 744 + 196884 q`.
    Not a map from `EllipticCurve ℚ_[29]`, and not the Tate
    parameter of the Frey curve. `q = 0` uses Lean’s `0⁻¹ = 0`. -/
def Tate_q_series (q : ℚ_[29]) : ℚ_[29] :=
  q⁻¹ + (j_expansion_c0 : ℚ_[29]) + (j_expansion_c1 : ℚ_[29]) * q

/-- If `v(q)>0`, the `q⁻¹` term dominates, so
    `v(j_trunc(q)) = −v(q)`. Full `O(q²)` is the same estimate. -/
theorem valuation_Tate_q_series {q : ℚ_[29]} (hq : q ≠ 0)
    (hpos : 0 < Padic.valuation q) :
    Padic.valuation (Tate_q_series q) = - Padic.valuation q := by
  have hc0 : (j_expansion_c0 : ℚ_[29]) ≠ 0 :=
    Nat.cast_ne_zero.mpr j_expansion_c0_ne_zero
  have hc1 : (j_expansion_c1 : ℚ_[29]) ≠ 0 :=
    Nat.cast_ne_zero.mpr j_expansion_c1_ne_zero
  have ha : q⁻¹ ≠ 0 := inv_ne_zero hq
  have hva : Padic.valuation q⁻¹ = - Padic.valuation q :=
    padic_valuation_inv hq
  have hva_lt0 : Padic.valuation q⁻¹ < 0 := by
    rw [hva]; linarith
  have hvc : Padic.valuation ((j_expansion_c1 : ℚ_[29]) * q) =
      Padic.valuation q := by
    rw [Padic.valuation_map_mul hc1 hq, padic_valuation_j_c1, zero_add]
  have hrest :
      Padic.valuation
          ((j_expansion_c0 : ℚ_[29]) + (j_expansion_c1 : ℚ_[29]) * q) = 0 := by
    have hlt : Padic.valuation (j_expansion_c0 : ℚ_[29]) <
        Padic.valuation ((j_expansion_c1 : ℚ_[29]) * q) := by
      rw [padic_valuation_j_c0, hvc]
      exact hpos
    rw [padic_valuation_add_of_lt hc0 hlt, padic_valuation_j_c0]
  have hdom :
      Padic.valuation q⁻¹ <
        Padic.valuation
          ((j_expansion_c0 : ℚ_[29]) + (j_expansion_c1 : ℚ_[29]) * q) := by
    rw [hrest]
    exact hva_lt0
  have hsum := padic_valuation_add_of_lt ha hdom
  -- `Tate_q_series q = q⁻¹ + (c0 + c1 q)`
  have hform : Tate_q_series q =
      q⁻¹ + ((j_expansion_c0 : ℚ_[29]) + (j_expansion_c1 : ℚ_[29]) * q) := by
    simp [Tate_q_series, add_assoc]
  rw [hform, hsum, hva]

/-- Leading inverse `j⁻¹`. First term of the inverted `j`-series,
    not the Tate parameter. -/
def Tate_q_lead (A B : ℕ) : ℚ_[29] :=
  (frey_j A B : ℚ_[29])⁻¹

theorem frey_j_ne_zero_of_29_nmid_AB {A B : ℕ}
    (hApos : A ≠ 0) (hBpos : B ≠ 0)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    frey_j A B ≠ 0 := by
  unfold frey_j
  refine div_ne_zero ?_ ?_
  · exact pow_ne_zero 3 (Int.cast_ne_zero.mpr (frey_c4_ne_zero hA hB))
  · exact Nat.cast_ne_zero.mpr (freyDiscNat_pos hApos hBpos).ne'

theorem padic_valuation_frey_j {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    Padic.valuation (frey_j A B : ℚ_[29]) =
      - (26 * (padicValNat 29 (B + 3) : ℤ)) := by
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hj := frey_j_ne_zero_of_29_nmid_AB hApos hBne hA hB
  rw [valuation_coe_rat hj, padicValRat_frey_j_eq hApos hBne hA hB,
    v29_Delta_26k_thm hsol hBpos hA hB]
  simp

/-- `v(j⁻¹) = −v(j) = 26 v₂₉(C) = v(Δ)`. Leading-term identity,
    not `q(E_Tate) = j⁻¹`. -/
theorem valuation_Tate_q_lead {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    Padic.valuation (Tate_q_lead A B) =
      26 * (padicValNat 29 (B + 3) : ℤ) := by
  have hApos : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hBne : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hj := frey_j_ne_zero_of_29_nmid_AB hApos hBne hA hB
  have hjQp : (frey_j A B : ℚ_[29]) ≠ 0 := Rat.cast_ne_zero.mpr hj
  rw [Tate_q_lead, padic_valuation_inv hjQp, padic_valuation_frey_j hsol hBpos hA hB]
  ring

theorem valuation_Tate_q_lead_eq_vDelta {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    Padic.valuation (Tate_q_lead A B) =
      Padic.valuation (freyDisc_in_Qp29 A B) := by
  rw [valuation_Tate_q_lead hsol hBpos hA hB,
    padic_valuation_Delta_eq_26_vC hsol hBpos hA hB]

theorem thirteen_dvd_valuation_Tate_q_lead {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) :
    (13 : ℤ) ∣ Padic.valuation (Tate_q_lead A B) := by
  rw [valuation_Tate_q_lead hsol hBpos hA hB]
  exact dvd_mul_of_dvd_left (by decide : (13 : ℤ) ∣ 26) _

/-- If the truncated series recovered Frey `j`, its `q` would
    have valuation `26k`. Identifying that `q` with a Tate
    parameter is `Tate_q`. -/
theorem valuation_of_q_from_trunc {q : ℚ_[29]} {A B : ℕ}
    (hq : q ≠ 0) (hpos : 0 < Padic.valuation q)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B)
    (heq : Tate_q_series q = (frey_j A B : ℚ_[29])) :
    Padic.valuation q = 26 * (padicValNat 29 (B + 3) : ℤ) := by
  have hv := valuation_Tate_q_series hq hpos
  have hvj := padic_valuation_frey_j hsol hBpos hA hB
  rw [heq] at hv
  linarith

/-! ## Tate uniformization stays `def Prop` (no Galois module) -/

/-- Intended Mathlib object: Tate uniformisation
    `E(ℚ̄_ℓ) ≅ ℚ̄_ℓˣ / q^ℤ` with `v_ℓ(q)=v_ℓ(Δ)`.
    Existence of *some* unit of valuation `v(Δ)` is the theorem
    `exists_Qp_unit_val_eq_vDelta`. The missing object is the
    functor from the curve to that `q`. **Not** an axiom. -/
def Tate_uniformization : Prop :=
  tate_curve_at_29

/-- Missing: a Tate parameter `q ∈ ℚ_[p]ˣ` attached to the
    displayed Frey curve by inverting the *full* modular
    `j`-expansion. The leading term `j⁻¹` is `Tate_q_lead`
    (valuation theorem). An arbitrary unit of valuation `v(Δ)`
    is `exists_Qp_unit_val_eq_vDelta`. Uninhabited. -/
def Tate_q : Prop :=
  Tate_uniformization

/-- Inertia via `χ_cyc^{v(q)}`. Uninhabited. **Not** an axiom. -/
def inertia_via_cyclo : Prop :=
  inertia_via_cyclotomic

/-- `13 ∣ v₂₉(Δ)` ⇒ `ρ_{E,13}(I_{29})=1`. Uninhabited. The
    integer `13 ∣ Padic.valuation Δ` is a theorem above; the
    Galois action is not. -/
def inertia_trivial_mod13_when_13_dvd_v : Prop :=
  inertia_at_29_trivial_mod13_full

theorem LLL_nogo_persists_after_Tate_I29 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check v29_c4_eq_0_thm
#check v29_Delta_26k_thm
#check valuation_natCast_eq_padicValNat
#check padic_valuation_Delta_eq_26_vC
#check thirteen_dvd_padic_valuation_Delta
#check exists_Qp_unit_val_eq_vDelta
#check Tate_q_series
#check valuation_Tate_q_series
#check Tate_q_lead
#check valuation_Tate_q_lead
#check valuation_Tate_q_lead_eq_vDelta
#check thirteen_dvd_valuation_Tate_q_lead
#check Tate_q
#check Tate_uniformization
#check inertia_trivial_mod13_when_13_dvd_v
#print axioms v29_c4_eq_0_thm
#print axioms padic_valuation_Delta_eq_26_vC
#print axioms exists_Qp_unit_val_eq_vDelta
#print axioms valuation_Tate_q_series
#print axioms valuation_Tate_q_lead
#print axioms LLL_nogo_persists_after_Tate_I29

end

end BealMatveevBeal.Tate_I29_Inertia
