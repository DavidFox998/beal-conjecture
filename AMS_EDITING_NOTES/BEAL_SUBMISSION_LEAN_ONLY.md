# Beal submission — Lean-source references confined to this repository

This records the general Beal conjecture succinctly: positive bases and
exponents at least three satisfying `x^p+y^q=z^r` have a common prime
divisor. The formal statement is `BealTheoremData.commonPrime` in
`BealFinal/Main.lean:30–36`. Its general proof is an explicit input to
the forward wrapper. Record that interface alongside the v38 chart
certificate, with both types stated.

## Concise v38 ledger

`beal-v38 EQUIV:3 792b3f8`,
`chartOfModelTrue_injective_from_Ei_constraint`, records
`Function.Injective chartOfModelTrue` via
`chartOfModelTrue_injective`, alongside
`chartTrueEquiv_inj_from_Ei_constraint` and overlap annihilator
presentations. The chain is:

- `ddfb2642`: Eᵢ constraint, S-degree ≤2, `(1+Y·S³)` annihilates the high
  image; `Y³≠0` and remains outside the cusp ideal.
- `e466e5a`: the B=1 example remains nonzero outside the cusp.
- `792b3f8`: the injectivity restatement with the constraint and
  annihilator presentations.

`centreNormalPoly (X³−1) 0` stays outside `I²` because
`centreAlphaBound 2 0=1`. `ann(1+Y·S³)≠ann(X²)`.
No ring map from `D₊(Xt)` into the overlap is asserted.
The true chart uses the full coefficient ring `F₂[a,b]`:
`I_true=(XU,Y−XV,Y²−X³,U+X²+XV²)`.
Deleting the parameters is a separate quotient.

Freeze tag `beal-v38-freeze-Y-axis-glue` has object `437b4c85` and
target `c48b1bd3`. Separate tag `beal-v38-equiv-Ei-constraint` has
object `c2f530ab` and target `792b3f8`.

## Claim-to-source distinction

| Claim | Lean source and status |
|---|---|
| General common-prime statement | `BealFinal/Main.lean:30–36`, a field of `BealTheoremData`. |
| General forward interface | `BealFinal/Main.lean:74–80`, assumes `data : BealFinalData`, returns `data.bealTheorem.commonPrime`. |
| True chart presentation | `Beal/MathlibMissing/ChartInjective.lean:3162–3176`, the displayed ring equivalence. |
| v38 certificate | `Beal/MathlibMissing/ChartTrueEquiv.lean:261–338`, injectivity and constraint/annihilator conjuncts. |
| Defined cusp/chart maps | `Beal/MathlibMissing/ChartYt.lean` and `ChartYtPresentation.lean:47–73`: `chartOfCuspY=chartOfModelTrueY_fixed.comp cuspYtToClosed`, with the inverse identity for `closedYtToCusp`. No Xt-to-overlap ring map is added. |
| Bounded v33 gluing | `Beal/Beal.General/SpecialFibreGluing.lean`, with the scope in `Beal/AUDIT_v33_HONESTY.md`. |

Submission wording: “This records the general Beal conjecture succinctly:
the v38 certificate displays chart injectivity with Eᵢ constraint and
annihilator presentations; the general forward wrapper displays the
common-prime conclusion with the common-prime theorem as explicit input.”

## Submission-source policy

Use immutable Lean paths within `DavidFox998/beal-conjecture`, baseline
`02728795e15f6c858f0d360d560f80e4efb252a2`, including root modules,
`Beal/`, `BealFinal/`, and the vendored
`Level26/BealLevel26Foundations/lean/` sources.
The revised paper replaces the external code pointer with this baseline
and a source ledger. A folder name, README inventory, certificate number,
or `def Prop` is not by itself an inhabited theorem.
Other research repositories are not submission evidence.
Standard Lean and Mathlib dependencies are still acknowledged.

## Verification status for editing

- The chart axiom trio `[propext, Classical.choice, Quot.sound]` is a
  scoped repository report, not a fresh independent replay.
- Local import-closure lexical scans found no active proof-hole tokens:
  57 files for BealMathlibMissing, 39 for BealEven, excluding external
  dependencies.
- Independent setup exited 137 before either requested target ran.
  Neither target is reported here as independently built exit 0.
- The current manuscript including its version-history appendix compiled
  with Tectonic exit 0: 18 pages, 190,267 bytes, searchable throughout,
  zero overfull-box and
  undefined-reference warnings, no text spans outside the page.
  Some underfull spacing warnings remain.

Section 19 retains the archived v33 abstract and mathematical body; deposit
chronology is explicitly historical. Section 20 contains the v38 theorem
and general common-prime input interface. The visibility follow-up now
names the v38 certificate and injectivity statement in both the abstract
and opening introduction on page 1, keeping the general wrapper's explicit
input qualification. The population table is on page 2; Section 20 starts
on page 13, the cusp/chart-map diagram is on page 14, and provenance is
on page 15. The abstract explicitly names the general proof input
`BealFinalData.bealTheorem` at line 53. See `MCOM_STRENGTHEN.md`.
Appendix B starts on page 16 and records v24.4.0/v33/v37/v38 history
within this repository. The 17-page verification is explicitly the
`7531386` snapshot, not the current 18-page file. No mathematics,
preceding TeX, bibliography entries, or Lean sources changed.
`10.5281/zenodo.23120540` remains the cited v37 DOI.
`02728795` is a commit, not a DOI. This revision includes no submission,
merge, release, or DOI mint.
