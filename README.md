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

`Mathlib/Modular/QCurve4413.lean` is the coefficient form of the ℚ-curve
relation for that Frey model. The conjugate `√(-1) ↦ -√(-1)` has Vélu target
`A' = -8 a` and `B' = 8 a² + 8 b² √(-1)`, and `velu_target_eq_twist_neg_two`
says this is the quadratic twist by `-2`. `velu_cleared` is the underlying
polynomial identity. When `a` and `b` are both nonzero, both components of
`Δ = 2⁹ (a² + b² √(-1)) c¹³` are nonzero. The file does not construct
`X₀(32)` or `X₀(64)`, it does not call `frey_qcurve_modular` or
`ribet_level_lowering_4413`, and it does not prove that `a⁴ + b⁴ = c¹³`
has no nonzero solution.

`Mathlib/Modular/X0Moduli32.lean` counts cusps of `X₀(N)` by the classical
divisor formula: the orbit of `a/d` has size `φ(gcd(d, N/d))`, and it is
rational when that gcd is at most `2`. Level `32` has `8` geometric cusps
and `4` rational ones (`d ∈ {1, 2, 16, 32}`). Level `64` has `12`
geometric cusps and `4` rational ones. `card_P1_32 = 48` is a count of
Manin symbols, not of cusps. A nonzero solution still yields
`velu_target_eq_twist_neg_two` and a nonzero discriminant. Given
`RhoE13Open`, Ribet's axiom returns one newform at a conductor-shaped
level. That package is not a rational point of `X₀(32)`.

`Mathlib/Modular/X0_32_Construction.lean` specializes Vélu's identity at
`A = 0`, `B = -1`. The target coefficients are `A' = 0`, `B' = 4`, the
equation `y² = x³ + 4x`. LMFDB calls that equation Cremona `32a1` and a
model of `X₀(32)`; the isomorphism is not formalized. `(2, ±4)` lie on
the curve and double to `(0, 0)`. That is not a proof of rank `0`.
Substituting `x = u + v √(-1)` and `y = s + t √(-1)` into the Frey
equation gives two integer equations. The real part has `- 2 b² v`.
Those equations are not a rational point of `X₀(32)`. At `a = 1`, `b = 1`
the cleared numerator of `j` has imaginary part `-6308233216`, so
`j = -3328 - 3008 √(-1)`. A quadratic twist multiplies `c₄` by `d²`; that
does not make this `j` rational.

`Mathlib/Modular/GL2Type4413.lean` proves that this ratio is not in `ℚ`:
a nonzero denominator cannot kill the imaginary part `-6308233216`.
`1⁴ + 1⁴ = 2` is not a thirteenth power, so the counterexample is not a
solution of `a⁴ + b⁴ = c¹³`. `gl2_type_interface` is the modularity axiom
and Ribet's axiom. They return `Modular E` and a newform of some level.
They do not return a coefficient field `ℚ(√2)` or a proof that no nonzero
solution exists.

`Mathlib/Modular/CoefficientQCurve.lean` names that coefficient equality
`IsCoefficientQCurve`. `frey_is_coefficient_qcurve` is
`velu_target_eq_twist_neg_two`. `IsQCurve` packages the twist `-2`, the
numerator exponent `2` from `ξ = x² + A x + B`, and that equality.
`FreyQCurve_is_QCurve` is this package. `Modular E` is still only
`frey_qcurve_modular`. Serre's conjecture and Taylor–Wiles lifting are not
formalized. `coefficient_relation_and_modularity_axiom` keeps the two
statements side by side.

`Mathlib/Modular/DiscriminantNorm.lean` proves the field norm of
`Δ = 2⁹ (a² + b² √(-1)) c¹³` is `2¹⁸ c³⁹`. That is not Tate's algorithm
and it is not the conductor. `norm_and_level_lowering_axiom` pairs the
norm with `ribet_level_lowering_4413`. Irreducibility of `ρ_{E,13}` is
still a hypothesis. The level is not forced into `{32, 64}`.

