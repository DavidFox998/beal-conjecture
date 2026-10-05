# Working v33 paper

The build source is [`main.tex`](main.tex); its generated PDF is `main.pdf`.
This is a bounded description of the quotient-Rees three-open gluing
and the actual blow-up's generic-fibre comparison. It is **not** a proof
of the general Beal conjecture, a global identification of the actual
special-fibre pullback with the quotient Rees `Proj`, or a degree-one /
nonvanishing certificate for `overline{2t}`.

The intended source for a future Zenodo DOI is the `beal-conjecture`
GitHub Release `v33`; the active GitHub-side Zenodo webhook has not
delivered a release or minted a DOI. The level-26 foundations repo is
a later work mirror, not the v33 release source. Read
[`Beal/AUDIT_v33_HONESTY.md`](../Beal/AUDIT_v33_HONESTY.md),
[`Beal/ZENODO_DEPOSIT_v33.md`](../Beal/ZENODO_DEPOSIT_v33.md),
and [`Beal/RELEASE_NOTES_v33.md`](../Beal/RELEASE_NOTES_v33.md)
before changing the claims or releasing the PDF.

Build from this directory with `latexmk -pdf main.tex` when available,
or `tectonic main.tex`. Keep the historical, unrelated level-26 MCOM
draft in `paper/mcom-draft.tex` unchanged. The v33 DOI and release date
must only be added after they exist and have been verified.