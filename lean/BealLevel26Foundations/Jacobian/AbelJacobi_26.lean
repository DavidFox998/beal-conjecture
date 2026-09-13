import BealLevel26Foundations.Jacobian.J0_26_Scheme_26
import BealLevel26Foundations.Mazur.EndgameScaffold

namespace BealLevel26Foundations.Jacobian.AbelJacobi26

open BealLevel26Foundations.Jacobian.J0_26_Scheme26
open BealLevel26Foundations.Mazur.EndgameScaffold

/-!
# v4.0.12 Abel--Jacobi *boundary*

The geometric map is `ι : X₀(26) → J₀(26)` sending the infinity
cusp to the origin, with cuspidal points landing in the torsion
subgroup.  Mathlib 4.12 has no modular-curve point type and no
Abel--Jacobi map.

`AbelJacobi_26` is premise-bearing data attached to a supplied
`J0_26_Scheme`.  This module does not construct `ι`, does not
inhabit the boundary as `True`, and does not add placeholders.

Blueprint: Rohrlich on the cuspidal divisor class group; Mumford,
*Abelian Varieties*.  See
`BealLevel26Foundations/Blueprint/README.md`.

The displayed cusp labels `[1, 2, 13, 26]` remain the v4.0.4
audit in `X026RationalPointsActual_26`.  That file is unchanged.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
This file does not add `theorem BealTheorem`.
-/

/-- Named Abel--Jacobi boundary.  Not a map of schemes. -/
structure AbelJacobi_26 where
  target : J0_26_Scheme_26
  sendsInfinityCuspToZero : Prop
  sendsInfinityCuspToZero_witness : sendsInfinityCuspToZero
  cuspImageTorsion : Prop
  cuspImageTorsion_witness : cuspImageTorsion

/-- Formal property recorded on a supplied boundary: cuspidal
image is torsion *data*, not a Mathlib torsion theorem. -/
theorem AbelJacobi_26.cusp_image_is_supplied_torsion
    (ι : AbelJacobi_26) :
    ι.cuspImageTorsion :=
  ι.cuspImageTorsion_witness

theorem AbelJacobi_26.infinity_cusp_to_zero
    (ι : AbelJacobi_26) :
    ι.sendsInfinityCuspToZero :=
  ι.sendsInfinityCuspToZero_witness

#check AbelJacobi_26
#print axioms AbelJacobi_26.cusp_image_is_supplied_torsion
#print axioms AbelJacobi_26.infinity_cusp_to_zero

end BealLevel26Foundations.Jacobian.AbelJacobi26
