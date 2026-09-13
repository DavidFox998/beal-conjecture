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

# docs/Final/

FINAL v5 green: [`FINAL.md`](FINAL.md).
Iter / Forall / typed-bridge docs. Lean sources live in
[`lean/BealLevel26Foundations/Final/`](../../lean/BealLevel26Foundations/Final/README.md).
Package table: [`../BealExponent13_Iter_Package.md`](../BealExponent13_Iter_Package.md).
Forall reduction sketch (v4.31.0, p=13 working prime):
[`BealExponent13_Forall.md`](BealExponent13_Forall.md).
v4.35.0: `#check is13CaseForcesGcdGt1Sketch_inhabited` is the typed
close (`BealTheorem_Exponent13_Typed`, none).
`Is13CaseForcesGcdGt1Sketch` stays uninhabited. Still not `∀ A B C`.
v4.40.0: `FreyCurve13_of_BealCounterexampleBases` is the working-prime
Weierstrass `freyCurve ↑A ↑B 13 13`.  Not a noncuspidal `X₀(26)`
point. `ExistsNoncuspidal_26_of_Is13CaseSketch` stays uninhabited.
v4.41.0: `ribet_produces_noncuspidal_of_weierstrass` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch` stay
uninhabited. `WeierstrassCurve` is not `DisplayedX026CuspPoint`.
v4.42.0: `WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type. Ribet sketches stay uninhabited.
v4.43.0: `ribet_produces_noncuspidal_of_weierstrass_modularity`
takes the bridge and stays uninhabited.
v4.44.0: `X0_26_Q_Point` is `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`
started. Mathlib 4.12 has no `X₀(26)(ℚ)`. Ribet sketches stay
uninhabited.
v4.45.0: `X0_26_Q_Point_to_ExistsNoncuspidal` is
`Nonempty → ExistsNoncuspidal_26` uninhabited. Empty inductive.
v4.46.0: real `X₀(26)(ℚ)` has 26a1/26b1; contradiction is
`S₂(Γ₀(2))=0` no newform. `notExistsNewformLevel2` **none**.
v4.47.0: Tate conductor from `Is13Case` (`13 ∣ A*B*C`)
uninhabited; `frey_conductor_26_rfl` is `rfl`.
