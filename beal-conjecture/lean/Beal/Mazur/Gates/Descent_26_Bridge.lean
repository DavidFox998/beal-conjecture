import Beal.Mazur.Gates.Descent_26_PhaseA
import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import Mathlib.Tactic

namespace Beal17Mazur.Gates.Descent26Bridge

open Beal17Mazur.Jacobian
open Beal17Mazur.Gates

/-!
# The honest level-26 descent bridge

Phase A computes finite-field points for the ten mwrank transcript rows.  This
file adds the proof-relevant homogeneous and reduction language needed before
one may speak about local obstructions or a 2-descent map.

All ten rows have points over both `ZMod 2` and `ZMod 13` under the Phase A
evaluator.  Consequently this module proves no local obstruction and no
unconditional rank statement.  The still-missing covering-to-Selmer and
Selmer-to-free-rank theorems are exposed as propositions with no inhabitants.
-/

/-! ## Homogeneous integral coverings -/

/-- The homogeneous binary quartic attached to a transcript row. -/
def HomogQuartic (q : BinaryQuartic) (X Z : Int) : Int :=
  q.a * X ^ 4 + q.b * X ^ 3 * Z + q.c * X ^ 2 * Z ^ 2 +
    q.d * X * Z ^ 3 + q.e * Z ^ 4

/-- A pair of integral projective coordinates is primitive when its gcd is one. -/
def primitive (X Z : Int) : Prop :=
  Int.gcd X Z = 1

/-- An integral point on the weighted homogeneous equation
`Y² = q(X,Z)`, with primitive projective coordinates `(X:Z)`. -/
structure PrimitiveIntegralPoint (q : BinaryQuartic) where
  X : Int
  Z : Int
  Y : Int
  primitive_XZ : primitive X Z
  equation : Y ^ 2 = HomogQuartic q X Z

theorem homogQuartic_cast (q : BinaryQuartic) {p : Nat} [NeZero p]
    (X Z : Int) :
    (HomogQuartic q X Z : ZMod p) =
      BinaryQuartic.eval q (X : ZMod p) (Z : ZMod p) := by
  simp [HomogQuartic, BinaryQuartic.eval]

/-!
At a bad prime, primitiveness over `ℤ` must not be silently identified with
nonvanishing after reduction.  A reduction certificate therefore records the
chosen canonical residue representatives and separately proves that `(X:Z)`
does not reduce to `(0:0)`.  This also includes the `Z = 0` points at infinity.
-/

structure ReductionCertificate {q : BinaryQuartic}
    (point : PrimitiveIntegralPoint q) (p : Nat) [NeZero p] where
  x : Nat
  z : Nat
  y : Nat
  x_lt : x < p
  z_lt : z < p
  y_lt : y < p
  x_reduces : (x : ZMod p) = (point.X : ZMod p)
  z_reduces : (z : ZMod p) = (point.Z : ZMod p)
  y_reduces : (y : ZMod p) = (point.Y : ZMod p)
  projective_nonzero : x ≠ 0 ∨ z ≠ 0

/-- A certified primitive integral lift reduces to a point found by the Phase A
finite-field evaluator.  No good-reduction hypothesis is used. -/
theorem hasFpPoint_of_reductionCertificate
    {q : BinaryQuartic} {p : Nat} [NeZero p]
    (point : PrimitiveIntegralPoint q)
    (certificate : ReductionCertificate point p) :
    BinaryQuartic.HasFpPoint q p := by
  refine ⟨certificate.x, List.mem_range.mpr certificate.x_lt,
    certificate.z, List.mem_range.mpr certificate.z_lt,
    certificate.projective_nonzero,
    certificate.y, List.mem_range.mpr certificate.y_lt, ?_⟩
  have reducedEquation :=
    congrArg (fun n : Int => (n : ZMod p)) point.equation
  rw [certificate.y_reduces, certificate.x_reduces,
    certificate.z_reduces]
  simpa [homogQuartic_cast] using reducedEquation

/-- Contrapositive form of the certified reduction theorem.

This rules out only primitive integral points equipped with the required
reduction certificate.  It is not promoted to a `ℚₚ` obstruction. -/
theorem no_certified_integral_lift_of_no_Fp_point
    {q : BinaryQuartic} {p : Nat} [NeZero p]
    (hNoPoint : ¬ BinaryQuartic.HasFpPoint q p) :
    ¬ ∃ point : PrimitiveIntegralPoint q,
        Nonempty (ReductionCertificate point p) := by
  rintro ⟨point, ⟨certificate⟩⟩
  exact hNoPoint (hasFpPoint_of_reductionCertificate point certificate)

/-! ## The two bad primes and the actual ledger computations -/

theorem two_divides_E26a1_discriminant :
    (2 : Int) ∣ (-1664 : Int) := by norm_num

