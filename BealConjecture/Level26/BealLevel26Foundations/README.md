> **Root v33 (separate from this folder):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# BealConjecture/Level26/BealLevel26Foundations/

Thin re-export wrappers. Each file imports the corresponding
module from the Lake dependency
`BealLevel26Foundations.Beal.FullProof.*`.

| Wrapper | Relocated module |
|---|---|
| `BealMatveevThm14.lean` | `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14` |
| `BealBakerB0ReductionCertificate.lean` | `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate` |

These wrappers do **not** inhabit `baker_bound_gap3`.
Concept DOI `10.5281/zenodo.22379293`.
