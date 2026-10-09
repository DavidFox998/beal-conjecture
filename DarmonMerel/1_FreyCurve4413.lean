/-!
# Frey ℚ-curve for `a^4 + b^4 = c^13`

An integer solution of `a^4 + b^4 = c^13` is a solution of
`x^4 + d y^2 = z^p` by taking `x = a`, `y = b^2`, `z = c`, `d = 1`, and `p = 13`,
because `a^4 + (b^2)^2 = c^13`. Pacetti attaches to `(x, y, z)` the elliptic curve

```
E : y² = X³ + 4 x X² + 2 (x² + y √(-d)) X
```

over `K = ℚ(√(-d))`. It is a ℚ-curve: its conjugate is 2-isogenous to its
quadratic twist by the character of `ℚ(√-2)`. Substituting the parameters above
gives a curve over `ℚ(√-1)`, with `I = √-1`:

```
y² = X³ + (4 a) X² + 2 (a² + b² I) X.
```

The coefficient of `X²` lies in `ℤ`. The coefficient of `X` lies in
`ℤ[I] = ℤ + ℤ I`, stored here as a real part and an imaginary part.
There is no `ℤ[√-1]` type in this development.

## Citations

* Darmon–Merel 1997, J. Reine Angew. Math. 490, §2, Lemma 2.1.
  That lemma computes the conductor of the mod-`p` representation of the Frey
  curve over `ℚ` attached to `x^n + y^n = z^2`. Proposition 4.1 of the same
  paper shows that this representation cuts out an abelian extension of `ℚ(i)`.
  The Weierstrass model in this file is not that rational Frey curve; it is the
  ℚ-curve over `ℚ(i)` for the shape `x^4 + y^2 = z^p`.

* Pacetti 2023, Slide 3, eq (1), Dubrovnik, 19 June 2023,
  *On solutions to x⁴ + d y² = zᵖ*:
  `E(a,b,c): y^2 = x^3 + 4a x^2 + 2(a^2 + b √(-d)) x`.
  The slide has `b √(-d)`, not `b^p √(-d)`. The exponent `p` is the one in
  `z^p` and in the factor `c^p` of the discriminant.

* Pacetti–Villagra Torcomian, arXiv:2007.11486, §2.1, the same equation, with
  discriminant `Δ(E) = 512 (a² + b √(-d)) c^p`.

* Discriminant, after `d = 1`, `p = 13`, and `y = b^2`:
  `Δ = 2^9 (a^2 + b^2 √(-1)) c^13`.

## Why the powers are `a` and `b^2`

Pacetti's `a` is the base of the fourth power, and Pacetti's `b` is the
integer under the square. For `a^4 + b^4 = c^13` those are `a` and `b^2`,
so the coefficients are `4 a` and `2 (a^2 + b^2 I)`. Replacing them by
`4 a^2` and `2 (a^4 + b^4 I)` would be Pacetti's curve for
`(a^2)^4 + (b^4)^2 = a^8 + b^8`, which is a different equation.

## Discriminant

For `y² = X³ + A X² + B X` one has `Δ = 16 B² (A² - 4 B)`. With
`A = 4 a` and `B = 2 (a² + b² I)` this expands to

```
Δ = 2^9 (a² + b² I)² (a² - b² I) = 2^9 (a² + b² I) (a⁴ + b⁴).
```

The Diophantine condition `a^4 + b^4 = c^13` rewrites the second factor,
which is the formula on the slide: `Δ = 2^9 (a² + b² I) c^13`.
`discriminant_re` and `discriminant_im` are that formula. They are
definitions; this file does not prove they equal the Weierstrass discriminant.

A primitive solution in the sense of the talks also satisfies `gcd(a, b, c) = 1`.
That coprimality hypothesis is not stored on the structure.
-/

/-- Frey ℚ-curve over `ℤ[√-1]` attached to an integer solution of `a^4 + b^4 = c^13`.

`A_int`, `B_re`, and `B_im` are the coefficients of
`y² = X³ + A_int X² + (B_re + B_im √(-1)) X`. -/
structure FreyCurve4413 where
  /-- Base of the first fourth power in `a^4 + b^4 = c^13`. -/
  a : ℤ
  /-- Base of the second fourth power. Pacetti's square coordinate is `b^2`. -/
  b : ℤ
  /-- Base of the thirteenth power. -/
  c : ℤ
  /-- Coefficient of `X²`. It lies in `ℤ`, and equals `4 * a`. -/
  A_int : ℤ
  /-- Real part of the coefficient of `X`. It equals `2 * a^2`. -/
  B_re : ℤ
  /-- Coefficient of `√(-1)` in the coefficient of `X`. It equals `2 * b^2`. -/
  B_im : ℤ
  /-- Pacetti's linear coefficient at his `a`-parameter `a`. -/
  h_A : A_int = 4 * a
  /-- Real part of `2 (a^2 + b^2 √(-1))`. -/
  h_B_re : B_re = 2 * a ^ 2
  /-- Imaginary part of `2 (a^2 + b^2 √(-1))`. -/
  h_B_im : B_im = 2 * b ^ 2
  /-- The Diophantine condition. -/
  h_eq : a ^ 4 + b ^ 4 = c ^ 13

namespace FreyCurve4413

/-- Build the Frey curve of an integer solution `a^4 + b^4 = c^13`.

The coefficient proofs are definitional (`rfl`): `A_int`, `B_re`, and `B_im`
are filled with `4 * a`, `2 * a^2`, and `2 * b^2`. -/
def mk' (a b c : ℤ) (h_eq : a ^ 4 + b ^ 4 = c ^ 13) : FreyCurve4413 where
  a := a
  b := b
  c := c
  A_int := 4 * a
  B_re := 2 * a ^ 2
  B_im := 2 * b ^ 2
  h_A := rfl
  h_B_re := rfl
  h_B_im := rfl
  h_eq := h_eq

/-- Real part of `Δ = 2^9 (a^2 + b^2 √(-1)) c^13`.

This is Pacetti's discriminant at `d = 1`, `p = 13`, and `y = b^2`.
It is stated as a definition, not derived from the Weierstrass formula. -/
def discriminant_re (E : FreyCurve4413) : ℤ :=
  (2 : ℤ) ^ 9 * E.a ^ 2 * E.c ^ 13

/-- Imaginary part of `Δ = 2^9 (a^2 + b^2 √(-1)) c^13`. -/
def discriminant_im (E : FreyCurve4413) : ℤ :=
  (2 : ℤ) ^ 9 * E.b ^ 2 * E.c ^ 13

/-- Trivial solution `(1, 0, 1)`. Pacetti records that `(±1, 0, 1)` has CM by `ℤ[√-2]`. -/
def trivial : FreyCurve4413 := mk' 1 0 1 rfl

/-- Trivial solution `(0, 1, 1)`. For `d = 1`, Pacetti records CM by `ℤ[√-1]`. -/
def trivialB : FreyCurve4413 := mk' 0 1 1 rfl

example : trivial.A_int = 4 := rfl
example : trivial.B_re = 2 := rfl
example : trivial.B_im = 0 := rfl
example : trivial.discriminant_re = 512 := rfl
example : trivial.discriminant_im = 0 := rfl

example : trivialB.A_int = 0 := rfl
example : trivialB.B_re = 0 := rfl
example : trivialB.B_im = 2 := rfl
example : trivialB.discriminant_re = 0 := rfl
example : trivialB.discriminant_im = 512 := rfl

end FreyCurve4413
