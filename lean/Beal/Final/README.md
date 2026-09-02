# `Beal/Final/`

This folder is the final assembly room of the Beal chamber in *Opera
Numerorum*. It does not turn the repository's explicit mathematical boundaries
into hidden assumptions. It shows, in one theorem, how the verified level-26
evidence and the remaining Frey/modularity interfaces fit together.

## v10.0.0 theorem

[`ConditionalBealTheorem.lean`](ConditionalBealTheorem.lean) proves the public
`BealConjecture` predicate from five visible inputs:

1. `J0DecompositionSoundness_26 J0_26`;
2. `MwrankCertificateSoundness_26`;
3. `FormalImmersionSoundness_26 J0_26 cotangent`;
4. `FreyCurveExists`; and
5. `LevelLowering_26`.

The proof turns a hypothetical primitive Beal solution into the existing
`BealCounterexampleData`, uses the Frey/modularity/level-lowering suppliers to
obtain a noncuspidal rational point on the level-26 model, and contradicts the
four-cusp equality derived from the v9.2--v9.4 certificates.

`FreyCurveExists` is the existing `FreyCurveConstruction_26` supplier.
`LevelLowering_26` contains the modularity-data supplier and the existing
`LevelLoweringCertificate_26`. They are definitions, not global axioms.

## Formal boundary

The finite calculations do not construct every mathematical interpretation:

- v9.2 does not infer Selmer completeness or Mordell--Weil rank semantics from
  a transcript alone;
- v9.3 does not construct the genus-two Jacobian isogeny from JSON;
- v9.4 does not construct the Abel--Jacobi cotangent map or Mazur's criterion
  from the rank-two matrix;
- Phase D still requires explicit Frey construction, modularity, and Ribet
  level-lowering data.

Task #495 records the planned v10.0.1 hardening: construct the actual
level-26 cotangent map behind `M₃`.

## Verification

From the repository root:

```sh
lake build Beal.Final.ConditionalBealTheorem
```

The module ends with `#print axioms ConditionalBealTheorem`. Its expected
footprint contains only Lean's standard foundations, not new domain axioms.