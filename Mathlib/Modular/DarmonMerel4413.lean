import Mathlib.Modular.LevelLowering4413
import Mathlib.Modular.GL2Type4413
import Mathlib.Modular.CoefficientQCurve
import Mathlib.Modular.WindingQuotient
import Mathlib.Modular.X0Moduli32
import Mathlib.Modular.Rank0_32a1

/-!
# Darmon–Merel data for `a⁴ + b⁴ = c¹³`

Darmon–Merel (Crelle 490 (1997)) rule out nontrivial primitive solutions of
`x⁴ + y⁴ = zᵖ` for primes `p ≥ 4` by a Frey ℚ-curve over `ℚ(√-1)`, level
lowering, the rank of `X₀(32)`, and a winding quotient at level `64`.
This file records the pieces of that strategy that are theorems here, and
the two hypotheses that are not.

`DarmonMerelFrey` is the coefficient ℚ-curve relation `IsQCurve`, together
with the model at `a = 1`, `b = 1`. There `j = -3328 - 3008 √(-1)` is not
rational, so that model is not an elliptic curve over `ℚ`. The same pair
is not a solution: `1⁴ + 1⁴ = 2` is not a thirteenth power. The irrational
`j` is a fact about those coefficients. It does not show that the Frey
curve of a solution fails to be a base change from `ℚ`.

`norm_odd_prime_exponent` is the identity behind the phrase “`13` divides
`v_q(N(Δ))` for an odd prime `q` dividing `c`”. Write `|c| = q^k m` with
`q` not dividing `m`. Then the exact power of `q` in `N(Δ)` is `q^(13 · 3k)`.
Ribet's finiteness condition is a statement about inertia on the `13`-torsion.
`rho_E_13` is still `GaloisRepresentation.unresolved`, so this identity does
not discharge that condition. Tate's algorithm is not used.

`FreyConductor_OPEN` and `RhoE13Open` stay hypotheses. `divisionPsi`
constructs `ψ₁₃` as a list in `ℤ[√-1][x]`. That list has no integral root
on the auxiliary curve `y² = x³ - x`. On `y² = x³ + a₂ x² + a₄ x` the
constant term is `a₄ ^ 42`. For a Frey curve the norm of that constant
term is `2 ^ 84 * c ^ 546`, not `N(Δ)`. `psi13_no_integral_root_OPEN` is
not a theorem for the Frey coefficients, and
`psi13_no_Qi_root_Frey_OPEN` is not a theorem either. The sixteen divisors
of `13` are classified in `QiDivisors13.lean`. A cleared denominator
divides `lead * num ^ deg`, and Euclid's lemma is not available, so those
sixteen elements do not exhaust the candidates. `rho_E_13` is still
unresolved: no linear factor is not the absence of a Galois-stable
subgroup of order `13`.
`DarmonMerelLevelLowering` calls `ribet_level_lowering_4413` at one
conductor-shaped `N`, given `RhoE13Open` and `TateAt2LowerBound`, and
returns that one newform. The axiom does not contain `n = 32 ∨ n = 64`.
That equality is `n_eq_32_or_64_of_tate`. This theorem does not prove that
`N` is the conductor.

`DarmonMerelFrozenFacts` collects the winding vectors, the cusp counts, the
integral points of `Y² = X³ - X`, the nonzero discriminant, and the Vélu
points on `y² = x³ + 4x`. None of these is a proof that `a⁴ + b⁴ = c¹³`
has no nonzero solution.
-/

theorem prime_ne_two_not_dvd_two (p : Nat) (hp : IsPrime p) (h2 : p ≠ 2) : ¬ p ∣ 2 := by
  intro h
  have hle : p ≤ 2 := Nat.le_of_dvd (by decide) h
  have hge : 2 ≤ p := hp.1
  exact h2 (Nat.le_antisymm hle hge)

theorem prime_not_dvd_pow {p m n : Nat} (hp : IsPrime p) (hm : ¬ p ∣ m) : ¬ p ∣ m ^ n := by
  induction n with
  | zero =>
    intro h
    have h1 : p ∣ 1 := by simpa [Nat.pow_zero] using h
    have hp1 : p = 1 := Nat.dvd_one.mp h1
    have hge : 2 ≤ p := hp.1
    omega
  | succ n ih =>
    intro h
    rw [Nat.pow_succ, Nat.mul_comm] at h
    by_cases hpm : p ∣ m
    · exact hm hpm
    · exact ih (prime_dvd_mul hp h hpm)

