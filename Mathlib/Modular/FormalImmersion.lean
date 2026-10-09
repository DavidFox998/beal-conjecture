import Mathlib.Modular.ManinSymbols
import Mathlib.Modular.WindingQuotient

/-!
# Merel's numerical test at the cusp

Darmon–Merel, J. Reine Angew. Math. 490 (1997), §7 and Lemma 8.2, test
formal immersion of `X₀(N) → J_e` at the cusp by whether some Hecke
operator `T_q - (q + 1)` keeps the winding class nonzero modulo `p`.
Proposition 4.2 of that paper is the split-Cartan argument for
`p ≡ 1 (mod 4)`. This file is the numerical half of that test for
`N ∈ {32, 64}` and `p = 13`.

`card_P1_32`, `card_P1_64`, `plusDim_32`, and `plusDim_64` are proved
in `ManinSymbols`: the plus spaces have dimensions `48 - relationRank 32 = 6`
and `96 - relationRank 64 = 10`. `winding_nonzero_mod13_32` and
`winding_nonzero_mod13_64` are the vectors

```text
(T_5 - 6) e₃₂ = (0, 0, 4, -4, 0, 0)
(T_5 - 6) e₆₄ = (0, 0, 0, 2, 2, -4, 0, 0, 0, 0)
```

The model `Y² = X³ - X` is Cremona `32a1`. The four integral points below
lie on it. That is not a determination of `X₀(32)(ℚ)`.

The `q`-expansions are the normalized newforms whose prime coefficients
are the Hecke eigenvalues proved in `WindingQuotient`. For a
one-dimensional quotient, the cotangent vector at the cusp is the
coefficient of `q`, which is `1`.

These facts do not contradict `a⁴ + b⁴ = c¹³`. The modularity axiom and
Ribet's axiom are still required for a Frey curve, and Lemma 8.2's map
`X₀(N) → J_e` is not constructed.
-/

/-- Trial division. `natPrime n = true` when `n` is a prime number. -/
def natPrime (n : Nat) : Bool :=
  if n < 2 then false
  else
    let rec go (fuel d : Nat) : Bool :=
      match fuel with
      | 0 => true
      | fuel + 1 =>
        if d * d > n then true
        else if n % d = 0 then false
        else go fuel (d + 1)
    go n 2

theorem five_is_prime : natPrime 5 = true := by
  decide

/-- Merel's test: some prime `q ≠ p` has `(T_q - (q + 1)) {0, ∞} ≢ 0 (mod p)`. -/
def FormalImmersionAtCusp (N p : Nat) : Prop :=
  ∃ q : Nat, natPrime q = true ∧ q ≠ p ∧
    nonzeroMod (p : Int) (tqMinus q (heckeMatrix N q) (windingElement N)) = true

theorem formal_immersion_32_13 : FormalImmersionAtCusp 32 13 := by
  refine ⟨5, five_is_prime, ?_, ?_⟩
  · decide
  · rw [show heckeMatrix 32 5 = T5_32 from rfl, show windingElement 32 = e32 from rfl]
    exact winding_nonzero_mod13_32

theorem formal_immersion_64_13 : FormalImmersionAtCusp 64 13 := by
  refine ⟨5, five_is_prime, ?_, ?_⟩
  · decide
  · rw [show heckeMatrix 64 5 = T5_64 from rfl, show windingElement 64 = e64 from rfl]
    exact winding_nonzero_mod13_64

/-- Weierstrass coefficients of `Y² = X³ - X`, Cremona `32a1`. -/
structure WeierstrassModel where
  a1 : Int
  a2 : Int
  a3 : Int
  a4 : Int
  a6 : Int

def X0_32_model : WeierstrassModel :=
  { a1 := 0, a2 := 0, a3 := 0, a4 := -1, a6 := 0 }

def onCurve (W : WeierstrassModel) (x y : Int) : Bool :=
  y * y + W.a1 * x * y + W.a3 * y == x * x * x + W.a2 * x * x + W.a4 * x + W.a6

theorem X0_32_integral_points :
    onCurve X0_32_model 0 0 = true ∧ onCurve X0_32_model 1 0 = true ∧
      onCurve X0_32_model (-1) 0 = true := by
  native_decide

/-- Normalized `q`-expansion of `32.2.a.a` through `q¹⁹`.

Prime coefficients are `hecke32_eigenvalues`. For `p ∤ 32`,
`a(p²) = a(p)² - p`. For `p | 32`, `a(2) = 0`, so `a(2ᵏ) = 0`.
-/
def qExp32 : List Int :=
  [0, 1, 0, 0, 0, -2, 0, 0, 0, -3, 0, 0, 0, 6, 0, 0, 0, 2, 0, 0]

/-- Normalized `q`-expansion of `64.2.a.a` through `q¹⁹`.

`a₅ = 2`, `a₁₃ = -6`, and `a₉ = a₃² - 3 = -3`.
-/
def qExp64 : List Int :=
  [0, 1, 0, 0, 0, 2, 0, 0, 0, -3, 0, 0, 0, -6, 0, 0, 0, 2, 0, 0]

def coeff (n : Nat) (a : List Int) : Int :=
  a.getD n 0

theorem qExp32_matches_hecke :
    coeff 2 qExp32 = 0 ∧ coeff 3 qExp32 = 0 ∧ coeff 5 qExp32 = -2 ∧
      coeff 7 qExp32 = 0 ∧ coeff 11 qExp32 = 0 ∧ coeff 13 qExp32 = 6 ∧
      coeff 17 qExp32 = 2 ∧ coeff 19 qExp32 = 0 ∧ hecke32_ok = true := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, hecke32_eigenvalues⟩
  all_goals decide

theorem qExp64_matches_hecke :
    coeff 2 qExp64 = 0 ∧ coeff 3 qExp64 = 0 ∧ coeff 5 qExp64 = 2 ∧
      coeff 7 qExp64 = 0 ∧ coeff 11 qExp64 = 0 ∧ coeff 13 qExp64 = -6 ∧
      coeff 17 qExp64 = 2 ∧ coeff 19 qExp64 = 0 ∧ hecke64_ok = true := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, hecke64_eigenvalues⟩
  all_goals decide

theorem qExp_square_relation :
    coeff 9 qExp32 = coeff 3 qExp32 * coeff 3 qExp32 - 3 * coeff 1 qExp32 ∧
      coeff 9 qExp64 = coeff 3 qExp64 * coeff 3 qExp64 - 3 * coeff 1 qExp64 := by
  native_decide

/-- The normalized newform has `a₁ = 1`, so the cotangent vector at `∞` is nonzero mod `13`. -/
theorem abelJacobi_32_cotangent_mod13 : coeff 1 qExp32 % 13 ≠ 0 := by
  decide

theorem abelJacobi_64_cotangent_mod13 : coeff 1 qExp64 % 13 ≠ 0 := by
  decide
