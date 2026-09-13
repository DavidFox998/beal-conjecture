import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.Genus26Scaffold

/-!
# Honest level-26 genus scaffold

Mathlib 4.12 does not yet supply modular-curve/Riemann--Hurwitz geometry, so
genus is scaffolded as explicit data, not claimed as closed. The arithmetic
is the level-26 specialization of the index and cleared Riemann--Hurwitz
formulas used in the parent project's `X0_143` pattern.
-/

/-- The arithmetic index
`[Γ₀(1) : Γ₀(26)] = 26 (1 + 1/2) (1 + 1/13) = 42`.

Identifying this value with the degree of the geometric map
`X₀(26) → X(1)` belongs to `RiemannHurwitzData_26`. -/
def degree_map_X0_26 : Nat :=
  26 * (2 + 1) / 2 * (13 + 1) / 13

theorem degree_map_X0_26_eq_42 : degree_map_X0_26 = 42 := by
  decide

/-- Expected arithmetic signature `(e₂, e₃, cusps)` at level 26.
Its geometric realization is not inferred from this list. -/
def ramification_data_26 : List Nat := [2, 0, 4]

theorem ramification_data_26_explicit :
    ramification_data_26 = [2, 0, 4] :=
  rfl

/-- Data required to interpret the arithmetic signature as the
Riemann--Hurwitz calculation for the actual modular curve `X₀(26)`. -/
structure RiemannHurwitzData_26 where
  genus : Nat
  degree : Nat
  ellipticOrderTwo : Nat
  ellipticOrderThree : Nat
  cusps : Nat
  degree_eq : degree = degree_map_X0_26
  ellipticOrderTwo_eq : ellipticOrderTwo = 2
  ellipticOrderThree_eq : ellipticOrderThree = 0
  cusps_eq : cusps = 4
  riemannHurwitz :
    12 * genus + 3 * ellipticOrderTwo +
        4 * ellipticOrderThree + 6 * cusps =
      degree + 12

/-- Supplied geometric Riemann--Hurwitz data force the level-26 genus to be
two. This does not construct those data. -/
theorem genus_X0_26_eq_2_of_data (h : RiemannHurwitzData_26) :
    h.genus = 2 := by
  have hRH := h.riemannHurwitz
  rw [h.degree_eq, degree_map_X0_26_eq_42,
    h.ellipticOrderTwo_eq, h.ellipticOrderThree_eq, h.cusps_eq]
    at hRH
  omega

#print axioms degree_map_X0_26_eq_42
#print axioms genus_X0_26_eq_2_of_data

end BealLevel26Foundations.Mazur.Genus26Scaffold