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