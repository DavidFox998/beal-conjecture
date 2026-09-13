# v17.0.0 Baker B0 PARI LLL reduction certificate

Zenodo DOI [`10.5281/zenodo.22729067`](https://doi.org/10.5281/zenodo.22729067)
(concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293)).
Archived in v18 `docs/CUMULATIVE_ARCHIVE_v10_v17.md`.

`lean/BealLevel26Foundations/Beal/FullProof/BealBakerB0ReductionCertificate.lean`

PARI script `scripts/baker_b0_reduction.gp` writes
`baker_B0_reduction_certificate.json` /
`scripts/baker_B0_reduction_certificate.json`.

Matveev 2000 Thm 1.4 / BMS Table 1 gives the
huge unreduced integer
`B0_raw = C1_floor * 30^{n+3}`
(`104382751019310000000`).
`qflll` reduces the 3-log integer lattice
`K * (4 log B0, 9 log B0, 13 log(B0+3))`
at `K = 10^20`, `B0 = 10^6`.
Displayed `baker_B0_reduced_PARI = 1000000`
equals Lean `baker_B0` (25-chunk census).

`baker_reduction_certificate_displayed` is
`List (List Int)`: header, constants,
LLL basis rows, convergents of
`4 log B0 / 13 log(B0+3)`.

`baker_reduction_certificate_holds` is kernel
`decide` that the displayed list is
nonempty (**no axioms**).

Like mwrank `{0,12}`: this is a
transparent external cert, not a Mathlib
Matveev or LLL theorem.
`baker_bound_gap3` stays a **def Prop**.
`baker_bound_gap3_of_LLL` is the named
implication (also a def Prop, not inhabited).

## v24.4.0 summary shape

`baker_v24x_reduction_shape` restates the displayed
cert used by the v24.x final summary:
`B0_raw = 104382751019310000000`,
`B0_reduced = baker_B0 = 10^6`, and the nonempty
qflll list. It does **not** inhabit
`baker_bound_gap3`. Displayed cert rows are
unchanged vs v17 / v24.3.2.

Regenerate:

```
gp -q < scripts/baker_b0_reduction.gp
```

Must print `B0_reduced=1000000` and write valid JSON.
Does not use sorry.
