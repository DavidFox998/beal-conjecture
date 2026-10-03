import Beal.«Beal.Even».FullReduction
import Mathlib.Algebra.Ring.Parity

/-!
# v35 odd exponents and the integral `2`-chart

This module does not prove Beal's conjecture for odd exponents.
It imports the v34 even-branch packaging, re-exports the nodal
union, the dense open `D(2)`, finite type of the divided `2`-chart,
and the generic-fibre identity `I[1/2] = ⊤`, and proves one
arithmetic fact about odd powers.

If `x` and `p` are odd, then `x ^ p % 4 = x % 4`, so `x ^ p` is
`1` or `3` modulo `4`, and `2` does not divide `x ^ p`. There is
then no `U : ℕ` with `x ^ p = 2 * U`. The divided-chart
substitution `x = 2U` used for the nodal equation therefore has no
solution in `ℕ` for that monomial. The same non-divisibility holds
for every exponent once the base is odd (`Odd.pow`); an odd
exponent is what preserves the residue modulo `4`. An odd exponent
with an even base does not: `2 ^ 3` is divisible by `2`.

That is a statement in `ℕ`. It is not a point of the Rees `Proj`.
It does not say the point lies in `D₊(2t)` or outside it, and it
does not say the point avoids `V(2)`. `I[1/2] = ⊤` is the identity
obtained after inverting `2` on the generic fibre. It is not applied
to `x ^ p`.

Also not claimed, as in v34: `UniversallyClosed`, `IsProperMap`,
`E ≅ ℙ¹`, identification of the actual special-fibre pullback with
the quotient `Proj`, and degree-one or nonzero `overline{2t}`.
-/

namespace Beal.Odd

open Beal.Even

/-! ## Reused v34 facts

These are the even-branch lemmas. Re-exporting them does not
extend them to odd exponents. `reused_generic_centre_eq_top` is
`I[1/2] = ⊤` on the translated surface after inverting `2`. -/

theorem reused_nodal_union {R : Type*} [CommRing R] [IsDomain R] :
    E_nodal (R := R) = lineV ∪ lineVU :=
  E_nodal_eq_union

theorem reused_lines_meet_at_origin {R : Type*} [CommRing R] :
    (lineV (R := R) ∩ lineVU) = {(0, 0)} :=
  E_meets_only_at_origin

theorem reused_F2_points :
    ∀ U V : ZMod 2, (U, V) ∈ E_nodal ↔
      (U, V) = (0, 0) ∨ (U, V) = (1, 0) ∨ (U, V) = (1, 1) :=
  E_F2_points

abbrev reused_D2_dense := base_D2_dense

abbrev reused_generic_open_dense := generic_open_dense

abbrev reused_twoChart_finiteType := twoChart_finiteType

abbrev reused_generic_centre_eq_top := generic_centre_eq_top

/-- The even-file identity starts from `x = 2U` and `y = 2V` and
factors out `4`. It is the substituted chart, not an odd base. -/
theorem reused_twoChart_fourFactor (U V : ℤ) :
    (2 * V) ^ 2 + (2 * U) * (2 * V) - ((2 * U) ^ 3 + 8) =
      4 * (V ^ 2 + U * V - 2 * U ^ 3 - 2) :=
  example_twoChart_fourFactor U V

/-! ## Odd residues modulo `4`

An odd natural number is `1` or `3` modulo `4`. Raising to an odd
power preserves that residue. Squares of a `3`-residue are `1`
modulo `4`, so an even exponent would not preserve it. -/

