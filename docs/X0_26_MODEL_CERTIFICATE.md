# X₀(26) explicit-model certificate

This note pins the source and replay boundary for
`lean/Beal/Mazur/X0_26_Model.lean`. It certifies only the displayed model and
finite arithmetic. It does **not** certify a Jacobian rank, its torsion
structure, or completeness of the rational-point list.

## Source identifiers

- Peter Bruin and Filip Najman, *Hyperelliptic modular curves X₀(n) and
  isogenies of elliptic curves over quadratic fields*, LMS J. Comput. Math. 18
  (2015), 578–602, DOI
  [`10.1112/S1461157015000157`](https://doi.org/10.1112/S1461157015000157),
  arXiv [`1406.0655`](https://arxiv.org/abs/1406.0655). The level-26 row gives
  the integral equation
  `y^2 - (x^3 + 1)y = -2x^5 + 2x^4 - 5x^3 + 2x^2 - 2x`.
- LMFDB modular-curve search
  [`family=X0, level=26`](https://www.lmfdb.org/ModularCurve/Q/?level=26&family=X0),
  accessed 2026-08-31. No stable level-26 model record or immutable database
  snapshot was available to pin from that evolving interface. The repository
  therefore does **not** attribute an inferred LMFDB label to this equation;
  the literature identifier above is the canonical source.
- SageMath small modular-curve convention: an even-degree hyperelliptic model
  has two points at infinity when its leading coefficient is a rational
  square. Here that coefficient is `1`.

The substitution `Y = 2y - (x^3 + 1)` gives

```text
Y^2 = x^6 - 8x^5 + 8x^4 - 18x^3 + 8x^2 - 8x + 1.
```

Lean proves this polynomial identity directly; the identification of the
literature model with the scheme-level modular curve is intentionally retained
as `X0_26ModelIdentificationBoundary`.

## Reproduction

The project is pinned to Lean `4.12.0` and Mathlib revision
`809c3fb3b5c8f5d7dace56e200b426187516535a`. The reference producer run used
CPython `3.13.11`. The dependency-free producer is:

```sh
python3 scripts/x0_26_model_certificate.py
python3 scripts/x0_26_model_certificate.py \
  | cmp - certificates/x0_26_model_certificate.json
```

For SageMath, the same arithmetic can be replayed with SageMath 10.6:

```sage
R.<x> = PolynomialRing(QQ)
f = x^6 - 8*x^5 + 8*x^4 - 18*x^3 + 8*x^2 - 8*x + 1
f.discriminant()
factor(f.discriminant())
[(p, sum(1 for a in GF(p) for b in GF(p) if b^2 == f(a)) + 2)
 for p in [3, 5, 7, 11]]
```

Expected arithmetic output:

```text
2303721472
2^20 * 13^3
[(3, 6), (5, 10), (7, 8), (11, 8)]
```

The `+ 2` records the two infinity branches of the explicit even-degree model.
Lean independently enumerates every affine residue pair over the four finite
fields and checks the resulting arithmetic totals. It does not construct a
smooth projective finite-field curve or prove good reduction.

## Immutable producer output

The canonical artifact is
[`certificates/x0_26_model_certificate.json`](../certificates/x0_26_model_certificate.json).
CI regenerates it and requires byte-for-byte equality. Its internal SHA-256
covers the canonical JSON before the hash field is added.

```json
{
  "affine_point_counts": {
    "11": 6,
    "3": 4,
    "5": 8,
    "7": 6
  },
  "certificate_sha256": "7ae20cae9b6c80d7c6e85aa8809b91d46f0a49b34c4c45bbba2c20d618a5a048",
  "coefficients_descending": [
    1,
    -8,
    8,
    -18,
    8,
    -8,
    1
  ],
  "completed_model_totals": {
    "11": 8,
    "3": 6,
    "5": 10,
    "7": 8
  },
  "discriminant": 2303721472,
  "discriminant_factorization": "2^20 * 13^3",
  "polynomial": "x^6 - 8*x^5 + 8*x^4 - 18*x^3 + 8*x^2 - 8*x + 1",
  "producer": "CPython standard library; reference run 3.13.11",
  "resultant_f_fprime": -2303721472
}
```

## Exact boundary

The four verified rational model points are `(0,1)`, `(0,-1)`, and the two
points at infinity on the completed-square model. The two finite points
correspond to `(0,1)` and `(0,0)` on the integral model. The literature
identifies these four points with the four cusp classes represented by
divisors `1`, `2`, `13`, and `26`.

Lean checks the coordinates and the cardinality of this displayed set. It does
not prove that these are all rational points, reconstruct their modular
interpretation, perform genus-two descent, or infer rank zero from software
output.