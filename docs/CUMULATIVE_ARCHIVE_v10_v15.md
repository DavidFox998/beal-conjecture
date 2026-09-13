# Cumulative archive v10–v15

`v16.0.0-Beal-44-13-Level-26-Cumulative-Archive` is the most current
cumulative archive as of 2026-09-12. It is **not** a final Beal proof.

Docs-only versus v15 tag `v15.0.0-Baker-B0-PARI-Certificate` (`6443f81`,
DOI [`10.5281/zenodo.22728624`](https://doi.org/10.5281/zenodo.22728624)).
Lean files are 0 lines against that tag:

```
git diff v15.0.0-Baker-B0-PARI-Certificate -- \
  BealFreyTateConductor.lean \
  BealGap3BakerUpperBound.lean \
  BealLevel26ModularElimination.lean \
  BealBakerB0Certificate.lean | wc -l
```

prints `0`.

Series concept DOI [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293).

## Version table

| Version | DOI | Commit | Transparent content |
| --- | --- | --- | --- |
| v10 | [`10.5281/zenodo.22712897`](https://doi.org/10.5281/zenodo.22712897) / [`22713047`](https://doi.org/10.5281/zenodo.22713047) | — | 25 chunks `B≡14` 62500 values `allKilled_1e6` [] `B≤1e6` |
| v11 | [`10.5281/zenodo.22721420`](https://doi.org/10.5281/zenodo.22721420) | — | Tate `tateConductor=2^{f2}*rad(AB(B+3))*13` `f2≤5` witness `63982=2*31991` `c4=16*(A^8+A^4B^4+B^8)` |
| v12 | [`10.5281/zenodo.22721089`](https://doi.org/10.5281/zenodo.22721089) | — | Baker explicit `matveev_explicit_gap3` def Prop |
| v13 | [`10.5281/zenodo.22721843`](https://doi.org/10.5281/zenodo.22721843) | `cea155c` | transparent List/Nat/Int certs; opaque deleted |
| v14 | [`10.5281/zenodo.22722140`](https://doi.org/10.5281/zenodo.22722140) | `3089bec` | J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` mwrank `{0,12}` formal M3 `[[1,1],[0,2]]` displayed holds no axioms; kraus `{-10,-2,1,6,14}` vs `{0,12}` decide [] |
| v15 | [`10.5281/zenodo.22728624`](https://doi.org/10.5281/zenodo.22728624) | `6443f81` | PARI gp `B0=1e6` `baker_B0_certificate.json` List Int decide no axioms |

## Honesty lock (most current)

- Tate file 0 lines since v11.
- Baker-upper-bound file 0 lines since v12.
- v14 displayed J0 / mwrank / formal certs unchanged.
- `baker_bound_gap3` stays a def Prop, uninhabited.
- `baker_bound_gap3_of_PARI` is the implication type, not inhabited.
- `baker_B0_certificate_holds` is kernel `decide` on a nonempty `List Int` (no axioms).
- Main `beal_44_13_level_26_modular_elimination` prints
  `[propext, Classical.choice, Quot.sound]` only.
- `B>1e6` uses `baker_conditional_gap3_full` with `baker_B0_PARI = 1000000`.
- PARI is an external cert like mwrank `{0,12}`, not a Mathlib Matveev proof.
- Raw Matveev 2000 Theorem 1.4 does not force `B ≤ 1e6`.

Unconditional Beal is **not** claimed.

## Reproduction

From a checkout of this archive (Lean 4.12.0, Mathlib v4.12.0, PARI/GP):

```
lake build BealLevel26Foundations
lake build BealLevel26Foundations
lake build BealLevel26FoundationsFullProof
lake build BealLevel26FoundationsFullProof
./scripts/verify-scaffold.sh
gp -q < scripts/baker_b0_gap3.gp
```

`gp` must print `B0=1000000` and write valid
`baker_B0_certificate.json`.

Axiom checks (inside `lake env lean`):

```
#print axioms baker_B0_certificate_holds
#print axioms beal_44_13_level_26_modular_elimination
```

Expected: `baker_B0_certificate_holds` prints no axioms.
The modular-elimination pack prints only
`[propext, Classical.choice, Quot.sound]`.
`^axiom` count 0. Does not use sorry.