theorem odd_mod_four {x : ℕ} (hx : Odd x) : x % 4 = 1 ∨ x % 4 = 3 := by
  obtain ⟨k, hk⟩ := hx
  rcases Nat.even_or_odd k with ⟨m, hm⟩ | ⟨m, hm⟩
  · left
    have hx' : x = 4 * m + 1 := by
      rw [hk, hm]
      omega
    rw [hx', Nat.add_comm, Nat.add_mul_mod_self_left]
  · right
    have hx' : x = 4 * m + 3 := by
      rw [hk, hm]
      omega
    have : 4 * m + 3 = 3 + 4 * m := by omega
    rw [hx', this, Nat.add_mul_mod_self_left]

theorem one_mod_four_pow (m p : ℕ) : (4 * m + 1) ^ p % 4 = 1 := by
  induction p with
  | zero => simp
  | succ p ih =>
    rw [pow_succ, Nat.mul_mod, ih]
    have hbase : (4 * m + 1) % 4 = 1 := by
      rw [Nat.add_comm, Nat.add_mul_mod_self_left]
    rw [hbase]

theorem three_mod_four_sq (m : ℕ) : (4 * m + 3) ^ 2 % 4 = 1 := by
  have h : (4 * m + 3) ^ 2 = 4 * (4 * m ^ 2 + 6 * m + 2) + 1 := by
    ring
  rw [h, Nat.add_comm, Nat.add_mul_mod_self_left]

theorem one_mod_four_pow_of_square (m t : ℕ) :
    ((4 * m + 3) ^ 2) ^ t % 4 = 1 := by
  induction t with
  | zero => simp
  | succ t ih =>
    rw [pow_succ, Nat.mul_mod, ih, three_mod_four_sq]

theorem three_mod_four_odd_pow (m : ℕ) {p : ℕ} (hp : Odd p) :
    (4 * m + 3) ^ p % 4 = 3 := by
  obtain ⟨t, ht⟩ := hp
  subst ht
  rw [pow_succ, pow_mul, Nat.mul_mod, one_mod_four_pow_of_square]
  have hbase : (4 * m + 3) % 4 = 3 := by
    rw [Nat.add_comm, Nat.add_mul_mod_self_left]
  rw [hbase]

theorem odd_pow_mod_four {x p : ℕ} (hx : Odd x) (hp : Odd p) :
    x ^ p % 4 = x % 4 := by
  rcases odd_mod_four hx with h1 | h3
  · have hx' : x = 4 * (x / 4) + 1 := by
      have hdiv := Nat.mod_add_div x 4
      rw [h1] at hdiv
      omega
    rw [h1, hx', one_mod_four_pow]
  · have hx' : x = 4 * (x / 4) + 3 := by
      have hdiv := Nat.mod_add_div x 4
      rw [h3] at hdiv
      omega
    rw [h3, hx', three_mod_four_odd_pow _ hp]

/-! ## The integral `2`-chart coordinate

`odd_exponents_avoid_two_chart` is the name of the arithmetic
statement `¬ 2 ∣ x ^ p`. The `2`-chart substitution asks for
`U : ℕ` with the monomial equal to `2 * U`. No such `U` exists
when the base and the exponent are odd.

The exponent hypothesis is used to preserve the residue modulo `4`.
Non-divisibility by `2` itself needs only an odd base, and holds
for every exponent. An odd exponent does not force a term into
`(2)`, and it does not force a term out of `(2)` when the base is
even. Neither direction is a point of `V(2)` or of `D₊(2t)`. -/

theorem odd_pow_stays_odd {x p : ℕ} (hx : Odd x) : Odd (x ^ p) :=
  hx.pow

theorem odd_base_pow_not_two_dvd {x p : ℕ} (hx : Odd x) : ¬ 2 ∣ x ^ p :=
  (odd_pow_stays_odd hx).not_two_dvd_nat

theorem odd_exponents_avoid_two_chart {x p : ℕ} (hx : Odd x) (hp : Odd p) :
    ¬ 2 ∣ x ^ p := by
  intro hdiv
  have hmod : x ^ p % 4 % 2 = x ^ p % 2 :=
    Nat.mod_mod_of_dvd (x ^ p) (by decide : 2 ∣ 4)
  rw [Nat.dvd_iff_mod_eq_zero] at hdiv
  rw [hdiv, odd_pow_mod_four hx hp] at hmod
  rcases odd_mod_four hx with h1 | h3
  · simp [h1] at hmod
  · simp [h3] at hmod

theorem odd_pow_not_integral_two_coordinate {x p : ℕ} (hx : Odd x) (hp : Odd p) :
    ¬ ∃ U : ℕ, x ^ p = 2 * U := by
  intro ⟨U, hU⟩
  exact odd_exponents_avoid_two_chart hx hp ⟨U, hU⟩

/-- The degree-three Tate monomial `x ^ 3`, for odd `x : ℕ`.
The chart factor of `4` in `reused_twoChart_fourFactor` is the
identity after `x = 2U`. This monomial has no such `U`. -/
theorem tate_cubic_term_not_two_dvd {x : ℕ} (hx : Odd x) : ¬ 2 ∣ x ^ 3 :=
  odd_exponents_avoid_two_chart hx ⟨1, rfl⟩

theorem two_dvd_pow_of_two_dvd_base {x p : ℕ} (hx : 2 ∣ x) (hp : 0 < p) :
    2 ∣ x ^ p := by
  obtain ⟨k, rfl⟩ := hx
  cases p with
  | zero => omega
  | succ n =>
    refine ⟨2 ^ n * k ^ (n + 1), ?_⟩
    rw [mul_pow, pow_succ]
    ring

/-- Odd exponent alone does not keep a power out of `(2)`. -/
theorem odd_exponent_does_not_force_odd_power :
    Odd (3 : ℕ) ∧ 2 ∣ (2 : ℕ) ^ 3 := by
  decide

/-! ## Odd exponents, uninhabited

`odd_Beal` is the odd-exponent Diophantine claim. `odd_branch_chart`
is the further arithmetic shadow that an odd coprime solution has
both bases odd. Neither is proved.

-- open: odd→2∤X,Y needs degree-one overline{2t} excluded by v34, cannot prove without that claim
-/

def odd_Beal : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Odd p → Odd q → Odd r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    False

/-- Open. `odd_exponents_avoid_two_chart` does not inhabit this.
The step from an odd solution to `2 ∤ x` and `2 ∤ y` is not the
mod-`4` calculation above. -/
def odd_branch_chart : Prop :=
  ∀ x y z p q r : ℕ,
    0 < x → 0 < y → 0 < z →
    1 < p → 1 < q → 1 < r →
    Odd p → Odd q → Odd r →
    Nat.Coprime x y →
    x ^ p + y ^ q = z ^ r →
    ¬ 2 ∣ x ∧ ¬ 2 ∣ y

/-- Open. Avoiding `V(2)`, or landing outside `D₊(2t)`, is not
implied by `¬ 2 ∣ x ^ p` and is not implied by `I[1/2] = ⊤`. -/
def odd_point_avoids_special_fibre : Prop :=
  odd_branch_chart

end Beal.Odd

#print axioms Beal.Odd.reused_nodal_union
#print axioms Beal.Odd.reused_lines_meet_at_origin
#print axioms Beal.Odd.reused_F2_points
#print axioms Beal.Odd.reused_D2_dense
#print axioms Beal.Odd.reused_generic_open_dense
#print axioms Beal.Odd.reused_twoChart_finiteType
#print axioms Beal.Odd.reused_generic_centre_eq_top
#print axioms Beal.Odd.reused_twoChart_fourFactor
#print axioms Beal.Odd.odd_mod_four
#print axioms Beal.Odd.one_mod_four_pow
#print axioms Beal.Odd.three_mod_four_sq
#print axioms Beal.Odd.one_mod_four_pow_of_square
#print axioms Beal.Odd.three_mod_four_odd_pow
#print axioms Beal.Odd.odd_pow_mod_four
#print axioms Beal.Odd.odd_pow_stays_odd
#print axioms Beal.Odd.odd_base_pow_not_two_dvd
#print axioms Beal.Odd.odd_exponents_avoid_two_chart
#print axioms Beal.Odd.odd_pow_not_integral_two_coordinate
#print axioms Beal.Odd.tate_cubic_term_not_two_dvd
#print axioms Beal.Odd.two_dvd_pow_of_two_dvd_base
#print axioms Beal.Odd.odd_exponent_does_not_force_odd_power
