> **Root v33 (separate from this folder):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22922473.svg)](https://doi.org/10.5281/zenodo.22922473)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22912430.svg)](https://doi.org/10.5281/zenodo.22912430)

# `BealFinal`

`BealFinal.Main` is the final forward dependency interface for this release.
It does not turn displayed arithmetic into missing construction data.

## Method

The module preserves the established order:

1. Tate: the full `j`-series with remainder, `I_(26k)`, Néron `32/928`,
   `v29(q)=v29(Δ)`, `q^(1/13)` inertia, and mod-`13` unramifiedness;
2. Mazur: point-level `X0(13)` data, the two-constructor Fricke cusp table,
   attached Frey `j=c4^3/Δ`, Borel reducibility, and the explicit
   no-rational-`13`-isogeny boundary;
3. Ribet: the residual representation, `32a1`, `a29=-10`, level lowering,
   and complete bad-reduction elimination;
4. Kolyvagin, kept logically separate: curve-attached `L`-functions and
   periods, `L/Ω=1/3,1/7`, Selmer exactness and cardinality one, finite
   generation, and actual `Fintype` witnesses;
5. Conditional-32: the three explicit typed Mazur, Tate, and Ribet
   conversions followed by `HasNewformAtLevel32`;
6. Requires: the exact six-stage dependency table;
7. Beal final: for positive `x,y,z`, exponents `p,q,r≥3`, and
   `x^p+y^q=z^r`, the common-prime-factor conclusion.

## Honest final boundaries

The final module imports the Matveev/level-26 search module. It records
`C1_floor=143186215390`, `B0=10^6`, and the proved exhaustive slice
`B<1000`. The full `B≤B0` search remains an explicit field
`fullB0Search`; the imported source does not prove it.

Likewise, the general Beal conclusion is carried by the explicit
`BealTheoremData` field. `beal_main_theorem_forward` and
`beal_x_p_y_q_z_r_forward` project that field; they do not derive the
general theorem from the `(4,4,13)` numerical surface. This is the precise
end-of-proof interface needed by downstream work without adding `sorry`,
an axiom declaration, or a backward numerical inference.

## Principal declarations

- `BealFinalData`
- `BealTheoremData`
- `beal_final_forward`
- `beal_main_theorem_forward`
- `beal_x_p_y_q_z_r_forward`
- `beal_numerical_surface_final`

The module is registered as `BealFinal.Main` in the
`BealMatveevBealV25B0Search` Lake library.