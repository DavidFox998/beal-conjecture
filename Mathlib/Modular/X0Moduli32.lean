import Mathlib.Modular.QCurve4413
import Mathlib.Modular.Rank0_32a1
import Mathlib.Modular.FormalImmersion
import Mathlib.Modular.ManinSymbols
import DarmonMerel.«3_RibetLowering4413»
import DarmonMerel.«6_NoSolution4413»

/-!
# Cuspidal divisors of `X₀(32)` and `X₀(64)`

The cusps of `X₀(N)` are the images of `a/d`, where `d` runs through the
positive divisors of `N` and, for each `d`, `a` runs through
`(ℤ / mℤ)ˣ` with `m = gcd(d, N/d)`. Those `φ(m)` points are
Galois conjugates, defined over `ℚ(ζ_m)`. The orbit is a single rational
cusp precisely when `m ≤ 2`. This is the count in the Magma handbook,
"Cusps and Rational Points" (`Cusp(CN, N, d)`).

For `N = 32` the orbit sizes are `(1, 1, 2, 2, 1, 1)`. There are `8`
geometric cusps and `4` rational ones, represented by `d ∈ {1, 2, 16, 32}`.
The orbits for `d = 4` and `d = 8` each have size `2`. For `N = 64` the
orbit sizes are `(1, 1, 2, 4, 2, 1, 1)`: `12` geometric cusps and `4`
rational ones, represented by `d ∈ {1, 2, 32, 64}`.

The same handbook gives the stored model of the modular curve `X₀(32)` as
`y² = x³ + 4x`. `X0_32_model` in `FormalImmersion` is the different equation
`Y² = X³ - X`, whose `a₄` is `-1`. `int_points_are_two_torsion` classifies
the integral points of that second equation. It does not list the cusps.

`card_P1_32 = 48` counts Manin symbols `ℙ¹(ℤ/32ℤ)`, not cusps.
`plusDim_32 = 6` is the dimension of the plus quotient, not the genus.

A nonzero solution of `a⁴ + b⁴ = c¹³` produces the coefficient identity
`velu_target_eq_twist_neg_two` and a nonzero discriminant. Given
`RhoE13Open`, `ribet_level_lowering_4413` returns one newform whose level
divides the supplied conductor shape. `loweredLevel 5 = 32` and
`loweredLevel 6 = 64` are the two powers written down in
`level_32_or_64`. None of these statements is a rational point of
`X₀(32)` or `X₀(64)`.

A non-cuspidal rational point of `X₀(32)` would be an elliptic curve over
`ℚ` with a cyclic `32`-isogeny over `ℚ`. The Frey curve in this repository
is a ℚ-curve over `ℚ(√-1)`. Equality of the conjugate's Vélu target with
the twist by `-2` is an equality in `ℤ × ℤ`. A product of integers equal
to `32` is not a cyclic subgroup. `Δ ≠ 0` says the Weierstrass model is
nonsingular. The modular curves themselves are not constructed, so that
nonvanishing is not a cusp predicate on `X₀(32)(ℚ)`.
-/

/-- Euler's totient, the number of `k ∈ {1, …, n}` with `gcd(k, n) = 1`. -/
def eulerPhi (n : Nat) : Nat :=
  (List.range n).foldl (fun acc i =>
    if Nat.gcd (i + 1) n == 1 then acc + 1 else acc) 0

/-- Positive divisors of `N`, in increasing order. -/
def positiveDivisors (N : Nat) : List Nat :=
  (List.range (N + 1)).filter fun d => d != 0 && N % d == 0

/-- `m = gcd(d, N/d)`, the conductor of the cusp orbit indexed by `d`. -/
def gcdPair (N d : Nat) : Nat :=
  Nat.gcd d (N / d)

/-- Size of the Galois orbit of cusps `a/d`. -/
def cuspOrbitSize (N d : Nat) : Nat :=
  eulerPhi (gcdPair N d)

def listSum (xs : List Nat) : Nat :=
  xs.foldl (· + ·) 0

/-- Number of geometric cusps, `∑_{d ∣ N} φ(gcd(d, N/d))`. -/
def geometricCuspCount (N : Nat) : Nat :=
  listSum ((positiveDivisors N).map (cuspOrbitSize N))

/-- Divisors `d ∣ N` whose cusp `1/d` is rational: `gcd(d, N/d) ≤ 2`. -/
def rationalCuspDivisors (N : Nat) : List Nat :=
  (positiveDivisors N).filter fun d => decide (gcdPair N d ≤ 2)

theorem eulerPhi_small :
    eulerPhi 1 = 1 ∧ eulerPhi 2 = 1 ∧ eulerPhi 4 = 2 ∧ eulerPhi 8 = 4 := by
  decide

theorem positive_divisors_32 : positiveDivisors 32 = [1, 2, 4, 8, 16, 32] := by
  decide

theorem cusp_orbit_sizes_32 :
    (positiveDivisors 32).map (cuspOrbitSize 32) = [1, 1, 2, 2, 1, 1] := by
  decide

theorem geometric_cusps_32 : geometricCuspCount 32 = 8 := by
  decide

theorem rational_cusp_divisors_32 : rationalCuspDivisors 32 = [1, 2, 16, 32] := by
  decide

theorem rational_cusp_count_32 : (rationalCuspDivisors 32).length = 4 := by
  decide

