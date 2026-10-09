import Init
import DarmonMerel.«2_Modularity4413»

notation "ℕ" => Nat

/-!
# Ribet level lowering for the Frey ℚ-curve

Pacetti's Dubrovnik 2023 slide states Ribet's lowering-the-level result:

> Suppose `p ∤ 2d` and `ρ_{E,p}` is absolutely irreducible. Then there is a
> newform `g ∈ S₂(Γ₀(n), ε)` with
> `n = 2^e · ∏_{q ∈ Q₃} q · ∏_{q ∈ Q₁ ∪ Q₅ ∪ Q₇} q²`
> such that `ρ_{E,p} ≡ ρ_{g,K,p} ⊗ χ⁻¹ (mod p)`.

The sets are `Qᵢ = { q prime : q ∣ d, q ≡ i (mod 8) }` for `i ∈ {1,3,5,7}`.
For the signature `a⁴ + b⁴ = c¹³` one has `d = 1` and `p = 13`. No prime
divides `d`, so each `Qᵢ` is empty and the lowered level is a power of `2`.
The 2-adic exponent is not computed here: the expected values are `2⁵ = 32`
and `2⁶ = 64`.

## Citations

* Ribet 1990, Invent. Math. 100: Kenneth A. Ribet, *On modular representations
  of Gal(ℚ̄/ℚ) arising from modular forms*, Inventiones Mathematicae 100
  (1990), 431–476.
* Pacetti 2023, slide “Ribet's lowering the level result”.
* Note: this is axiom 2 until Mathlib has Ribet's theorem for ℚ-curves.
-/

/-- `q` belongs to Pacetti's set `Qᵣ` for the positive integer `d`:
`q` is prime, `q ∣ d`, and `q ≡ r (mod 8)`. -/
def Qmod (d r q : ℕ) : Prop :=
  1 < q ∧ q ∣ d ∧ q % 8 = r

/-- For `d = 1` every `Qᵣ` is empty: the only positive divisor of `1` is `1`,
which is not prime. -/
theorem Qmod_empty_d1 (r q : ℕ) : ¬ Qmod 1 r q := by
  intro h
  rcases h with ⟨_, hd, _⟩
  have hq1 : q = 1 := Nat.dvd_one.mp hd
  omega

/-- Residual representation `ρ_{E,13}` attached to the Frey curve.

The group and the coefficient field are not formalized. The twist that Ribet
extends to `Gal(ℚ̄/ℚ)` is the separate placeholder `rho_E_p_twisted`.
-/
def rho_E_p (_E : FreyCurve4413) : GaloisRepresentation :=
  .unresolved

/-- Absolute irreducibility of a residual representation.

Sealed, like `Modular`. The body is `True`, so assuming it in
`ribet_level_lowering_4413` does not assert a contradiction.
-/
opaque Irreducible (_ρ : GaloisRepresentation) : Prop := True

/-- A weight-2 newform of level `n` with Nebentypus `ε`.

The Nebentypus character and the Hecke eigenvalues are not formalized.
-/
structure Newform (n : ℕ) where

/-- `g` is a newform whose residual representation, restricted to `K` and
twisted by `χ⁻¹`, agrees with `ρ_{E,p}` modulo `13`, as on Pacetti's slide.
-/
opaque LevelLowered (E : FreyCurve4413) {n : ℕ} (_g : Newform n) : Prop := True

/-- Lowered level after the odd primes in the `Qᵢ` are removed.
For `d = 1` that product is `1`, so the level is `2^e`. -/
def loweredLevel (e : ℕ) : ℕ :=
  2 ^ e

example : loweredLevel 5 = 32 := rfl
example : loweredLevel 6 = 64 := rfl

/-- Ribet's lowering-the-level theorem for `d = 1`, `p = 13`.

`h_p_not_d` is the slide hypothesis `p ∤ 2d` in this case: `13 ∤ 2`.
The conclusion is a newform of some level `n = 2^e`.

Citation: Ribet 1990, Invent. Math. 100, and Pacetti's slide
“Ribet's lowering the level result”.
Note: this is axiom 2 until Mathlib has Ribet's theorem for ℚ-curves.
-/
axiom ribet_level_lowering_4413 (a b c : ℤ) (E : FreyCurve4413)
    (h_irred : Irreducible (rho_E_p E)) (h_p_not_d : ¬ (13 ∣ 2)) :
    ∃ (n : ℕ) (g : Newform n), LevelLowered E g

/-- For this signature the lowered level is `32` or `64`.

Placeholder. `Qmod_empty_d1` removes the odd part of Pacetti's product, so
`n = 2^e`; the computation of `e` is not done in this file.
-/
theorem level_32_or_64 (a b c : ℤ) (E : FreyCurve4413)
    (h_irred : Irreducible (rho_E_p E)) (h_p_not_d : ¬ (13 ∣ 2))
    (n : ℕ) (g : Newform n) (h_low : LevelLowered E g) :
    n = 32 ∨ n = 64 := by
  have _a := a
  have _b := b
  have _c := c
  have _E := E
  have _irred := h_irred
  have _p := h_p_not_d
  have _g := g
  have _low := h_low
  sorry
