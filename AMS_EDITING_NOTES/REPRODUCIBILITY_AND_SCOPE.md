# Reproducibility and standalone foundations

## Pinned environment

- Source: GitHub `main` at `02728795e15f6c858f0d360d560f80e4efb252a2`.
- Toolchain: `leanprover/lean4:v4.12.0`.
- Mathlib manifest pin: `809c3fb3b5c8f5d7dace56e200b426187516535a`.
- Foundations dependency: `./Level26/BealLevel26Foundations`, type `path`.

A clean reproduction should retain the committed manifest. Do not silently
replace it with `lake update`, ignore dependency failures using `|| true`, or
lose a command's exit status by piping it to `tail`.

```sh
lake exe cache get
lake build BealMathlibMissing
lake build BealEven
```

The cache download succeeding is not a project build succeeding. Results of
this audit's isolated build attempt are recorded below.
No `BealGeneral` or full-repository build is implied by these two targets.

## Fresh verification

| Check | Actual result |
|---|---|
| `lake exe cache get` | Exit 0; pinned Mathlib cache restored |
| `timeout 300 lake build BealMathlibMissing` | Exit 124: time limit; incomplete |
| `timeout 180 lake build BealEven` | Exit 124: time limit; incomplete |
| Committed `lake-manifest.json` | Unchanged before/after the attempts |

Manifest SHA-256 before and after:
`c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`.

The final attempts timed out in geometric dependency compilation, without a
reported Lean compiler error. Earlier attempts were interrupted while restoring
the project cache. Byte-identical project-source artifacts were reused where
available, including their generated C files/hashes/traces, and Lake performed
normal dependency validation. No cache hash was adjusted to force acceptance.

**Neither requested target was freshly verified to exit 0 in this audit.**
A timeout is not a proof failure, but it is not a successful check either.
The final v38 seven-declaration axiom printout was not freshly reached.

The exact audited GitHub head does have a successful “Matveev-Beal CI” run,
`37283892137`, but its workflow builds `BealMatveevBeal`,
`BealMatveevBealV25Rank3`, and `BealMatveevBealV25B0Search`. Those are
different targets and do not replace the incomplete local chart/even checks.

## Local foundations and its exact boundary

The repository contains:

- `Level26/BealLevel26Foundations/lean/Beal/Foundations/J0_26_Decomp.lean`;
- `Level26/BealLevel26Foundations/sagemath/certs/j0_26_decomposition.json`;
- `Level26/BealLevel26Foundations/sagemath/j0_26_decomp_foundation.sage`.

The Lean source checks finite typed data: two distinct q-expansion prefixes
with 21 entries each, assigned dimensions one and one, their sum two, ledger
compatibility, and Weierstrass invariants. The JSON records the two factors'
models `[1,0,1,-5,-8]` and `[1,-1,1,-3,3]`, with discriminants `-17576`
and `-1664`.

The source and certificate explicitly disclaim a scheme-theoretic Jacobian
or a proved isogeny decomposition in Mathlib. The Sage rank computation is not
itself a formal cohomological Mordell–Weil theorem. No Sage generator was
rerun in this audit.

Transport to other modular levels, Hodge interpretations, and the unrestricted
Frey/Ribet chain are not supplied by these finite prefixes.

## Interpretation

Separately record source presence, successful compilation, assumptions, and
identification with the intended mathematical statement. None of these four
checks substitutes for the others.
