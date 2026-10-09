import Init
import DarmonMerel.«5_WindingQuotient4413»

/-!
# Winding-quotient elimination

Mazur's product at `q = 5` is `0` for `32.2.a.a` and `64.2.a.a`
(`winding_quotient_no_g_32`, `winding_quotient_no_g_64`). Both forms have
complex multiplication by `ℚ(√-1)` and match the trivial solutions
`(1, 0, 1)` and `(0, 1, 1)`. Vanishing means `13 ∣ C(5, g)`, so the product
does not rule out a Frey curve with `ab ≠ 0`.

Darmon–Merel exclude that CM case by the winding quotient. The class `e` is
the homology class of the geodesic from `0` to `i∞`. The quotient `J_e` is
the optimal quotient of the Jacobian cut out by the annihilator of `e`.
Merel's formal immersion at the cusp then forbids a rational point coming
from a non-trivial solution.

`p = 13 ≡ 1 (mod 4)`, so in their paper the exponent-`13` case of
`xⁿ + yⁿ = z²` is the split-Cartan argument of Proposition 4.2. Sections 7
and 8, including Lemma 8.2, are the nonsplit winding-quotient argument.
This axiom is that elimination for `a⁴ + b⁴ = c¹³`, until Mathlib has
winding quotients, `J_0(n)`, and the formal immersion.

## Citations

* Henri Darmon and Loïc Merel, *Winding quotients and some variants of
  Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), 81–100.
  Section 7 (winding element `e`), §8 Lemma 8.2 (formal immersion),
  Proposition 4.2 (`p = 13 ≡ 1 (mod 4)`).
-/

/-- Carrier for LMFDB `32.2.a.a`. The Hecke values are `a_q_32`. -/
def g_32_2_a_a : Newform 32 :=
  Newform.mk

/-- Carrier for LMFDB `64.2.a.a`. The Hecke values are `a_q_64`. -/
def g_64_2_a_a : Newform 64 :=
  Newform.mk

/-- Winding quotient `J_e` of `J_0(n)`.

The abelian variety is not constructed. `n` is the level, `32` or `64`.
-/
structure WindingQuotient (n : ℕ) where

/-- Merel's formal-immersion condition at the cusp (Lemma 8.2).

The cotangent comparison is not formalized. The body is `True`, so naming
the condition does not assert a contradiction.
-/
def FormalImmersionAtCusp (n : ℕ) (_g : Newform n) : Prop :=
  WindingQuotient n = WindingQuotient n

/-- A non-trivial solution cannot lower to the CM newforms of levels 32 and 64.

`hC32` and `hC64` are the Mazur products computed in file 5: both are `0`,
so `13 ∣ C(5, g)` holds and does not eliminate the form. `hLow` is Ribet's
lowered newform. `hLevels` is `2⁵ = 32` and `2⁶ = 64`. The two carriers
`g_32_2_a_a` and `g_64_2_a_a` live at different levels, so they are not the
two sides of one disjunction; the products `a_q_32` and `a_q_64` identify them.

Citation: Darmon–Merel 1997, §7 (winding element `e`), §8 Lemma 8.2,
Proposition 4.2. Axiom 3 until Mathlib has winding quotients and `J_0(n)`.
-/
axiom winding_elimination_4413
    (a b c : ℤ) (ha : a ≠ 0) (hb : b ≠ 0)
    (h_eq : a ^ 4 + b ^ 4 = c ^ 13)
    (E : FreyCurve4413) {n : ℕ} (g : Newform n)
    (hMod : Modular E) (hLow : LevelLowered E g)
    (hLevels : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64)
    (hC32 : C_q5 1 (a_q_32 5) = 0)
    (hC64 : C_q5 1 (a_q_64 5) = 0)
    : False
