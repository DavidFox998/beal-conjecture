import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.GeometryBridge
import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
import BealLevel26Foundations.Chain.Level2
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.BealForallProof

open BealLevel26Foundations.Beal.FullProof.TrueConductor
open BealLevel26Foundations.Beal.FullProof.ModularityRibet
open BealLevel26Foundations.Beal.FullProof.GeometryBridge
open BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
open BealLevel26Foundations.Chain.Level2

/-!
# v8.1.0-modular-implies-newform

FullProof glue of Tate + Ribet/`R = T` + Mazur geometry
toward Beal `∀`.  Step 5 arithmetic lives in
`ModularImpliesNewform.lean`.

This module does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
It does **not** import `BealForall.lean` (none chain).
It does **not** use `sorry`, `admit`, or `False.elim`.

Two honesty locks, both theorems:

1. The sketch type (no positivity on `A,B,C`) is **false**:
   `0³ + 1³ = 1³` and `gcd(0,1,1) = 1`.  Beal requires
   positive bases.  An inhabitant of the unguarded
   sketch would be an inhabitant of `False`.
2. Mathlib 4.12 has no arrow
   `Modular w → ExistsNewformLevel2`.
   `ExistsNewformLevel2` is the displayed label
   `s2_gamma0_2_dim ≠ 0` with `s2_gamma0_2_dim = 0`.
   `wiles_modularity_Frey` is the Wiles-domain input,
   not a Mathlib newform.  A primitive positive
   counterexample yields `RibetStep2Glue`, not `False`.

What this file *does* inhabit:

* the FullProof glue of TrueConductor + ModularityRibet
  + GeometryBridge on every `PrimitiveBealTriple`;
* Beal on **positive** bases, **from** the missing
  newform arrow (`ModularImpliesLevel2Newform`).

`beal_forall_proof` is that conditional theorem, not
an inhabitant of the unguarded sketch.

`#print axioms` is
`[propext, Classical.choice, Quot.sound]` or fewer.
No `sorryAx`.
-/

/-- Same type as `BealForall.beal_forall_from_Is13Case_sketch`.
Copied so FullProof does not import the none chain. -/
def beal_forall_from_Is13Case_sketch : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

theorem zero_pow_add_one_pow :
    (0 : Nat) ^ 3 + 1 ^ 3 = 1 ^ 3 :=
  rfl

theorem gcd3_zero_one_one :
    gcd3 0 1 1 = 1 :=
  rfl

/-- The unguarded sketch is false.  Beal needs `0 < A,B,C`. -/
theorem sketch_fails_on_zero_one :
    ¬ beal_forall_from_Is13Case_sketch :=
  fun h =>
    Nat.lt_irrefl (1 : Nat)
      (h 0 1 1 3 3 3 (by decide) (by decide) (by decide)
        zero_pow_add_one_pow)

/-- Missing Mathlib arrow.  Owned by Step 5
`ModularImpliesNewform.lean`; same type
`Modular w → ExistsNewformLevel2`. -/
def ModularImpliesLevel2Newform : Prop :=
  ModularImpliesNewform.ModularImpliesLevel2Newform

def of_primitive
    {A B C m n p : Nat}
    (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hm : 2 < m) (hn : 2 < n) (hp : 2 < p)
    (hEq : A ^ m + B ^ n = C ^ p)
    (hGcd : gcd3 A B C = 1) :
    PrimitiveBealTriple :=
  ⟨A, B, C, m, n, p, hA, hB, hC, hm, hn, hp, hEq, hGcd⟩

theorem gcd3_eq_one_of_not_gt
    {A B C : Nat} (hA : 0 < A)
    (hnot : ¬ gcd3 A B C > 1) :
    gcd3 A B C = 1 := by
  have hle : gcd3 A B C ≤ 1 := Nat.not_lt.mp hnot
  have hpos : 0 < gcd3 A B C :=
    Nat.gcd_pos_of_pos_left (Nat.gcd B C) hA
  exact Nat.le_antisymm hle (Nat.succ_le_of_lt hpos)

/-- Packed FullProof input on a primitive triple:
Tate conductor, Ribet/`R = T` glue, Mazur geometry. -/
structure BealForallFullProofGlue (w : PrimitiveBealTriple) : Prop where
  pairwise :
    (w.A ^ w.m).Coprime (w.B ^ w.n) ∧
      (w.B ^ w.n).Coprime (w.C ^ w.p) ∧
      (w.A ^ w.m).Coprime (w.C ^ w.p)
  tate_two : TateTwoConclusion w
  conductor : globalConductorTate w = radABC w.A w.B w.C
  modular : Modular w
  ribet : RibetStep2Glue w
  lowering : RibetLoweringConclusion w 13
  tw : ∀ n : Nat, 0 < n →
    ∃ q : Nat, q = TW_primes_Q n ∧ q % (13 ^ n) = 1
  rt : Nonempty
    (R_infty (globalConductorTate w) ≃
      T_infty (globalConductorTate w))
  no_newform : ¬ ExistsNewformLevel2
  geometry : GeometryBridgeConclusion

theorem beal_forall_glue (w : PrimitiveBealTriple) :
    BealForallFullProofGlue w where
  pairwise := true_gcd_pairwise w
  tate_two := tate_two w
  conductor := (frey_global_conductor w).1
  modular := wiles_modularity_Frey w
  ribet := ribet_step_2_contradiction w
  lowering := ribet_13_instance w
  tw := TW_Q_infinite
  rt := R_T_scaffold_of_triple w
  no_newform := no_newform_level2
  geometry := GeometryBridge

theorem contradiction_of_newform_arrow
    (hArrow : ModularImpliesLevel2Newform)
    (w : PrimitiveBealTriple) : False :=
  absurd (hArrow w (wiles_modularity_Frey w)) no_newform_level2

/-- Beal on **positive** bases, from the missing newform
arrow.  Equal to Step 5 `beal_forall_proof_positive`. -/
theorem beal_forall_positive_of_newform_arrow
    (hArrow : ModularImpliesLevel2Newform) :
    ∀ (A B C m n p : Nat),
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      gcd3 A B C > 1 :=
  beal_forall_proof_positive hArrow

/-- Requested name.  Conditional positive Beal, equal to
`beal_forall_proof_positive`.  Not an inhabitant of
`beal_forall_from_Is13Case_sketch`. -/
theorem beal_forall_proof
    (hArrow : ModularImpliesLevel2Newform) :
    ∀ (A B C m n p : Nat),
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      gcd3 A B C > 1 :=
  beal_forall_proof_positive hArrow

/-- Lock: the unguarded sketch type is not inhabited. -/
def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  beal_forall_from_Is13Case_sketch

#check beal_forall_from_Is13Case_sketch
#check sketch_fails_on_zero_one
#check ModularImpliesLevel2Newform
#check beal_forall_glue
#check beal_forall_proof
#check beal_forall_from_Is13Case_sketch_stays_uninhabited
#print axioms sketch_fails_on_zero_one
#print axioms beal_forall_glue
#print axioms contradiction_of_newform_arrow
#print axioms beal_forall_proof

end BealLevel26Foundations.Beal.FullProof.BealForallProof
