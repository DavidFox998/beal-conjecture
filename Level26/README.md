# Level 26 Foundations - v24.4.0 Final Summary

Relocated from github.com/DavidFox998/beal-level-26-foundations v24.4.0 tag db7a556 DOI 10.5281/zenodo.22732209 concept 10.5281/zenodo.22379293

Closing of Matveev log upper bound + conditional ratio toward Baker B0=10^6:

On gap-3 A^4+B^4=(B+3)^13: |Λ| = log(1+B^4/A^4) ≤ B^4/A^4 = B^4/((B+3)^13-B^4), 0<exp(C_exp_bound)<1e-12<1, C_exp_bound=-height_B0 log height_B0, height_B0=104382751019310000000=C1_floor*30^6 (30^6=729000000). IF matveev_inequality_real_target |Λ|>exp(C) THEN 0<exp(C)<B^4/A^4 and B^4(1+exp(C))>exp(C)*(B+3)^13.

Still uninhabited: matveev_inequality_real_target, baker_bound_gap3, bugeaud_LLL_reduction_conditional. Honest final of v24.x, not v25.

v24.x DOI chain: 22730408, 22730460, 22730548, 22730776, 22730846, 22731054, 22731160, 22731508, 22731634, 22731759, 22731966, 22732045, 22732209

Citation: `paper/beal_level26_v24_4_0.bib` and `\cite{beal_level26_v24_4_0}` in `beal_mcom_draft.tex`.

v14 J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` mwrank `{0,12}` M3 `[[1,1],[0,2]]` unchanged.

The `beal-level-26-foundations` GitHub URL is now the Matveev-Beal lower-bound package. Lake exposes the relocated kernel as `lean_lib Level26` with explicit
`.one` modules (empty `globs` would treat `roots` as `.andSubmodules`
and compile the Zsigmondy / Ribet tree). The subtree package
`Level26/BealLevel26Foundations` uses the same slim default.

v25 wiring (type-correct, still not inhabited): see `Level26/BakerBoundGap3Holds.lean`.

```
matveev_gap3_lower : matveev_inequality_real_target     -- Matveev-Beal, one sorry
matveev_inequality_real_target → baker_bound_gap3       -- LLL / Bugeaud, def Prop
baker_conditional_gap3_full : baker_bound_gap3 → forall -- already a theorem
```

The sketch `baker_bound_gap3_holds := baker_conditional_gap3_full matveev_gap3_lower` does not typecheck: `baker_conditional_gap3_full` takes `baker_bound_gap3`, not the Matveev target. This monorepo does not `require` Matveev-Beal (that package depends on `Level26/BealLevel26Foundations`).
