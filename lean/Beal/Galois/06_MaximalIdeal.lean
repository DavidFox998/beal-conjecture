/-
      Galois/06_MaximalIdeal — the residual maximal-ideal boundary

       This module states the data a Hecke-theoretic level-lowering proof would
       need after the coefficient algebra of Layer 5: an ideal-like object in the
       (generally noncommutative) coefficient Hecke algebra, an evaluation
       attached to a Frey residual representation, and newform support.

      No maximal ideal, newform decomposition, Hecke eigenvalue system, or
      Hecke-algebra representation theorem is constructed here. In particular,
      residual unramifiedness is not proved from Tate's conductor data, and the
      final unramifiedness-to-support statement is a proposition, not a theorem.

       Mathlib's commutative `Ideal` is intentionally not used: the current
       `HeckeAlgebra` is a subring of endomorphisms, so this layer records the
       required two-sided ideal interface explicitly.
-/
import Beal.Galois.«04_LevelLowering»
import Beal.Galois.«05_Hecke»

namespace Beal.Galois

open Beal.FreyTate

/-- A two-sided ideal-like subset of the coefficient Hecke algebra.

    `HeckeAlgebra N ℓ` is a subring of sequence endomorphisms, whose ambient
    multiplication is composition and need not be commutative. This explicit
    interface therefore records both left and right closure instead of using a
    commutative `Ideal` API. It is data required of a future maximal ideal, not
    a claim that such an object has been constructed. -/
structure HeckeIdealLike (N ℓ : ℕ) where
  carrier : Set (HeckeAlgebra N ℓ)
  zero_mem : (0 : HeckeAlgebra N ℓ) ∈ carrier
  add_mem : ∀ {a b : HeckeAlgebra N ℓ}, a ∈ carrier → b ∈ carrier → a + b ∈ carrier
  neg_mem : ∀ {a : HeckeAlgebra N ℓ}, a ∈ carrier → -a ∈ carrier
  left_mul_mem :
    ∀ {r a : HeckeAlgebra N ℓ}, a ∈ carrier → r * a ∈ carrier
  right_mul_mem :
    ∀ {a r : HeckeAlgebra N ℓ}, a ∈ carrier → a * r ∈ carrier

instance : Membership (HeckeAlgebra N ℓ) (HeckeIdealLike N ℓ) where
  mem m T := T ∈ m.carrier

/-- The maximality condition required of a candidate residual ideal.

    Every ideal-like object containing `m` must either coincide with `m` or be
    the whole coefficient Hecke algebra. This is only a predicate: Layer 6 does
    not prove that a particular ideal-like object satisfies it. -/
def HeckeIdealLike.IsMaximal {N ℓ : ℕ} (m : HeckeIdealLike N ℓ) : Prop :=
  (1 : HeckeAlgebra N ℓ) ∉ m ∧
    ∀ k : HeckeIdealLike N ℓ,
      (∀ T : HeckeAlgebra N ℓ, T ∈ m → T ∈ k) →
        (∀ T : HeckeAlgebra N ℓ, T ∈ k → T ∈ m) ∨
          ∀ T : HeckeAlgebra N ℓ, T ∈ k

/-- The maximal-ideal predicate at the present noncommutative boundary.

    The name follows the mathematical role of the object. Its type is the
    explicit two-sided `HeckeIdealLike` interface rather than Mathlib's
    commutative `Ideal`, because `HeckeAlgebra` is built from endomorphisms. -/
def IsMaximalIdeal {N ℓ : ℕ} (I : HeckeIdealLike N ℓ) : Prop :=
  I.IsMaximal

/-- A candidate maximal ideal of the coefficient Hecke algebra.

    This subtype is only a typed package of an ideal-like object and an explicit
    maximality witness. It does not construct a maximal ideal. -/
