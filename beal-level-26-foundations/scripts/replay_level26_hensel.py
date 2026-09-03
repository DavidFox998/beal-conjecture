#!/usr/bin/env python3
"""Deterministically replay the level-26 strong-Hensel searches.

This standard-library checker verifies local points for every displayed
S-unit twist and coefficient row at 2 and 13.  It proves no Selmer
identification or Mordell--Weil rank statement.
"""

from __future__ import annotations

import hashlib
import json
from math import gcd

S_UNITS = (1, -1, 2, -2, 13, -13, 26, -26)
CURVES = {
    "26a1": (
        (1, 2, -15, 16, 0),
        (1, 2, -3, 4, 12),
        (1, 2, 9, 24, 16),
        (3, 2, -3, 4, 4),
    ),
    "26b1": (
        (1, 2, -23, 28, -12),
        (-1, 0, -5, 26, -16),
        (-1, 2, -11, 36, -26),
        (-1, 2, 13, 12, -10),
        (-3, -2, 1, 12, -4),
        (-4, -3, 10, 13, 0),
    ),
}
MODULI = ((2, 6), (13, 2))


def quartic(q: tuple[int, ...], x: int, z: int) -> int:
    a, b, c, d, e = q
    return a * x**4 + b * x**3 * z + c * x**2 * z**2 + d * x * z**3 + e * z**4


def valuation(value: int, prime: int) -> int | None:
    if value == 0:
        return None
    value = abs(value)
    result = 0
    while value % prime == 0:
        result += 1
        value //= prime
    return result


def partials(
    q: tuple[int, ...], twist: int, x: int, z: int, y: int
) -> tuple[int, int, int]:
    a, b, c, d, e = q
    return (
        -(4 * a * x**3 + 3 * b * x**2 * z + 2 * c * x * z**2 + d * z**3),
        -(b * x**3 + 2 * c * x**2 * z + 3 * d * x * z**2 + 4 * e * z**3),
        2 * twist * y,
    )


def witness(
    q: tuple[int, ...], twist: int, prime: int, exponent: int
) -> tuple[int, int, int, int]:
    modulus = prime**exponent
    squares: dict[int, list[int]] = {}
    for y in range(modulus):
        squares.setdefault((twist * y * y) % modulus, []).append(y)
    for x in range(modulus):
        for z in range(modulus):
            if gcd(gcd(x, z), prime) != 1:
                continue
            for y in squares.get(quartic(q, x, z) % modulus, ()):
                residual = twist * y * y - quartic(q, x, z)
                residual_v = valuation(residual, prime)
                for derivative in partials(q, twist, x, z, y):
                    derivative_v = valuation(derivative, prime)
                    if derivative_v is not None and (
                        residual_v is None or residual_v > 2 * derivative_v
                    ):
                        return x, z, y, derivative
    raise AssertionError(
        f"no strong-Hensel witness for q={q}, d={twist}, p={prime}"
    )


def main() -> None:
    records = []
    for curve, rows in CURVES.items():
        for twist in S_UNITS:
            for row, coefficients in enumerate(rows):
                for prime, exponent in MODULI:
                    x, z, y, derivative = witness(
                        coefficients, twist, prime, exponent
                    )
                    records.append(
                        (curve, twist, row, prime, exponent, x, z, y, derivative)
                    )
    assert len(records) == 160
    digest = hashlib.sha256(
        json.dumps(records, separators=(",", ":")).encode()
    ).hexdigest()
    print(f"checked {len(records)} strong-Hensel witnesses; sha256={digest}")


if __name__ == "__main__":
    main()