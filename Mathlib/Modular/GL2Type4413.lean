import Mathlib.Modular.X0_32_Construction
import Mathlib.Modular.QCurve4413
import Mathlib.Modular.FormalImmersion

/-!
# The Frey `j`-invariant is not rational at `a = b = 1`

`jNumerator 4 2 2` is `c₄³` times the conjugate of `Δ` for the Frey
coefficients `A = 4`, `B = 2 + 2 √(-1)`. Its imaginary part is
`-6308233216`, and `Δ` has norm `2097152`, so

```
j = -3328 - 3008 √(-1).
```

`frey_j_not_in_Q` says this ratio is not a rational number: a denominator
`r ≠ 0` would have to kill the imaginary part, and `ℤ` is an integral
domain. An elliptic curve over `ℚ` has rational `j`. The model with these
coefficients is not such a curve, and it is not the elliptic curve attached
to a rational point of `X₀(32)`.

`(1, 1)` is not a solution of `a⁴ + b⁴ = c¹³`. `not_two_thirteenth` says
`2` is not a thirteenth power, and `1⁴ + 1⁴ = 2`. The non-rational `j` is
a fact about these coefficients. It does not constrain a pair `(a, b)` that
does satisfy the equation.

A quadratic twist multiplies `c₄` by `d²` (`twist_scales_c4`). The relation
`velu_target_eq_twist_neg_two` is a 2-isogeny from the conjugate to that
twist. The isogeny does not preserve `j`, so the twist relation is not a
proof that `j` lies in `ℚ`.

The coordinate equations `freyOnQi_expanded` are what substitution of
`x = u + v √(-1)` and `y = s + t √(-1)` produces over `ℤ`. They are not an
abelian surface, and they do not carry real multiplication by `ℚ(√2)`.
`gl2_type_interface` is the modularity axiom and Ribet's axiom, given
`RhoE13Open`: `Modular E`, and one newform. `RhoE13Open` has no term.
The coefficient field is not part of either statement. `qExp32` and `qExp64`
are two integral `q`-expansions with `a₁ = 1`. They are not a list of all
newforms. `formal_immersion_32_13` and `formal_immersion_64_13` are the
nonvanishing of `(T₅ - 6) e` modulo `13`. None of this proves that
`a⁴ + b⁴ = c¹³` has no nonzero solution.
-/

theorem not_two_thirteenth (c : Int) : c ^ 13 ≠ 2 := by
  intro h
  have h1 : (c ^ 13).natAbs = (2 : Int).natAbs := congrArg Int.natAbs h
  have h2 : (2 : Int).natAbs = 2 := rfl
  rw [Int.natAbs_pow, h2] at h1
  match hN : c.natAbs with
  | 0 =>
    simp [hN] at h1
  | 1 =>
    simp [hN] at h1
  | n + 2 =>
    rw [hN] at h1
    have hge : 2 ≤ n + 2 := by omega
    have hpow : 2 ^ 13 ≤ (n + 2) ^ 13 := Nat.pow_le_pow_left hge 13
    have h8192 : (2 : Nat) ^ 13 = 8192 := by decide
    rw [h8192, h1] at hpow
    omega

theorem one_one_not_a_solution (c : Int) : (1 : Int) ^ 4 + 1 ^ 4 ≠ c ^ 13 := by
  intro h
  have h2 : (1 : Int) ^ 4 + 1 ^ 4 = 2 := by decide
  rw [h2] at h
  exact not_two_thirteenth c h.symm

/-- `(-3328 - 3008 √(-1))` is not in `ℚ`.

If `c₄³ conj(Δ) / 2097152 = p / r` with `r ≠ 0`, the imaginary part of the
numerator would satisfy `r * (-6308233216) = 0`. -/
theorem frey_j_not_in_Q :
    ¬ ∃ p r : Int, r ≠ 0 ∧
        r * (jNumerator 4 2 2).1 = p * 2097152 ∧
          r * (jNumerator 4 2 2).2 = 0 := by
  intro ⟨_p, r, hr, _, him⟩
  have hne : (jNumerator 4 2 2).2 ≠ 0 := frey_j_imaginary_at_one
  rcases Int.mul_eq_zero.mp him with h | h
  · exact hr h
  · exact hne h

theorem frey_j_pair :
    (jNumerator 4 2 2).1 / 2097152 = -3328 ∧
      (jNumerator 4 2 2).2 / 2097152 = -3008 :=
  frey_j_value_at_one

theorem stored_newforms_a1 :
    coeff 1 qExp32 = 1 ∧ coeff 1 qExp64 = 1 := by
  decide

/-- What the two axioms return for a solution `a⁴ + b⁴ = c¹³`, given
`RhoE13Open`.

`Modular E` is the modularity axiom. Ribet's axiom returns one newform.
This theorem does not extract `n = 32 ∨ n = 64` from that package, and it
does not return a coefficient field or a point of `X₀(32)`. `RhoE13Open`
has no term here. -/
theorem gl2_type_interface (a b c : Int) (heq : a ^ 4 + b ^ 4 = c ^ 13)
    (hIrr : RhoE13Open (FreyCurve4413.mk' a b c heq)) :
    Modular (FreyCurve4413.mk' a b c heq) ∧
      ∃ n : Nat, ∃ g : Newform n,
        LevelLowered (FreyCurve4413.mk' a b c heq) g :=
  solution_modular_and_lowered a b c heq hIrr
