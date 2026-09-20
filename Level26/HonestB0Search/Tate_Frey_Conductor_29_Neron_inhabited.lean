/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest Néron / Tate-algorithm *display* for v28. Separate
  Lake targets `HonestB0Search` and `Level26` (`srcDir` this
  folder). Do **not** add `Beal/Matveev/` (`.submodules
  Beal.Matveev` would pull it into the default glob). Do
  **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Tate / Néron axiom.
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Tate_Frey_Conductor_29
import Level928Table
import Inertia29Unramified
import LLLTargetB8_C1_lower_bound

/-!
# Tate algorithm display at `2` and `29` (v28)

Inhabits the **valuation / numeral** side of Tate’s algorithm
for the displayed Frey model

```
y² = x(x − A⁴)(x + B⁴)
   = x³ + (B⁴ − A⁴)x² − A⁴ B⁴ x
```

from `Tate_Frey_Conductor_29_inhabited` (`b3348df` /
`51bba93`). Mathlib 4.12 still has no Kodaira-symbol type
and no Néron-model constructor. What is a theorem here:

* `c₄ = 16(A⁸ + B⁸ + A⁴ B⁴)` (already `freyWeierstrass_c₄`)
* `c₆ = −64(B⁴−A⁴)³ − 288(B⁴−A⁴)A⁴ B⁴`
* `Δ = 16 A⁸ B⁸ (A⁴+B⁴)²` (positive Mathlib discriminant)
* On a gap-3 solution with `29 ∤ AB`, `v₂₉(Δ) = 26 v₂₉(C)`
* For odd `A,B`: `v₂(Δ) = 6` (the `I₀*` discriminant
  valuation) because `A⁴+B⁴ ≡ 2 (mod 16)`
* Instance `A=29`, `B=1`: `v₂₉(Δ) = 8` (`I₈` valuation;
  `29 ∤ 29⁴+1`) and `v₂₉(c₄) = 0`
* Displayed Néron numeral `928 = 2⁵ · 29 = 32 · 29`

The SAGE witness `sagemath/tate_nero_29.sage` uses this
same Weierstrass `[0, B⁴−A⁴, 0, −A⁴ B⁴, 0]`, **not** the
short model `[0, −(A⁴+B⁴), 0, 0, 0]` (that is a different
curve). For `(A,B)=(1,1)` SAGE/Cremona reports conductor
`32`; for `(29,1)` the displayed split is `928`.

The three names `Tate_algorithm_at_29`,
`Frey_Neron_conductor`, `Frey_conductor_29_is_Neron` on
the parent `Tate_Frey_Conductor_29.lean` stay `def Prop`.
This file does not convert them.

No `def Prop`. No `sorry`. No new axiom. No Wiles.
-/

namespace BealMatveevBeal.Tate_Frey_Conductor_29_Neron_inhabited

open Nat Finset Classical
open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level928Table
open BealMatveevBeal.Tate_Frey_Conductor_29
open BealMatveevBeal.Inertia29Unramified
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Numeral `928 = 2⁵ · 29` -/

theorem two_pow_five_reexport : (2 : ℕ) ^ 5 = 32 :=
  two_pow_five

theorem two_pow_five_mul_twenty_nine : (2 : ℕ) ^ 5 * 29 = 928 := by
  decide

theorem thirty_two_mul_twenty_nine_here : (32 : ℕ) * 29 = 928 :=
  thirty_two_mul_twenty_nine

theorem nine_twenty_eight_div_twenty_nine_reexport : 928 / 29 = 32 :=
  nine_twenty_eight_div_twenty_nine

/-! ## `c₄` / `c₆` of the displayed Frey model -/

/-- Tate `c₆` polynomial on `a₁=a₃=a₆=0`, `a₂=B⁴−A⁴`,
    `a₄=−A⁴ B⁴`. -/
