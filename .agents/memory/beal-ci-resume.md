---
name: Beal CI resume point
description: State of beal-conjecture CI after the Aug 23 session; where to pick up after the queue drains.
---

## Last green commit
- **Tag**: `last-green-165`
- **Commit**: `b285036` — "feat(B14_FreyTate): fix types, close ta…"
- **CI run**: #165 ✅ (1h 12m)

## Current HEAD
- **Commit**: `477e31f` — "fix(B14_FreyTate): robust proofs for singular_dvdA and anisotropic_cone; 0 sorry"
- **CI run**: #190 (started ~1:49 PM PDT Aug 23, result expected ~2:45–3:00 PM PDT)

## What changed between b285036 and 477e31f (the gap)
All files are on the same branch (main). Key changes since last-green:

| File | Change | Sorry |
|------|--------|-------|
| B14_FreyTate.lean | c4_Frey explicit; disc_Frey/conductor_Frey added; singular/anisotropic proofs fixed | 0 |
| B14_TateInImpliesOrd1.lean | tate_step2_I_n_conductor_one axiom; tate_frey_multiplicative_derived full proof; rwa→rw | 0 |
| B14_TateC4Nonzero.lean | unchanged | 0 |
| B15_RibetIterate.lean | calls tate_frey_multiplicative_derived | 0 |
| B20_BealConjectureDone.lean | clean proof via tate_frey_multiplicative_derived | 0 |

## Why earlier runs failed (#166–#189)
Every run from #166 to #189 failed on one of:
1. `legendreSym.eq_zero_iff.mpr` — unknown constant (old FreyTate proof style, pre-477e31f)
2. `singular_dvdA_fderiv_zero` — `rw [intPow_cast_zero_of_dvd ...]` fails after `push_cast` because push_cast already normalised the pattern away
3. `anisotropic_cone` — `sq_eq_zero_iff` doesn't exist in Mathlib 4.12

**477e31f fixes all three.**

## Resume instructions
When the user returns:
1. Check run #190 result: `GET /repos/DavidFox998/beal-conjecture/actions/runs?per_page=5`
2. If **green**: write the README axiom-ledger section (task #404).
3. If **red**: read the job logs for run #190 and fix the first error. The most likely remaining risks:
   - `div_self hu2` expects `(u^2 : F) ≠ 0` but `hu2 : u^2 ≠ 0` — should be the same in a Field context
   - `pow_eq_zero_iff (by norm_num : 2 ≠ 0)` — if `2` is inferred as `ℕ` this is fine; if as `ℤ` it's also fine (norm_num handles both)
   - Any import ordering issue in B14_TateInImpliesOrd1 (unlikely — didn't change imports)
   - `tate_frey_multiplicative_derived` type mismatch in B20 (very unlikely — argument order was verified)

## Named axioms in the final proof (target: exactly 3)
- `wiles_modularity` — Wiles 1995
- `tate_step2_I_n_conductor_one` — Silverman AEC IV.9 / Tate 1972
- `ribet_level_lowering_real` — Ribet 1990

**Why:**  any change to B14_TateInImpliesOrd1 that adds axioms will show up in `#print axioms tate_frey_multiplicative_derived` and `#print axioms Beal20Done.beal_conjecture_is_proved`.
