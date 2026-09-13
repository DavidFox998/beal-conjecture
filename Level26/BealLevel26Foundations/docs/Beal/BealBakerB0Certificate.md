# v15.0.0 Baker B0 PARI certificate

Zenodo DOI [`10.5281/zenodo.22728624`](https://doi.org/10.5281/zenodo.22728624)
(concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293)).
Archived in v16 `docs/CUMULATIVE_ARCHIVE_v10_v15.md`.

`lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0Certificate.lean`

PARI script `scripts/baker_b0_gap3.gp` writes
`baker_B0_certificate.json` / `scripts/baker_B0_certificate.json`.

Displayed cutoff `baker_B0_PARI = 1000000`
equals Lean `baker_B0` (25-chunk census).
The integer trace is Matveev 2000 Thm 1.4 /
BMS Table 1 constants for the 3-log form
`4*log(A/B) - 13*log((B+3)/B)` at
`realprecision = 100`, `D = 1`.

`baker_B0_certificate_holds` is kernel
`decide` that the displayed list is
nonempty (**no axioms**).

Like mwrank `{0,12}`: this is a
transparent external cert, not a Mathlib
Matveev theorem.  Raw Matveev does not
by itself force `B ≤ 10^6`.
`baker_bound_gap3` stays a **def Prop**.
`baker_bound_gap3_of_PARI` is the named
implication (also a def Prop, not inhabited).

Regenerate:

```
gp -q < scripts/baker_b0_gap3.gp
```

Must print `B0=1000000` and write valid JSON.
Does not use sorry.