def frey_c6 (A B : ℕ) : ℤ :=
  -64 * (frey_B4 B - frey_A4 A) ^ 3
    - 288 * (frey_B4 B - frey_A4 A) * frey_A4 A * frey_B4 B

theorem freyWeierstrass_c₄_reexport (A B : ℕ) :
    (freyWeierstrass A B).c₄ = frey_c4 A B :=
  freyWeierstrass_c₄ A B

theorem freyWeierstrass_c₆ (A B : ℕ) :
    (freyWeierstrass A B).c₆ = frey_c6 A B := by
  simp [freyWeierstrass, frey_c6, frey_a2, frey_a4, frey_A4, frey_B4,
    WeierstrassCurve.c₆, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆]
  ring

theorem frey_c4_1_1 : frey_c4 1 1 = 48 := by
  unfold frey_c4 frey_A4 frey_B4
  decide

theorem freyWeierstrass_c₄_1_1 :
    (freyWeierstrass 1 1).c₄ = 48 := by
  rw [freyWeierstrass_c₄, frey_c4_1_1]

theorem freyWeierstrass_c₆_1_1 :
    (freyWeierstrass 1 1).c₆ = 0 := by
  rw [freyWeierstrass_c₆]
  unfold frey_c6 frey_A4 frey_B4
  decide

theorem v29_c4_1_1 : padicValInt 29 (frey_c4 1 1) = 0 := by
  rw [frey_c4_1_1]
  haveI : Fact (Nat.Prime 29) := ⟨by decide⟩
  exact padicValInt.eq_zero_of_not_dvd (by decide : ¬ (29 : ℤ) ∣ 48)

/-! ## Odd fourth powers and `v₂(Δ) = 6` (`I₀*` valuation) -/

/-- `n` odd ⇒ `n⁴ ≡ 1 (mod 16)`. Then two odds sum to
    `A⁴+B⁴ ≡ 2 (mod 16)`, so `v₂(A⁴+B⁴)=1`. -/
theorem odd_fourth_mod_sixteen {n : ℕ} (h : Odd n) : n ^ 4 % 16 = 1 := by
  rcases h with ⟨k, hk⟩
  subst hk
  rcases Nat.even_mul_succ_self k with ⟨m, hm⟩
  have h8 : (2 * k + 1) ^ 2 = 8 * m + 1 := by
    have hsq : (2 * k + 1) ^ 2 = 4 * (k * (k + 1)) + 1 := by ring
    rw [hsq, hm]; ring
  have h4 : (2 * k + 1) ^ 4 = ((2 * k + 1) ^ 2) ^ 2 := by
    rw [← pow_mul]
  rw [h4, h8]
  have hexp : (8 * m + 1) ^ 2 = 1 + 16 * (4 * m ^ 2 + m) := by ring
  rw [hexp, Nat.add_mul_mod_self_left]

theorem odd_fourth_sum_mod_sixteen {A B : ℕ}
    (hA : Odd A) (hB : Odd B) :
    (A ^ 4 + B ^ 4) % 16 = 2 := by
  rw [Nat.add_mod, odd_fourth_mod_sixteen hA, odd_fourth_mod_sixteen hB]

theorem two_dvd_odd_fourth_sum {A B : ℕ}
    (hA : Odd A) (hB : Odd B) :
    2 ∣ A ^ 4 + B ^ 4 := by
  have hn : A ^ 4 + B ^ 4 =
      16 * ((A ^ 4 + B ^ 4) / 16) + ((A ^ 4 + B ^ 4) % 16) :=
    (Nat.div_add_mod (A ^ 4 + B ^ 4) 16).symm
  rw [hn, odd_fourth_sum_mod_sixteen hA hB]
  exact dvd_add (dvd_mul_of_dvd_left (by decide : 2 ∣ 16) _)
    (by decide : 2 ∣ 2)

