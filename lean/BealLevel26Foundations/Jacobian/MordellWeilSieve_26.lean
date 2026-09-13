import BealLevel26Foundations.Jacobian.ResidueDisks_26
import BealLevel26Foundations.Mazur.Chabauty0Actual_26
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26

namespace BealLevel26Foundations.Jacobian.MordellWeilSieve26

open BealLevel26Foundations.Jacobian.ResidueDisks26
open BealLevel26Foundations.Mazur.Chabauty0Actual26
open BealLevel26Foundations.Mazur.X026RationalPointsActual26

/-!
# v4.0.11 finite sieve package (not a Mordell--Weil sieve)

Mathlib 4.12 has no Mordell--Weil sieve and no scheme
`X₀(26)(ℚ)`.  The name `X0_26_Q_EqualsFourCuspsAsScheme` is a
*finite conjunction* of already-inhabited packages:

* `chabauty0Package` (rank-zero product, `M₃` input, cusp-point
  forall, `¬ fourCuspsForallAllKinds`, eight S-units);
* `ResidueDiskAt2ContainsOnlyCusp` (`M₃` and `det ≠ 0`).

That is not a scheme-theoretic theorem that `X₀(26)(ℚ)` equals
four cusps, and not a residue-disk sieve.  The displayed four-cusp
audit remains `X026RationalPointsActual_26`.  Typed `hGeomForbid`
stays uninhabitable.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
No new certificate.  Eight S-units remain not genuine `Sel₂`
(`sUnitAudit26_is_not_genuine_2Selmer`).  This file does not add
`theorem BealTheorem`.
-/

/-- Finite Chabauty-0 plus `M₃` package.  Not a scheme-theoretic
identification of `X₀(26)(ℚ)`. -/
def X0_26_Q_EqualsFourCuspsAsScheme : Prop :=
  chabauty0Package ∧ ResidueDiskAt2ContainsOnlyCusp

theorem X0_26_Q_EqualsFourCuspsAsScheme.certified :
    X0_26_Q_EqualsFourCuspsAsScheme :=
  ⟨chabauty0Package.certified, ResidueDiskAt2ContainsOnlyCusp.certified⟩

#print axioms X0_26_Q_EqualsFourCuspsAsScheme.certified

end BealLevel26Foundations.Jacobian.MordellWeilSieve26
