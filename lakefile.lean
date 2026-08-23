import Lake
open Lake DSL

package «brothers-desert-proof» where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.15.0"

lean_lib BrothersDesertProof where
  srcDir := "."
  globs := #[
    .one `Family.Brothers1419,
    .one `Family.BrothersAnalysis,
    .one `Family.GapHamming,
    .one `Family.ExceptionalPrimes,
    .one `Family.PrimesInPi,
    .one `Family.TwinPrimes,
    .one `Family.DirichletJitterTime,
    .one `Family.FibonacciChain,
    .one `Family.H4Throat,
    .one `Family.H4Tower,
    .one `Closure.ArakelovFoundations,
    .one `Eutheos.Object,
    .one `Eutheos.Theta,
    .one `Eutheos.RationalTheta,
    .one `Eutheos.RamanujanFactorization,
    .one `Eutheos.EulerProductLemmas,
    .one `Eutheos.Bridge,
    .one `Eutheos.RH,
    -- Lindelöf bridges
    .one `Lindelof.LindelofBridge,
    .one `Lindelof.GrowthBoundReal,
    -- Closure: RouteC closes via Hasse + numerical BC certs (no Langlands)
    .one `Closure.RouteCClosed,
    -- Universal binder: gate arithmetic + brothers structure + BC cert
    .one `UniversalRH_Binder_FINAL_0_SORRY_0_AXIOM,
    -- Route A: Abbes-Ullmo Arakelov positivity → equidistribution → RH
    .one `Route.RouteA,
    -- Route B: spectral gap λ₁≥975/4096 → BC6 → GRH → RH (arakelov-rh-descent)
    .one `Route.RouteB,
    -- Route C: Littlewood Ω + Deuring-Heilbronn zero repulsion → contradiction → RH
    .one `Route.RouteC,
    -- Route D: theta self-symmetry + Eutheos Object + desert → RH (THIS REPO)
    .one `Route.RouteD,
    -- Siegel zero-free
    .one `Siegel.SiegelZeroFree,
    -- SIEGEL ELEMENTARY: ζ has no real zeros in (0,1)
    .one `Siegel.SiegelZeroFreeElementary,
    .one `Siegel.SiegelZeroFreeRe1,
    -- SelfSymmetry layer (wraps local Family theorems)
    .one `SelfSymmetry.Core,
    .one `SelfSymmetry.Desert,
    .one `SelfSymmetry.JitterSymmetry,
    .one `SelfSymmetry.TwinWormhole,
    .one `SelfSymmetry.ClayWitness,
    .one `Protocol.Chain,
    .one `ContradictionRoute.LanglandsWeilTransfer,
    .one `ContradictionRoute.GrowthRepulsionBridge
  ]
