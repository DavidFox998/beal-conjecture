# AMS editing notes — three-phase MCOM revision

This records the general Beal conjecture succinctly: the general
common-prime statement is displayed alongside the v38 EQUIV:3 chart
certificate. Its forward wrapper takes the common-prime theorem as an
explicit input; retain that input in the statement.

## Methodology, dependencies, and scope

The manuscript revision starts from PR28
`75b8a3a551154ec020e60ddff467d27a4f4fb0d3`; its immutable Lean-source
baseline is `02728795e15f6c858f0d360d560f80e4efb252a2`.
Only the beal-conjecture repository and its vendored level-26 package
provide Lean evidence. Standard Lean, Mathlib, SageMath, and TeX
dependencies remain acknowledged.

The review compared theorem types and proof bodies, replayed finite
arithmetic independently in Python, compiled with Tectonic, extracted
searchable text, and inspected rendered pages. Python arithmetic and
lexical scans are not Lean elaboration or axiom certificates.

## Folder contents and interaction

- `README.md`: scope, methodology, manuscript dependencies, and status.
- `BEAL_SUBMISSION_LEAN_ONLY.md`: exact source and claim ledger.
- `MCOM_STRENGTHEN.md`: the three applied phases and ten concrete changes.
  It also records the Phase 4 and version-history follow-ups.
  The final five editorial fixes and current PDF checks are recorded there.

The manuscript source and rebuilt PDF are in `paper/`.
`paper/v33-standalone/` remains the unmodified archive, with its complete
mathematical body retained in Section 19. Section 20 now states the v38
certificate and the general input interface separately.

## Formal scope and provenance

v33 remains bounded quotient-Rees three-open gluing and actual
generic-fibre comparison, not a general Beal proof, global
special-fibre identification, or degree-one/nonvanishing certificate.
Its old deposit-planning sentences are labelled historical against
the repository's current audit record.

The v38 chain remains `ddfb2642 → e466e5a → 792b3f8`.
Freeze tag `beal-v38-freeze-Y-axis-glue`: object `437b4c85`, target
`c48b1bd3`. Separate EQUIV tag: object `c2f530ab`, target `792b3f8`.
Current cited chart DOI: `10.5281/zenodo.23120540`.
The `ChartTrueEquiv.lean` conjunction supplies chart injectivity and
the Eᵢ/annihilator data; `BealFinal/Main.lean` records the common-prime
statement with its proof as an input field.

## Verification and remaining limits

Latest PDF: Tectonic exit 0, 20 pages, 191,886 bytes, searchable text on
every page, no overfull-box or undefined-reference warnings, and no
extracted text spans outside the page. Underfull spacing warnings remain.
PDF SHA256:
`2d687e574b1f9c6233105e74646cf0ce8134e6d7b1b4f29f4a5e1121286cfdcc`.

The v38 visibility follow-up places the named certificate and injectivity
statement in both the abstract and opening introduction on page 1.
The abstract displays the chain, freeze identifiers, and explicit
common-prime input. Phase 4 states the positive-natural-base conclusion
and explicit `BealFinalData.bealTheorem` proof input in the abstract.
The population table is on page 2, the claim/source table is on page 3,
Section 20 starts on page 14, the cusp/chart square is on page 15,
and provenance is on page 16. All 27 link annotations have zero-width borders.
Appendix B's repository-only version history starts on page 17.
Its 17-page statement describes the earlier `7531386` snapshot.
The history adds no mathematics. At `621d106`, all preceding TeX and the
inline bibliography were unchanged from that snapshot.
The final fixes shorten the abstract, keep short identifiers and the v37
DOI unbroken, add the claim/source table and source policy, clean the
incorporation notice, and add Appendix C's checklist on page 19.
The archived v33 body and the v38 theorem/proof remain unchanged.

Independent Lean setup exited 137 before either requested target ran.
Local import-closure scans found no active `sorry`, `admit`, or `sorryAx`
tokens in 57 files for BealMathlibMissing and 39 for BealEven, excluding
external dependencies. Fresh target builds and printed axiom reports
remain unverified. No Lean source, dependency pin, archive, tag, release,
DOI mint, main-branch merge, or submission is included in this revision.
