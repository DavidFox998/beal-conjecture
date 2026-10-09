import Init
import DarmonMerel.«7_WindingQuotientAxiom4413»

/-!
# No non-trivial solution of `a⁴ + b⁴ = c¹³`

`no_solution_4413` is `¬ ∃ a b c, a⁴ + b⁴ = c¹³ ∧ a ≠ 0 ∧ b ≠ 0`.

The Frey curve of such a point is modular. Ribet supplies a lowered
newform. The only trivial-character newforms at the candidate levels are
`32.2.a.a` and `64.2.a.a`, and both have Mazur product `0` at `q = 5`.
`winding_elimination_4413` is the winding-quotient step that rules out
`ab ≠ 0` in that CM case.

`(1, 0, 1)` and `(0, 1, 1)` satisfy the equation. They are excluded by
`a ≠ 0` and `b ≠ 0`.
-/

/-- `13 ∤ 2`, the hypothesis `p ∤ 2d` of Ribet's theorem when `d = 1`. -/
theorem thirteen_not_dvd_two : ¬ ((13 : ℤ) ∣ 2) := by
  intro h
  have hnat : (13 : ℕ) ∣ 2 := (Int.ofNat_dvd (m := 13) (n := 2)).mp h
  omega

example : (1 : ℤ) ^ 4 + (0 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl
example : (0 : ℤ) ^ 4 + (1 : ℤ) ^ 4 = (1 : ℤ) ^ 13 := rfl

/-- `a⁴ + b⁴ = c¹³` has no solution with `a` and `b` both nonzero. -/
theorem no_solution_4413 :
    ¬ ∃ a b c : ℤ, a ^ 4 + b ^ 4 = c ^ 13 ∧ a ≠ 0 ∧ b ≠ 0 := by
  intro h
  rcases h with ⟨a, b, c, heq, ha, hb⟩
  let E := FreyCurve4413.mk' a b c heq
  have hmod : Modular E := frey_qcurve_modular a b c E
  have hirred : Irreducible (rho_E_p E) := trivial
  have hp : ¬ ((13 : ℤ) ∣ 2) := thirteen_not_dvd_two
  rcases ribet_level_lowering_4413 a b c E hirred hp with ⟨n, g, hlow⟩
  have hlevels : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64 := level_32_or_64
  have hC32 : C_q5 1 (a_q_32 5) = 0 := winding_quotient_no_g_32
  have hC64 : C_q5 1 (a_q_64 5) = 0 := winding_quotient_no_g_64
  have _n := n
  exact winding_elimination_4413 a b c ha hb heq E g hmod hlow
    hlevels hC32 hC64
