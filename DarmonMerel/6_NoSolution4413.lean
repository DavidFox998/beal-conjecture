import Init
import DarmonMerel.«7_WindingQuotientAxiom4413»
import Mathlib.Modular.CmVanishing32

/-!
# What is proved about `a⁴ + b⁴ = c¹³`

`(1, 0, 1)` and `(0, 1, 1)` are solutions. They are the CM points.

A solution with `a` and `b` both nonzero is modular, and Ribet supplies a
lowered newform once `RhoE13Open` is supplied. The Mazur products of
`32.2.a.a` and `64.2.a.a` at `q = 5` are both `0`. The winding computation
is the further statement

```text
(T_5 - 6) {0, ∞}  ≢  0  (mod 13)
```

at levels `32` and `64`. That nonvanishing is `winding_elimination_4413`.
It does not contradict the equation. `no_solution_4413_of_frontier` is the
conditional negation for `a ≠ 0`, `b ≠ 0`, coprime coefficients, and
`c > 0`. Its open propositions are `kodaira_neron_odd_a_open`,
`kodaira_neron_even_a_open`, and `no_newform_32_64_open`.
`components_n_plus_five_open`, `serre_two_level_open`, and
`odd_level_one_open` are not hypotheses. The unconditional statement is
not a theorem.
`(1, 0, 1)` and `(0, 1, 1)` remain solutions.
-/

example : (1 : ℤ) ^ 4 + (0 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl
example : (0 : ℤ) ^ 4 + (1 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl

/-- A solution is modular, and given `RhoE13Open` and the Tate bound Ribet
returns one newform.

`N = 32 |c|²` satisfies `FreyConductorDivides` by construction. That is the
shape hypothesis, not a proof that the conductor equals `32 |c|²`.
`ribetLevelOfAxiom` is `ribet_level_lowering_4413.level`. That package
stores `n = 32 ∨ n = 64`. `gkResidual` is not read here. This theorem
returns existence of a newform and does not project the disjunction.
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
  let pkg : RibetLevel c E N := ribetLevelOfAxiom N hCond hIrr hPacetti
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

/-- `(8, 8, 2)` fails the coprimality hypothesis of the capstone.

`curve_8_8_2_not_coprime` is `gcd(8, 8) = 8`. The conditional negation
does not apply to this curve.
-/
theorem capstone_excludes_curve_8_8_2 :
    FreyCurve4413.curve_8_8_2.a.natAbs.gcd
        FreyCurve4413.curve_8_8_2.b.natAbs ≠ 1 :=
  FreyCurve4413.curve_8_8_2_not_coprime

/-- No nontrivial coprime solution with `c > 0`, if the frontier holds.

The open propositions are `kodaira_neron_odd_a_open`,
`kodaira_neron_even_a_open`, and `no_newform_32_64_open`.
`components_n_plus_five_open` is not a hypothesis.
`serre_two_level_open` and `odd_level_one_open` are not hypotheses.
They are inputs of `h_n_eq_of_tate`, and that disjunction is not used:
both of its branches were the same application of `no_newform_32_64_open`.
`qcurve_extension_169_open` implies `no_newform_32_64_open` by
`no_newform_32_64_of_qcurve`. That theorem is in `CmVanishing32`, which
this file imports. This theorem does not take the extension as a
hypothesis.

`tate_param_13_dvd_of_coprime` is not a hypothesis.
`inertia_trivial_of_tate_13_open` still carries the divisibility
`13 ∣ tateParameter` in its own statement.
`frey_qcurve_modular` and `ribet_level_lowering_4413` are the two axioms.
`hIrr` is a term of `RhoE13Open`. Nothing in the repository produces one,
and the Ribet axiom does not apply without it.

`pacetti_of_kodaira_neron hOdd hEven` is `pacetti_2_8_open`. The conductor shape
`N = 32 |c|²` is `FreyConductorDivides`, not a proof that `N` is the
conductor. The `False` is `no_newform_32_64_open` applied to the axiom's
package.

`(1, 0, 1)` and `(0, 1, 1)` satisfy `gcd(|a|, |b|) = 1` and `c > 0` and
are solutions. `a ≠ 0` and `b ≠ 0` keep them out. `(8, 8, 2)` is
`capstone_excludes_curve_8_8_2`.
-/
theorem no_solution_4413_of_frontier
    (hOdd : BlowupOddA.kodaira_neron_odd_a_open)
    (hEven : BlowupEvenA.kodaira_neron_even_a_open)
    (hnew : no_newform_32_64_open)
    (a b c : ℤ)
    (ha : a ≠ 0) (hb : b ≠ 0)
    (hcop : a.natAbs.gcd b.natAbs = 1)
    (hpos : 0 < c)
    (hIrr : ∀ h : a ^ 4 + b ^ 4 = c ^ 13,
      RhoE13Open (FreyCurve4413.mk' a b c h)) :
    ¬ (a ^ 4 + b ^ 4 = c ^ 13) := by
  intro heq
  let E : FreyCurve4413 := FreyCurve4413.mk' a b c heq
  have hMod : Modular E := frey_qcurve_modular a b c E
  have hPac : pacetti_2_8_open := pacetti_of_kodaira_neron hOdd hEven
  let N : ℕ := 32 * c.natAbs ^ 2
  have hCond : FreyConductorDivides c N := Or.inl rfl
  let pkg : RibetLevel c E N :=
    ribetLevelOfAxiom N hCond (hIrr heq) hPac
  exact hnew a b c E N ha hb hcop hpos rfl rfl rfl hMod pkg
