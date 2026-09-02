#!/usr/bin/env python3
"""Produce and verify the immutable X0(26) formal-immersion witness.

The producer parses the committed transcript and independently computes the
rank of its displayed matrix over QQ and GF(2).  It checks dimensions and
source hashes, but does not promote Sage/ModularSymbols output to a geometric
Lean theorem.  That interpretation remains an explicit proposition-valued
premise in the focused Lean bridge.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
import hashlib
import json
import re
from pathlib import Path
from typing import Callable, TypeVar


ROOT = Path(__file__).resolve().parents[1]
SOURCE_LOG = ROOT / "sagemath" / "formal_immersion_26.log"
SOURCE_NARRATIVE = (
    ROOT / "sagemath" / "GENUINE_FORMAL_IMMERSION_26_CERT_v9.4.0.txt"
)
SOURCE_LEAN = ROOT / "lean" / "Beal" / "Mazur" / "Gates" / "FormalImmersion_26_Cert.lean"
OUTPUT = ROOT / "sagemath" / "certs" / "formal_immersion_26_certificate.json"

SAGE_RE = re.compile(r"Sage version: (?P<version>\d+\.\d+)")
LEVEL_RE = re.compile(r"Level: (?P<level>\d+)")
PRIME_RE = re.compile(r"Reduction prime: (?P<prime>\d+)")
MATRIX_RE = re.compile(r"M3 = (?P<matrix>\[\[.*\]\])")
ROWS_RE = re.compile(r"M3 rows: (?P<rows>\d+)")
COLS_RE = re.compile(r"M3 columns: (?P<columns>\d+)")
RANK_QQ_RE = re.compile(r"Rank over QQ: (?P<rank>\d+)")
RANK_GF_RE = re.compile(r"Rank over GF\((?P<prime>\d+)\): (?P<rank>\d+)")
DIMENSION_RE = re.compile(r"Dimension J0\(26\): (?P<dimension>\d+)")
CRITERION_LINE = "Formal immersion criterion reported: rank M3 = dim J0(26)"

T = TypeVar("T")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def matrix_rank(
    matrix: list[list[T]],
    *,
    zero: T,
    inverse: Callable[[T], T],
) -> int:
    """Compute row rank by exact Gaussian elimination."""

    work = [row[:] for row in matrix]
    if not work:
        return 0
    row_count = len(work)
    column_count = len(work[0])
    pivot_row = 0
    for column in range(column_count):
        pivot = next(
            (row for row in range(pivot_row, row_count) if work[row][column] != zero),
            None,
        )
        if pivot is None:
            continue
        work[pivot_row], work[pivot] = work[pivot], work[pivot_row]
        scale = inverse(work[pivot_row][column])
        work[pivot_row] = [entry * scale for entry in work[pivot_row]]
        for row in range(row_count):
            if row == pivot_row or work[row][column] == zero:
                continue
            factor = work[row][column]
            work[row] = [
                entry - factor * pivot_entry
                for entry, pivot_entry in zip(work[row], work[pivot_row])
            ]
        pivot_row += 1
        if pivot_row == row_count:
            break
    return pivot_row


def rank_over_qq(matrix: list[list[int]]) -> int:
    rational = [[Fraction(entry) for entry in row] for row in matrix]
    return matrix_rank(rational, zero=Fraction(0), inverse=lambda entry: 1 / entry)


def rank_over_prime_field(matrix: list[list[int]], prime: int) -> int:
    reduced = [[entry % prime for entry in row] for row in matrix]
    return matrix_rank(
        reduced,
        zero=0,
        inverse=lambda entry: pow(entry, -1, prime),
    )


def fullmatch(pattern: re.Pattern[str], line: str, label: str) -> re.Match[str]:
    match = pattern.fullmatch(line)
    if match is None:
        raise ValueError(f"unrecognized {label} line: {line!r}")
    return match


def parse_source() -> dict[str, object]:
    log_bytes = SOURCE_LOG.read_bytes()
    narrative_bytes = SOURCE_NARRATIVE.read_bytes()
    lean_bytes = SOURCE_LEAN.read_bytes()
    lines = log_bytes.decode("utf-8").splitlines()
    if len(lines) != 10:
        raise ValueError(f"expected 10 transcript lines, found {len(lines)}")

    sage_version = fullmatch(SAGE_RE, lines[0], "Sage version").group("version")
    level = int(fullmatch(LEVEL_RE, lines[1], "level").group("level"))
    prime = int(fullmatch(PRIME_RE, lines[2], "reduction prime").group("prime"))
    matrix = json.loads(fullmatch(MATRIX_RE, lines[3], "matrix").group("matrix"))
    rows = int(fullmatch(ROWS_RE, lines[4], "row count").group("rows"))
    columns = int(fullmatch(COLS_RE, lines[5], "column count").group("columns"))
    reported_rank_qq = int(
        fullmatch(RANK_QQ_RE, lines[6], "QQ rank").group("rank")
    )
    rank_gf_match = fullmatch(RANK_GF_RE, lines[7], "finite-field rank")
    rank_prime = int(rank_gf_match.group("prime"))
    reported_rank_gf = int(rank_gf_match.group("rank"))
    dimension = int(
        fullmatch(DIMENSION_RE, lines[8], "J0(26) dimension").group("dimension")
    )
    if lines[9] != CRITERION_LINE:
        raise ValueError("transcript no longer reports the formal-immersion criterion")

    if level != 26 or prime != 2 or rank_prime != prime:
        raise ValueError("expected the level-26 certificate reduced at prime 2")
    if not matrix or any(not isinstance(row, list) for row in matrix):
        raise ValueError("M3 must be a nonempty rectangular matrix")
    if any(
        not isinstance(entry, int)
        for row in matrix
        for entry in row
    ):
        raise ValueError("M3 entries must be integers")
    computed_rows = len(matrix)
    computed_columns = len(matrix[0])
    if any(len(row) != computed_columns for row in matrix):
        raise ValueError("M3 rows have inconsistent lengths")
    if (rows, columns) != (computed_rows, computed_columns):
        raise ValueError("reported M3 shape disagrees with displayed matrix")
    if matrix != [[1, 0, 1, 0, 1, 1], [0, 1, 1, 1, 0, 1]]:
        raise ValueError("M3 entries changed")

    computed_rank_qq = rank_over_qq(matrix)
    computed_rank_gf = rank_over_prime_field(matrix, prime)
    if reported_rank_qq != computed_rank_qq:
        raise ValueError("reported QQ rank disagrees with exact elimination")
    if reported_rank_gf != computed_rank_gf:
        raise ValueError("reported GF(2) rank disagrees with exact elimination")
    if computed_rank_qq != rows or computed_rank_gf != rows:
        raise ValueError("M3 is not full row rank over both QQ and GF(2)")
    if dimension != rows:
        raise ValueError("M3 rank does not equal dim J0(26)")

    return {
        "schema": "beal.formal-immersion-26-certificate.v1",
        "source": {
            "log": str(SOURCE_LOG.relative_to(ROOT)),
            "log_sha256": sha256_bytes(log_bytes),
            "narrative": str(SOURCE_NARRATIVE.relative_to(ROOT)),
            "narrative_sha256": sha256_bytes(narrative_bytes),
            "lean_data": str(SOURCE_LEAN.relative_to(ROOT)),
            "lean_data_sha256": sha256_bytes(lean_bytes),
        },
        "environment": {
            "sage_version_reported": sage_version,
            "level": level,
            "reduction_prime": prime,
        },
        "matrix": {
            "name": "M3",
            "entries": matrix,
            "rows": rows,
            "columns": columns,
        },
        "rank_check": {
            "over_QQ": {
                "reported": reported_rank_qq,
                "computed": computed_rank_qq,
                "verified": True,
            },
            "over_GF_2": {
                "reported": reported_rank_gf,
                "computed": computed_rank_gf,
                "verified": True,
            },
            "jacobian_dimension": dimension,
            "equation": "rank(M3) = 2 = dim J0(26)",
            "verified": True,
        },
        "reported_criterion": {
            "prime": prime,
            "cotangent_map":
                "Cot_0(J0(26)) -> Cot_infinity(X0(26))",
            "conclusion": "surjective",
            "transcript_line": CRITERION_LINE,
        },
        "boundary": {
            "checked": [
                "the immutable source hashes",
                "the exact 2 x 6 integer matrix",
                "rank two over QQ by exact rational elimination",
                "rank two over GF(2) by exact modular elimination",
                "rank M3 equals the recorded dimension of J0(26)",
            ],
            "external_premises": [
                "Sage ModularSymbols/q-expansion correctness",
                "rank-two matrix semantics for the geometric cotangent map",
                "Mazur formal-immersion criterion at 2",
                "J0(26) decomposition and mwrank/second-descent soundness",
            ],
        },
    }


def build() -> dict[str, object]:
    body = parse_source()
    canonical = json.dumps(body, sort_keys=True, separators=(",", ":")).encode()
    body["certificate_sha256"] = sha256_bytes(canonical)
    return body


def render() -> str:
    return json.dumps(build(), indent=2, sort_keys=True) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--check",
        action="store_true",
        help="fail unless the committed JSON is exactly reproducible",
    )
    parser.add_argument(
        "--stdout",
        action="store_true",
        help="print the generated JSON without writing the workspace",
    )
    args = parser.parse_args()
    produced = render()
    if args.stdout:
        print(produced, end="")
        return 0
    if args.check:
        if not OUTPUT.is_file() or OUTPUT.read_text(encoding="utf-8") != produced:
            raise SystemExit(
                f"stale {OUTPUT.relative_to(ROOT)}; regenerate with "
                f"{Path(__file__).name}"
            )
        print(f"checked {OUTPUT.relative_to(ROOT)}")
        return 0
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT.write_text(produced, encoding="utf-8")
    print(f"wrote {OUTPUT.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())