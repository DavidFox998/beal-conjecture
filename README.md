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
`a^4 + b^4 = c^13`. The source declares no axioms and uses no `sorry`.

Sources:

- Pacetti, *On solutions to x⁴ + d y² = zᵖ*, Dubrovnik, 19 June 2023, Slide 3, equation (1). The curve is `y² = x³ + 4 a x² + 2 (a² + b √(-d)) x`, and `Δ = 2⁹ (a² + b √(-d)) cᵖ`.
- Pacetti–Villagra Torcomian, *ℚ-curves, Hecke characters and some Diophantine equations*, arXiv:2007.11486, §2.1.
- Darmon–Merel, *Winding quotients and some variants of Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), §2, Lemma 2.1. The rational Frey curve of that paper is a different model; Proposition 4.1 is the link with `ℚ(i)`.

## Build

The toolchain is pinned in `lean-toolchain` (Lean 4.34.1). With [elan](https://github.com/leanprover/elan):

```bash
lake build DarmonMerel.1_FreyCurve4413
```

`lake build` builds the `DarmonMerel` library.