namespace FreyCurve4413

theorem norm_natAbs (E : FreyCurve4413) :
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
      2 ^ 18 * E.c.natAbs ^ 39 := by
  rw [discriminant_norm E]
  rw [Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_pow]
  rfl

/-- Exact power of an odd prime `p ∣ c` in `N(Δ)`.

If `|c| = p^k m` and `p` does not divide `m`, then
`N(Δ) = 2¹⁸ · p^(13 · 3k) · m³⁹`, and `p` divides neither remaining factor.
The exponent `13 · 3k` is a multiple of `13`. This is the norm identity.
It is not finiteness of `ρ_{E,13}`.
-/
theorem norm_odd_prime_exponent
    (E : FreyCurve4413) (p k m : Nat)
    (hp : IsPrime p) (h2 : p ≠ 2)
    (hc : E.c.natAbs = p ^ k * m) (hm : ¬ p ∣ m) :
    let t := 13 * (3 * k)
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
        2 ^ 18 * p ^ t * m ^ 39 ∧
      ¬ p ∣ 2 ^ 18 ∧
      ¬ p ∣ m ^ 39 ∧
      ¬ p ^ (t + 1) ∣ (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs := by
  intro t
  have hnorm := norm_natAbs E
  rw [hc, Nat.mul_pow, ← Nat.pow_mul] at hnorm
  have ht : k * 39 = 13 * (3 * k) := by
    calc
      k * 39 = k * (13 * 3) := rfl
      _ = (k * 13) * 3 := by rw [Nat.mul_assoc]
      _ = (13 * k) * 3 := by rw [Nat.mul_comm k 13]
      _ = 13 * (k * 3) := by rw [Nat.mul_assoc]
      _ = 13 * (3 * k) := by rw [Nat.mul_comm k 3]
  rw [ht] at hnorm
  have hform :
      (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
        2 ^ 18 * p ^ t * m ^ 39 := by
    simpa [t, Nat.mul_assoc] using hnorm
  refine ⟨hform, ?_, ?_, ?_⟩
  · exact prime_not_dvd_pow hp (prime_ne_two_not_dvd_two p hp h2)
  · exact prime_not_dvd_pow hp hm
  · intro hdiv
    have hpos : 0 < p ^ t := Nat.pow_pos (Nat.lt_of_lt_of_le (by decide) hp.1)
    have hrearr : 2 ^ 18 * p ^ t * m ^ 39 = p ^ t * (2 ^ 18 * m ^ 39) := by
      calc
        2 ^ 18 * p ^ t * m ^ 39 = p ^ t * 2 ^ 18 * m ^ 39 := by
          rw [Nat.mul_comm (2 ^ 18) (p ^ t)]
        _ = p ^ t * (2 ^ 18 * m ^ 39) := by rw [Nat.mul_assoc]
    have hdiv' : p ^ (t + 1) ∣ p ^ t * (2 ^ 18 * m ^ 39) := by
      rw [← hrearr, ← hform]
      exact hdiv
    rw [Nat.pow_succ] at hdiv'
    have hpcof : p ∣ 2 ^ 18 * m ^ 39 := dvd_cancel_left hpos hdiv'
    have h18 : ¬ p ∣ 2 ^ 18 := prime_not_dvd_pow hp (prime_ne_two_not_dvd_two p hp h2)
    exact prime_not_dvd_pow hp hm (prime_dvd_mul hp hpcof h18)

/-- The Frey curve carries the coefficient ℚ-curve relation, and the model
at `a = 1`, `b = 1` has non-rational `j` and is not a solution.

`IsQCurve E` is `velu_target_eq_twist_neg_two`. `Modular E` is still the
axiom `frey_qcurve_modular`.
-/
theorem DarmonMerelFrey (E : FreyCurve4413) :
    IsQCurve E ∧
      (¬ ∃ p r : Int, r ≠ 0 ∧
          r * (jNumerator 4 2 2).1 = p * 2097152 ∧
            r * (jNumerator 4 2 2).2 = 0) ∧
      (∀ c : Int, (1 : Int) ^ 4 + 1 ^ 4 ≠ c ^ 13) :=
  ⟨FreyQCurve_is_QCurve E, frey_j_not_in_Q, one_one_not_a_solution⟩

/-- Winding vectors, cusps, integral points, discriminant, and Vélu points.

These are the frozen inputs of the level-lowering strategy. They do not
identify a newform level, and they do not prove that no nonzero solution
exists.
-/
theorem DarmonMerelFrozenFacts (E : FreyCurve4413) :
    IsQCurve E ∧
      (E.a ≠ 0 → E.b ≠ 0 → E.discriminant_re ≠ 0 ∧ E.discriminant_im ≠ 0) ∧
      geometricCuspCount 32 = 8 ∧
      rationalCuspDivisors 32 = [1, 2, 16, 32] ∧
      geometricCuspCount 64 = 12 ∧
      rationalCuspDivisors 64 = [1, 2, 32, 64] ∧
      t5Minus6 T5_32 e32 = [0, 0, 4, -4, 0, 0] ∧
      t5Minus6 T5_64 e64 = [0, 0, 0, 2, 2, -4, 0, 0, 0, 0] ∧
      nonzeroMod 13 (t5Minus6 T5_32 e32) = true ∧
      nonzeroMod 13 (t5Minus6 T5_64 e64) = true ∧
      coeff 1 qExp32 = 1 ∧ coeff 1 qExp64 = 1 ∧
      (∀ x y : Int, y * y = x ^ 3 - x → y = 0 ∧ (x = -1 ∨ x = 0 ∨ x = 1)) ∧
      (onCurve x3_plus_4x_model 0 0 = true ∧
        onCurve x3_plus_4x_model 2 4 = true ∧
        onCurve x3_plus_4x_model 2 (-4) = true) ∧
      (∀ c : Int, c ^ 13 ≠ 2) :=
  ⟨FreyQCurve_is_QCurve E,
    fun ha hb => discriminant_nonzero_of_ab_ne_zero E ha hb,
    geometric_cusps_32, rational_cusp_divisors_32,
    geometric_cusps_64, rational_cusp_divisors_64,
    t5_minus6_e32, t5_minus6_e64,
    winding_nonzero_mod13_32, winding_nonzero_mod13_64,
    stored_newforms_a1.1, stored_newforms_a1.2,
    fun x y h => int_points_are_two_torsion x y h,
    x3_plus_4x_points,
    not_two_thirteenth⟩

/-- Given the conductor hypothesis, `RhoE13Open`, and `TateAt2LowerBound`,
Ribet's axiom returns one newform whose level divides `N`.

The package does not contain `n = 32 ∨ n = 64`. `FreyConductor_OPEN` is the
assumption that a supplied integer equals `32 c²` or `64 c²`. Tate's
algorithm at `2` is not formalized.
-/
theorem DarmonMerelLevelLowering
    (E : FreyCurve4413) (N : ℕ)
    (hOpen : FreyConductor_OPEN E (N : ℤ))
    (hRho : RhoE13Open E)
    (hTate : TateAt2LowerBound) :
    ∃ n : ℕ, ∃ g : Newform n, LevelLowered E g :=
  (ribet_given_open_hypotheses E N hOpen hRho hTate).2.2.2

/-- The frozen facts, the two open hypotheses, and a newform of some level.

`n` is not proved equal to `32` or `64`. There is no theorem that
`a⁴ + b⁴ = c¹³` has no nonzero solution.
-/
theorem DarmonMerelStrategy
    (E : FreyCurve4413) (N : ℕ)
    (hOpen : FreyConductor_OPEN E (N : ℤ))
    (hRho : RhoE13Open E)
    (hTate : TateAt2LowerBound) :
    (IsQCurve E ∧
      t5Minus6 T5_32 e32 = [0, 0, 4, -4, 0, 0] ∧
      t5Minus6 T5_64 e64 = [0, 0, 0, 2, 2, -4, 0, 0, 0, 0]) ∧
      FreyConductor_OPEN E (N : ℤ) ∧
      RhoE13Open E ∧
      ∃ n : ℕ, ∃ g : Newform n, LevelLowered E g := by
  refine ⟨?_, hOpen, hRho, DarmonMerelLevelLowering E N hOpen hRho hTate⟩
  exact ⟨(DarmonMerelFrozenFacts E).1,
    (DarmonMerelFrozenFacts E).2.2.2.2.2.2.1,
    (DarmonMerelFrozenFacts E).2.2.2.2.2.2.2.1⟩

end FreyCurve4413
