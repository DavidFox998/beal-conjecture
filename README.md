# Frey ℚ-curve for `a⁴ + b⁴ = c¹³`

Lean 4 definitions of the Frey ℚ-curve over `ℚ(√-1)` attached to an integer
solution of `a^4 + b^4 = c^13`.

That equation is Pacetti's equation `x^4 + d y^2 = z^p` with `x = a`,
`y = b^2`, `z = c`, `d = 1`, and `p = 13`. The curve is

```text
y² = X³ + 4 a X² + 2 (a² + b² √(-1)) X
```

and the discriminant on the slide specializes to

```text
Δ = 2⁹ (a² + b² √(-1)) c¹³.
```

`ℤ[√-1]` is represented by the integer triple `(A_int, B_re, B_im)`.
The coefficient identities are definitional (`rfl`). `discriminant_re` and
`discriminant_im` are Pacetti's formula. `discriminant_eq_weierstrass` proves
they equal the Weierstrass discriminant `16 B² (A² - 4 B)`, using
`a^4 + b^4 = c^13`. That file declares no axioms and uses no `sorry`.

`DarmonMerel/2_Modularity4413.lean` states modularity of this ℚ-curve as the
single axiom `frey_qcurve_modular` (Ribet 2004 and Breuil–Conrad–Diamond–Taylor
2001; Pacetti 2023 invokes Serre and Taylor–Wiles for the same step). The
twisted representation `rho_E_p_twisted` is a `sorry` placeholder. The
implication from that axiom to level lowering is proved.

`DarmonMerel/3_RibetLowering4413.lean` is the second axiom,
`ribet_level_lowering_4413` (Ribet, Invent. Math. 100 (1990), and Pacetti's
slide “Ribet's lowering the level result”). For `d = 1` the sets `Qᵢ` are
empty, so the lowered level is a power of two. Which power — `32` or `64` —
is the placeholder `level_32_or_64`.

Sources:

- Pacetti, *On solutions to x⁴ + d y² = zᵖ*, Dubrovnik, 19 June 2023, Slide 3, equation (1). The curve is `y² = x³ + 4 a x² + 2 (a² + b √(-d)) x`, and `Δ = 2⁹ (a² + b √(-d)) cᵖ`.
- Pacetti–Villagra Torcomian, *ℚ-curves, Hecke characters and some Diophantine equations*, arXiv:2007.11486, §2.1.
- Darmon–Merel, *Winding quotients and some variants of Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), §2, Lemma 2.1. The rational Frey curve of that paper is a different model; Proposition 4.1 is the link with `ℚ(i)`.

## Build

The toolchain is pinned in `lean-toolchain` (Lean 4.34.1). With [elan](https://github.com/leanprover/elan):

```bash
lake build DarmonMerel.1_FreyCurve4413
lake build DarmonMerel.2_Modularity4413
lake build DarmonMerel.3_RibetLowering4413
```

`lake build` builds the `DarmonMerel` library.
