> **Root v33 (separate from this folder):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# Level-32 dependency documentation

`Doc.lean` records the exact boundary between the integrated numerical
formalization and an unconditional level-`32` newform theorem.  The repository
proves the displayed discriminant, valuation, divisibility, group-order, and
level arithmetic.  It does not turn those numerals into the missing geometric,
local, modular, or analytic objects.

## Required foundations

An unconditional construction still requires:

1. Wiles/BCDT modularity specialized to the displayed Frey curve;
2. the curve's geometric mod-`13` Galois representation and absolute
   irreducibility through a complete Mazur/`X₀(13)` argument;
3. Tate uniformization, Tate's algorithm, the Néron model and conductor,
   cyclotomic inertia, and the required mod-`13` unramifiedness;
4. genuine Ribet level lowering from conductor `928` to level `32`;
5. identification of the resulting newform with `32a1`; and
6. a complete Kraus analysis of all bad-reduction residue classes.

The analytic rank-zero route is separate.  Displayed values `L/Ω = 1/3` and
`1/7` and displayed `Sel₂_card = 1` do not replace any item above.  To become
formal rank-zero proofs they would themselves require curve-attached
`L`-functions and periods, Kato–Kolyvagin theorems, Mordell–Weil finite
generation, Selmer exact sequences, and concrete `Fintype` witnesses.

The distinction `¬ Subsingleton E(ℚ)` versus
`Nonempty (Fintype E(ℚ))` is essential: finite Mordell–Weil groups may contain
nonzero torsion.  This documentation therefore reports the current formal
status without treating a numerical display as an inhabitant of a stronger
proposition.

## Integrated forward dependency table

`ForwardDoc.lean` records the completed interfaces in their exact forward
order. It does not reverse any numerical implication.

1. `TateCurve.ClosureContinued` supplies the full Tate `j`-series with
   remainder and the two exact uniformization-certificate `j`-equalities.
2. `TateCurve.Neron32_928InertiaQ13` supplies `I_(26k)`, the exact
   `q`-valuation, the Néron `32`/`928` split, the `q^(1/13)` cyclotomic
   inertia formula, and mod-`13` unramifiedness.
3. `MazurCurve.X0_13FreyJBorel` supplies point-level `X₀(13)` data, the
   two-cusp Fricke table, the exact Fricke formula, the curve-attached
   identity `j = c₄³/Δ`, the Borel boundary, and the forward
   no-rational-`13`-isogeny conclusion.
4. `RibetCurve.Ribet32a1KrausA29` supplies Frey modularity, the concrete
   residual representation, absolute irreducibility, local inertia and
   conductor data, the global Néron conductor, level lowering, the `32a1`
   identification, `a₂₉ = -10`, and complete bad-reduction elimination.
5. `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype` keeps the separate analytic
   line honest: constructed `L`-functions and periods identified with `1/3`
   and `1/7`, exact two-Selmer sequences with cardinality one, finite
   generation, and actual `Fintype` witnesses.
6. `Conditional32Newform.BridgeForward` feeds exactly the Mazur, Tate, and
   Ribet hypotheses to `HasNewformAtLevel32`.

The concrete Mazur, Tate, and Ribet conclusions are not definitionally equal
to the older abstract bridge propositions. `RequiresTateMazurRibetForwardData`
therefore retains `Conditional32BridgeData`, including all three explicit
typed conversion functions. The numerical surface

`Δ = 16 A⁸ B⁸ (A⁴+B⁴)²`, `v₂₉(Δ) = 26v₂₉(B+3)`,
`13 ∣ v₂₉(Δ)`, `928/29 = 32`, `32·29 = 928`, `928 ≠ 32`,
`29 ∤ 32`, `|SL₂(F₁₃)| = 2184`, `48 < 2184`, `a₂₉ = -10`,
`L/Ω = 1/3, 1/7`, `Sel₂_card = 1`, and `2^dim = 1`

is proved alongside that table, never used backwards to construct it.