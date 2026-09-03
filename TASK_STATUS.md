# Task status by evidence

This is the working status ledger for the current workspace. Queue state alone
does not prove that a task is complete: each `DONE` entry below names a
reproducible check, while `BLOCKED` entries name the external dependency that
prevents completion. Items not listed as `DONE` remain open.

## Done and verified locally

| Area | Evidence |
|---|---|
| Lean compatibility check | `lean-compat` builds `SiegelZeroFreeElementary`, `SiegelZeroFreeRe1`, and `SiegelZeroFree`; classifier tests report 18/18 passed. |
| Tier-map import protection | `test_mcp_tool_tiers.py` independently derives the router map and checks every discovered tool and all four tier buckets. The import-time map initialization is present; the test command is available but its latest process disconnected before returning results, so rerun it before using this as a release gate. |
| Level-26 Selmer cardinalities | `lake build Beal.Mazur.Gates.Descent_26_SelmerCardinality` passes and proves both supplied carriers have `Nat.card = 1` without using rank. |
| Concrete elliptic \(E[2]\) representation | `lake build Beal.Mazur.Cohomology.EllipticTwoTorsion` passes; the ambient algebraic `H1` is now canonical Mathlib group cohomology of geometric 2-torsion. |
| Full Beal aggregate build | `lake build Beal` passes on the current workspace. |
| Ensemble backlink warning | `rh-p5-bridge-14/REPOS.md` now explicitly requires a backlink plus chain/workflow registration before a repository counts as ensemble-linked. |
| EKG and webhook test infrastructure | The repository contains the EKG, Stripe webhook, email, and tier-gate test suites; individual live-provider confirmations are tracked separately below. |

## Blocked by external configuration or live-provider access

| Area | Blocking evidence |
|---|---|
| RapidAPI paid-subscriber path | The running app reports `RAPIDAPI_PROXY_SECRET` is not configured in Fly.io. |
| Direct Stripe validation | The running app reports the configured Stripe value has an invalid `mk_...` prefix rather than an accepted `sk_...` or `rk_...` key. |
| GitHub pushes / ensemble relock | Earlier push attempts were rejected by the configured GitHub credentials; no push is claimed here. |
| Foundations repository push | The local finite-evidence work exists and builds, but its remote push still requires accepted GitHub credentials. |

## Still open

- FastAPI startup deprecation cleanup: `zerobeacon_mf_1000_main.py` still uses
  `@app.on_event("startup")`.
- Continuous/local Galois cohomology and the proof-relevant level-26 Selmer
  ledger identification remain unfinished; the concrete algebraic \(H^1\)
  representation is not being mislabeled as a complete Selmer construction.
- Live Stripe webhook delivery, duplicate-retry behavior, restart persistence,
  re-subscription delivery, and admin-log redaction still require their
  corresponding live or focused verification.
- Ensemble backlink enforcement is documented above, but a remote-repository
  API check has not been added.

## Rule for updating this file

Move an item to **Done and verified locally** only after the named command,
test, or live check has actually passed. Do not infer completion from a
proposed or pending queue record.