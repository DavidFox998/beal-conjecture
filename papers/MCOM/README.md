# MCOM draft — beal-v38 EQUIV:3 on main `a2a23292`

`main` is `a2a23292`, the merge of pull request 25. It contains `792b3f8`, which restates `Function.Injective chartOfModelTrue` via `chartOfModelTrue_injective`, conjoined with `chartTrueEquiv_inj_from_Ei_constraint`.

Chain: `ddfb2642` is the `025b34c2` constraint (`S`-degree at most 2, `(1+Y·S³)` kills the high image, `Y³ ≠ 0`, `Y³` outside the cusp ideal, so the constraint does not set `Eᵢ = 0`) → `e466e5a` keeps `B = 1` nonzero outside the cusp → `792b3f8` restates the injectivity. Tag `beal-v38-equiv-Ei-constraint` is `c2f530ab` at `792b3f8`. Tag `beal-v38-freeze-Y-axis-glue` is `437b4c85` at `c48b1bd3`.

Invariants: `centreNormalPoly (X³ − 1) 0` lies outside `I²` because `centreAlphaBound 2 0 = 1`. The centre class remains `α(X) + Y·β(X)`. `X²·(X+V²)·z = 0` is a separate conjunct and does not set `B = 0`. `X+V²` stays outside the cusp ideal with nonzero image. `overlapX·(overlapX+overlapV²) ≠ 0`. `ann(1+Y·S³) ≠ ann(X²)` is cited before the conjunction. `V = S⁻¹`, `Y = X·V`, `X = Y·S`, `ann(1+Y·S³) = ann(X+V²)`, and `ann(X²) = ann(Y²)`. There is no ring map from `D₊(Xt)` into the overlap.

The citation [10.5281/zenodo.23120540](https://doi.org/10.5281/zenodo.23120540) is unchanged. This note does not mint a superseding record.

Story skeleton:

1. Introduce the chart model of the special fibre. The general equation `Aˣ + Bʸ = Cᶻ` is not a theorem of this repository.
2. Freeze the `Y`-axis glue at `c48b1bd3`, tag `437b4c85`.
3. Annihilator presentations at `81f15d00`, then the injectivity scaffold at `685da0db`. The `X²` annihilator does not set `B = 0`.
4. The `Eᵢ` constraint at `ddfb2642`, from `025b34c2`. It does not set `Eᵢ = 0`.
5. `e466e5a` carries that constraint, and `792b3f8` restates `Function.Injective chartOfModelTrue`. Tag `c2f530ab`.
6. `Beal/BealEven.lean` cites that engine. `Y³` stays outside the cusp ideal. The wrapper does not prove that coprime bases have a common prime factor.
7. `lake build Beal.MathlibMissing.ChartTrueEquiv` exits 0. Seven theorems in `ChartTrueEquiv.lean` (355 lines) depend only on `[propext, Classical.choice, Quot.sound]`.
