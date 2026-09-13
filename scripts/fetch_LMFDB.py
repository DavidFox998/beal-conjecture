#!/usr/bin/env python3
"""Write archived LMFDB *display* data for 26a1 and 26b1.

This script does not contact LMFDB.org.  The payload is the finite
table recorded in the Track D request (labels, conductor, displayed
rank, torsion string, a₂).  It does not change
`sagemath/level_26_ledger.json` and is not a Mordell--Weil theorem.
"""

from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "lean" / "BealLevel26Foundations" / "Certs" / "LMFDB_26.json"
LEDGER = ROOT / "sagemath" / "level_26_ledger.json"

DATA = {
    "26a1": {
        "label": "26.a1",
        "conductor": 26,
        "rank": 0,
        "torsion": "Z/3Z",
        "ap2": -1,
    },
    "26b1": {
        "label": "26.b1",
        "conductor": 26,
        "rank": 0,
        "torsion": "Z/7Z",
        "ap2": 1,
    },
    "source": (
        "LMFDB.org EllipticCurve/Q/26a1 and 26b1, accessed 2026-05-10"
    ),
}


def main() -> None:
    if not LEDGER.is_file():
        raise SystemExit(f"missing frozen ledger {LEDGER}")
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(DATA, indent=2) + "\n")
    print(f"wrote {OUT.relative_to(ROOT)} (no LMFDB network fetch)")


if __name__ == "__main__":
    main()
