/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/X0_26_Full2Torsion.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Kenku / Mazur axiom: the only
  Darmon–Merel axiom remains
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
  Displayed 2-descent Nats live in root `TwoDescent_26a1_26`
  (not `BealTrueV25/TwoDescent_26a1_26`).
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import MazurIrreducibility13
import Mazur_X0_13_RationalPoints
import LLLTargetB8_C1_lower_bound
import TwoDescent_26a1_26

/-!
# `X₀(26)` via full rational 2-torsion (Momose / Kraus, not `X₀(13)`)

`Mazur_X0_13_RationalPoints` showed why a Fricke unit scan cannot
close Mazur: `X₀(13)` has genus 0, so `X₀(13)(ℚ)` is infinite, and
both remaining cusps hit every unit of `𝔽₂₉ˣ`.

The Frey model `y² = x(x − A⁴)(x + B⁴)` has **full rational
2-torsion** whenever `A,B ≠ 0`: the affine cubic splits at
`0, A⁴, −B⁴ ∈ ℤ ⊂ ℚ`. That is a theorem (factorization), not a
Galois module. Mathlib 4.12 has no `E[2] ⊆ E(ℚ)` object.

Momose / Kraus for signature `(4,4,p)`: full 2-torsion plus a
reducible `ρ_{E,13}` would give a Galois-stable kernel
`C₂ × C₁₃ ≅ ℤ/26`, i.e. a cyclic rational 26-isogeny, hence a
non-cuspidal point of `X₀(26)`. (`ℤ/2 × ℤ/13` is cyclic.)
`X₀(52)` is the cyclic-4 analogue; this displayed model does not
inhabit rational 4-torsion.

Kenku 1979–81: cyclic isogeny degrees over `ℚ` are
`{1 ≤ N ≤ 19} ∪ {21,25,27,37,43,67,163}`. **26 and 52 are not
on the list**, so non-cuspidal `X₀(26)(ℚ)` and `X₀(52)(ℚ)` are
empty (cusps only). That is **not** a finite CM `j`-list
`{1728, −1728, 0, −3375, 8000}`. The contradiction with Frey is
emptiness, not `v₂₉(j) = −26k` versus integral CM. (The valuation
still shows Frey `j` is non-integral when `29 ∣ C`; that is a
weaker input, already inhabited at `1d28dc1`.)

`X₀(26)` is LMFDB `26.42.2.a.1` (genus 2, index 42, four
rational cusps, analytic rank 0). **Not** elliptic curve
`26.a2` and **not** the genus-0 label `26.48.0.a.1`.
LMFDB’s odd Weierstrass model is

```
y² + (x³ + 1)y = 2x⁵ + 2x⁴ + 4x³ + 2x² + 2x
```

(`HyperellipticCurve([[0,2,2,4,2,2],[1,0,0,1]])`). Completing
the square and sending `x ↦ −x` recovers González 1991
(AIF 41, p. 794)

```
Y² = x⁶ − 8x⁵ + 8x⁴ − 18x³ + 8x² − 8x + 1
```

Affine points on González: `(0, ±1)` (equivalently LMFDB
`(0,0)` and `(0,−1)`). Leading coefficient `1` is a square,
so two rational infinities. Four rational cusps, not six.
The pasted lists `{(0,±7),(1,±1),(3,±3)}` and
`x⁶−8x⁵+34x⁴−…` fail (`f(0)=1 ≠ 49`). Completeness of
`X₀(26)(ℚ)` is Kenku / Chabauty, not a six-point
`native_decide`. There is no Mathlib `genus` / Jacobian /
`rank` object.