`Mathlib/Modular/LevelLowering4413.lean` isolates the missing steps.
`discriminant_norm_odd_part` rewrites the norm as `2¹⁸ (c³)¹³`.
`xDivisionDegree 13 = 84` is the count `(13² - 1) / 2`. `rho_E_13` is the
unresolved marker. `FreyConductor_OPEN E N` is the hypothesis that a
supplied integer `N` equals `32 c²` or `64 c²`. `FreyConductorDivides`
is `ConductorShape`: the same alternative for `N : ℕ` and `|c|`.
`ribet_level_lowering_4413` takes that shape, `RhoE13Open`, and
`pacetti_2_8_open`. It returns one `RibetLevel` whose `h_n_eq` is
`n = 32 ∨ n = 64`, together with `n ∣ N`, coprimality for primes dividing
`|c|`, and a `RibetOutput`. The disjunction is part of the axiom.
`thirtyTwo_dvd_of_eq` turns it into `32 ∣ n`.
`n_dvd_32_or_64_of_prime_to_c` removes those primes and concludes `n ∣ 32`
or `n ∣ 64`. The positive divisors of `64` are `1, 2, 4, 8, 16, 32, 64`.
`pacetti_2_8_open` is the open statement that, on a coprime curve,
`FTameAtPi + SwanAtPi` lies in `{10, 12}`. Both summands are sealed.
`IsINStar` is a condition on a `u = 1` translate of the minimal model.
On that translate `v_π(Δ) = 18`, and the cubic discriminant has
`v_π(d) = 10` or `8`.
`TateAt2LowerBound E n`
packages that exponent with the conjunct `n = 32 ∨ n = 64`. It is not an
axiom and not a theorem. `thirtyTwo_dvd_of_tate_bound` uses only the
disjunction. `thirtyTwo_dvd_of_conductor_shape` proves `32 ∣ N` from the
shape. `shape_dvd_does_not_give_thirtyTwo` is the counterexample
`N = 32`, `n = 1`, `c = 1`. If `c` is odd, `tate_lower_bound_of_c_odd` gives
`v₂(N(Δ)) = 18`. `c4_c6_valuation` factors `2⁵` from `c₄` and `2⁸` from
`c₆`. `c4_c6_coprime_to_2_when_c_odd` says `2` does not divide
`5 a² - 3 b² √(-1)` when `c` is odd. `p2_valuation_of_two_pow` is
`v_π(2^k) = 2k` at `π = 1 + √(-1)`, and `c4_p2_exact_ten` is `v_π(c₄) = 10`
when `c` is odd. `delta_p2_exact_eighteen` is `v_π(Δ) = 18`, and
`a4_p2_exact_two` is `v_π(a₄) = 2`. `pi_scaling_c_invariants_hold` is
`4 ≤ 10` and `12 ≤ 18` for scaling by `π`, while `v_π(a₄) = 2` blocks that
substitution and `18 < 24` blocks scaling by `π²`. `b₂ = 16 a`. A
translation does not change `c₄` or `Δ`. Ogg's formula is the tame
conductor. `v(c₄) < 4` or `v(Δ) < 12` does not hold.
`N(π^10) = 2^10`. That valuation is not the conductor exponent, and it
does not give `32 ∣ n`. `4 ∤ 10` does not prove the model minimal.
After `x ↦ x + π`, `(1, 0, 1)` has `v_π(a₄') = 3` and `(0, 1, 1)` has
`v_π(a₄') = 6`, with the same `v_π(c₄) = 10` and `v_π(Δ) = 18`.
`v_π(a₂') = 1` blocks pure scaling by `π^k`. The transformed coefficient
`a₂' + 3 π` has valuation `3`, so `r = π` meets the `a₂` slot for `u = π`.
When `c` is odd the `a₄` numerator of that substitution has valuation `2`,
below `4`. For `k ≥ 2`, `12 k ≤ v_π(Δ) = 18` fails, so `u = π^k` does not
give an integral discriminant. `r = 0` and `r = π` are congruent modulo `π`
and have `a₂` valuations `1` and `3`, so eight residue classes do not
decide minimality. On `(0, 1, 1)`, `v_π(a₆') = 5` is below Dokchitser's
`n = 4` bound `7`, and `a₆' - t²` does not reach valuation `6`. `t = 0` and
`t = π` are congruent modulo `π`; the `a₆` numerators are `0` and `-π²`,
and `v_π(-π²) = 2`. On `(0, 1, 1)`, `r = π` and `r = π + π²` are congruent
modulo `π²` and have `a₆` valuations `5` and `8`. Sixteen tuples with `r`
modulo `π²` and `s, t` modulo `π` do not decide minimality. A second
translation `x ↦ x + π` on `(0, 1, 1)` leaves `v_π(a₆) = 5`. When `c` is
odd, every `r, s, t` fails the integrality bounds for `u = π`: `v_π(t) = 0`
fails `a₃`, `v_π(r) = 0` fails `a₄`, `v_π(r) = 1` fails `a₂`, and
`v_π(r) ≥ 2` fails `a₄`. If `π²` divides `u`, then `u¹²` does not divide
`Δ`. The shift `r = π²` on `(0, 1, 1)` gives `v_π(a₆) = 8`, `v_π(b₆) = 12`,
and `v_π(D) = 8`. For every even `a` and odd `c`, the same two `x`-shifts
give `v_π(a₂) = 1`, `v_π(a₄) = 4`, `π⁷ ∣ a₆`, and `v_π(D) = 8`, the numerical
inputs for `n = 4`. The conductor exponent stays open. When `a` is odd,
`y ↦ y + π²` gives `v_π(a₃) = 4`, `v_π(a₄) = 3`, `v_π(a₆) = 5`,
`v_π(b₆) = 8`, and `v_π(D) = 6`. Those are the numerical inputs for type
`I₂*`. They are not the conductor exponent, and the wild part is not
proved to be `0`. `no_qi_integral_change_of_c_odd` extends the odd-`c`
integrality split from `ℤ[i]` to `ℚ(i)`. `v_π(a₂) ≥ 4`, so `v_π(s) = -1`
is a separate case, and a denominator coprime to `π` is not in `ℤ[i]`.
`v_π(u) ≥ 2` makes the scaled discriminant non-integral, and `v_π(u) = 1`
fails one of `a₁`, `a₂`, `a₃`, `a₄`. `MinimalModelAt2` is that local
condition. For odd `c` it is `minimalAt2_of_c_odd`. `c_odd_of_coprime` is
`gcd(|a|, |b|) = 1 → c` odd, and `minimalAt2_of_coprime` is minimality for
that pair. `pacetti_2_8_open` asks whether `FTameAtPi + SwanAtPi` lies in
`{10, 12}` on coprime curves. Both summands stay sealed. The `IsINStar`
bounds live on a `u = 1` translate of the Frey equation, so they share its
Weierstrass discriminant. For odd `c`, `v_π(Δ) = 18`. Dokchitser's cubic
discriminant on that translate has `v_π(d) = 10` when `a` is even and
`v_π(d) = 8` when `a` is odd. For even `a`, `Δ = 16 d` and `v_π(16) = 8`.
Tate's Step 7 is not formalized. `swan_vanishes_open` is not
a theorem. `not_minimal_even_c` is the curve `(8, 8, 2)`, where
`u = π` and `r = s = t = 0` lowers `Δ`, and `gcd(8, 8) = 8`.
`IsINStar` is Dokchitser's numerical bounds for even `n` on that translate.
It records `v_π(D) = 8` or `6`. The cubic discriminant on the same
coefficients has `v_π(d) = 10` or `8`, and the Weierstrass discriminant has
`v_π(Δ) = 18`. `SwanAtPi` is sealed and is not proved to vanish.
`(π)^10 = (32)` does not give `n`.
`(-√(-1))^5 · π^10 = 32` with norm `2^10`, and `(-√(-1))^6 · π^12 = 64`
with norm `2^12`. The principal ideals agree. That equality does not give
`n = 32 ∨ n = 64`. `FreyValuationAt2` is `v₂(|c|)`.
`RhoE13Open` is sealed. `Psi13HasNoQiRoot` is stated only for
`NontrivialFrey`. The unrestricted statement fails for `(0, 0, 0)`.
`RhoE13NeedsSL2` is `Psi13HasNoQiRoot` together with the sealed
`ImageContainsSL2 E 13`. The implication to `RhoE13Open` is not a lemma.
`GaussIntRootDecidable` decides evaluation at one Gaussian integer.

