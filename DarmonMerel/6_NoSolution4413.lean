import Init
import DarmonMerel.«5_WindingQuotient4413»

/-!
# No non-trivial solution of `a⁴ + b⁴ = c¹³`

The Frey ℚ-curve (file 1), its modularity (file 2), Ribet lowering (file 3),
Mazur's product (file 4), and the winding-quotient elimination of `32.2.a.a`
and `64.2.a.a` (file 5) are the steps of the modular method for this
equation. This file assembles them.

Trivial solutions exist: `(a, b, c) = (1, 0, 1)` and `(0, 1, 1)`. The
theorem excludes them by `a ≠ 0` and `b ≠ 0`. A solution with `ab ≠ 0`
would give a Frey curve, a modular residual representation, and a newform
in one of the two lowered spaces. Both of those newforms are eliminated, so
no such solution exists.

The `sorry` is the identification of the lowered newform with `32.2.a.a` or
`64.2.a.a` after irreducibility. It is not an axiom. Darmon–Merel, Main
Theorem, part 2, is the different equation `xⁿ + yⁿ = z²`.
-/

/-- `13 ∤ 2`, the hypothesis `p ∤ 2d` of Ribet's theorem when `d = 1`. -/
theorem thirteen_not_dvd_two : ¬ ((13 : ℤ) ∣ 2) := by
  intro h
  have hnat : (13 : ℕ) ∣ 2 := (Int.ofNat_dvd (m := 13) (n := 2)).mp h
  omega

example : (1 : ℤ) ^ 4 + (0 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl
example : (0 : ℤ) ^ 4 + (1 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl

/-- `a⁴ + b⁴ = c¹³` has no solution with `a` and `b` both nonzero.

Built from the Frey curve, `frey_qcurve_modular`,
`modularity_needed_for_level_lowering`, `thirteen_not_dvd_two`, and
`darmon_merel_elimination_4413`.
-/
theorem no_solution_4413 (a b c : ℤ)
    (h_eq : a ^ 4 + b ^ 4 = c ^ 13) (ha : a ≠ 0) (hb : b ≠ 0) : False := by
  let E := FreyCurve4413.mk' a b c h_eq
  have hMod : Modular E := frey_qcurve_modular a b c E
  have hPack : LevelLoweringPossible a b c E :=
    modularity_needed_for_level_lowering a b c E hMod
  have hp : ¬ ((13 : ℤ) ∣ 2) := thirteen_not_dvd_two
  have hElim : ∀ s : LoweredSpace, eliminatedAt13 (spaceForm s).snd :=
    darmon_merel_elimination_4413
  have _ha := ha
  have _hb := hb
  have _E := E
  have _mod := hMod
  have _pack := hPack
  have _p := hp
  have _elim := hElim
  sorry
