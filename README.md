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

`Mathlib/Modular/ManinSymbols.lean` is the plus Manin-symbol quotient
for `Γ₀(N)`. `card_P1_32` and `card_P1_64` are `|ℙ¹(ℤ/Nℤ)| = 48` and
`96`. `plusDim_32` and `plusDim_64` are the dimensions `6` and `10`,
each `native_decide` on `|ℙ¹|` minus the rank of the Manin relation
matrix. `e32`, `e64`, `T5_32`, and `T5_64` are the winding class
`{0, ∞}` and the operator `T_5`, computed from that quotient.

`Mathlib/Modular/WindingQuotient.lean` proves `(T_5 - 6) e ≢ 0 (mod 13)`
at both levels, the prime Hecke eigenvalues of `32.2.a.a` and `64.2.a.a`
through `19`, and that each of those `T_5`-eigenlines has dimension `1`.

`Mathlib/Modular/FormalImmersion.lean` is Merel's numerical test
`FormalImmersionAtCusp`. `formal_immersion_32_13` and
`formal_immersion_64_13` take `q = 5`. The model `Y² = X³ - X` is
recorded. `integral_two_torsion` classifies its integral points with
`y = 0` as `x ∈ {-1, 0, 1}`, using the factorization
`x³ - x = x(x - 1)(x + 1)`. The 4-division polynomial
`ψ₄ = 4 y (x⁶ - 5 x⁴ - 5 x² + 1)` vanishes at those points because
`y = 0`; the degree-6 factor does not. The normalized `q`-expansions
have `a₁ = 1`. `AbelJacobi_32_is_formal_immersion` is the level-32 test,
and `AbelJacobi_64_formal_immersion` is `a₁ = 1`. Neither constructs a
map of curves, and neither is a proof of `False`. The modularity and
Ribet axioms remain.

`Mathlib/Modular/Rank0_32a1.lean` is Fermat's descent for the same model
`Y² = X³ - X`. `no_rat_point_nonzero` says a rational point in lowest or
unreduced integer coordinates has `Y = 0`, and `int_points_are_two_torsion`
adds `X ∈ {-1, 0, 1}`. The argument is infinite descent on primitive
integer right triangles of square area, not a `native_decide` of a Selmer
list. Cremona `32a1` is a different curve in the isogeny class, with
torsion `ℤ/4ℤ`. This file does not identify the model with `X₀(32)`, and
it does not prove that `a⁴ + b⁴ = c¹³` has no nonzero solution.

`DarmonMerel/7_WindingQuotientAxiom4413.lean` uses those definitions.
`native_decide` proves `(T_5 - 6) e = (0,0,4,-4,0,0)` at level `32` and
`(0,0,0,2,2,-4,0,…)` at level `64`, so both are nonzero mod `13`, and
that `T_5` acts by the LMFDB eigenvalues `a₅ = -2` and `a₅ = 2` on
explicit eigenvectors. `winding_elimination_4413` is that pair of
nonvanishings. It is a theorem. It does not prove `False`: the Mazur
products are `0` and the winding vectors are nonzero mod `13` at the
same time. The map `X₀(N) → J_e` from Darmon–Merel Lemma 8.2 is not
formalized.

`DarmonMerel/6_NoSolution4413.lean` records the two consequences that do
follow. `solution_modular_and_lowered` applies the modularity axiom and
Ribet. `solution_meets_winding_test` adds the nonvanishing above.
`(1, 0, 1)` and `(0, 1, 1)` satisfy the equation. There is no theorem
that `a` and `b` cannot both be nonzero. Darmon–Merel, Main Theorem,
part 2, is the different equation `xⁿ + yⁿ = z²`.

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

`lake build` builds the `DarmonMerel` library. `lake build Mathlib` builds the Manin-symbol library.
