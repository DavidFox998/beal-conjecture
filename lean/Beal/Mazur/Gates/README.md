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

## Versioned Level-26 gate chain

The Gates directory now records three linked certificate stages:

- **v9.2.0 — rank zero:** `SecondDescent_Singleton_26_Reproducible` consumes
  the explicit second-descent certificate boundary.
- **v9.3.0 — Jacobian decomposition:** `J0_26_Decomp_Cert.lean` checks the
  finite dimension and model data, while `J0_26_Decomp.lean` exposes
  `J0DecompositionSoundness_26` and `MwrankCertificateSoundness_26` as
  proposition-valued arguments.
- **v9.4.0 — formal immersion at `2`:**
  `FormalImmersion_26_Cert.lean` checks the `M₃` rank-two witness and
  `FormalImmersion_26.lean` exposes `FormalImmersionSoundness_26` together
  with the resulting finite-rational-points bridge.

The v9.4.0 matrix is finite evidence for the cotangent calculation. Its
scheme-level interpretation and Mazur's cusp criterion remain explicit
soundness premises. Across these modules, no new external premise is hidden
inside a global Lean `axiom`; all such assumptions are visible as ordinary
proposition-valued theorem arguments.