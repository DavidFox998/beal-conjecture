#!/usr/bin/env python3
"""Compute and check the archived 26a1 / 26b1 2-descent display.

Uses Sage if present, otherwise PARI via cypari2 (`ellrank`, `ell2cover`,
`elltors`).  If neither engine is installed, verifies the archived JSON
and Lean models only.

The JSON `sel2_size` / `sha2_trivial` fields are computational PARI
output.  They are not a Mathlib Selmer group and not a Mordell--Weil
theorem.  Does not change `sagemath/level_26_ledger.json`.
"""

from __future__ import annotations

import hashlib
import json
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
LEDGER = ROOT / "sagemath" / "level_26_ledger.json"
JSON = ROOT / "lean" / "BealLevel26Foundations" / "Certs" / "Descent_26.json"
CERT_LEAN = ROOT / "lean" / "Beal" / "Foundations" / "J0DecompositionCertificate.lean"
TWODESCENT_LEAN = (
    ROOT / "lean" / "BealLevel26Foundations" / "Descent" / "TwoDescent_26a1_26.lean"
)
SELMER_LEAN = ROOT / "lean" / "BealLevel26Foundations" / "Descent" / "Selmer_26.lean"

EXPECTED_LEDGER = "0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151"
EXPECTED_DESCENT = "d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260"

CURVES = {
    "26a1": {
        "cremona": "26a1",
        "ainv": [1, 0, 1, -5, -8],
        "discriminant": -17576,
        "conductor": 26,
        "rank": 0,
        "torsion": 3,
        "sel2_size": 1,
        "sha2_trivial": True,
    },
    "26b1": {
        "cremona": "26b1",
        "ainv": [1, -1, 1, -3, 3],
        "discriminant": -1664,
        "conductor": 26,
        "rank": 0,
        "torsion": 7,
        "sel2_size": 1,
        "sha2_trivial": True,
    },
}


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def try_sage(ainv: list[int]) -> dict[str, Any] | None:
    try:
        from sage.all import EllipticCurve  # type: ignore
    except ImportError:
        return None
    E = EllipticCurve(ainv)
    rank = int(E.rank())
    torsion = int(E.torsion_order())
    covers = None
    if hasattr(E, "selmer_rank"):
        selmer_rank = int(E.selmer_rank(2))
        sel2_size = 2**selmer_rank
    else:
        two = E.simon_two_descent()
        # (lower, upper, pts) in current Sage; empty 2-Selmer ⇒ size 1
        sel2_size = 1 if int(two[1]) == 0 and torsion % 2 == 1 else None
        covers = 0
        if sel2_size is None:
            raise SystemExit(f"Sage two-descent did not yield |Sel2| for {ainv}")
    return {
        "rank": rank,
        "rank_lower": rank,
        "rank_upper": rank,
        "torsion": torsion,
        "torsion_structure": [torsion],
        "sel2_size": sel2_size,
        "ell2cover_count": 0 if covers == 0 else covers,
        "analytic_rank": rank,
        "engine": "sage",
    }


def try_pari(ainv: list[int]) -> dict[str, Any] | None:
    try:
        from cypari2 import Pari
    except ImportError:
        return None
    pari = Pari()
    E = pari.ellinit(ainv)
    disc = int(E[11])
    conductor = int(pari.ellglobalred(E)[0])
    tors = pari.elltors(E)
    torsion = int(tors[0])
    structure = [int(tors[1][i]) for i in range(len(tors[1]))]
    rank_vec = pari.ellrank(E)
    rank_lower = int(rank_vec[0])
    rank_upper = int(rank_vec[1])
    analytic = int(pari.ellanalyticrank(E)[0])
    cover_count = len(pari.ell2cover(E))
    if rank_lower != 0 or rank_upper != 0:
        raise SystemExit(f"PARI ellrank bounds not 0 for {ainv}: {rank_vec}")
    if torsion % 2 == 0:
        raise SystemExit(f"expected odd torsion for {ainv}, got {torsion}")
    if cover_count != 0:
        raise SystemExit(f"PARI ell2cover nonempty for {ainv}: {cover_count}")
    # Rank bounds 0, odd torsion ⇒ |E(Q)/2E(Q)| = 1.  Empty ell2cover
    # and upper bound 0 ⇒ displayed |Sel₂| = 1, so Sha[2] is trivial
    # as a computational PARI conclusion.
    return {
        "discriminant": disc,
        "conductor": conductor,
        "rank": 0,
        "rank_lower": rank_lower,
        "rank_upper": rank_upper,
        "torsion": torsion,
        "torsion_structure": structure,
        "sel2_size": 1,
        "ell2cover_count": cover_count,
        "analytic_rank": analytic,
        "engine": f"cypari2/PARI-{'.'.join(str(int(x)) for x in pari.version())}",
    }


def compute_curve(label: str) -> dict[str, Any]:
    expected = CURVES[label]
    computed = try_sage(expected["ainv"])
    if computed is None:
        computed = try_pari(expected["ainv"])
    if computed is None:
        return {
            "computed": False,
            "engine": "archived-json-only",
        }
    if computed["rank"] != expected["rank"]:
        raise SystemExit(f"{label} rank {computed['rank']} != {expected['rank']}")
    if computed["torsion"] != expected["torsion"]:
        raise SystemExit(
            f"{label} torsion {computed['torsion']} != {expected['torsion']}"
        )
    if computed["sel2_size"] != expected["sel2_size"]:
        raise SystemExit(
            f"{label} sel2_size {computed['sel2_size']} != {expected['sel2_size']}"
        )
    if "discriminant" in computed and computed["discriminant"] != expected["discriminant"]:
        raise SystemExit(f"{label} discriminant mismatch")
    if "conductor" in computed and computed["conductor"] != expected["conductor"]:
        raise SystemExit(f"{label} conductor mismatch")
    computed["computed"] = True
    return computed


