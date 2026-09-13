import BealLevel26Foundations.Frey.FreyConductorData_26
import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.Mazur.Genus_26_Scaffold
import BealLevel26Foundations.Mazur.QExpansionCotangent_Scaffold_26
import BealLevel26Foundations.Ribet.LevelLowering_26
import BealLevel26Foundations.Mazur.EndgameScaffold
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

namespace BealLevel26Foundations.Scaffold

/-!
# Explicit bridge scaffold

This entrypoint gathers the named Frey-conductor, genus,
Abel--Jacobi/q-expansion, and Mazur-endgame boundaries, including the
v4.0.4 displayed four-cusp package, the v4.0.5/v4.0.6 split
between Ribet existence (`ExistsFreyWitness`) and the four-cusp
list, the v4.0.6 product rank-zero package, and the v4.0.7-j
finite `j`-invariant encoding of typed `hIdentify`, the
v4.0.8 record that typed `hGeomForbid` is uninhabitable, and the
v4.0.9 cusp-point forall `fourCuspsForallCuspPoints`, and the
v4.0.10 Chabauty-0 finite package, and the
v4.0.11 residue-disk / sieve *input* packages, the
v4.0.12 Jacobian-as-scheme / Abel--Jacobi *boundaries*, and the
v4.0.13 named `det ≠ 0` formal-immersion / disk-equality
aliases, and the v4.0.14 named rank-zero / `det ≠ 0`
Chabauty-0 conjunction, and the v4.0.15 LMFDB *display*
package, and the v4.1.0 / v4.1.1 Descent Weierstrass and
displayed PARI `|Sel₂| = 1` names, and the v4.1.3
computational `hGeomForbid` structure plus
`BealTheorem_Exponent13`. It is
separate from the unconditional computable v1 entrypoint.
Typed `hIdentify` packs a Frey `j` as an elliptic displayed
point, not as `26 ∉ [1, 2, 13, 26]`. Constructor inequality
`ellipticJ ≠ cuspDivisor` does not Lean-negate
`ExistsNoncuspidal`. The inhabited forall ranges over
cusp-labeled points, not over `ellipticJ`. Typed
`fourCusps → ¬ ExistsNoncuspidal` remains uninhabitable.
`BealTheorem_Exponent13` is the computational package, not the
Beal conjecture. The full `theorem BealTheorem` stays guarded.
v4.2.0 adds Chain Frey / four-cusp *names* and
`BealTheorem_Exponent13_Full` as that conjunction, not
`∀ A B C, ¬ A^13+B^13=C^13`.
The Chabauty-0 package coexists with
`ExistsNoncuspidal`; it is not Chabauty--Coleman. There is no
unconditional `BealTheorem` here.
-/

def status : String :=
  "explicit named bridges; not claimed unconditional"

end BealLevel26Foundations.Scaffold