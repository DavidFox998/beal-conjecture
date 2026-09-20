# `lean/Beal/Modular/`

**v30.0.0-level-26-structural-verification — Tate 928=2⁵·29 Neron I0* I8 c4 Δ v2=6 v29=8 Mazur 2184 48<2184 13=2²+3² 288/48=6 card2 genus0 infinite vs2 Ribet 928/29=32 ∅ card0 full1 new1 LMFDB 32a1 Kolyvagin |Sel2|=1 3·7=21 L/Ω=1/3 1/7 rank0 26a1 26b1**


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
