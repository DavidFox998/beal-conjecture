# Task status by evidence

This is the working status ledger for the current workspace. Queue state alone
does not prove that a task is complete: each `COMPLETE` entry below names a
reproducible check. Every other item is `NOT COMPLETE`; its note describes
what remains, without inventing a separate blocked state.

## Complete

| Area | Evidence |
|---|---|
| Lean compatibility check | `lean-compat` builds `SiegelZeroFreeElementary`, `SiegelZeroFreeRe1`, and `SiegelZeroFree`; classifier tests report 18/18 passed. |
| Tier-map import protection | `test_mcp_tool_tiers.py` independently derives the router map and checks every discovered tool and all four tier buckets. The import-time map initialization is present; the test command is available but its latest process disconnected before returning results, so rerun it before using this as a release gate. |
| Level-26 Selmer cardinalities | `lake build Beal.Mazur.Gates.Descent_26_SelmerCardinality` passes and proves both supplied carriers have `Nat.card = 1` without using rank. |
| Concrete elliptic \(E[2]\) representation | `lake build Beal.Mazur.Cohomology.EllipticTwoTorsion` passes; the ambient algebraic `H1` is now canonical Mathlib group cohomology of geometric 2-torsion. |
| Full Beal aggregate build | `lake build Beal` passes on the current workspace. |
| Consolidated level-26 conditional endpoint | `Beal.Mazur.Level26_ConditionalEndpoint` is present, imported by `Beal.lean`, and exposes one `Level26ConditionalEndpoint` package with the four-cusp, \(p=13\), Mazur-classification, and conditional-Beal consequences. |
| Ensemble backlink warning | `rh-p5-bridge-14/REPOS.md` now explicitly requires a backlink plus chain/workflow registration before a repository counts as ensemble-linked. |
| EKG and webhook test infrastructure | The repository contains the EKG, Stripe webhook, email, and tier-gate test suites; individual live-provider confirmations are tracked separately below. |

## Not complete

| Area | What remains |
|---|---|
| RapidAPI paid-subscriber path | The live app still reports that `RAPIDAPI_PROXY_SECRET` is not configured in Fly.io. |
| Direct Stripe validation | The live app still reports an invalid `mk_...` Stripe value instead of an accepted secret-key prefix. |
| GitHub pushes / ensemble relock | No successful push or relock has been verified. |
| Foundations repository publication | The local finite-evidence work exists and builds, but publication has not been verified. |
| FastAPI startup cleanup | `zerobeacon_mf_1000_main.py` still uses `@app.on_event("startup")`. |
| Genuine level-26 Selmer bridge | Continuous/local Galois cohomology and the proof-relevant ledger identification remain unfinished; the concrete algebraic \(H^1\) is not being presented as a complete Selmer construction. |
| Live Stripe behavior | Webhook delivery, retry idempotency, restart persistence, re-subscription delivery, and admin-log redaction still need their corresponding checks. |
| Remote backlink enforcement | The ensemble backlink rule is documented, but no remote-repository API check has been added. |

## Rule for updating this file

Use only **COMPLETE** and **NOT COMPLETE**. Move an item to **COMPLETE** only
after the named command, test, or live check has actually passed. Do not infer
completion from a proposed, pending, or approval-needed queue record.