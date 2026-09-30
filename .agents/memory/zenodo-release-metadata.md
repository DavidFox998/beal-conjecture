---
name: Zenodo release metadata
description: How GitHub-triggered Zenodo records inherit metadata and how to verify corrections.
---

For GitHub-triggered Zenodo deposits, the repository's root deposit metadata can determine the published record's title, description, and version independently of the GitHub release notes. Review it before publishing a new release, especially when a repository spans several historical research stages.

**Why:** A release with accurate GitHub notes inherited an older research-stage description in its Zenodo record. Editing repository metadata later did not change the already-published record; the published deposition needed a separate authorized metadata edit.

**How to apply:** Before triggering a release, compare the root deposit metadata against the intended tag and proof boundaries. After minting, inspect the public record's title, description, version, DOI, and concept relation. Zenodo HTML-escapes comparison characters in descriptions, so compare decoded text when verifying an authorized edit.

An accepted GitHub release webhook does not guarantee that a public Zenodo version will appear promptly. Before a manual mint, check both public concept versions and authorized depositions to avoid duplicates. Zenodo's new-version action must use the concept's **latest** deposition even when a release needs to cite an earlier predecessor in `isNewVersionOf`; a fresh draft inherits the previous version's archive and metadata, so replace both before publishing.

**Why:** A release webhook returned an accepted response but no new deposit appeared after a substantial wait. The concept already contained two records for the prior tag, and blindly creating or publishing a cloned draft would have preserved the wrong source archive.

**How to apply:** Confirm the current latest record, inspect for an existing draft or newly published version, validate the draft's version, concept DOI, related identifier, and uploaded archive checksum, then publish once and verify the public record.

An archive for an annotated GitHub tag may use the tag object's short hash in its top-level ZIP directory, rather than the peeled commit's short hash. The directory name alone is not evidence that the wrong commit was archived.

**Why:** A ZIP directory suffix differed from the release commit, but the suffix identified the annotated tag object; every tracked file in the archive matched the peeled tag byte-for-byte.

**How to apply:** Check the ZIP checksum and compare its root-level file set and contents with the peeled tag before diagnosing a source mismatch. Avoid suffix-only checks, which can also match unrelated nested files.

The concept's newest record by publication date is not necessarily its highest semantic version or the appropriate name for the next release. A retrospective bounded release can be published after a numerically higher release; an absent intermediate tag is not permission to create one.

**Why:** A later-published bounded retrofit carried an earlier version number than an existing higher-numbered release. Treating Zenodo's chronological latest pointer as the version sequence would misname a future deposit.

**How to apply:** Before a future mint, check where the intended predecessor release actually lives, whether an intermediate version exists, and the proposed deposit's metadata and archive. Keep the API's latest deposition requirement separate from the semantic-version decision.