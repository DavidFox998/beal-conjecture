# Historical Beal interface

`BealForall.lean` and `FullProof.lean` connect the nested Level26
argument to its detailed `FullProof/` modules and the other local
arithmetic libraries. The nested project's Lake file determines
what is built; inspect declarations rather than treating the folder
name as a completed general theorem.

Current root-tree v33 is separate: `Beal/Beal.General/` checks
`CompatChart2t` (191 lines), `CompatChartXt` and `CompatChartYt`
(105 each), six polynomial-to-abstract restrictions, and
`SpecialFibreGluing` (167 lines). Product overlaps stay abstract.