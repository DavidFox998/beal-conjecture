#!/usr/bin/env python3
"""Dependency-free replay of the finite X0(26) model certificates.

This script is an independent producer.  Lean checks the polynomial change of
variables and finite-field counts again in X0_26_Model.lean.
"""

from __future__ import annotations

import hashlib
import json


COEFFICIENTS_DESCENDING = [1, -8, 8, -18, 8, -8, 1]
PRIMES = [3, 5, 7, 11]


def sextic(x: int) -> int:
    return x**6 - 8 * x**5 + 8 * x**4 - 18 * x**3 + 8 * x**2 - 8 * x + 1


def affine_point_count(p: int) -> int:
    return sum(
        1
        for x in range(p)
        for y in range(p)
        if (y * y - sextic(x)) % p == 0
    )


def bareiss_determinant(matrix: list[list[int]]) -> int:
    """Fraction-free determinant, with exact divisions."""
    work = [row[:] for row in matrix]
    sign = 1
    previous_pivot = 1
    for k in range(len(work) - 1):
        if work[k][k] == 0:
            swap = next(i for i in range(k + 1, len(work)) if work[i][k] != 0)
            work[k], work[swap] = work[swap], work[k]
            sign = -sign
        pivot = work[k][k]
        for i in range(k + 1, len(work)):
            for j in range(k + 1, len(work)):
                numerator = work[i][j] * pivot - work[i][k] * work[k][j]
                work[i][j] = numerator // previous_pivot
            work[i][k] = 0
        previous_pivot = pivot
    return sign * work[-1][-1]


def resultant_with_derivative() -> int:
    derivative = [6, -40, 32, -54, 16, -8]
    degree_f = len(COEFFICIENTS_DESCENDING) - 1
    degree_derivative = len(derivative) - 1
    sylvester = []
    for shift in range(degree_derivative):
        sylvester.append(
            [0] * shift
            + COEFFICIENTS_DESCENDING
            + [0] * (degree_derivative - 1 - shift)
        )
    for shift in range(degree_f):
        sylvester.append(
            [0] * shift
            + derivative
            + [0] * (degree_f - 1 - shift)
        )
    return bareiss_determinant(sylvester)


def main() -> None:
    resultant = resultant_with_derivative()
    discriminant = (-1) ** (6 * 5 // 2) * resultant
    affine_counts = {str(p): affine_point_count(p) for p in PRIMES}
    payload = {
        "affine_point_counts": affine_counts,
        "coefficients_descending": COEFFICIENTS_DESCENDING,
        "discriminant": discriminant,
        "discriminant_factorization": "2^20 * 13^3",
        "polynomial": "x^6 - 8*x^5 + 8*x^4 - 18*x^3 + 8*x^2 - 8*x + 1",
        "completed_model_totals": {
            p: count + 2 for p, count in affine_counts.items()
        },
        "producer": "CPython standard library; reference run 3.13.11",
        "resultant_f_fprime": resultant,
    }
    canonical = json.dumps(payload, sort_keys=True, separators=(",", ":"))
    payload["certificate_sha256"] = hashlib.sha256(canonical.encode()).hexdigest()
    print(json.dumps(payload, indent=2, sort_keys=True), end="")


if __name__ == "__main__":
    main()