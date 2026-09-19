# Ribet / level-32 display witness for v28 (foundations ribet-no-newforms-v28).
# Calls Sage CuspForms(32,2) and CuspForms(16,2).
# Writes sagemath/certs/ribet_no_newforms_32.json.
#
# Expected Sage / LMFDB numerals (also pinned in the static JSON):
#   CuspForms(32, 2).dimension()                    = 1
#   CuspForms(32, 2).new_subspace().dimension()     = 1   # 32a1; NOT 0
#   CuspForms(16, 2).dimension()                    = 0
#   Sturm bound weight 2 level 32                   = 8
#   928 / 29                                        = 32
#
# The pasted claim new_subspace().dimension() = 0 is not this cert.
# Lean inhabits the matching-Finset card 0 and the Sturm / 16 / 928/29=32
# numerals. It does not empty S2(Gamma0(32))^new.
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent
CERT_DIR = HERE / "certs"
CERT_DIR.mkdir(parents=True, exist_ok=True)


def sage_dims():
    """Live Sage dimensions when this file is run under sage."""
    S32 = CuspForms(32, 2)
    S16 = CuspForms(16, 2)
    return {
        "cuspforms_32_2_dimension": int(S32.dimension()),
        "cuspforms_32_2_new_subspace_dimension": int(S32.new_subspace().dimension()),
        "cuspforms_16_2_dimension": int(S16.dimension()),
        "sturm_bound_32_wt2": int(S32.sturm_bound()),
    }


def static_expected():
    return {
        "cuspforms_32_2_dimension": 1,
        "cuspforms_32_2_new_subspace_dimension": 1,
        "cuspforms_16_2_dimension": 0,
        "sturm_bound_32_wt2": 8,
    }


try:
    dims = sage_dims()
    ran_sage = True
except NameError:
    dims = static_expected()
    ran_sage = False

cert = {
    "version": "ribet-no-newforms-v28",
    "parent": "b61bec2",
    "phase": "51bba93",
    "concept_doi": "10.5281/zenodo.22379293",
    "nine_twenty_eight_div_twenty_nine": 928 // 29,
    "thirty_two_mul_twenty_nine": 32 * 29,
    "displayed_old_level": 16,
    "displayed_index_Gamma0_32": 48,
    "sturm_bound_wt2_level32": 8,
    "displayed_frey_matching_newform_count": 0,
    "lmfdb_S2_Gamma0_32_dim": 1,
    "lmfdb_newform": "32a1",
    "sage": dims,
    "sage_ran": ran_sage,
    "honesty": (
        "CuspForms(32,2).new_subspace().dimension() is Sage / LMFDB data "
        "(expected 1, newform 32a1). The paste dimension()=0 is not this "
        "cert. Lean inhabits matching Finset card 0, Sturm 8, old level 16, "
        "and the numeral 928/29=32. Not Mathlib ModularForm dimension, not "
        "Kraus emptiness, not abstract Ribet."
    ),
}

out = CERT_DIR / "ribet_no_newforms_32.json"
out.write_text(json.dumps(cert, indent=2) + "\n")
print(out)
print(json.dumps(cert, indent=2))
