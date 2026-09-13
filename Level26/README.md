# Level 26 Foundations - v24.4.0 Final Summary

Relocated from github.com/DavidFox998/beal-level-26-foundations v24.4.0 tag db7a556 DOI 10.5281/zenodo.22732209 concept 10.5281/zenodo.22379293

Closing of Matveev log upper bound + conditional ratio toward Baker B0=10^6:

On gap-3 A^4+B^4=(B+3)^13: |Λ| = log(1+B^4/A^4) ≤ B^4/A^4 = B^4/((B+3)^13-B^4), 0<exp(C_exp_bound)<1e-12<1, C_exp_bound=-height_B0 log height_B0, height_B0=104382751019310000000=C1_floor*30^6 (30^6=729000000). IF matveev_inequality_real_target |Λ|>exp(C) THEN 0<exp(C)<B^4/A^4 and B^4(1+exp(C))>exp(C)*(B+3)^13.

Still uninhabited: matveev_inequality_real_target, baker_bound_gap3, bugeaud_LLL_reduction_conditional. Honest final of v24.x, not v25.

v24.x DOI chain: 22730408, 22730460, 22730548, 22730776, 22730846, 22731054, 22731160, 22731508, 22731634, 22731759, 22731966, 22732045, 22732209

Citation: `paper/beal_level26_v24_4_0.bib` and `\cite{beal_level26_v24_4_0}` in `beal_mcom_draft.tex`.

v14 J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` mwrank `{0,12}` M3 `[[1,1],[0,2]]` unchanged.

The `beal-level-26-foundations` GitHub URL is now the Matveev-Beal lower-bound package. Lake exposes the relocated kernel as `lean_lib Level26` (two roots)
and the subtree package lists the **83-module import closure** of
`BealMatveevThm14` / `BealBakerB0ReductionCertificate` as explicit
`.one` globs. Empty `globs` would treat `roots` as `.andSubmodules`.
`BealGap3BakerUpperBound` → `BealMod16` → Zsigmondy Density → Steps 4–60
is a real import, not a glob accident. RibetMazur / Mazur / Jacobian
stay out of the default lib.

v25 wiring (type-correct, still not inhabited): see `Level26/BakerBoundGap3Holds.lean`.

```
hGen : matveev_theorem_1_4_general_prop                  -- Matveev-Beal, uninhabited
hLLL : bugeaud_LLL_reduction_conditional                -- LLL / Bugeaud, def Prop
baker_bound_gap3_of_LLL : hLLL → hGen → baker_bound_gap3 -- proved packaging
v25_of_hGen_hLLL : hGen → hLLL → ∀ B, ¬∃ A              -- proved packaging
baker_conditional_gap3_full : baker_bound_gap3 → forall -- already a theorem
```

`hGen` uses `α₁ = A`, `α₂ = B+3` (not `1 < B`). The B ≤ B0 Matveev lower bound is `matveev_gap3_lower_of_general_of_B_le_B0` in Matveev-Beal 4bd15bd; duplicated here as `matveev_gap3_lower_on_B0_range` (def Prop, no reverse import).

Not v25: hGen and hLLL are still uninhabited. Tag
`v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional` waits on 0 sorry
for both. DOI stays concept 22379293.

The sketch `baker_bound_gap3_holds := baker_conditional_gap3_full matveev_gap3_lower` does not typecheck: `baker_conditional_gap3_full` takes `baker_bound_gap3`, not the Matveev target. This monorepo does not `require` Matveev-Beal (that package depends on `Level26/BealLevel26Foundations`).

`Level26Wiring` is not a default `lake build` target: the existing git require of the old foundations tag shadows `BealLevel26Foundations.Beal.FullProof.*`. The wiring file typechecks against the relocated kernel oleans. `lake build` still builds the `Beal` lib.
