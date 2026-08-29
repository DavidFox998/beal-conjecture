# v7.2.0 — 0 Axioms, 0 Opaque, 2 Props + Eigenline Supplier

## Release provenance

- **Base:** v7.1.0 at `76d1dec4a`
- **Development branch:** `beal-4.12-v-specific-edge`
- **Reviewed branch snapshot:** `85bcafe74c856784b2c0abdec6fecdac9b7b9a60`
- **Merged by:** pull request #1
- **Verified CI:** GitHub Actions run
  [33113937727](https://github.com/DavidFox998/beal-conjecture/actions/runs/33113937727)
  completed successfully on the reviewed branch snapshot
- **Toolchain:** Lean 4.12.0 and Mathlib v4.12.0
- **Build:** `lake build Beal` completed successfully across the 2,420-target
  build graph

The `v7.2.0` tag is created from the new `main` HEAD after the reviewed branch
has been merged. The v7.1.0 tag and its commit remain unchanged.

## Audit scope

The title's “0 Axioms, 0 Opaque” describes the V-specific Ribet edge introduced
by this release: it adds no new declared axiom, opaque theorem, executable
`sorry`, `admit`, or `sorryAx` shortcut. It does not claim that the full Beal
tower is unconditional.

The complete B20 audit remains explicit:

```text
[propext, Quot.sound, Classical.choice,
 Beal.FreyTate.wiles_modularity,
 Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one]
```

The two final entries are the named Wiles and Tate domain boundaries. The
existing `Classical.choice` dependency enters through the broader Frey/Tate
construction, not through the V-specific Ribet supplier.

The focused V-specific supplier audit is:

```text
Beal.QExpansionSupplier.QExpansionPrincipleOnV_fromEigenline
  depends on axioms: [propext, Quot.sound]
```

## What changed from v7.1.0

### The q-expansion premise is derived from eigenline data

`GaloisEdgeWitness` now carries explicit `NormalizedEigenlineData`. B15 derives
the exact V-specific coefficient-cancellation premise through
`QExpansionPrincipleOnV_fromEigenline`; the edge no longer accepts `hQ` as an
external field.

The textual audit changes from three declarations of `hQ :` at the v7.1.0
baseline to one remaining local premise in the general 07g theorem. The
proposition type remains available; what disappears is the extra external
assumption at every descent edge.

### Two proposition-valued edge boundaries remain explicit

The release does not conceal the unfinished geometry and localization:

1. `OldNewDecompHyp` — the old/new complement boundary;
2. `LocalizedRankOne` — the localized multiplicity-one/rank boundary.

Normalized eigenline information is supplied as data, not counted as a third
proposition.

### The broad Ribet token provider leaves the active descent path

The active B15 path no longer uses `SupportedNewformToTokenProvider`.
`NewSubspaceSupportData` retains a finite newform, realization of the fixed
residual representation, and Hecke annihilation as explicit data.
`NewformHeckeToPreservedTokenTransport` converts those witnesses to the
`PreservedForm` token without eliminating a proposition-valued existential
through choice.

### The final theorem is named conditionally

The B20 statement is exposed as
`beal_conjecture_conditional_on_enriched_plan`. This is an honest description:
the theorem is machine-checked conditional mathematics, not an unconditional
proof of Beal's Conjecture.

## Reviewer commands

```bash
git checkout v7.2.0

grep -Rns '^opaque' --include='*.lean' lean
grep -Rns 'hQ[[:space:]]*:' --include='*.lean' lean
grep -Rns 'QExpansionPrincipleOnV_fromEigenline' --include='*.lean' lean

lake build Beal
```

The expected `opaque` result is empty. The expected `hQ :` count is one.

## Citation

```bibtex
@software{fox_beal_v7_2_0_2026,
  author  = {Fox, David},
  title   = {Beal Conjecture — v7.2.0 — 0 Axioms, 0 Opaque, 2 Props + Eigenline Supplier},
  version = {v7.2.0},
  date    = {2026-08-27},
  url     = {https://github.com/DavidFox998/beal-conjecture/releases/tag/v7.2.0},
  note    = {V-specific edge: [propext, Quot.sound]; full B20 audit retains Classical.choice and the named Wiles and Tate boundaries}
}
```

No version DOI is asserted in this file before Zenodo has minted and reported
one for the `v7.2.0` tag.