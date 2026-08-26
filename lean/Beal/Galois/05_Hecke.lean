/-
      Galois/05_Hecke — coefficient-level Hecke and degeneracy boundaries

      This module operates on the finite q-expansions from Layer 3. The
      coefficient operation `HeckeOp` is not a modularity theorem and does not
      imply level lowering.

      The maximal ideal 𝔪_ρ̄ attached to the Frey residual representation is
      future work. Reaching it requires a genuine newform decomposition and a
      Hecke-algebra representation theorem, neither of which is asserted here.
      This file supplies only coefficient operators and the old/new boundary.

      The source form record is intentionally not an additive group: its
      `nonzero` field is a proposition-valued boundary. Consequently the
      genuine Hecke algebra below acts on all coefficient sequences
      `ℕ → ZMod ℓ`, while `HeckeOp` and `DegeneracyMap` provide the corresponding
      operations on finite form records. The ambient coefficient operation is
      defined for any natural index; the Hecke algebra admits it as `T_p` only
      when `p` is prime and does not divide the level.
-/
import Beal.Galois.«03_ModLForm»

namespace Beal.Galois

open Beal.FreyTate

/-- A finite-list coefficient, with zero beyond the supplied q-expansion. -/
def finiteCoeff {ℓ : ℕ} (a : List (ZMod ℓ)) (n : ℕ) : ZMod ℓ :=
  a.getD n 0

/-- The coefficient formula used by the finite form-level Hecke operation. -/
def heckeCoeff {ℓ : ℕ} (p : ℕ) (a : List (ZMod ℓ)) (n : ℕ) : ZMod ℓ :=
  if n = 0 then
    0
  else
    finiteCoeff a (p * n) +
      if p ∣ n then (p : ZMod ℓ) * finiteCoeff a (n / p) else 0

/-- The constant coefficient of a Hecke operation is zero. -/
theorem heckeCoeff_zero {ℓ p : ℕ} (a : List (ZMod ℓ)) :
    heckeCoeff p a 0 = 0 := by
  simp [heckeCoeff]

/-- The finite coefficient sequence underlying `T_p`. -/
def heckeList {ℓ : ℕ} (p : ℕ) (a : List (ZMod ℓ)) : List (ZMod ℓ) :=
  a.mapIdx fun n _ => heckeCoeff p a n

/-- The coefficient-level Hecke operation

    `(T_p a)_0 = 0` and, for `n > 0`,
    `(T_p a)_n = a_(p*n) + (if p ∣ n then p*a_(n/p) else 0)`.

    The finite list has the same support length as the input list; coefficients
    outside that finite approximation are represented by `finiteCoeff` and are
    zero. This is an operation on the q-expansion boundary, not a proof that a
    modular form exists or that its level can be lowered. -/
def HeckeOp
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {N ℓ : ℕ}
    (p : ℕ)
    (W : ModLWeightTwoForm (model := model) N ℓ) :
    ModLWeightTwoForm (model := model) N ℓ :=
  { f_q := heckeList p W.f_q
    level_divides_conductor := W.level_divides_conductor
    nonzero := W.nonzero }

/-- The level-divisibility witness is preserved by `HeckeOp`. -/
theorem HeckeOp_level_divides_conductor
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {N ℓ p : ℕ}
    (W : ModLWeightTwoForm (model := model) N ℓ) :
    N ∣ model.conductor :=
  (HeckeOp p W).level_divides_conductor

/-- The coefficient-level degeneracy formula, with the necessary target-level
    divisibility witness made explicit. Raising a level does not follow merely
    from `d ∣ N / M`; the target form record requires `N ∣ conductor`. -/
def DegeneracyMap
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {M N ℓ : ℕ}
    (d : ℕ)
    (_hd_pos : 0 < d)
    (_h : d ∣ N / M)
    (hN : N ∣ model.conductor)
    (a : ModLWeightTwoForm (model := model) M ℓ) :
    ModLWeightTwoForm (model := model) N ℓ :=
  { f_q := a.f_q.mapIdx fun n _ =>
      if d ∣ n then finiteCoeff a.f_q (n / d) else 0
    level_divides_conductor := hN
    nonzero := a.nonzero }

/-- Forms at level `N` coming from a lower level `M` by an allowed degeneracy
    map. The target-level witness is existential because `M ∣ N` and
    `M ∣ conductor` alone do not imply `N ∣ conductor`. -/
def OldSubspace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (N M ℓ : ℕ) : Set (ModLWeightTwoForm (model := model) N ℓ) :=
  { W | ∃ (_hM_pos : 0 < M) (_hMN : M ∣ N)
      (hN : N ∣ model.conductor) (d : ℕ) (hd_pos : 0 < d) (h : d ∣ N / M)
      (a : ModLWeightTwoForm (model := model) M ℓ),
      W = DegeneracyMap d hd_pos h hN a }

/-- A finite mod-ℓ form is new at its level when it lies in none of the
    lower-level degeneracy images represented by `OldSubspace`. -/
def IsNewform
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    {N ℓ : ℕ}
    (W : ModLWeightTwoForm (model := model) N ℓ) : Prop :=
  ∀ M, 0 < M → M < N → M ∣ N →
    W ∉ OldSubspace (model := model) N M ℓ

/-- Coefficient sequences form the honest ambient module for the Hecke algebra.
    This is separate from the finite form record because that record carries a
    proposition-valued `nonzero` boundary rather than additive structure. -/
