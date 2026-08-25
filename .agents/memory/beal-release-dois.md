---
name: Beal release DOIs
description: Verified DOI and release-order facts for Beal axiom-boundary versions.
---

The three-axiom `v4.0.0` boundary associated with CI #205 already has the completed Zenodo DOI `10.5281/zenodo.22085104` (Zenodo record 22085104). Do not create another DOI for that same release.

The typed preserved-form `v5.0.0` boundary has the completed Zenodo DOI `10.5281/zenodo.22090900` (Zenodo record 22090900), created from the GitHub release at the #398 audit commit. Its metadata was corrected in place to match the v5.0 boundary; do not mint a duplicate DOI.

**Why:** DOI minting is intended to mark changes in the audited mathematical axiom footprint, not every commit.

**How to apply:** Keep the release sequence as `v4.0.0` three-axiom lock, then `v4.1.0` Tate truthful model after its build, then `v5.0.0` for the typed preserved-form `ribet_single_step` boundary after the corresponding work lands. Verify a tag, release, and `#print axioms` footprint before minting each new DOI.