# `scripts/`

**v30.0.0-level-26-structural-verification — Tate 928=2⁵·29 Neron I0* I8 c4 Δ v2=6 v29=8 Mazur 2184 48<2184 13=2²+3² 288/48=6 card2 genus0 infinite vs2 Ribet 928/29=32 ∅ card0 full1 new1 LMFDB 32a1 Kolyvagin |Sel2|=1 3·7=21 L/Ω=1/3 1/7 rank0 26a1 26b1**


**v26.** Parent reproducibility scripts. Vendor PARI
`verify_descent_26.py` (`ellrank [0,0]`) is
[`../Level26/BealLevel26Foundations/scripts/`](../Level26/BealLevel26Foundations/scripts/).
`check-v11-release.sh` is a historical v11 gate (still mentions
`v11.0.0` and the old `v1.2.1` git require). It is not the v26
mint script.

These scripts are the reproducibility instruments for the Beal chamber in
*Opera Numerorum*. They validate release inputs, replay the Level-26
certificate data, and guard the boundary between committed evidence and
external computation.

The Level-26 replay check is deterministic and is intended to run in CI. The
Sage program writes a separate uncommitted computation log, while the Python
certificate producer and Lean modules keep the finite data reviewable. A
passing script confirms the checks it names; it does not by itself prove the
missing p-adic, Jacobian, modularity, or Selmer theorems.