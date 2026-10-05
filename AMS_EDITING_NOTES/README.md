# Beal submission editing notes

Prepared on 2026-10-05. These are preparation notes, not a record that a journal
or prize submission has occurred, and not a certification of a general Beal
proof.

## Methodology and scope

The audited GitHub `main` is
`02728795e15f6c858f0d360d560f80e4efb252a2`. It was examined in an
isolated checkout without replacing the existing Replit branch. Open pull
requests were inspected separately and are not treated as merged.

All project-owned Lean evidence for a Beal submission must be present inside
`DavidFox998/beal-conjecture`, including its vendored Level26 path package.
Other research projects and private certificates are not Beal proof premises.
The normal Lean/Mathlib dependencies and scholarly literature remain distinct
from project-owned formal evidence.

## Contents

- `BEAL_SUBMISSION_LEAN_ONLY.md`: the admissible source boundary and exact
  theorem-scope distinctions.
- `REPRODUCIBILITY_AND_SCOPE.md`: build targets, revisions, verification limits,
  and the local foundations package.
- `MANUSCRIPT_REVIEW.md`: editing findings for the journal draft and the
  unmerged manuscript-consolidation proposal.

The broader public portfolio review is retained as a separate workspace
deliverable, not as Beal submission evidence. Private material stays in ignored
scratch storage and is not included in these submission notes.

## Dependencies and interaction

These Markdown documents require no runtime. Lean verification uses the pinned
Lean 4.12.0 toolchain and the committed Lake manifest. Manuscript verification
uses Tectonic and Poppler's PDF inspection tools. The notes record evidence and
proposed edits; they neither modify mathematical declarations nor merge open
pull requests. New version metadata is preparatory, not a minted DOI.
