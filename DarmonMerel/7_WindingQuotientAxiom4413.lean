import Init
import DarmonMerel.«5_WindingQuotient4413»
import Mathlib.Modular.WindingQuotient

/-!
# Winding element at levels 32 and 64

`e32`, `e64`, `T5_32`, and `T5_64` are computed in
`Mathlib.Modular.ManinSymbols` from Manin symbols, not stored as literals.
`card_P1_32`, `card_P1_64`, `plusDim_32`, and `plusDim_64` are the
cardinality and relation-rank theorems.

`winding_elimination_4413` is Merel's numerical test at `q = 5`:

```text
(T_5 - (5 + 1)) {0, ∞}  ≢  0   (mod 13)
```

on those two plus spaces. `(T_5 - 6) e ≠ 0` does not contradict
`a⁴ + b⁴ = c¹³`. Darmon–Merel still need the map from the modular curve
to the winding quotient and Lemma 8.2. This file does not prove `False`.

## Citations

* Henri Darmon and Loïc Merel, *Winding quotients and some variants of
  Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), 81–100.
  Section 7 (winding element `e`), §8 Lemma 8.2.
-/

theorem t5_32_on_newform : matVec T5_32 eig32 = vecScale (-2) eig32 := by
  rw [T5_32_value]
  native_decide

theorem t5_64_on_newform : matVec T5_64 eig64 = vecScale 2 eig64 := by
  rw [T5_64_value]
  native_decide

/-- Merel's test at level `32`: `(T_5 - 6) e ≢ 0 (mod 13)`. -/
theorem t5_e32_not_zero_mod13 : nonzeroMod 13 (t5Minus6 T5_32 e32) = true := by
  rw [T5_32_value, e32_value]
  native_decide

/-- Merel's test at level `64`: `(T_5 - 6) e ≢ 0 (mod 13)`. -/
theorem t5_e64_not_zero_mod13 : nonzeroMod 13 (t5Minus6 T5_64 e64) = true := by
  rw [T5_64_value, e64_value]
  native_decide

/-- Formal-immersion numbers for the two CM levels.

The hypotheses are the ones the old axiom took: a nonzero solution, a
modular Frey curve, a lowered newform, the levels `32` and `64`, and
the Mazur products `C(5, g) = 0`. The conclusion is only
`(T_5 - 6) e ≢ 0 (mod 13)` at both levels. Those products vanish and
the winding vector is still nonzero mod `13`; the two facts sit
together, and neither one is `False`.

Citation: Darmon–Merel 1997, §7 and Lemma 8.2. The lemma's map
`X₀(N) → J_e` is not constructed here.
-/
theorem winding_elimination_4413
    (a b c : ℤ) (_ha : a ≠ 0) (_hb : b ≠ 0)
    (_h_eq : a ^ 4 + b ^ 4 = c ^ 13)
    (E : FreyCurve4413) {n : ℕ} (_g : Newform n)
    (_hMod : Modular E) (_hLow : LevelLowered E _g)
    (_hLevels : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64)
    (_hC32 : C_q5 1 (a_q_32 5) = 0)
    (_hC64 : C_q5 1 (a_q_64 5) = 0) :
    nonzeroMod 13 (t5Minus6 T5_32 e32) = true ∧
      nonzeroMod 13 (t5Minus6 T5_64 e64) = true :=
  ⟨t5_e32_not_zero_mod13, t5_e64_not_zero_mod13⟩
