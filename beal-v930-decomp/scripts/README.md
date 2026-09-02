# `scripts/`

These scripts are the reproducibility instruments for the Beal chamber in
*Opera Numerorum*. They validate release inputs, replay the Level-26
certificate data, and guard the boundary between committed evidence and
external computation.

The Level-26 replay check is deterministic and is intended to run in CI. The
Sage program writes a separate uncommitted computation log, while the Python
certificate producer and Lean modules keep the finite data reviewable. A
passing script confirms the checks it names; it does not by itself prove the
missing p-adic, Jacobian, modularity, or Selmer theorems.