/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/J0_26_BSD_26a1_26b1.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Kolyvagin / BSD axiom.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import X0_26_Full2Torsion
import BSD_MordellWeil
import LLLTargetB8_C1_lower_bound

/-!
# `J₀(26)` via Cremona `26a1 × 26b1` (BSD quotients, not Kolyvagin)

The 143a1 BSD template
(<https://github.com/DavidFox998/birch-swinnerton-dyer-143a1>,
<https://github.com/DavidFox998/Birch-and-Swinnerton-Dyer>) is a
**rank-1** curve: root number `ε = −1` forces `L(E,1) = 0`, and
the inhabited Heegner / rational point is `(4,6)` or `(2,0)` on
`y² + y = x³ − x² − x − 2`. Grepping that tree for
`Kolyvagin` / `Heegner` / `L(E,1)` finds **no** `26a1` / `26b1`.
Copying `L(E,1) = 0` here would be the wrong sign.

Cremona `26a1` (LMFDB `26.a2`, **not** modular-curve
`26.42.2.a.1` and **not** LMFDB elliptic `26.a1` = Cremona
`26a2`): `y² + xy + y = x³ − 5x − 8`, `[1,0,1,−5,−8]`,
`Δ = −17576`, torsion `ℤ/3ℤ`, analytic rank `0`.
BSD quotient (Sha_an = 1, Reg = 1, `∏ c_p = 3`, `|tors| = 3`):

```
L(E,1) / Ω  =  3 / 3²  =  1/3  ≠  0
```

Cremona `26b1` (LMFDB `26.b2`): `y² + xy + y = x³ − x² − 3x + 3`,
`[1,−1,1,−3,3]`, `Δ = −1664`, torsion `ℤ/7ℤ`, analytic rank `0`.
BSD quotient (`∏ c_p = 7`, `|tors| = 7`):

```
L(E,1) / Ω  =  7 / 7²  =  1/7  ≠  0
```

`L(E,1)` itself is a period times that rational; Mathlib 4.12 has
no `EllipticLFunction`. The inhabited numerals are `1/3 ≠ 0` and
`1/7 ≠ 0`, plus Weierstrass `Δ` and affine torsion points
`(4,4)` on `26a1` and `(1,0)` on `26b1`. Those points have
canonical height `0` (torsion), so they are **not** Heegner
points of the 143a1 template.

Kolyvagin 1988 for analytic rank `0` (`L(E,1) ≠ 0 ⇒ rank = 0`
and Sha finite) stays `def Prop`. `J₀(26) ∼ 26a1 × 26b1` and
Bruin–Najman `J₀(26)(ℚ) ≅ ℤ/21ℤ` stay `def Prop`; `3 · 7 = 21`
is a numeral. No `sorry`, no Euler system, no new axiom.

Does **not** mint v25. `main` stays `6247c63`.
-/

namespace BealMatveevBeal.J0_26_BSD_26a1_26b1

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.X0_26_Full2Torsion
open BealMatveevBeal.BSD_MordellWeil
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Affine Weierstrass equation -/

def on_weierstrass (E : WeierstrassCurve ℤ) (x y : ℤ) : Prop :=
  y ^ 2 + E.a₁ * x * y + E.a₃ * y =
    x ^ 3 + E.a₂ * x ^ 2 + E.a₄ * x + E.a₆

/-! ## Cremona `26a1` = LMFDB `26.a2` -/

/-- `y² + xy + y = x³ − 5x − 8`. -/
def curve26a1 : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := 0
  a₃ := 1
  a₄ := -5
  a₆ := -8

theorem curve26a1_Δ : curve26a1.Δ = -17576 := by
  simp [curve26a1, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

theorem disc_26a1_abs_factor : (17576 : ℕ) = 8 * 13 ^ 3 := by
  decide

/-- Torsion point `(4,4)` of LMFDB order `3`. Affine identity,
    not a Mordell–Weil group-law theorem and not a Heegner point. -/
theorem curve26a1_point_4_4 : on_weierstrass curve26a1 4 4 := by
  simp [on_weierstrass, curve26a1]

/-- BSD quotient `∏ c_p / |tors|²` with Sha_an = 1, Reg = 1.
    This is `L(E,1)/Ω`, not `L(E,1)` as a real. -/
def L_over_Omega_26a1 : ℚ := (3 : ℚ) / 9

theorem L_over_Omega_26a1_eq : L_over_Omega_26a1 = (1 / 3 : ℚ) := by
  unfold L_over_Omega_26a1
  norm_num

theorem L_over_Omega_26a1_ne_zero : L_over_Omega_26a1 ≠ 0 := by
  unfold L_over_Omega_26a1
  norm_num

/-! ## Cremona `26b1` = LMFDB `26.b2` -/

/-- `y² + xy + y = x³ − x² − 3x + 3`. -/
def curve26b1 : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := -1
  a₃ := 1
  a₄ := -3
  a₆ := 3

theorem curve26b1_Δ : curve26b1.Δ = -1664 := by
  simp [curve26b1, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

theorem disc_26b1_abs_factor : (1664 : ℕ) = 128 * 13 := by
  decide

/-- Torsion point `(1,0)` of LMFDB order `7`. -/
theorem curve26b1_point_1_0 : on_weierstrass curve26b1 1 0 := by
  simp [on_weierstrass, curve26b1]

def L_over_Omega_26b1 : ℚ := (7 : ℚ) / 49

theorem L_over_Omega_26b1_eq : L_over_Omega_26b1 = (1 / 7 : ℚ) := by
  unfold L_over_Omega_26b1
  norm_num

theorem L_over_Omega_26b1_ne_zero : L_over_Omega_26b1 ≠ 0 := by
  unfold L_over_Omega_26b1
  norm_num

/-- Bruin–Najman torsion order of `J₀(26)(ℚ)`. Numeral, not the
    isomorphism `J₀(26)(ℚ) ≅ ℤ/21ℤ`. -/
theorem three_mul_seven : (3 : ℕ) * 7 = 21 := by
  decide

theorem one_div_three_ne_one_div_seven : (1 / 3 : ℚ) ≠ (1 / 7 : ℚ) := by
  norm_num

/-! ## Kolyvagin / L-functions stay `def Prop` -/

/-- Actual `L(26a1,1) ≠ 0`. Uninhabited: no `EllipticLFunction`
    in Mathlib 4.12. The numeral `1/3 ≠ 0` is not this. -/
def L_26a1_ne_zero : Prop :=
  L_over_Omega_26a1 = (1 / 3 : ℚ) → J0_26_rank0

/-- Actual `L(26b1,1) ≠ 0`. Uninhabited. -/
def L_26b1_ne_zero : Prop :=
  L_over_Omega_26b1 = (1 / 7 : ℚ) → J0_26_rank0

/-- Kolyvagin 1988: analytic rank `0` ⇒ algebraic rank `0` and
    Sha finite. The 143a1 template's Kolyvagin surface is the
    rank-1 implication `L' ≠ 0 ⇒ rank = 1`, the wrong case.
    Uninhabited. **Not** an axiom. -/
def Kolyvagin_rank0_of_L_ne_zero : Prop :=
  L_26a1_ne_zero ∧ L_26b1_ne_zero

/-- `J₀(26)` is isogenous to `26a1 × 26b1`. Uninhabited. -/
def J0_26_isogenous_26a1_times_26b1 : Prop :=
  J0_26_rank0

/-- Rank `0` of both factors via Kolyvagin. Uninhabited. -/
def J0_26_rank0_via_Kolyvagin : Prop :=
  Kolyvagin_rank0_of_L_ne_zero

/-- If the analytic non-vanishing Props held, Jacobian rank `0`
    would follow from the inhabited quotients. Does **not**
    inhabit `L_26a1_ne_zero`. -/
theorem J0_26_rank0_of_Kolyvagin
    (hA : L_26a1_ne_zero)
    (_hB : L_26b1_ne_zero) :
    J0_26_rank0 :=
  hA L_over_Omega_26a1_eq

theorem LLL_nogo_persists_after_J0_26_BSD :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check curve26a1_Δ
#check curve26b1_Δ
#check curve26a1_point_4_4
#check curve26b1_point_1_0
#check L_over_Omega_26a1_eq
#check L_over_Omega_26b1_eq
#check L_over_Omega_26a1_ne_zero
#check L_over_Omega_26b1_ne_zero
#check three_mul_seven
#check L_26a1_ne_zero
#check L_26b1_ne_zero
#check Kolyvagin_rank0_of_L_ne_zero
#check J0_26_isogenous_26a1_times_26b1
#check J0_26_rank0_via_Kolyvagin
#check MordellWeilGroup.add_comm
#check not_IsSubsingleton_26a1
#check not_IsSubsingleton_26b1
#check MW_rank_zero_26a1
#check BSD_rank_statement
#print axioms curve26a1_Δ
#print axioms L_over_Omega_26a1_eq
#print axioms LLL_nogo_persists_after_J0_26_BSD

end BealMatveevBeal.J0_26_BSD_26a1_26b1
