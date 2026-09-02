#!/usr/bin/env python3
"""Produce and verify the reproducible finite level-26 descent certificate.

This standard-library producer checks the exact Lean models, quartic ledger,
and S-unit-dependent congruences.  It deliberately does not claim that a
solution modulo p^k proves Q_p-solubility or that the ledger is exhaustive.
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


def first_witness(q: list[int], twist: int, prime: int, exponent: int) -> list[int]:
    modulus = prime**exponent
    squares: dict[int, int] = {}
    for y in range(modulus):
        squares.setdefault((twist * y * y) % modulus, y)
    for x in range(modulus):
        for z in range(modulus):
            if x % prime == 0 and z % prime == 0:
                continue
            rhs = quartic(q, x, z) % modulus
            if rhs in squares:
                return [x, z, squares[rhs]]
    raise RuntimeError(
        f"no primitive witness for twist={twist}, p={prime}^{exponent}, q={q}"
    )


def build() -> dict[str, object]:
    checks = []
    for curve_name, curve in CURVES.items():
        for twist in S_UNITS:
            for row, q in enumerate(curve["quartics"]):
                for prime, exponent in MODULI:
                    x, z, y = first_witness(q, twist, prime, exponent)
                    modulus = prime**exponent
                    checks.append(
                        {
                            "curve": curve_name,
                            "twist": twist,
                            "row": row,
                            "prime": prime,
                            "exponent": exponent,
                            "modulus": modulus,
                            "witness": {"x": x, "z": z, "y": y},
                            "residue": (twist * y * y - quartic(q, x, z)) % modulus,
                        }
                    )
    body = {
        "schema": "beal.level26.twisted-congruence-certificate.v1",
        "producer": "CPython standard library",
        "equation": "twist*y^2 = a*x^4+b*x^3*z+c*x^2*z^2+d*x*z^3+e*z^4 (mod p^k)",
        "s_units": S_UNITS,
        "curves": CURVES,
        "checks": checks,
        "boundary": {
            "proved": "primitive congruence witnesses for every listed twist, row, and modulus",
            "not_proved": [
                "Q_p solubility",
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
        "LEVEL-26 TWISTED CONGRUENCE CERTIFICATE",
        "producer: scripts/level26_descent_certificate.py",
        f"schema: {certificate['schema']}",
        f"certificate_sha256: {certificate['certificate_sha256']}",
        "equation: " + str(certificate["equation"]),
        "",
    ]
    for check in certificate["checks"]:
        witness = check["witness"]
        lines.append(
            f"{check['curve']} d={check['twist']:>3} row={check['row']} "
            f"mod={check['prime']}^{check['exponent']} "
            f"(x,z,y)=({witness['x']},{witness['z']},{witness['y']}) "
            f"residue={check['residue']} PASS"
        )
    lines += [
        "",
        "BOUNDARY: PASS means only the displayed primitive modular congruence.",
        "It is not a Q_p lifting, covering-completeness, Selmer, or rank proof.",
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