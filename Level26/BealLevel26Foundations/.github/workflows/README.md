# Historical Level26 CI workflow

`main.yml` checks the nested Level26 project using its own pinned
Lake configuration. Keep its commands aligned with that project's
Lean sources rather than assuming they check the current root-tree
Beal general modules.

The root-tree v33 work is in `Beal/Beal.General/`: charts
`CompatChart2t` (191 lines), `CompatChartXt` and `CompatChartYt`
(105 each), six polynomial-to-abstract restrictions, and
`SpecialFibreGluing` (167 lines). Product overlaps are abstract.