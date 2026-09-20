# `.github/`

**v30.0.0-level-26-structural-verification — Tate 928=2⁵·29 Neron I0* I8 c4 Δ v2=6 v29=8 Mazur 2184 48<2184 13=2²+3² 288/48=6 card2 genus0 infinite vs2 Ribet 928/29=32 ∅ card0 full1 new1 LMFDB 32a1 Kolyvagin |Sel2|=1 3·7=21 L/Ω=1/3 1/7 rank0 26a1 26b1**

GitHub Actions for
[DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture)
— **this repository**, not `beal-level-26-foundations`.

[`workflows/main.yml`](workflows/main.yml) triggers on

- `push` to `main`, `merge-foundations-*`, `phase-*`, `v24*`, `v25*`, `v26*`
- `pull_request`
- `workflow_dispatch`

Jobs:

| Job | When | What |
|---|---|---|
| `v26-slice` | every matching event | `lake build HonestB0Search` and `lake build Level26` |
| `build` | `main` only | historical v11 Beal assembly and audits |

Actions live at
https://github.com/DavidFox998/beal-conjecture/actions

Concept DOI: [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
Version string prepared for mint:
`v26.0.0-level-26-foundations-certified-mw-rank-zero`.
This directory does not mint tags.
