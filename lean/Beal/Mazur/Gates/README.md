# `Beal/Mazur/Gates/`

The `Gates/` folder contains the explicit checks and conditional interfaces
that guard the Level-26 route. Its modules separate finite Phase A arithmetic,
rank and torsion hypotheses, formal-immersion evidence, and the p-adic
certificate contract.

The v9.2.0 p-adic interface is especially deliberate. It defines actual
local-field predicates and a proof-relevant certificate shape, then derives
the S-unit singleton only from an explicit genuine certificate. The finite
congruence tables and the archived external transcript are evidence for
replay, not a substitute for that certificate.