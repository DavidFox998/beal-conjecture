# `sagemath/`

This folder contains reproducibility programs and source transcripts for the
Level-26 arithmetic in the Beal chamber of *Opera Numerorum*. The replay
program prints its Sage and mwrank environment, obtains the database-defined
models, and records the external computation separately from the committed
Lean-facing evidence.

The separation is part of the method. A Sage or mwrank result can be useful
external evidence, but it does not become a Lean theorem merely because it is
printed in a text file. The v9.2.0 certificate path therefore keeps the
mwrank correctness premise, local lifting, covering completeness, and
Selmer-to-rank soundness visible. Re-run the documented script when checking
the transcript; do not overwrite the checked congruence data with a new
machine log.

## v10.0.0 — Final conditional assembly

The v10.0.0 theorem is assembled in
`lean/Beal/Final/ConditionalBealTheorem.lean`. This folder supplies the
reproducible computational inputs consumed by the v9.2--v9.4 Gates chain:

- v9.2 rank-zero second-descent replay and its explicit Selmer soundness
  boundary;
- v9.3 `J₀(26)` decomposition JSON and transcript; and
- v9.4 formal-immersion `M₃` JSON and transcript.

The focused Lean theorem adds no computational claim to these files. It keeps
`FreyCurveExists` and `LevelLowering_26` as explicit Phase-D inputs, with the
actual cotangent-map construction still tracked for v10.0.1.

## v9.2.0 — Rank-zero second-descent certificate

The v9.2.0 replay is anchored by:

- `certs_26a1_26b1.log`, the Sage/mwrank transcript;
- `GENUINE_26_CERT_v9.2.0.txt`, the six-point certificate checklist; and
- `scripts/check_level26_replay.py`, the replay/checker consumed by the Lean
  reproducibility bridge. There is no standalone v9.2 JSON witness in the
  committed artifact set.

It records the finite local evidence used for the rank-zero route while
keeping the Selmer-to-rank soundness and any covering-completeness claim as
explicit certificate boundaries.

## v9.3.0 — J₀(26) decomposition certificate

The v9.3.0 evidence records
$\dim J_0(26)=2=1+1$ and the reported isogeny
$J_0(26)\sim E_{26a1}\times E_{26b1}$. The exact coefficient models are
`(1,0,1,-5,-8)` and `(1,-1,1,-3,3)`. The JSON witness preserves the
source-to-Lean factor correspondence explicitly because the Sage factor
labels and established Lean model names occur in opposite order.

The importable Lean bridge keeps `J0DecompositionSoundness_26` and
`MwrankCertificateSoundness_26` as visible proposition-valued arguments, not
global axioms. The finite dimensions, models, transcript structure, and
certificate hashes are checked; Sage decomposition semantics and
mwrank/second-descent rank transport remain explicit external premises.

Verification passed:

- JSON witness check;
- focused Lean build of `Beal.Mazur.Gates.J0_26_Decomp`;
- main CI in 2m42s; and
- no new `axiom`, `sorry`, or `admit`.

The certificate is evidence for the level-26 bridge, not an unconditional
claim about the global rational points of $X_0(26)$.

## v9.4.0 — Formal immersion at `2`

The v9.4.0 evidence is anchored by:

- `formal_immersion_26.log`, the archived `M₃` matrix transcript;
- `GENUINE_FORMAL_IMMERSION_26_CERT_v9.4.0.txt`, the six-point checklist; and
- `certs/formal_immersion_26_certificate.json`, the immutable rank witness.

The JSON verifier independently checks the transcript hash, exact `2 × 6`
matrix shape, and rank `2` over both `ℚ` and `GF(2)`. The corresponding Lean
certificate checks the same finite data in the kernel. The geometric
identification with the cotangent map and Mazur's cusp criterion remains an
explicit proposition-valued soundness premise in the focused bridge.

## Reproducibility path

Each version follows the same auditable path:

**SageCell replay** → **committed source log** → **six-point genuine
certificate checklist** → **immutable JSON witness** → **focused Lean
certificate or bridge**.

The transcript is preserved as external computational evidence, while the
JSON and Lean layers check its integrity and finite claims without pretending
to reconstruct Sage, mwrank, or scheme-level modular-curve semantics.