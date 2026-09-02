# X₀(26) rational-point classification boundary

This note fixes the exact mathematical target for
`lean/Beal/Mazur/X0_26_RationalPoints.lean` and records why the repository does
not yet claim a Lean proof of it.

## Primary source

Peter Bruin and Filip Najman, *Hyperelliptic modular curves X₀(n) and
isogenies of elliptic curves over quadratic fields*, LMS J. Comput. Math. 18
(2015), 578–602,
[doi:10.1112/S1461157015000157](https://doi.org/10.1112/S1461157015000157),
[arXiv:1406.0655](https://arxiv.org/abs/1406.0655).

For level 26 the paper gives the model

```text
y² - (x³ + 1)y = -2x⁵ + 2x⁴ - 5x³ + 2x² - 2x
```

and states

```text
J₀(26)(ℚ) ≃ ℤ/21ℤ.
```

The paper also states that, for every curve treated there, the rational
points consist entirely of cusps. On the level-26 model these are the four
points already represented in Lean: the two finite points at `x = 0` and the
two infinity branches.

The CM entries in the level-26 table are exceptional **quadratic** points.
They are not two additional rational points. Thus the rational-point target is
the four-cusp set, not a six-point cusp/CM set.

## Proof route in the source

The paper uses:

1. finiteness of `J₀(26)(ℚ)`, with rank zero obtained computationally by
   2-descent (and an L-function route mentioned as an alternative);
2. reduction at good primes and Magma's `TorsionBound` computation to identify
   `J₀(26)(ℚ)` with its rational cuspidal subgroup; and
3. the resulting finite Jacobian calculation in its quadratic-point
   classification.

These are valid mathematical source claims, but the paper does not provide a
compact certificate format whose verifier exists in pinned Lean 4.12/Mathlib.
The current project has no genus-two Jacobian, Mumford representation,
reduction map, 2-descent, Mordell–Weil rank, Chabauty, or modular-curve
realization kernel from which to replay the argument.

## Lean status

Lean verifies the explicit equation, its completed-square identity, four
displayed cusp points, finite-field curve point counts at several primes, and
small numerical/determinant gates. None of those facts proves rank zero,
identifies the order-21 Jacobian group, or proves rational-point
exhaustiveness.

`X0_26GlobalClassificationCertificate` therefore states the exact remaining
proof obligations:

- Jacobian rank zero;
- rational Jacobian torsion of order 21;
- equality of the rational-point set with the four displayed cusps; and
- realization of a reducible Frey context at `p = 13` as a noncuspidal point
  on the genuine modular curve.

The repository deliberately constructs no value of this certificate. A raw
Magma/Sage assertion, database field, bounded search, or finite-reduction
`native_decide` result must not be used as an inhabitant.