theorem nonrational_cusp_divisors_32 :
    (positiveDivisors 32).filter (fun d => decide (2 < gcdPair 32 d)) = [4, 8] := by
  decide

theorem rational_cusps_match_orbit_size_one_32 :
    rationalCuspDivisors 32 =
      (positiveDivisors 32).filter (fun d => cuspOrbitSize 32 d == 1) := by
  decide

theorem positive_divisors_64 : positiveDivisors 64 = [1, 2, 4, 8, 16, 32, 64] := by
  decide

theorem cusp_orbit_sizes_64 :
    (positiveDivisors 64).map (cuspOrbitSize 64) = [1, 1, 2, 4, 2, 1, 1] := by
  decide

theorem geometric_cusps_64 : geometricCuspCount 64 = 12 := by
  decide

theorem rational_cusp_divisors_64 : rationalCuspDivisors 64 = [1, 2, 32, 64] := by
  decide

theorem rational_cusp_count_64 : (rationalCuspDivisors 64).length = 4 := by
  decide

/-- `ℙ¹(ℤ/32ℤ)` has `48` points. `X₀(32)` has `8` geometric cusps. -/
theorem manin_symbols_32_are_not_cusps :
    cardP1 32 = 48 ∧ geometricCuspCount 32 = 8 :=
  ⟨card_P1_32, geometric_cusps_32⟩

theorem manin_count_differs_from_cusp_count :
    cardP1 32 ≠ geometricCuspCount 32 := by
  rw [card_P1_32, geometric_cusps_32]
  decide

/-- `X0_32_model` is `Y² = X³ - X`. Its `a₄` is `-1`, not the `4` of `y² = x³ + 4x`. -/
theorem recorded_model_a4 : X0_32_model.a4 = -1 := rfl

theorem recorded_model_is_not_x3_plus_4x : X0_32_model.a4 ≠ 4 := by
  rw [recorded_model_a4]
  decide

/-- Integral points of `Y² = X³ - X` have `Y = 0` and `X ∈ {-1, 0, 1}`. -/
theorem y3_minus_y_integral_points (x y : Int) (hcurve : y * y = x ^ 3 - x) :
    y = 0 ∧ (x = -1 ∨ x = 0 ∨ x = 1) :=
  int_points_are_two_torsion x y hcurve

/-- A nonzero integer solution of `a⁴ + b⁴ = c¹³`.

This is not a rational point of `X₀(32)` or `X₀(64)`. -/
structure NonzeroSolution4413 where
  a : Int
  b : Int
  c : Int
  ha : a ≠ 0
  hb : b ≠ 0
  h_eq : a ^ 4 + b ^ 4 = c ^ 13

namespace NonzeroSolution4413

def frey (s : NonzeroSolution4413) : FreyCurve4413 :=
  FreyCurve4413.mk' s.a s.b s.c s.h_eq

theorem velu_target_A_coeff (s : NonzeroSolution4413) :
    FreyCurve4413.velu_target_A s.frey = -8 * s.a :=
  FreyCurve4413.velu_target_A_eq s.frey

theorem velu_target_B_coeff (s : NonzeroSolution4413) :
    FreyCurve4413.velu_target_B s.frey = (8 * s.a ^ 2, 8 * s.b ^ 2) :=
  FreyCurve4413.velu_target_B_eq s.frey

/-- The conjugate's Vélu target equals the twist by `-2`. -/
theorem twist_matches (s : NonzeroSolution4413) :
    FreyCurve4413.velu_target_A s.frey = FreyCurve4413.twist_neg_two_A s.frey ∧
      FreyCurve4413.velu_target_B s.frey = FreyCurve4413.twist_neg_two_B s.frey :=
  FreyCurve4413.velu_target_eq_twist_neg_two s.frey

theorem discriminant_nonzero (s : NonzeroSolution4413) :
    s.frey.discriminant_re ≠ 0 ∧ s.frey.discriminant_im ≠ 0 :=
  FreyCurve4413.discriminant_nonzero_of_ab_ne_zero s.frey s.ha s.hb

/-- Modularity and Ribet give one newform, not a point of `X₀(32)`.

`hIrr` is `RhoE13Open`. Nothing constructs a term of that type.
-/
theorem lowered (s : NonzeroSolution4413) (hIrr : RhoE13Open s.frey)
    (hTate : TateAt2LowerBound) :
    Modular s.frey ∧ ∃ n : Nat, ∃ g : Newform n, LevelLowered s.frey g :=
  solution_modular_and_lowered s.a s.b s.c s.h_eq hIrr hTate

/-- The two powers written down for `d = 1` are `2⁵` and `2⁶`. -/
theorem candidate_levels : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64 :=
  level_32_or_64

theorem immersion_32_and_64 :
    FormalImmersionAtCusp 32 13 ∧ FormalImmersionAtCusp 64 13 :=
  And.intro formal_immersion_32_13 formal_immersion_64_13

/-- Merel's vectors at levels `32` and `64` are nonzero mod `13`. -/
theorem winding (s : NonzeroSolution4413) :
    nonzeroMod 13 (t5Minus6 T5_32 e32) = true ∧
      nonzeroMod 13 (t5Minus6 T5_64 e64) = true :=
  solution_meets_winding_test s.a s.b s.c s.ha s.hb s.h_eq

end NonzeroSolution4413
