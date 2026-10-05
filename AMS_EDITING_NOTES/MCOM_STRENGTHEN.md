# MCOM strengthening — three phases applied to PR28

The revision starts from `75b8a3a5` and changes manuscript prose,
typesetting, source references, and editing documentation only.
All Lean sources and dependency pins remain unchanged.

## Ten applied changes

1. Corrected title, abstract, and introductory signature to `(4,4,13)`,
   matching `A⁴+B⁴=(B+3)¹³`; historical Lean identifiers are unchanged.
2. Corrected the trace model to `y²=x(x−B⁴)(x+C⁴)`, with traces `−2,24`.
   Defined the equation's Beal Frey cubic separately and did not transport
   traces between those models.
3. Replaced the release-by-release abstract with the finite theorem and
   its population: 352 named rows, successive counts 266/77/9, and the
   separate Baker-conditional cutoff. Clarified that the q=17 count 57
   concerns the 86 mod-53 survivors.
4. Added the level-26 introduction with both elliptic model records,
   discriminants, 21-term prefixes, generator, certificate SHA256, and
   finite-data rather than scheme-theoretic/BSD proof scope.
5. Replaced the external code-repository pointer with the immutable
   beal-conjecture baseline and an appendix source ledger. Every listed
   Lean path resolves inside this repository.
6. Preserved Section 19's bounded v33 mathematics and labelled old
   deposit-planning statements historical against AUDIT_v33_HONESTY.
   The archived standalone source is unchanged.
7. Added Section 20's explicit true-chart/Eᵢ theorem, its kernel
   hypothesis, cusp normal form, degree bound, annihilation, and actual
   Lean proof dependencies.
8. Explained B=1 nonvanishing, the centre-power obstruction, factor versus
   power annihilators, and the missing chart-to-overlap ring-map claim.
   Recorded the general Beal common-prime statement with its explicit
   wrapper input, separately from those chart results.
9. Added the freeze/EQUIV provenance table, keyed v37 bibliography entry,
   and exact-target reproducibility appendix. Kept inline bibliography
   as the chosen workflow and avoided `lake update`.
10. Added xurl/cleveref, breakable upright code identifiers, split displays,
    narrower tables, and a short running title. Retained 12-point body
    text and allowed the manuscript to grow to 15 pages.

## Independent manuscript verification

- Tectonic exited 0.
- Latest PDF: 17 pages, 182,601 bytes, searchable text on every page.
- Zero overfull-box and undefined-reference warnings.
- No extracted text spans outside physical page boundaries.
- Some underfull spacing warnings remain; this is not a claim of
  zero TeX warnings or journal acceptance.
- All-page overview and representative detailed pages were inspected.
- The archived v33 abstract and mathematical body remain verbatim;
  incorporation and historical chronology labels are explicit.
- The v38 chain, both tag objects/targets, v37 DOI, and explicit
  BealFinalData/commonPrime input are present in the PDF text.
- No outside GitHub code pointer or excluded research name remains
  in the manuscript.
- `git diff --check` passed; no Lean, toolchain, or manifest changes.

PDF SHA256:
`6125bb683dee2759e0787de16836e1d70c41a7f963acbc9207daeb5d128afd41`.

## v38 front-visibility follow-up

The abstract now names `beal-v38 EQUIV:3 792b3f8`,
`chartOfModelTrue_injective_from_Ei_constraint`, and
`Function.Injective chartOfModelTrue` immediately after the finite named-row
result. It displays the Eᵢ/annihilator scope, chain
`ddfb2642 → e466e5a → 792b3f8`, freeze `437b4c85` at `c48b1bd3`,
and the `BealFinal/Main.lean:30–36,74–80` common-prime input interface.
The introduction opens with the same certificate and the explicit input
qualification, not a new implication from chart data to the general theorem.

PDF text extraction and a rendered first-page check verify both front
placements on page 1. The document remains 15 pages; Section 20 starts on
page 12 and the provenance table is on page 14. TeX beyond the introduction,
including Section 19 and Section 20, is unchanged by this follow-up.

## Phase 4 — explicit populations and defined maps

The preceding 15-page record describes the front-visibility follow-up at
`d637e91`, not the current Phase 4 PDF.
Phase 4 expands the general statement for positive natural bases and
natural exponents at least three, and explicitly names the general proof
input `BealFinalData.bealTheorem` at `BealFinal/Main.lean:53`.

- The page-2 table distinguishes 352 named rows, 86 mod-53 survivors,
  14 fourth-power residues, the recorded 5983 identity, and the separate
  62500-value cutoff. The 25-slice conjunction types and Baker premise are
  stated separately.
- `sec:coeff-ledger` and `sec:level26` label the existing introduction
  rather than adding a fictitious Level-26 section or renumbering Section 19.
  The page-1 references still resolve; all 24 link annotations have
  zero-width borders.
- The page-14 diagram uses only `closedYtToCusp`,
  `chartOfModelTrueY_fixed`, and `chartOfCuspY`, with
  `chartOfCuspY=chartOfModelTrueY_fixed.comp cuspYtToClosed`.
  The inverse identity makes the square commute. The kernel hypothesis,
  high/low image equality, and annihilation are displayed, without an
  Xt-to-overlap ring map or coefficient-vanishing inference.
- The existing keyed v37 entry and single inline bibliography are retained.
  No duplicate entry, new DOI macro, or malformed bibliography is added.

Final PDF: 17 pages; Section 20 starts on page 13, the map diagram is on
page 14, and provenance is on page 15. Both named v38 and injectivity
statements occur twice on page 1, in the abstract and opening introduction.
The v33 section and the v38 theorem statement/proof remain unchanged from
`d637e91`. Tectonic exit 0, no overfull-box or undefined-reference warnings,
no text outside the page; underfull spacing warnings remain.

## Lean verification limits

Independent cache setup previously exited 137 before either requested
target ran. Fresh BealMathlibMissing/BealEven builds and printed chart
axioms remain unverified. The repeated local lexical scan found no active
`sorry`, `admit`, or `sorryAx` in 57 and 39 local source files respectively,
excluding external dependencies. No missing mathematical premise was
supplied by these manuscript edits.

The freeze and EQUIV tags are unchanged; no main-branch merge, submission,
release, or DOI mint is included. Standard Lean/Mathlib/SageMath/TeX
dependencies remain acknowledged; other research is outside this revision.
