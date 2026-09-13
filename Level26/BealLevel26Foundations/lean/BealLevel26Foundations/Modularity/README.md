[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22452680.svg)](https://doi.org/10.5281/zenodo.22452680)
[![Hook 22379293](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

### v4.28.0 X0(26)(Q) Cusps P-mem Locked — DOI 22452680

| Name | What |
|---|---|
| X0_26_Q | [1,2,13,26] rfl P.mem mem_1 mem_2 mem_13 mem_26 not_mem_3 hInList hNotIn for hGeomForbid |
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true (hNotIn hInList) |
| beal13_forall_bridge_triple | none ⟨exponent13,forall,bridge⟩ |

DOI `22452680` findable records prior mint `22450737` hook `22379293` `IsVersionOf` `22272382` honest original latest `22322627`.

PARI lock: 26a1 Δ `-17576` 26b1 Δ `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260` image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB.

# v4.8.0 Iter modularity scaffold

Explicit Wiles--Taylor / Ribet *names*. **Current as of**
`v4.8.0-iter-modularity-scaffold`.

These files are computational-assumption placeholders. They are
not Mathlib modularity and not a Lean Ribet theorem.

| File | What it is | What it is not |
|---|---|---|
| `FreyModularity_13.lean` | `FreyCurve13` displayed triple; empty `Modularity` inductive; `axiom frey_modular_13`; `frey_conductor_26 = 26`; `freyLevel26_computational` is `2 * 13 = 26` | Not Wiles--Taylor; not a Frey Weierstrass model |
| `RibetLevelLowering_26.lean` | `axiom ribet_level_lowering_26`; `ribet_secured_by_certs` lists PARI `\|Sel₂\|=1` twice, `det M₃=2`, SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260` | Not Ribet; not a modular-curve point |

v4.42.0 `WeierstrassModularity` is in
[`../Frey/FreyModularity_13.lean`](../Frey/FreyModularity_13.lean):
a `WeierstrassCurve Int` value is not a `Type`, so
`Modularity` does not apply to it.  The wrapper is displayed
`Modularity (FreyCurve13 w.A w.B w.C)` for the pack.

The only axioms in the tree are `frey_modular_13` and
`ribet_level_lowering_26`, each marked
`COMPUTATIONAL ASSUMPTION`. Mazur imports both plus
`Chain/X0_26_Point.lean` (`X0_26_Point_Raw`,
`DisplayedX026CuspPoint` with `P.mem`, `X0_26_Q` the
four-label set with no `True`).

`hGeomForbid_typed_true` stays axiom-free (`hNotIn hInList`).
`ExistsNoncuspidal_26` is empty by type. Old
`#check hGeomForbid_typed_is_uninhabitable` stays live.

Certs: 26a1 `[1,0,1,-5,-8]` Δ `-17576`, 26b1 `[1,-1,1,-3,3]`
Δ `-1664`. Not `∀ ℕ` and no `False.elim`.
