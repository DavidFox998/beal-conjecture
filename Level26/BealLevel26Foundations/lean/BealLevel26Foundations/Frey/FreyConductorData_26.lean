import Mathlib.Data.Nat.Factorization.Basic

namespace BealLevel26Foundations.Frey.FreyConductorData26

/-!
# Explicit Frey-conductor bridge data

This module does not construct the conductor of a Frey curve and does not
formalize Tate's algorithm. It packages those missing mathematical inputs as
data supplied to downstream theorems. No global axiom is introduced and no
unconditional conductor theorem is claimed.
-/

/-- Conductor information needed by the level-26 route.

`radical` is intended to be `rad (A * B * C)`. That interpretation, the
construction of the conductor, and odd-prime Tate Step 2 remain external to
this finite scaffold. -/
structure FreyConductorData_26 where
  freyConductor : Nat
  twoAdicExponent : Nat
  radical : Nat
  twoAdicExponent_le_five : twoAdicExponent ≤ 5
  tateStep2External : Prop
  tateStep2Witness : tateStep2External
  conductor_divides :
    freyConductor ∣ 2 ^ twoAdicExponent * radical

/-- The conductor divisibility follows from supplied bridge data. -/
theorem Frey_conductor_of_data (d : FreyConductorData_26) :
    d.freyConductor ∣ 2 ^ d.twoAdicExponent * d.radical :=
  d.conductor_divides

/-- The 2-adic bound is explicit data rather than a hidden theorem. -/
theorem two_adic_exponent_le_five_of_data (d : FreyConductorData_26) :
    d.twoAdicExponent ≤ 5 :=
  d.twoAdicExponent_le_five

#print axioms Frey_conductor_of_data
#print axioms two_adic_exponent_le_five_of_data

end BealLevel26Foundations.Frey.FreyConductorData26