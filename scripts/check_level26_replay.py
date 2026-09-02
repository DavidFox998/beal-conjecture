#!/usr/bin/env python3
"""Check the reproducible, externally generated level-26 transcript.

This is deliberately a transcript-integrity check, not a replacement for
Sage/mwrank.  The archived source currently contains failed local-point API
calls, so the check preserves that fact instead of interpreting those failures
as p-adic results.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CERTIFICATE = ROOT / "sagemath" / "GENUINE_26_CERT_v9.2.0.txt"
TRANSCRIPT = ROOT / "sagemath" / "certs_26a1_26b1.log"

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


def tuple_rows(text: str) -> list[tuple[int, int, int, int, int]]:
    rows = []
    for match in re.finditer(
        r"\((-?\d+),\s*(-?\d+),\s*(-?\d+),\s*(-?\d+),\s*(-?\d+)\)"
        r"(?:\s*--trivial)?",
        text,
    ):
        rows.append(tuple(int(value) for value in match.groups()))
    return rows


def main() -> None:
    if not CERTIFICATE.is_file():
        fail("the v9.2.0 certificate file is missing")
    if not TRANSCRIPT.is_file():
        fail("the Sage/mwrank transcript is missing")

    certificate = CERTIFICATE.read_text(encoding="utf-8")
    transcript = TRANSCRIPT.read_text(encoding="utf-8")

    require(certificate, "S = {2,13}", CERTIFICATE)
    require(certificate, "ASSUME mwrank two_descent correctness", CERTIFICATE)
    require(certificate, "SUnits_26 = [1,-1,2,-2,13,-13,26,-26]", CERTIFICATE)
    require(certificate, "Rank 0 proven, Selmer 0 proven", CERTIFICATE)

    # The certificate must retain all ten exact rows, independent of prose
    # labels in the external report.
    certificate_rows = tuple_rows(certificate)
    expected_rows = EXPECTED_QUARTICS["26a1"] + EXPECTED_QUARTICS["26b1"]
    if not all(row in certificate_rows for row in expected_rows):
        fail("the certificate no longer contains all ten exact quartic rows")

    for model in ("26a1", "26b1"):
        require(transcript, f"{model} ", TRANSCRIPT)
    require(transcript, "two_descent raw: True", TRANSCRIPT)
    if transcript.count("Selmer  rank contribution") < 4:
        fail("the transcript no longer records all four Selmer contribution lines")

    # This is an explicit guardrail: the current artifact is not a successful
    # local-solubility replay.  A future regenerated artifact must update this
    # checker and the certificate together rather than silently changing the
    # interpretation of the old log.
    local_call_errors = transcript.count("has_local_point")
    if local_call_errors != 32:
        fail(
            "the archived transcript changed its 32 failed local-point calls; "
            "regenerate the certificate and review the p-adic boundary"
        )
    if transcript.count("-> FAILS") != 16:
        fail("the archived transcript no longer records the 16 failed local checks")

    print(
        "OK: level-26 finite transcript is reproducible as external evidence; "
        "p-adic solubility remains explicitly unverified"
    )


if __name__ == "__main__":
    main()