theorem thirteen_divides_E26a1_discriminant :
    (13 : Int) ∣ (-1664 : Int) := by norm_num

theorem two_divides_E26b1_discriminant :
    (2 : Int) ∣ (-17576 : Int) := by norm_num

theorem thirteen_divides_E26b1_discriminant :
    (13 : Int) ∣ (-17576 : Int) := by norm_num

/-- Every `26a1` ledger row has a point under the homogeneous evaluator at
both bad primes. -/
theorem E26a1_all_rows_have_points_at_bad_primes :
    E26a1Fp2Results = [true, true, true, true] ∧
      E26a1Fp13Results = [true, true, true, true] :=
  ⟨E26a1Fp2Results_checked, E26a1Fp13Results_checked⟩

/-- Every `26b1` ledger row has a point under the homogeneous evaluator at
both bad primes. -/
theorem E26b1_all_rows_have_points_at_bad_primes :
    E26b1Fp2Results = [true, true, true, true, true, true] ∧
      E26b1Fp13Results = [true, true, true, true, true, true] :=
  ⟨E26b1Fp2Results_checked, E26b1Fp13Results_checked⟩

/-! ## Proof-relevant descent interfaces -/

/-- A signed squarefree representative from the exact Phase A search space. -/
def SUnitRepresentative :=
  {d : Int // d ∈ Q_S2_13}

/-- Two rational points represent the same class modulo doubling. -/
def EquivalentModTwo {E : WeierstrassCurve ℚ}
    (P Q : MordellWeilGroup E) : Prop :=
  ∃ R : MordellWeilGroup E, P - Q = 2 • R

/-- Candidate Selmer data attached to one of the recorded covering rows.

Membership in this structure records finite transcript data only; it does not
assert local solubility or completeness. -/
structure LedgerClass (rows : List BinaryQuartic) where
  sUnit : SUnitRepresentative
  quartic : BinaryQuartic
  quartic_mem : quartic ∈ rows

/-- The fixed, proof-relevant solubility predicate used by the descent
interface.  It cannot be replaced by an arbitrary caller-supplied predicate. -/
def IntegrallySoluble {rows : List BinaryQuartic}
    (candidate : LedgerClass rows) : Prop :=
  Nonempty (PrimitiveIntegralPoint candidate.quartic)

/-- The data and proofs required for a genuine curve-specific 2-descent.

No value is built in this module.  In particular, the Phase A tables cannot
construct `map_is_integrallySoluble` or `exhaustive` because finite-field
points do not supply primitive integral points. -/
structure CompleteTwoDescent
    (E : WeierstrassCurve ℚ) (rows : List BinaryQuartic) where
  descentMap : MordellWeilGroup E → LedgerClass rows
  same_class_iff :
    ∀ P Q, descentMap P = descentMap Q ↔ EquivalentModTwo P Q
  map_is_integrallySoluble : ∀ P, IntegrallySoluble (descentMap P)
  exhaustive :
    ∀ candidate : LedgerClass rows,
      IntegrallySoluble candidate →
        ∃ P : MordellWeilGroup E, descentMap P = candidate

/-- The exact missing algebraic theorem for one curve: a verified complete
2-descent must imply that every rational point is torsion. -/
def SelmerToFreeRankTheorem
    (E : WeierstrassCurve ℚ) (rows : List BinaryQuartic) : Prop :=
  CompleteTwoDescent E rows → IsFreeRankZero E

def E26a1CompleteDescent : Prop :=
  Nonempty (CompleteTwoDescent E26a1W E26a1MwrankQuartics)

def E26b1CompleteDescent : Prop :=
  Nonempty (CompleteTwoDescent E26b1W E26b1MwrankQuartics)

/-- Conditional composition of the two exact missing descent theorems.

The hypotheses are deliberately explicit.  This theorem does not inhabit any
of them and therefore makes no unconditional rank claim. -/
theorem phaseB_bridge_of_complete_descent
    (aData : CompleteTwoDescent E26a1W E26a1MwrankQuartics)
    (bData : CompleteTwoDescent E26b1W E26b1MwrankQuartics)
    (aBridge :
      SelmerToFreeRankTheorem E26a1W E26a1MwrankQuartics)
    (bBridge :
      SelmerToFreeRankTheorem E26b1W E26b1MwrankQuartics) :
    IsFreeRankZero E26a1W ∧ IsFreeRankZero E26b1W :=
  ⟨aBridge aData, bBridge bData⟩

#print axioms homogQuartic_cast
#print axioms hasFpPoint_of_reductionCertificate
#print axioms no_certified_integral_lift_of_no_Fp_point
#print axioms E26a1_all_rows_have_points_at_bad_primes
#print axioms E26b1_all_rows_have_points_at_bad_primes
#print axioms phaseB_bridge_of_complete_descent

end Beal17Mazur.Gates.Descent26Bridge