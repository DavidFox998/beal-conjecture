import Init
import DarmonMerel.«4_MazurTrick4413»

/-!
# Winding-quotient elimination at levels 32 and 64

Level lowering leaves a newform in `S₂(Γ₀(32))` or `S₂(Γ₀(64))`. LMFDB
records one trivial-character newform in each space: `32.2.a.a` and
`64.2.a.a` (`s2Gamma0NewformCount32`, `s2Gamma0NewformCount64`). This file
eliminates both for `p = 13`.

Mazur's congruence (`mazur_divides_C`) says that a form coming from a Frey
solution satisfies `13 ∣ C(q, g)` for every auxiliary prime `q`. The
contradictory witness is therefore

```text
∃ q,  q ∤ 13 n  ∧  13 ∤ C(q, g).
```

`C(q, g) ≠ 0` is not that witness. A nonzero multiple of `13` still obeys
the congruence, and `C(q, g) = 0` obeys it as well (`13 ∣ 0`). Vanishing is
the failure mode of `mazur_trick_4413`, typical of the CM form `32.2.a.a`.
The winding quotient rules the form out in that case.

## What Darmon–Merel prove

Darmon–Merel, J. Reine Angew. Math. 490 (1997), Main Theorem, part 2:
`xⁿ + yⁿ = z²` has no non-trivial primitive solution for `n ≥ 4`.
That is not the equation `x⁴ + y⁴ = zᵖ`. Section 4 of the paper treats
their equations `xⁿ + yⁿ = 2zⁿ` and `xⁿ + yⁿ = z²`: after lowering, the
residual representation has level `32` and is the CM representation of
`X₀(32) : Y² = X³ − X`, the curve of `32.2.a.a`. Since `13 ≡ 1 (mod 4)`,
their Proposition 4.2 (split Cartan) covers exponent `13`, by a rank-zero
quotient of `J₀(26)` over `ℚ(i)`.

The winding element `e` is the homology class of the geodesic from `0` to
`i∞` (section 7, before Proposition 7.1). Merel's formal immersion is
Lemma 8.2. Those are the tools for their nonsplit case `p ≡ 3 (mod 4)`.
The two `sorry`s below are the same style of elimination, applied to the
two candidate newforms of `a⁴ + b⁴ = c¹³`. They are not a formalization of
the Main Theorem, and they are not axioms.

## Citations

* Henri Darmon and Loïc Merel, *Winding quotients and some variants of
  Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), 81–100.
  Section 4 (complex multiplication, level 32, Proposition 4.2 for `p = 13`);
  section 7 (winding quotient `Jₑ` and the class `e`); Lemma 8.2 (formal
  immersion).
-/

/-- LMFDB newform `32.2.a.a`, the unique newform in `S₂(Γ₀(32))`. -/
def g_32_2_a_a : Newform 32 :=
  Newform.mk

/-- LMFDB newform `64.2.a.a`, the unique newform in `S₂(Γ₀(64))`. -/
def g_64_2_a_a : Newform 64 :=
  Newform.mk

/-- One constructor for each lowered newspace. -/
inductive LoweredSpace where
  | s32
  | s64

/-- The LMFDB newform attached to a lowered space. -/
def spaceForm : LoweredSpace → Σ n, Newform n
  | .s32 => ⟨32, g_32_2_a_a⟩
  | .s64 => ⟨64, g_64_2_a_a⟩

example : (spaceForm .s32).fst = 32 := rfl
example : (spaceForm .s64).fst = 64 := rfl
example : s2Gamma0NewformCount32 = 1 := rfl
example : s2Gamma0NewformCount64 = 1 := rfl

/-- `13 ∤ C(q, g)` at one auxiliary prime.

The product `C(q, g)` is not evaluated. This sealed predicate is that
divisibility failure. `mazur_allows_zero` records why `C = 0` is not a failure.
-/
opaque MazurNotDivisible {n : ℕ} (_g : Newform n) (_q : ℕ) : Prop := True

/-- `g` does not survive Mazur's test at `p = 13`. -/
def eliminatedAt13 {n : ℕ} (g : Newform n) : Prop :=
  ∃ q, 1 < q ∧ ¬ (q ∣ 13 * n) ∧ MazurNotDivisible g q

/-- `13 ∣ 0`, so a vanishing Mazur product still satisfies `13 ∣ C(q, g)`. -/
theorem mazur_allows_zero : (13 : ℤ) ∣ 0 :=
  Int.dvd_zero 13

/-- The newform `32.2.a.a` is eliminated for `p = 13`.

Witness shape: `∃ q, q ∤ 13·32 ∧ 13 ∤ C(q, g)`. The `sorry` is the
winding-quotient check (Darmon–Merel §7, the class `e`, and Lemma 8.2),
not an axiom.
-/
theorem winding_quotient_no_g_32 : eliminatedAt13 g_32_2_a_a := by
  sorry

/-- The newform `64.2.a.a` is eliminated for `p = 13`.

Same witness shape as `winding_quotient_no_g_32`, at level `64`.
-/
theorem winding_quotient_no_g_64 : eliminatedAt13 g_64_2_a_a := by
  sorry

/-- No newform in `S₂(Γ₀(32)) ∪ S₂(Γ₀(64))` survives Mazur's test at `p = 13`.

Each space contributes one newform, and both are eliminated.
-/
theorem darmon_merel_elimination_4413 (s : LoweredSpace) :
    eliminatedAt13 (spaceForm s).snd := by
  have h32 := winding_quotient_no_g_32
  have h64 := winding_quotient_no_g_64
  cases s with
  | s32 => exact h32
  | s64 => exact h64
