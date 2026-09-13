# M3 matrix from the v9.1.0 EKG canvas — this is the hard one
# Writes the finite formal-immersion M3 certificate consumed by Beal.Foundations.
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
CERT_DIR = HERE / "certs"
CERT_DIR.mkdir(parents=True, exist_ok=True)

def py(x):
    if isinstance(x, (list, tuple)):
        return [py(y) for y in x]
    if isinstance(x, dict):
        return {str(k): py(v) for k, v in x.items()}
    if isinstance(x, bool):
        return bool(x)
    if isinstance(x, str):
        return x
    try:
        return int(x)
    except Exception:
        return str(x)

N = 26
M = ModularSymbols(N, 2, 1).cuspidal_subspace().new_subspace()
print(M.dimension())  # should be 2

# Formal immersion at p=2 check — Mazur method
X = J0(N)
print(f"J0({N}) decomposition for immersion: {X.decomposition()}")

newforms = []
coeff_rows = [[], []]
# Save q-expansions for the two newforms 26a and 26b
for f in Newforms(N, names='a'):
    qexp20 = [0] + [int(f[n]) for n in range(1, 21)]
    print(f, f.qexp(20))
    a1 = int(f[1])
    a2 = int(f[2])
    newforms.append({
        "qexp_preview": str(f),
        "level": int(f.level()),
        "a1": a1,
        "a2": a2,
        "qexp_a0_to_a20": qexp20,
    })
    coeff_rows[0].append(a1)
    coeff_rows[1].append(a2)

# Label the newforms from the J0(26) optimal quotients' Cremona labels.
decomp = list(X.decomposition())
for i, A in enumerate(decomp):
    E = A.elliptic_curve()
    newforms[i]["cremona_label"] = str(E.cremona_label())
    newforms[i]["abelian_label"] = str(A.label())

C3 = matrix(ZZ, coeff_rows)
P = matrix(ZZ, [[1, 0], [1, 1]])
M3 = P * C3
C3_mod3 = [[int(Zmod(3)(C3[i, j])) for j in range(2)] for i in range(2)]
P_mod3 = [[int(Zmod(3)(P[i, j])) for j in range(2)] for i in range(2)]
M3_mod3 = [[int(Zmod(3)(M3[i, j])) for j in range(2)] for i in range(2)]
det_mod3 = int(Zmod(3)(M3.det()))

cert = {
    "version": "v1.3.0",
    "previous": "v1.2.1",
    "sagemath_version": str(sage.version.version),
    "level": N,
    "weight": 2,
    "nebentypus": 1,
    "modular_symbols_new_cuspidal_dimension": int(M.dimension()),
    "J0_dimension": int(X.dimension()),
    "newforms": newforms,
    "coefficient_matrix": [[int(C3[i, j]) for j in range(2)] for i in range(2)],
    "coefficient_matrix_mod_3": C3_mod3,
    "basis_change_mod_3": P_mod3,
    "M3": [[int(M3[i, j]) for j in range(2)] for i in range(2)],
    "M3_mod_3": M3_mod3,
    "M3_det": int(M3.det()),
    "M3_det_mod_3": det_mod3,
    "M3_rank": int(M3.rank()),
    "formal_immersion_prime": 2,
    "boundary": (
        "Finite modular-symbols and newform evidence for a rank-2 M3. "
        "This does not construct or identify the geometric Picard/Abel-Jacobi "
        "cotangent map, and it is not a formal-immersion theorem at 2."
    ),
}

out = CERT_DIR / "formal_immersion_M3.json"
out.write_text(json.dumps(py(cert), indent=2, sort_keys=True) + "\n")
print(f"wrote {out}")