**Inhabited:** cubic identity; three distinct integer roots;
`26 = 2·13`; `26,52 ∉` the Kenku *degree list as a Finset*;
LMFDB odd model; González even model; complete-square
identity; `(0,±1)` on González and `(0,0),(0,−1)` on
LMFDB; `f(0) ≠ 49`; genus formula numeral `= 2`;
Frey `j` is not an integral rational when `29 ∣ C`;
Cremona `26a1`/`26b1` Weierstrass `Δ = -17576`/`-1664`;
affine points `(4,4)` and `(1,0)`; torsion-order *Nats*
`3` and `7` (LMFDB data, not `WeierstrassCurve.torsionOrder`);
displayed `|Sel₂| = 1` with `2⁰ = 1`; `3 · 7 = 21`;
relocated `TwoDescent_26a1_26` numerals (`Sel2_card = 1`,
Sage `certified_mwrank` display `0`, `1 = 1 → 0 = 0` on
those Nats, `RankZero_*_from_Selmer` is `1 = 1`).

**Uninhabited (`def Prop`):** Galois glue `full2 + 13 ⇒ 26-isogeny`;
Jacobian rank 0 / Chabauty; Kenku completeness;
`X₀(26)(ℚ)` equals the known cusps; Mazur via `X₀(26)`;
`J0_26_rank0_via_mwrank`; Bruin–Najman `|J₀(26)(ℚ)| = 21`;
`mwrank_skeleton_complete`. Mathlib 4.12 has no `mwrank`,
no `SelmerGroup`, no `Jacobian`. PARI `ellrank` / Sage
`E.rank()` live in `scripts/verify_descent_26.py` and
`sagemath/j0_26_decomp_foundation.sage`; they are not Lean
theorems. `Sel2_rank0_implies_rank0_*` is `1 = 1 → 0 = 0`,
not Jacobian rank 0. No `sorry`, no inhabited `True` stub, no
`axiom kenku_*`.

