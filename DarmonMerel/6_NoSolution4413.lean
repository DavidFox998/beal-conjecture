import Init
import DarmonMerel.«7_WindingQuotientAxiom4413»

/-!
# What is proved about `a⁴ + b⁴ = c¹³`

`(1, 0, 1)` and `(0, 1, 1)` are solutions. They are the CM points.

A solution with `a` and `b` both nonzero is modular, and Ribet supplies a
lowered newform. The Mazur products of `32.2.a.a` and `64.2.a.a` at
`q = 5` are both `0`. The winding computation is the further statement

```text
(T_5 - 6) {0, ∞}  ≢  0  (mod 13)
```

at levels `32` and `64`. That nonvanishing is `winding_elimination_4413`.
It does not contradict the equation, so there is no theorem here of the
form `¬ ∃ a b c, a⁴ + b⁴ = c¹³ ∧ a ≠ 0 ∧ b ≠ 0`.
-/

/-- `13 ∤ 2`, the hypothesis `p ∤ 2d` of Ribet's theorem when `d = 1`. -/
theorem thirteen_not_dvd_two : ¬ ((13 : ℤ) ∣ 2) := by
  intro h
  have hnat : (13 : ℕ) ∣ 2 := (Int.ofNat_dvd (m := 13) (n := 2)).mp h
  omega

example : (1 : ℤ) ^ 4 + (0 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl
example : (0 : ℤ) ^ 4 + (1 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl

/-- A solution is modular, and given `RhoE13Open` and the Tate bound Ribet
returns one newform.

`N = 32 |c|²` satisfies `FreyConductorDivides` by construction. That is the
shape hypothesis, not a proof that the conductor equals `32 |c|²`.
The axiom's package stores `n = 32 ∨ n = 64`. This theorem returns
existence of a newform and does not project the disjunction.
-/
theorem solution_modular_and_lowered
    (a b c : ℤ) (heq : a ^ 4 + b ^ 4 = c ^ 13)
    (hIrr : RhoE13Open (FreyCurve4413.mk' a b c heq))
    (hPacetti : pacetti_2_8_open) :
    Modular (FreyCurve4413.mk' a b c heq) ∧
      ∃ n : ℕ, ∃ g : Newform n,
        LevelLowered (FreyCurve4413.mk' a b c heq) g := by
  let E := FreyCurve4413.mk' a b c heq
  refine ⟨frey_qcurve_modular a b c E, ?_⟩
  let N : ℕ := 32 * c.natAbs ^ 2
  have hCond : FreyConductorDivides c N := Or.inl rfl
  let pkg : RibetLevel c E N := ribet_level_lowering_4413 N hCond hIrr hPacetti
  exact ⟨pkg.level, pkg.output.g, pkg.output.lowered⟩

/-- Merel's nonvanishing test at both CM levels.

`(T_5 - 6) e` is nonzero mod `13` at levels `32` and `64`. Those vectors
are computed from Manin symbols. The test does not use a lowered newform
and it does not close to `False`.
-/
theorem solution_meets_winding_test
    (a b c : ℤ) (_ha : a ≠ 0) (_hb : b ≠ 0)
    (_heq : a ^ 4 + b ^ 4 = c ^ 13) :
    nonzeroMod 13 (t5Minus6 T5_32 e32) = true ∧
      nonzeroMod 13 (t5Minus6 T5_64 e64) = true :=
  ⟨t5_e32_not_zero_mod13, t5_e64_not_zero_mod13⟩
