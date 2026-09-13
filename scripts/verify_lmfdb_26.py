#!/usr/bin/env python3
"""Check archived LMFDB display JSON against Lean fields.

Does not change the v1.4.0 ledger.  Extra computational evidence is
not a Mordell--Weil theorem.
"""

from __future__ import annotations

import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEDGER = ROOT / "sagemath" / "level_26_ledger.json"
JSON = ROOT / "lean" / "BealLevel26Foundations" / "Certs" / "LMFDB_26.json"
LEAN = ROOT / "lean" / "BealLevel26Foundations" / "Certs" / "LMFDBCert_26.lean"

EXPECTED_LEDGER = "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151"
EXPECTED_LMFDB = "39e22740a7787567882b33e27396b1c1dfd10a7f14e23b8af28f89e594e7b5f0"


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> None:
    assert sha(LEDGER) == EXPECTED_LEDGER
    assert sha(JSON) == EXPECTED_LMFDB
    data = json.loads(JSON.read_text())
    assert data["26a1"] == {
        "label": "26.a1",
        "conductor": 26,
        "rank": 0,
        "torsion": "Z/3Z",
        "ap2": -1,
    }
    assert data["26b1"] == {
        "label": "26.b1",
        "conductor": 26,
        "rank": 0,
        "torsion": "Z/7Z",
        "ap2": 1,
    }
    lean = LEAN.read_text()
    assert 'label := "26.a1"' in lean
    assert 'label := "26.b1"' in lean
    assert "displayedRank := 0" in lean
    assert "ap2 := -1" in lean
    assert "ap2 := 1" in lean
    assert "Not a Mordell--Weil theorem" in lean
    assert "unconditional" in lean
    if "Prop := True" in lean or ":= trivial" in lean:
        raise SystemExit("FAIL: LMFDB rank must not be True/trivial")
    print(
        "verified LMFDB display JSON; "
        f"lmfdb={EXPECTED_LMFDB} ledger={EXPECTED_LEDGER}"
    )


if __name__ == "__main__":
    main()
