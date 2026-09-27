import Lake
open Lake DSL

package beal_matveev_beal where
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.12.0"

/-- Relocated v24.4.0 package (DOI 10.5281/zenodo.22732209, db7a556).
    Modules are `BealLevel26Foundations.Beal.FullProof.*`.
    `BealConjecture.Level26.BealLevel26Foundations.*` are local wrappers.
    Vendored from beal-conjecture @ `fea0c393` subdirectory
    `Level26/BealLevel26Foundations` (not the full clone).
    This repo stays foundations-level-26. -/
require beal_level_26_foundations from "Level26/BealLevel26Foundations"

/-- Re-export wrappers so the requested import path resolves. -/
lean_lib BealConjecture where
  globs := #[.submodules `BealConjecture]

/-- Non-default general-proof work. These modules contain checked
    invariant and low-local results, but no general Beal certificate. -/
lean_lib BealGeneral where
  globs := #[.one `Beal.«Beal.General».Frey,
    .one `Beal.«Beal.General».Minimal,
    .one `Beal.«Beal.General».LocalHeight,
    .one `Beal.«Beal.General».PrincipalIdealTheorem,
    .one `Beal.«Beal.General».HeightInduction,
    .one `Beal.«Beal.General».HeightThree,
    .one `Beal.«Beal.General».HeightThreeSurface,
    .one `Beal.«Beal.General».TateEisenstein,
    .one `Beal.«Beal.General».TateSplitNode,
    .one `Beal.«Beal.General».TateI1Split,
    .one `Beal.«Beal.General».TateI1Classification,
    .one `Beal.«Beal.General».GenericFibreNonsingular,
    .one `Beal.«Beal.General».SpecialFibreSmoothLocus,
    .one `Beal.«Beal.General».TateI1MinimalRegularModel,
    .one `Beal.«Beal.General».InfinityChartJacobian,
    .one `Beal.«Beal.General».TwoChartGlobalMorphism,
    .one `Beal.«Beal.General».TargetOpenPreimages,
    .one `Beal.«Beal.General».GlobalClosedImmersion,
    .one `Beal.«Beal.General».TateEvenBranch,
    .one `Beal.«Beal.General».TateReduction,
    .one `Beal.«Beal.General».Conductor,
    .one `Beal.«Beal.General».TwoPower,
    .one `Beal.«Beal.General».Modularity]

@[default_target]
lean_lib «BealMatveevBeal» where
  globs := #[.submodules `Beal.Matveev, .one `MatveevThm14Proof, .one `MatveevLLL,
    .one `MatveevInterpolation, .one `MatveevBugeaud, .one `WuestholzSubgroup,
    .one `WuestholzProduct, .one `MatveevThreeLogs, .one `BealKraus, .one `BealKrausZsig,
    .one `BealCatalanZsig, .one `BealDarmonMerel, .one `BealDarmonMerel44p,
    .one `BealFLT13, .one `BealGenuineV25, .one `BealTrueV25,
    .one `BealUnconditionalV25, .one `BealGap1, .one `BealGap2, .one `BealGap4,
    .one `BealGap5, .one `BealGap6, .one `BealGap7, .one `BealGap8,
    .one `BealGap9, .one `BealGap10, .one `BealGap11, .one `BealGap12,     .one `BealGap13,
    .one `BealGap14, .one `BealGap15, .one `BealGapK,
    .one `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6,
    .one `BugeaudLaurent, .one `PAdicLLL, .one `PAdicLLL_ZeroAxiom]

/-- Rank-3 v25 *shape* wrappers. Not the default target: keeps
    `lake build BealMatveevBeal` independent of this file. Does
    not mint v25. -/
lean_lib «BealMatveevBealV25Rank3» where
  globs := #[.one `BealMatveevBealV25Rank3]

