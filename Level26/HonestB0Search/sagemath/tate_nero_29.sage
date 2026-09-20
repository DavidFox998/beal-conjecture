# Tate / Néron display witness for v28 (foundations tate-neron-v28).
# Primary model is the displayed Frey curve
#   y^2 = x(x - A^4)(x + B^4)
#   = EllipticCurve([0, B^4 - A^4, 0, -A^4*B^4, 0])
# The short Weierstrass
#   EllipticCurve([0, -(A^4 + B^4), 0, 0, 0])
# is a *different* curve; it is recorded only as a comparison.
# Writes sagemath/certs/tate_nero_29.json.
#
# Expected numerals (also pinned in the static JSON):
#   (1,1)  conductor 32     (Cremona 32a3 = y^2 = x^3 - x)
#   (29,1) displayed 928    (2^5 * 29)
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent
CERT_DIR = HERE / "certs"
CERT_DIR.mkdir(parents=True, exist_ok=True)


def frey_invariants(A, B):
    """Displayed Frey Weierstrass [0, B^4-A^4, 0, -A^4 B^4, 0]."""
    ainvs = [0, B**4 - A**4, 0, -(A**4) * (B**4), 0]
    E = EllipticCurve(ainvs)
    Delta = 16 * A**8 * B**8 * (A**4 + B**4)**2
    return {
        "A": int(A),
        "B": int(B),
        "model": "frey",
        "ainvs": [int(x) for x in ainvs],
        "c4": int(E.c4()),
        "c6": int(E.c6()),
        "discriminant": int(E.discriminant()),
        "delta_formula": int(Delta),
        "conductor": int(E.conductor()),
        "cremona_label": str(E.cremona_label()) if E.conductor() < 500000 else None,
        "kodaira_at_2": str(E.kodaira_symbol(2)),
        "v2_delta": int(valuation(Delta, 2)),
        "v29_delta": int(valuation(Delta, 29)),
        "v29_c4": int(valuation(E.c4(), 29)),
        "note": "Displayed Frey model. Kodaira I0* at 2 is v2(Delta)=6.",
    }


def short_invariants(A, B):
    """Non-Frey short model [0, -(A^4+B^4), 0, 0, 0]. Comparison only."""
    ainvs = [0, -(A**4 + B**4), 0, 0, 0]
    E = EllipticCurve(ainvs)
    return {
        "A": int(A),
        "B": int(B),
        "model": "short_non_frey",
        "ainvs": [int(x) for x in ainvs],
        "c4": int(E.c4()),
        "c6": int(E.c6()),
        "discriminant": int(E.discriminant()),
        "conductor": int(E.conductor()),
        "note": "Not the Frey curve. Do not read this conductor as N_E.",
    }


pairs = [(1, 1), (29, 1)]
frey_rows = [frey_invariants(A, B) for A, B in pairs]
short_rows = [short_invariants(A, B) for A, B in pairs]

cert = {
    "version": "tate-neron-v28",
    "parent": "b3348df",
    "phase": "51bba93",
    "concept_doi": "10.5281/zenodo.22379293",
    "displayed_neron_numeral": 928,
    "two_pow_five_times_29": 2**5 * 29,
    "formula": "Delta = 16 A^8 B^8 (A^4+B^4)^2",
    "v29_on_solution": "v29(Delta) = 26 v29(C) when 29 does not divide AB",
    "frey": frey_rows,
    "short_non_frey_comparison": short_rows,
    "honesty": (
        "Kodaira symbols and conductor() are Sage output, not Mathlib "
        "KodairaType / NeronModel. Lean inhabits the valuations and the "
        "numeral 928 = 2^5 * 29."
    ),
}

out = CERT_DIR / "tate_nero_29.json"
out.write_text(json.dumps(cert, indent=2) + "\n")
print(json.dumps(cert, indent=2))
print("wrote", out)
