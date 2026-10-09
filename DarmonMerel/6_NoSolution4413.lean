import Init
import DarmonMerel.«5_WindingQuotient4413»

/-!
# What the `q = 5` product says about `a⁴ + b⁴ = c¹³`

A non-trivial integer point still produces a Frey curve, and modularity
supplies `Modular E`. The Mazur products of the only two candidate newforms
are zero at `q = 5` (`winding_quotient_no_g_32`, `winding_quotient_no_g_64`),
so `13 ∣ C(5, g)`. That is the congruence Mazur predicts, not a
contradiction with it.

Trivial solutions exist: `(1, 0, 1)` and `(0, 1, 1)`. They are the CM
points attached to these two forms, which is why the product vanishes.
-/

/-- `13 ∤ 2`, the hypothesis `p ∤ 2d` of Ribet's theorem when `d = 1`. -/
theorem thirteen_not_dvd_two : ¬ ((13 : ℤ) ∣ 2) := by
  intro h
  have hnat : (13 : ℕ) ∣ 2 := (Int.ofNat_dvd (m := 13) (n := 2)).mp h
  omega

example : (1 : ℤ) ^ 4 + (0 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl
example : (0 : ℤ) ^ 4 + (1 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl

/-- A solution with `ab ≠ 0` is not blocked by the Mazur product at `q = 5`.

The Frey curve is modular, `13 ∤ 2`, the lowered 2-powers are `32` and `64`,
and both newform products vanish.
-/
theorem no_solution_4413 (a b c : ℤ)
    (h_eq : a ^ 4 + b ^ 4 = c ^ 13) (ha : a ≠ 0) (hb : b ≠ 0) :
    C_q5 1 (a_q_32 5) = 0 ∧ C_q5 1 (a_q_64 5) = 0 := by
  let E := FreyCurve4413.mk' a b c h_eq
  have hMod : Modular E := frey_qcurve_modular a b c E
  have _pack : LevelLoweringPossible a b c E :=
    modularity_needed_for_level_lowering a b c E hMod
  have _hp : ¬ ((13 : ℤ) ∣ 2) := thirteen_not_dvd_two
  have _levels : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64 := level_32_or_64
  have _ha := ha
  have _hb := hb
  exact darmon_merel_elimination_4413