theorem not_four_dvd_odd_fourth_sum {A B : ℕ}
    (hA : Odd A) (hB : Odd B) :
    ¬ 4 ∣ A ^ 4 + B ^ 4 := by
  intro h4
  have h0 : (A ^ 4 + B ^ 4) % 4 = 0 := Nat.mod_eq_zero_of_dvd h4
  have h2 : (A ^ 4 + B ^ 4) % 4 = 2 := by
    have hmod := Nat.mod_mod_of_dvd (A ^ 4 + B ^ 4) (by decide : 4 ∣ 16)
    rw [← hmod, odd_fourth_sum_mod_sixteen hA hB]
  exact (by decide : ¬ (0 : ℕ) = 2) (h0.symm.trans h2)

theorem padicValNat_two_odd_fourth_sum {A B : ℕ}
    (hA : Odd A) (hB : Odd B) :
    padicValNat 2 (A ^ 4 + B ^ 4) = 1 := by
  haveI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  have hpos : 0 < A ^ 4 + B ^ 4 :=
    Nat.add_pos_left (pow_pos hA.pos 4) _
  have hge : 1 ≤ padicValNat 2 (A ^ 4 + B ^ 4) :=
    one_le_padicValNat_of_dvd hpos (two_dvd_odd_fourth_sum hA hB)
  have hle : padicValNat 2 (A ^ 4 + B ^ 4) ≤ 1 := by
    refine Nat.lt_succ_iff.mp (lt_of_not_ge ?_)
    intro htwo
    have h4 : 4 ∣ A ^ 4 + B ^ 4 := by
      have hpow := pow_padicValNat_dvd (p := 2) (n := A ^ 4 + B ^ 4)
      exact dvd_trans (pow_dvd_pow (2 : ℕ) htwo) hpow
    exact not_four_dvd_odd_fourth_sum hA hB h4
  exact le_antisymm hle hge

theorem padicValNat_two_sixteen : padicValNat 2 16 = 4 := by
  haveI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  have h : (16 : ℕ) = 2 ^ 4 := by decide
  rw [h, padicValNat.prime_pow]

theorem padicValNat_two_odd_pow {n k : ℕ} (h : Odd n) :
    padicValNat 2 (n ^ k) = 0 :=
  padicValNat.eq_zero_of_not_dvd (fun hdvd =>
    h.not_two_dvd_nat (Nat.Prime.dvd_of_dvd_pow Nat.prime_two hdvd))

/-- Kodaira `I₀*` discriminant valuation at `2` for odd `A,B`.
    Not a Mathlib `Kodaira` constructor. -/
theorem v2_Delta_eq_six_of_odd {A B : ℕ}
    (hA : Odd A) (hB : Odd B) :
    padicValNat 2 (freyDiscNat A B) = 6 := by
  haveI : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  have hA0 : A ≠ 0 := Nat.pos_iff_ne_zero.mp hA.pos
  have hB0 : B ≠ 0 := Nat.pos_iff_ne_zero.mp hB.pos
  have hA8n : A ^ 8 ≠ 0 := pow_ne_zero 8 hA0
  have hB8n : B ^ 8 ≠ 0 := pow_ne_zero 8 hB0
  have hsum0 : A ^ 4 + B ^ 4 ≠ 0 :=
    (Nat.add_pos_left (pow_pos (Nat.pos_of_ne_zero hA0) 4) _).ne'
  have hsqn : (A ^ 4 + B ^ 4) ^ 2 ≠ 0 := pow_ne_zero 2 hsum0
  have hrest : A ^ 8 * (B ^ 8 * (A ^ 4 + B ^ 4) ^ 2) ≠ 0 :=
    mul_ne_zero hA8n (mul_ne_zero hB8n hsqn)
  have hexp : freyDiscNat A B =
      16 * (A ^ 8 * (B ^ 8 * (A ^ 4 + B ^ 4) ^ 2)) := by
    simp [freyDiscNat, mul_assoc]
  have hsq : padicValNat 2 ((A ^ 4 + B ^ 4) ^ 2) = 2 := by
    rw [padicValNat.pow 2 hsum0, padicValNat_two_odd_fourth_sum hA hB]
  rw [hexp, padicValNat.mul (by decide : (16 : ℕ) ≠ 0) hrest,
    padicValNat.mul hA8n (mul_ne_zero hB8n hsqn),
    padicValNat.mul hB8n hsqn, padicValNat_two_sixteen,
    padicValNat_two_odd_pow (k := 8) hA,
    padicValNat_two_odd_pow (k := 8) hB, hsq]

