import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_Scheme_26
import BealLevel26Foundations.Jacobian.AbelJacobi_26

namespace BealLevel26Foundations.Jacobian.ResidueDisksProof26

open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_Scheme26
open BealLevel26Foundations.Jacobian.AbelJacobi26

/-!
# v4.0.13 disk-equality *name* from `det ≠ 0` (not a residue disk)

`diskEqualityFromImmersion` is an alias of
`formalImmersion_at_2_surjective_from_M3`, which is
`FormalImmersionAtTwo26.of_qExpansion.input.det ≠ 0` over `ZMod 3`.

Blueprint citation: Mazur 1978 Prop III.3.2 checks formal
immersion at `p = 2` via the q-expansion matrix modulo 3.  This
file does not prove that every rational point in the same mod-2
residue disk as a cusp is that cusp.  It is not a residue-disk
theorem and not equality of rational points.

Track A named boundaries `J0_26_Scheme_26` and `AbelJacobi_26`
are imported as context and remain uninhabited Types.  Mathlib
4.12 has no residue-disk API.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
This file does not add `theorem BealTheorem`.
-/

/-- Alias of `formalImmersion_at_2_surjective_from_M3`.
Not a residue-disk theorem. -/
def diskEqualityFromImmersion : Prop :=
  formalImmersion_at_2_surjective_from_M3

theorem diskEqualityFromImmersion.certified :
    diskEqualityFromImmersion :=
  formalImmersion_at_2_surjective_from_M3.certified

#check J0_26_Scheme_26
#check AbelJacobi_26
#print axioms diskEqualityFromImmersion.certified

end BealLevel26Foundations.Jacobian.ResidueDisksProof26
