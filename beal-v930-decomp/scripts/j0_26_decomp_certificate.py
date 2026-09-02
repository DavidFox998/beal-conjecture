#!/usr/bin/env python3
"""Produce and verify the immutable J0(26) decomposition witness.

The producer parses the committed Sage transcript rather than repeating its
values as unchecked Python constants.  It certifies exact transcript contents,
dimensions, model tuples, and source hashes.  The mathematical interpretation
of Sage's decomposition and mwrank output remains an explicit Lean premise.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCE_LOG = ROOT / "sagemath" / "j0_26_decomp.log"
SOURCE_NARRATIVE = ROOT / "sagemath" / "GENUINE_J0_26_CERT_v9.3.0.txt"
OUTPUT = ROOT / "sagemath" / "certs" / "j0_26_decomp_certificate.json"

HEADER_RE = re.compile(r"Abelian variety J0\(26\) of dimension (?P<dimension>\d+)")
FACTOR_RE = re.compile(
    r"Simple abelian subvariety (?P<orbit>26[ab]\(1,26\)) "
    r"of dimension (?P<dimension>\d+) of J0\(26\) "
    r"(?P=orbit) \((?P<ainvariants>-?\d+(?:,\s*-?\d+){4})\)"
)
DIMENSION_RE = re.compile(r"Dimension: (?P<dimension>\d+)")
DECOMPOSITION_LINE = "Is simple? No — isog to 26a1 x 26b1"

# E26.lean intentionally retains an older factor-name ordering.  The witness
# records the coefficient match instead of silently changing either source.
LEAN_MODEL_MATCH = {
    "26a(1,26)": "E26b1",
    "26b(1,26)": "E26a1",
}


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_source() -> dict[str, object]:
    log_bytes = SOURCE_LOG.read_bytes()
    narrative_bytes = SOURCE_NARRATIVE.read_bytes()
    lines = log_bytes.decode("utf-8").splitlines()
    if len(lines) != 9:
        raise ValueError(f"expected 9 transcript lines, found {len(lines)}")

    header = HEADER_RE.fullmatch(lines[0])
    if header is None:
        raise ValueError("transcript header no longer identifies dimension of J0(26)")

    factors = []
    for line in lines[5:7]:
        match = FACTOR_RE.fullmatch(line)
        if match is None:
            raise ValueError(f"unrecognized factor line: {line!r}")
        orbit = match.group("orbit")
        factors.append(
            {
                "source_orbit": orbit,
                "dimension": int(match.group("dimension")),
                "a_invariants": [
                    int(value.strip())
                    for value in match.group("ainvariants").split(",")
                ],
                "lean_model_match": LEAN_MODEL_MATCH[orbit],
            }
        )

    expected_listing = [
        f"Simple abelian subvariety {factor['source_orbit']} "
        f"of dimension {factor['dimension']} of J0(26)"
        for factor in factors
    ]
    listed_factors = [line.removesuffix(",") for line in lines[2:4]]
    if lines[1] != "[" or lines[4] != "]" or listed_factors != expected_listing:
        raise ValueError("decomposition listing and detailed factor rows disagree")

    dimension_line = DIMENSION_RE.fullmatch(lines[7])
    if dimension_line is None:
        raise ValueError("transcript has no final dimension row")
    if lines[8] != DECOMPOSITION_LINE:
        raise ValueError("transcript no longer reports the two-factor isogeny")

    j0_dimension = int(header.group("dimension"))
    repeated_dimension = int(dimension_line.group("dimension"))
    factor_dimension_sum = sum(int(factor["dimension"]) for factor in factors)
    if j0_dimension != repeated_dimension or j0_dimension != factor_dimension_sum:
        raise ValueError("dimension certificate does not satisfy 2 = 1 + 1")
    if [factor["a_invariants"] for factor in factors] != [
        [1, 0, 1, -5, -8],
        [1, -1, 1, -3, 3],
    ]:
        raise ValueError("factor a-invariants changed")

    return {
        "schema": "beal.j0-26-decomposition-certificate.v1",
        "source": {
            "log": str(SOURCE_LOG.relative_to(ROOT)),
            "log_sha256": sha256_bytes(log_bytes),
            "narrative": str(SOURCE_NARRATIVE.relative_to(ROOT)),
            "narrative_sha256": sha256_bytes(narrative_bytes),
        },
        "jacobian": {
            "label": "J0(26)",
            "level": 26,
            "dimension": j0_dimension,
            "is_simple_reported": False,
        },
        "factors": factors,
        "dimension_check": {
            "jacobian_dimension": j0_dimension,
            "factor_dimensions": [factor["dimension"] for factor in factors],
            "factor_dimension_sum": factor_dimension_sum,
            "equation": "2 = 1 + 1",
            "verified": True,
        },
        "reported_decomposition": {
            "kind": "isogeny",
            "target": "E26a1 x E26b1",
            "transcript_line": DECOMPOSITION_LINE,
        },
        "boundary": {
            "checked": [
                "the immutable source hashes",
                "the exact factor labels and a-invariants",
                "the two one-dimensional factors exhaust dimension two",
                "the transcript reports a nonsimple J0(26) and the displayed isogeny",
            ],
            "external_premises": [
                "Sage J0(26).decomposition() correctness and its isogeny semantics",
                "mwrank/second-descent correctness and rank transport semantics",
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