theorem v2_Delta_1_1 : padicValNat 2 (freyDiscNat 1 1) = 6 :=
  v2_Delta_eq_six_of_odd odd_one odd_one

theorem v2_Delta_29_1 : padicValNat 2 (freyDiscNat 29 1) = 6 :=
  v2_Delta_eq_six_of_odd (by decide : Odd 29) odd_one

/-! ## `v₂₉(Δ)` on the `29 ∣ A` instance `(29,1)` (`I₈` valuation) -/

theorem twenty_nine_pow_four_add_one_mod :
    (29 ^ 4 + 1) % 29 = 1 := by
  decide

theorem not_twenty_nine_dvd_29_pow_four_add_one :
    ¬ 29 ∣ 29 ^ 4 + 1 := by
  rw [Nat.dvd_iff_mod_eq_zero, twenty_nine_pow_four_add_one_mod]
  decide

theorem v29_Delta_29_1 : padicValNat 29 (freyDiscNat 29 1) = 8 := by
  haveI : Fact (Nat.Prime 29) := ⟨by decide⟩
  have h16 : padicValNat 29 16 = 0 :=
    padicValNat.eq_zero_of_not_dvd (by decide : ¬ 29 ∣ 16)
  have h1 : padicValNat 29 (1 ^ 8) = 0 :=
    padicValNat.eq_zero_of_not_dvd (by decide : ¬ 29 ∣ 1)
  have h29n : (29 : ℕ) ^ 8 ≠ 0 := pow_ne_zero 8 (by decide : (29 : ℕ) ≠ 0)
  have h1n : (1 : ℕ) ^ 8 ≠ 0 := by decide
  have hsum0 : 29 ^ 4 + 1 ≠ 0 := by decide
  have hsqn : (29 ^ 4 + 1) ^ 2 ≠ 0 := pow_ne_zero 2 hsum0
  have hrest : 29 ^ 8 * (1 ^ 8 * (29 ^ 4 + 1) ^ 2) ≠ 0 :=
    mul_ne_zero h29n (mul_ne_zero h1n hsqn)
  have h29 : padicValNat 29 (29 ^ 8) = 8 := padicValNat.prime_pow 8
  have hsum : padicValNat 29 (29 ^ 4 + 1) = 0 :=
    padicValNat.eq_zero_of_not_dvd not_twenty_nine_dvd_29_pow_four_add_one
  have hsq : padicValNat 29 ((29 ^ 4 + 1) ^ 2) = 0 := by
    rw [padicValNat.pow 2 hsum0, hsum]
  have hexp : freyDiscNat 29 1 =
      16 * (29 ^ 8 * (1 ^ 8 * (29 ^ 4 + 1) ^ 2)) := by
    simp [freyDiscNat, mul_assoc]
  rw [hexp, padicValNat.mul (by decide : (16 : ℕ) ≠ 0) hrest,
    padicValNat.mul h29n (mul_ne_zero h1n hsqn),
    padicValNat.mul h1n hsqn, h16, h29, h1, hsq]

theorem frey_c4_29_1_eq :
    frey_c4 29 1 = 16 * ((29 : ℤ) ^ 8 + (29 : ℤ) ^ 4 + 1) := by
  unfold frey_c4 frey_A4 frey_B4
  ring

/-- `29 ∤ c₄(29,1)` because `c₄ = 16(29⁸ + 29⁴ + 1)` and
    `29⁸ + 29⁴ + 1 ≡ 1 (mod 29)`. `decide`, not
    `native_decide`. -/
