# Kolyvagin / Fintype display witness for v28
# (foundations kolyvagin-fintype-subsingleton-v28).
# Records Cremona 26a1 / 26b1 when Sage is present.
# Writes sagemath/certs/kolyvagin_fintype_subsingleton.json.
#
# Expected numerals (also pinned in the static JSON):
#   26a1 [1,0,1,-5,-8]  torsion 3  Sage rank 0  L/Omega 1/3
#   26b1 [1,-1,1,-3,3]  torsion 7  Sage rank 0  L/Omega 1/7
#   3 * 7 = 21
#
# Sage E.rank() is not a Mathlib Mordell-Weil theorem.
# Lean inhabits the typeclass upgrade Nonempty(Fintype) -> Fintype
# and ¬IsRankZero (Subsingleton is false on both models).
# MW_rank_zero_fintype stays def Prop.
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent
CERT_DIR = HERE / "certs"
CERT_DIR.mkdir(parents=True, exist_ok=True)


def sage_row(label, ainvs):
    E = EllipticCurve(ainvs)
    return {
        "label": label,
        "ainvs": [int(x) for x in ainvs],
        "discriminant": int(E.discriminant()),
        "conductor": int(E.conductor()),
        "torsion_order": int(E.torsion_order()),
        "sage_rank": int(E.rank()),
        "note": "Sage E.rank() / torsion_order(); not Mathlib MW / Fintype.",
    }


def static_rows():
    return [
        {
            "label": "26a1",
            "ainvs": [1, 0, 1, -5, -8],
            "discriminant": -17576,
            "conductor": 26,
            "torsion_order": 3,
            "sage_rank": 0,
            "note": "Sage E.rank() / torsion_order(); not Mathlib MW / Fintype.",
        },
        {
            "label": "26b1",
            "ainvs": [1, -1, 1, -3, 3],
            "discriminant": -1664,
            "conductor": 26,
            "torsion_order": 7,
            "sage_rank": 0,
            "note": "Sage E.rank() / torsion_order(); not Mathlib MW / Fintype.",
        },
    ]


try:
    rows = [
        sage_row("26a1", [1, 0, 1, -5, -8]),
        sage_row("26b1", [1, -1, 1, -3, 3]),
    ]
    ran_sage = True
except NameError:
    rows = static_rows()
    ran_sage = False

cert = {
    "version": "kolyvagin-fintype-subsingleton-v28",
    "parent": "6e88d94",
    "phase": "51bba93",
    "concept_doi": "10.5281/zenodo.22379293",
    "Sel2_card_26a1": 1,
    "Sel2_card_26b1": 1,
    "torsion_3_mul_7": 21,
    "L_over_Omega_26a1": [1, 3],
    "L_over_Omega_26b1": [1, 7],
    "IsRankZero_is_Subsingleton": True,
    "IsRankZero_on_26a1": False,
    "IsRankZero_on_26b1": False,
    "curves": rows,
    "sage_ran": ran_sage,
    "honesty": (
        "Nonempty(Fintype alpha) -> Fintype alpha is a typeclass upgrade "
        "(Fintype.ofFinite / choice). It does not prove E(Q) is finite. "
        "IsRankZero := Subsingleton is false on 26a1/26b1 (torsion 3 and 7). "
        "Sage E.rank() is not Kato/Kolyvagin. MW_rank_zero_fintype stays "
        "def Prop."
    ),
}

out = CERT_DIR / "kolyvagin_fintype_subsingleton.json"
out.write_text(json.dumps(cert, indent=2) + "\n")
print(out)
print(json.dumps(cert, indent=2))
