# Manuscript review — journal draft versus submission evidence

## Audited proposal

The manuscript-consolidation proposal was inspected at PR 28 head
`75b8a3a551154ec020e60ddff467d27a4f4fb0d3`. It remains unmerged.
Audited `main` still has both `paper/` and `papers/`; the proposed consolidation
into `paper/v33-standalone/` must not be reported as already on `main`.

In an isolated PR checkout, `tectonic paper/mcom-draft.tex` succeeded.
The regenerated PDF has **11 pages and 160,581 bytes**. This verifies
compilation and size, not correct printing or mathematical completeness.

## Blocking edits before calling the manuscript ready

1. **Project-owned source references.** The first-page code note still sends
   readers to the older foundations repository. For the requested Beal-only
   evidence boundary, cite exact declarations and paths inside
   `beal-conjecture` at a pinned revision. Retain any historical DOI only as a
   historical citation, not as the active reproduction source.
2. **Print layout.** Tectonic emits numerous overfull boxes. A rendered page
   shows the long running title and source/tag identifiers extending past
   the right page boundary. Compilation is not “printing double checked.”
   Use a short running title and breakable monospaced paths/identifiers;
   inspect all pages after editing.
   A text-block check found physical page overflow on pages 2, 3, 4, 5, 7,
   9, and 11; pages 1 and 9 were also visually inspected.
3. **Stale v33 publication language.** Section 19 includes historical wording
   that a v33 DOI is still future and that release/webhook delivery is not
   established. The published v33 archive is
   `10.5281/zenodo.23054568`. Label the old wording as historical or replace
   it with current, version-specific citation text.
4. **No false supersession.** Keep the v37 version citation
   `10.5281/zenodo.23120540`. v38 preparation and commit `02728795` do
   not establish a new deposited version. No DOI was minted by this audit.
5. **Bounded theorem status.** Preserve Section 19's distinction between
   quotient-Rees gluing and the actual special-fibre pullback. Preserve its
   disclaimer about the reduced generator and its “not a general Beal proof”
   wording. The statement about open infinite/density and modular steps
   elsewhere in the manuscript must remain consistent.

## Suggested replacement for the active code-source note

> Project-owned Lean sources are archived in the `DavidFox998/beal-conjecture`
> repository at the revision specified in the reproducibility ledger, including
> the vendored `Level26/BealLevel26Foundations` package. The v33 geometric
> component has DOI `10.5281/zenodo.23054568`; the v37 chart-presentation
> component has DOI `10.5281/zenodo.23120540`. Historical foundations
> citations do not add external project-owned proof dependencies. These
> components do not constitute a proof of the general Beal conjecture.

List the per-component revision rather than substituting a later branch HEAD
for the source archived by an older DOI.

## Changes deliberately not made

No open pull request was merged, no frozen tag was moved, no Lean declaration
was changed, no old citation badge was standardized, and no DOI was minted.
The compiled PR manuscript is a review copy, not a final submitted manuscript.