theorem not_twenty_nine_dvd_frey_c4_29_1 :
    ¬ (29 : ℤ) ∣ frey_c4 29 1 := by
  rw [frey_c4_29_1_eq]
  intro h
  have h16 : ¬ (29 : ℤ) ∣ (16 : ℤ) := by decide
  have hP : Prime (29 : ℤ) :=
    Nat.prime_iff_prime_int.mp (by decide : Nat.Prime 29)
  have hrest : (29 : ℤ) ∣ ((29 : ℤ) ^ 8 + (29 : ℤ) ^ 4 + 1) :=
    (hP.dvd_or_dvd h).resolve_left h16
  have h8 : (29 : ℤ) ∣ (29 : ℤ) ^ 8 :=
    dvd_pow_self _ (by decide : 8 ≠ 0)
  have h4 : (29 : ℤ) ∣ (29 : ℤ) ^ 4 :=
    dvd_pow_self _ (by decide : 4 ≠ 0)
  have h84 : (29 : ℤ) ∣ ((29 : ℤ) ^ 8 + (29 : ℤ) ^ 4) :=
    dvd_add h8 h4
  have hone : (29 : ℤ) ∣ (1 : ℤ) :=
    (Int.dvd_add_right h84).mp (by
      simpa [add_assoc] using hrest)
  exact (by decide : ¬ (29 : ℤ) ∣ (1 : ℤ)) hone

theorem v29_c4_29_1 : padicValInt 29 (frey_c4 29 1) = 0 := by
  haveI : Fact (Nat.Prime 29) := ⟨by decide⟩
  exact padicValInt.eq_zero_of_not_dvd not_twenty_nine_dvd_frey_c4_29_1

/-! ## Packaged Tate / Néron display (not a Mathlib Néron model) -/

/-- Kodaira `I₀*` is recorded by its discriminant valuation `6`
    at `2` on odd `A,B`. Kodaira `I₈` is recorded by
    `v₂₉(Δ(29,1))=8`. The displayed Néron numeral is
    `928 = 2⁵ · 29`. This is **not** `KodairaType` / `NeronModel`
    in Mathlib 4.12. -/
theorem Tate_algorithm_at_2_and_29 :
    (2 : ℕ) ^ 5 * 29 = 928 ∧
      (32 : ℕ) * 29 = 928 ∧
      928 / 29 = 32 ∧
      (freyWeierstrass 1 1).c₄ = 48 ∧
      (freyWeierstrass 1 1).c₆ = 0 ∧
      padicValInt 29 (frey_c4 1 1) = 0 ∧
      padicValNat 2 (freyDiscNat 1 1) = 6 ∧
      padicValNat 2 (freyDiscNat 29 1) = 6 ∧
      padicValNat 29 (freyDiscNat 29 1) = 8 ∧
      padicValInt 29 (frey_c4 29 1) = 0 :=
  ⟨two_pow_five_mul_twenty_nine,
    thirty_two_mul_twenty_nine_here,
    nine_twenty_eight_div_twenty_nine_reexport,
    freyWeierstrass_c₄_1_1,
    freyWeierstrass_c₆_1_1,
    v29_c4_1_1,
    v2_Delta_1_1,
    v2_Delta_29_1,
    v29_Delta_29_1,
    v29_c4_29_1⟩

theorem LLL_nogo_persists_after_Tate_Neron_v28 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check two_pow_five_mul_twenty_nine
#check freyWeierstrass_c₆
#check v2_Delta_eq_six_of_odd
#check v29_Delta_29_1
#check BealMatveevBeal.Tate_Frey_Conductor_29.v29_Delta_eq_26_vC_reexport
#check Tate_algorithm_at_2_and_29
#print axioms Tate_algorithm_at_2_and_29
#print axioms v2_Delta_eq_six_of_odd
#print axioms LLL_nogo_persists_after_Tate_Neron_v28

end BealMatveevBeal.Tate_Frey_Conductor_29_Neron_inhabited
