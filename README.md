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
`a^4 + b^4 = c^13`. That file declares no axioms.

`DarmonMerel/2_Modularity4413.lean` states modularity of this ℚ-curve as the
single axiom `frey_qcurve_modular` (Ribet 2004 and Breuil–Conrad–Diamond–Taylor
2001; Pacetti 2023 invokes Serre and Taylor–Wiles for the same step). The
twisted representation `rho_E_p_twisted` is the unresolved marker. The
implication from that axiom to level lowering is proved.

`DarmonMerel/3_RibetLowering4413.lean` is the second axiom,
`ribet_level_lowering_4413` (Ribet, Invent. Math. 100 (1990), and Pacetti's
slide “Ribet's lowering the level result”). For `d = 1` the sets `Qᵢ` are
empty (`odd_conductor_empty`). `level_32_or_64` checks `2⁵ = 32` and
`2⁶ = 64` by `decide`.

`DarmonMerel/4_MazurTrick4413.lean` is Mazur's elimination test
(Pacetti–Villagra, arXiv:2007.11486, Proposition 6.1). `B_mazur` is the norm
in the three splitting cases, and `C_mazur` is the product of those values
over `𝔽_q²`. `mazur_trick_4413` proves that a product which is `0` at every
auxiliary prime is still divisible by `13`, so the vanishing does not
eliminate the form.

LMFDB, trivial character: `S₂(Γ₀(32))` is the one newform `32.2.a.a`
(`a₅ = -2`, `a₁₃ = 6`), and `S₂(Γ₀(64))` is the one newform `64.2.a.a`
(`a₅ = 2`, `a₁₃ = -6`). Both have CM discriminant `-4`. Dimension 2 at
level 64 is `64.2.b.a`, which has nontrivial character.

`DarmonMerel/5_WindingQuotient4413.lean` evaluates Proposition 6.1 at
`q = 5` in Lean. `winding_quotient_no_g_32` and `winding_quotient_no_g_64`
are `native_decide` proofs that both products are `0`. The same holds for
`χ = ±1` and for both signs of `a₅`. `13 ∣ 0`, so `13 ∤ C(5, g)` is false
and this product does not eliminate either form.

`DarmonMerel/7_WindingQuotientAxiom4413.lean` is the third axiom,
`winding_elimination_4413` (Darmon–Merel 1997, §7 winding element `e`,
§8 Lemma 8.2, and Proposition 4.2 for `13 ≡ 1 (mod 4)`). It is the step
that rules out `ab ≠ 0` when the Mazur product of the CM forms is `0`.

`DarmonMerel/6_NoSolution4413.lean` states `no_solution_4413`: there is no
solution of `a⁴ + b⁴ = c¹³` with `a` and `b` both nonzero. The proof builds
the Frey curve, applies modularity and Ribet, uses the computed products
`C(5, 32.2.a.a) = C(5, 64.2.a.a) = 0`, and calls the winding axiom.
`(1, 0, 1)` and `(0, 1, 1)` satisfy the equation. Darmon–Merel, Main
Theorem, part 2, is the different equation `xⁿ + yⁿ = z²`.

Sources:

- Pacetti, *On solutions to x⁴ + d y² = zᵖ*, Dubrovnik, 19 June 2023, Slide 3, equation (1). The curve is `y² = x³ + 4 a x² + 2 (a² + b √(-d)) x`, and `Δ = 2⁹ (a² + b √(-d)) cᵖ`.
- Pacetti–Villagra Torcomian, *ℚ-curves, Hecke characters and some Diophantine equations*, arXiv:2007.11486, §2.1.
- Darmon–Merel, *Winding quotients and some variants of Fermat's Last Theorem*, J. Reine Angew. Math. 490 (1997), §2, Lemma 2.1, §4, §7 (winding element `e`), Lemma 8.2. The rational Frey curve of that paper is a different model; Proposition 4.1 is the link with `ℚ(i)`. Main Theorem, part 2, is `xⁿ + yⁿ = z²`.

## Build

The toolchain is pinned in `lean-toolchain` (Lean 4.34.1). With [elan](https://github.com/leanprover/elan):

```bash
lake build DarmonMerel.1_FreyCurve4413
lake build DarmonMerel.2_Modularity4413
lake build DarmonMerel.3_RibetLowering4413
lake build DarmonMerel.4_MazurTrick4413
lake build DarmonMerel.5_WindingQuotient4413
lake build DarmonMerel.6_NoSolution4413
lake build DarmonMerel.7_WindingQuotientAxiom4413
```

`lake build` builds the `DarmonMerel` library.
