namespace BealLevel26Foundations.Base.BealCounterexampleBase

/-!
# v4.39.0 shared bases (no equation)

`BealCounterexampleBases` is only `A B C`.  No exponents, no
equation.  Primitivity is a derived Prop (`IsPrimitive`),
not a structure field.  Frey and Forall both import this
file so `Frey/FreyCurve13.lean` does not import Forall.

This is not a Beal counterexample and not a Frey curve.
-/

/-- Shared bases only.  Not `BealCounterexample` (no equation). -/
structure BealCounterexampleBases where
  A : Nat
  B : Nat
  C : Nat

/-- Displayed `gcd(A, gcd(B, C))`.  Bases are not packed
witnesses and are not primitive-by-definition.  This can
be `1` even when `13 ∣ A*B*C`. -/
def BealCounterexampleBases.gcd (w : BealCounterexampleBases) : Nat :=
  Nat.gcd w.A (Nat.gcd w.B w.C)

/-- Derived primitivity.  Not a structure field. -/
def IsPrimitive (w : BealCounterexampleBases) : Prop :=
  w.gcd = 1

/-- Alias of `IsPrimitive`. -/
def IsPrimitiveBases (w : BealCounterexampleBases) : Prop :=
  IsPrimitive w

/-- Bases with displayed `gcd = 1`.  Not a packed witness. -/
def BealPrimitiveCounterexampleBases : Type :=
  { w : BealCounterexampleBases // IsPrimitive w }

#check BealCounterexampleBases
#check BealCounterexampleBases.gcd
#check IsPrimitive
#check IsPrimitiveBases
#check BealPrimitiveCounterexampleBases

end BealLevel26Foundations.Base.BealCounterexampleBase
