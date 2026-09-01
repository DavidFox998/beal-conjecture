---
name: Beal release DOIs
description: Verified DOI and release-order facts for Beal axiom-boundary versions.
---

The three-axiom `v4.0.0` boundary associated with CI #205 already has the completed Zenodo DOI `10.5281/zenodo.22085104` (Zenodo record 22085104). Do not create another DOI for that same release.

The typed preserved-form `v5.0.0` boundary has the completed Zenodo DOI `10.5281/zenodo.22090900` (Zenodo record 22090900), created from the GitHub release at the #398 audit commit. Its metadata was corrected in place to match the v5.0 boundary; do not mint a duplicate DOI.

The typed Eutheos old/new bridge `v7.3.0` has the completed Zenodo DOI
`10.5281/zenodo.22148517` (Zenodo record 22148517). It archives the tagged
source and leaves `LocalizedRankOne` explicit. Do not mint another DOI for
this release.

The v7.3.1 audit-clarification documentation patch has the completed Zenodo
DOI `10.5281/zenodo.22150033` (Zenodo record 22150033). It preserves the
immutable v7.3.0 code/tag and archives the six-README scope clarification.
Do not mint another DOI for this documentation release.

The v8.0.0 Tate-boundary release has version DOI `10.5281/zenodo.22164365`
(Zenodo record 22164365), with concept DOI `10.5281/zenodo.22041831`. The
record is complete and archives the GitHub v8.0.0 source ZIP. Its inherited
v4.1.0 display title was corrected in place to “Beal Conjecture — Frey Tate
Boundary Exposed — v8.0.0”; do not mint a duplicate DOI.

The v8.1.0 rational Frey 2-torsion milestone has version DOI
`10.5281/zenodo.22165277` (Zenodo record 22165277). It archives the correct
`beal-conjecture-v8.1.0.zip`, including the genuine B17 rational-point module.
Its inherited v4.1.0 Tate title and description were corrected in place to
“Beal Conjecture — Frey Rational 2-Torsion — v8.1.0”; do not mint a duplicate
DOI.

The v8.3.0 typed patching and Tate-certified descent milestone has version DOI
`10.5281/zenodo.22170879` (Zenodo record 22170879), under concept DOI
`10.5281/zenodo.22041831`. Its GitHub release, tag archive, and Zenodo ZIP were
independently verified; do not mint another DOI for this release.

The v8.4.0 release-guard, genuine Frey residual, and typed R=T milestone has
version DOI `10.5281/zenodo.22183160` (Zenodo record 22183160), under concept
DOI `10.5281/zenodo.22041831`. Its GitHub tag and complete source archive were
verified at the green release commit, and its inherited display title was
corrected in place to “Beal Conjecture — Release Guard, Genuine Frey Residual,
and Typed R=T Patching — v8.4.0”; do not mint another DOI.

The v8.5 Level-26 conditional rank interface has version DOI
`10.5281/zenodo.22216841` (Zenodo record 22216841), under concept DOI
`10.5281/zenodo.22041831`. Its immutable tag and archive came from a mixed
Replit workspace, not a clean Beal checkout. Keep the record as historical
evidence, but do not use it as the canonical Beal source archive or mint a
duplicate DOI for v8.5.

The clean v8.6.0 Level-26 conditional Phases A–C release has version DOI
`10.5281/zenodo.22220130` (Zenodo record 22220130), under concept DOI
`10.5281/zenodo.22041831`. It archives the green GitHub v8.6.0 tag from the
actual Beal repository, contains zero Lean `sorry` terms, and keeps all
unproved arithmetic-geometry steps as explicit hypotheses or theorem-valued
supplier boundaries. This is the canonical clean archive superseding the v8.5
packaging error; do not mint another DOI for v8.6.0.

The clean v8.7.0 conditional Phases A–C formal-immersion release has version
DOI `10.5281/zenodo.22226053` (Zenodo record 22226053), under concept DOI
`10.5281/zenodo.22041831`. Its annotated GitHub tag and Beal-only archive were
verified independently. The GitHub hook did not mint this version
automatically, so it was created through Zenodo's new-version flow. Do not
mint another DOI for v8.7.0.

The GitHub-first v8.7.1 Phase A–C certificate-guard release has version DOI
`10.5281/zenodo.22226446` (Zenodo record 22226446), under concept DOI
`10.5281/zenodo.22041831`. Zenodo imported its ZIP directly from the annotated
GitHub tag after green GitHub-hosted CI. Do not mint another DOI for v8.7.1.

The inherited v4.1.0 titles and descriptions on Zenodo records
`10.5281/zenodo.22110949` (`v7.0.0-genuine-provider`),
`10.5281/zenodo.22123696` (`v7.1.0`), and
`10.5281/zenodo.22134937` (`v7.2.0`) were corrected in place. They now use
version-specific “Beal Conjecture — Formalization Release” metadata and retain
their original files and DOIs.

The Tate local conductor verification is published as `v4.1.0` with DOI
`10.5281/zenodo.22091549` (Zenodo record 22091549). Its archival description
must retain the odd-prime-only boundary: one typed Frey model ties the local
data together, but this is not a complete Tate algorithm, a 2-adic conductor
calculation, or a global conductor computation.

The Zenodo concept DOI is `10.5281/zenodo.22041831`. Record
`10.5281/zenodo.22048503` is instead the version DOI for
`v0.3.0-arithmetic-descent`; do not label it as the concept record. The v4.0.0
landing page retains an older v0.4-style title, so identify that release by its
v4 tag, archived commit, and DOI together.

For the earlier release lineage, use `10.5281/zenodo.22041832` for the
v0.2.0 zero-axiom core, `10.5281/zenodo.22050666` for the v0.4.0 typed
interfaces snapshot, and `10.5281/zenodo.22050960` for the v1.0 Opera
Numerorum freeze. The first two Zenodo display-metadata fields can be stale or
generic, so map them by the GitHub release webhook chronology and archived tag,
not title text alone.

**Why:** DOI minting is intended to mark changes in the audited mathematical axiom footprint, not every commit.

Published Zenodo metadata can be corrected without minting a new DOI by
opening the record through its `edit` action, updating the deposition metadata,
and republishing it. Use this when the archived file is correct but inherited
display metadata is stale.

**How to apply:** Keep the release sequence as `v4.0.0` three-axiom lock, then `v4.1.0` Tate truthful model after its build, `v5.0.0` for the typed preserved-form `ribet_single_step` boundary, `v7.3.0` for the typed Eutheos old/new bridge, and `v7.3.1` for its audit clarification. Verify a tag, release, and `#print axioms` footprint before minting each new DOI; inspect both the archived file and display metadata before creating another version.