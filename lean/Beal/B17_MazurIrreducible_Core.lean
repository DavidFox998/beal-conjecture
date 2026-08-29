-- B17_MazurIrreducible_Core — import-free vocabulary for the Mazur boundary.
--
-- This file deliberately separates two logically different facts:
--   1. removing an exactly-dividing prime from a natural number, proved below;
--   2. irreducibility of a Frey residual representation, represented only by
--      a typed boundary because Mathlib has no Mazur torsion/isogeny theorem.

def Dvd17Core (d n : Nat) : Prop := ∃ k : Nat, n = d * k

/-- `p` divides `N` exactly once, expressed without natural-number division. -/
def ExactDivisor17Core (p N : Nat) : Prop :=
  Dvd17Core p N ∧ ¬ Dvd17Core (p * p) N

/-- The witness obtained after removing one exactly-dividing factor `p`. -/
def RemovedPrimeFactor17Core (p N M : Nat) : Prop :=
  0 < M ∧ M * p = N ∧ ¬ Dvd17Core p M

/-- Shape of the unavailable Mazur input.

`Context` is supplied by the Mathlib wrapper and is expected to fix one Frey
model, one prime, and its conductor data. The two predicates are also supplied
by the future arithmetic-geometry layer; this core does not pretend to define
rational torsion or a residual Galois representation.
-/
def MazurIrreducibilityBoundary17Core
    (Context : Type)
    (HasFullRationalTwoTorsion ResidualRepresentationReducible :
      Context → Prop) : Prop :=
  ∀ context : Context,
    HasFullRationalTwoTorsion context →
    ¬ ResidualRepresentationReducible context

/-- Local zero-axiom associativity proof.

Lean 4.12's standard `Nat.mul_assoc` declaration carries `propext`; this
import-free core keeps the elementary factor-removal proof independent of it.
-/
theorem mul_assoc17Core (a b c : Nat) : a * (b * c) = (a * b) * c := by
  induction c with
  | zero => rfl
  | succ c inductionHypothesis =>
    exact
      (congrArg (fun value => a * value) (Nat.mul_succ b c)).trans
        ((Nat.mul_add a (b * c) b).trans
          ((congrArg (fun value => value + a * b) inductionHypothesis).trans
            (Nat.mul_succ (a * b) c).symm))

/-- Exact divisibility gives a positive cofactor from which `p` has been
removed. This is elementary arithmetic, not Mazur irreducibility. -/
theorem remove_exact_divisor17Core (N p : Nat)
    (hExact : ExactDivisor17Core p N) :
    ∃ M : Nat, RemovedPrimeFactor17Core p N M := by
  rcases hExact.1 with ⟨M, hN⟩
  cases M with
  | zero =>
    exact False.elim (hExact.2 ⟨0, hN⟩)
  | succ M =>
    refine ⟨M.succ, Nat.zero_lt_succ M, ?_, ?_⟩
    · exact (Nat.mul_comm M.succ p).trans hN.symm
    · intro hpM
      rcases hpM with ⟨k, hM⟩
      apply hExact.2
      refine ⟨k, ?_⟩
      exact hN.trans
        ((congrArg (fun factor => p * factor) hM).trans
          (mul_assoc17Core p p k))

#print axioms Dvd17Core
#print axioms ExactDivisor17Core
#print axioms RemovedPrimeFactor17Core
#print axioms MazurIrreducibilityBoundary17Core
#print axioms mul_assoc17Core
#print axioms remove_exact_divisor17Core
