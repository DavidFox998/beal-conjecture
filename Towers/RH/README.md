# Towers/RH

Riemann Hypothesis bridge — reduces infinite prime set `S_α0` to finite `S_14`.

Constants: `q5=226`, `q6=165849`, `cf_bound=82829`, `p5=67645`, `|S_14|=14`.

Subfolders:

- `Arakelov/` — Route A positivity, uses `ω²=48/13` from **[arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core)**
- `Chain/` — **Keystone Chain** — `P5_BSD_RH_Link.lean` → `P5_BSD_RH_closure_CLOSED : BSD_143_PROVED → RiemannHypothesis`
- `ConverseTheorem/` — converse theorem input for Langlands transfer `L_fn`
- `Formalized/` — formal sieve criteria `Sieve_Criterion.lean` defining `S14`
- `IwaniecKowalski/` — Rankin-Selberg `L`-function bounds
- `JorgensonKramer/X0_143/` — analytic torsion, `K1IdealGrowth` for height
- `KimSarnak/` — Kim-Sarnak `λ₁≥975/4096` → Selberg trace = Bost-Connes

Root files `Bridge143.lean`, `ZeroDensity.lean`, `GrowthContradiction.lean`, `ZProtocolBridge.lean`, `H2_WeilTransfer.lean`, `M9_WeilTransfer.lean` are mirrors for the 4 RH routes:

- **A** **[riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity)**
- **B** **[arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent)**
- **C** **[rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction)**
- **D** **[brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof)**

Inner wall: **[lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143)**.
