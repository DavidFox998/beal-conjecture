import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Modularity.FreyModularity_13

namespace BealLevel26Foundations.Frey.FreyModularity13

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Frey.FreyCurve13
open BealLevel26Foundations.Modularity.FreyModularity13

/-!
# v4.42.0 WeierstrassModularity bridge

`Modularity` is `Type → Prop`.  It applies to
`FreyCurve13 A B C`.  A `WeierstrassCurve Int` value has
coefficients `a₁…a₆`, not `.A .B .C`, so
`Modularity (FreyCurve13 c.A c.B c.C)` does not type-check.

`WeierstrassModularity c` is displayed modularity of the
shared bases whose working-prime pack *is* `c`.  That makes

`WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`

a valid type.  It is not Wiles--Taylor and not modularity of
the Weierstrass coefficients.  `WeierstrassModularity_of_pack`
is the existing axiom `frey_modular_13 w.A w.B w.C`.

v5.2.0 adds `WeierstrassModularity_of_pack_from_R_T`
via `Modularity.displayed_from_R_T`, **not** via that
axiom.  Not Wiles–Taylor / BCDT.

Does **not** import Forall (cycle).  Does **not** add an axiom.
-/

/-- Displayed `Modularity (FreyCurve13 w.A w.B w.C)` for a
witness that `c` is the working-prime pack of `w`.
`WeierstrassCurve` has no `.A`. -/
def WeierstrassModularity (c : WeierstrassCurve Int) : Prop :=
  ∃ (w : BealCounterexampleBases),
    c = FreyCurve13_of_BealCounterexampleBases w ∧
      Modularity (FreyCurve13 w.A w.B w.C)

/-- Existing axiom on the displayed triple, packaged so the
Weierstrass *value* is a valid `WeierstrassModularity`
argument.  Not a new computational assumption. -/
theorem WeierstrassModularity_of_pack
    (w : BealCounterexampleBases) :
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) :=
  ⟨w, rfl, frey_modular_13 w.A w.B w.C⟩

/-- v5.2.0: same type as `WeierstrassModularity_of_pack`,
from the displayed `R = T` token, **not** from
`frey_modular_13`.  Not Wiles–Taylor / BCDT. -/
theorem WeierstrassModularity_of_pack_from_R_T
    (w : BealCounterexampleBases) :
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) :=
  ⟨w, rfl, Modularity.displayed_from_R_T w.A w.B w.C⟩

#check WeierstrassModularity
#check WeierstrassModularity_of_pack
#check WeierstrassModularity_of_pack_from_R_T
#print axioms WeierstrassModularity_of_pack
#print axioms WeierstrassModularity_of_pack_from_R_T
#check frey_modular_13

end BealLevel26Foundations.Frey.FreyModularity13
