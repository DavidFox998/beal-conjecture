/-
      Galois/04_LevelLowering — the level-lowering transport boundary

      This file states the exact proposition that a genuine Ribet
      level-lowering theorem would need to establish. It deliberately defines
      the proposition instead of declaring an admitted theorem.

      Tate's local conclusion p ∣ N and p² ∤ N does NOT imply residual
      unramifiedness. The hypothesis `hUnram` is therefore explicit and
      separate. This preserves the odd-prime v4.1.0 boundary, including p = 3.
-/
import Beal.Galois.«01_Absolute»
import Beal.Galois.«02_ResidualRep»
import Beal.Galois.«03_ModLForm»
import Beal.B14_FreyTate
import Beal.B03_Conductor_Core

namespace Beal.Galois

open Beal.FreyTate

/-- The proposition required for one honest Ribet level-lowering step.

    The result keeps the same Frey model, residual prime, and representation.
    It asks only for a mod-ℓ form at the divided level whose finite
    q-expansion realizes the same representation. No proof of this
    proposition is supplied here. -/
def frey_level_lowering_of_unramified
    {A B C : ℤ} {x y z : ℕ}
    (model : FreyCurveModel A B C x y z)
    (ℓ N p M : ℕ)
    (hDiv : M * p = N)
    (hExact : ExactDividesCore p N)
    (hPrime : p.Prime)
    (hOdd : p ≠ 2)
    (R : FreyResidualRepresentation model ℓ)
    (I : InertiaSubgroup R.Gabs p)
    (hUnram : IsFreyUnramifiedAt R p I)
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (hReal : ModLRealizesRepresentation W R) : Prop :=
  ∃ W' : ModLWeightTwoForm (model := model) M ℓ,
    ModLRealizesRepresentation W' R

/-
  This is the Ribet transport statement. A future proof must supply, rather
  than assume silently, the missing Hecke-algebra and newform premises. In
  proof-outline form those obligations are:

    have hHecke : HeckeAlgebraLevelLoweringData model ℓ N p M := ...
    have hNewform : NewformAtLevel M W' := ...
    have hTransport :
        ModLRealizesRepresentation W' R := ...

  These types are intentionally not declared here: Hecke algebra, newform,
  and complex-analytic cusp-form infrastructure are not present in Mathlib
  v4.12 at this boundary. In particular, this definition is not an axiom and
  does not remove or replace `ribet_single_step`.
-/

#print axioms frey_level_lowering_of_unramified
-- Expected: propext, Quot.sound only.

end Beal.Galois