`Mathlib/Modular/DarmonMerel4413.lean` is the `n = 4`, `p = 13` layout of
that strategy. `DarmonMerelFrey` is `IsQCurve` plus the non-rational `j`
at `a = 1`, `b = 1`. That pair is not a solution. `norm_odd_prime_exponent`
says that if an odd prime `q` divides `c` and `|c| = q^k m` with `q` not
dividing `m`, then the exact power of `q` in `N(Δ)` is `q^(13 · 3k)`.
That is the norm identity. `rho_E_13` is still unresolved, so the identity
is not finiteness of a residual representation. `DarmonMerelLevelLowering`
assumes `FreyConductor_OPEN`, `RhoE13Open`, and `pacetti_2_8_open`, and
returns existence of one newform from `ribet_level_lowering_4413`.
The axiom's `RibetLevel` stores `n = 32 ∨ n = 64`. This existence
theorem does not project that disjunction. `TateAt2LowerBound` is not a
theorem. `Mathlib/Modular/EllipticCurveMinimal.lean` is the model
`y² = x³ + a₂ x² + a₄ x + a₆` with coefficients in `ℤ[√-1]`.
`c4_c6_discriminant` is `c₄³ - c₆² = 1728 Δ`. `divisionPsi` builds `ψ₁₃`
by the classical recurrence. On `y² = x³ - x` that list has degree `84`
and leading coefficient `13`. `psi13_no_integral_root_on_minus_x` is that
no-root statement for `y² = x³ - x` only. On `y² = x³ + a₂ x² + a₄ x` the
constant term is `a₄ ^ 42`. For a Frey curve its norm is `2 ^ 84 * c ^ 546`,
not `N(Δ)`. `psi13_no_integral_root_OPEN` and `psi13_no_Qi_root_Frey_OPEN`
are not theorems for the Frey coefficients, and neither produces
`RhoE13Open`. `QiDivisors13.lean` lists the sixteen divisors of `13`.
`thirteen_split` is `13 = (2 + 3√-1)(2 - 3√-1)`. `5 + 12√-1` has norm `169`
and does not divide `13`. Euclid's lemma is not proved, so a cleared
denominator is not forced onto that list.
`norm_two_adic`
says `v₂(N(Δ)) = 18 + 39 k` when `|c| = 2^k m`
with `m` odd. The conductor exponents `5` and `6` are not theorems.
`DarmonMerelFrozenFacts` records the winding vectors
`(0,0,4,-4,0,0)` and `(0,0,0,2,2,-4,0,0,0,0)`, the cusp counts, and the
integral points of `Y² = X³ - X`.

`a⁴ + b⁴ = c¹³` still has no nonexistence theorem.

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
