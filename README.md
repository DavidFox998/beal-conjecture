
# beal-conjecture — Lean 4 Formalization

[![Matveev-Beal CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml)
[![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

**Author: David J. Fox | ORCID: 0009-0008-1290-6105**

A Lean 4 / Mathlib formalization of the modular approach to Beal's conjecture: if `a^x + b^y = c^z` with `x, y, z > 2`, then `a`, `b`, `c` share a common prime factor.

> Monorepo slug note: beal-conjecture stays beal-conjecture.

> **Ensemble note (October 2026):** the Opera Numerorum repositories are being structurally reworked with mechanical methods, so their contents are in flux and may state misleading claims until that work lands. Beal and Navier–Stokes are the two repositories held stable for academic review.

## Status (October 2026, honest position)

- Zero `sorry`.
- One remaining research axiom: `darmon_merel_4413_axiom` (Darmon–Merel 1997), which an MCOM referee will probe; MCOM allows Prop placeholders.
- A submission to *Mathematics of Computation* (AMS) is in final preparation.
- Concept DOI: `10.5281/zenodo.22041831`.

## The Darmon–Merel program (a⁴ + b⁴ = c¹³)

The strategy needs a mod-13 Galois representation attached to the Frey Q-curve — it's what connects the curve to modular forms through modularity and Ribet level lowering. The Galois skeleton is the declared interface for that representation: definitions and theorem statements saying exactly what the rest of the formalization requires from it, so development proceeds against a fixed contract.

Active development: branch [`mathlib/remove-ribet-axiom`](https://github.com/DavidFox998/beal-conjecture/tree/mathlib/remove-ribet-axiom). Provenance: original work, committed in `DavidFox998/beal-conjecture` on that branch.

## Build

```bash
lake exe cache get
lake build BealMatveevBeal        # default target
bash scripts/verify-matveev-beal.sh  # referee surface: 0 sorry
```

CI ([`.github/workflows/main.yml`](.github/workflows/main.yml)) builds the B ≤ 10⁶ integer-gap Matveev lower bound plus the elementary continued-fraction lemmas. A green run is a Lean 4.12 / Mathlib 4.12 build — pinned toolchain.

## Repository layout

- `Beal/` — the formalization (Matveev–Beal core, Darmon–Merel Frey material, level tables)
- `.github/workflows/` — CI
- `scripts/` — referee verification scripts
- `CITATION.cff` — citation metadata

## Related

- Navier–Stokes (sister review repo): https://github.com/DavidFox998/navier-stokes
- Frozen Navier–Stokes artifact: https://doi.org/10.5281/zenodo.22049018
