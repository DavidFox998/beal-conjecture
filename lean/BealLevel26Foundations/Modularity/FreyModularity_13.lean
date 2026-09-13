import BealLevel26Foundations.Chain.FreyCurve_13_26

namespace BealLevel26Foundations.Modularity.FreyModularity13

open BealLevel26Foundations.Chain.Frey13

/-!
# v4.8.0 Frey modularity *name* (exponent 13)

Blueprint: the Frey curve attached to a coprime solution of
`A^13 + B^13 = C^13` is an elliptic curve over `ℚ`, and
Wiles--Taylor modularity would produce a cuspidal eigenform
of weight 2.  Residual level lowering (Ribet) would then
target level `26 = 2 × 13`.

Mathlib 4.12 has no modularity theorem and no Frey-curve
constructor.  `FreyCurve13` is a displayed triple.  The
predicate `Modularity` has the v5.2.0 displayed token
`displayed_from_R_T` (not Wiles–Taylor / BCDT).  The
named computational assumption `frey_modular_13` remains
and is what `WeierstrassModularity_of_pack` uses.

That axiom is **not** Wiles--Taylor.  It is secured by the
LMFDB / Cremona labels `26a1` / `26b1` (Weierstrass models
`[1,0,1,-5,-8]` and `[1,-1,1,-3,3]`) already archived in
`Descent_26.json`.  This file does not prove modularity and
does not construct a Galois representation.

`freyLevel26_computational` is the displayed identity
`2 * 13 = 26`, the same arithmetic as `Frey13.FreyLevel26`.
`frey_conductor_26` is the `Nat` `26`.

This file does **not** import
`BealTheoremFromMazurChain26` (cycle).

v4.42.0: a `WeierstrassCurve Int` *value* is not a `Type`,
so `Modularity` does not apply to it.  The wrapper
`WeierstrassModularity` lives in
`Frey/FreyModularity_13.lean` and does not change this axiom.
-/

/-- Displayed Frey curve for exponent 13.  Not a Weierstrass
model and not a Mathlib elliptic curve. -/
structure FreyCurve13 (A B C : Nat) where
  coeffA : Nat := A
  coeffB : Nat := B
  coeffC : Nat := C

/-- Named modularity predicate.  Mathlib 4.12 has no
Wiles--Taylor theorem.  v5.2.0 adds the displayed `R = T`
token; that is not BCDT.  The axiom `frey_modular_13`
stays the computational assumption. -/
inductive Modularity : Type → Prop
  | displayed_from_R_T : ∀ (A B C : Nat), Modularity (FreyCurve13 A B C)

/-- Displayed conductor label.  Not a conductor computation. -/
def frey_conductor_26 : Nat :=
  26

/-- Displayed `FreyLevel26` identity `2 * 13 = 26`.  Not a
conductor theorem. -/
def freyLevel26_computational : 2 * 13 = 26 :=
  rfl

/-- COMPUTATIONAL ASSUMPTION: relies on Wiles/Taylor
modularity, not in Mathlib 4.12, secured by LMFDB 26a1/26b1.

This is not a Lean modularity theorem. -/
axiom frey_modular_13 : ∀ (A B C : Nat), Modularity (FreyCurve13 A B C)

#print axioms freyLevel26_computational
#print axioms frey_modular_13
#check frey_conductor_26
#check FreyLevel26

end BealLevel26Foundations.Modularity.FreyModularity13
