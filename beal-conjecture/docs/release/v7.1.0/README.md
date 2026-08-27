# v7.1.0 release-documentation drafts

These files are copy-ready documentation patches for the v7.1.0 release.
They are drafts only: they do not modify the README in any of the three
repositories named below.

## Files

- `README_PATCH_beal-conjecture.md` — replacement status section for the Beal
  repository.
- `README_PATCH_opera-numerorum.md` — Beal row and explanatory note for the
  *Opera Numerorum* tower-status table.
- `README_PATCH_pistus-theoria.md` — LaTeX abstract paragraph for the Beal
  certification paper.

## DOI placeholders

Replace both placeholders after Zenodo mints the release record:

- `XXXXXXX` — the v7.1.0-specific Zenodo DOI number.
- `YYYYYYY` — the Zenodo concept DOI number covering all versions.

The release notes describe the result as “0 axioms.” For audit accuracy, the
patches use **zero named project axioms** and separately report Lean’s
foundational footprint, `{propext, Quot.sound}`.

## Suggested application order

1. Publish the GitHub release from commit `76d1dec`.
2. Wait for the version DOI and concept DOI.
3. Replace `XXXXXXX` and `YYYYYYY` in all three snippets.
4. Apply each snippet in its target repository, preserving surrounding
   repository-specific documentation.