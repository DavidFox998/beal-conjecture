"""Sage/mwrank replay commands for the external level-26 boundary.

Run with:
  sage sagemath/reproduce_level26_descent.sage \
    | tee sagemath/sage_mwrank_level26.log

The generated Sage log is intentionally separate from the dependency-free
congruence log `certs_26a1_26b1.log`.

The script prints executable and package versions before doing arithmetic.
The labels below are queried, not inferred from the Lean names.  The final
standard-library certificate checker is independent of Sage.
"""

import subprocess

print("sage_version:", version())
print("sage_executable:", SAGE_ROOT)
for command in (["mwrank", "-v"], ["mwrank", "--version"]):
    try:
        result = subprocess.run(command, text=True, capture_output=True, timeout=30)
        print("command:", " ".join(command))
        print((result.stdout + result.stderr).strip())
        if result.returncode == 0:
            break
    except Exception as error:
        print("version_probe_error:", repr(error))

for label in ("26a1", "26b1"):
    E = EllipticCurve(label)
    print("=" * 72)
    print("database_label:", label)
    print("ainvs:", list(E.ainvs()))
    print("conductor:", E.conductor())
    print("discriminant:", E.discriminant())
    print("torsion_order:", E.torsion_order())
    print("rank:", E.rank(proof=True))
    print("two_descent:", E.two_descent(second_limit=12))