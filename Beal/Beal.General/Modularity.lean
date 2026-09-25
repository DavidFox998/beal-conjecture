import Beal.«Beal.General».Conductor
import Beal.«Beal.General».TwoPower

/-!
No general modularity-to-`commonPrime` theorem is declared here. The
general Frey invariant identities and low-local obstruction now exist,
but neither supplies the six general forward fields or eliminates 2^k.

OPEN PROOF OBLIGATIONS (not axioms, theorems, or certificates):

* TateGeneral TODO: general Tate uniformization, high-valuation
  minimal models, Néron/inertia data and an actual conductor formula.
  The reduction tests in TateReduction.lean do not prove Kodaira types
  or f₂; the missing genuine local conductor exponent blocks the
  conductor input to the general lowering chain.
* MazurX0_l TODO: residual irreducibility and Borel exclusion for all
  relevant odd primes ℓ, not only the specialized X₀(13) setting.
* RibetGeneral TODO: modularity and justified level lowering from
  the general conductor, not only the specialized 928→32 step.
* KrausGeneral TODO: actual elimination at the resulting general
  levels; the 32a1 eigenform and a29=-10 comparison are specialized.
* KolyvaginGeneral TODO: the needed L-value, Selmer and rank inputs
  under their correct hypotheses, not only the 32a1 data.
* TwoPowerGeneral TODO: construct the unsupplied `(4,4,n)` requirement
  where applicable and handle all other 2^k exponent signatures,
  including p = 4; an odd-prime-divisor split alone cannot do this.
* Construct the six *general* forward fields and a proved bridge to
  `BealTheoremData.commonPrime`. Neither
  `RequiresTateMazurRibetForwardData` nor the specialized
  `Conditional32BridgeData`/`HasNewformAtLevel32` does this. The
  TateGeneral → RibetGeneral → KrausGeneral path cannot supply that
  bridge without f₂; MazurX0_l, KolyvaginGeneral and TwoPowerGeneral
  remain additional independent obligations, not substitutes for it.

Absence of these proofs does not establish formal non-entailment.
There is deliberately no asserted `commonPrime` theorem, no
String/Bool substitute, and no proposed release certificate.
-/

namespace Beal.General

/-- Open Tate requirement *schema*. The four predicate arguments still
need genuine definitions and proofs for the general Frey family; passing
arbitrary propositions does not create a conductor or a certificate. -/
def TODO_TateGeneral
    (Uniformization MinimalModels Inertia Conductor :
      WeierstrassCurve ℤ → Prop) : Prop :=
  ∀ (x y z p q r : ℕ), 0 < x ^ p → 0 < y ^ q →
    let E := freyWeierstrassGeneral x y z p q r
    Uniformization E ∧ MinimalModels E ∧ Inertia E ∧ Conductor E

/-- Open residual-representation and Borel-exclusion requirements,
indexed by every relevant odd prime. Neither predicate is defined as
a representation theorem in this project. -/
def TODO_MazurX0_l
    (ResidualIrreducible BorelExcluded : ℕ → Prop) : Prop :=
  ∀ ell, Nat.Prime ell → 3 ≤ ell →
    ResidualIrreducible ell ∧ BorelExcluded ell

/-- Open modularity and level-lowering requirement, restricted to the
cases where future arithmetic work proves `Applicable`. -/
def TODO_RibetGeneral
    (Applicable Modular Lowered : ℕ → ℕ → Prop) : Prop :=
  ∀ ell level, Nat.Prime ell → 3 ≤ ell → Applicable ell level →
    Modular ell level ∧ Lowered ell level

/-- Open elimination requirement for the levels a genuine lowering
argument actually produces; there is no general Kraus computation here. -/
def TODO_KrausGeneral
    (Relevant Eliminated : ℕ → ℕ → Prop) : Prop :=
  ∀ ell level, Nat.Prime ell → 3 ≤ ell → Relevant ell level →
    Eliminated ell level

/-- Open L-value, Selmer, and rank requirements, under their still-
unformalized applicability conditions for the general Frey curve. -/
def TODO_KolyvaginGeneral
    (Applicable LValue Selmer Rank : WeierstrassCurve ℤ → Prop) : Prop :=
  ∀ (x y z p q r : ℕ), 0 < x ^ p → 0 < y ^ q →
    let E := freyWeierstrassGeneral x y z p q r
    Applicable E → LValue E ∧ Selmer E ∧ Rank E

/-- Unlike the schematic predicates above, this states a concrete
unproved general two-power requirement. The `(4,4,n)` obligation is
included explicitly, and no inhabitant is constructed here. -/
def TODO_TwoPower : Prop :=
  DarmonMerel44n ∧
    ∀ (x y z k q r : ℕ), 0 < x → 0 < y → 0 < z →
      2 ≤ k → 3 ≤ q → 3 ≤ r → Nat.Coprime x y →
      x ^ (2 ^ k) + y ^ q = z ^ r → False

/- TODO: Before any of the parameterized schemas can be used as a
proof-chain field, define their predicates in terms of actual residual
representations, curves, levels, L-functions, and arithmetic hypotheses.
Do not instantiate them with tautologies. No bridge to commonPrime is
asserted or inferred from these declarations. -/

#check freyWeierstrassGeneral
#check frey_low_minimal_Q2
#check frey_c4_v2_of_coprime
#check branch_separate
#check RequiredNoPrimitive44n
#check DarmonMerel44n
#check two_power_needs_darmon_merel
#check TODO_TateGeneral
#check TODO_MazurX0_l
#check TODO_RibetGeneral
#check TODO_KrausGeneral
#check TODO_KolyvaginGeneral
#check TODO_TwoPower

end Beal.General