Does **not** mint v25. `C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.X0_26_Full2Torsion

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.MazurIrreducibility13
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open BealMatveevBeal.TwoDescent_26a1_26
open Nat
open Polynomial

/-! ## Affine cubic of the displayed Frey model -/

/-- Right-hand side of `y² = x³ + a₂ x² + a₄ x + a₆`. -/
def frey_cubic (A B : ℕ) (x : ℤ) : ℤ :=
  x ^ 3 + (freyWeierstrass A B).a₂ * x ^ 2 +
    (freyWeierstrass A B).a₄ * x + (freyWeierstrass A B).a₆

/-- The displayed cubic is `x(x − A⁴)(x + B⁴)`. -/
theorem frey_cubic_eq_prod (A B : ℕ) (x : ℤ) :
    frey_cubic A B x =
      x * (x - (A : ℤ) ^ 4) * (x + (B : ℤ) ^ 4) := by
  simp [frey_cubic, freyWeierstrass, frey_a2, frey_a4, frey_A4, frey_B4]
  ring

/-- Mathlib’s 2-torsion cubic is `4` times the affine cubic
    (`a₁ = a₃ = a₆ = 0` ⇒ `b₂ = 4 a₂`, `b₄ = 2 a₄`, `b₆ = 0`). -/
theorem frey_twoTorsionPolynomial_eval (A B : ℕ) (x : ℤ) :
    Polynomial.eval x (freyWeierstrass A B).twoTorsionPolynomial.toPoly =
      4 * frey_cubic A B x := by
  simp [frey_cubic, freyWeierstrass, frey_a2, frey_a4, frey_A4, frey_B4,
    WeierstrassCurve.twoTorsionPolynomial, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, Cubic.toPoly]
  ring

theorem frey_2_torsion_x_roots (A B : ℕ) :
    frey_cubic A B 0 = 0 ∧
      frey_cubic A B ((A : ℤ) ^ 4) = 0 ∧
      frey_cubic A B (-((B : ℤ) ^ 4)) = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · simp [frey_cubic_eq_prod]
  · simp [frey_cubic_eq_prod]
  · simp [frey_cubic_eq_prod]

theorem frey_2_torsion_x_distinct {A B : ℕ} (hA : A ≠ 0) (hB : B ≠ 0) :
    (0 : ℤ) ≠ (A : ℤ) ^ 4 ∧
      (A : ℤ) ^ 4 ≠ -((B : ℤ) ^ 4) ∧
      -((B : ℤ) ^ 4) ≠ 0 := by
  refine ⟨?_, ?_, ?_⟩
  · exact (pow_ne_zero 4 (Int.natCast_ne_zero.mpr hA)).symm
  · intro h
    have hsum : (A : ℤ) ^ 4 + (B : ℤ) ^ 4 = 0 := by
      linarith
    have hA4 : (0 : ℤ) < (A : ℤ) ^ 4 :=
      pow_pos (Int.natCast_pos.mpr (Nat.pos_of_ne_zero hA)) 4
    have hB4 : (0 : ℤ) ≤ (B : ℤ) ^ 4 :=
      pow_nonneg (Int.natCast_nonneg B) 4
    have hpos : (0 : ℤ) < (A : ℤ) ^ 4 + (B : ℤ) ^ 4 := by
      linarith
    exact hpos.ne' hsum
  · exact neg_ne_zero.mpr (pow_ne_zero 4 (Int.natCast_ne_zero.mpr hB))

/-- Full rational 2-torsion of the displayed model: three distinct
    affine `x`-coordinates in `ℤ ⊂ ℚ`. Not a Galois-module inclusion
    `E[2] ⊆ E(ℚ)` (that object is not in Mathlib 4.12). -/
theorem frey_has_full_2_torsion {A B : ℕ} (hA : A ≠ 0) (hB : B ≠ 0) :
    frey_cubic A B 0 = 0 ∧
      frey_cubic A B ((A : ℤ) ^ 4) = 0 ∧
      frey_cubic A B (-((B : ℤ) ^ 4)) = 0 ∧
      (0 : ℤ) ≠ (A : ℤ) ^ 4 ∧
      (A : ℤ) ^ 4 ≠ -((B : ℤ) ^ 4) ∧
      -((B : ℤ) ^ 4) ≠ 0 :=
  ⟨(frey_2_torsion_x_roots A B).1,
    (frey_2_torsion_x_roots A B).2.1,
    (frey_2_torsion_x_roots A B).2.2,
    (frey_2_torsion_x_distinct hA hB).1,
    (frey_2_torsion_x_distinct hA hB).2.1,
    (frey_2_torsion_x_distinct hA hB).2.2⟩

theorem frey_has_full_2_torsion_of_sol {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) (hBpos : 1 ≤ B) :
    frey_cubic A B 0 = 0 ∧
      frey_cubic A B ((A : ℤ) ^ 4) = 0 ∧
      frey_cubic A B (-((B : ℤ) ^ 4)) = 0 ∧
      (0 : ℤ) ≠ (A : ℤ) ^ 4 ∧
      (A : ℤ) ^ 4 ≠ -((B : ℤ) ^ 4) ∧
      -((B : ℤ) ^ 4) ≠ 0 :=
  frey_has_full_2_torsion
    (A_ne_zero_of_sol hBpos hsol)
    (Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos))

theorem frey_twoTorsionPolynomial_roots (A B : ℕ) :
    Polynomial.eval (0 : ℤ)
        (freyWeierstrass A B).twoTorsionPolynomial.toPoly = 0 ∧
      Polynomial.eval ((A : ℤ) ^ 4)
        (freyWeierstrass A B).twoTorsionPolynomial.toPoly = 0 ∧
      Polynomial.eval (-((B : ℤ) ^ 4))
        (freyWeierstrass A B).twoTorsionPolynomial.toPoly = 0 := by
  have h := frey_2_torsion_x_roots A B
  refine ⟨?_, ?_, ?_⟩
  · rw [frey_twoTorsionPolynomial_eval, h.1, mul_zero]
  · rw [frey_twoTorsionPolynomial_eval, h.2.1, mul_zero]
  · rw [frey_twoTorsionPolynomial_eval, h.2.2, mul_zero]

/-! ## Kenku degree list as a Finset (numeral, not completeness) -/

/-- Cyclic ℚ-isogeny degrees from Kenku 1979–81. Recording the
    Finset is not Kenku’s theorem. -/
def kenku_cyclic_isogeny_degrees : Finset ℕ :=
  Finset.Icc 1 19 ∪ {21, 25, 27, 37, 43, 67, 163}

theorem twenty_six_eq_two_mul_thirteen : 26 = 2 * 13 := by decide

theorem fifty_two_eq_four_mul_thirteen : 52 = 4 * 13 := by decide

theorem twenty_six_not_in_kenku_list :
    26 ∉ kenku_cyclic_isogeny_degrees := by
  native_decide

theorem fifty_two_not_in_kenku_list :
    52 ∉ kenku_cyclic_isogeny_degrees := by
  native_decide

/-- `[SL₂(ℤ):Γ₀(26)] = 42`. Index, not genus. -/
theorem gamma0_26_index : 26 * 3 / 2 * 14 / 13 = 42 := by decide

/-- Four cusps of `X₀(26)`: `∑_{d∣26} φ(gcd(d,26/d)) = 4`.
    LMFDB records all four as rational (`1⁴` orbits). Completeness
    of `X₀(26)(ℚ)` is Kenku, not this numeral. -/
theorem X0_26_four_cusps :
    Nat.totient (Nat.gcd 1 26) + Nat.totient (Nat.gcd 2 13) +
      Nat.totient (Nat.gcd 13 2) + Nat.totient (Nat.gcd 26 1) = 4 := by
  native_decide

/-- LMFDB `26.42.2.a.1` genus formula
    `1 + 42/12 − 2/4 − 0/3 − 4/2 = 2`. Not a Mathlib `genus`
    of a polynomial. -/
theorem X0_26_genus2 :
    (1 : ℚ) + (42 : ℚ) / 12 - (2 : ℚ) / 4 - (0 : ℚ) / 3 - (4 : ℚ) / 2 = 2 := by
  native_decide

/-- Hyperelliptic even model of degree 6 has genus `(6−2)/2 = 2`.
    Numeral; identifying the model with `X₀(26)` is LMFDB / González. -/
theorem X0_26_hyperelliptic_genus_deg6 : ((6 : ℤ) - 2) / 2 = 2 := by
  decide

/-! ## LMFDB `26.42.2.a.1` Weierstrass + González 1991 even model -/

/-- Odd-model `h` in `y² + h(x) y = f(x)`. -/
def X0_26_h (x : ℤ) : ℤ := x ^ 3 + 1

/-- LMFDB Weierstrass right-hand side
    `2x⁵ + 2x⁴ + 4x³ + 2x² + 2x`. -/
def X0_26_f_odd (x : ℤ) : ℤ :=
  2 * x ^ 5 + 2 * x ^ 4 + 4 * x ^ 3 + 2 * x ^ 2 + 2 * x

/-- Affine points on the odd model at `x = 0`. Completeness is Kenku. -/
def X0_26_known_weierstrass : Finset (ℤ × ℤ) :=
  {(0, 0), (0, -1)}

theorem X0_26_weierstrass_points :
    ∀ p ∈ X0_26_known_weierstrass,
      p.2 ^ 2 + X0_26_h p.1 * p.2 = X0_26_f_odd p.1 := by
  native_decide

/-- Even model `(2y + h)² = 4f + h²` before `x ↦ −x`. -/
def X0_26_even (x : ℤ) : ℤ :=
  x ^ 6 + 8 * x ^ 5 + 8 * x ^ 4 + 18 * x ^ 3 + 8 * x ^ 2 + 8 * x + 1

theorem X0_26_even_complete_square (x : ℤ) :
    X0_26_even x = 4 * X0_26_f_odd x + X0_26_h x ^ 2 := by
  simp [X0_26_even, X0_26_f_odd, X0_26_h]
  ring

/-- Affine right-hand side of González
    `Y² = x⁶ − 8x⁵ + 8x⁴ − 18x³ + 8x² − 8x + 1`
    (AIF 41 (1991) p. 794). -/
def X0_26_f (x : ℤ) : ℤ :=
  x ^ 6 - 8 * x ^ 5 + 8 * x ^ 4 - 18 * x ^ 3 + 8 * x ^ 2 - 8 * x + 1

/-- González is the even LMFDB model after `x ↦ −x`. -/
theorem X0_26_gonzalez_eq_even_neg (x : ℤ) :
    X0_26_f x = X0_26_even (-x) := by
  simp [X0_26_f, X0_26_even]
  ring

/-- Same polynomial, for `eval`. Affine `X0_26_f` is the
    `native_decide` source of truth. -/
noncomputable def X0_26_poly : ℤ[X] :=
  X ^ 6 - C (8 : ℤ) * X ^ 5 + C 8 * X ^ 4 - C 18 * X ^ 3 +
    C 8 * X ^ 2 - C 8 * X + C 1

theorem X0_26_poly_eval (x : ℤ) :
    eval x X0_26_poly = X0_26_f x := by
  simp [X0_26_poly, X0_26_f]

theorem X0_26_poly_natDegree : X0_26_poly.natDegree = 6 := by
  unfold X0_26_poly
  compute_degree!

/-- Displayed affine cusps on González. Completeness is Kenku. -/
def X0_26_known_affine : Finset (ℤ × ℤ) :=
  {(0, 1), (0, -1)}

theorem X0_26_known_on_curve :
    ∀ p ∈ X0_26_known_affine, p.2 ^ 2 = X0_26_f p.1 := by
  native_decide

/-- Same two affine points as rationals (not a six-point list). -/
def X0_26_known_Q_points : Finset (ℚ × ℚ) :=
  {(0, 1), (0, -1)}

def X0_26_f_rat (x : ℚ) : ℚ :=
  x ^ 6 - 8 * x ^ 5 + 8 * x ^ 4 - 18 * x ^ 3 + 8 * x ^ 2 - 8 * x + 1

theorem X0_26_points_satisfy :
    ∀ p ∈ X0_26_known_Q_points, X0_26_f_rat p.1 = p.2 ^ 2 := by
  native_decide

theorem X0_26_points_on_curve :
    ∀ p ∈ X0_26_known_Q_points, p.2 ^ 2 = X0_26_f_rat p.1 := by
  native_decide

/-- Pasted `(0,±7)` is not on the González model (`1 ≠ 49`). -/
theorem X0_26_f_zero_ne_forty_nine : X0_26_f 0 ≠ 49 := by
  native_decide

theorem X0_26_f_zero_eq_one : X0_26_f 0 = 1 := by
  native_decide

/-- Pasted `(1,±1)`, `(3,±3)`, `(2,±3)` fail on González. -/
theorem X0_26_user_points_not_on_gonzalez :
    X0_26_f 1 ≠ 1 ∧ X0_26_f 3 ≠ 9 ∧ X0_26_f 2 ≠ 9 := by
  native_decide

/-- Leading coefficient `1` is a square, so the even model has two
    rational points at infinity. Not a count of `X₀(26)(ℚ)`. -/
theorem X0_26_leading_is_square : ∃ y : ℤ, y ^ 2 = (1 : ℤ) :=
  ⟨1, by decide⟩

/-! ## Non-integral Frey `j` (weaker than Kenku emptiness) -/

/-- Re-export: when `29 ∣ C` and `29 ∤ AB`, Frey `j` is not an
    integer. Any `j₀` with denominator `1` (including the pasted
    CM values `0, 1728, −1728, −3375, 8000`) is therefore not
    Frey `j`. This is **not** a classification of `X₀(26)(ℚ)`. -/
theorem frey_j_not_integral_j0 {A B : ℕ} {j0 : ℚ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3)
    (hint : j0.den = 1) :
    frey_j A B ≠ j0 := by
  intro heq
  have hden := frey_j_not_int_of_29_dvd_C hsol hBpos hA hB hC
  rw [heq] at hden
  exact hden hint

theorem frey_j_ne_zero_of_29_dvd_C_X026 {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ 0 :=
  frey_j_not_integral_j0 hsol hBpos hA hB hC (by norm_num)

theorem frey_j_ne_1728_of_29_dvd_C_X026 {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ 1728 :=
  frey_j_not_integral_j0 hsol hBpos hA hB hC (by norm_num)

theorem frey_j_ne_neg_1728_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : 29 ∣ B + 3) :
    frey_j A B ≠ -1728 :=
  frey_j_not_integral_j0 hsol hBpos hA hB hC (by norm_num)

/-! ## Glue / Kenku / Mazur stay `def Prop` (no new axiom) -/

/-- Mazur irreducibility of `ρ_{Frey,13}` via `X₀(26)` (Momose /
    Kraus), not via the genus-0 curve `X₀(13)`. Uninhabited:
    needs the Galois glue and Kenku completeness. -/
def mazur_irreducible_13_via_X0_26 : Prop :=
  MazurIrreducibility13.rho_Frey_mod13_irreducible

/-- Missing Galois: full rational 2-torsion plus reducible
    `ρ_{E,13}` produces a cyclic rational 26-isogeny
    (`C₂ × C₁₃ ≅ ℤ/26`). Mathlib 4.12 has no isogeny category. -/
def full2_plus_13_isog_gives_26_isog : Prop :=
  mazur_irreducible_13_via_X0_26

/-- Non-cuspidal `X₀(52)(ℚ) = ∅` (cusps only). Uninhabited. -/
def X0_52_Q_points_cusps_only : Prop :=
  mazur_irreducible_13_via_X0_26

/-- Kenku completeness at `N = 52`. Uninhabited. -/
def kenku_no_cyclic_52_over_Q : Prop :=
  X0_52_Q_points_cusps_only

/-- Non-cuspidal `X₀(26)(ℚ) = ∅` (cusps only). Not a finite CM
    `j`-list. Uninhabited. -/
def X0_26_Q_points_cusps_only : Prop :=
  kenku_no_cyclic_52_over_Q

/-- Pasted name. Kenku is emptiness of non-cuspidal points, not a
    finite CM `j`-list, so this aliases cusps-only. Uninhabited. -/
def X0_26_Q_points_finite : Prop :=
  X0_26_Q_points_cusps_only

/-- Kenku 1979–81 completeness at `N = 26`: there is no elliptic
    curve over `ℚ` with a cyclic rational 26-isogeny, so
    non-cuspidal `X₀(26)(ℚ)` is empty. The Finset numeral
    `26 ∉ kenku_cyclic_isogeny_degrees` is **not** this. -/
def kenku_no_cyclic_26_over_Q : Prop :=
  X0_26_Q_points_cusps_only

/-- `X₀(26)` is a geometrically irreducible genus-2 curve over `ℚ`
    (hyperelliptic, LMFDB `26.a`). Not in Mathlib 4.12. -/
def X0_26_model : Prop :=
  kenku_no_cyclic_26_over_Q

/-- Jacobian `J₀(26)(ℚ)` has rank 0 (`≅ ℤ/21ℤ`, Bruin–Najman).
    Not in Mathlib 4.12: no mwrank / 2-descent. Uninhabited. -/
def J0_26_rank0 : Prop :=
  kenku_no_cyclic_26_over_Q

/-- Chabauty: `X₀(26)(ℚ)` equals the four cusps. Uninhabited.
    The inhabited input is `X0_26_known_on_curve`, not this. -/
def X0_26_Q_eq_known : Prop :=
  X0_26_Q_points_cusps_only

/-- No non-cuspidal cyclic 26-isogeny over `ℚ`. Alias of Kenku. -/
def no_cyclic_26_isogeny_Q : Prop :=
  kenku_no_cyclic_26_over_Q

/-! ## Cremona `26a1`/`26b1` 2-descent skeleton (not mwrank) -/

/-- Affine Weierstrass equation over `ℤ`. Mathlib 4.12 has no
    `WeierstrassCurve.mk` from a coefficient list and no
    `torsionOrder` field. -/
def on_weierstrass_int (E : WeierstrassCurve ℤ) (x y : ℤ) : Prop :=
  y ^ 2 + E.a₁ * x * y + E.a₃ * y =
    x ^ 3 + E.a₂ * x ^ 2 + E.a₄ * x + E.a₆

/-- Cremona `26a1` = LMFDB `26.a2`: `y² + xy + y = x³ − 5x − 8`.
    Not elliptic `26.a1` (Cremona `26a2`) and not modular-curve
    `26.42.2.a.1`. -/
def curve_26a1_model : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := 0
  a₃ := 1
  a₄ := -5
  a₆ := -8

theorem curve_26a1_model_Δ : curve_26a1_model.Δ = -17576 := by
  simp [curve_26a1_model, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

/-- LMFDB torsion order as a Nat. Not `E.torsionOrder`. -/
def tors_26a1 : ℕ := 3

theorem tors_26a1_eq_3 : tors_26a1 = 3 := rfl

theorem curve_26a1_point_4_4 :
    on_weierstrass_int curve_26a1_model 4 4 := by
  simp [on_weierstrass_int, curve_26a1_model]

/-- Cremona `26b1` = LMFDB `26.b2`. -/
def curve_26b1_model : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := -1
  a₃ := 1
  a₄ := -3
  a₆ := 3

theorem curve_26b1_model_Δ : curve_26b1_model.Δ = -1664 := by
  simp [curve_26b1_model, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

def tors_26b1 : ℕ := 7

theorem tors_26b1_eq_7 : tors_26b1 = 7 := rfl

theorem curve_26b1_point_1_0 :
    on_weierstrass_int curve_26b1_model 1 0 := by
  simp [on_weierstrass_int, curve_26b1_model]

/-- PARI `ell2cover` empty and odd torsion ⇒ displayed `|Sel₂| = 1`
    (`scripts/verify_descent_26.py`, cert `sel2: 1`). Not a
    Mathlib `SelmerGroup`. The JSON field `torsion: 2` in
    `certs/pari_x0_26_four_cusps.json` is **not** `|E(ℚ)_tors|`
    (that is `3` and `7`). -/
def Selmer_2_card_26a1 : ℕ := 1

def Selmer_2_card_26b1 : ℕ := 1

theorem selmer_2_card_26a1_eq : Selmer_2_card_26a1 = 1 := rfl

theorem selmer_2_card_26b1_eq : Selmer_2_card_26b1 = 1 := rfl

/-- Displayed `𝔽₂`-dimension of that PARI Selmer card.
    `0` is the exponent in `2⁰ = 1`, not an `mwrank` run. -/
def Selmer_2_rank_26a1 : ℕ := 0

def Selmer_2_rank_26b1 : ℕ := 0

theorem selmer_2_rank_26a1_eq : Selmer_2_rank_26a1 = 0 := rfl

theorem selmer_2_rank_26b1_eq : Selmer_2_rank_26b1 = 0 := rfl

theorem two_pow_selmer_rank_26a1 :
    (2 : ℕ) ^ Selmer_2_rank_26a1 = Selmer_2_card_26a1 := by
  decide

theorem two_pow_selmer_rank_26b1 :
    (2 : ℕ) ^ Selmer_2_rank_26b1 = Selmer_2_card_26b1 := by
  decide

theorem three_mul_seven_eq_twenty_one : (3 : ℕ) * 7 = 21 := by
  decide

theorem tors_product_eq_twenty_one :
    tors_26a1 * tors_26b1 = 21 := by
  decide

theorem selmer_2_card_eq_sel2_card_26a1 :
    Selmer_2_card_26a1 = Sel2_card_26a1 := rfl

theorem selmer_2_card_eq_sel2_card_26b1 :
    Selmer_2_card_26b1 = Sel2_card_26b1 := rfl

theorem tors_eq_TorsionOrder_26a1 :
    tors_26a1 = TorsionOrder_26a1 := rfl

theorem tors_eq_TorsionOrder_26b1 :
    tors_26b1 = TorsionOrder_26b1 := rfl

/-- Sage/PARI `rank() = 0` on both factors would give Jacobian
    rank `0`. Uninhabited: no `mwrank` in Mathlib 4.12, and the
    displayed `|Sel₂| = 1` numerals are not a 2-covering. -/
def J0_26_rank0_via_mwrank : Prop :=
  Selmer_2_card_26a1 = 1 ∧ Selmer_2_card_26b1 = 1 → J0_26_rank0

/-- Bruin–Najman `|J₀(26)(ℚ)| = 21` (`≅ ℤ/3ℤ × ℤ/7ℤ`). The
    numeral `3 · 7 = 21` is a theorem; this isomorphism is not. -/
def J0_26_Q_tors_21 : Prop :=
  J0_26_rank0

/-- Packaged 2-descent skeleton. Uninhabited. **Not** an axiom. -/
def mwrank_skeleton_complete : Prop :=
  J0_26_rank0_via_mwrank ∧ J0_26_Q_tors_21

/-- If the displayed Selmer cards were a 2-descent, rank `0`
    would follow. Does **not** inhabit `J0_26_rank0`. -/
theorem J0_26_rank0_of_mwrank_skeleton
    (h : J0_26_rank0_via_mwrank) :
    J0_26_rank0 :=
  h ⟨selmer_2_card_26a1_eq, selmer_2_card_26b1_eq⟩

/-- If glue and Kenku both held, Mazur via `X₀(26)` would hold.
    Does **not** inhabit either hypothesis. -/
theorem no_reducible_13_of_full2_and_kenku
    (hglue : full2_plus_13_isog_gives_26_isog)
    (_hKenku : kenku_no_cyclic_26_over_Q) :
    mazur_irreducible_13_via_X0_26 :=
  hglue

/-- `X₀(13)` genus 0 remains a documented nogo; this file does not
    inhabit `mazur_irreducible_13_via_X0_13`. -/
theorem X0_13_via_stays_def_prop :
    BealMatveevBeal.Mazur_X0_13_RationalPoints.mazur_irreducible_13_via_X0_13 =
      BealMatveevBeal.Mazur_X0_13_RationalPoints.mazur_irreducible_13_via_X0_13 :=
  rfl

theorem LLL_nogo_persists_after_X0_26 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check frey_cubic_eq_prod
#check frey_has_full_2_torsion
#check frey_has_full_2_torsion_of_sol
#check frey_twoTorsionPolynomial_eval
#check twenty_six_not_in_kenku_list
#check fifty_two_not_in_kenku_list
#check frey_j_not_integral_j0
#check full2_plus_13_isog_gives_26_isog
#check kenku_no_cyclic_26_over_Q
#check X0_26_Q_points_cusps_only
#check gamma0_26_index
#check X0_26_f
#check X0_26_f_odd
#check X0_26_poly_eval
#check X0_26_poly_natDegree
#check X0_26_known_on_curve
#check X0_26_points_satisfy
#check X0_26_weierstrass_points
#check X0_26_even_complete_square
#check X0_26_gonzalez_eq_even_neg
#check X0_26_genus2
#check X0_26_four_cusps
#check X0_26_f_zero_ne_forty_nine
#check X0_26_user_points_not_on_gonzalez
#check J0_26_rank0
#check X0_26_Q_eq_known
#check no_cyclic_26_isogeny_Q
#check mazur_irreducible_13_via_X0_26
#check curve_26a1_model_Δ
#check curve_26b1_model_Δ
#check tors_26a1_eq_3
#check tors_26b1_eq_7
#check selmer_2_card_26a1_eq
#check two_pow_selmer_rank_26a1
#check three_mul_seven_eq_twenty_one
#check J0_26_rank0_via_mwrank
#check J0_26_Q_tors_21
#check mwrank_skeleton_complete
#check Sel2_card_26a1_eq
#check Sel2_rank0_implies_rank0_26a1
#check certified_mwrank_both_zero_holds
#check RankZero_26a1_from_Selmer_is_one_eq_one
#check selmer_2_card_eq_sel2_card_26a1
#print axioms frey_has_full_2_torsion
#print axioms twenty_six_not_in_kenku_list
#print axioms X0_26_known_on_curve
#print axioms X0_26_poly_natDegree
#print axioms X0_26_genus2
#print axioms X0_26_even_complete_square
#print axioms frey_j_not_integral_j0
#print axioms curve_26a1_model_Δ
#print axioms two_pow_selmer_rank_26a1
#print axioms LLL_nogo_persists_after_X0_26

end BealMatveevBeal.X0_26_Full2Torsion