/-- Gap-3 `B ≤ B0` search slice. Not the default target. Does
    not mint v25. Does not claim the full million-B search.
    `Gap3B0Million` is the foldl wiring for 10k shards of 100;
    those shards are not `native_decide`'d.
    `LLLTargetB8_C1_lower_bound` is `C1' ≤ 8` impossible on a
    solution via `|Λ| ≤ 2/B⁹`; `¬ LLL_reduces_C1_to_lt_nine`
    stays `def Prop`. `DarmonMerelFrey4413` is the displayed
    Frey curve for signature `(4,4,13)`; level-32 table stays
    `def Prop`. `Level32Table` is LMFDB `32a1` q-exp by
    `𝔽_p` point counts; `level_32_no_newform` stays `def Prop`.
    `Level928Table` is the `29 ∣ ABC` split and displayed residual
    `928`; the 77-row table stays `def Prop`. `Ribet29C_Lowering`
    is `29 ∣ C` plus the `l=7` residue `(2,3)`; Ribet stays
    `def Prop`. `Ribet29C_Residue16` is `l=11` on residue
    `(1,6)`; that class is mixed at `11` and stays `def Prop`.
    `Ribet29C_Residue16_L23` is `l=23` on the same class; mixed
    (`a₂₃=0` matches, not `−6`) and stays `def Prop`.
    `MazurIrreducibility13` inhabits `v₂₉(j)≤−26` on `29 ∣ C`;
    Mazur/Ribet/image stay `def Prop`. `Inertia29Unramified`
    inhabits `v₂₉(c₄)=0` and Tate numerics; Kodaira/Ribet inertia
    stay `def Prop`. `SerreImage13` inhabits `32a1` `j=1728`;
    CM image / Serre open image stay `def Prop`.
    `MazurIrreducibilityFull` / `TateGalois` / `SerreImageFull`
    name the four Mathlib gaps as `def Prop` and re-export the
    `9030063` numerics.
    `Mazur_X0_13_RationalPoints` inhabits the Fricke `j`-map and
    `𝔽₂₉` scans; Mazur via `X₀(13)` stays `def Prop`.
    `Tate_I29_Inertia` inhabits `Padic.valuation Δ = 26 v(C)` and
    the truncated `j(q)` valuation `v(j⁻¹)=26k`; Tate
    uniformization / inertia stay `def Prop`.
    `Ribet_Level32` inhabits `928/29=32` and `29 ∤ 32`;
    abstract Ribet / Frey-needs-Wiles stay `def Prop`.
    `Serre_Large_vs_CM_Small` inhabits `2²+3²=13` and Cartan
    `2(12)²=288`; image `≤48` / Frey iso stay `def Prop`.
    `X0_26_Full2Torsion` inhabits the Frey cubic split
    (`E[2]` roots in `ℚ`), LMFDB `26.42.2.a.1` Weierstrass,
    González even model `(0,±1)`, Cremona `26a1`/`26b1`
    discriminants, displayed `|Sel₂|=1` with `2⁰=1`, and
    torsion Nats `3`/`7`; Kenku / Chabauty / mwrank /
    `|J₀(26)(ℚ)|=21` stay `def Prop`.
    `TwoDescent_26a1_26` relocates the lake-package kernel
    (displayed `|Sel₂|=1`, Sage `certified_mwrank` Nat `0`,
    `1=1→0=0` on those Nats); Jacobian rank 0 stays
    `def Prop` on `X0_26_Full2Torsion`.
    `J0_26_BSD_26a1_26b1` inhabits Cremona `26a1`/`26b1`
    discriminants and BSD quotients `1/3`,`1/7`; Kolyvagin
    rank 0 stays `def Prop`.
    `BSD_MordellWeil` re-exports Mathlib `Point` commutativity
    and constructs `(4,4)`/`(1,0)` as affine `Point`s;
    pasted `IsRankZero` is Subsingleton and is **refuted** on
    both models; `MW_rank_zero` / `BSD_rank_statement` stay
    `def Prop`.
    `Tate_Frey_Conductor_29` re-exports displayed `Δ` and the
    `32`/`928` split; Tate’s algorithm / Néron stay `def Prop`.
    `Mazur_X0_13_No_Isogeny` inhabits genus-0 / `|SL₂|=2184`
    numerals; `X₀(13)(ℚ)` infinite / Frey 13-isogeny stay
    `def Prop` (the `{2 cusps}` paste is not a theorem).
    `Ribet_Level_Lowering_29_to_32` re-exports `928/29=32`;
    abstract Ribet / no-newforms stay `def Prop`.
    `Kolyvagin_MW_Rank0_26a1_26b1` names `Fintype` rank 0
    (not Subsingleton); Kato/Kolyvagin stay `def Prop`. -/
