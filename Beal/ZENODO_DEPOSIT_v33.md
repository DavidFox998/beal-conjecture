# Proposed v33 Zenodo deposit routing

- **Source:** whole-project main audit repository
  [`DavidFox998/beal-conjecture`](https://github.com/DavidFox998/beal-conjecture),
  branch `beal-10e6-inhabited-43735b3`, proposed tag `v33`.
  No tag or release has been made yet.
- **Deposit:** Zenodo should ingest the GitHub release from
  `beal-conjecture`, **not** from `beal-level-26-foundations`.
  This records the intended source, not proof that the GitHub–Zenodo
  connection or a new DOI already exists.
- **Mirror:** [`DavidFox998/beal-level-26-foundations`](https://github.com/DavidFox998/beal-level-26-foundations),
  configured locally as `level26`, is the work-repository mirror.
  After minting, the proposed sync is
  `git push level26 beal-10e6-inhabited-43735b3:main`
  (or a mirror clone), **only after checking** the mirror's `main`
  ancestry and obtaining a separate push order. Do not force-push.
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
- **Metadata hold:** the root `.zenodo.json` still describes an older
  v25 foundations deposit and `CITATION.cff` still points to the
  foundations concept DOI. Review/update intended v33 metadata and
  verify Zenodo's GitHub repository linkage before any mint.