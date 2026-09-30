# Historical R=T patching components

`PatchingWitnessReal.lean` and `TaylorWilesInfiniteFamily.lean`
record representation/patching work for the nested Level26 project.
Use the nested Lake pin and inspect their hypotheses when applying
them elsewhere; they do not supply the current two-adic chart gluing.

Current root-tree v33 is separate: `Beal/Beal.General/` checks
`CompatChart2t` (191 lines), `CompatChartXt` and `CompatChartYt`
(105 each), six polynomial-to-abstract restrictions, and
`SpecialFibreGluing` (167 lines). Product overlaps stay abstract.