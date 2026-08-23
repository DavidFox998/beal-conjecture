---
name: brothers-desert-proof status
description: Lean proof progress across brothers-desert-proof and eutheos-property repos
---

# brothers-desert-proof / eutheos-property — proof status

## Repos involved
- `DavidFox998/brothers-desert-proof` — main Lean project (eta-identity proof)
- `DavidFox998/eutheos-property` — Family/ lemmas, CI runs on this repo

## Completed
- **Step A (`lfunction_eq_eta_factor`)** — MERGED (commit `eb364b3` in brothers-desert-proof).
  Proves `ZMod.LFunction altChar s = (1 − 2^{1−s}) · ζ(s)` for Re(s) > 1.
- **PrimesInPi.lean CI fix** — committed `732a0dc` to eutheos-property/Family/PrimesInPi.lean.
  Two bugs: (1) duplicate `def p5` (already in Brothers1419 namespace); (2) desert filter
  missing `&& Nat.Prime p`, letting composites through.

## In-progress
- **Step D (`hasSum_alternating_Dirichlet`)** — Task #168 IN_PROGRESS (task agent).
  Task #169 PENDING (blocked by concurrency limit, activates after #168).

## Step D proof strategy (confirmed Mathlib 4.15.0)
- Sub-lemma `cpow_diff_le`: `‖(n+2)^(-s) - (n+1)^(-s)‖ ≤ ‖s‖ · (n+1)^(-s.re-1)` via real MVT
- `h_tail_fin` Abel tail bound via summation-by-parts + `partial_sum_altChar_bounded`
- `TendstoLocallyUniformlyOn` → `tendstoLocallyUniformlyOn_iff_forall_isCompact`
  (needs `haveI : LocallyCompactSpace ℂ := inferInstance`)
- `TendstoLocallyUniformlyOn.differentiableOn` → `analyticOnNhd_iff_differentiableOn`
- Identity theorem `eqOn_of_preconnected_of_eventuallyEq` against `ZMod.LFunction altChar`
- Key spellings: `hasStrictDerivAt_const_cpow`, `Differentiable.const_cpow`,
  `IsCompact.exists_isMinOn`, `hasSum_nat_add_iff`

## eutheos-property CI pattern
- `native_decide` on large Nat computations needs `&& Nat.Prime p` guard when filtering
  for "exceptional primes" — composites can satisfy rational approximation criteria.
- Always check import chain for duplicate `def` in same namespace before adding new defs.
