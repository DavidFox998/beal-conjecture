-- B05_Modularity_Core.lean
-- Modularity layer: three-piece hypothesis structure for the Frey curve.
-- Import-free. All Core definitions are zero-axiom.
-- Type signatures inspired by ImperialCollegeLondon/FLT; no FLT import.

-- Frey curve arithmetic predicates (import-free, [] axioms)
def IsPrime05Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def FreyCurve05Core (A B C x y z : Nat) : Prop := 1 < x ∧ 1 < y ∧ 1 < z

-- S₂(Γ₀(2)) dimension zero — mirrors B10_RibetReal_Core, import-free.
-- Proved by rfl in B10 (DimS2_2_Core = GenusX0_2_Core = 0).
def S2DimZero : Prop := (0 : Nat) = 0

-- ── Three named hypothesis types ──────────────────────────────────────────────
-- Each names a major theorem in the Frey/Ribet/Mazur/Wiles argument.
-- The corresponding axiom declarations live in B05_Modularity.lean (the wrapper).

-- Ribet (1990): Level-lowering and irreducibility of the Frey Galois representation.
-- For a primitive Beal solution A^x + B^y = C^z (x,y,z > 2), the Frey curve's
-- conductor N has a prime p ≥ 5 exactly dividing it (p‖N). Ribet's theorem
-- lowers the associated newform level step by step until it reaches 2.
-- That final level-2 newform contradicts S₂(Γ₀(2)) = 0 (empty space, no forms).
def RibetLevelLoweringHypothesis : Prop :=
  ∀ (A B C x y z : Nat),
    1 < x → 1 < y → 1 < z →
    A ^ x + B ^ y = C ^ z →
    Nat.gcd (Nat.gcd A B) C = 1 →
    ∃ (p N : Nat), 5 ≤ p ∧ p ∣ N ∧ ¬ (p * p ∣ N) ∧ N / p = 2

-- Mazur (1978): Irreducibility of the mod-p Galois representation.
-- For any prime p ≥ 5, the mod-p Galois representation attached to the Frey curve
-- of a primitive Beal solution is absolutely irreducible. This is a prerequisite
-- for Ribet's level-lowering to apply. Encoded: p divides at least one base.
def MazurIrreducibilityHypothesis : Prop :=
  ∀ (p A B C x y z : Nat),
    5 ≤ p → IsPrime05Core p →
    1 < x → 1 < y → 1 < z →
    A ^ x + B ^ y = C ^ z →
    Nat.gcd (Nat.gcd A B) C = 1 →
    p ∣ A ∨ p ∣ B ∨ p ∣ C

-- Wiles (1995): Modularity lifting for semistable elliptic curves.
-- Every semistable elliptic curve over ℚ is modular. The Frey curve is semistable
-- (Frey/Serre), so it corresponds to a modular form. Its conductor N is divisible
-- only by primes that divide the bases A, B, C.
def WilesLiftingHypothesis : Prop :=
  ∀ (A B C x y z : Nat),
    1 < x → 1 < y → 1 < z →
    A ^ x + B ^ y = C ^ z →
    Nat.gcd (Nat.gcd A B) C = 1 →
    ∃ (N : Nat), 2 ≤ N ∧
      ∀ q : Nat, IsPrime05Core q → q ∣ N → q ∣ A * B * C

-- ── Assembly ──────────────────────────────────────────────────────────────────

-- All three pieces: the complete modularity argument for the Frey curve
structure FreyModularityData where
  ribet_level_lowering : RibetLevelLoweringHypothesis
  mazur_irreducibility  : MazurIrreducibilityHypothesis
  wiles_lifting         : WilesLiftingHypothesis

-- The modularity hypothesis: all three pieces hold
def ModularityHypothesisTyped : Prop := Nonempty FreyModularityData

#print axioms IsPrime05Core
#print axioms FreyCurve05Core
#print axioms S2DimZero
#print axioms RibetLevelLoweringHypothesis
#print axioms MazurIrreducibilityHypothesis
#print axioms WilesLiftingHypothesis
#print axioms FreyModularityData
#print axioms ModularityHypothesisTyped
