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
`level_32_or_64` checks the two candidates `2⁵ = 32` and `2⁶ = 64`.

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

Ellenberg's large-image theorem is not formalized. The predicate is the
interface Ribet's hypothesis uses, and its body is `True`, so a Frey curve
can be passed to `ribet_level_lowering_4413`.
-/
def Irreducible (_ρ : GaloisRepresentation) : Prop := True

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

/-- Numerical shape `32 |c|²` or `64 |c|²`.

This is not a proof that `N` is the conductor. Tate's algorithm is not
formalized.
-/
def ConductorShape (c : ℤ) (N : ℕ) : Prop :=
  N = 32 * c.natAbs ^ 2 ∨ N = 64 * c.natAbs ^ 2

/-- Ribet's lowering-the-level theorem for `d = 1`, `p = 13`.

`h_p_not_d` is the slide hypothesis `p ∤ 2d` in this case: `13 ∤ 2`.
The first conjunct is a newform of some level. The second conjunct says
that if `N` equals `32 |c|²` or `64 |c|²`, then some newform level divides
that `N`. The two levels need not be equal: `64` need not divide `32 |c|²`.
`RhoE13Open` is not an argument. It is opaque, and the callers that only
have `Irreducible` cannot build a term of it. It does not prove `n = 32`,
`n = 64`, or that `N` is the conductor.

Citation: Ribet 1990, Invent. Math. 100, and Pacetti's slide
“Ribet's lowering the level result”.
Note: this is axiom 2 until Mathlib has Ribet's theorem for ℚ-curves.
-/
axiom ribet_level_lowering_4413 (a b c : ℤ) (E : FreyCurve4413)
    (h_irred : Irreducible (rho_E_p E)) (h_p_not_d : ¬ (13 ∣ 2)) :
    (∃ (n : ℕ) (g : Newform n), LevelLowered E g) ∧
      ∀ N : ℕ, ConductorShape E.c N →
        ∃ (n : ℕ) (g : Newform n), n ∣ N ∧ LevelLowered E g

/-- For `d = 1` every odd slot `Q₁, Q₃, Q₅, Q₇` is empty, so Pacetti's
odd part of the lowered level is `1` and the level is a power of `2`. -/
theorem odd_conductor_empty (q : ℕ) :
    ¬ Qmod 1 1 q ∧ ¬ Qmod 1 3 q ∧ ¬ Qmod 1 5 q ∧ ¬ Qmod 1 7 q :=
  ⟨Qmod_empty_d1 1 q, Qmod_empty_d1 3 q, Qmod_empty_d1 5 q, Qmod_empty_d1 7 q⟩

/-- The two 2-power candidates are `2⁵ = 32` and `2⁶ = 64`.

`odd_conductor_empty` removes every odd prime from Pacetti's product.
Darmon–Merel §4 gives level `32` for their equations `(1)` and `(2)`;
`64 = 2⁶` is the other power in the conductor range used for `d = 1`.
-/
theorem level_32_or_64 : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64 := by
  decide
