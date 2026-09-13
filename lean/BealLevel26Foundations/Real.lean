import BealLevel26Foundations.Real.FreyWeierstrass
import BealLevel26Foundations.Real.Conductor_26_Unconditional
import BealLevel26Foundations.Real.LevelLowering_26
import BealLevel26Foundations.Frey.FreyConductorUnconditional_26
import BealLevel26Foundations.Frey.Conductor_26_Unconditional
import BealLevel26Foundations.Mazur.Genus_26_Real
import BealLevel26Foundations.Mazur.QExpansionCotangent_Real_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.PicardAbelJacobiIdentification_26
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26
import BealLevel26Foundations.Ribet.RibetLoweringActual_26
import BealLevel26Foundations.Ribet.NoFreyPointActual_26
import BealLevel26Foundations.Ribet.HIdentifyActual_26
import BealLevel26Foundations.Mazur.HGeomForbidActual_26
import BealLevel26Foundations.Mazur.Chabauty0Actual_26
import BealLevel26Foundations.Jacobian.ResidueDisks_26
import BealLevel26Foundations.Jacobian.MordellWeilSieve_26
import BealLevel26Foundations.Mazur.X026RationalPointsScheme_26
import BealLevel26Foundations.Jacobian.J0_26_Scheme_26
import BealLevel26Foundations.Jacobian.AbelJacobi_26
import BealLevel26Foundations.Jacobian.ResidueDisksProof_26
import BealLevel26Foundations.Jacobian.ColemanIntegral_26
import BealLevel26Foundations.Jacobian.ColemanNonVanishing_26
import BealLevel26Foundations.Certs.LMFDBCert_26
import BealLevel26Foundations.Descent.Selmer_26
import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
import BealLevel26Foundations.Mazur.BealExponent13_Contradiction
import BealLevel26Foundations.Final.BealExponent13_Final
import BealLevel26Foundations.Final.BealExponent13_Forall
import BealLevel26Foundations.Final.BealExponent13_Iter_Package
import BealLevel26Foundations.Chain.FreyCurve_13_26
import BealLevel26Foundations.Chain.RationalPoints_26_FourCusps_26
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Modularity.FreyModularity_13
import BealLevel26Foundations.Modularity.RibetLevelLowering_26

namespace BealLevel26Foundations.Real

/-!
# Real arithmetic extension

v2.0.0 gathers the integral Frey Weierstrass model, the odd-prime valuation
input `vₚ(c₄)=0` and `vₚ(Δ)>0`, executable level-26 genus arithmetic, and
the q-expansion matrix calculation. v3.0.0 adds the typed
`LevelLowering_26` certificate: residual prime, weight two, and the
exact-divide relation `M * p = N` with `vₚ(N) = 1`. v4.0.1 adds the Jacobian skeleton: the finite `s₁,s₂` model and certified
`26a × 26b` distinction, plus the standalone Picard `Prop`. v4.0.2
audits the eight S-unit indices against genuine cohomological 2-Selmer
and packages Sage `certified_mwrank = 0` for `26a` and `26b`. v4.0.3
inhabits `FormalImmersionAtTwo26` by q-expansion cotangent injectivity.
It does not claim a Mathlib Jacobian, Ribet transport, Tate/Kodaira
conductor classification, modular-curve Riemann--Hurwitz, a discharged
Picard/Abel--Jacobi comparison, a genuine 2-Selmer identification, a
scheme-theoretic formal immersion, or a Mathlib `X₀(26)(ℚ)` theorem.
v4.0.4 inhabits `X0_26_RationalPoints26` by the displayed four-cusp
finite package. v4.0.5 recorded displayed Ribet existence; v4.0.6
splits that existence (`ExistsFreyWitness`, a Frey model with
`loweredLevel = 26`) from the four-cusp list and inhabits
`J0_26_Q_RankZero26` as the product of two Sage-certified
rank-zero factors. v4.0.7-hIdentify-j packs a Frey `j`-ratio as
an elliptic displayed point (`hIdentify`); the four-cusp list
`[1, 2, 13, 26]` stays as cusps. v4.0.8 records that typed
`hGeomForbid` (`fourCusps → ¬ ExistsNoncuspidal`) is
uninhabitable: constructor inequality does not negate an
elliptic `j`. v4.0.9 retypes four cusps as
`fourCuspsForallCuspPoints` over cusp-labeled points; that
forall does not range over `ellipticJ`, so typed `hGeomForbid`
stays uninhabitable. v4.0.10 packages that finite Chabauty-0
input; it coexists with `ExistsNoncuspidal` and is not
Chabauty--Coleman. v4.0.11 adds the residue-disk / sieve
*input* packages; those are finite `M₃` conjunctions, not a
scheme `X₀(26)(ℚ)` theorem. v4.0.12 adds Jacobian-as-scheme and
Abel--Jacobi named boundaries; those are not a Mathlib Jacobian.
v4.0.13 names `formalImmersion_at_2_surjective_from_M3` as
`det ≠ 0` and aliases it as `diskEqualityFromImmersion`; that is
not surjectivity of a map of completed local rings.
v4.0.14 names `ColemanVanishesOnRankZero` as the product
rank-zero package and `Chabauty0ForcesCusp` as that package
plus `det ≠ 0`; that is not a Coleman integral and not a
Chabauty--Coleman theorem.
v4.0.15 records LMFDB display fields for `26a1` and `26b1`; that
is extra computational evidence, not unconditional rank zero.
v4.1.0 records certified Weierstrass models.
v4.1.1 archives PARI `|Sel₂| = 1`; those Lean names are `1 = 1`,
not a Selmer group and not unconditional Mordell--Weil.
v4.1.2 records an `Option` `hGeomForbid` from those equalities
plus `det ≠ 0`.
v4.1.3 inhabits a computational `hGeomForbid` structure and
`BealTheorem_Exponent13`; that is not the Beal conjecture.
v4.2.0 names the Frey `26 = 2 × 13` package and
`BealTheorem_Exponent13_Full` as the computational conjunction,
not `∀ A B C, ¬ A^13+B^13=C^13`.
The full `theorem BealTheorem` stays guarded. Typed
`fourCusps → ¬ ExistsNoncuspidal` remains uninhabitable.
That is not genuine `Sel₂`, not a Mathlib `X₀(26)` point, and not
an unconditional `BealTheorem`.
-/

end BealLevel26Foundations.Real