# `lean/Beal/Modular/`

Geometry-bridge modules for the historical v11 Level 26
assembly.

| File | Role |
|---|---|
| [`Level26_GeometryBridge.lean`](Level26_GeometryBridge.lean) | Ledger-derived `M3` and the named q-expansion / cotangent compatibility premise. |
| [`Level26_Eigenline.lean`](Level26_Eigenline.lean) | Eigenline interface used by that bridge. |

`qExpansionCotangentMatrix26_eq_M3` is a proved matrix identity
on the finite model. Identifying that model with an actual
Picard / Abel–Jacobi differential remains the named premise
`QExpansionCotangentCompatibilityAtInfinity26`.

This folder is **not** the v26 honest slice. Descent, torsion,
and conductor data for signature `(4,4,13)` are in
[`../../../Level26/HonestB0Search/`](../../../Level26/HonestB0Search/).