abbrev MaximalIdeal (N ℓ : ℕ) :=
  { I : HeckeIdealLike N ℓ // IsMaximalIdeal I }

/-- The residue-field carrier supplied by a future quotient construction.

    This is deliberately only a carrier and an identification condition. It
    does not construct the quotient of the Hecke algebra by `I`, or claim that
    such a quotient is a field. The missing quotient construction and field
    proof remain part of the mathematical interface. -/
structure ResidueFieldData {N ℓ : ℕ} (I : HeckeIdealLike N ℓ) where
  carrier : Type
  identifies_with_ZMod : carrier = ZMod ℓ

/-- The explicit residue-field condition required by the attachment boundary. -/
def ResidueFieldIsZMod {N ℓ : ℕ} {I : HeckeIdealLike N ℓ}
    (K : ResidueFieldData I) : Prop :=
  K.carrier = ZMod ℓ

/-- An attachment of a candidate maximal ideal to a fixed Frey residual
    representation.

    The fields are precisely the unproved Hecke-algebra representation data:
    a quotient-style evaluation into `ZMod ℓ`, its kernel, Hecke-generator
    traces, and compatibility with explicit Frobenius representatives. Requiring
    this record makes every missing premise visible without postulating its
    existence. -/
structure FreyHeckeAttachment
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {N ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (m : HeckeIdealLike N ℓ) where
  maximal : IsMaximalIdeal m
  residue : ResidueFieldData m
  residue_is_ZMod : ResidueFieldIsZMod residue
  eval : HeckeAlgebra N ℓ → ZMod ℓ
  eval_zero : eval 0 = 0
  eval_one : eval 1 = 1
  eval_add :
    ∀ a b : HeckeAlgebra N ℓ, eval (a + b) = eval a + eval b
  eval_mul :
    ∀ a b : HeckeAlgebra N ℓ, eval (a * b) = eval a * eval b
  kernel_eq :
    ∀ T : HeckeAlgebra N ℓ, T ∈ m ↔ eval T = 0
  trace : ∀ p : ℕ, p.Prime → ¬ p ∣ N → ZMod ℓ
  generator_trace :
    ∀ (p : ℕ) (hp : p.Prime) (hAway : ¬ p ∣ N),
      eval ⟨HeckeSequenceOp p ℓ, heckeSequenceOp_mem_HeckeAlgebra hp hAway⟩ =
        trace p hp hAway
  trace_eq_frobenius :
    ∀ (p : ℕ) (hp : p.Prime) (hAway : ¬ p ∣ N)
      (I : InertiaSubgroup R.Gabs p) (F : FrobeniusClass I)
      (g : DecompositionElement I.toDecompositionSubgroup),
      FrobeniusClass.mk I g = F →
        trace p hp hAway = modLTrace ℓ (R.rho g.val)

/-- The proposed maximal ideal attached to a fixed Frey residual
    representation.

    `N` is explicit because it is not part of the type of `R`. The proposition
    supplies a candidate ideal in `HeckeAlgebra N ℓ`, its maximality and
    residue-field identification, and the away-from-`Nℓ` condition

      `T_p mod 𝔪 = trace (R (Frob_p))`.

    The Frobenius class and its decomposition representative are quantified
    explicitly, so no representative is selected by `Classical.choice`.
    This is an interface-only existence statement: Layer 6 does not prove that
    an ideal, residue field, or attachment exists. -/
def MaximalIdealAttachedToRep
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (R : FreyResidualRepresentation model ℓ) (N : ℕ) : Prop :=
  ∃ m : HeckeIdealLike N ℓ,
    ∃ attachment : FreyHeckeAttachment R m,
      ∀ (p : ℕ) (hp : p.Prime) (hAway : ¬ p ∣ N * ℓ),
        ∀ I : InertiaSubgroup R.Gabs p,
        ∀ F : FrobeniusClass I,
        ∀ g : DecompositionElement I.toDecompositionSubgroup,
          FrobeniusClass.mk I g = F →
            attachment.eval
                ⟨HeckeSequenceOp p ℓ,
                  heckeSequenceOp_mem_HeckeAlgebra
                    (N := N) (ℓ := ℓ) hp (by
                      intro hPN
                      exact hAway (dvd_mul_of_dvd_left hPN ℓ))⟩ =
              modLTrace ℓ (R.rho g.val)

/-- Extend a finite q-expansion by zero to the coefficient-sequence module on
    which the coefficient Hecke algebra acts. -/
def coefficientSequenceOfForm
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {N ℓ : ℕ}
    (W : ModLWeightTwoForm (model := model) N ℓ) :
    CoefficientSequence ℓ :=
  fun n => finiteCoeff W.f_q n

/-- The ideal-like object annihilates the coefficient sequence represented by a
    finite mod-ℓ form. This is the finite coefficient-level support convention
    used in this layer; it is not a construction of geometric support. -/
def HeckeIdealAnnihilatesForm
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {N ℓ : ℕ}
    (m : HeckeIdealLike N ℓ)
    (W : ModLWeightTwoForm (model := model) N ℓ) : Prop :=
  ∀ T : HeckeAlgebra N ℓ, T ∈ m →
    T.1 (coefficientSequenceOfForm W) = 0

/-- A candidate residual ideal is supported in the represented new subspace
    when some finite mod-ℓ form is new, realizes the same residual
    representation, and is annihilated by that ideal.

    This is an explicit finite-boundary predicate. It does not assert a
    newform decomposition or identify scheme-theoretic support. -/
def IsSupportedInNewSubspace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {N ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (m : HeckeIdealLike N ℓ) : Prop :=
  ∃ W : ModLWeightTwoForm (model := model) N ℓ,
    IsNewform W ∧
      ModLRealizesRepresentation W R ∧
        HeckeIdealAnnihilatesForm m W

/-- The missing Hecke-theoretic implication for a single level-lowering step.

    Given a level `N`, its exact quotient `M` by an odd prime `p`, a residual
    representation, an original realizing form, and a candidate maximal ideal
    at level `M`, a genuine theorem would have to turn residual unramifiedness
    at `p` into new-subspace support at level `M`.

    This declaration is only the required proposition. It does not derive
    unramifiedness from the Tate conductor contract, construct `m`, or prove
    the implication. -/
def frey_unramified_implies_maximalIdeal_support
    {A B C : ℤ} {x y z : ℕ}
    (model : FreyCurveModel A B C x y z)
    (ℓ N p M : ℕ)
    (R : FreyResidualRepresentation model ℓ)
    (I : InertiaSubgroup R.Gabs p)
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (m : HeckeIdealLike M ℓ) : Prop :=
  M * p = N →
    ExactDividesCore p N →
      p.Prime →
        p ≠ 2 →
          ModLRealizesRepresentation W R →
            ∀ _attachment : FreyHeckeAttachment R m,
              IsFreyUnramifiedAt R p I →
                IsSupportedInNewSubspace R m

#print axioms HeckeIdealLike
#print axioms IsMaximalIdeal
#print axioms MaximalIdeal
#print axioms ResidueFieldData
#print axioms ResidueFieldIsZMod
#print axioms HeckeIdealLike.IsMaximal
#print axioms FreyHeckeAttachment
#print axioms MaximalIdealAttachedToRep
#print axioms HeckeIdealAnnihilatesForm
#print axioms IsSupportedInNewSubspace
#print axioms frey_unramified_implies_maximalIdeal_support
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois