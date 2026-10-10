import Mathlib.Modular.DiscriminantNorm

/-!
# What is still open for Ribet's level

`discriminant_norm` proves `N(Δ) = 2¹⁸ c³⁹` for
`Δ = 2⁹ (a² + b² √(-1)) c¹³`.

## FreyConductor_OPEN

Tate's algorithm at the prime `2` is not formalized. The literature expects
the exponent of `2` in the conductor of a minimal model to be `5` or `6`.
This repository has no conductor function, so that disjunction is not a
theorem and it is not an axiom. `two_pow_eighteen_dvd_discriminant_norm` is
only the divisibility `2¹⁸ ∣ N(Δ)`. It does not place a lowered level in
`{32, 64}`.

## rho_E_13_OPEN

`rho_E_p` and `rho_E_p_twisted` are the marker
`GaloisRepresentation.unresolved`. The 13-division polynomial of
`y² = X³ + A X² + B X` is not constructed. There is no proof that this
polynomial has no root in `ℚ(√-1)` when `a` and `b` are nonzero, and that
missing statement is not absolute irreducibility of a residual representation.
`Irreducible (rho_E_p E)` remains a hypothesis of `ribet_level_lowering_4413`.
-/

namespace FreyCurve4413

/-- `2¹⁸ ∣ N(Δ)`, from `N(Δ) = 2¹⁸ c³⁹`.

`FreyConductor_OPEN`: the exponent of `2` in the conductor is not computed.
-/
theorem two_pow_eighteen_dvd_discriminant_norm (E : FreyCurve4413) :
    (2 : ℤ) ^ 18 ∣ E.discriminant_re ^ 2 + E.discriminant_im ^ 2 := by
  rw [discriminant_norm E]
  exact ⟨E.c ^ 39, rfl⟩

/-- `rho_E_13_OPEN`: both representation markers are unresolved. -/
theorem rho_E_p_is_unresolved (E : FreyCurve4413) :
    rho_E_p E = GaloisRepresentation.unresolved ∧
      rho_E_p_twisted E = GaloisRepresentation.unresolved :=
  ⟨rfl, rfl⟩

end FreyCurve4413