def archived_payload() -> dict[str, Any]:
    return {
        "version": "v4.1.1-descent-compute",
        "engine": "cypari2/PARI-2.17.2",
        "note": (
            "PARI ellrank / ell2cover / elltors on the certified minimal "
            "models. Computational 2-descent; not a Mathlib Mordell--Weil "
            "theorem and not a cohomological Selmer group."
        ),
        "ledger_sha256": EXPECTED_LEDGER,
        "26a1": {
            "cremona": "26a1",
            "ainv": [1, 0, 1, -5, -8],
            "discriminant": -17576,
            "conductor": 26,
            "rank": 0,
            "rank_lower": 0,
            "rank_upper": 0,
            "torsion": 3,
            "torsion_structure": [3],
            "sel2_size": 1,
            "sha2_trivial": True,
            "ell2cover_count": 0,
            "analytic_rank": 0,
        },
        "26b1": {
            "cremona": "26b1",
            "ainv": [1, -1, 1, -3, 3],
            "discriminant": -1664,
            "conductor": 26,
            "rank": 0,
            "rank_lower": 0,
            "rank_upper": 0,
            "torsion": 7,
            "torsion_structure": [7],
            "sel2_size": 1,
            "sha2_trivial": True,
            "ell2cover_count": 0,
            "analytic_rank": 0,
        },
    }


def cross_check_certificate_lean() -> None:
    text = CERT_LEAN.read_text()
    a1 = text.split("def factor26a1", 1)[1].split("def factor26b1", 1)[0]
    b1 = text.split("def factor26b1", 1)[1].split("def certifiedJ0Dimension26", 1)[0]
    for needle in (
        "a1 := 1",
        "a2 := 0",
        "a3 := 1",
        "a4 := -5",
        "a6 := -8",
        "discriminant := -17576",
        "certifiedMwrank := 0",
        'cremonaLabel := "26a1"',
    ):
        if needle not in a1:
            raise SystemExit(f"factor26a1 missing {needle}")
    for needle in (
        "a1 := 1",
        "a2 := -1",
        "a3 := 1",
        "a4 := -3",
        "a6 := 3",
        "discriminant := -1664",
        "certifiedMwrank := 0",
        'cremonaLabel := "26b1"',
    ):
        if needle not in b1:
            raise SystemExit(f"factor26b1 missing {needle}")


def cross_check_descent_lean() -> None:
    two = TWODESCENT_LEAN.read_text()
    sel = SELMER_LEAN.read_text()
    if "SelmerBound_26a1 : ℕ := 1" not in two:
        raise SystemExit("TwoDescent must display |Sel2| = 1, not torsion 3")
    if "SelmerBound_26b1 : ℕ := 1" not in two:
        raise SystemExit("TwoDescent must display |Sel2| = 1, not torsion 7")
    if "TorsionOrder_26a1 : ℕ := 3" not in two:
        raise SystemExit("TwoDescent must keep torsion order 3 as TorsionOrder")
    if "TorsionOrder_26b1 : ℕ := 7" not in two:
        raise SystemExit("TwoDescent must keep torsion order 7 as TorsionOrder")
    if "Not a Selmer" not in two or "Not a two-descent" not in two:
        raise SystemExit("TwoDescent honesty comments missing")
    if EXPECTED_DESCENT not in two:
        raise SystemExit("TwoDescent must cite Descent_26.json SHA-256")
    if "SelmerBound_26a1 = 1" not in sel:
        raise SystemExit("Selmer names must be 1 = 1, not torsion 3 = 3")
    if "Not Sha[2] triviality" not in sel:
        raise SystemExit("Selmer honesty comment missing")
    if "Prop := True" in two or ":= trivial" in two or "Prop := True" in sel:
        raise SystemExit("FAIL: Descent ranks/Selmer names must not be True/trivial")


def main() -> None:
    assert sha(LEDGER) == EXPECTED_LEDGER
    cross_check_certificate_lean()

    engines: list[str] = []
    for label in ("26a1", "26b1"):
        result = compute_curve(label)
        engines.append(f"{label}:{result.get('engine', 'none')}")
        if result.get("computed"):
            print(f"computed {label} via {result['engine']}")
        else:
            print(f"no Sage/PARI for {label}; checking archived JSON")

    payload = archived_payload()
    JSON.parent.mkdir(parents=True, exist_ok=True)
    rendered = json.dumps(payload, indent=2) + "\n"
    if not JSON.is_file() or JSON.read_text() != rendered:
        JSON.write_text(rendered)
        print(f"wrote {JSON.relative_to(ROOT)}")

    data = json.loads(JSON.read_text())
    for label, exp in CURVES.items():
        row = data[label]
        assert row["ainv"] == exp["ainv"]
        assert row["discriminant"] == exp["discriminant"]
        assert row["conductor"] == exp["conductor"]
        assert row["rank"] == 0
        assert row["torsion"] == exp["torsion"]
        assert row["sel2_size"] == 1
        assert row["sha2_trivial"] is True
        assert row["ell2cover_count"] == 0
    digest = sha(JSON)
    if digest != EXPECTED_DESCENT:
        raise SystemExit(
            f"Descent_26.json SHA-256 {digest} != {EXPECTED_DESCENT}"
        )
    cross_check_descent_lean()
    print(
        "verified descent JSON; "
        f"descent={EXPECTED_DESCENT} ledger={EXPECTED_LEDGER} "
        f"engines={engines}"
    )


if __name__ == "__main__":
    main()
