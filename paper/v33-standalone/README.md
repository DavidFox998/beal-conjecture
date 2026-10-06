# Full working manuscript with the v33 body

`main.tex` and `main.pdf` now contain the complete 26-page working submission, synchronized with `paper/mcom-draft.tex` and `papers/main.tex`. The original two-page v33 manuscript is preserved in Git history and its published deposit; its full body remains Section 19 of this manuscript.

Method: edit and compile only `paper/mcom-draft.tex` using Tectonic 0.15.0, then use `cp` for its entire source and compiled PDF into this directory. Never independently rebuild this mirror. Check byte identity with `cmp` or MD5 hashes. Sections 20 and 21 are a conditional research plan, not newly proved Lean results. No external asset or bibliography file is required; the bibliography is inline.

The geometric claim remains bounded quotient-Rees three-open gluing and the actual generic-fibre comparison. This working copy is not a replacement for the frozen v33 DOI files, a global special-fibre identification, or a general Beal proof. No $1M claim or new DOI is made.

`README-from-papers.md` is the README that previously lived in `papers/`.

See `Beal/AUDIT_v33_HONESTY.md`, `Beal/ZENODO_DEPOSIT_v33.md`, and `Beal/RELEASE_NOTES_v33.md`.
