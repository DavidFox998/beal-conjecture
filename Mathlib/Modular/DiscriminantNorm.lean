import DarmonMerel.«3_RibetLowering4413»

/-!
# Norm of the Frey discriminant

Pacetti's discriminant is `Δ = 2⁹ (a² + b² √(-1)) c¹³`. Its field norm is

```
N(Δ) = Δ · conjugate(Δ) = discriminant_re² + discriminant_im².
```

Under `a⁴ + b⁴ = c¹³` this equals `2¹⁸ c³⁹`.

That integer is not the conductor. Tate's algorithm is not formalized, and
the residual representation `ρ_{E,13}` is not constructed, so its
irreducibility is not decided. `ribet_level_lowering_4413` remains an axiom.
-/

namespace FreyCurve4413

/-- `N(Δ) = 2¹⁸ c³⁹` for a Frey curve attached to `a⁴ + b⁴ = c¹³`. -/
theorem discriminant_norm (E : FreyCurve4413) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 =
      (2 : ℤ) ^ 18 * E.c ^ 39 := by
  have h : E.a ^ 4 + E.b ^ 4 = E.c ^ 13 := E.h_eq
  unfold discriminant_re discriminant_im
  grind

/-- The norm formula, together with one Ribet level.

The first conjunct is `discriminant_norm`. The second is the newform from
`ribet_level_lowering_4413` at the supplied shape `N`. `RhoE13Open` is still
a hypothesis. The norm does not produce it.
-/
theorem norm_and_level_lowering_axiom
    {c : ℤ} (E : FreyCurve4413) (N : ℕ)
    (hCond : FreyConductorDivides c N) (hIrr : RhoE13Open E)
    (hPacetti : pacetti_2_8_open) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 = (2 : ℤ) ^ 18 * E.c ^ 39 ∧
      ∃ n : ℕ, ∃ g : Newform n, LevelLowered E g := by
  let pkg : RibetLevel c E N := ribet_level_lowering_4413 N hCond hIrr hPacetti
  exact ⟨discriminant_norm E, pkg.level, pkg.output.g, pkg.output.lowered⟩

end FreyCurve4413
