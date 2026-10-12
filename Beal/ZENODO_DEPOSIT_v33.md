# Proposed v33 Zenodo deposit routing

- **Source:** whole-project main audit repository
  [`DavidFox998/beal-conjecture`](https://github.com/DavidFox998/beal-conjecture),
  branch `beal-10e6-inhabited-43735b3`, proposed tag `v33`.
  No tag or release has been made yet.
- **Deposit:** Zenodo should ingest the GitHub release from
  [beal-conjecture](https://github.com/DavidFox998/beal-conjecture).
  This records the intended source, not proof that the GitHub–Zenodo
  connection or a new DOI already exists.
- **Other copies:** any non-public copy is not a release source and is
  not linked here.
- **Verified:** seven v33 modules passed direct `lake env lean`;
  their printed axiom sets are only
  `[propext, Classical.choice, Quot.sound]`. The 2,249-line existing
  branch chart passed directly; the scoped `sorry` scan is empty.
- **Not advertised:** a global isomorphism from the actual
  special-fibre pullback to `Proj(ReesMod2)`, and the degree-one
  quotient/nonvanishing-of-`overline{2t}` assertions.
  The checked global isomorphism is
  `Proj(ReesMod2) ≅ Glue(S_2t/(2), S_Xt/(2), S_Yt/(2))`
  with abstract product-pullback overlaps.
- **Metadata:** root `.zenodo.json` and `CITATION.cff` now describe
  v33 on `beal-conjecture`, without an invented DOI or release date.
  The v25 foundations concept DOI is identified as historical in
  `CITATION.cff`, not assigned to v33.
- **Linkage checked:** the authenticated GitHub webhooks API for
  `DavidFox998/beal-conjecture` returned one active Zenodo webhook
  listening for `release` events (HTTP 200). This confirms the
  GitHub-side hook, not delivery of a future release, Zenodo deposit,
  or DOI. After an authorized release, check Zenodo for duplicates,
  metadata, concept relation, archive and the minted DOI before
  calling the deposit complete.
