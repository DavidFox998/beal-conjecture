# Beal submission — Lean evidence confined to this repository

## Source rule

The submission's project-owned Lean references must resolve within
`DavidFox998/beal-conjecture` at an identified revision. In particular:

- root modules such as `Beal.lean`, `BealGenuineV25.lean`, and the gap modules
  are candidate references, not automatically checked unconditional proofs;
- `Level26/BealLevel26Foundations` is the local vendored package, not a
  requirement to import a separate private GitHub repository;
- the even-branch and chart results are geometric components, not the complete
  Beal reduction;
- other repositories and private computational records are not premises,
  imports, or substitute evidence for this submission.

For each result used, list its exact declaration, complete statement, assumptions,
build target, audited revision, and printed axiom set. A `def ... : Prop` names
a proposition; its presence does not supply an inhabitant.

## Revisions and open changes

Audited remote `main`: `02728795e15f6c858f0d360d560f80e4efb252a2`.

The v38 EQUIV chain is `ddfb2642 → e466e5a → 792b3f88`. The frozen
`beal-v38-freeze-Y-axis-glue` annotated tag object is
`437b4c85d17e58b0259244de0074ca1c28f7ff7f`, pointing to commit
`c48b1bd3dd6ba4189ab5f11350f4ef5a518922c2`. The
`beal-v38-equiv-Ei-constraint` tag object is
`c2f530ab9cb866d9c7b836036d81e0da8e3728b0`, pointing to
`792b3f8850018cee388a04ea480b483c50a71684`.

PR 26 (`6f921f457576615205bc18e5941a8d807b4fe511`) is the unmerged
v39 wrapper proposal. PR 28 (`75b8a3a551154ec020e60ddff467d27a4f4fb0d3`)
is the unmerged manuscript consolidation. Neither is part of audited `main`.

## What EQUIV:3 states

`Beal/MathlibMissing/ChartTrueEquiv.lean` packages:

- true-chart injectivity;
- the constrained kernel representation with S-degree at most two;
- the nonvanishing/outside-cusp assertions for Y³;
- the nonzero B=1 example, X+V² outside the cusp;
- the centre cofactor outside I² and the stated annihilator presentations.

Retain the exact distinctions in the source: `centreNormalPoly (X³ − 1) 0`
is outside I² and `centreAlphaBound 2 0 = 1`; the overlap has
`overlapX * (overlapX + overlapV ^ 2) ≠ 0`; and
`ann(1 + Y·S³) ≠ ann(X²)`. These are not interchangeable annihilators.
The packaging does not construct a ring map from `D₊(Xt)` into the overlap.

The theorem `chartOfModelTrue_injective_from_Ei_constraint` has the explicit
parameters `N : modelYtChart_fixed` and
`hN : chartOfModelTrueY_fixed N = 0`. Its proof invokes the already available
`chartOfModelTrue_injective` and conjoins it with the kernel constraints and
annihilator presentations. Do not describe it as deriving injectivity solely
from vanishing of the Eᵢ terms: those terms are not proved to vanish.

The declarations concern the displayed chart/model objects. Neither their
names nor their packaging asserts the general Beal conjecture.

## What the build targets include

`BealMathlibMissing` includes the chart engine and `ChartTrueEquiv`.
`BealEven` on audited `main` contains
`Beal.«Beal.Even».FullReduction`; it does not import that new chart engine.

PR 26 adds `Beal/BealEven.lean` as a root of `BealMathlibMissing`, not as a
root of the `BealEven` library. Its wrapper theorem
`bealEven_from_chartTrueEquiv` reuses injectivity and the nonvanishing
conjuncts. A passing `lake build BealEven` alone cannot certify that wrapper.

## Axiom boundaries

A comments-stripped source inventory found no `sorry` or `admit` tokens in
the audited project-owned Lean tree, but it did find explicit declarations:

- `darmon_merel_4413_axiom` in `BealTrueV25.lean`;
- `frey_modular_13` in the vendored modularity package;
- `ribet_level_lowering_26` in the vendored modularity package.

These findings do not say every target imports those axioms. They do rule out
the statement that the entire repository contains only the classical trio.
Report the dependency set of each actual submitted theorem.

## Bounded arithmetic and displayed conductor

The manuscript reports the B14 residue census as 62,500 values with
`B ≡ 14 (mod 16)` through `10^6`, conjoined from 25 kernel slices
`allKilled_chunk_0`–`allKilled_chunk_24` as `allKilled_62500` and
`allKilled_1e6`. This audit did not rerun those slices. Cite their exact
declarations and bound, rather than inferring an unrestricted result.

Keep the Baker bound `B0_nat = 1000000` distinct from the proposition that
all relevant solutions lie below it. The v25 forward package explicitly
separates the proved `B < 1000` elimination source from the assumed
`fullB0Search` field. Its projection theorems do not construct Matveev,
modularity, or exhaustive `B ≤ 10^6` evidence.

The paper describes the Tate divisibility bound `2^5 · rad · 13` for a
packed/displayed natural number. It expressly says this is not Mathlib's
actual Tate conductor `N(E)`. Preserve that qualification; do not replace the
radical by the stronger old `3` claim, which the manuscript disclaims.
The unrestricted beyond-Baker and modular inference steps remain separate.

## Release and conjecture boundaries

v33 establishes quotient-Rees three-open gluing and the actual generic-fibre
comparison within its stated hypotheses. The release does not establish a
general Beal proof, the asserted global special-fibre pullback identification,
or the degree-one/nonvanishing assertion for the reduced `2t` generator.

The manuscript itself says the density/infinite extension, full modular
contradiction, and general Beal statement remain open. Bounded residue
calculations and a named Baker bound proposition must not be promoted to the
unrestricted theorem.

The v37 citation in `CITATION.cff` is `10.5281/zenodo.23120540`.
The v33 archive is `10.5281/zenodo.23054568`.
`02728795` is a commit abbreviation, not a superseding DOI. The v38
`.zenodo.json` expressly says “Prep only” and does not mint a DOI.
