# Beal.MathlibMissing

Part of `main` `a2a23292`, which contains the beal-v38 EQUIV chain.

`ChartTrueEquiv.lean` (355 lines) has seven theorems, axioms `[propext, Classical.choice, Quot.sound]`. `chartOfModelTrue_injective_from_Ei_constraint` restates `Function.Injective chartOfModelTrue`. The `Eᵢ` constraint does not set `Eᵢ = 0`, and `X²·(X+V²)·z = 0` does not set `B = 0`. `centreNormalPoly (X³ − 1) 0` lies outside `I²` because `centreAlphaBound 2 0 = 1`. There is no ring map from `D₊(Xt)` into the overlap.

`lake build Beal.MathlibMissing.ChartTrueEquiv`. The `BealEven` library does not import these chart files. The separate wrapper is `Beal/BealEven.lean`.
