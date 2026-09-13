# Cumulative archive v10–v17

`v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17` is the most
current snapshot as of 2026-09-12. It is **not** a final Beal proof.
Descriptive title only.

Docs-only versus v17 tag
`v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate`
(`3fbafa6`, DOI
[`10.5281/zenodo.22729067`](https://doi.org/10.5281/zenodo.22729067)).
Lean files are 0 lines against that tag:

```
git diff v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate -- \
  BealFreyTateConductor.lean \
  BealGap3BakerUpperBound.lean \
  BealLevel26ModularElimination.lean \
  BealBakerB0Certificate.lean \
  BealBakerB0ReductionCertificate.lean | wc -l
```

prints `0`.

Series concept DOI
[`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293).

## Version table

| Version | DOI | Commit | Transparent content |
| --- | --- | --- | --- |
| v10 | [`10.5281/zenodo.22712897`](https://doi.org/10.5281/zenodo.22712897) / [`22713047`](https://doi.org/10.5281/zenodo.22713047) | — | 25 chunks `B≡14` 62500 `allKilled_1e6` |
| v11 | [`10.5281/zenodo.22721420`](https://doi.org/10.5281/zenodo.22721420) | — | Tate `2^{f2}*rad*13` `f2≤5` witness `63982=2*31991` |
| v12 | [`10.5281/zenodo.22721089`](https://doi.org/10.5281/zenodo.22721089) | — | `matveev_explicit_gap3` def Prop |
| v13 | [`10.5281/zenodo.22721843`](https://doi.org/10.5281/zenodo.22721843) | `cea155c` | transparent List/Nat/Int certs; opaque deleted |
| v14 | [`10.5281/zenodo.22722140`](https://doi.org/10.5281/zenodo.22722140) | `3089bec` | J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` / mwrank `{0,12}` / M3 `[[1,1],[0,2]]` holds no axioms |
| v15 | [`10.5281/zenodo.22728624`](https://doi.org/10.5281/zenodo.22728624) | `6443f81` | PARI `B0=1e6` `baker_B0_certificate.json` List Int decide no axioms |
| v16 | [`10.5281/zenodo.22728705`](https://doi.org/10.5281/zenodo.22728705) | `9ce2980` | Cumulative Archive v10–v15 docs-only most current |
| v17 | [`10.5281/zenodo.22729067`](https://doi.org/10.5281/zenodo.22729067) | `3fbafa6` | PARI LLL `qflll` `C=143186215390` `B0_raw=104382751019310000000` → `B0_reduced=1e6` `baker_B0_reduction_certificate.json` `List (List Int)` decide no axioms |

## Honesty lock (unchanged)

- `git diff v16 -- BealFreyTateConductor.lean BealGap3BakerUpperBound.lean BealLevel26ModularElimination.lean BealBakerB0Certificate.lean` = 0.
- Tate file 0 lines since v11.
- Baker-upper-bound file 0 lines since v12.
- v14 displayed J0 / mwrank / formal certs unchanged.
- `baker_bound_gap3` stays a def Prop, uninhabited.
- `baker_B0_certificate_holds` and `baker_reduction_certificate_holds`
  are kernel `decide` on a nonempty `List Int` (no axioms).
- Main `beal_44_13_level_26_modular_elimination` prints
  `[propext, Classical.choice, Quot.sound]` only.
- `B>1e6` uses `baker_conditional_gap3_full` with
  `baker_B0_PARI = 1000000`.
- PARI is an external cert like mwrank `{0,12}`, not a Mathlib
  Matveev or LLL proof.
- Raw Matveev 2000 Theorem 1.4 does not force `B ≤ 1e6`.

Unconditional Beal is **not** claimed.

## Reproduction

From a checkout of this archive (Lean 4.12.0, Mathlib v4.12.0, PARI/GP):

```
gp -q < scripts/baker_b0_gap3.gp
gp -q < scripts/baker_b0_reduction.gp
lake build BealLevel26Foundations
lake build BealLevel26Foundations
lake build BealLevel26FoundationsFullProof
lake build BealLevel26FoundationsFullProof
./scripts/verify-scaffold.sh
```

`gp -q < scripts/baker_b0_gap3.gp` must print `B0=1000000`.
`gp -q < scripts/baker_b0_reduction.gp` must print
`B0_reduced=1000000`.
Both write valid JSON.

`^axiom` count 0. Does not use sorry.
