import Beal.B17_MazurIrreducible

namespace Beal17Mazur

/-- A finite cyclic level structure on an additive group.

This is the small piece of data used by the Beal development to represent the
moduli content of a rational point on `X₀(N)`: a cyclic subgroup of geometric
points of order `N`, together with the supplied transport maps and their
stability.  It is deliberately not a definition of the modular curve itself.
-/
structure GaloisStableCyclicLevel
    (context : FreyMazurContext)
    (N : Nat) where
  carrier : AddSubgroup (GeometricFreyPoint context)
  finite_carrier : Finite carrier
  card_eq_level : Nat.card carrier = N
  cyclic :
    ∃ generator : carrier,
      ∀ point : carrier, ∃ exponent : Int, exponent • generator = point
  stable :
    ∀ (σ : Field.absoluteGaloisGroup ℚ)
      (point : GeometricFreyPoint context),
      point ∈ carrier → galoisAction context σ point ∈ carrier

/-- The level datum carried by a moduli point.

`Curve` is an explicit parameter because Mathlib 4.12 has no scheme-level
`X₀(N)` object to use here.  The record therefore stores an underlying curve
label and a cyclic geometric level structure, but makes no claim that the
result is a scheme, a function field, a compactified quotient, or a rational
point of a constructed modular curve.
-/
structure X0ModuliDatum
    (context : FreyMazurContext)
    (N : Nat) where
  level : GaloisStableCyclicLevel context N

/-- The supplied transport maps preserve the level subgroup. -/
theorem GaloisStableCyclicLevel.stable_mem
    {context : FreyMazurContext} {N : Nat}
    (level : GaloisStableCyclicLevel context N)
    (σ : Field.absoluteGaloisGroup ℚ)
    {point : GeometricFreyPoint context}
    (hpoint : point ∈ level.carrier) :
    galoisAction context σ point ∈ level.carrier :=
  level.stable σ point hpoint

/-- A cyclic level structure has a nonempty carrier. -/
theorem GaloisStableCyclicLevel.carrier_nonempty
    {context : FreyMazurContext} {N : Nat}
    (level : GaloisStableCyclicLevel context N) :
    Nonempty level.carrier :=
  ⟨0, level.carrier.zero_mem⟩

/-- A cyclic level structure has positive level. -/
theorem GaloisStableCyclicLevel.level_pos
    {context : FreyMazurContext} {N : Nat}
    (level : GaloisStableCyclicLevel context N) :
    0 < N := by
  letI : Finite level.carrier := level.finite_carrier
  rw [← level.card_eq_level]
  exact Nat.card_pos

/-- The moduli datum exposes its level without adding a scheme-level claim. -/
theorem X0ModuliDatum.level_card
    {context : FreyMazurContext} {N : Nat}
    (datum : X0ModuliDatum context N) :
    Nat.card datum.level.carrier = N :=
  datum.level.card_eq_level

#print axioms GaloisStableCyclicLevel
#print axioms X0ModuliDatum
#print axioms GaloisStableCyclicLevel.stable_mem
#print axioms GaloisStableCyclicLevel.carrier_nonempty
#print axioms GaloisStableCyclicLevel.level_pos
#print axioms X0ModuliDatum.level_card

end Beal17Mazur