abbrev CoefficientSequence (ℓ : ℕ) :=
  ℕ → ZMod ℓ

/-- The same coefficient formula as `HeckeOp`, now as a linear endomorphism of
    all coefficient sequences. -/
def heckeSequenceCoeff
    {ℓ : ℕ} (p : ℕ) (a : CoefficientSequence ℓ) (n : ℕ) : ZMod ℓ :=
  if n = 0 then
    0
  else
    a (p * n) + if p ∣ n then (p : ZMod ℓ) * a (n / p) else 0

theorem heckeSequenceCoeff_add
    {ℓ p : ℕ} (a b : CoefficientSequence ℓ) (n : ℕ) :
    heckeSequenceCoeff p (a + b) n =
      heckeSequenceCoeff p a n + heckeSequenceCoeff p b n := by
  by_cases hn : n = 0
  · simp [heckeSequenceCoeff, hn]
  · by_cases hp : p ∣ n <;>
      simp [heckeSequenceCoeff, hn, hp, mul_add, add_assoc, add_left_comm,
        add_comm]

theorem heckeSequenceCoeff_smul
    {ℓ p : ℕ} (c : ZMod ℓ) (a : CoefficientSequence ℓ) (n : ℕ) :
    heckeSequenceCoeff p (c • a) n =
      c • heckeSequenceCoeff p a n := by
  by_cases hn : n = 0
  · simp [heckeSequenceCoeff, hn]
  · by_cases hp : p ∣ n
    · simp [heckeSequenceCoeff, hn, hp]
      rw [← mul_assoc, mul_comm (p : ZMod ℓ) c, mul_assoc]
      exact (mul_add c _ _).symm
    · simp [heckeSequenceCoeff, hn, hp]

/-- The sequence endomorphism corresponding to `T_p`. -/
def HeckeSequenceOp (p ℓ : ℕ) :
    Module.End (ZMod ℓ) (CoefficientSequence ℓ) :=
  { toFun := heckeSequenceCoeff p
    map_add' := by
      intro a b
      funext n
      exact heckeSequenceCoeff_add a b n
    map_smul' := by
      intro c a
      funext n
      exact heckeSequenceCoeff_smul c a n }

/-- The `T_p` generators with `p` not dividing the level. -/
def HeckeGenerators (N ℓ : ℕ) :
    Set (Module.End (ZMod ℓ) (CoefficientSequence ℓ)) :=
  { T | ∃ p : ℕ, p.Prime ∧ ¬ p ∣ N ∧ T = HeckeSequenceOp p ℓ }

/-- Formal finite ring expressions in away-from-level Hecke generators.

    Using explicit syntax rather than `Subring.closure` keeps the declaration
    constructive: the lattice closure implementation introduces
    `Classical.choice` into the axiom audit. -/
inductive HeckeExpression (N ℓ : ℕ) where
  | zero
  | one
  | generator (p : ℕ) (hPrime : p.Prime) (hAway : ¬ p ∣ N)
  | add (left right : HeckeExpression N ℓ)
  | neg (value : HeckeExpression N ℓ)
  | mul (left right : HeckeExpression N ℓ)

/-- Evaluation of a finite formal Hecke expression as a coefficient-sequence
    endomorphism. -/
def HeckeExpression.eval
    {N ℓ : ℕ} :
    HeckeExpression N ℓ →
      Module.End (ZMod ℓ) (CoefficientSequence ℓ)
  | .zero => 0
  | .one => 1
  | .generator p _ _ => HeckeSequenceOp p ℓ
  | .add left right => left.eval + right.eval
  | .neg value => -value.eval
  | .mul left right => left.eval * right.eval

/-- The Hecke algebra boundary: the constructively generated subring of
    coefficient-sequence endomorphisms generated by `T_p` away from the level.

    The current finite-form boundary does not encode eigenforms or a
    newform-decomposition theorem. This subring is therefore an algebraic
    container for the coefficient operations only. -/
def HeckeAlgebra (N ℓ : ℕ) :
    Subring (Module.End (ZMod ℓ) (CoefficientSequence ℓ)) :=
  { carrier := Set.range (HeckeExpression.eval (N := N) (ℓ := ℓ))
    zero_mem' := ⟨.zero, rfl⟩
    one_mem' := ⟨.one, rfl⟩
    add_mem' := by
      rintro _ _ ⟨left, rfl⟩ ⟨right, rfl⟩
      exact ⟨.add left right, rfl⟩
    neg_mem' := by
      rintro _ ⟨value, rfl⟩
      exact ⟨.neg value, rfl⟩
    mul_mem' := by
      rintro _ _ ⟨left, rfl⟩ ⟨right, rfl⟩
      exact ⟨.mul left right, rfl⟩ }

/-- Every away-from-level coefficient Hecke operator belongs to the generated
    Hecke algebra. -/
theorem heckeSequenceOp_mem_HeckeAlgebra
    {N ℓ p : ℕ} (hPrime : p.Prime) (hAway : ¬ p ∣ N) :
    HeckeSequenceOp p ℓ ∈ HeckeAlgebra N ℓ :=
  ⟨.generator p hPrime hAway, rfl⟩

#print axioms HeckeOp
#print axioms HeckeOp_level_divides_conductor
#print axioms DegeneracyMap
#print axioms OldSubspace
#print axioms IsNewform
#print axioms HeckeSequenceOp
#print axioms HeckeAlgebra
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois