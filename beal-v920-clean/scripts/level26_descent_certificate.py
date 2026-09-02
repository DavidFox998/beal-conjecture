#!/usr/bin/env python3
"""Produce and verify the reproducible level-26 p-adic certificate.

For each twisted quartic at p = 2 and p = 13 this standard-library producer
finds an integral approximation satisfying the strong one-variable Hensel
inequality v_p(F(a)) > 2 v_p(F'(a)).  The checker recomputes the equation,
partial derivative, valuations, primitiveness, and inequality from scratch.

The resulting local-solubility certificates do not assert that the ledger is
complete or identify it with a Selmer group.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "certificates" / "level26_descent_certificate.json"
LOG_OUTPUT = ROOT / "sagemath" / "certs_26a1_26b1.log"

S_UNITS = [1, -1, 2, -2, 13, -13, 26, -26]
CURVES = {
    "lean_E26a1": {
        "ainvs": [1, -1, 1, -3, 3],
        "quartics": [
            [1, 2, -15, 16, 0],
            [1, 2, -3, 4, 12],
            [1, 2, 9, 24, 16],
            [3, 2, -3, 4, 4],
        ],
    },
    "lean_E26b1": {
        "ainvs": [1, 0, 1, -5, -8],
        "quartics": [
            [1, 2, -23, 28, -12],
            [-1, 0, -5, 26, -16],
            [-1, 2, -11, 36, -26],
            [-1, 2, 13, 12, -10],
            [-3, -2, 1, 12, -4],
            [-4, -3, 10, 13, 0],
        ],
    },
}
MODULI = [(2, 6), (13, 2)]


def quartic(q: list[int], x: int, z: int) -> int:
    a, b, c, d, e = q
    return a * x**4 + b * x**3 * z + c * x**2 * z**2 + d * x * z**3 + e * z**4


VARIABLES = ("x", "z", "y")


def valuation(value: int, prime: int) -> int | None:
    """Return v_p(value), using None for the exact zero."""
    if value == 0:
        return None
    value = abs(value)
    result = 0
    while value % prime == 0:
        result += 1
        value //= prime
    return result


def partials(q: list[int], twist: int, x: int, z: int, y: int) -> tuple[int, int, int]:
    a, b, c, d, e = q
    return (
        -(4 * a * x**3 + 3 * b * x**2 * z + 2 * c * x * z**2 + d * z**3),
        -(b * x**3 + 2 * c * x**2 * z + 3 * d * x * z**2 + 4 * e * z**3),
        2 * twist * y,
    )


def first_hensel_witness(
    q: list[int], twist: int, prime: int, exponent: int
) -> dict[str, object]:
    modulus = prime**exponent
    squares: dict[int, list[int]] = {}
    for y in range(modulus):
        squares.setdefault((twist * y * y) % modulus, []).append(y)
    for x in range(modulus):
        for z in range(modulus):
            if x % prime == 0 and z % prime == 0:
                continue
            rhs = quartic(q, x, z) % modulus
            for y in squares.get(rhs, []):
                residual = twist * y * y - quartic(q, x, z)
                residual_valuation = valuation(residual, prime)
                for variable, derivative in zip(
                    VARIABLES, partials(q, twist, x, z, y), strict=True
                ):
                    derivative_valuation = valuation(derivative, prime)
                    if derivative_valuation is None:
                        continue
                    if (
                        residual_valuation is None
                        or residual_valuation > 2 * derivative_valuation
                    ):
                        return {
                            "approximation": {"x": x, "z": z, "y": y},
                            "lift_variable": variable,
                            "residual": residual,
                            "residual_valuation": residual_valuation,
                            "derivative": derivative,
                            "derivative_valuation": derivative_valuation,
                            "hensel_inequality": True,
                        }
    raise RuntimeError(
        f"no Hensel witness for twist={twist}, p={prime}^{exponent}, q={q}"
    )


def build() -> dict[str, object]:
    checks = []
    for curve_name, curve in CURVES.items():
        for twist in S_UNITS:
            for row, q in enumerate(curve["quartics"]):
                for prime, exponent in MODULI:
                    witness = first_hensel_witness(q, twist, prime, exponent)
                    modulus = prime**exponent
                    checks.append(
                        {
                            "curve": curve_name,
                            "twist": twist,
                            "row": row,
                            "prime": prime,
                            "exponent": exponent,
                            "modulus": modulus,
                            "kind": "hensel_lift",
                            "witness": witness,
                        }
                    )
    body = {
        "schema": "beal.level26.padic-hensel-certificate.v2",
        "producer": "CPython standard library",
        "equation": "F(x,z,y)=twist*y^2-(a*x^4+b*x^3*z+c*x^2*z^2+d*x*z^3+e*z^4)",
        "lifting_theorem": {
            "name": "strong one-variable Hensel lemma",
            "hypothesis": "v_p(F(a)) > 2*v_p(partial_variable F(a)); F(a)=0 is allowed",
            "conclusion": "holding the other two coordinates fixed, the selected coordinate lifts in Z_p",
        },
        "s_units": S_UNITS,
        "curves": CURVES,
        "checks": checks,
        "boundary": {
            "proved": "a checked p-adic Hensel lift for every listed twist, row, and bad prime",
            "not_proved": [
                "covering-ledger completeness",
                "identification with a 2-Selmer group",
                "Selmer-to-Mordell-Weil rank soundness",
            ],
        },
    }
    canonical = json.dumps(body, sort_keys=True, separators=(",", ":")).encode()
    body["certificate_sha256"] = hashlib.sha256(canonical).hexdigest()
    return body


def render() -> str:
    return json.dumps(build(), indent=2, sort_keys=True) + "\n"

def render_log(certificate: dict[str, object]) -> str:
    lines = [
        "LEVEL-26 P-ADIC HENSEL CERTIFICATE",
        "producer: scripts/level26_descent_certificate.py",
        f"schema: {certificate['schema']}",
        f"certificate_sha256: {certificate['certificate_sha256']}",
        "equation: " + str(certificate["equation"]),
        "",
    ]
    for check in certificate["checks"]:
        witness = check["witness"]
        point = witness["approximation"]
        residual_valuation = witness["residual_valuation"]
        residual_text = "exact" if residual_valuation is None else str(residual_valuation)
        lines.append(
            f"{check['curve']} d={check['twist']:>3} row={check['row']} "
            f"mod={check['prime']}^{check['exponent']} "
            f"(x,z,y)=({point['x']},{point['z']},{point['y']}) "
            f"lift={witness['lift_variable']} "
            f"v(F)={residual_text} v(F')={witness['derivative_valuation']} PASS"
        )
    lines += [
        "",
        "BOUNDARY: PASS verifies the strong Hensel hypotheses and hence a Q_p point.",
        "It is not a covering-completeness, Selmer, or rank proof.",
        "Run sagemath/reproduce_level26_descent.sage separately for Sage/mwrank.",
    ]
    return "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    certificate = build()
    produced = json.dumps(certificate, indent=2, sort_keys=True) + "\n"
    produced_log = render_log(certificate)
    if args.check:
        stale = [
            path.relative_to(ROOT)
            for path, expected in ((OUTPUT, produced), (LOG_OUTPUT, produced_log))
            if not path.exists() or path.read_text() != expected
        ]
        if stale:
            raise SystemExit(f"stale outputs {stale}; regenerate with {Path(__file__).name}")
        print(f"checked {OUTPUT.relative_to(ROOT)} and {LOG_OUTPUT.relative_to(ROOT)}")
        return 0
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT.write_text(produced)
    LOG_OUTPUT.write_text(produced_log)
    print(f"wrote {OUTPUT.relative_to(ROOT)} and {LOG_OUTPUT.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())