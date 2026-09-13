import BealLevel26Foundations.Jacobian.MordellWeilSieve_26
import BealLevel26Foundations.Mazur.EndgameScaffold

namespace BealLevel26Foundations.Mazur.X026RationalPointsScheme26

open BealLevel26Foundations.Jacobian.MordellWeilSieve26
open BealLevel26Foundations.Mazur.EndgameScaffold

/-!
# v4.0.11 second Mazur-premise inhabitant (not `X₀(26)(ℚ)`)

This inhabits `X0_26_RationalPoints26` by the finite sieve
package `X0_26_Q_EqualsFourCuspsAsScheme`.  That package is
`chabauty0Package ∧ ResidueDiskAt2ContainsOnlyCusp`, not a
forall over Mathlib `X₀(26)(ℚ)` and not a forall over residue
disks.

The displayed-cusp audit
`X0_26_RationalPoints26.of_qExpansion` in
`X026RationalPointsActual_26` is unchanged.  This file does not
replace that audit and does not inhabit typed `hGeomForbid`.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
This file does not add `theorem BealTheorem`.
-/

/-- Finite-package inhabitant of the Mazur four-cusp premise.
Not a scheme-theoretic rational-point theorem. -/
def X0_26_RationalPoints26_as_scheme : X0_26_RationalPoints26 where
  displayedCuspCount := 4
  displayedCuspCount_eq_four := rfl
  rationalPointsAreFourCusps := X0_26_Q_EqualsFourCuspsAsScheme
  ofRankZeroAndImmersion := fun _ _ =>
    X0_26_Q_EqualsFourCuspsAsScheme.certified

theorem X0_26_RationalPoints26_as_scheme.certified :
    X0_26_Q_EqualsFourCuspsAsScheme :=
  X0_26_Q_EqualsFourCuspsAsScheme.certified

#print axioms X0_26_RationalPoints26_as_scheme.certified

end BealLevel26Foundations.Mazur.X026RationalPointsScheme26
