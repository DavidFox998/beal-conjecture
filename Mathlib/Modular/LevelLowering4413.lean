import Mathlib.Modular.DiscriminantNorm

/-!
# What Ribet's level still needs

`discriminant_norm` proves `N(Δ) = 2¹⁸ c³⁹` for
`Δ = 2⁹ (a² + b² √(-1)) c¹³`. Since `a⁴ + b⁴ = c¹³`, the factor
`a² + b² √(-1)` has field norm `c¹³`, and `c³⁹ = (c³)¹³`, so

```
N(Δ) = 2¹⁸ (c³)¹³.
```

That is `discriminant_norm_odd_part`. For an odd prime `p` dividing `c`,
the exponent of `p` in this norm is a multiple of `13`. This is an identity
in `ℤ`. It is not finiteness of a residual Galois representation, and it is
not Tate's algorithm.

## FreyConductor_OPEN

Tate's algorithm at `2` is not formalized. `FreyConductor_OPEN E N` is the
hypothesis that a caller-supplied integer `N` equals `32 c²` or `64 c²`
(`2⁵ c²` or `2⁶ c²`). No theorem produces the conductor. The numerical
fact `32 * c ^ 2 = 32 * c ^ 2` does not compute one. The lowered level is
not placed in `{32, 64}`.

## rho_E_13_OPEN

This package has no `EllipticCurve` type and no division polynomial.
`xDivisionDegree 13 = 84` is the count `(13² - 1) / 2` of nonzero
x-coordinates of `13`-torsion. The polynomial whose roots those would be
is not constructed, and there is no proof that it has no root in `ℚ(√-1)`
when `a` and `b` are nonzero.

`rho_E_13` is the existing marker `GaloisRepresentation.unresolved`.
`RhoE13Open` is the sealed statement that a residual representation on the
`13`-torsion is absolutely irreducible. Nothing produces a term of that type.
The predicate `Irreducible` used by `ribet_level_lowering_4413` is a separate
interface.

`ribet_given_open_hypotheses` assumes `FreyConductor_OPEN` and `RhoE13Open`,
and calls `ribet_level_lowering_4413`. The axiom returns a newform of some
level `n`. It does not prove `n = 32`, `n = 64`, or `n = N`.
-/

/-- Classical count `(p² - 1) / 2` of the x-coordinates of the nonzero
`p`-torsion of an elliptic curve, for odd `p`.

This is arithmetic. It is not a division polynomial. -/
def xDivisionDegree (p : Nat) : Nat :=
  (p * p - 1) / 2

theorem xDivisionDegree_13 : xDivisionDegree 13 = 84 := by
  decide

namespace FreyCurve4413

/-- `N(Δ) = 2¹⁸ (c³)¹³`.

The odd part of the norm is a thirteenth power. This rewrites
`discriminant_norm`. -/
theorem discriminant_norm_odd_part (E : FreyCurve4413) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 =
      (2 : ℤ) ^ 18 * (E.c ^ 3) ^ 13 := by
  rw [discriminant_norm E]
  have hpow : E.c ^ 39 = (E.c ^ 3) ^ 13 := by
    have h39 : (39 : Nat) = 3 * 13 := rfl
    rw [h39, Int.pow_mul]
  rw [hpow]

/-- `2¹⁸ ∣ N(Δ)`, from `N(Δ) = 2¹⁸ c³⁹`. -/
theorem two_pow_eighteen_dvd_discriminant_norm (E : FreyCurve4413) :
    (2 : ℤ) ^ 18 ∣ E.discriminant_re ^ 2 + E.discriminant_im ^ 2 := by
  rw [discriminant_norm E]
  exact ⟨E.c ^ 39, rfl⟩

/-- `FreyConductor_OPEN`.

Hypothesis that `N` equals `32 c²` or `64 c²`. Tate's algorithm is not
formalized, so this file has no proof that the conductor satisfies it.
-/
def FreyConductor_OPEN (E : FreyCurve4413) (N : ℤ) : Prop :=
  N = 32 * E.c ^ 2 ∨ N = 64 * E.c ^ 2

/-- `rho_E_13_OPEN`.

Sealed stand-in for absolute irreducibility of the residual representation
on the `13`-torsion. The division polynomial is not constructed. There is
no axiom and no theorem giving a term of this type. The sealed body is
`True`, so the definition does not assert a contradiction.
-/
opaque RhoE13Open (E : FreyCurve4413) : Prop := True

/-- The residual representation attached to `E` in this development.

This is `rho_E_p`, the unresolved marker. It is not built from `13`-torsion.
-/
def rho_E_13 (E : FreyCurve4413) : GaloisRepresentation :=
  rho_E_p E

theorem rho_E_13_is_unresolved (E : FreyCurve4413) :
    rho_E_13 E = GaloisRepresentation.unresolved :=
  rfl

/-- `rho_E_13_OPEN`: both representation markers are unresolved. -/
theorem rho_E_p_is_unresolved (E : FreyCurve4413) :
    rho_E_p E = GaloisRepresentation.unresolved ∧
      rho_E_p_twisted E = GaloisRepresentation.unresolved ∧
      rho_E_13 E = GaloisRepresentation.unresolved :=
  ⟨rfl, rfl, rfl⟩

/-- Conductor hypothesis, irreducibility hypothesis, and the Ribet axiom.

`hTate` and `hRho` are returned unchanged. They are not theorems.
`discriminant_norm_odd_part` is a theorem. `ribet_level_lowering_4413`
supplies a newform of some level `n` and does not identify `n` with `32`,
`64`, or `N`.
-/
theorem ribet_given_open_hypotheses
    (a b c : ℤ) (E : FreyCurve4413) (N : ℤ)
    (hTate : FreyConductor_OPEN E N)
    (hRho : RhoE13Open E)
    (hIrred : Irreducible (rho_E_p E))
    (hp : ¬ ((13 : ℕ) ∣ 2)) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 =
        (2 : ℤ) ^ 18 * (E.c ^ 3) ^ 13 ∧
      FreyConductor_OPEN E N ∧
      RhoE13Open E ∧
      ∃ n : ℕ, ∃ g : Newform n, LevelLowered E g :=
  ⟨discriminant_norm_odd_part E, hTate, hRho,
    ribet_level_lowering_4413 a b c E hIrred hp⟩

end FreyCurve4413
