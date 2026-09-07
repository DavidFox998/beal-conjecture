## The wider work: *Opera Numerorum* — coordination index

This repository is one chamber of **David Fox's *Opera Numerorum***: a growing collection of machine-checked arithmetic, geometry, and analysis in Lean 4. The method is uniform: state the arithmetic explicitly, make the connective steps machine-checkable, and leave every imported theorem or missing construction visible at the boundary.

**Coordination index:** [opera-numerorum](https://github.com/DavidFox998/opera-numerorum) — 664 bricks, chain `7472f4e5`, all surfaces OPEN.

**Axiom footprint (project-wide):** `{propext, Classical.choice, Quot.sound}` — no `sorry`, no `admit`.

### Route E — Beal Conjecture — level-26 unconditional none

**[beal-conjecture](https://github.com/DavidFox998/beal-conjecture)** — Conditionally complete Lean 4 Beal assembly with five explicit premises; companion computable level-26 foundations. Final assembly `Beal.Final.ConditionalBealTheorem` exposes exactly five premises `J0DecompositionSoundness_26`, `MwrankCertificateSoundness_26`, `FormalImmersionSoundness_26`, `FreyCurveExists`, `LevelLowering_26`. CI green, axiom audit `propext, Classical.choice, Quot.sound`. Concept DOI [10.5281/zenodo.22041831](https://doi.org/10.5281/zenodo.22041831), latest v11.0.0 [10.5281/zenodo.22281075](https://doi.org/10.5281/zenodo.22281075).

**[beal-level-26-foundations](https://github.com/DavidFox998/beal-level-26-foundations)** — Beal Level 26 Foundations — X0(26)(Q) cusps P-mem + Beal13-Forall-Bridge triple none — **UNCONDITIONAL v7.1.0** `BealForall_real_witness_none none + beal_forall_in_kernel_from_beal_forall_none_separated none BOTH none` via `rfl only + none tokens` `26/13=2 by rfl none` `v13(Delta)%13=0 by rfl none` `p∉S by rfl none` `2*13 conductor by rfl none` `det=chi13 none` `Q1=53 53%13=1 by rfl none` `Q2=677 677%169=1 by rfl none` `26a1 Delta -17576 26b1 Delta -1664 real none` `HeckeAlgebra_26_inhabited none` `R_T_scaffold_inhabited none` `TW_primes_Q_n_real_infinite none` `R_T_patching_witness_real_infinite none` `24 modules green twice verify-scaffold.sh OK verify_descent_26.py OK NO_SORRY_OK` `3 plates JPEG WebP fallback docs/assets/v6.7.0/ ribet_26_to_2.jpg tw_qn_infinite_family.jpg galois_token.jpg Facebook og:image ribet_26_to_2.jpg`. Chain `22552105->...->22592524->22595002->22602899->22607942->22611775->22614123->22618433->22620999->22632209->22635221` Hook `22379293 IsVersionOf 22272382 only original-family 22322627`. Latest written mint [10.5281/zenodo.22632209](https://doi.org/10.5281/zenodo.22632209) `v7.1.0 BOTH none unconditional`, About catch-up [10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221) `v7.1.1`.

### Route A — positivity
[riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity) — positivity on X0(143) g=13 omega^2=48/13 S4={2,3,19,191}

### Route B — spectral descent
[arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent) — spectral gap lambda1>=975/4096 Kim-Sarnak

### Route C — growth contradiction
[rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction) — Littlewood Omega phenomenon

### Route D — Eutheos / desert brothers
[brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof) — p=5 bridge desert property

### Formalization reference
[ImperialCollegeLondon/FLT](https://github.com/ImperialCollegeLondon/FLT) — inspiration, not dependency
