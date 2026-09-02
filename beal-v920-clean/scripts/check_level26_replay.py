#!/usr/bin/env python3
"""Check the level-26 documentation and Hensel log remain synchronized.

The genuine p-adic certificate is checked separately by
scripts/level26_descent_certificate.py --check. This guard verifies the
human-readable companion files and never interprets bounded searches as local
obstructions.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CERTIFICATE = ROOT / "sagemath" / "GENUINE_26_CERT_v9.2.0.txt"
TRANSCRIPT = ROOT / "sagemath" / "certs_26a1_26b1.log"
PADIC_CERTIFICATE = ROOT / "certificates" / "level26_descent_certificate.json"

EXPECTED_QUARTICS = {
    "26a1": [
        (1, 2, -15, 16, 0),
        (1, 2, -3, 4, 12),
        (1, 2, 9, 24, 16),
        (3, 2, -3, 4, 4),
    ],
    "26b1": [
        (1, 2, -23, 28, -12),
        (-1, 0, -5, 26, -16),
        (-1, 2, -11, 36, -26),
        (-1, 2, 13, 12, -10),
        (-3, -2, 1, 12, -4),
        (-4, -3, 10, 13, 0),
    ],
}


def fail(message: str) -> "NoReturn":
    print(f"FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


def require(text: str, needle: str, source: Path) -> None:
    if needle not in text:
        fail(f"{source.relative_to(ROOT)} is missing {needle!r}")


def main() -> None:
    if not CERTIFICATE.is_file():
        fail("the v9.2.0 certificate file is missing")
    if not TRANSCRIPT.is_file():
        fail("the Sage/mwrank transcript is missing")
    if not PADIC_CERTIFICATE.is_file():
        fail("the p-adic Hensel certificate is missing")

    certificate = CERTIFICATE.read_text(encoding="utf-8")
    transcript = TRANSCRIPT.read_text(encoding="utf-8")
    padic_certificate = json.loads(PADIC_CERTIFICATE.read_text(encoding="utf-8"))

    require(certificate, "moduli `2^6` and `13^2`", CERTIFICATE)
    require(certificate, "strong one-variable Hensel lemma", CERTIFICATE)
    require(certificate, "archived quartics exhaust", CERTIFICATE)
    require(certificate, "Selmer-to-Mordell-Weil rank theorem", CERTIFICATE)

    # The certificate must retain all ten exact rows, independent of prose
    # labels in the external report.
    certificate_rows = [
        tuple(row)
        for curve in padic_certificate["curves"].values()
        for row in curve["quartics"]
    ]
    expected_rows = EXPECTED_QUARTICS["26a1"] + EXPECTED_QUARTICS["26b1"]
    if not all(row in certificate_rows for row in expected_rows):
        fail("the certificate no longer contains all ten exact quartic rows")

    require(transcript, "LEVEL-26 P-ADIC HENSEL CERTIFICATE", TRANSCRIPT)
    require(transcript, "BOUNDARY: PASS verifies the strong Hensel hypotheses", TRANSCRIPT)
    lift_lines = [
        line for line in transcript.splitlines()
        if line.startswith("lean_E26") and line.endswith(" PASS")
    ]
    if len(lift_lines) != 160:
        fail("the Hensel log no longer records all 160 checked local lifts")

    print(
        "OK: level-26 documentation and all 160 Hensel log entries are synchronized"
    )


if __name__ == "__main__":
    main()