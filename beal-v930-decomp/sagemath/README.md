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

The v9.4.0 finite formal-immersion witness follows the same rule:
`formal_immersion_26.log` and
`certs/formal_immersion_26_certificate.json` archive the matrix
`[[1,1],[0,2]]` modulo `3`. Run
`python3 scripts/formal_immersion_26_certificate.py` to compare both files and
recompute the determinant. This verifies the finite M3 data only; the
scheme-level Abel--Jacobi interpretation remains a named Lean premise.