lean_lib «BealMatveevBealV25B0Search» where
  globs := #[.one `BealMatveevBealV25B0Search, .one `LLLTargetB8, .one `Gap3B0Million,
    .one `LLLTargetB8_C1_lower_bound, .one `DarmonMerelFrey4413, .one `Level32Table,
    .one `Level928Table, .one `Ribet29C_Lowering, .one `Ribet29C_Residue16,
    .one `Ribet29C_Residue16_L23, .one `MazurIrreducibility13,
    .one `Inertia29Unramified, .one `SerreImage13,
    .one `MazurIrreducibilityFull, .one `TateGalois, .one `SerreImageFull,
    .one `Mazur_X0_13_RationalPoints, .one `Tate_I29_Inertia, .one `Ribet_Level32,
    .one `Serre_Large_vs_CM_Small, .one `TwoDescent_26a1_26,
    .one `X0_26_Full2Torsion, .one `BSD_MordellWeil, .one `J0_26_BSD_26a1_26b1,
    .one `Tate_Frey_Conductor_29, .one `Tate_Frey_Conductor_29_Numerical,
    .one `Mazur_X0_13_No_Isogeny, .one `Mazur_X0_13_Numerical,
    .one `Ribet_Level_Lowering_29_to_32, .one `Ribet_928_to_32_Numerical,
    .one `Kolyvagin_MW_Rank0_26a1_26b1, .one `Kolyvagin_MW_Rank0_Numerical,
    .one `TateCurve.TateParameter, .one `TateCurve.TateUniformization,
    .one `TateCurve.NeronConductor, .one `TateCurve.InertiaRepresentation,
    .one `TateCurve.BlockerDoc, .one `TateCurve.ClosureContinued,
    .one `TateCurve.Neron32_928InertiaQ13,
    .one `MazurCurve.X0_13_Moduli, .one `MazurCurve.FreyJInvariant,
    .one `MazurCurve.GaloisRepresentation, .one `MazurCurve.BlockerDoc,
    .one `MazurCurve.X0_13FreyJBorel,
    .one `RibetCurve.Modularity, .one `RibetCurve.GaloisRep,
    .one `RibetCurve.Conductor, .one `RibetCurve.LevelLowering,
    .one `RibetCurve.Newform32, .one `RibetCurve.KrausElimination,
    .one `RibetCurve.Ribet32a1KrausA29,
    .one `RibetCurve.BlockerDoc,
    .one `KolyvaginCurve.LFunction, .one `KolyvaginCurve.Periods,
    .one `KolyvaginCurve.KatoKolyvagin, .one `KolyvaginCurve.FiniteGeneration,
    .one `KolyvaginCurve.SelmerExactSequence, .one `KolyvaginCurve.MordellWeilFintype,
    .one `KolyvaginCurve.TwoDescent,
    .one `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype,
    .one `KolyvaginCurve.BlockerDoc,
    .one `Conditional32Newform.Bridge,
    .one `Conditional32Newform.BridgeForward,
    .one `RequiresTateMazurRibetFor32.Doc,
    .one `RequiresTateMazurRibetFor32.ForwardDoc,
    .one `BealFinal.Main,
    .one `BealMatveevBealV25B0Search.Forward]
