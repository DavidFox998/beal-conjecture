import BealLevel26Foundations.Jacobian.ColemanIntegral_26
import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.ResidueDisksProof_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Jacobian.ColemanNonVanishing26

open BealLevel26Foundations.Jacobian.ColemanIntegral26
open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.ResidueDisksProof26

/-!
# v4.0.14 Chabauty-0 *name* from rank zero plus `det ≠ 0`

When the formal-immersion matrix `M₃ = [[1, 1], [0, 2]]` has
`det = 2 ≠ 0` over `ZMod 3`, Mazur's argument would treat a
differential `ω` as non-vanishing on a residue disk.  Combined
with a vanishing Coleman integral on `J₀(26)(ℚ)`, a rational
point in the same mod-2 disk as a cusp would have to be that
cusp.

`DifferentialNonZeroOnDisk` is
`FormalImmersionAtTwo26.of_qExpansion.input.det ≠ 0`.  That is
the Track B `det ≠ 0` package, not a non-vanishing theorem for
a differential on a disk.

`Chabauty0ForcesCusp` is
`ColemanVanishesOnRankZero ∧ DifferentialNonZeroOnDisk`: the
Sage rank-zero product together with `det ≠ 0`.  It is not a
Chabauty--Coleman theorem and not
`∀ P : X₀(26)(ℚ), P` in the same mod-2 disk as a cusp `→ P`
equals that cusp.  Mathlib 4.12 has no such point type.

`diskEqualityFromImmersion` is the Track B alias of `det ≠ 0`
and is imported as context.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
This file does not add `theorem BealTheorem`.  Typed
`hGeomForbid` remains uninhabitable.
-/

/-- Named `det ≠ 0` package.  Not a differential on a disk. -/
def DifferentialNonZeroOnDisk : Prop :=
  FormalImmersionAtTwo26.of_qExpansion.input.det ≠ 0

/-- `input.det = 2` over `ZMod 3`; `2 ≠ 0` by `decide`.
There is no `FormalImmersionAtTwo26.qExpansionM3` to unfold. -/
theorem DifferentialNonZeroOnDisk.certified :
    DifferentialNonZeroOnDisk := by
  unfold DifferentialNonZeroOnDisk
  rw [FormalImmersionAtTwo26.of_qExpansion.input_det]
  decide

/-- Rank-zero product plus `det ≠ 0`.  Not a Chabauty--Coleman
theorem. -/
def Chabauty0ForcesCusp : Prop :=
  ColemanVanishesOnRankZero ∧ DifferentialNonZeroOnDisk

theorem Chabauty0ForcesCusp.certified : Chabauty0ForcesCusp :=
  ⟨ColemanVanishesOnRankZero.certified,
    DifferentialNonZeroOnDisk.certified⟩

#check diskEqualityFromImmersion
#print axioms Chabauty0ForcesCusp.certified

end BealLevel26Foundations.Jacobian.ColemanNonVanishing26
