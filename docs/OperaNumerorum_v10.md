# Beal's *Opera Numerorum* — v10.0.0 final assembly

## What v10.0.0 proves

v10.0.0 is a conditional assembly, not an unconditional proof of Beal's
Conjecture. The theorem
[`Beal.Final.ConditionalBealTheorem`](../lean/Beal/Final/ConditionalBealTheorem.lean)
proves the public Lean proposition `BealConjecture` once five explicit
mathematical interfaces are supplied.

No new global axiom is introduced. The boundary is part of the statement.

## The mathematical route

```text
primitive Beal counterexample
        ↓
explicit level-26 Frey construction
        ↓
mod-p representation and modularity data
        ↓
Ribet level lowering to 26
        ↓
noncuspidal rational point on X₀(26)
        ↓
J₀(26) rank 0 + formal immersion at 3
        ↓
X₀(26)(ℚ) consists of the four certified cusps
        ↓
contradiction
```

The final contradiction is formal: a point cannot be both noncuspidal and a
member of the four-cusp set. The work lies in making every bridge to that
contradiction explicit.

## The reproducible level-26 chain

### v9.2.0 — second descent and rank zero

- `sagemath/certs_26a1_26b1.log`
- `sagemath/GENUINE_26_CERT_v9.2.0.txt`
- `scripts/check_level26_replay.py`
- `lean/Beal/Mazur/Gates/Descent_26_RankProof.lean`
- theorem `SecondDescent_Singleton_26_Reproducible`

The transcript and replay checks are evidence. Completeness of the covering
list, p-adic soundness, and Selmer-to-rank semantics remain visible in
`MwrankCertificateSoundness_26`.

### v9.3.0 — `J₀(26)` decomposition

- `sagemath/j0_26_decomp.log`
- `sagemath/GENUINE_J0_26_CERT_v9.3.0.txt`
- `sagemath/certs/j0_26_decomp_certificate.json`
- `scripts/j0_26_decomp_certificate.py`
- `lean/Beal/Mazur/Gates/J0_26_Decomp_Cert.lean`
- `lean/Beal/Mazur/Gates/J0_26_Decomp.lean`

The finite witness checks `dim J₀(26) = 2 = 1 + 1` and the displayed factor
models. The isogeny interpretation remains
`J0DecompositionSoundness_26 J0_26`.

### v9.4.0 — finite formal-immersion evidence, corrected to `3`

- `sagemath/formal_immersion_26.log`
- `sagemath/GENUINE_FORMAL_IMMERSION_26_CERT_v9.4.0.txt`
- `sagemath/certs/formal_immersion_26_certificate.json`
- `scripts/formal_immersion_26_certificate.py`
- `lean/Beal/Mazur/Gates/FormalImmersion_26_Cert.lean`
- `lean/Beal/Mazur/Gates/FormalImmersion_26.lean`

The witness checks that the displayed matrix
`[[1,1],[0,2]]` has determinant `2`, hence rank two over `ZMod 3`.
Its identification with the actual cotangent map and Mazur's
cusp criterion remains `FormalImmersionSoundness_26 J0_26 cotangent`.

## The five explicit v10.0.0 premises

| Premise | Meaning |
|---|---|
| `J0DecompositionSoundness_26 J0_26` | The Sage decomposition denotes the required Jacobian transport/isogeny data. |
| `MwrankCertificateSoundness_26` | The second-descent, torsion, completeness, and rank semantics needed by the rank-zero bridge. |
| `FormalImmersionSoundness_26 J0_26 cotangent` | The checked `M₃` is the relevant cotangent map and Mazur's criterion applies. |
| `FreyCurveExists` | Every primitive Beal counterexample supplies the indexed level-26 Frey construction. |
| `LevelLowering_26` | The indexed modularity data and Ribet level-lowering certificate produce a noncuspidal point. |

These premises are theorem arguments. They do not appear as global Lean
`axiom` declarations.

## The next hardening

Task #495 is intentionally not hidden by the v10.0.0 assembly. A future
v10.0.1 should construct the actual level-26 Abel--Jacobi cotangent map and
connect its differential to the archived `M₃` rows, reducing the content of
`FormalImmersionSoundness_26`.