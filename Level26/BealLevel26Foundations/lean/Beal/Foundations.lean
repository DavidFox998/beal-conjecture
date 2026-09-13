import Beal.Foundations.J0_26_Decomp
import Beal.Foundations.J0DecompositionCertificate
import Beal.Foundations.FormalImmersionM3
import Beal.Foundations.FormalImmersionM3Certificate
import Beal.Foundations.LevelLowering_26
import Beal.Foundations.EndgameScaffold
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

namespace Beal.Foundations

/-!
# Beal Foundations v1.4.0 certificate bridge, plus v3 typed LevelLowering

Certificate bridge for the SageMath J₀(26) decomposition and finite M₃ data.
`FormalImmersionM3` checks `M₃ = [[1, 1], [0, 2]]` and `det = 2` over
`ZMod 3` against the ledger. `LevelLowering_26` is typed certificate data
for representation, level, and the exact-divide relation; it is not a
Ribet theorem. The Mazur endgame scaffold concludes `BealTheorem` only
from four named structures plus v2 Frey and v3 lowering. The v4.0.2
S-unit audit retains all eight indices and is not genuine 2-Selmer.
v4.0.3 inhabits `FormalImmersionAtTwo26` from q-expansion cotangent
injectivity; that is not a scheme-theoretic immersion. v4.0.4 inhabits
`X0_26_RationalPoints26` from the displayed four-cusp package; that is
not a Mathlib `X₀(26)(ℚ)` theorem. v4.0.5 recorded displayed
Ribet existence. v4.0.6 splits that existence
(`ExistsFreyWitness`) from the four-cusp list and inhabits
`J0_26_Q_RankZero26` as the product of two Sage-certified
rank-zero factors. That does not identify eight S-units with
genuine 2-Selmer. v4.0.7-hIdentify-j packs a Frey `j`-ratio as
an elliptic displayed point; four cusp labels stay as cusps.
v4.0.8 records that typed `hGeomForbid` is uninhabitable.
v4.0.9 retypes four cusps as `fourCuspsForallCuspPoints` over
cusp-labeled points; a forall over all displayed kinds is
false. Typed `hGeomForbid` stays uninhabitable.
v4.0.10 adds the Chabauty-0 finite package; it is not
Chabauty--Coleman and does not inhabit typed `hGeomForbid`.
v4.0.11 adds residue-disk / sieve *input* packages; those are
not a scheme-theoretic `X₀(26)(ℚ)` theorem.
v4.0.12 adds Jacobian-as-scheme and Abel--Jacobi named
boundaries; those are not a Mathlib Jacobian and are not
inhabited.
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
No domain axiom is introduced. Geometric Jacobian, genuine
cohomological Selmer, Picard, Tate, scheme-theoretic Ribet
existence, a Mathlib `X₀(26)` point, and an unconditional
`BealTheorem` remain named later milestones.
-/

def release : String :=
  "v1.4.0"

theorem release_eq : release = "v1.4.0" :=
  rfl

end Beal.Foundations
