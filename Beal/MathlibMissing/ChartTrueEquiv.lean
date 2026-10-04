import Beal.MathlibMissing.ChartXtFixed
import Beal.MathlibMissing.GlueFinal

-- True-chart equivalence draft on beal-v38-gluing
-- Uses c48b1bd3 glue: Y common axis V=S⁻¹, ann(X²)=ann(Y²), ann(1+Y·S³)=ann(X+V²)
-- Bound is X²·(X+V²)z=0 on D₊(Xt) and (1+Y·S³)·Y³z=0 on D₊(Yt)
-- NOT B=0, NOT Ei=0 from centreAlpha/BetaBound — centreNormalPoly
-- c39488ce cites factor≠power: Y² kills factor not power

-- Goal: chartOfModelTrueX_fixed surjection + glue_final_Y_axis gives
-- D₊(Xt) and D₊(Yt) same Y-axis, no ring map D₊(Xt)→overlap claimed
-- Draft theorem: equivalence of annihilator presentations, not injective ring map
