import BealLevel26Foundations.Jacobian.J0_26_Scheme_26
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26

namespace BealLevel26Foundations.Jacobian.ColemanIntegral26

open BealLevel26Foundations.Jacobian.J0_26_Scheme26
open BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26

/-!
# v4.0.14 Coleman *name* from the rank-zero product (not a Coleman integral)

Blueprint citation: Coleman 1985 on p-adic integration.  For
`ω ∈ H⁰(X₀(26), Ω¹)` one would define `∫ : J₀(26)(ℚ₂) → ℚ₂`.
When `rank(J₀(26)(ℚ)) = 0`, that integral would vanish on
`J₀(26)(ℚ)` because the Mordell--Weil group is torsion.

Mathlib 4.12 has no `ℚ₂` Coleman integral and no
`H⁰(X₀(26), Ω¹)`.  `ColemanVanishesOnRankZero` is the already
certified product rank-zero package
`J0_26_Q_RankZero26.of_qExpansion.rankZero` (Sage
`certified_mwrank = 0` on `26a` and `26b`).  It is not a
Coleman integral and not a theorem that an integral vanishes on
`J₀(26)(ℚ)`.

`J0_26_Scheme_26` is imported as a Track A named boundary and
remains an uninhabited Type.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
This file does not add `theorem BealTheorem`.
-/

/-- Named rank-zero package.  Not a Coleman integral. -/
def ColemanVanishesOnRankZero : Prop :=
  J0_26_Q_RankZero26.of_qExpansion.rankZero

theorem ColemanVanishesOnRankZero.certified :
    ColemanVanishesOnRankZero :=
  J0_26_Q_RankZero26.of_qExpansion_replaces_premise

/-- Alias of `ColemanVanishesOnRankZero`.  Named boundary:
Mathlib 4.12 has no `ℚ₂` Coleman integral.  Premise-bearing
name only.  Not a Coleman integral. -/
def ColemanIntegralVanishes : Prop :=
  ColemanVanishesOnRankZero

#check J0_26_Scheme_26
#print axioms ColemanVanishesOnRankZero.certified

end BealLevel26Foundations.Jacobian.ColemanIntegral26
