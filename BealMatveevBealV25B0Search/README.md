> **Root v33 (separate from this folder):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22922473.svg)](https://doi.org/10.5281/zenodo.22922473)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22912430.svg)](https://doi.org/10.5281/zenodo.22912430)

# v25 forward Matveev and level-26 interface

Lean module:
[`Forward.lean`](Forward.lean), registered as
`BealMatveevBealV25B0Search.Forward`.

This module retrofits the v25 search line after the v30.1.7 final interface.
It records the dependency order without changing the proof status of any
search or construction boundary:

1. `MatveevBoundData` carries
   `C1_floor = 143186215390` and `B0_nat = 1000000`.
2. `Level26SearchData` carries the forward numerical surface
   `Δ = 16A⁸B⁸(A⁴+B⁴)²`,
   `v₂₉(Δ) = 26v₂₉(B+3)`,
   `13 ∣ v₂₉(Δ)`,
   `928/29 = 32`, and `32·29 = 928`.
3. `MatveevLevel26ForwardData.searchBelow1000` carries the closed
   `B < 1000` elimination proposition. The existing theorem
   `gap3_B_lt_1000_no_sol` is its proved source.
4. `MatveevLevel26ForwardData.fullB0Search` separately carries
   `gap3_B_le_B0_no_solution`, the exhaustive `B ≤ 10⁶` boundary.

`B0_search_forward`, `beal_matveev_level26_forward`, and
`v25_numerical_surface_forward` only project fields in that order. Numerical
equalities are never used backwards to construct Matveev, Tate, Mazur, Ribet,
modularity, or exhaustive-search evidence.

The principal projection theorems contain no `sorry`, `sorryAx`, axiom
declaration, `native_decide`, `Lean.ofReduceBool`, or `:= True`. The existing
`gap3_B_lt_1000_no_sol` theorem remains unchanged and retains its historical
finite-computation dependency.

Build:

```bash
lake build BealMatveevBealV25B0Search.Forward
```

Do not run `lake update`. This module does not vendor another repository.