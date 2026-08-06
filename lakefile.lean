import Lake
    open Lake DSL

    package «brothers-desert-proof» where
    version := v!"0.1.0"

    require mathlib from git
    "https://github.com/leanprover-community/mathlib4.git" @ "v4.15.0"

    -- Pull brothers, desert, and Hilbert-route facts from eutheos-property
    require eutheos from git
    "https://github.com/DavidFox998/eutheos-property.git" @ "main"

    lean_lib BrothersDesertProof where
    srcDir := "."
    globs := #[
      -- The Object layer (0 sorry)
      .one `Eutheos.Object,
      .one `Eutheos.Theta,
      -- Rational-theta contradiction + brothers Nodup (SORRY 1 tagged)
      .one `Eutheos.RationalTheta,
      -- Number-theoretic bridge: ThetaSelfSymmetryRH ↔ RH (SORRY 2, 3 tagged)
      .one `Eutheos.Bridge,
      -- Assembly: theta_irrational → ThetaSelfSymmetryRH → RH
      .one `Eutheos.RH,
      -- SelfSymmetry layer (wraps eutheos-property theorems)
      .one `SelfSymmetry.Core,
      .one `SelfSymmetry.Desert,
      .one `SelfSymmetry.JitterSymmetry,
      .one `SelfSymmetry.TwinWormhole,
      .one `SelfSymmetry.ClayWitness,
      .one `Protocol.Chain
    ]
    