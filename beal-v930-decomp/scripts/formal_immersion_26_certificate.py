#!/usr/bin/env python3
"""Verify the archived finite level-26 formal-immersion witness.

This checker compares the human-readable M3 transcript with the JSON
certificate and recomputes the determinant modulo 3.  It deliberately does
not promote the finite matrix to a scheme-theoretic Abel--Jacobi theorem.
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCE_LOG = ROOT / "sagemath" / "formal_immersion_26.log"
CERTIFICATE = ROOT / "sagemath" / "certs" / "formal_immersion_26_certificate.json"
EXPECTED_ROWS = [[1, 1], [0, 2]]


def fail(message: str) -> "NoReturn":
    print(f"FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


def main() -> None:
    if not SOURCE_LOG.is_file():
        fail("the formal-immersion transcript is missing")
    if not CERTIFICATE.is_file():
        fail("the formal-immersion JSON certificate is missing")

    source = SOURCE_LOG.read_text(encoding="utf-8")
    data = json.loads(CERTIFICATE.read_text(encoding="utf-8"))
    rows = [
        [int(left), int(right)]
        for left, right in re.findall(r"^  \[(-?\d+), (-?\d+)\]$", source, re.MULTILINE)
    ]

    if data.get("level") != 26 or data.get("curve") != "X0(26)":
        fail("the certificate no longer identifies X0(26)")
    if data.get("residue_prime") != 3:
        fail("the certificate reduction prime is not 3")
    if rows != EXPECTED_ROWS or data.get("m3_rows_mod_3") != EXPECTED_ROWS:
        fail("the transcript and JSON M3 rows do not match [[1,1],[0,2]]")

    modulus = data["residue_prime"]
    determinant = (rows[0][0] * rows[1][1] - rows[0][1] * rows[1][0]) % modulus
    if determinant != data.get("determinant_mod_3") or determinant == 0:
        fail("the archived M3 determinant is incorrect or singular")
    if f"determinant modulo 3: {determinant}" not in source:
        fail("the transcript determinant does not match the recomputation")

    print(
        "OK: the level-26 M3 rows and nonzero mod-3 determinant are reproducible; "
        "scheme-level soundness remains explicit"
    )


if __name__ == "__main__":
    main()